; ModuleID = '../bcout/drivers/base/bus.llvm.bc'
source_filename = "drivers/base/bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.37, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.37 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type opaque
%struct.seq_file = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
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
%struct.vm_userfaultfd_ctx = type {}
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.driver_attribute = type { %struct.attribute, i64 (%struct.device_driver*, i8*)*, i64 (%struct.device_driver*, i8*, i64)* }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, %struct.device_driver*, i8*, %struct.device*, i8 }
%struct.klist = type { %struct.spinlock, %struct.list_head, void (%struct.klist_node*)*, void (%struct.klist_node*)* }
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.wake_irq = type { %struct.device*, i32, i32, i8* }
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
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.iommu_ops = type opaque
%struct.subsys_private = type { %struct.kset, %struct.kset*, %struct.list_head, %struct.mutex, %struct.kset*, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, %struct.bus_type*, %struct.kset, %struct.class* }
%struct.lock_class_key = type {}
%struct.module = type opaque
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, %struct.module_kobject*, %struct.device_driver* }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs*, %struct.completion* }
%struct.module_param_attrs = type opaque
%struct.bus_attribute = type { %struct.attribute, i64 (%struct.bus_type*, i8*)*, i64 (%struct.bus_type*, i8*, i64)* }
%struct.kmem_cache = type opaque
%struct.klist_iter = type { %struct.klist*, %struct.klist_node* }
%struct.subsys_interface = type { i8*, %struct.bus_type*, %struct.list_head, i32 (%struct.device*, %struct.subsys_interface*)*, void (%struct.device*, %struct.subsys_interface*)* }
%struct.subsys_dev_iter = type { %struct.klist_iter, %struct.device_type* }

@.str = private unnamed_addr constant [10 x i8] c"subsystem\00", align 1
@driver_ktype = internal global %struct.kobj_type { void (%struct.kobject*)* @driver_release, %struct.sysfs_ops* @driver_sysfs_ops, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@driver_attr_uevent = internal global %struct.driver_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i16 128 }, i64 (%struct.device_driver*, i8*)* null, i64 (%struct.device_driver*, i8*, i64)* @uevent_store }, align 8, !dbg !2118
@.str.2 = private unnamed_addr constant [31 x i8] c"\013%s: uevent attr (%s) failed\0A\00", align 1
@__func__.bus_add_driver = private unnamed_addr constant [15 x i8] c"bus_add_driver\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"\013%s: driver_create_groups(%s) failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\013%s: add_bind_files(%s) failed\0A\00", align 1
@bus_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2107
@.str.5 = private unnamed_addr constant [30 x i8] c"&(&priv->bus_notifier)->rwsem\00", align 1
@bus_kset = internal global %struct.kset* null, align 8, !dbg !2114
@bus_ktype = internal global %struct.kobj_type { void (%struct.kobject*)* @bus_release, %struct.sysfs_ops* @bus_sysfs_ops, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8, !dbg !2124
@bus_attr_uevent = internal global %struct.bus_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i16 128 }, i64 (%struct.bus_type*, i8*)* null, i64 (%struct.bus_type*, i8*, i64)* @bus_uevent_store }, align 8, !dbg !2128
@.str.6 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"drivers\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"subsys mutex\00", align 1
@system_kset = internal global %struct.kset* null, align 8, !dbg !2112
@.str.9 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@bus_uevent_ops = internal constant %struct.kset_uevent_ops { i32 (%struct.kset*, %struct.kobject*)* @bus_uevent_filter, i8* (%struct.kset*, %struct.kobject*)* null, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* null }, align 8, !dbg !2134
@.str.10 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@devices_kset = external dso_local global %struct.kset*, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.11 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@driver_sysfs_ops = internal constant %struct.sysfs_ops { i64 (%struct.kobject*, %struct.attribute*, i8*)* @drv_attr_show, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* @drv_attr_store }, align 8, !dbg !2116
@.str.12 = private unnamed_addr constant [7 x i8] c"uevent\00", align 1
@driver_attr_unbind = internal global %struct.driver_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i16 128 }, i64 (%struct.device_driver*, i8*)* null, i64 (%struct.device_driver*, i8*, i64)* @unbind_store }, align 8, !dbg !2120
@driver_attr_bind = internal global %struct.driver_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i16 128 }, i64 (%struct.device_driver*, i8*)* null, i64 (%struct.device_driver*, i8*, i64)* @bind_store }, align 8, !dbg !2122
@.str.13 = private unnamed_addr constant [7 x i8] c"unbind\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@bus_sysfs_ops = internal constant %struct.sysfs_ops { i64 (%struct.kobject*, %struct.attribute*, i8*)* @bus_attr_show, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* @bus_attr_store }, align 8, !dbg !2126
@bus_attr_drivers_probe = internal global %struct.bus_attribute { %struct.attribute { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i16 128 }, i64 (%struct.bus_type*, i8*)* null, i64 (%struct.bus_type*, i8*, i64)* @drivers_probe_store }, align 8, !dbg !2130
@bus_attr_drivers_autoprobe = internal global %struct.bus_attribute { %struct.attribute { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i16 420 }, i64 (%struct.bus_type*, i8*)* @drivers_autoprobe_show, i64 (%struct.bus_type*, i8*, i64)* @drivers_autoprobe_store }, align 8, !dbg !2132
@.str.15 = private unnamed_addr constant [14 x i8] c"drivers_probe\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"drivers_autoprobe\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @bus_create_file(%struct.bus_type* %bus, %struct.bus_attribute* %attr) #0 !dbg !2141 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  %attr.addr = alloca %struct.bus_attribute*, align 8
  %error = alloca i32, align 4
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !2144, metadata !DIExpression()), !dbg !2145
  store %struct.bus_attribute* %attr, %struct.bus_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_attribute** %attr.addr, metadata !2146, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.declare(metadata i32* %error, metadata !2148, metadata !DIExpression()), !dbg !2149
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !2150
  %call = call %struct.bus_type* @bus_get(%struct.bus_type* %0) #8, !dbg !2152
  %tobool = icmp ne %struct.bus_type* %call, null, !dbg !2152
  br i1 %tobool, label %if.then, label %if.else, !dbg !2153

if.then:                                          ; preds = %entry
  %1 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !2154
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %1, i32 0, i32 20, !dbg !2156
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !2156
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %2, i32 0, i32 0, !dbg !2157
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %subsys, i32 0, i32 2, !dbg !2158
  %3 = load %struct.bus_attribute*, %struct.bus_attribute** %attr.addr, align 8, !dbg !2159
  %attr1 = getelementptr inbounds %struct.bus_attribute, %struct.bus_attribute* %3, i32 0, i32 0, !dbg !2160
  %call2 = call i32 @sysfs_create_file(%struct.kobject* %kobj, %struct.attribute* %attr1) #8, !dbg !2161
  store i32 %call2, i32* %error, align 4, !dbg !2162
  %4 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !2163
  call void @bus_put(%struct.bus_type* %4) #8, !dbg !2164
  br label %if.end, !dbg !2165

if.else:                                          ; preds = %entry
  store i32 -22, i32* %error, align 4, !dbg !2166
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %error, align 4, !dbg !2167
  ret i32 %5, !dbg !2168
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.bus_type* @bus_get(%struct.bus_type* %bus) #0 !dbg !2169 {
entry:
  %retval = alloca %struct.bus_type*, align 8
  %bus.addr = alloca %struct.bus_type*, align 8
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !2172, metadata !DIExpression()), !dbg !2173
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !2174
  %tobool = icmp ne %struct.bus_type* %0, null, !dbg !2174
  br i1 %tobool, label %if.then, label %if.end, !dbg !2176

if.then:                                          ; preds = %entry
  %1 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !2177
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %1, i32 0, i32 20, !dbg !2179
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !2179
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %2, i32 0, i32 0, !dbg !2180
  %call = call %struct.kset* @kset_get(%struct.kset* %subsys) #8, !dbg !2181
  %3 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !2182
  store %struct.bus_type* %3, %struct.bus_type** %retval, align 8, !dbg !2183
  br label %return, !dbg !2183

if.end:                                           ; preds = %entry
  store %struct.bus_type* null, %struct.bus_type** %retval, align 8, !dbg !2184
  br label %return, !dbg !2184

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct.bus_type*, %struct.bus_type** %retval, align 8, !dbg !2185
  ret %struct.bus_type* %4, !dbg !2185
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sysfs_create_file(%struct.kobject* %kobj, %struct.attribute* %attr) #0 !dbg !2186 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !2191, metadata !DIExpression()), !dbg !2192
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !2193, metadata !DIExpression()), !dbg !2194
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !2195
  %1 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !2196
  %call = call i32 @sysfs_create_file_ns(%struct.kobject* %0, %struct.attribute* %1, i8* null) #8, !dbg !2197
  ret i32 %call, !dbg !2198
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bus_put(%struct.bus_type* %bus) #0 !dbg !2199 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !2202, metadata !DIExpression()), !dbg !2203
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !2204
  %tobool = icmp ne %struct.bus_type* %0, null, !dbg !2204
  br i1 %tobool, label %if.then, label %if.end, !dbg !2206

if.then:                                          ; preds = %entry
  %1 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !2207
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %1, i32 0, i32 20, !dbg !2208
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !2208
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %2, i32 0, i32 0, !dbg !2209
  call void @kset_put(%struct.kset* %subsys) #8, !dbg !2210
  br label %if.end, !dbg !2210

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2211
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @bus_remove_file(%struct.bus_type* %bus, %struct.bus_attribute* %attr) #0 !dbg !2212 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  %attr.addr = alloca %struct.bus_attribute*, align 8
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !2215, metadata !DIExpression()), !dbg !2216
  store %struct.bus_attribute* %attr, %struct.bus_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_attribute** %attr.addr, metadata !2217, metadata !DIExpression()), !dbg !2218
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !2219
  %call = call %struct.bus_type* @bus_get(%struct.bus_type* %0) #8, !dbg !2221
  %tobool = icmp ne %struct.bus_type* %call, null, !dbg !2221
  br i1 %tobool, label %if.then, label %if.end, !dbg !2222

if.then:                                          ; preds = %entry
  %1 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !2223
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %1, i32 0, i32 20, !dbg !2225
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !2225
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %2, i32 0, i32 0, !dbg !2226
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %subsys, i32 0, i32 2, !dbg !2227
  %3 = load %struct.bus_attribute*, %struct.bus_attribute** %attr.addr, align 8, !dbg !2228
  %attr1 = getelementptr inbounds %struct.bus_attribute, %struct.bus_attribute* %3, i32 0, i32 0, !dbg !2229
  call void @sysfs_remove_file(%struct.kobject* %kobj, %struct.attribute* %attr1) #8, !dbg !2230
  %4 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !2231
  call void @bus_put(%struct.bus_type* %4) #8, !dbg !2232
  br label %if.end, !dbg !2233

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2234
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sysfs_remove_file(%struct.kobject* %kobj, %struct.attribute* %attr) #0 !dbg !2235 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !2238, metadata !DIExpression()), !dbg !2239
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !2240, metadata !DIExpression()), !dbg !2241
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !2242
  %1 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !2243
  call void @sysfs_remove_file_ns(%struct.kobject* %0, %struct.attribute* %1, i8* null) #8, !dbg !2244
  ret void, !dbg !2245
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @bus_for_each_dev(%struct.bus_type* %bus, %struct.device* %start, i8* %data, i32 (%struct.device*, i8*)* %fn) #0 !dbg !2246 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.bus_type*, align 8
  %start.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %fn.addr = alloca i32 (%struct.device*, i8*)*, align 8
  %i = alloca %struct.klist_iter, align 8
  %dev = alloca %struct.device*, align 8
  %error = alloca i32, align 4
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !2252, metadata !DIExpression()), !dbg !2253
  store %struct.device* %start, %struct.device** %start.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %start.addr, metadata !2254, metadata !DIExpression()), !dbg !2255
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2256, metadata !DIExpression()), !dbg !2257
  store i32 (%struct.device*, i8*)* %fn, i32 (%struct.device*, i8*)** %fn.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.device*, i8*)** %fn.addr, metadata !2258, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.declare(metadata %struct.klist_iter* %i, metadata !2260, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2267, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.declare(metadata i32* %error, metadata !2269, metadata !DIExpression()), !dbg !2270
  store i32 0, i32* %error, align 4, !dbg !2270
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !2271
  %tobool = icmp ne %struct.bus_type* %0, null, !dbg !2271
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2273

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !2274
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %1, i32 0, i32 20, !dbg !2275
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !2275
  %tobool1 = icmp ne %struct.subsys_private* %2, null, !dbg !2274
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2276

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !2277
  br label %return, !dbg !2277

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !2278
  %p2 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %3, i32 0, i32 20, !dbg !2279
  %4 = load %struct.subsys_private*, %struct.subsys_private** %p2, align 8, !dbg !2279
  %klist_devices = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %4, i32 0, i32 5, !dbg !2280
  %5 = load %struct.device*, %struct.device** %start.addr, align 8, !dbg !2281
  %tobool3 = icmp ne %struct.device* %5, null, !dbg !2281
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !2281

cond.true:                                        ; preds = %if.end
  %6 = load %struct.device*, %struct.device** %start.addr, align 8, !dbg !2282
  %p4 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 2, !dbg !2283
  %7 = load %struct.device_private*, %struct.device_private** %p4, align 8, !dbg !2283
  %knode_bus = getelementptr inbounds %struct.device_private, %struct.device_private* %7, i32 0, i32 3, !dbg !2284
  br label %cond.end, !dbg !2281

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2281

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.klist_node* [ %knode_bus, %cond.true ], [ null, %cond.false ], !dbg !2281
  call void @klist_iter_init_node(%struct.klist* %klist_devices, %struct.klist_iter* %i, %struct.klist_node* %cond) #8, !dbg !2285
  br label %while.cond, !dbg !2286

while.cond:                                       ; preds = %while.body, %cond.end
  %8 = load i32, i32* %error, align 4, !dbg !2287
  %tobool5 = icmp ne i32 %8, 0, !dbg !2287
  br i1 %tobool5, label %land.end, label %land.rhs, !dbg !2288

land.rhs:                                         ; preds = %while.cond
  %call = call %struct.device* @next_device(%struct.klist_iter* %i) #8, !dbg !2289
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !2290
  %tobool6 = icmp ne %struct.device* %call, null, !dbg !2288
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %tobool6, %land.rhs ], !dbg !2291
  br i1 %9, label %while.body, label %while.end, !dbg !2286

while.body:                                       ; preds = %land.end
  %10 = load i32 (%struct.device*, i8*)*, i32 (%struct.device*, i8*)** %fn.addr, align 8, !dbg !2292
  %11 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2293
  %12 = load i8*, i8** %data.addr, align 8, !dbg !2294
  %call7 = call i32 %10(%struct.device* %11, i8* %12) #8, !dbg !2292
  store i32 %call7, i32* %error, align 4, !dbg !2295
  br label %while.cond, !dbg !2286, !llvm.loop !2296

while.end:                                        ; preds = %land.end
  call void @klist_iter_exit(%struct.klist_iter* %i) #8, !dbg !2298
  %13 = load i32, i32* %error, align 4, !dbg !2299
  store i32 %13, i32* %retval, align 4, !dbg !2300
  br label %return, !dbg !2300

return:                                           ; preds = %while.end, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !2301
  ret i32 %14, !dbg !2301
}

; Function Attrs: noredzone
declare dso_local void @klist_iter_init_node(%struct.klist*, %struct.klist_iter*, %struct.klist_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @next_device(%struct.klist_iter* %i) #0 !dbg !2302 {
entry:
  %i.addr = alloca %struct.klist_iter*, align 8
  %n = alloca %struct.klist_node*, align 8
  %dev = alloca %struct.device*, align 8
  %dev_prv = alloca %struct.device_private*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.device_private*, align 8
  store %struct.klist_iter* %i, %struct.klist_iter** %i.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.klist_iter** %i.addr, metadata !2306, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.declare(metadata %struct.klist_node** %n, metadata !2308, metadata !DIExpression()), !dbg !2309
  %0 = load %struct.klist_iter*, %struct.klist_iter** %i.addr, align 8, !dbg !2310
  %call = call %struct.klist_node* @klist_next(%struct.klist_iter* %0) #8, !dbg !2311
  store %struct.klist_node* %call, %struct.klist_node** %n, align 8, !dbg !2309
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2312, metadata !DIExpression()), !dbg !2313
  store %struct.device* null, %struct.device** %dev, align 8, !dbg !2313
  call void @llvm.dbg.declare(metadata %struct.device_private** %dev_prv, metadata !2314, metadata !DIExpression()), !dbg !2315
  %1 = load %struct.klist_node*, %struct.klist_node** %n, align 8, !dbg !2316
  %tobool = icmp ne %struct.klist_node* %1, null, !dbg !2316
  br i1 %tobool, label %if.then, label %if.end, !dbg !2318

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2319, metadata !DIExpression()), !dbg !2322
  %2 = load %struct.klist_node*, %struct.klist_node** %n, align 8, !dbg !2322
  %3 = bitcast %struct.klist_node* %2 to i8*, !dbg !2322
  store i8* %3, i8** %__mptr, align 8, !dbg !2322
  br label %do.body, !dbg !2322

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !2323

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !2322
  %add.ptr = getelementptr i8, i8* %4, i64 -96, !dbg !2322
  %5 = bitcast i8* %add.ptr to %struct.device_private*, !dbg !2322
  store %struct.device_private* %5, %struct.device_private** %tmp, align 8, !dbg !2323
  %6 = load %struct.device_private*, %struct.device_private** %tmp, align 8, !dbg !2322
  store %struct.device_private* %6, %struct.device_private** %dev_prv, align 8, !dbg !2325
  %7 = load %struct.device_private*, %struct.device_private** %dev_prv, align 8, !dbg !2326
  %device = getelementptr inbounds %struct.device_private, %struct.device_private* %7, i32 0, i32 8, !dbg !2327
  %8 = load %struct.device*, %struct.device** %device, align 8, !dbg !2327
  store %struct.device* %8, %struct.device** %dev, align 8, !dbg !2328
  br label %if.end, !dbg !2329

if.end:                                           ; preds = %do.end, %entry
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2330
  ret %struct.device* %9, !dbg !2331
}

; Function Attrs: noredzone
declare dso_local void @klist_iter_exit(%struct.klist_iter*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device* @bus_find_device(%struct.bus_type* %bus, %struct.device* %start, i8* %data, i32 (%struct.device*, i8*)* %match) #0 !dbg !2332 {
entry:
  %retval = alloca %struct.device*, align 8
  %bus.addr = alloca %struct.bus_type*, align 8
  %start.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %match.addr = alloca i32 (%struct.device*, i8*)*, align 8
  %i = alloca %struct.klist_iter, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !2338, metadata !DIExpression()), !dbg !2339
  store %struct.device* %start, %struct.device** %start.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %start.addr, metadata !2340, metadata !DIExpression()), !dbg !2341
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2342, metadata !DIExpression()), !dbg !2343
  store i32 (%struct.device*, i8*)* %match, i32 (%struct.device*, i8*)** %match.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.device*, i8*)** %match.addr, metadata !2344, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.declare(metadata %struct.klist_iter* %i, metadata !2346, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2348, metadata !DIExpression()), !dbg !2349
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !2350
  %tobool = icmp ne %struct.bus_type* %0, null, !dbg !2350
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2352

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !2353
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %1, i32 0, i32 20, !dbg !2354
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !2354
  %tobool1 = icmp ne %struct.subsys_private* %2, null, !dbg !2353
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2355

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.device* null, %struct.device** %retval, align 8, !dbg !2356
  br label %return, !dbg !2356

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !2357
  %p2 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %3, i32 0, i32 20, !dbg !2358
  %4 = load %struct.subsys_private*, %struct.subsys_private** %p2, align 8, !dbg !2358
  %klist_devices = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %4, i32 0, i32 5, !dbg !2359
  %5 = load %struct.device*, %struct.device** %start.addr, align 8, !dbg !2360
  %tobool3 = icmp ne %struct.device* %5, null, !dbg !2360
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !2360

cond.true:                                        ; preds = %if.end
  %6 = load %struct.device*, %struct.device** %start.addr, align 8, !dbg !2361
  %p4 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 2, !dbg !2362
  %7 = load %struct.device_private*, %struct.device_private** %p4, align 8, !dbg !2362
  %knode_bus = getelementptr inbounds %struct.device_private, %struct.device_private* %7, i32 0, i32 3, !dbg !2363
  br label %cond.end, !dbg !2360

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2360

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.klist_node* [ %knode_bus, %cond.true ], [ null, %cond.false ], !dbg !2360
  call void @klist_iter_init_node(%struct.klist* %klist_devices, %struct.klist_iter* %i, %struct.klist_node* %cond) #8, !dbg !2364
  br label %while.cond, !dbg !2365

while.cond:                                       ; preds = %if.end11, %cond.end
  %call = call %struct.device* @next_device(%struct.klist_iter* %i) #8, !dbg !2366
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !2367
  %tobool5 = icmp ne %struct.device* %call, null, !dbg !2365
  br i1 %tobool5, label %while.body, label %while.end, !dbg !2365

while.body:                                       ; preds = %while.cond
  %8 = load i32 (%struct.device*, i8*)*, i32 (%struct.device*, i8*)** %match.addr, align 8, !dbg !2368
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2370
  %10 = load i8*, i8** %data.addr, align 8, !dbg !2371
  %call6 = call i32 %8(%struct.device* %9, i8* %10) #8, !dbg !2368
  %tobool7 = icmp ne i32 %call6, 0, !dbg !2368
  br i1 %tobool7, label %land.lhs.true, label %if.end11, !dbg !2372

land.lhs.true:                                    ; preds = %while.body
  %11 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2373
  %call8 = call %struct.device* @get_device(%struct.device* %11) #8, !dbg !2374
  %tobool9 = icmp ne %struct.device* %call8, null, !dbg !2374
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !2375

if.then10:                                        ; preds = %land.lhs.true
  br label %while.end, !dbg !2376

if.end11:                                         ; preds = %land.lhs.true, %while.body
  br label %while.cond, !dbg !2365, !llvm.loop !2377

while.end:                                        ; preds = %if.then10, %while.cond
  call void @klist_iter_exit(%struct.klist_iter* %i) #8, !dbg !2379
  %12 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2380
  store %struct.device* %12, %struct.device** %retval, align 8, !dbg !2381
  br label %return, !dbg !2381

return:                                           ; preds = %while.end, %if.then
  %13 = load %struct.device*, %struct.device** %retval, align 8, !dbg !2382
  ret %struct.device* %13, !dbg !2382
}

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device* @subsys_find_device_by_id(%struct.bus_type* %subsys, i32 %id, %struct.device* %hint) #0 !dbg !2383 {
entry:
  %retval = alloca %struct.device*, align 8
  %subsys.addr = alloca %struct.bus_type*, align 8
  %id.addr = alloca i32, align 4
  %hint.addr = alloca %struct.device*, align 8
  %i = alloca %struct.klist_iter, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.bus_type* %subsys, %struct.bus_type** %subsys.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %subsys.addr, metadata !2386, metadata !DIExpression()), !dbg !2387
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !2388, metadata !DIExpression()), !dbg !2389
  store %struct.device* %hint, %struct.device** %hint.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %hint.addr, metadata !2390, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.declare(metadata %struct.klist_iter* %i, metadata !2392, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2394, metadata !DIExpression()), !dbg !2395
  %0 = load %struct.bus_type*, %struct.bus_type** %subsys.addr, align 8, !dbg !2396
  %tobool = icmp ne %struct.bus_type* %0, null, !dbg !2396
  br i1 %tobool, label %if.end, label %if.then, !dbg !2398

if.then:                                          ; preds = %entry
  store %struct.device* null, %struct.device** %retval, align 8, !dbg !2399
  br label %return, !dbg !2399

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %hint.addr, align 8, !dbg !2400
  %tobool1 = icmp ne %struct.device* %1, null, !dbg !2400
  br i1 %tobool1, label %if.then2, label %if.end11, !dbg !2402

if.then2:                                         ; preds = %if.end
  %2 = load %struct.bus_type*, %struct.bus_type** %subsys.addr, align 8, !dbg !2403
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %2, i32 0, i32 20, !dbg !2405
  %3 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !2405
  %klist_devices = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %3, i32 0, i32 5, !dbg !2406
  %4 = load %struct.device*, %struct.device** %hint.addr, align 8, !dbg !2407
  %p3 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 2, !dbg !2408
  %5 = load %struct.device_private*, %struct.device_private** %p3, align 8, !dbg !2408
  %knode_bus = getelementptr inbounds %struct.device_private, %struct.device_private* %5, i32 0, i32 3, !dbg !2409
  call void @klist_iter_init_node(%struct.klist* %klist_devices, %struct.klist_iter* %i, %struct.klist_node* %knode_bus) #8, !dbg !2410
  %call = call %struct.device* @next_device(%struct.klist_iter* %i) #8, !dbg !2411
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !2412
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2413
  %tobool4 = icmp ne %struct.device* %6, null, !dbg !2413
  br i1 %tobool4, label %land.lhs.true, label %if.end10, !dbg !2415

land.lhs.true:                                    ; preds = %if.then2
  %7 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2416
  %id5 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 26, !dbg !2417
  %8 = load i32, i32* %id5, align 4, !dbg !2417
  %9 = load i32, i32* %id.addr, align 4, !dbg !2418
  %cmp = icmp eq i32 %8, %9, !dbg !2419
  br i1 %cmp, label %land.lhs.true6, label %if.end10, !dbg !2420

land.lhs.true6:                                   ; preds = %land.lhs.true
  %10 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2421
  %call7 = call %struct.device* @get_device(%struct.device* %10) #8, !dbg !2422
  %tobool8 = icmp ne %struct.device* %call7, null, !dbg !2422
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !2423

if.then9:                                         ; preds = %land.lhs.true6
  call void @klist_iter_exit(%struct.klist_iter* %i) #8, !dbg !2424
  %11 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2426
  store %struct.device* %11, %struct.device** %retval, align 8, !dbg !2427
  br label %return, !dbg !2427

if.end10:                                         ; preds = %land.lhs.true6, %land.lhs.true, %if.then2
  call void @klist_iter_exit(%struct.klist_iter* %i) #8, !dbg !2428
  br label %if.end11, !dbg !2429

if.end11:                                         ; preds = %if.end10, %if.end
  %12 = load %struct.bus_type*, %struct.bus_type** %subsys.addr, align 8, !dbg !2430
  %p12 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %12, i32 0, i32 20, !dbg !2431
  %13 = load %struct.subsys_private*, %struct.subsys_private** %p12, align 8, !dbg !2431
  %klist_devices13 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %13, i32 0, i32 5, !dbg !2432
  call void @klist_iter_init_node(%struct.klist* %klist_devices13, %struct.klist_iter* %i, %struct.klist_node* null) #8, !dbg !2433
  br label %while.cond, !dbg !2434

while.cond:                                       ; preds = %if.end22, %if.end11
  %call14 = call %struct.device* @next_device(%struct.klist_iter* %i) #8, !dbg !2435
  store %struct.device* %call14, %struct.device** %dev, align 8, !dbg !2436
  %tobool15 = icmp ne %struct.device* %call14, null, !dbg !2434
  br i1 %tobool15, label %while.body, label %while.end, !dbg !2434

while.body:                                       ; preds = %while.cond
  %14 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2437
  %id16 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 26, !dbg !2440
  %15 = load i32, i32* %id16, align 4, !dbg !2440
  %16 = load i32, i32* %id.addr, align 4, !dbg !2441
  %cmp17 = icmp eq i32 %15, %16, !dbg !2442
  br i1 %cmp17, label %land.lhs.true18, label %if.end22, !dbg !2443

land.lhs.true18:                                  ; preds = %while.body
  %17 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2444
  %call19 = call %struct.device* @get_device(%struct.device* %17) #8, !dbg !2445
  %tobool20 = icmp ne %struct.device* %call19, null, !dbg !2445
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !2446

if.then21:                                        ; preds = %land.lhs.true18
  call void @klist_iter_exit(%struct.klist_iter* %i) #8, !dbg !2447
  %18 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2449
  store %struct.device* %18, %struct.device** %retval, align 8, !dbg !2450
  br label %return, !dbg !2450

if.end22:                                         ; preds = %land.lhs.true18, %while.body
  br label %while.cond, !dbg !2434, !llvm.loop !2451

while.end:                                        ; preds = %while.cond
  call void @klist_iter_exit(%struct.klist_iter* %i) #8, !dbg !2453
  store %struct.device* null, %struct.device** %retval, align 8, !dbg !2454
  br label %return, !dbg !2454

return:                                           ; preds = %while.end, %if.then21, %if.then9, %if.then
  %19 = load %struct.device*, %struct.device** %retval, align 8, !dbg !2455
  ret %struct.device* %19, !dbg !2455
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @bus_for_each_drv(%struct.bus_type* %bus, %struct.device_driver* %start, i8* %data, i32 (%struct.device_driver*, i8*)* %fn) #0 !dbg !2456 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.bus_type*, align 8
  %start.addr = alloca %struct.device_driver*, align 8
  %data.addr = alloca i8*, align 8
  %fn.addr = alloca i32 (%struct.device_driver*, i8*)*, align 8
  %i = alloca %struct.klist_iter, align 8
  %drv = alloca %struct.device_driver*, align 8
  %error = alloca i32, align 4
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !2462, metadata !DIExpression()), !dbg !2463
  store %struct.device_driver* %start, %struct.device_driver** %start.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %start.addr, metadata !2464, metadata !DIExpression()), !dbg !2465
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2466, metadata !DIExpression()), !dbg !2467
  store i32 (%struct.device_driver*, i8*)* %fn, i32 (%struct.device_driver*, i8*)** %fn.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.device_driver*, i8*)** %fn.addr, metadata !2468, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.declare(metadata %struct.klist_iter* %i, metadata !2470, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv, metadata !2472, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.declare(metadata i32* %error, metadata !2474, metadata !DIExpression()), !dbg !2475
  store i32 0, i32* %error, align 4, !dbg !2475
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !2476
  %tobool = icmp ne %struct.bus_type* %0, null, !dbg !2476
  br i1 %tobool, label %if.end, label %if.then, !dbg !2478

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2479
  br label %return, !dbg !2479

if.end:                                           ; preds = %entry
  %1 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !2480
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %1, i32 0, i32 20, !dbg !2481
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !2481
  %klist_drivers = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %2, i32 0, i32 6, !dbg !2482
  %3 = load %struct.device_driver*, %struct.device_driver** %start.addr, align 8, !dbg !2483
  %tobool1 = icmp ne %struct.device_driver* %3, null, !dbg !2483
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !2483

cond.true:                                        ; preds = %if.end
  %4 = load %struct.device_driver*, %struct.device_driver** %start.addr, align 8, !dbg !2484
  %p2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %4, i32 0, i32 18, !dbg !2485
  %5 = load %struct.driver_private*, %struct.driver_private** %p2, align 8, !dbg !2485
  %knode_bus = getelementptr inbounds %struct.driver_private, %struct.driver_private* %5, i32 0, i32 2, !dbg !2486
  br label %cond.end, !dbg !2483

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2483

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.klist_node* [ %knode_bus, %cond.true ], [ null, %cond.false ], !dbg !2483
  call void @klist_iter_init_node(%struct.klist* %klist_drivers, %struct.klist_iter* %i, %struct.klist_node* %cond) #8, !dbg !2487
  br label %while.cond, !dbg !2488

while.cond:                                       ; preds = %while.body, %cond.end
  %call = call %struct.device_driver* @next_driver(%struct.klist_iter* %i) #8, !dbg !2489
  store %struct.device_driver* %call, %struct.device_driver** %drv, align 8, !dbg !2490
  %tobool3 = icmp ne %struct.device_driver* %call, null, !dbg !2490
  br i1 %tobool3, label %land.rhs, label %land.end, !dbg !2491

land.rhs:                                         ; preds = %while.cond
  %6 = load i32, i32* %error, align 4, !dbg !2492
  %tobool4 = icmp ne i32 %6, 0, !dbg !2493
  %lnot = xor i1 %tobool4, true, !dbg !2493
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !2494
  br i1 %7, label %while.body, label %while.end, !dbg !2488

while.body:                                       ; preds = %land.end
  %8 = load i32 (%struct.device_driver*, i8*)*, i32 (%struct.device_driver*, i8*)** %fn.addr, align 8, !dbg !2495
  %9 = load %struct.device_driver*, %struct.device_driver** %drv, align 8, !dbg !2496
  %10 = load i8*, i8** %data.addr, align 8, !dbg !2497
  %call5 = call i32 %8(%struct.device_driver* %9, i8* %10) #8, !dbg !2495
  store i32 %call5, i32* %error, align 4, !dbg !2498
  br label %while.cond, !dbg !2488, !llvm.loop !2499

while.end:                                        ; preds = %land.end
  call void @klist_iter_exit(%struct.klist_iter* %i) #8, !dbg !2501
  %11 = load i32, i32* %error, align 4, !dbg !2502
  store i32 %11, i32* %retval, align 4, !dbg !2503
  br label %return, !dbg !2503

return:                                           ; preds = %while.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !2504
  ret i32 %12, !dbg !2504
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_driver* @next_driver(%struct.klist_iter* %i) #0 !dbg !2505 {
entry:
  %retval = alloca %struct.device_driver*, align 8
  %i.addr = alloca %struct.klist_iter*, align 8
  %n = alloca %struct.klist_node*, align 8
  %drv_priv = alloca %struct.driver_private*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.driver_private*, align 8
  store %struct.klist_iter* %i, %struct.klist_iter** %i.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.klist_iter** %i.addr, metadata !2508, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.declare(metadata %struct.klist_node** %n, metadata !2510, metadata !DIExpression()), !dbg !2511
  %0 = load %struct.klist_iter*, %struct.klist_iter** %i.addr, align 8, !dbg !2512
  %call = call %struct.klist_node* @klist_next(%struct.klist_iter* %0) #8, !dbg !2513
  store %struct.klist_node* %call, %struct.klist_node** %n, align 8, !dbg !2511
  call void @llvm.dbg.declare(metadata %struct.driver_private** %drv_priv, metadata !2514, metadata !DIExpression()), !dbg !2515
  %1 = load %struct.klist_node*, %struct.klist_node** %n, align 8, !dbg !2516
  %tobool = icmp ne %struct.klist_node* %1, null, !dbg !2516
  br i1 %tobool, label %if.then, label %if.end, !dbg !2518

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2519, metadata !DIExpression()), !dbg !2522
  %2 = load %struct.klist_node*, %struct.klist_node** %n, align 8, !dbg !2522
  %3 = bitcast %struct.klist_node* %2 to i8*, !dbg !2522
  store i8* %3, i8** %__mptr, align 8, !dbg !2522
  br label %do.body, !dbg !2522

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !2523

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !2522
  %add.ptr = getelementptr i8, i8* %4, i64 -96, !dbg !2522
  %5 = bitcast i8* %add.ptr to %struct.driver_private*, !dbg !2522
  store %struct.driver_private* %5, %struct.driver_private** %tmp, align 8, !dbg !2523
  %6 = load %struct.driver_private*, %struct.driver_private** %tmp, align 8, !dbg !2522
  store %struct.driver_private* %6, %struct.driver_private** %drv_priv, align 8, !dbg !2525
  %7 = load %struct.driver_private*, %struct.driver_private** %drv_priv, align 8, !dbg !2526
  %driver = getelementptr inbounds %struct.driver_private, %struct.driver_private* %7, i32 0, i32 4, !dbg !2527
  %8 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2527
  store %struct.device_driver* %8, %struct.device_driver** %retval, align 8, !dbg !2528
  br label %return, !dbg !2528

if.end:                                           ; preds = %entry
  store %struct.device_driver* null, %struct.device_driver** %retval, align 8, !dbg !2529
  br label %return, !dbg !2529

return:                                           ; preds = %if.end, %do.end
  %9 = load %struct.device_driver*, %struct.device_driver** %retval, align 8, !dbg !2530
  ret %struct.device_driver* %9, !dbg !2530
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @bus_add_device(%struct.device* %dev) #0 !dbg !2531 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %bus = alloca %struct.bus_type*, align 8
  %error = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2532, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus, metadata !2534, metadata !DIExpression()), !dbg !2535
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2536
  %bus1 = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 5, !dbg !2537
  %1 = load %struct.bus_type*, %struct.bus_type** %bus1, align 8, !dbg !2537
  %call = call %struct.bus_type* @bus_get(%struct.bus_type* %1) #8, !dbg !2538
  store %struct.bus_type* %call, %struct.bus_type** %bus, align 8, !dbg !2535
  call void @llvm.dbg.declare(metadata i32* %error, metadata !2539, metadata !DIExpression()), !dbg !2540
  store i32 0, i32* %error, align 4, !dbg !2540
  %2 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2541
  %tobool = icmp ne %struct.bus_type* %2, null, !dbg !2541
  br i1 %tobool, label %if.then, label %if.end21, !dbg !2543

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !2544
  %3 = load i32, i32* %tmp, align 4, !dbg !2548
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2549
  %5 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2550
  %dev_groups = getelementptr inbounds %struct.bus_type, %struct.bus_type* %5, i32 0, i32 4, !dbg !2551
  %6 = load %struct.attribute_group**, %struct.attribute_group*** %dev_groups, align 8, !dbg !2551
  %call2 = call i32 @device_add_groups(%struct.device* %4, %struct.attribute_group** %6) #8, !dbg !2552
  store i32 %call2, i32* %error, align 4, !dbg !2553
  %7 = load i32, i32* %error, align 4, !dbg !2554
  %tobool3 = icmp ne i32 %7, 0, !dbg !2554
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !2556

if.then4:                                         ; preds = %if.then
  br label %out_put, !dbg !2557

if.end:                                           ; preds = %if.then
  %8 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2558
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %8, i32 0, i32 20, !dbg !2559
  %9 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !2559
  %devices_kset = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %9, i32 0, i32 1, !dbg !2560
  %10 = load %struct.kset*, %struct.kset** %devices_kset, align 8, !dbg !2560
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %10, i32 0, i32 2, !dbg !2561
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2562
  %kobj5 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0, !dbg !2563
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2564
  %call6 = call i8* @dev_name(%struct.device* %12) #8, !dbg !2565
  %call7 = call i32 @sysfs_create_link(%struct.kobject* %kobj, %struct.kobject* %kobj5, i8* %call6) #8, !dbg !2566
  store i32 %call7, i32* %error, align 4, !dbg !2567
  %13 = load i32, i32* %error, align 4, !dbg !2568
  %tobool8 = icmp ne i32 %13, 0, !dbg !2568
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !2570

if.then9:                                         ; preds = %if.end
  br label %out_groups, !dbg !2571

if.end10:                                         ; preds = %if.end
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2572
  %kobj11 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0, !dbg !2573
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2574
  %bus12 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 5, !dbg !2575
  %16 = load %struct.bus_type*, %struct.bus_type** %bus12, align 8, !dbg !2575
  %p13 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %16, i32 0, i32 20, !dbg !2576
  %17 = load %struct.subsys_private*, %struct.subsys_private** %p13, align 8, !dbg !2576
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %17, i32 0, i32 0, !dbg !2577
  %kobj14 = getelementptr inbounds %struct.kset, %struct.kset* %subsys, i32 0, i32 2, !dbg !2578
  %call15 = call i32 @sysfs_create_link(%struct.kobject* %kobj11, %struct.kobject* %kobj14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !2579
  store i32 %call15, i32* %error, align 4, !dbg !2580
  %18 = load i32, i32* %error, align 4, !dbg !2581
  %tobool16 = icmp ne i32 %18, 0, !dbg !2581
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !2583

if.then17:                                        ; preds = %if.end10
  br label %out_subsys, !dbg !2584

if.end18:                                         ; preds = %if.end10
  %19 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2585
  %p19 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 2, !dbg !2586
  %20 = load %struct.device_private*, %struct.device_private** %p19, align 8, !dbg !2586
  %knode_bus = getelementptr inbounds %struct.device_private, %struct.device_private* %20, i32 0, i32 3, !dbg !2587
  %21 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2588
  %p20 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %21, i32 0, i32 20, !dbg !2589
  %22 = load %struct.subsys_private*, %struct.subsys_private** %p20, align 8, !dbg !2589
  %klist_devices = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %22, i32 0, i32 5, !dbg !2590
  call void @klist_add_tail(%struct.klist_node* %knode_bus, %struct.klist* %klist_devices) #8, !dbg !2591
  br label %if.end21, !dbg !2592

if.end21:                                         ; preds = %if.end18, %entry
  store i32 0, i32* %retval, align 4, !dbg !2593
  br label %return, !dbg !2593

out_subsys:                                       ; preds = %if.then17
  call void @llvm.dbg.label(metadata !2594), !dbg !2595
  %23 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2596
  %p22 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %23, i32 0, i32 20, !dbg !2597
  %24 = load %struct.subsys_private*, %struct.subsys_private** %p22, align 8, !dbg !2597
  %devices_kset23 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %24, i32 0, i32 1, !dbg !2598
  %25 = load %struct.kset*, %struct.kset** %devices_kset23, align 8, !dbg !2598
  %kobj24 = getelementptr inbounds %struct.kset, %struct.kset* %25, i32 0, i32 2, !dbg !2599
  %26 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2600
  %call25 = call i8* @dev_name(%struct.device* %26) #8, !dbg !2601
  call void @sysfs_remove_link(%struct.kobject* %kobj24, i8* %call25) #8, !dbg !2602
  br label %out_groups, !dbg !2602

out_groups:                                       ; preds = %out_subsys, %if.then9
  call void @llvm.dbg.label(metadata !2603), !dbg !2604
  %27 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2605
  %28 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2606
  %dev_groups26 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %28, i32 0, i32 4, !dbg !2607
  %29 = load %struct.attribute_group**, %struct.attribute_group*** %dev_groups26, align 8, !dbg !2607
  call void @device_remove_groups(%struct.device* %27, %struct.attribute_group** %29) #8, !dbg !2608
  br label %out_put, !dbg !2608

out_put:                                          ; preds = %out_groups, %if.then4
  call void @llvm.dbg.label(metadata !2609), !dbg !2610
  %30 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2611
  %bus27 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 5, !dbg !2612
  %31 = load %struct.bus_type*, %struct.bus_type** %bus27, align 8, !dbg !2612
  call void @bus_put(%struct.bus_type* %31) #8, !dbg !2613
  %32 = load i32, i32* %error, align 4, !dbg !2614
  store i32 %32, i32* %retval, align 4, !dbg !2615
  br label %return, !dbg !2615

return:                                           ; preds = %out_put, %if.end21
  %33 = load i32, i32* %retval, align 4, !dbg !2616
  ret i32 %33, !dbg !2616
}

; Function Attrs: noredzone
declare dso_local i32 @device_add_groups(%struct.device*, %struct.attribute_group**) #2

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_link(%struct.kobject*, %struct.kobject*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !2617 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2622, metadata !DIExpression()), !dbg !2623
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2624
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !2626
  %1 = load i8*, i8** %init_name, align 8, !dbg !2626
  %tobool = icmp ne i8* %1, null, !dbg !2624
  br i1 %tobool, label %if.then, label %if.end, !dbg !2627

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2628
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !2629
  %3 = load i8*, i8** %init_name1, align 8, !dbg !2629
  store i8* %3, i8** %retval, align 8, !dbg !2630
  br label %return, !dbg !2630

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2631
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !2632
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #8, !dbg !2633
  store i8* %call, i8** %retval, align 8, !dbg !2634
  br label %return, !dbg !2634

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !2635
  ret i8* %5, !dbg !2635
}

; Function Attrs: noredzone
declare dso_local void @klist_add_tail(%struct.klist_node*, %struct.klist*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_link(%struct.kobject*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @device_remove_groups(%struct.device*, %struct.attribute_group**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @bus_probe_device(%struct.device* %dev) #0 !dbg !2636 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %bus = alloca %struct.bus_type*, align 8
  %sif = alloca %struct.subsys_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.subsys_interface*, align 8
  %__mptr13 = alloca i8*, align 8
  %tmp18 = alloca %struct.subsys_interface*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2637, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus, metadata !2639, metadata !DIExpression()), !dbg !2640
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2641
  %bus1 = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 5, !dbg !2642
  %1 = load %struct.bus_type*, %struct.bus_type** %bus1, align 8, !dbg !2642
  store %struct.bus_type* %1, %struct.bus_type** %bus, align 8, !dbg !2640
  call void @llvm.dbg.declare(metadata %struct.subsys_interface** %sif, metadata !2643, metadata !DIExpression()), !dbg !2644
  %2 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2645
  %tobool = icmp ne %struct.bus_type* %2, null, !dbg !2645
  br i1 %tobool, label %if.end, label %if.then, !dbg !2647

if.then:                                          ; preds = %entry
  br label %return, !dbg !2648

if.end:                                           ; preds = %entry
  %3 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2649
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %3, i32 0, i32 20, !dbg !2651
  %4 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !2651
  %drivers_autoprobe = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %4, i32 0, i32 8, !dbg !2652
  %bf.load = load i8, i8* %drivers_autoprobe, align 8, !dbg !2652
  %bf.clear = and i8 %bf.load, 1, !dbg !2652
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2652
  %tobool2 = icmp ne i32 %bf.cast, 0, !dbg !2649
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2653

if.then3:                                         ; preds = %if.end
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2654
  call void @device_initial_probe(%struct.device* %5) #8, !dbg !2655
  br label %if.end4, !dbg !2655

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2656
  %p5 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %6, i32 0, i32 20, !dbg !2657
  %7 = load %struct.subsys_private*, %struct.subsys_private** %p5, align 8, !dbg !2657
  %mutex = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %7, i32 0, i32 3, !dbg !2658
  call void @mutex_lock(%struct.mutex* %mutex) #8, !dbg !2659
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2660, metadata !DIExpression()), !dbg !2663
  %8 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2663
  %p6 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %8, i32 0, i32 20, !dbg !2663
  %9 = load %struct.subsys_private*, %struct.subsys_private** %p6, align 8, !dbg !2663
  %interfaces = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %9, i32 0, i32 2, !dbg !2663
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %interfaces, i32 0, i32 0, !dbg !2663
  %10 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2663
  %11 = bitcast %struct.list_head* %10 to i8*, !dbg !2663
  store i8* %11, i8** %__mptr, align 8, !dbg !2663
  br label %do.body, !dbg !2663

do.body:                                          ; preds = %if.end4
  br label %do.end, !dbg !2664

do.end:                                           ; preds = %do.body
  %12 = load i8*, i8** %__mptr, align 8, !dbg !2663
  %add.ptr = getelementptr i8, i8* %12, i64 -16, !dbg !2663
  %13 = bitcast i8* %add.ptr to %struct.subsys_interface*, !dbg !2663
  store %struct.subsys_interface* %13, %struct.subsys_interface** %tmp, align 8, !dbg !2664
  %14 = load %struct.subsys_interface*, %struct.subsys_interface** %tmp, align 8, !dbg !2663
  store %struct.subsys_interface* %14, %struct.subsys_interface** %sif, align 8, !dbg !2666
  br label %for.cond, !dbg !2666

for.cond:                                         ; preds = %do.end17, %do.end
  %15 = load %struct.subsys_interface*, %struct.subsys_interface** %sif, align 8, !dbg !2667
  %node = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %15, i32 0, i32 2, !dbg !2667
  %16 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2667
  %p7 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %16, i32 0, i32 20, !dbg !2667
  %17 = load %struct.subsys_private*, %struct.subsys_private** %p7, align 8, !dbg !2667
  %interfaces8 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %17, i32 0, i32 2, !dbg !2667
  %cmp = icmp eq %struct.list_head* %node, %interfaces8, !dbg !2667
  %lnot = xor i1 %cmp, true, !dbg !2667
  br i1 %lnot, label %for.body, label %for.end, !dbg !2666

for.body:                                         ; preds = %for.cond
  %18 = load %struct.subsys_interface*, %struct.subsys_interface** %sif, align 8, !dbg !2669
  %add_dev = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %18, i32 0, i32 3, !dbg !2671
  %19 = load i32 (%struct.device*, %struct.subsys_interface*)*, i32 (%struct.device*, %struct.subsys_interface*)** %add_dev, align 8, !dbg !2671
  %tobool9 = icmp ne i32 (%struct.device*, %struct.subsys_interface*)* %19, null, !dbg !2669
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !2672

if.then10:                                        ; preds = %for.body
  %20 = load %struct.subsys_interface*, %struct.subsys_interface** %sif, align 8, !dbg !2673
  %add_dev11 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %20, i32 0, i32 3, !dbg !2674
  %21 = load i32 (%struct.device*, %struct.subsys_interface*)*, i32 (%struct.device*, %struct.subsys_interface*)** %add_dev11, align 8, !dbg !2674
  %22 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2675
  %23 = load %struct.subsys_interface*, %struct.subsys_interface** %sif, align 8, !dbg !2676
  %call = call i32 %21(%struct.device* %22, %struct.subsys_interface* %23) #8, !dbg !2673
  br label %if.end12, !dbg !2673

if.end12:                                         ; preds = %if.then10, %for.body
  br label %for.inc, !dbg !2671

for.inc:                                          ; preds = %if.end12
  call void @llvm.dbg.declare(metadata i8** %__mptr13, metadata !2677, metadata !DIExpression()), !dbg !2679
  %24 = load %struct.subsys_interface*, %struct.subsys_interface** %sif, align 8, !dbg !2679
  %node14 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %24, i32 0, i32 2, !dbg !2679
  %next15 = getelementptr inbounds %struct.list_head, %struct.list_head* %node14, i32 0, i32 0, !dbg !2679
  %25 = load %struct.list_head*, %struct.list_head** %next15, align 8, !dbg !2679
  %26 = bitcast %struct.list_head* %25 to i8*, !dbg !2679
  store i8* %26, i8** %__mptr13, align 8, !dbg !2679
  br label %do.body16, !dbg !2679

do.body16:                                        ; preds = %for.inc
  br label %do.end17, !dbg !2680

do.end17:                                         ; preds = %do.body16
  %27 = load i8*, i8** %__mptr13, align 8, !dbg !2679
  %add.ptr19 = getelementptr i8, i8* %27, i64 -16, !dbg !2679
  %28 = bitcast i8* %add.ptr19 to %struct.subsys_interface*, !dbg !2679
  store %struct.subsys_interface* %28, %struct.subsys_interface** %tmp18, align 8, !dbg !2680
  %29 = load %struct.subsys_interface*, %struct.subsys_interface** %tmp18, align 8, !dbg !2679
  store %struct.subsys_interface* %29, %struct.subsys_interface** %sif, align 8, !dbg !2667
  br label %for.cond, !dbg !2667, !llvm.loop !2682

for.end:                                          ; preds = %for.cond
  %30 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2684
  %p20 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %30, i32 0, i32 20, !dbg !2685
  %31 = load %struct.subsys_private*, %struct.subsys_private** %p20, align 8, !dbg !2685
  %mutex21 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %31, i32 0, i32 3, !dbg !2686
  call void @mutex_unlock(%struct.mutex* %mutex21) #8, !dbg !2687
  br label %return, !dbg !2688

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !2688
}

; Function Attrs: noredzone
declare dso_local void @device_initial_probe(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @bus_remove_device(%struct.device* %dev) #0 !dbg !2689 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %bus = alloca %struct.bus_type*, align 8
  %sif = alloca %struct.subsys_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.subsys_interface*, align 8
  %__mptr9 = alloca i8*, align 8
  %tmp14 = alloca %struct.subsys_interface*, align 8
  %tmp29 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2690, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus, metadata !2692, metadata !DIExpression()), !dbg !2693
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2694
  %bus1 = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 5, !dbg !2695
  %1 = load %struct.bus_type*, %struct.bus_type** %bus1, align 8, !dbg !2695
  store %struct.bus_type* %1, %struct.bus_type** %bus, align 8, !dbg !2693
  call void @llvm.dbg.declare(metadata %struct.subsys_interface** %sif, metadata !2696, metadata !DIExpression()), !dbg !2697
  %2 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2698
  %tobool = icmp ne %struct.bus_type* %2, null, !dbg !2698
  br i1 %tobool, label %if.end, label %if.then, !dbg !2700

if.then:                                          ; preds = %entry
  br label %return, !dbg !2701

if.end:                                           ; preds = %entry
  %3 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2702
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %3, i32 0, i32 20, !dbg !2703
  %4 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !2703
  %mutex = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %4, i32 0, i32 3, !dbg !2704
  call void @mutex_lock(%struct.mutex* %mutex) #8, !dbg !2705
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2706, metadata !DIExpression()), !dbg !2709
  %5 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2709
  %p2 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %5, i32 0, i32 20, !dbg !2709
  %6 = load %struct.subsys_private*, %struct.subsys_private** %p2, align 8, !dbg !2709
  %interfaces = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %6, i32 0, i32 2, !dbg !2709
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %interfaces, i32 0, i32 0, !dbg !2709
  %7 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2709
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !2709
  store i8* %8, i8** %__mptr, align 8, !dbg !2709
  br label %do.body, !dbg !2709

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2710

do.end:                                           ; preds = %do.body
  %9 = load i8*, i8** %__mptr, align 8, !dbg !2709
  %add.ptr = getelementptr i8, i8* %9, i64 -16, !dbg !2709
  %10 = bitcast i8* %add.ptr to %struct.subsys_interface*, !dbg !2709
  store %struct.subsys_interface* %10, %struct.subsys_interface** %tmp, align 8, !dbg !2710
  %11 = load %struct.subsys_interface*, %struct.subsys_interface** %tmp, align 8, !dbg !2709
  store %struct.subsys_interface* %11, %struct.subsys_interface** %sif, align 8, !dbg !2712
  br label %for.cond, !dbg !2712

for.cond:                                         ; preds = %do.end13, %do.end
  %12 = load %struct.subsys_interface*, %struct.subsys_interface** %sif, align 8, !dbg !2713
  %node = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %12, i32 0, i32 2, !dbg !2713
  %13 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2713
  %p3 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %13, i32 0, i32 20, !dbg !2713
  %14 = load %struct.subsys_private*, %struct.subsys_private** %p3, align 8, !dbg !2713
  %interfaces4 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %14, i32 0, i32 2, !dbg !2713
  %cmp = icmp eq %struct.list_head* %node, %interfaces4, !dbg !2713
  %lnot = xor i1 %cmp, true, !dbg !2713
  br i1 %lnot, label %for.body, label %for.end, !dbg !2712

for.body:                                         ; preds = %for.cond
  %15 = load %struct.subsys_interface*, %struct.subsys_interface** %sif, align 8, !dbg !2715
  %remove_dev = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %15, i32 0, i32 4, !dbg !2717
  %16 = load void (%struct.device*, %struct.subsys_interface*)*, void (%struct.device*, %struct.subsys_interface*)** %remove_dev, align 8, !dbg !2717
  %tobool5 = icmp ne void (%struct.device*, %struct.subsys_interface*)* %16, null, !dbg !2715
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !2718

if.then6:                                         ; preds = %for.body
  %17 = load %struct.subsys_interface*, %struct.subsys_interface** %sif, align 8, !dbg !2719
  %remove_dev7 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %17, i32 0, i32 4, !dbg !2720
  %18 = load void (%struct.device*, %struct.subsys_interface*)*, void (%struct.device*, %struct.subsys_interface*)** %remove_dev7, align 8, !dbg !2720
  %19 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2721
  %20 = load %struct.subsys_interface*, %struct.subsys_interface** %sif, align 8, !dbg !2722
  call void %18(%struct.device* %19, %struct.subsys_interface* %20) #8, !dbg !2719
  br label %if.end8, !dbg !2719

if.end8:                                          ; preds = %if.then6, %for.body
  br label %for.inc, !dbg !2717

for.inc:                                          ; preds = %if.end8
  call void @llvm.dbg.declare(metadata i8** %__mptr9, metadata !2723, metadata !DIExpression()), !dbg !2725
  %21 = load %struct.subsys_interface*, %struct.subsys_interface** %sif, align 8, !dbg !2725
  %node10 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %21, i32 0, i32 2, !dbg !2725
  %next11 = getelementptr inbounds %struct.list_head, %struct.list_head* %node10, i32 0, i32 0, !dbg !2725
  %22 = load %struct.list_head*, %struct.list_head** %next11, align 8, !dbg !2725
  %23 = bitcast %struct.list_head* %22 to i8*, !dbg !2725
  store i8* %23, i8** %__mptr9, align 8, !dbg !2725
  br label %do.body12, !dbg !2725

do.body12:                                        ; preds = %for.inc
  br label %do.end13, !dbg !2726

do.end13:                                         ; preds = %do.body12
  %24 = load i8*, i8** %__mptr9, align 8, !dbg !2725
  %add.ptr15 = getelementptr i8, i8* %24, i64 -16, !dbg !2725
  %25 = bitcast i8* %add.ptr15 to %struct.subsys_interface*, !dbg !2725
  store %struct.subsys_interface* %25, %struct.subsys_interface** %tmp14, align 8, !dbg !2726
  %26 = load %struct.subsys_interface*, %struct.subsys_interface** %tmp14, align 8, !dbg !2725
  store %struct.subsys_interface* %26, %struct.subsys_interface** %sif, align 8, !dbg !2713
  br label %for.cond, !dbg !2713, !llvm.loop !2728

for.end:                                          ; preds = %for.cond
  %27 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2730
  %p16 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %27, i32 0, i32 20, !dbg !2731
  %28 = load %struct.subsys_private*, %struct.subsys_private** %p16, align 8, !dbg !2731
  %mutex17 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %28, i32 0, i32 3, !dbg !2732
  call void @mutex_unlock(%struct.mutex* %mutex17) #8, !dbg !2733
  %29 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2734
  %kobj = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0, !dbg !2735
  call void @sysfs_remove_link(%struct.kobject* %kobj, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !2736
  %30 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2737
  %bus18 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 5, !dbg !2738
  %31 = load %struct.bus_type*, %struct.bus_type** %bus18, align 8, !dbg !2738
  %p19 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %31, i32 0, i32 20, !dbg !2739
  %32 = load %struct.subsys_private*, %struct.subsys_private** %p19, align 8, !dbg !2739
  %devices_kset = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %32, i32 0, i32 1, !dbg !2740
  %33 = load %struct.kset*, %struct.kset** %devices_kset, align 8, !dbg !2740
  %kobj20 = getelementptr inbounds %struct.kset, %struct.kset* %33, i32 0, i32 2, !dbg !2741
  %34 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2742
  %call = call i8* @dev_name(%struct.device* %34) #8, !dbg !2743
  call void @sysfs_remove_link(%struct.kobject* %kobj20, i8* %call) #8, !dbg !2744
  %35 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2745
  %36 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2746
  %bus21 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 5, !dbg !2747
  %37 = load %struct.bus_type*, %struct.bus_type** %bus21, align 8, !dbg !2747
  %dev_groups = getelementptr inbounds %struct.bus_type, %struct.bus_type* %37, i32 0, i32 4, !dbg !2748
  %38 = load %struct.attribute_group**, %struct.attribute_group*** %dev_groups, align 8, !dbg !2748
  call void @device_remove_groups(%struct.device* %35, %struct.attribute_group** %38) #8, !dbg !2749
  %39 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2750
  %p22 = getelementptr inbounds %struct.device, %struct.device* %39, i32 0, i32 2, !dbg !2752
  %40 = load %struct.device_private*, %struct.device_private** %p22, align 8, !dbg !2752
  %knode_bus = getelementptr inbounds %struct.device_private, %struct.device_private* %40, i32 0, i32 3, !dbg !2753
  %call23 = call i32 @klist_node_attached(%struct.klist_node* %knode_bus) #8, !dbg !2754
  %tobool24 = icmp ne i32 %call23, 0, !dbg !2754
  br i1 %tobool24, label %if.then25, label %if.end28, !dbg !2755

if.then25:                                        ; preds = %for.end
  %41 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2756
  %p26 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 2, !dbg !2757
  %42 = load %struct.device_private*, %struct.device_private** %p26, align 8, !dbg !2757
  %knode_bus27 = getelementptr inbounds %struct.device_private, %struct.device_private* %42, i32 0, i32 3, !dbg !2758
  call void @klist_del(%struct.klist_node* %knode_bus27) #8, !dbg !2759
  br label %if.end28, !dbg !2759

if.end28:                                         ; preds = %if.then25, %for.end
  store i32 0, i32* %tmp29, align 4, !dbg !2760
  %43 = load i32, i32* %tmp29, align 4, !dbg !2763
  %44 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2764
  call void @device_release_driver(%struct.device* %44) #8, !dbg !2765
  %45 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2766
  %bus30 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 5, !dbg !2767
  %46 = load %struct.bus_type*, %struct.bus_type** %bus30, align 8, !dbg !2767
  call void @bus_put(%struct.bus_type* %46) #8, !dbg !2768
  br label %return, !dbg !2769

return:                                           ; preds = %if.end28, %if.then
  ret void, !dbg !2769
}

; Function Attrs: noredzone
declare dso_local i32 @klist_node_attached(%struct.klist_node*) #2

; Function Attrs: noredzone
declare dso_local void @klist_del(%struct.klist_node*) #2

; Function Attrs: noredzone
declare dso_local void @device_release_driver(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @bus_add_driver(%struct.device_driver* %drv) #0 !dbg !2770 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca %struct.device_driver*, align 8
  %bus = alloca %struct.bus_type*, align 8
  %priv = alloca %struct.driver_private*, align 8
  %error = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !2773, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus, metadata !2775, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.declare(metadata %struct.driver_private** %priv, metadata !2777, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.declare(metadata i32* %error, metadata !2779, metadata !DIExpression()), !dbg !2780
  store i32 0, i32* %error, align 4, !dbg !2780
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !2781
  %bus1 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %0, i32 0, i32 1, !dbg !2782
  %1 = load %struct.bus_type*, %struct.bus_type** %bus1, align 8, !dbg !2782
  %call = call %struct.bus_type* @bus_get(%struct.bus_type* %1) #8, !dbg !2783
  store %struct.bus_type* %call, %struct.bus_type** %bus, align 8, !dbg !2784
  %2 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2785
  %tobool = icmp ne %struct.bus_type* %2, null, !dbg !2785
  br i1 %tobool, label %if.end, label %if.then, !dbg !2787

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2788
  br label %return, !dbg !2788

if.end:                                           ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !2789
  %3 = load i32, i32* %tmp, align 4, !dbg !2792
  %call2 = call i8* @kzalloc(i64 144, i32 3264) #8, !dbg !2793
  %4 = bitcast i8* %call2 to %struct.driver_private*, !dbg !2793
  store %struct.driver_private* %4, %struct.driver_private** %priv, align 8, !dbg !2794
  %5 = load %struct.driver_private*, %struct.driver_private** %priv, align 8, !dbg !2795
  %tobool3 = icmp ne %struct.driver_private* %5, null, !dbg !2795
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2797

if.then4:                                         ; preds = %if.end
  store i32 -12, i32* %error, align 4, !dbg !2798
  br label %out_put_bus, !dbg !2800

if.end5:                                          ; preds = %if.end
  %6 = load %struct.driver_private*, %struct.driver_private** %priv, align 8, !dbg !2801
  %klist_devices = getelementptr inbounds %struct.driver_private, %struct.driver_private* %6, i32 0, i32 1, !dbg !2802
  call void @klist_init(%struct.klist* %klist_devices, void (%struct.klist_node*)* null, void (%struct.klist_node*)* null) #8, !dbg !2803
  %7 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !2804
  %8 = load %struct.driver_private*, %struct.driver_private** %priv, align 8, !dbg !2805
  %driver = getelementptr inbounds %struct.driver_private, %struct.driver_private* %8, i32 0, i32 4, !dbg !2806
  store %struct.device_driver* %7, %struct.device_driver** %driver, align 8, !dbg !2807
  %9 = load %struct.driver_private*, %struct.driver_private** %priv, align 8, !dbg !2808
  %10 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !2809
  %p = getelementptr inbounds %struct.device_driver, %struct.device_driver* %10, i32 0, i32 18, !dbg !2810
  store %struct.driver_private* %9, %struct.driver_private** %p, align 8, !dbg !2811
  %11 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2812
  %p6 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %11, i32 0, i32 20, !dbg !2813
  %12 = load %struct.subsys_private*, %struct.subsys_private** %p6, align 8, !dbg !2813
  %drivers_kset = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %12, i32 0, i32 4, !dbg !2814
  %13 = load %struct.kset*, %struct.kset** %drivers_kset, align 8, !dbg !2814
  %14 = load %struct.driver_private*, %struct.driver_private** %priv, align 8, !dbg !2815
  %kobj = getelementptr inbounds %struct.driver_private, %struct.driver_private* %14, i32 0, i32 0, !dbg !2816
  %kset = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i32 0, i32 3, !dbg !2817
  store %struct.kset* %13, %struct.kset** %kset, align 8, !dbg !2818
  %15 = load %struct.driver_private*, %struct.driver_private** %priv, align 8, !dbg !2819
  %kobj7 = getelementptr inbounds %struct.driver_private, %struct.driver_private* %15, i32 0, i32 0, !dbg !2820
  %16 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !2821
  %name = getelementptr inbounds %struct.device_driver, %struct.device_driver* %16, i32 0, i32 0, !dbg !2822
  %17 = load i8*, i8** %name, align 8, !dbg !2822
  %call8 = call i32 (%struct.kobject*, %struct.kobj_type*, %struct.kobject*, i8*, ...) @kobject_init_and_add(%struct.kobject* %kobj7, %struct.kobj_type* @driver_ktype, %struct.kobject* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %17) #8, !dbg !2823
  store i32 %call8, i32* %error, align 4, !dbg !2824
  %18 = load i32, i32* %error, align 4, !dbg !2825
  %tobool9 = icmp ne i32 %18, 0, !dbg !2825
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !2827

if.then10:                                        ; preds = %if.end5
  br label %out_unregister, !dbg !2828

if.end11:                                         ; preds = %if.end5
  %19 = load %struct.driver_private*, %struct.driver_private** %priv, align 8, !dbg !2829
  %knode_bus = getelementptr inbounds %struct.driver_private, %struct.driver_private* %19, i32 0, i32 2, !dbg !2830
  %20 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2831
  %p12 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %20, i32 0, i32 20, !dbg !2832
  %21 = load %struct.subsys_private*, %struct.subsys_private** %p12, align 8, !dbg !2832
  %klist_drivers = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %21, i32 0, i32 6, !dbg !2833
  call void @klist_add_tail(%struct.klist_node* %knode_bus, %struct.klist* %klist_drivers) #8, !dbg !2834
  %22 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !2835
  %bus13 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %22, i32 0, i32 1, !dbg !2837
  %23 = load %struct.bus_type*, %struct.bus_type** %bus13, align 8, !dbg !2837
  %p14 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %23, i32 0, i32 20, !dbg !2838
  %24 = load %struct.subsys_private*, %struct.subsys_private** %p14, align 8, !dbg !2838
  %drivers_autoprobe = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %24, i32 0, i32 8, !dbg !2839
  %bf.load = load i8, i8* %drivers_autoprobe, align 8, !dbg !2839
  %bf.clear = and i8 %bf.load, 1, !dbg !2839
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2839
  %tobool15 = icmp ne i32 %bf.cast, 0, !dbg !2835
  br i1 %tobool15, label %if.then16, label %if.end21, !dbg !2840

if.then16:                                        ; preds = %if.end11
  %25 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !2841
  %call17 = call i32 @driver_attach(%struct.device_driver* %25) #8, !dbg !2843
  store i32 %call17, i32* %error, align 4, !dbg !2844
  %26 = load i32, i32* %error, align 4, !dbg !2845
  %tobool18 = icmp ne i32 %26, 0, !dbg !2845
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !2847

if.then19:                                        ; preds = %if.then16
  br label %out_unregister, !dbg !2848

if.end20:                                         ; preds = %if.then16
  br label %if.end21, !dbg !2849

if.end21:                                         ; preds = %if.end20, %if.end11
  %27 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !2850
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %27, i32 0, i32 2, !dbg !2851
  %28 = load %struct.module*, %struct.module** %owner, align 8, !dbg !2851
  %29 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !2852
  call void @module_add_driver(%struct.module* %28, %struct.device_driver* %29) #8, !dbg !2853
  %30 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !2854
  %call22 = call i32 @driver_create_file(%struct.device_driver* %30, %struct.driver_attribute* @driver_attr_uevent) #8, !dbg !2855
  store i32 %call22, i32* %error, align 4, !dbg !2856
  %31 = load i32, i32* %error, align 4, !dbg !2857
  %tobool23 = icmp ne i32 %31, 0, !dbg !2857
  br i1 %tobool23, label %if.then24, label %if.end27, !dbg !2859

if.then24:                                        ; preds = %if.end21
  %32 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !2860
  %name25 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %32, i32 0, i32 0, !dbg !2862
  %33 = load i8*, i8** %name25, align 8, !dbg !2862
  %call26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.bus_add_driver, i64 0, i64 0), i8* %33) #9, !dbg !2863
  br label %if.end27, !dbg !2864

if.end27:                                         ; preds = %if.then24, %if.end21
  %34 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !2865
  %35 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2866
  %drv_groups = getelementptr inbounds %struct.bus_type, %struct.bus_type* %35, i32 0, i32 5, !dbg !2867
  %36 = load %struct.attribute_group**, %struct.attribute_group*** %drv_groups, align 8, !dbg !2867
  %call28 = call i32 @driver_add_groups(%struct.device_driver* %34, %struct.attribute_group** %36) #8, !dbg !2868
  store i32 %call28, i32* %error, align 4, !dbg !2869
  %37 = load i32, i32* %error, align 4, !dbg !2870
  %tobool29 = icmp ne i32 %37, 0, !dbg !2870
  br i1 %tobool29, label %if.then30, label %if.end33, !dbg !2872

if.then30:                                        ; preds = %if.end27
  %38 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !2873
  %name31 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %38, i32 0, i32 0, !dbg !2875
  %39 = load i8*, i8** %name31, align 8, !dbg !2875
  %call32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.bus_add_driver, i64 0, i64 0), i8* %39) #9, !dbg !2876
  br label %if.end33, !dbg !2877

if.end33:                                         ; preds = %if.then30, %if.end27
  %40 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !2878
  %suppress_bind_attrs = getelementptr inbounds %struct.device_driver, %struct.device_driver* %40, i32 0, i32 4, !dbg !2880
  %41 = load i8, i8* %suppress_bind_attrs, align 8, !dbg !2880
  %tobool34 = trunc i8 %41 to i1, !dbg !2880
  br i1 %tobool34, label %if.end42, label %if.then35, !dbg !2881

if.then35:                                        ; preds = %if.end33
  %42 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !2882
  %call36 = call i32 @add_bind_files(%struct.device_driver* %42) #8, !dbg !2884
  store i32 %call36, i32* %error, align 4, !dbg !2885
  %43 = load i32, i32* %error, align 4, !dbg !2886
  %tobool37 = icmp ne i32 %43, 0, !dbg !2886
  br i1 %tobool37, label %if.then38, label %if.end41, !dbg !2888

if.then38:                                        ; preds = %if.then35
  %44 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !2889
  %name39 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %44, i32 0, i32 0, !dbg !2891
  %45 = load i8*, i8** %name39, align 8, !dbg !2891
  %call40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.bus_add_driver, i64 0, i64 0), i8* %45) #9, !dbg !2892
  br label %if.end41, !dbg !2893

if.end41:                                         ; preds = %if.then38, %if.then35
  br label %if.end42, !dbg !2894

if.end42:                                         ; preds = %if.end41, %if.end33
  store i32 0, i32* %retval, align 4, !dbg !2895
  br label %return, !dbg !2895

out_unregister:                                   ; preds = %if.then19, %if.then10
  call void @llvm.dbg.label(metadata !2896), !dbg !2897
  %46 = load %struct.driver_private*, %struct.driver_private** %priv, align 8, !dbg !2898
  %kobj43 = getelementptr inbounds %struct.driver_private, %struct.driver_private* %46, i32 0, i32 0, !dbg !2899
  call void @kobject_put(%struct.kobject* %kobj43) #8, !dbg !2900
  %47 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !2901
  %p44 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %47, i32 0, i32 18, !dbg !2902
  store %struct.driver_private* null, %struct.driver_private** %p44, align 8, !dbg !2903
  br label %out_put_bus, !dbg !2901

out_put_bus:                                      ; preds = %out_unregister, %if.then4
  call void @llvm.dbg.label(metadata !2904), !dbg !2905
  %48 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !2906
  call void @bus_put(%struct.bus_type* %48) #8, !dbg !2907
  %49 = load i32, i32* %error, align 4, !dbg !2908
  store i32 %49, i32* %retval, align 4, !dbg !2909
  br label %return, !dbg !2909

return:                                           ; preds = %out_put_bus, %if.end42, %if.then
  %50 = load i32, i32* %retval, align 4, !dbg !2910
  ret i32 %50, !dbg !2910
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2911 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2914, metadata !DIExpression()), !dbg !2918
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2924, metadata !DIExpression()), !dbg !2925
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2926, metadata !DIExpression()), !dbg !2927
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2928, metadata !DIExpression()), !dbg !2929
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2930, metadata !DIExpression()), !dbg !2934
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2936, metadata !DIExpression()), !dbg !2940
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2942, metadata !DIExpression()), !dbg !2946
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2951, metadata !DIExpression()), !dbg !2952
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2953, metadata !DIExpression()), !dbg !2954
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2955, metadata !DIExpression()), !dbg !2956
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2957, metadata !DIExpression()), !dbg !2958
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2959, metadata !DIExpression()), !dbg !2960
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2961, metadata !DIExpression()), !dbg !2962
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2963, metadata !DIExpression()), !dbg !2964
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2965, metadata !DIExpression()), !dbg !2966
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2967, metadata !DIExpression()), !dbg !2968
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2969, metadata !DIExpression()), !dbg !2970
  %0 = load i64, i64* %size.addr, align 8, !dbg !2971
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2972
  %or = or i32 %1, 256, !dbg !2973
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2974
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !2975
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2976

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2977
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2978
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2979

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2980
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2981
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2982
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !2983
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2960
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2984
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2985
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2986
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2987
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2988
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2989
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !2990
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2990
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2990
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2990
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !2990
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2991
  br label %kmalloc.exit, !dbg !2991

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2992
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2993
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2993
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2995

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2996
  br label %kmalloc_index.exit.i, !dbg !2996

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2997
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2999
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3000

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3001
  br label %kmalloc_index.exit.i, !dbg !3001

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3002
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3004
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3005

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3006
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3007
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3008

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3009
  br label %kmalloc_index.exit.i, !dbg !3009

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3010
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3012
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3013

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3014
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3015
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3016

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3017
  br label %kmalloc_index.exit.i, !dbg !3017

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3018
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3020
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3021

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3022
  br label %kmalloc_index.exit.i, !dbg !3022

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3023
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3025
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3026

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3027
  br label %kmalloc_index.exit.i, !dbg !3027

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3028
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3030
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3031

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3032
  br label %kmalloc_index.exit.i, !dbg !3032

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3033
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3035
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3036

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3037
  br label %kmalloc_index.exit.i, !dbg !3037

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3038
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3040
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3041

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3042
  br label %kmalloc_index.exit.i, !dbg !3042

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3043
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3045
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3046

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3047
  br label %kmalloc_index.exit.i, !dbg !3047

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3048
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3050
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3051

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3052
  br label %kmalloc_index.exit.i, !dbg !3052

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3053
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3055
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3056

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3057
  br label %kmalloc_index.exit.i, !dbg !3057

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3058
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3060
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3061

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3062
  br label %kmalloc_index.exit.i, !dbg !3062

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3063
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3065
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3066

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3067
  br label %kmalloc_index.exit.i, !dbg !3067

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3068
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3070
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3071

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3072
  br label %kmalloc_index.exit.i, !dbg !3072

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3073
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3075
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3076

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3077
  br label %kmalloc_index.exit.i, !dbg !3077

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3078
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3080
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3081

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3082
  br label %kmalloc_index.exit.i, !dbg !3082

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3083
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3085
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3086

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3087
  br label %kmalloc_index.exit.i, !dbg !3087

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3088
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3090
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3091

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3092
  br label %kmalloc_index.exit.i, !dbg !3092

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3093
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3095
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3096

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3097
  br label %kmalloc_index.exit.i, !dbg !3097

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3098
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3100
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3101

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3102
  br label %kmalloc_index.exit.i, !dbg !3102

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3103
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3105
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3106

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3107
  br label %kmalloc_index.exit.i, !dbg !3107

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3108
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3110
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3111

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3112
  br label %kmalloc_index.exit.i, !dbg !3112

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3113
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3115
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3116

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3117
  br label %kmalloc_index.exit.i, !dbg !3117

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3118
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3120
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3121

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3122
  br label %kmalloc_index.exit.i, !dbg !3122

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3123
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3125
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3126

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3127
  br label %kmalloc_index.exit.i, !dbg !3127

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3128
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3130
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3131

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3132
  br label %kmalloc_index.exit.i, !dbg !3132

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3133
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3135
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3136

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3137
  br label %kmalloc_index.exit.i, !dbg !3137

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !3138, !srcloc !3141
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #10, !dbg !3142, !srcloc !3145
  unreachable, !dbg !3146

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3147
  store i32 %45, i32* %index.i, align 4, !dbg !3148
  %46 = load i32, i32* %index.i, align 4, !dbg !3149
  %tobool.i = icmp ne i32 %46, 0, !dbg !3149
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3151

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3152
  br label %kmalloc.exit, !dbg !3152

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3153
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3154
  %and.i.i = and i32 %48, 17, !dbg !3154
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3154
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3154
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3154
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3154
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3156

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3157
  br label %kmalloc_type.exit.i, !dbg !3157

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3158
  %and2.i.i = and i32 %49, 1, !dbg !3159
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3158
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3158
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3158
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3160
  br label %kmalloc_type.exit.i, !dbg !3160

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3161
  %idxprom.i = zext i32 %51 to i64, !dbg !3162
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3162
  %52 = load i32, i32* %index.i, align 4, !dbg !3163
  %idxprom6.i = zext i32 %52 to i64, !dbg !3162
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3162
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3162
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3164
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3165
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3166
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3167
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !3168
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3168
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3168
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3168
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !3168
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2929
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3169
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3170
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3171
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3172
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !3173
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3174
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3175
  store i8* %62, i8** %retval.i, align 8, !dbg !3176
  br label %kmalloc.exit, !dbg !3176

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3177
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3178
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !3179
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3179
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3179
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3179
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !3179
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3180
  br label %kmalloc.exit, !dbg !3180

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3181
  ret i8* %65, !dbg !3182
}

; Function Attrs: noredzone
declare dso_local void @klist_init(%struct.klist*, void (%struct.klist_node*)*, void (%struct.klist_node*)*) #2

; Function Attrs: noredzone
declare dso_local i32 @kobject_init_and_add(%struct.kobject*, %struct.kobj_type*, %struct.kobject*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @driver_attach(%struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_add_driver(%struct.module* %mod, %struct.device_driver* %drv) #0 !dbg !3183 {
entry:
  %mod.addr = alloca %struct.module*, align 8
  %drv.addr = alloca %struct.device_driver*, align 8
  store %struct.module* %mod, %struct.module** %mod.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %mod.addr, metadata !3186, metadata !DIExpression()), !dbg !3187
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !3188, metadata !DIExpression()), !dbg !3189
  ret void, !dbg !3190
}

; Function Attrs: noredzone
declare dso_local i32 @driver_create_file(%struct.device_driver*, %struct.driver_attribute*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @driver_add_groups(%struct.device_driver*, %struct.attribute_group**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @add_bind_files(%struct.device_driver* %drv) #0 !dbg !3191 {
entry:
  %drv.addr = alloca %struct.device_driver*, align 8
  %ret = alloca i32, align 4
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !3192, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3194, metadata !DIExpression()), !dbg !3195
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !3196
  %call = call i32 @driver_create_file(%struct.device_driver* %0, %struct.driver_attribute* @driver_attr_unbind) #8, !dbg !3197
  store i32 %call, i32* %ret, align 4, !dbg !3198
  %1 = load i32, i32* %ret, align 4, !dbg !3199
  %cmp = icmp eq i32 %1, 0, !dbg !3201
  br i1 %cmp, label %if.then, label %if.end3, !dbg !3202

if.then:                                          ; preds = %entry
  %2 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !3203
  %call1 = call i32 @driver_create_file(%struct.device_driver* %2, %struct.driver_attribute* @driver_attr_bind) #8, !dbg !3205
  store i32 %call1, i32* %ret, align 4, !dbg !3206
  %3 = load i32, i32* %ret, align 4, !dbg !3207
  %tobool = icmp ne i32 %3, 0, !dbg !3207
  br i1 %tobool, label %if.then2, label %if.end, !dbg !3209

if.then2:                                         ; preds = %if.then
  %4 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !3210
  call void @driver_remove_file(%struct.device_driver* %4, %struct.driver_attribute* @driver_attr_unbind) #8, !dbg !3211
  br label %if.end, !dbg !3211

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3, !dbg !3212

if.end3:                                          ; preds = %if.end, %entry
  %5 = load i32, i32* %ret, align 4, !dbg !3213
  ret i32 %5, !dbg !3214
}

; Function Attrs: noredzone
declare dso_local void @kobject_put(%struct.kobject*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @bus_remove_driver(%struct.device_driver* %drv) #0 !dbg !3215 {
entry:
  %drv.addr = alloca %struct.device_driver*, align 8
  %tmp = alloca i32, align 4
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !3218, metadata !DIExpression()), !dbg !3219
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !3220
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %0, i32 0, i32 1, !dbg !3222
  %1 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !3222
  %tobool = icmp ne %struct.bus_type* %1, null, !dbg !3220
  br i1 %tobool, label %if.end, label %if.then, !dbg !3223

if.then:                                          ; preds = %entry
  br label %return, !dbg !3224

if.end:                                           ; preds = %entry
  %2 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !3225
  %suppress_bind_attrs = getelementptr inbounds %struct.device_driver, %struct.device_driver* %2, i32 0, i32 4, !dbg !3227
  %3 = load i8, i8* %suppress_bind_attrs, align 8, !dbg !3227
  %tobool1 = trunc i8 %3 to i1, !dbg !3227
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3228

if.then2:                                         ; preds = %if.end
  %4 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !3229
  call void @remove_bind_files(%struct.device_driver* %4) #8, !dbg !3230
  br label %if.end3, !dbg !3230

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !3231
  %6 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !3232
  %bus4 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %6, i32 0, i32 1, !dbg !3233
  %7 = load %struct.bus_type*, %struct.bus_type** %bus4, align 8, !dbg !3233
  %drv_groups = getelementptr inbounds %struct.bus_type, %struct.bus_type* %7, i32 0, i32 5, !dbg !3234
  %8 = load %struct.attribute_group**, %struct.attribute_group*** %drv_groups, align 8, !dbg !3234
  call void @driver_remove_groups(%struct.device_driver* %5, %struct.attribute_group** %8) #8, !dbg !3235
  %9 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !3236
  call void @driver_remove_file(%struct.device_driver* %9, %struct.driver_attribute* @driver_attr_uevent) #8, !dbg !3237
  %10 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !3238
  %p = getelementptr inbounds %struct.device_driver, %struct.device_driver* %10, i32 0, i32 18, !dbg !3239
  %11 = load %struct.driver_private*, %struct.driver_private** %p, align 8, !dbg !3239
  %knode_bus = getelementptr inbounds %struct.driver_private, %struct.driver_private* %11, i32 0, i32 2, !dbg !3240
  call void @klist_remove(%struct.klist_node* %knode_bus) #8, !dbg !3241
  store i32 0, i32* %tmp, align 4, !dbg !3242
  %12 = load i32, i32* %tmp, align 4, !dbg !3245
  %13 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !3246
  call void @driver_detach(%struct.device_driver* %13) #8, !dbg !3247
  %14 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !3248
  call void @module_remove_driver(%struct.device_driver* %14) #8, !dbg !3249
  %15 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !3250
  %p5 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %15, i32 0, i32 18, !dbg !3251
  %16 = load %struct.driver_private*, %struct.driver_private** %p5, align 8, !dbg !3251
  %kobj = getelementptr inbounds %struct.driver_private, %struct.driver_private* %16, i32 0, i32 0, !dbg !3252
  call void @kobject_put(%struct.kobject* %kobj) #8, !dbg !3253
  %17 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !3254
  %bus6 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %17, i32 0, i32 1, !dbg !3255
  %18 = load %struct.bus_type*, %struct.bus_type** %bus6, align 8, !dbg !3255
  call void @bus_put(%struct.bus_type* %18) #8, !dbg !3256
  br label %return, !dbg !3257

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !3257
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @remove_bind_files(%struct.device_driver* %drv) #0 !dbg !3258 {
entry:
  %drv.addr = alloca %struct.device_driver*, align 8
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !3259, metadata !DIExpression()), !dbg !3260
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !3261
  call void @driver_remove_file(%struct.device_driver* %0, %struct.driver_attribute* @driver_attr_bind) #8, !dbg !3262
  %1 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !3263
  call void @driver_remove_file(%struct.device_driver* %1, %struct.driver_attribute* @driver_attr_unbind) #8, !dbg !3264
  ret void, !dbg !3265
}

; Function Attrs: noredzone
declare dso_local void @driver_remove_groups(%struct.device_driver*, %struct.attribute_group**) #2

; Function Attrs: noredzone
declare dso_local void @driver_remove_file(%struct.device_driver*, %struct.driver_attribute*) #2

; Function Attrs: noredzone
declare dso_local void @klist_remove(%struct.klist_node*) #2

; Function Attrs: noredzone
declare dso_local void @driver_detach(%struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_remove_driver(%struct.device_driver* %drv) #0 !dbg !3266 {
entry:
  %drv.addr = alloca %struct.device_driver*, align 8
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !3267, metadata !DIExpression()), !dbg !3268
  ret void, !dbg !3269
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @bus_rescan_devices(%struct.bus_type* %bus) #0 !dbg !3270 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !3271, metadata !DIExpression()), !dbg !3272
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3273
  %call = call i32 @bus_for_each_dev(%struct.bus_type* %0, %struct.device* null, i8* null, i32 (%struct.device*, i8*)* @bus_rescan_devices_helper) #8, !dbg !3274
  ret i32 %call, !dbg !3275
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bus_rescan_devices_helper(%struct.device* %dev, i8* %data) #0 !dbg !3276 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3277, metadata !DIExpression()), !dbg !3278
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3279, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3281, metadata !DIExpression()), !dbg !3282
  store i32 0, i32* %ret, align 4, !dbg !3282
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3283
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !3285
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !3285
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !3283
  br i1 %tobool, label %if.end14, label %if.then, !dbg !3286

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3287
  %parent = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 1, !dbg !3290
  %3 = load %struct.device*, %struct.device** %parent, align 8, !dbg !3290
  %tobool1 = icmp ne %struct.device* %3, null, !dbg !3287
  br i1 %tobool1, label %land.lhs.true, label %if.end, !dbg !3291

land.lhs.true:                                    ; preds = %if.then
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3292
  %bus = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 5, !dbg !3293
  %5 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !3293
  %need_parent_lock = getelementptr inbounds %struct.bus_type, %struct.bus_type* %5, i32 0, i32 22, !dbg !3294
  %6 = load i8, i8* %need_parent_lock, align 8, !dbg !3294
  %tobool2 = trunc i8 %6 to i1, !dbg !3294
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !3295

if.then3:                                         ; preds = %land.lhs.true
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3296
  %parent4 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 1, !dbg !3297
  %8 = load %struct.device*, %struct.device** %parent4, align 8, !dbg !3297
  call void @device_lock(%struct.device* %8) #8, !dbg !3298
  br label %if.end, !dbg !3298

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3299
  %call = call i32 @device_attach(%struct.device* %9) #8, !dbg !3300
  store i32 %call, i32* %ret, align 4, !dbg !3301
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3302
  %parent5 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 1, !dbg !3304
  %11 = load %struct.device*, %struct.device** %parent5, align 8, !dbg !3304
  %tobool6 = icmp ne %struct.device* %11, null, !dbg !3302
  br i1 %tobool6, label %land.lhs.true7, label %if.end13, !dbg !3305

land.lhs.true7:                                   ; preds = %if.end
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3306
  %bus8 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 5, !dbg !3307
  %13 = load %struct.bus_type*, %struct.bus_type** %bus8, align 8, !dbg !3307
  %need_parent_lock9 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %13, i32 0, i32 22, !dbg !3308
  %14 = load i8, i8* %need_parent_lock9, align 8, !dbg !3308
  %tobool10 = trunc i8 %14 to i1, !dbg !3308
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !3309

if.then11:                                        ; preds = %land.lhs.true7
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3310
  %parent12 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 1, !dbg !3311
  %16 = load %struct.device*, %struct.device** %parent12, align 8, !dbg !3311
  call void @device_unlock(%struct.device* %16) #8, !dbg !3312
  br label %if.end13, !dbg !3312

if.end13:                                         ; preds = %if.then11, %land.lhs.true7, %if.end
  br label %if.end14, !dbg !3313

if.end14:                                         ; preds = %if.end13, %entry
  %17 = load i32, i32* %ret, align 4, !dbg !3314
  %cmp = icmp slt i32 %17, 0, !dbg !3315
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3314

cond.true:                                        ; preds = %if.end14
  %18 = load i32, i32* %ret, align 4, !dbg !3316
  br label %cond.end, !dbg !3314

cond.false:                                       ; preds = %if.end14
  br label %cond.end, !dbg !3314

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ 0, %cond.false ], !dbg !3314
  ret i32 %cond, !dbg !3317
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @device_reprobe(%struct.device* %dev) #0 !dbg !3318 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3319, metadata !DIExpression()), !dbg !3320
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3321
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !3323
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !3323
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !3321
  br i1 %tobool, label %if.then, label %if.end, !dbg !3324

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3325
  call void @device_driver_detach(%struct.device* %2) #8, !dbg !3326
  br label %if.end, !dbg !3326

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3327
  %call = call i32 @bus_rescan_devices_helper(%struct.device* %3, i8* null) #8, !dbg !3328
  ret i32 %call, !dbg !3329
}

; Function Attrs: noredzone
declare dso_local void @device_driver_detach(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @bus_register(%struct.bus_type* %bus) #0 !dbg !2109 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.bus_type*, align 8
  %retval1 = alloca i32, align 4
  %priv = alloca %struct.subsys_private*, align 8
  %key = alloca %struct.lock_class_key*, align 8
  %tmp = alloca i32, align 4
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !3330, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !3332, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.declare(metadata %struct.subsys_private** %priv, metadata !3334, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.declare(metadata %struct.lock_class_key** %key, metadata !3336, metadata !DIExpression()), !dbg !3338
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3339
  %lock_key = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i32 0, i32 21, !dbg !3340
  store %struct.lock_class_key* %lock_key, %struct.lock_class_key** %key, align 8, !dbg !3338
  %call = call i8* @kzalloc(i64 360, i32 3264) #8, !dbg !3341
  %1 = bitcast i8* %call to %struct.subsys_private*, !dbg !3341
  store %struct.subsys_private* %1, %struct.subsys_private** %priv, align 8, !dbg !3342
  %2 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !3343
  %tobool = icmp ne %struct.subsys_private* %2, null, !dbg !3343
  br i1 %tobool, label %if.end, label %if.then, !dbg !3345

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !3346
  br label %return, !dbg !3346

if.end:                                           ; preds = %entry
  %3 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3347
  %4 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !3348
  %bus2 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %4, i32 0, i32 9, !dbg !3349
  store %struct.bus_type* %3, %struct.bus_type** %bus2, align 8, !dbg !3350
  %5 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !3351
  %6 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3352
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %6, i32 0, i32 20, !dbg !3353
  store %struct.subsys_private* %5, %struct.subsys_private** %p, align 8, !dbg !3354
  br label %do.body, !dbg !3355

do.body:                                          ; preds = %if.end
  br label %do.body3, !dbg !3356

do.body3:                                         ; preds = %do.body
  %7 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !3358
  %bus_notifier = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %7, i32 0, i32 7, !dbg !3358
  %rwsem = getelementptr inbounds %struct.blocking_notifier_head, %struct.blocking_notifier_head* %bus_notifier, i32 0, i32 0, !dbg !3358
  call void @__init_rwsem(%struct.rw_semaphore* %rwsem, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* @bus_register.__key) #8, !dbg !3358
  br label %do.end, !dbg !3358

do.end:                                           ; preds = %do.body3
  %8 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !3356
  %bus_notifier4 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %8, i32 0, i32 7, !dbg !3356
  %head = getelementptr inbounds %struct.blocking_notifier_head, %struct.blocking_notifier_head* %bus_notifier4, i32 0, i32 1, !dbg !3356
  store %struct.notifier_block* null, %struct.notifier_block** %head, align 8, !dbg !3356
  br label %do.end5, !dbg !3356

do.end5:                                          ; preds = %do.end
  %9 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !3360
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %9, i32 0, i32 0, !dbg !3361
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %subsys, i32 0, i32 2, !dbg !3362
  %10 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3363
  %name = getelementptr inbounds %struct.bus_type, %struct.bus_type* %10, i32 0, i32 0, !dbg !3364
  %11 = load i8*, i8** %name, align 8, !dbg !3364
  %call6 = call i32 (%struct.kobject*, i8*, ...) @kobject_set_name(%struct.kobject* %kobj, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %11) #8, !dbg !3365
  store i32 %call6, i32* %retval1, align 4, !dbg !3366
  %12 = load i32, i32* %retval1, align 4, !dbg !3367
  %tobool7 = icmp ne i32 %12, 0, !dbg !3367
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !3369

if.then8:                                         ; preds = %do.end5
  br label %out, !dbg !3370

if.end9:                                          ; preds = %do.end5
  %13 = load %struct.kset*, %struct.kset** @bus_kset, align 8, !dbg !3371
  %14 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !3372
  %subsys10 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %14, i32 0, i32 0, !dbg !3373
  %kobj11 = getelementptr inbounds %struct.kset, %struct.kset* %subsys10, i32 0, i32 2, !dbg !3374
  %kset = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj11, i32 0, i32 3, !dbg !3375
  store %struct.kset* %13, %struct.kset** %kset, align 8, !dbg !3376
  %15 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !3377
  %subsys12 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %15, i32 0, i32 0, !dbg !3378
  %kobj13 = getelementptr inbounds %struct.kset, %struct.kset* %subsys12, i32 0, i32 2, !dbg !3379
  %ktype = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj13, i32 0, i32 4, !dbg !3380
  store %struct.kobj_type* @bus_ktype, %struct.kobj_type** %ktype, align 8, !dbg !3381
  %16 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !3382
  %drivers_autoprobe = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %16, i32 0, i32 8, !dbg !3383
  %bf.load = load i8, i8* %drivers_autoprobe, align 8, !dbg !3384
  %bf.clear = and i8 %bf.load, -2, !dbg !3384
  %bf.set = or i8 %bf.clear, 1, !dbg !3384
  store i8 %bf.set, i8* %drivers_autoprobe, align 8, !dbg !3384
  %17 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !3385
  %subsys14 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %17, i32 0, i32 0, !dbg !3386
  %call15 = call i32 @kset_register(%struct.kset* %subsys14) #8, !dbg !3387
  store i32 %call15, i32* %retval1, align 4, !dbg !3388
  %18 = load i32, i32* %retval1, align 4, !dbg !3389
  %tobool16 = icmp ne i32 %18, 0, !dbg !3389
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !3391

if.then17:                                        ; preds = %if.end9
  br label %out, !dbg !3392

if.end18:                                         ; preds = %if.end9
  %19 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3393
  %call19 = call i32 @bus_create_file(%struct.bus_type* %19, %struct.bus_attribute* @bus_attr_uevent) #8, !dbg !3394
  store i32 %call19, i32* %retval1, align 4, !dbg !3395
  %20 = load i32, i32* %retval1, align 4, !dbg !3396
  %tobool20 = icmp ne i32 %20, 0, !dbg !3396
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !3398

if.then21:                                        ; preds = %if.end18
  br label %bus_uevent_fail, !dbg !3399

if.end22:                                         ; preds = %if.end18
  %21 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !3400
  %subsys23 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %21, i32 0, i32 0, !dbg !3401
  %kobj24 = getelementptr inbounds %struct.kset, %struct.kset* %subsys23, i32 0, i32 2, !dbg !3402
  %call25 = call %struct.kset* @kset_create_and_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %struct.kset_uevent_ops* null, %struct.kobject* %kobj24) #8, !dbg !3403
  %22 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !3404
  %devices_kset = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %22, i32 0, i32 1, !dbg !3405
  store %struct.kset* %call25, %struct.kset** %devices_kset, align 8, !dbg !3406
  %23 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !3407
  %devices_kset26 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %23, i32 0, i32 1, !dbg !3409
  %24 = load %struct.kset*, %struct.kset** %devices_kset26, align 8, !dbg !3409
  %tobool27 = icmp ne %struct.kset* %24, null, !dbg !3407
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !3410

if.then28:                                        ; preds = %if.end22
  store i32 -12, i32* %retval1, align 4, !dbg !3411
  br label %bus_devices_fail, !dbg !3413

if.end29:                                         ; preds = %if.end22
  %25 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !3414
  %subsys30 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %25, i32 0, i32 0, !dbg !3415
  %kobj31 = getelementptr inbounds %struct.kset, %struct.kset* %subsys30, i32 0, i32 2, !dbg !3416
  %call32 = call %struct.kset* @kset_create_and_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), %struct.kset_uevent_ops* null, %struct.kobject* %kobj31) #8, !dbg !3417
  %26 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !3418
  %drivers_kset = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %26, i32 0, i32 4, !dbg !3419
  store %struct.kset* %call32, %struct.kset** %drivers_kset, align 8, !dbg !3420
  %27 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !3421
  %drivers_kset33 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %27, i32 0, i32 4, !dbg !3423
  %28 = load %struct.kset*, %struct.kset** %drivers_kset33, align 8, !dbg !3423
  %tobool34 = icmp ne %struct.kset* %28, null, !dbg !3421
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !3424

if.then35:                                        ; preds = %if.end29
  store i32 -12, i32* %retval1, align 4, !dbg !3425
  br label %bus_drivers_fail, !dbg !3427

if.end36:                                         ; preds = %if.end29
  %29 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !3428
  %interfaces = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %29, i32 0, i32 2, !dbg !3429
  call void @INIT_LIST_HEAD(%struct.list_head* %interfaces) #8, !dbg !3430
  %30 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !3431
  %mutex = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %30, i32 0, i32 3, !dbg !3432
  %31 = load %struct.lock_class_key*, %struct.lock_class_key** %key, align 8, !dbg !3433
  call void @__mutex_init(%struct.mutex* %mutex, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), %struct.lock_class_key* %31) #8, !dbg !3434
  %32 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !3435
  %klist_devices = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %32, i32 0, i32 5, !dbg !3436
  call void @klist_init(%struct.klist* %klist_devices, void (%struct.klist_node*)* @klist_devices_get, void (%struct.klist_node*)* @klist_devices_put) #8, !dbg !3437
  %33 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !3438
  %klist_drivers = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %33, i32 0, i32 6, !dbg !3439
  call void @klist_init(%struct.klist* %klist_drivers, void (%struct.klist_node*)* null, void (%struct.klist_node*)* null) #8, !dbg !3440
  %34 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3441
  %call37 = call i32 @add_probe_files(%struct.bus_type* %34) #8, !dbg !3442
  store i32 %call37, i32* %retval1, align 4, !dbg !3443
  %35 = load i32, i32* %retval1, align 4, !dbg !3444
  %tobool38 = icmp ne i32 %35, 0, !dbg !3444
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !3446

if.then39:                                        ; preds = %if.end36
  br label %bus_probe_files_fail, !dbg !3447

if.end40:                                         ; preds = %if.end36
  %36 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3448
  %37 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3449
  %bus_groups = getelementptr inbounds %struct.bus_type, %struct.bus_type* %37, i32 0, i32 3, !dbg !3450
  %38 = load %struct.attribute_group**, %struct.attribute_group*** %bus_groups, align 8, !dbg !3450
  %call41 = call i32 @bus_add_groups(%struct.bus_type* %36, %struct.attribute_group** %38) #8, !dbg !3451
  store i32 %call41, i32* %retval1, align 4, !dbg !3452
  %39 = load i32, i32* %retval1, align 4, !dbg !3453
  %tobool42 = icmp ne i32 %39, 0, !dbg !3453
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !3455

if.then43:                                        ; preds = %if.end40
  br label %bus_groups_fail, !dbg !3456

if.end44:                                         ; preds = %if.end40
  store i32 0, i32* %tmp, align 4, !dbg !3457
  %40 = load i32, i32* %tmp, align 4, !dbg !3460
  store i32 0, i32* %retval, align 4, !dbg !3461
  br label %return, !dbg !3461

bus_groups_fail:                                  ; preds = %if.then43
  call void @llvm.dbg.label(metadata !3462), !dbg !3463
  %41 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3464
  call void @remove_probe_files(%struct.bus_type* %41) #8, !dbg !3465
  br label %bus_probe_files_fail, !dbg !3465

bus_probe_files_fail:                             ; preds = %bus_groups_fail, %if.then39
  call void @llvm.dbg.label(metadata !3466), !dbg !3467
  %42 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3468
  %p45 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %42, i32 0, i32 20, !dbg !3469
  %43 = load %struct.subsys_private*, %struct.subsys_private** %p45, align 8, !dbg !3469
  %drivers_kset46 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %43, i32 0, i32 4, !dbg !3470
  %44 = load %struct.kset*, %struct.kset** %drivers_kset46, align 8, !dbg !3470
  call void @kset_unregister(%struct.kset* %44) #8, !dbg !3471
  br label %bus_drivers_fail, !dbg !3471

bus_drivers_fail:                                 ; preds = %bus_probe_files_fail, %if.then35
  call void @llvm.dbg.label(metadata !3472), !dbg !3473
  %45 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3474
  %p47 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %45, i32 0, i32 20, !dbg !3475
  %46 = load %struct.subsys_private*, %struct.subsys_private** %p47, align 8, !dbg !3475
  %devices_kset48 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %46, i32 0, i32 1, !dbg !3476
  %47 = load %struct.kset*, %struct.kset** %devices_kset48, align 8, !dbg !3476
  call void @kset_unregister(%struct.kset* %47) #8, !dbg !3477
  br label %bus_devices_fail, !dbg !3477

bus_devices_fail:                                 ; preds = %bus_drivers_fail, %if.then28
  call void @llvm.dbg.label(metadata !3478), !dbg !3479
  %48 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3480
  call void @bus_remove_file(%struct.bus_type* %48, %struct.bus_attribute* @bus_attr_uevent) #8, !dbg !3481
  br label %bus_uevent_fail, !dbg !3481

bus_uevent_fail:                                  ; preds = %bus_devices_fail, %if.then21
  call void @llvm.dbg.label(metadata !3482), !dbg !3483
  %49 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3484
  %p49 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %49, i32 0, i32 20, !dbg !3485
  %50 = load %struct.subsys_private*, %struct.subsys_private** %p49, align 8, !dbg !3485
  %subsys50 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %50, i32 0, i32 0, !dbg !3486
  call void @kset_unregister(%struct.kset* %subsys50) #8, !dbg !3487
  br label %out, !dbg !3487

out:                                              ; preds = %bus_uevent_fail, %if.then17, %if.then8
  call void @llvm.dbg.label(metadata !3488), !dbg !3489
  %51 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3490
  %p51 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %51, i32 0, i32 20, !dbg !3491
  %52 = load %struct.subsys_private*, %struct.subsys_private** %p51, align 8, !dbg !3491
  %53 = bitcast %struct.subsys_private* %52 to i8*, !dbg !3490
  call void @kfree(i8* %53) #8, !dbg !3492
  %54 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3493
  %p52 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %54, i32 0, i32 20, !dbg !3494
  store %struct.subsys_private* null, %struct.subsys_private** %p52, align 8, !dbg !3495
  %55 = load i32, i32* %retval1, align 4, !dbg !3496
  store i32 %55, i32* %retval, align 4, !dbg !3497
  br label %return, !dbg !3497

return:                                           ; preds = %out, %if.end44, %if.then
  %56 = load i32, i32* %retval, align 4, !dbg !3498
  ret i32 %56, !dbg !3498
}

; Function Attrs: noredzone
declare dso_local void @__init_rwsem(%struct.rw_semaphore*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noredzone
declare dso_local i32 @kobject_set_name(%struct.kobject*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @kset_register(%struct.kset*) #2

; Function Attrs: noredzone
declare dso_local %struct.kset* @kset_create_and_add(i8*, %struct.kset_uevent_ops*, %struct.kobject*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !3499 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3503, metadata !DIExpression()), !dbg !3504
  br label %do.body, !dbg !3505

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3506

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3508

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3506

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3510
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3510
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !3510
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !3510
  br label %do.end3, !dbg !3510

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3506

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3512
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3513
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !3514
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !3515
  ret void, !dbg !3516
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @klist_devices_get(%struct.klist_node* %n) #0 !dbg !3517 {
entry:
  %n.addr = alloca %struct.klist_node*, align 8
  %dev_prv = alloca %struct.device_private*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.device_private*, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.klist_node* %n, %struct.klist_node** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.klist_node** %n.addr, metadata !3518, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.declare(metadata %struct.device_private** %dev_prv, metadata !3520, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3522, metadata !DIExpression()), !dbg !3524
  %0 = load %struct.klist_node*, %struct.klist_node** %n.addr, align 8, !dbg !3524
  %1 = bitcast %struct.klist_node* %0 to i8*, !dbg !3524
  store i8* %1, i8** %__mptr, align 8, !dbg !3524
  br label %do.body, !dbg !3524

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3525

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3524
  %add.ptr = getelementptr i8, i8* %2, i64 -96, !dbg !3524
  %3 = bitcast i8* %add.ptr to %struct.device_private*, !dbg !3524
  store %struct.device_private* %3, %struct.device_private** %tmp, align 8, !dbg !3525
  %4 = load %struct.device_private*, %struct.device_private** %tmp, align 8, !dbg !3524
  store %struct.device_private* %4, %struct.device_private** %dev_prv, align 8, !dbg !3521
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !3527, metadata !DIExpression()), !dbg !3528
  %5 = load %struct.device_private*, %struct.device_private** %dev_prv, align 8, !dbg !3529
  %device = getelementptr inbounds %struct.device_private, %struct.device_private* %5, i32 0, i32 8, !dbg !3530
  %6 = load %struct.device*, %struct.device** %device, align 8, !dbg !3530
  store %struct.device* %6, %struct.device** %dev, align 8, !dbg !3528
  %7 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3531
  %call = call %struct.device* @get_device(%struct.device* %7) #8, !dbg !3532
  ret void, !dbg !3533
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @klist_devices_put(%struct.klist_node* %n) #0 !dbg !3534 {
entry:
  %n.addr = alloca %struct.klist_node*, align 8
  %dev_prv = alloca %struct.device_private*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.device_private*, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.klist_node* %n, %struct.klist_node** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.klist_node** %n.addr, metadata !3535, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.declare(metadata %struct.device_private** %dev_prv, metadata !3537, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3539, metadata !DIExpression()), !dbg !3541
  %0 = load %struct.klist_node*, %struct.klist_node** %n.addr, align 8, !dbg !3541
  %1 = bitcast %struct.klist_node* %0 to i8*, !dbg !3541
  store i8* %1, i8** %__mptr, align 8, !dbg !3541
  br label %do.body, !dbg !3541

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3542

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3541
  %add.ptr = getelementptr i8, i8* %2, i64 -96, !dbg !3541
  %3 = bitcast i8* %add.ptr to %struct.device_private*, !dbg !3541
  store %struct.device_private* %3, %struct.device_private** %tmp, align 8, !dbg !3542
  %4 = load %struct.device_private*, %struct.device_private** %tmp, align 8, !dbg !3541
  store %struct.device_private* %4, %struct.device_private** %dev_prv, align 8, !dbg !3538
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !3544, metadata !DIExpression()), !dbg !3545
  %5 = load %struct.device_private*, %struct.device_private** %dev_prv, align 8, !dbg !3546
  %device = getelementptr inbounds %struct.device_private, %struct.device_private* %5, i32 0, i32 8, !dbg !3547
  %6 = load %struct.device*, %struct.device** %device, align 8, !dbg !3547
  store %struct.device* %6, %struct.device** %dev, align 8, !dbg !3545
  %7 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3548
  call void @put_device(%struct.device* %7) #8, !dbg !3549
  ret void, !dbg !3550
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @add_probe_files(%struct.bus_type* %bus) #0 !dbg !3551 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  %retval1 = alloca i32, align 4
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !3552, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !3554, metadata !DIExpression()), !dbg !3555
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3556
  %call = call i32 @bus_create_file(%struct.bus_type* %0, %struct.bus_attribute* @bus_attr_drivers_probe) #8, !dbg !3557
  store i32 %call, i32* %retval1, align 4, !dbg !3558
  %1 = load i32, i32* %retval1, align 4, !dbg !3559
  %tobool = icmp ne i32 %1, 0, !dbg !3559
  br i1 %tobool, label %if.then, label %if.end, !dbg !3561

if.then:                                          ; preds = %entry
  br label %out, !dbg !3562

if.end:                                           ; preds = %entry
  %2 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3563
  %call2 = call i32 @bus_create_file(%struct.bus_type* %2, %struct.bus_attribute* @bus_attr_drivers_autoprobe) #8, !dbg !3564
  store i32 %call2, i32* %retval1, align 4, !dbg !3565
  %3 = load i32, i32* %retval1, align 4, !dbg !3566
  %tobool3 = icmp ne i32 %3, 0, !dbg !3566
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3568

if.then4:                                         ; preds = %if.end
  %4 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3569
  call void @bus_remove_file(%struct.bus_type* %4, %struct.bus_attribute* @bus_attr_drivers_probe) #8, !dbg !3570
  br label %if.end5, !dbg !3570

if.end5:                                          ; preds = %if.then4, %if.end
  br label %out, !dbg !3566

out:                                              ; preds = %if.end5, %if.then
  call void @llvm.dbg.label(metadata !3571), !dbg !3572
  %5 = load i32, i32* %retval1, align 4, !dbg !3573
  ret i32 %5, !dbg !3574
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bus_add_groups(%struct.bus_type* %bus, %struct.attribute_group** %groups) #0 !dbg !3575 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  %groups.addr = alloca %struct.attribute_group**, align 8
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !3578, metadata !DIExpression()), !dbg !3579
  store %struct.attribute_group** %groups, %struct.attribute_group*** %groups.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_group*** %groups.addr, metadata !3580, metadata !DIExpression()), !dbg !3581
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3582
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i32 0, i32 20, !dbg !3583
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !3583
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i32 0, i32 0, !dbg !3584
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %subsys, i32 0, i32 2, !dbg !3585
  %2 = load %struct.attribute_group**, %struct.attribute_group*** %groups.addr, align 8, !dbg !3586
  %call = call i32 @sysfs_create_groups(%struct.kobject* %kobj, %struct.attribute_group** %2) #8, !dbg !3587
  ret i32 %call, !dbg !3588
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @remove_probe_files(%struct.bus_type* %bus) #0 !dbg !3589 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !3590, metadata !DIExpression()), !dbg !3591
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3592
  call void @bus_remove_file(%struct.bus_type* %0, %struct.bus_attribute* @bus_attr_drivers_autoprobe) #8, !dbg !3593
  %1 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3594
  call void @bus_remove_file(%struct.bus_type* %1, %struct.bus_attribute* @bus_attr_drivers_probe) #8, !dbg !3595
  ret void, !dbg !3596
}

; Function Attrs: noredzone
declare dso_local void @kset_unregister(%struct.kset*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @bus_unregister(%struct.bus_type* %bus) #0 !dbg !3597 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  %tmp = alloca i32, align 4
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !3598, metadata !DIExpression()), !dbg !3599
  store i32 0, i32* %tmp, align 4, !dbg !3600
  %0 = load i32, i32* %tmp, align 4, !dbg !3603
  %1 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3604
  %dev_root = getelementptr inbounds %struct.bus_type, %struct.bus_type* %1, i32 0, i32 2, !dbg !3606
  %2 = load %struct.device*, %struct.device** %dev_root, align 8, !dbg !3606
  %tobool = icmp ne %struct.device* %2, null, !dbg !3604
  br i1 %tobool, label %if.then, label %if.end, !dbg !3607

if.then:                                          ; preds = %entry
  %3 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3608
  %dev_root1 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %3, i32 0, i32 2, !dbg !3609
  %4 = load %struct.device*, %struct.device** %dev_root1, align 8, !dbg !3609
  call void @device_unregister(%struct.device* %4) #8, !dbg !3610
  br label %if.end, !dbg !3610

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3611
  %6 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3612
  %bus_groups = getelementptr inbounds %struct.bus_type, %struct.bus_type* %6, i32 0, i32 3, !dbg !3613
  %7 = load %struct.attribute_group**, %struct.attribute_group*** %bus_groups, align 8, !dbg !3613
  call void @bus_remove_groups(%struct.bus_type* %5, %struct.attribute_group** %7) #8, !dbg !3614
  %8 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3615
  call void @remove_probe_files(%struct.bus_type* %8) #8, !dbg !3616
  %9 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3617
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %9, i32 0, i32 20, !dbg !3618
  %10 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !3618
  %drivers_kset = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %10, i32 0, i32 4, !dbg !3619
  %11 = load %struct.kset*, %struct.kset** %drivers_kset, align 8, !dbg !3619
  call void @kset_unregister(%struct.kset* %11) #8, !dbg !3620
  %12 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3621
  %p2 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %12, i32 0, i32 20, !dbg !3622
  %13 = load %struct.subsys_private*, %struct.subsys_private** %p2, align 8, !dbg !3622
  %devices_kset = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %13, i32 0, i32 1, !dbg !3623
  %14 = load %struct.kset*, %struct.kset** %devices_kset, align 8, !dbg !3623
  call void @kset_unregister(%struct.kset* %14) #8, !dbg !3624
  %15 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3625
  call void @bus_remove_file(%struct.bus_type* %15, %struct.bus_attribute* @bus_attr_uevent) #8, !dbg !3626
  %16 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3627
  %p3 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %16, i32 0, i32 20, !dbg !3628
  %17 = load %struct.subsys_private*, %struct.subsys_private** %p3, align 8, !dbg !3628
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %17, i32 0, i32 0, !dbg !3629
  call void @kset_unregister(%struct.kset* %subsys) #8, !dbg !3630
  ret void, !dbg !3631
}

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bus_remove_groups(%struct.bus_type* %bus, %struct.attribute_group** %groups) #0 !dbg !3632 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  %groups.addr = alloca %struct.attribute_group**, align 8
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !3635, metadata !DIExpression()), !dbg !3636
  store %struct.attribute_group** %groups, %struct.attribute_group*** %groups.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_group*** %groups.addr, metadata !3637, metadata !DIExpression()), !dbg !3638
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3639
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i32 0, i32 20, !dbg !3640
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !3640
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i32 0, i32 0, !dbg !3641
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %subsys, i32 0, i32 2, !dbg !3642
  %2 = load %struct.attribute_group**, %struct.attribute_group*** %groups.addr, align 8, !dbg !3643
  call void @sysfs_remove_groups(%struct.kobject* %kobj, %struct.attribute_group** %2) #8, !dbg !3644
  ret void, !dbg !3645
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @bus_register_notifier(%struct.bus_type* %bus, %struct.notifier_block* %nb) #0 !dbg !3646 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  %nb.addr = alloca %struct.notifier_block*, align 8
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !3649, metadata !DIExpression()), !dbg !3650
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !3651, metadata !DIExpression()), !dbg !3652
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3653
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i32 0, i32 20, !dbg !3654
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !3654
  %bus_notifier = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i32 0, i32 7, !dbg !3655
  %2 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !3656
  %call = call i32 @blocking_notifier_chain_register(%struct.blocking_notifier_head* %bus_notifier, %struct.notifier_block* %2) #8, !dbg !3657
  ret i32 %call, !dbg !3658
}

; Function Attrs: noredzone
declare dso_local i32 @blocking_notifier_chain_register(%struct.blocking_notifier_head*, %struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @bus_unregister_notifier(%struct.bus_type* %bus, %struct.notifier_block* %nb) #0 !dbg !3659 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  %nb.addr = alloca %struct.notifier_block*, align 8
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !3660, metadata !DIExpression()), !dbg !3661
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !3662, metadata !DIExpression()), !dbg !3663
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3664
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i32 0, i32 20, !dbg !3665
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !3665
  %bus_notifier = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i32 0, i32 7, !dbg !3666
  %2 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !3667
  %call = call i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head* %bus_notifier, %struct.notifier_block* %2) #8, !dbg !3668
  ret i32 %call, !dbg !3669
}

; Function Attrs: noredzone
declare dso_local i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head*, %struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.kset* @bus_get_kset(%struct.bus_type* %bus) #0 !dbg !3670 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !3673, metadata !DIExpression()), !dbg !3674
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3675
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i32 0, i32 20, !dbg !3676
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !3676
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i32 0, i32 0, !dbg !3677
  ret %struct.kset* %subsys, !dbg !3678
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.klist* @bus_get_device_klist(%struct.bus_type* %bus) #0 !dbg !3679 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !3682, metadata !DIExpression()), !dbg !3683
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3684
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i32 0, i32 20, !dbg !3685
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !3685
  %klist_devices = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i32 0, i32 5, !dbg !3686
  ret %struct.klist* %klist_devices, !dbg !3687
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @bus_sort_breadthfirst(%struct.bus_type* %bus, i32 (%struct.device*, %struct.device*)* %compare) #0 !dbg !3688 {
entry:
  %lock.addr.i25 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i25, metadata !3694, metadata !DIExpression()), !dbg !3700
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3702, metadata !DIExpression()), !dbg !3704
  %bus.addr = alloca %struct.bus_type*, align 8
  %compare.addr = alloca i32 (%struct.device*, %struct.device*)*, align 8
  %sorted_devices = alloca %struct.list_head, align 8
  %n = alloca %struct.klist_node*, align 8
  %tmp = alloca %struct.klist_node*, align 8
  %dev_prv = alloca %struct.device_private*, align 8
  %dev = alloca %struct.device*, align 8
  %device_klist = alloca %struct.klist*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.klist_node*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp7 = alloca %struct.klist_node*, align 8
  %__mptr11 = alloca i8*, align 8
  %tmp14 = alloca %struct.device_private*, align 8
  %__mptr16 = alloca i8*, align 8
  %tmp21 = alloca %struct.klist_node*, align 8
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !3706, metadata !DIExpression()), !dbg !3707
  store i32 (%struct.device*, %struct.device*)* %compare, i32 (%struct.device*, %struct.device*)** %compare.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.device*, %struct.device*)** %compare.addr, metadata !3708, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.declare(metadata %struct.list_head* %sorted_devices, metadata !3710, metadata !DIExpression()), !dbg !3711
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %sorted_devices, i32 0, i32 0, !dbg !3711
  store %struct.list_head* %sorted_devices, %struct.list_head** %next, align 8, !dbg !3711
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %sorted_devices, i32 0, i32 1, !dbg !3711
  store %struct.list_head* %sorted_devices, %struct.list_head** %prev, align 8, !dbg !3711
  call void @llvm.dbg.declare(metadata %struct.klist_node** %n, metadata !3712, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.declare(metadata %struct.klist_node** %tmp, metadata !3714, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.declare(metadata %struct.device_private** %dev_prv, metadata !3716, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !3718, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.declare(metadata %struct.klist** %device_klist, metadata !3720, metadata !DIExpression()), !dbg !3721
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3722
  %call = call %struct.klist* @bus_get_device_klist(%struct.bus_type* %0) #8, !dbg !3723
  store %struct.klist* %call, %struct.klist** %device_klist, align 8, !dbg !3724
  %1 = load %struct.klist*, %struct.klist** %device_klist, align 8, !dbg !3725
  %k_lock = getelementptr inbounds %struct.klist, %struct.klist* %1, i32 0, i32 0, !dbg !3726
  store %struct.spinlock* %k_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !3727, !srcloc !3729
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3730
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !3730
  %rlock.i = bitcast %union.anon* %3 to %struct.raw_spinlock*, !dbg !3730
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3732, metadata !DIExpression()), !dbg !3735
  %4 = load %struct.klist*, %struct.klist** %device_klist, align 8, !dbg !3735
  %k_list = getelementptr inbounds %struct.klist, %struct.klist* %4, i32 0, i32 1, !dbg !3735
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %k_list, i32 0, i32 0, !dbg !3735
  %5 = load %struct.list_head*, %struct.list_head** %next1, align 8, !dbg !3735
  %6 = bitcast %struct.list_head* %5 to i8*, !dbg !3735
  store i8* %6, i8** %__mptr, align 8, !dbg !3735
  br label %do.body, !dbg !3735

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3736

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !3735
  %add.ptr = getelementptr i8, i8* %7, i64 -8, !dbg !3735
  %8 = bitcast i8* %add.ptr to %struct.klist_node*, !dbg !3735
  store %struct.klist_node* %8, %struct.klist_node** %tmp2, align 8, !dbg !3736
  %9 = load %struct.klist_node*, %struct.klist_node** %tmp2, align 8, !dbg !3735
  store %struct.klist_node* %9, %struct.klist_node** %n, align 8, !dbg !3738
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !3739, metadata !DIExpression()), !dbg !3741
  %10 = load %struct.klist_node*, %struct.klist_node** %n, align 8, !dbg !3741
  %n_node = getelementptr inbounds %struct.klist_node, %struct.klist_node* %10, i32 0, i32 1, !dbg !3741
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %n_node, i32 0, i32 0, !dbg !3741
  %11 = load %struct.list_head*, %struct.list_head** %next4, align 8, !dbg !3741
  %12 = bitcast %struct.list_head* %11 to i8*, !dbg !3741
  store i8* %12, i8** %__mptr3, align 8, !dbg !3741
  br label %do.body5, !dbg !3741

do.body5:                                         ; preds = %do.end
  br label %do.end6, !dbg !3742

do.end6:                                          ; preds = %do.body5
  %13 = load i8*, i8** %__mptr3, align 8, !dbg !3741
  %add.ptr8 = getelementptr i8, i8* %13, i64 -8, !dbg !3741
  %14 = bitcast i8* %add.ptr8 to %struct.klist_node*, !dbg !3741
  store %struct.klist_node* %14, %struct.klist_node** %tmp7, align 8, !dbg !3742
  %15 = load %struct.klist_node*, %struct.klist_node** %tmp7, align 8, !dbg !3741
  store %struct.klist_node* %15, %struct.klist_node** %tmp, align 8, !dbg !3738
  br label %for.cond, !dbg !3738

for.cond:                                         ; preds = %do.end20, %do.end6
  %16 = load %struct.klist_node*, %struct.klist_node** %n, align 8, !dbg !3744
  %n_node9 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %16, i32 0, i32 1, !dbg !3744
  %17 = load %struct.klist*, %struct.klist** %device_klist, align 8, !dbg !3744
  %k_list10 = getelementptr inbounds %struct.klist, %struct.klist* %17, i32 0, i32 1, !dbg !3744
  %cmp = icmp eq %struct.list_head* %n_node9, %k_list10, !dbg !3744
  %lnot = xor i1 %cmp, true, !dbg !3744
  br i1 %lnot, label %for.body, label %for.end, !dbg !3738

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr11, metadata !3746, metadata !DIExpression()), !dbg !3749
  %18 = load %struct.klist_node*, %struct.klist_node** %n, align 8, !dbg !3749
  %19 = bitcast %struct.klist_node* %18 to i8*, !dbg !3749
  store i8* %19, i8** %__mptr11, align 8, !dbg !3749
  br label %do.body12, !dbg !3749

do.body12:                                        ; preds = %for.body
  br label %do.end13, !dbg !3750

do.end13:                                         ; preds = %do.body12
  %20 = load i8*, i8** %__mptr11, align 8, !dbg !3749
  %add.ptr15 = getelementptr i8, i8* %20, i64 -96, !dbg !3749
  %21 = bitcast i8* %add.ptr15 to %struct.device_private*, !dbg !3749
  store %struct.device_private* %21, %struct.device_private** %tmp14, align 8, !dbg !3750
  %22 = load %struct.device_private*, %struct.device_private** %tmp14, align 8, !dbg !3749
  store %struct.device_private* %22, %struct.device_private** %dev_prv, align 8, !dbg !3752
  %23 = load %struct.device_private*, %struct.device_private** %dev_prv, align 8, !dbg !3753
  %device = getelementptr inbounds %struct.device_private, %struct.device_private* %23, i32 0, i32 8, !dbg !3754
  %24 = load %struct.device*, %struct.device** %device, align 8, !dbg !3754
  store %struct.device* %24, %struct.device** %dev, align 8, !dbg !3755
  %25 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3756
  %26 = load i32 (%struct.device*, %struct.device*)*, i32 (%struct.device*, %struct.device*)** %compare.addr, align 8, !dbg !3757
  call void @device_insertion_sort_klist(%struct.device* %25, %struct.list_head* %sorted_devices, i32 (%struct.device*, %struct.device*)* %26) #8, !dbg !3758
  br label %for.inc, !dbg !3759

for.inc:                                          ; preds = %do.end13
  %27 = load %struct.klist_node*, %struct.klist_node** %tmp, align 8, !dbg !3744
  store %struct.klist_node* %27, %struct.klist_node** %n, align 8, !dbg !3744
  call void @llvm.dbg.declare(metadata i8** %__mptr16, metadata !3760, metadata !DIExpression()), !dbg !3762
  %28 = load %struct.klist_node*, %struct.klist_node** %tmp, align 8, !dbg !3762
  %n_node17 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %28, i32 0, i32 1, !dbg !3762
  %next18 = getelementptr inbounds %struct.list_head, %struct.list_head* %n_node17, i32 0, i32 0, !dbg !3762
  %29 = load %struct.list_head*, %struct.list_head** %next18, align 8, !dbg !3762
  %30 = bitcast %struct.list_head* %29 to i8*, !dbg !3762
  store i8* %30, i8** %__mptr16, align 8, !dbg !3762
  br label %do.body19, !dbg !3762

do.body19:                                        ; preds = %for.inc
  br label %do.end20, !dbg !3763

do.end20:                                         ; preds = %do.body19
  %31 = load i8*, i8** %__mptr16, align 8, !dbg !3762
  %add.ptr22 = getelementptr i8, i8* %31, i64 -8, !dbg !3762
  %32 = bitcast i8* %add.ptr22 to %struct.klist_node*, !dbg !3762
  store %struct.klist_node* %32, %struct.klist_node** %tmp21, align 8, !dbg !3763
  %33 = load %struct.klist_node*, %struct.klist_node** %tmp21, align 8, !dbg !3762
  store %struct.klist_node* %33, %struct.klist_node** %tmp, align 8, !dbg !3744
  br label %for.cond, !dbg !3744, !llvm.loop !3765

for.end:                                          ; preds = %for.cond
  %34 = load %struct.klist*, %struct.klist** %device_klist, align 8, !dbg !3767
  %k_list23 = getelementptr inbounds %struct.klist, %struct.klist* %34, i32 0, i32 1, !dbg !3768
  call void @list_splice(%struct.list_head* %sorted_devices, %struct.list_head* %k_list23) #8, !dbg !3769
  %35 = load %struct.klist*, %struct.klist** %device_klist, align 8, !dbg !3770
  %k_lock24 = getelementptr inbounds %struct.klist, %struct.klist* %35, i32 0, i32 0, !dbg !3771
  store %struct.spinlock* %k_lock24, %struct.spinlock** %lock.addr.i25, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !3772, !srcloc !3774
  %36 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i25, align 8, !dbg !3775
  %37 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %36, i32 0, i32 0, !dbg !3775
  %rlock.i26 = bitcast %union.anon* %37 to %struct.raw_spinlock*, !dbg !3775
  ret void, !dbg !3777
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_insertion_sort_klist(%struct.device* %a, %struct.list_head* %list, i32 (%struct.device*, %struct.device*)* %compare) #0 !dbg !3778 {
entry:
  %a.addr = alloca %struct.device*, align 8
  %list.addr = alloca %struct.list_head*, align 8
  %compare.addr = alloca i32 (%struct.device*, %struct.device*)*, align 8
  %n = alloca %struct.klist_node*, align 8
  %dev_prv = alloca %struct.device_private*, align 8
  %b = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.klist_node*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.device_private*, align 8
  %__mptr11 = alloca i8*, align 8
  %tmp16 = alloca %struct.klist_node*, align 8
  store %struct.device* %a, %struct.device** %a.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %a.addr, metadata !3781, metadata !DIExpression()), !dbg !3782
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3783, metadata !DIExpression()), !dbg !3784
  store i32 (%struct.device*, %struct.device*)* %compare, i32 (%struct.device*, %struct.device*)** %compare.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.device*, %struct.device*)** %compare.addr, metadata !3785, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.declare(metadata %struct.klist_node** %n, metadata !3787, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.declare(metadata %struct.device_private** %dev_prv, metadata !3789, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.declare(metadata %struct.device** %b, metadata !3791, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3793, metadata !DIExpression()), !dbg !3796
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3796
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !3796
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3796
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !3796
  store i8* %2, i8** %__mptr, align 8, !dbg !3796
  br label %do.body, !dbg !3796

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3797

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3796
  %add.ptr = getelementptr i8, i8* %3, i64 -8, !dbg !3796
  %4 = bitcast i8* %add.ptr to %struct.klist_node*, !dbg !3796
  store %struct.klist_node* %4, %struct.klist_node** %tmp, align 8, !dbg !3797
  %5 = load %struct.klist_node*, %struct.klist_node** %tmp, align 8, !dbg !3796
  store %struct.klist_node* %5, %struct.klist_node** %n, align 8, !dbg !3799
  br label %for.cond, !dbg !3799

for.cond:                                         ; preds = %do.end15, %do.end
  %6 = load %struct.klist_node*, %struct.klist_node** %n, align 8, !dbg !3800
  %n_node = getelementptr inbounds %struct.klist_node, %struct.klist_node* %6, i32 0, i32 1, !dbg !3800
  %7 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3800
  %cmp = icmp eq %struct.list_head* %n_node, %7, !dbg !3800
  %lnot = xor i1 %cmp, true, !dbg !3800
  br i1 %lnot, label %for.body, label %for.end, !dbg !3799

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !3802, metadata !DIExpression()), !dbg !3805
  %8 = load %struct.klist_node*, %struct.klist_node** %n, align 8, !dbg !3805
  %9 = bitcast %struct.klist_node* %8 to i8*, !dbg !3805
  store i8* %9, i8** %__mptr1, align 8, !dbg !3805
  br label %do.body2, !dbg !3805

do.body2:                                         ; preds = %for.body
  br label %do.end3, !dbg !3806

do.end3:                                          ; preds = %do.body2
  %10 = load i8*, i8** %__mptr1, align 8, !dbg !3805
  %add.ptr5 = getelementptr i8, i8* %10, i64 -96, !dbg !3805
  %11 = bitcast i8* %add.ptr5 to %struct.device_private*, !dbg !3805
  store %struct.device_private* %11, %struct.device_private** %tmp4, align 8, !dbg !3806
  %12 = load %struct.device_private*, %struct.device_private** %tmp4, align 8, !dbg !3805
  store %struct.device_private* %12, %struct.device_private** %dev_prv, align 8, !dbg !3808
  %13 = load %struct.device_private*, %struct.device_private** %dev_prv, align 8, !dbg !3809
  %device = getelementptr inbounds %struct.device_private, %struct.device_private* %13, i32 0, i32 8, !dbg !3810
  %14 = load %struct.device*, %struct.device** %device, align 8, !dbg !3810
  store %struct.device* %14, %struct.device** %b, align 8, !dbg !3811
  %15 = load i32 (%struct.device*, %struct.device*)*, i32 (%struct.device*, %struct.device*)** %compare.addr, align 8, !dbg !3812
  %16 = load %struct.device*, %struct.device** %a.addr, align 8, !dbg !3814
  %17 = load %struct.device*, %struct.device** %b, align 8, !dbg !3815
  %call = call i32 %15(%struct.device* %16, %struct.device* %17) #8, !dbg !3812
  %cmp6 = icmp sle i32 %call, 0, !dbg !3816
  br i1 %cmp6, label %if.then, label %if.end, !dbg !3817

if.then:                                          ; preds = %do.end3
  %18 = load %struct.device*, %struct.device** %a.addr, align 8, !dbg !3818
  %p = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 2, !dbg !3820
  %19 = load %struct.device_private*, %struct.device_private** %p, align 8, !dbg !3820
  %knode_bus = getelementptr inbounds %struct.device_private, %struct.device_private* %19, i32 0, i32 3, !dbg !3821
  %n_node7 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %knode_bus, i32 0, i32 1, !dbg !3822
  %20 = load %struct.device*, %struct.device** %b, align 8, !dbg !3823
  %p8 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 2, !dbg !3824
  %21 = load %struct.device_private*, %struct.device_private** %p8, align 8, !dbg !3824
  %knode_bus9 = getelementptr inbounds %struct.device_private, %struct.device_private* %21, i32 0, i32 3, !dbg !3825
  %n_node10 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %knode_bus9, i32 0, i32 1, !dbg !3826
  call void @list_move_tail(%struct.list_head* %n_node7, %struct.list_head* %n_node10) #8, !dbg !3827
  br label %return, !dbg !3828

if.end:                                           ; preds = %do.end3
  br label %for.inc, !dbg !3829

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr11, metadata !3830, metadata !DIExpression()), !dbg !3832
  %22 = load %struct.klist_node*, %struct.klist_node** %n, align 8, !dbg !3832
  %n_node12 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %22, i32 0, i32 1, !dbg !3832
  %next13 = getelementptr inbounds %struct.list_head, %struct.list_head* %n_node12, i32 0, i32 0, !dbg !3832
  %23 = load %struct.list_head*, %struct.list_head** %next13, align 8, !dbg !3832
  %24 = bitcast %struct.list_head* %23 to i8*, !dbg !3832
  store i8* %24, i8** %__mptr11, align 8, !dbg !3832
  br label %do.body14, !dbg !3832

do.body14:                                        ; preds = %for.inc
  br label %do.end15, !dbg !3833

do.end15:                                         ; preds = %do.body14
  %25 = load i8*, i8** %__mptr11, align 8, !dbg !3832
  %add.ptr17 = getelementptr i8, i8* %25, i64 -8, !dbg !3832
  %26 = bitcast i8* %add.ptr17 to %struct.klist_node*, !dbg !3832
  store %struct.klist_node* %26, %struct.klist_node** %tmp16, align 8, !dbg !3833
  %27 = load %struct.klist_node*, %struct.klist_node** %tmp16, align 8, !dbg !3832
  store %struct.klist_node* %27, %struct.klist_node** %n, align 8, !dbg !3800
  br label %for.cond, !dbg !3800, !llvm.loop !3835

for.end:                                          ; preds = %for.cond
  %28 = load %struct.device*, %struct.device** %a.addr, align 8, !dbg !3837
  %p18 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 2, !dbg !3838
  %29 = load %struct.device_private*, %struct.device_private** %p18, align 8, !dbg !3838
  %knode_bus19 = getelementptr inbounds %struct.device_private, %struct.device_private* %29, i32 0, i32 3, !dbg !3839
  %n_node20 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %knode_bus19, i32 0, i32 1, !dbg !3840
  %30 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3841
  call void @list_move_tail(%struct.list_head* %n_node20, %struct.list_head* %30) #8, !dbg !3842
  br label %return, !dbg !3843

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !3843
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_splice(%struct.list_head* %list, %struct.list_head* %head) #0 !dbg !3844 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3849, metadata !DIExpression()), !dbg !3850
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !3851, metadata !DIExpression()), !dbg !3852
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3853
  %call = call i32 @list_empty(%struct.list_head* %0) #8, !dbg !3855
  %tobool = icmp ne i32 %call, 0, !dbg !3855
  br i1 %tobool, label %if.end, label %if.then, !dbg !3856

if.then:                                          ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3857
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3858
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3859
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3860
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3860
  call void @__list_splice(%struct.list_head* %1, %struct.list_head* %2, %struct.list_head* %4) #8, !dbg !3861
  br label %if.end, !dbg !3861

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3862
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @subsys_dev_iter_init(%struct.subsys_dev_iter* %iter, %struct.bus_type* %subsys, %struct.device* %start, %struct.device_type* %type) #0 !dbg !3863 {
entry:
  %iter.addr = alloca %struct.subsys_dev_iter*, align 8
  %subsys.addr = alloca %struct.bus_type*, align 8
  %start.addr = alloca %struct.device*, align 8
  %type.addr = alloca %struct.device_type*, align 8
  %start_knode = alloca %struct.klist_node*, align 8
  store %struct.subsys_dev_iter* %iter, %struct.subsys_dev_iter** %iter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.subsys_dev_iter** %iter.addr, metadata !3871, metadata !DIExpression()), !dbg !3872
  store %struct.bus_type* %subsys, %struct.bus_type** %subsys.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %subsys.addr, metadata !3873, metadata !DIExpression()), !dbg !3874
  store %struct.device* %start, %struct.device** %start.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %start.addr, metadata !3875, metadata !DIExpression()), !dbg !3876
  store %struct.device_type* %type, %struct.device_type** %type.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_type** %type.addr, metadata !3877, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.declare(metadata %struct.klist_node** %start_knode, metadata !3879, metadata !DIExpression()), !dbg !3880
  store %struct.klist_node* null, %struct.klist_node** %start_knode, align 8, !dbg !3880
  %0 = load %struct.device*, %struct.device** %start.addr, align 8, !dbg !3881
  %tobool = icmp ne %struct.device* %0, null, !dbg !3881
  br i1 %tobool, label %if.then, label %if.end, !dbg !3883

if.then:                                          ; preds = %entry
  %1 = load %struct.device*, %struct.device** %start.addr, align 8, !dbg !3884
  %p = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 2, !dbg !3885
  %2 = load %struct.device_private*, %struct.device_private** %p, align 8, !dbg !3885
  %knode_bus = getelementptr inbounds %struct.device_private, %struct.device_private* %2, i32 0, i32 3, !dbg !3886
  store %struct.klist_node* %knode_bus, %struct.klist_node** %start_knode, align 8, !dbg !3887
  br label %if.end, !dbg !3888

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.bus_type*, %struct.bus_type** %subsys.addr, align 8, !dbg !3889
  %p1 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %3, i32 0, i32 20, !dbg !3890
  %4 = load %struct.subsys_private*, %struct.subsys_private** %p1, align 8, !dbg !3890
  %klist_devices = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %4, i32 0, i32 5, !dbg !3891
  %5 = load %struct.subsys_dev_iter*, %struct.subsys_dev_iter** %iter.addr, align 8, !dbg !3892
  %ki = getelementptr inbounds %struct.subsys_dev_iter, %struct.subsys_dev_iter* %5, i32 0, i32 0, !dbg !3893
  %6 = load %struct.klist_node*, %struct.klist_node** %start_knode, align 8, !dbg !3894
  call void @klist_iter_init_node(%struct.klist* %klist_devices, %struct.klist_iter* %ki, %struct.klist_node* %6) #8, !dbg !3895
  %7 = load %struct.device_type*, %struct.device_type** %type.addr, align 8, !dbg !3896
  %8 = load %struct.subsys_dev_iter*, %struct.subsys_dev_iter** %iter.addr, align 8, !dbg !3897
  %type2 = getelementptr inbounds %struct.subsys_dev_iter, %struct.subsys_dev_iter* %8, i32 0, i32 1, !dbg !3898
  store %struct.device_type* %7, %struct.device_type** %type2, align 8, !dbg !3899
  ret void, !dbg !3900
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device* @subsys_dev_iter_next(%struct.subsys_dev_iter* %iter) #0 !dbg !3901 {
entry:
  %retval = alloca %struct.device*, align 8
  %iter.addr = alloca %struct.subsys_dev_iter*, align 8
  %knode = alloca %struct.klist_node*, align 8
  %dev = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.device_private*, align 8
  store %struct.subsys_dev_iter* %iter, %struct.subsys_dev_iter** %iter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.subsys_dev_iter** %iter.addr, metadata !3904, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.declare(metadata %struct.klist_node** %knode, metadata !3906, metadata !DIExpression()), !dbg !3907
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !3908, metadata !DIExpression()), !dbg !3909
  br label %for.cond, !dbg !3910

for.cond:                                         ; preds = %if.end5, %entry
  %0 = load %struct.subsys_dev_iter*, %struct.subsys_dev_iter** %iter.addr, align 8, !dbg !3911
  %ki = getelementptr inbounds %struct.subsys_dev_iter, %struct.subsys_dev_iter* %0, i32 0, i32 0, !dbg !3915
  %call = call %struct.klist_node* @klist_next(%struct.klist_iter* %ki) #8, !dbg !3916
  store %struct.klist_node* %call, %struct.klist_node** %knode, align 8, !dbg !3917
  %1 = load %struct.klist_node*, %struct.klist_node** %knode, align 8, !dbg !3918
  %tobool = icmp ne %struct.klist_node* %1, null, !dbg !3918
  br i1 %tobool, label %if.end, label %if.then, !dbg !3920

if.then:                                          ; preds = %for.cond
  store %struct.device* null, %struct.device** %retval, align 8, !dbg !3921
  br label %return, !dbg !3921

if.end:                                           ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3922, metadata !DIExpression()), !dbg !3924
  %2 = load %struct.klist_node*, %struct.klist_node** %knode, align 8, !dbg !3924
  %3 = bitcast %struct.klist_node* %2 to i8*, !dbg !3924
  store i8* %3, i8** %__mptr, align 8, !dbg !3924
  br label %do.body, !dbg !3924

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !3925

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3924
  %add.ptr = getelementptr i8, i8* %4, i64 -96, !dbg !3924
  %5 = bitcast i8* %add.ptr to %struct.device_private*, !dbg !3924
  store %struct.device_private* %5, %struct.device_private** %tmp, align 8, !dbg !3925
  %6 = load %struct.device_private*, %struct.device_private** %tmp, align 8, !dbg !3924
  %device = getelementptr inbounds %struct.device_private, %struct.device_private* %6, i32 0, i32 8, !dbg !3927
  %7 = load %struct.device*, %struct.device** %device, align 8, !dbg !3927
  store %struct.device* %7, %struct.device** %dev, align 8, !dbg !3928
  %8 = load %struct.subsys_dev_iter*, %struct.subsys_dev_iter** %iter.addr, align 8, !dbg !3929
  %type = getelementptr inbounds %struct.subsys_dev_iter, %struct.subsys_dev_iter* %8, i32 0, i32 1, !dbg !3931
  %9 = load %struct.device_type*, %struct.device_type** %type, align 8, !dbg !3931
  %tobool1 = icmp ne %struct.device_type* %9, null, !dbg !3929
  br i1 %tobool1, label %lor.lhs.false, label %if.then4, !dbg !3932

lor.lhs.false:                                    ; preds = %do.end
  %10 = load %struct.subsys_dev_iter*, %struct.subsys_dev_iter** %iter.addr, align 8, !dbg !3933
  %type2 = getelementptr inbounds %struct.subsys_dev_iter, %struct.subsys_dev_iter* %10, i32 0, i32 1, !dbg !3934
  %11 = load %struct.device_type*, %struct.device_type** %type2, align 8, !dbg !3934
  %12 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3935
  %type3 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 4, !dbg !3936
  %13 = load %struct.device_type*, %struct.device_type** %type3, align 8, !dbg !3936
  %cmp = icmp eq %struct.device_type* %11, %13, !dbg !3937
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !3938

if.then4:                                         ; preds = %lor.lhs.false, %do.end
  %14 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3939
  store %struct.device* %14, %struct.device** %retval, align 8, !dbg !3940
  br label %return, !dbg !3940

if.end5:                                          ; preds = %lor.lhs.false
  br label %for.cond, !dbg !3941, !llvm.loop !3942

return:                                           ; preds = %if.then4, %if.then
  %15 = load %struct.device*, %struct.device** %retval, align 8, !dbg !3945
  ret %struct.device* %15, !dbg !3945
}

; Function Attrs: noredzone
declare dso_local %struct.klist_node* @klist_next(%struct.klist_iter*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @subsys_dev_iter_exit(%struct.subsys_dev_iter* %iter) #0 !dbg !3946 {
entry:
  %iter.addr = alloca %struct.subsys_dev_iter*, align 8
  store %struct.subsys_dev_iter* %iter, %struct.subsys_dev_iter** %iter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.subsys_dev_iter** %iter.addr, metadata !3949, metadata !DIExpression()), !dbg !3950
  %0 = load %struct.subsys_dev_iter*, %struct.subsys_dev_iter** %iter.addr, align 8, !dbg !3951
  %ki = getelementptr inbounds %struct.subsys_dev_iter, %struct.subsys_dev_iter* %0, i32 0, i32 0, !dbg !3952
  call void @klist_iter_exit(%struct.klist_iter* %ki) #8, !dbg !3953
  ret void, !dbg !3954
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @subsys_interface_register(%struct.subsys_interface* %sif) #0 !dbg !3955 {
entry:
  %retval = alloca i32, align 4
  %sif.addr = alloca %struct.subsys_interface*, align 8
  %subsys = alloca %struct.bus_type*, align 8
  %iter = alloca %struct.subsys_dev_iter, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.subsys_interface* %sif, %struct.subsys_interface** %sif.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.subsys_interface** %sif.addr, metadata !3958, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.declare(metadata %struct.bus_type** %subsys, metadata !3960, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.declare(metadata %struct.subsys_dev_iter* %iter, metadata !3962, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !3964, metadata !DIExpression()), !dbg !3965
  %0 = load %struct.subsys_interface*, %struct.subsys_interface** %sif.addr, align 8, !dbg !3966
  %tobool = icmp ne %struct.subsys_interface* %0, null, !dbg !3966
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3968

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.subsys_interface*, %struct.subsys_interface** %sif.addr, align 8, !dbg !3969
  %subsys1 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %1, i32 0, i32 1, !dbg !3970
  %2 = load %struct.bus_type*, %struct.bus_type** %subsys1, align 8, !dbg !3970
  %tobool2 = icmp ne %struct.bus_type* %2, null, !dbg !3969
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3971

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, i32* %retval, align 4, !dbg !3972
  br label %return, !dbg !3972

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.subsys_interface*, %struct.subsys_interface** %sif.addr, align 8, !dbg !3973
  %subsys3 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %3, i32 0, i32 1, !dbg !3974
  %4 = load %struct.bus_type*, %struct.bus_type** %subsys3, align 8, !dbg !3974
  %call = call %struct.bus_type* @bus_get(%struct.bus_type* %4) #8, !dbg !3975
  store %struct.bus_type* %call, %struct.bus_type** %subsys, align 8, !dbg !3976
  %5 = load %struct.bus_type*, %struct.bus_type** %subsys, align 8, !dbg !3977
  %tobool4 = icmp ne %struct.bus_type* %5, null, !dbg !3977
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !3979

if.then5:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !3980
  br label %return, !dbg !3980

if.end6:                                          ; preds = %if.end
  %6 = load %struct.bus_type*, %struct.bus_type** %subsys, align 8, !dbg !3981
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %6, i32 0, i32 20, !dbg !3982
  %7 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !3982
  %mutex = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %7, i32 0, i32 3, !dbg !3983
  call void @mutex_lock(%struct.mutex* %mutex) #8, !dbg !3984
  %8 = load %struct.subsys_interface*, %struct.subsys_interface** %sif.addr, align 8, !dbg !3985
  %node = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %8, i32 0, i32 2, !dbg !3986
  %9 = load %struct.bus_type*, %struct.bus_type** %subsys, align 8, !dbg !3987
  %p7 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %9, i32 0, i32 20, !dbg !3988
  %10 = load %struct.subsys_private*, %struct.subsys_private** %p7, align 8, !dbg !3988
  %interfaces = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %10, i32 0, i32 2, !dbg !3989
  call void @list_add_tail(%struct.list_head* %node, %struct.list_head* %interfaces) #8, !dbg !3990
  %11 = load %struct.subsys_interface*, %struct.subsys_interface** %sif.addr, align 8, !dbg !3991
  %add_dev = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %11, i32 0, i32 3, !dbg !3993
  %12 = load i32 (%struct.device*, %struct.subsys_interface*)*, i32 (%struct.device*, %struct.subsys_interface*)** %add_dev, align 8, !dbg !3993
  %tobool8 = icmp ne i32 (%struct.device*, %struct.subsys_interface*)* %12, null, !dbg !3991
  br i1 %tobool8, label %if.then9, label %if.end14, !dbg !3994

if.then9:                                         ; preds = %if.end6
  %13 = load %struct.bus_type*, %struct.bus_type** %subsys, align 8, !dbg !3995
  call void @subsys_dev_iter_init(%struct.subsys_dev_iter* %iter, %struct.bus_type* %13, %struct.device* null, %struct.device_type* null) #8, !dbg !3997
  br label %while.cond, !dbg !3998

while.cond:                                       ; preds = %while.body, %if.then9
  %call10 = call %struct.device* @subsys_dev_iter_next(%struct.subsys_dev_iter* %iter) #8, !dbg !3999
  store %struct.device* %call10, %struct.device** %dev, align 8, !dbg !4000
  %tobool11 = icmp ne %struct.device* %call10, null, !dbg !3998
  br i1 %tobool11, label %while.body, label %while.end, !dbg !3998

while.body:                                       ; preds = %while.cond
  %14 = load %struct.subsys_interface*, %struct.subsys_interface** %sif.addr, align 8, !dbg !4001
  %add_dev12 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %14, i32 0, i32 3, !dbg !4002
  %15 = load i32 (%struct.device*, %struct.subsys_interface*)*, i32 (%struct.device*, %struct.subsys_interface*)** %add_dev12, align 8, !dbg !4002
  %16 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4003
  %17 = load %struct.subsys_interface*, %struct.subsys_interface** %sif.addr, align 8, !dbg !4004
  %call13 = call i32 %15(%struct.device* %16, %struct.subsys_interface* %17) #8, !dbg !4001
  br label %while.cond, !dbg !3998, !llvm.loop !4005

while.end:                                        ; preds = %while.cond
  call void @subsys_dev_iter_exit(%struct.subsys_dev_iter* %iter) #8, !dbg !4007
  br label %if.end14, !dbg !4008

if.end14:                                         ; preds = %while.end, %if.end6
  %18 = load %struct.bus_type*, %struct.bus_type** %subsys, align 8, !dbg !4009
  %p15 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %18, i32 0, i32 20, !dbg !4010
  %19 = load %struct.subsys_private*, %struct.subsys_private** %p15, align 8, !dbg !4010
  %mutex16 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %19, i32 0, i32 3, !dbg !4011
  call void @mutex_unlock(%struct.mutex* %mutex16) #8, !dbg !4012
  store i32 0, i32* %retval, align 4, !dbg !4013
  br label %return, !dbg !4013

return:                                           ; preds = %if.end14, %if.then5, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !4014
  ret i32 %20, !dbg !4014
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4015 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4018, metadata !DIExpression()), !dbg !4019
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4020, metadata !DIExpression()), !dbg !4021
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4022
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4023
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4024
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4024
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4025
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #8, !dbg !4026
  ret void, !dbg !4027
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @subsys_interface_unregister(%struct.subsys_interface* %sif) #0 !dbg !4028 {
entry:
  %sif.addr = alloca %struct.subsys_interface*, align 8
  %subsys = alloca %struct.bus_type*, align 8
  %iter = alloca %struct.subsys_dev_iter, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.subsys_interface* %sif, %struct.subsys_interface** %sif.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.subsys_interface** %sif.addr, metadata !4031, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.declare(metadata %struct.bus_type** %subsys, metadata !4033, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.declare(metadata %struct.subsys_dev_iter* %iter, metadata !4035, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4037, metadata !DIExpression()), !dbg !4038
  %0 = load %struct.subsys_interface*, %struct.subsys_interface** %sif.addr, align 8, !dbg !4039
  %tobool = icmp ne %struct.subsys_interface* %0, null, !dbg !4039
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4041

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.subsys_interface*, %struct.subsys_interface** %sif.addr, align 8, !dbg !4042
  %subsys1 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %1, i32 0, i32 1, !dbg !4043
  %2 = load %struct.bus_type*, %struct.bus_type** %subsys1, align 8, !dbg !4043
  %tobool2 = icmp ne %struct.bus_type* %2, null, !dbg !4042
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4044

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !4045

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.subsys_interface*, %struct.subsys_interface** %sif.addr, align 8, !dbg !4046
  %subsys3 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %3, i32 0, i32 1, !dbg !4047
  %4 = load %struct.bus_type*, %struct.bus_type** %subsys3, align 8, !dbg !4047
  store %struct.bus_type* %4, %struct.bus_type** %subsys, align 8, !dbg !4048
  %5 = load %struct.bus_type*, %struct.bus_type** %subsys, align 8, !dbg !4049
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %5, i32 0, i32 20, !dbg !4050
  %6 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !4050
  %mutex = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %6, i32 0, i32 3, !dbg !4051
  call void @mutex_lock(%struct.mutex* %mutex) #8, !dbg !4052
  %7 = load %struct.subsys_interface*, %struct.subsys_interface** %sif.addr, align 8, !dbg !4053
  %node = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %7, i32 0, i32 2, !dbg !4054
  call void @list_del_init(%struct.list_head* %node) #8, !dbg !4055
  %8 = load %struct.subsys_interface*, %struct.subsys_interface** %sif.addr, align 8, !dbg !4056
  %remove_dev = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %8, i32 0, i32 4, !dbg !4058
  %9 = load void (%struct.device*, %struct.subsys_interface*)*, void (%struct.device*, %struct.subsys_interface*)** %remove_dev, align 8, !dbg !4058
  %tobool4 = icmp ne void (%struct.device*, %struct.subsys_interface*)* %9, null, !dbg !4056
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !4059

if.then5:                                         ; preds = %if.end
  %10 = load %struct.bus_type*, %struct.bus_type** %subsys, align 8, !dbg !4060
  call void @subsys_dev_iter_init(%struct.subsys_dev_iter* %iter, %struct.bus_type* %10, %struct.device* null, %struct.device_type* null) #8, !dbg !4062
  br label %while.cond, !dbg !4063

while.cond:                                       ; preds = %while.body, %if.then5
  %call = call %struct.device* @subsys_dev_iter_next(%struct.subsys_dev_iter* %iter) #8, !dbg !4064
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !4065
  %tobool6 = icmp ne %struct.device* %call, null, !dbg !4063
  br i1 %tobool6, label %while.body, label %while.end, !dbg !4063

while.body:                                       ; preds = %while.cond
  %11 = load %struct.subsys_interface*, %struct.subsys_interface** %sif.addr, align 8, !dbg !4066
  %remove_dev7 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %11, i32 0, i32 4, !dbg !4067
  %12 = load void (%struct.device*, %struct.subsys_interface*)*, void (%struct.device*, %struct.subsys_interface*)** %remove_dev7, align 8, !dbg !4067
  %13 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4068
  %14 = load %struct.subsys_interface*, %struct.subsys_interface** %sif.addr, align 8, !dbg !4069
  call void %12(%struct.device* %13, %struct.subsys_interface* %14) #8, !dbg !4066
  br label %while.cond, !dbg !4063, !llvm.loop !4070

while.end:                                        ; preds = %while.cond
  call void @subsys_dev_iter_exit(%struct.subsys_dev_iter* %iter) #8, !dbg !4072
  br label %if.end8, !dbg !4073

if.end8:                                          ; preds = %while.end, %if.end
  %15 = load %struct.bus_type*, %struct.bus_type** %subsys, align 8, !dbg !4074
  %p9 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %15, i32 0, i32 20, !dbg !4075
  %16 = load %struct.subsys_private*, %struct.subsys_private** %p9, align 8, !dbg !4075
  %mutex10 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %16, i32 0, i32 3, !dbg !4076
  call void @mutex_unlock(%struct.mutex* %mutex10) #8, !dbg !4077
  %17 = load %struct.bus_type*, %struct.bus_type** %subsys, align 8, !dbg !4078
  call void @bus_put(%struct.bus_type* %17) #8, !dbg !4079
  br label %return, !dbg !4080

return:                                           ; preds = %if.end8, %if.then
  ret void, !dbg !4080
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del_init(%struct.list_head* %entry1) #0 !dbg !4081 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4082, metadata !DIExpression()), !dbg !4083
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4084
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !4085
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4086
  call void @INIT_LIST_HEAD(%struct.list_head* %1) #8, !dbg !4087
  ret void, !dbg !4088
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @subsys_system_register(%struct.bus_type* %subsys, %struct.attribute_group** %groups) #0 !dbg !4089 {
entry:
  %subsys.addr = alloca %struct.bus_type*, align 8
  %groups.addr = alloca %struct.attribute_group**, align 8
  store %struct.bus_type* %subsys, %struct.bus_type** %subsys.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %subsys.addr, metadata !4090, metadata !DIExpression()), !dbg !4091
  store %struct.attribute_group** %groups, %struct.attribute_group*** %groups.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_group*** %groups.addr, metadata !4092, metadata !DIExpression()), !dbg !4093
  %0 = load %struct.bus_type*, %struct.bus_type** %subsys.addr, align 8, !dbg !4094
  %1 = load %struct.attribute_group**, %struct.attribute_group*** %groups.addr, align 8, !dbg !4095
  %2 = load %struct.kset*, %struct.kset** @system_kset, align 8, !dbg !4096
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %2, i32 0, i32 2, !dbg !4097
  %call = call i32 @subsys_register(%struct.bus_type* %0, %struct.attribute_group** %1, %struct.kobject* %kobj) #8, !dbg !4098
  ret i32 %call, !dbg !4099
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @subsys_register(%struct.bus_type* %subsys, %struct.attribute_group** %groups, %struct.kobject* %parent_of_root) #0 !dbg !4100 {
entry:
  %retval = alloca i32, align 4
  %subsys.addr = alloca %struct.bus_type*, align 8
  %groups.addr = alloca %struct.attribute_group**, align 8
  %parent_of_root.addr = alloca %struct.kobject*, align 8
  %dev = alloca %struct.device*, align 8
  %err = alloca i32, align 4
  store %struct.bus_type* %subsys, %struct.bus_type** %subsys.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %subsys.addr, metadata !4103, metadata !DIExpression()), !dbg !4104
  store %struct.attribute_group** %groups, %struct.attribute_group*** %groups.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_group*** %groups.addr, metadata !4105, metadata !DIExpression()), !dbg !4106
  store %struct.kobject* %parent_of_root, %struct.kobject** %parent_of_root.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %parent_of_root.addr, metadata !4107, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4109, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4111, metadata !DIExpression()), !dbg !4112
  %0 = load %struct.bus_type*, %struct.bus_type** %subsys.addr, align 8, !dbg !4113
  %call = call i32 @bus_register(%struct.bus_type* %0) #8, !dbg !4114
  store i32 %call, i32* %err, align 4, !dbg !4115
  %1 = load i32, i32* %err, align 4, !dbg !4116
  %cmp = icmp slt i32 %1, 0, !dbg !4118
  br i1 %cmp, label %if.then, label %if.end, !dbg !4119

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %err, align 4, !dbg !4120
  store i32 %2, i32* %retval, align 4, !dbg !4121
  br label %return, !dbg !4121

if.end:                                           ; preds = %entry
  %call1 = call i8* @kzalloc(i64 696, i32 3264) #8, !dbg !4122
  %3 = bitcast i8* %call1 to %struct.device*, !dbg !4122
  store %struct.device* %3, %struct.device** %dev, align 8, !dbg !4123
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4124
  %tobool = icmp ne %struct.device* %4, null, !dbg !4124
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !4126

if.then2:                                         ; preds = %if.end
  store i32 -12, i32* %err, align 4, !dbg !4127
  br label %err_dev, !dbg !4129

if.end3:                                          ; preds = %if.end
  %5 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4130
  %6 = load %struct.bus_type*, %struct.bus_type** %subsys.addr, align 8, !dbg !4131
  %name = getelementptr inbounds %struct.bus_type, %struct.bus_type* %6, i32 0, i32 0, !dbg !4132
  %7 = load i8*, i8** %name, align 8, !dbg !4132
  %call4 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %7) #8, !dbg !4133
  store i32 %call4, i32* %err, align 4, !dbg !4134
  %8 = load i32, i32* %err, align 4, !dbg !4135
  %cmp5 = icmp slt i32 %8, 0, !dbg !4137
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !4138

if.then6:                                         ; preds = %if.end3
  br label %err_name, !dbg !4139

if.end7:                                          ; preds = %if.end3
  %9 = load %struct.kobject*, %struct.kobject** %parent_of_root.addr, align 8, !dbg !4140
  %10 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4141
  %kobj = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0, !dbg !4142
  %parent = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i32 0, i32 2, !dbg !4143
  store %struct.kobject* %9, %struct.kobject** %parent, align 8, !dbg !4144
  %11 = load %struct.attribute_group**, %struct.attribute_group*** %groups.addr, align 8, !dbg !4145
  %12 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4146
  %groups8 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 30, !dbg !4147
  store %struct.attribute_group** %11, %struct.attribute_group*** %groups8, align 8, !dbg !4148
  %13 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4149
  %release = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 31, !dbg !4150
  store void (%struct.device*)* @system_root_device_release, void (%struct.device*)** %release, align 8, !dbg !4151
  %14 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4152
  %call9 = call i32 @device_register(%struct.device* %14) #8, !dbg !4153
  store i32 %call9, i32* %err, align 4, !dbg !4154
  %15 = load i32, i32* %err, align 4, !dbg !4155
  %cmp10 = icmp slt i32 %15, 0, !dbg !4157
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !4158

if.then11:                                        ; preds = %if.end7
  br label %err_dev_reg, !dbg !4159

if.end12:                                         ; preds = %if.end7
  %16 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4160
  %17 = load %struct.bus_type*, %struct.bus_type** %subsys.addr, align 8, !dbg !4161
  %dev_root = getelementptr inbounds %struct.bus_type, %struct.bus_type* %17, i32 0, i32 2, !dbg !4162
  store %struct.device* %16, %struct.device** %dev_root, align 8, !dbg !4163
  store i32 0, i32* %retval, align 4, !dbg !4164
  br label %return, !dbg !4164

err_dev_reg:                                      ; preds = %if.then11
  call void @llvm.dbg.label(metadata !4165), !dbg !4166
  %18 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4167
  call void @put_device(%struct.device* %18) #8, !dbg !4168
  store %struct.device* null, %struct.device** %dev, align 8, !dbg !4169
  br label %err_name, !dbg !4170

err_name:                                         ; preds = %err_dev_reg, %if.then6
  call void @llvm.dbg.label(metadata !4171), !dbg !4172
  %19 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4173
  %20 = bitcast %struct.device* %19 to i8*, !dbg !4173
  call void @kfree(i8* %20) #8, !dbg !4174
  br label %err_dev, !dbg !4174

err_dev:                                          ; preds = %err_name, %if.then2
  call void @llvm.dbg.label(metadata !4175), !dbg !4176
  %21 = load %struct.bus_type*, %struct.bus_type** %subsys.addr, align 8, !dbg !4177
  call void @bus_unregister(%struct.bus_type* %21) #8, !dbg !4178
  %22 = load i32, i32* %err, align 4, !dbg !4179
  store i32 %22, i32* %retval, align 4, !dbg !4180
  br label %return, !dbg !4180

return:                                           ; preds = %err_dev, %if.end12, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !4181
  ret i32 %23, !dbg !4181
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @subsys_virtual_register(%struct.bus_type* %subsys, %struct.attribute_group** %groups) #0 !dbg !4182 {
entry:
  %retval = alloca i32, align 4
  %subsys.addr = alloca %struct.bus_type*, align 8
  %groups.addr = alloca %struct.attribute_group**, align 8
  %virtual_dir = alloca %struct.kobject*, align 8
  store %struct.bus_type* %subsys, %struct.bus_type** %subsys.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %subsys.addr, metadata !4183, metadata !DIExpression()), !dbg !4184
  store %struct.attribute_group** %groups, %struct.attribute_group*** %groups.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_group*** %groups.addr, metadata !4185, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.declare(metadata %struct.kobject** %virtual_dir, metadata !4187, metadata !DIExpression()), !dbg !4188
  %call = call %struct.kobject* @virtual_device_parent(%struct.device* null) #8, !dbg !4189
  store %struct.kobject* %call, %struct.kobject** %virtual_dir, align 8, !dbg !4190
  %0 = load %struct.kobject*, %struct.kobject** %virtual_dir, align 8, !dbg !4191
  %tobool = icmp ne %struct.kobject* %0, null, !dbg !4191
  br i1 %tobool, label %if.end, label %if.then, !dbg !4193

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4194
  br label %return, !dbg !4194

if.end:                                           ; preds = %entry
  %1 = load %struct.bus_type*, %struct.bus_type** %subsys.addr, align 8, !dbg !4195
  %2 = load %struct.attribute_group**, %struct.attribute_group*** %groups.addr, align 8, !dbg !4196
  %3 = load %struct.kobject*, %struct.kobject** %virtual_dir, align 8, !dbg !4197
  %call1 = call i32 @subsys_register(%struct.bus_type* %1, %struct.attribute_group** %2, %struct.kobject* %3) #8, !dbg !4198
  store i32 %call1, i32* %retval, align 4, !dbg !4199
  br label %return, !dbg !4199

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !4200
  ret i32 %4, !dbg !4200
}

; Function Attrs: noredzone
declare dso_local %struct.kobject* @virtual_device_parent(%struct.device*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @buses_init() #4 section ".init.text" !dbg !4201 {
entry:
  %retval = alloca i32, align 4
  %call = call %struct.kset* @kset_create_and_add(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), %struct.kset_uevent_ops* @bus_uevent_ops, %struct.kobject* null) #8, !dbg !4204
  store %struct.kset* %call, %struct.kset** @bus_kset, align 8, !dbg !4205
  %0 = load %struct.kset*, %struct.kset** @bus_kset, align 8, !dbg !4206
  %tobool = icmp ne %struct.kset* %0, null, !dbg !4206
  br i1 %tobool, label %if.end, label %if.then, !dbg !4208

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4209
  br label %return, !dbg !4209

if.end:                                           ; preds = %entry
  %1 = load %struct.kset*, %struct.kset** @devices_kset, align 8, !dbg !4210
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %1, i32 0, i32 2, !dbg !4211
  %call1 = call %struct.kset* @kset_create_and_add(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), %struct.kset_uevent_ops* null, %struct.kobject* %kobj) #8, !dbg !4212
  store %struct.kset* %call1, %struct.kset** @system_kset, align 8, !dbg !4213
  %2 = load %struct.kset*, %struct.kset** @system_kset, align 8, !dbg !4214
  %tobool2 = icmp ne %struct.kset* %2, null, !dbg !4214
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4216

if.then3:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4217
  br label %return, !dbg !4217

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4218
  br label %return, !dbg !4218

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !4219
  ret i32 %3, !dbg !4219
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.kset* @kset_get(%struct.kset* %k) #0 !dbg !4220 {
entry:
  %k.addr = alloca %struct.kset*, align 8
  store %struct.kset* %k, %struct.kset** %k.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kset** %k.addr, metadata !4223, metadata !DIExpression()), !dbg !4224
  %0 = load %struct.kset*, %struct.kset** %k.addr, align 8, !dbg !4225
  %tobool = icmp ne %struct.kset* %0, null, !dbg !4225
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4225

cond.true:                                        ; preds = %entry
  %1 = load %struct.kset*, %struct.kset** %k.addr, align 8, !dbg !4226
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %1, i32 0, i32 2, !dbg !4227
  %call = call %struct.kobject* @kobject_get(%struct.kobject* %kobj) #8, !dbg !4228
  %call1 = call %struct.kset* @to_kset(%struct.kobject* %call) #8, !dbg !4229
  br label %cond.end, !dbg !4225

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4225

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.kset* [ %call1, %cond.true ], [ null, %cond.false ], !dbg !4225
  ret %struct.kset* %cond, !dbg !4230
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.kset* @to_kset(%struct.kobject* %kobj) #0 !dbg !4231 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.kset*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4234, metadata !DIExpression()), !dbg !4235
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4236
  %tobool = icmp ne %struct.kobject* %0, null, !dbg !4236
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4236

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4237, metadata !DIExpression()), !dbg !4239
  %1 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4239
  %2 = bitcast %struct.kobject* %1 to i8*, !dbg !4239
  store i8* %2, i8** %__mptr, align 8, !dbg !4239
  br label %do.body, !dbg !4239

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4240

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4239
  %add.ptr = getelementptr i8, i8* %3, i64 -16, !dbg !4239
  %4 = bitcast i8* %add.ptr to %struct.kset*, !dbg !4239
  store %struct.kset* %4, %struct.kset** %tmp, align 8, !dbg !4240
  %5 = load %struct.kset*, %struct.kset** %tmp, align 8, !dbg !4239
  br label %cond.end, !dbg !4236

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4236

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.kset* [ %5, %do.end ], [ null, %cond.false ], !dbg !4236
  ret %struct.kset* %cond, !dbg !4242
}

; Function Attrs: noredzone
declare dso_local %struct.kobject* @kobject_get(%struct.kobject*) #2

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_file_ns(%struct.kobject*, %struct.attribute*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kset_put(%struct.kset* %k) #0 !dbg !4243 {
entry:
  %k.addr = alloca %struct.kset*, align 8
  store %struct.kset* %k, %struct.kset** %k.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kset** %k.addr, metadata !4246, metadata !DIExpression()), !dbg !4247
  %0 = load %struct.kset*, %struct.kset** %k.addr, align 8, !dbg !4248
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %0, i32 0, i32 2, !dbg !4249
  call void @kobject_put(%struct.kobject* %kobj) #8, !dbg !4250
  ret void, !dbg !4251
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_file_ns(%struct.kobject*, %struct.attribute*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !4252 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4257, metadata !DIExpression()), !dbg !4258
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4259
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !4260
  %1 = load i8*, i8** %name, align 8, !dbg !4260
  ret i8* %1, !dbg !4261
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4262 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4266, metadata !DIExpression()), !dbg !4271
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4273, metadata !DIExpression()), !dbg !4274
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4275, metadata !DIExpression()), !dbg !4276
  %0 = load i64, i64* %size.addr, align 8, !dbg !4277
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4279
  br i1 %1, label %if.then, label %if.end447, !dbg !4280

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4281
  %tobool = icmp ne i64 %2, 0, !dbg !4281
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4284

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4285
  br label %return, !dbg !4285

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4286
  %cmp = icmp ult i64 %3, 4096, !dbg !4288
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4289

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4290
  br label %return, !dbg !4290

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub = sub i64 %4, 1, !dbg !4291
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4291
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4291

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub4 = sub i64 %6, 1, !dbg !4291
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4291
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4291

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub6 = sub i64 %8, 1, !dbg !4291
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4291
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4291

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4291

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub9 = sub i64 %9, 1, !dbg !4291
  %and = and i64 %sub9, -9223372036854775808, !dbg !4291
  %tobool10 = icmp ne i64 %and, 0, !dbg !4291
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4291

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4291

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub13 = sub i64 %10, 1, !dbg !4291
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4291
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4291
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4291

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4291

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub18 = sub i64 %11, 1, !dbg !4291
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4291
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4291
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4291

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4291

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub23 = sub i64 %12, 1, !dbg !4291
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4291
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4291
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4291

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4291

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub28 = sub i64 %13, 1, !dbg !4291
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4291
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4291
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4291

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4291

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub33 = sub i64 %14, 1, !dbg !4291
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4291
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4291
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4291

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4291

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub38 = sub i64 %15, 1, !dbg !4291
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4291
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4291
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4291

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4291

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub43 = sub i64 %16, 1, !dbg !4291
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4291
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4291
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4291

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4291

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub48 = sub i64 %17, 1, !dbg !4291
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4291
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4291
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4291

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4291

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub53 = sub i64 %18, 1, !dbg !4291
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4291
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4291
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4291

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4291

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub58 = sub i64 %19, 1, !dbg !4291
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4291
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4291
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4291

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4291

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub63 = sub i64 %20, 1, !dbg !4291
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4291
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4291
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4291

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4291

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub68 = sub i64 %21, 1, !dbg !4291
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4291
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4291
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4291

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4291

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub73 = sub i64 %22, 1, !dbg !4291
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4291
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4291
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4291

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4291

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub78 = sub i64 %23, 1, !dbg !4291
  %and79 = and i64 %sub78, 562949953421312, !dbg !4291
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4291
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4291

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4291

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub83 = sub i64 %24, 1, !dbg !4291
  %and84 = and i64 %sub83, 281474976710656, !dbg !4291
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4291
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4291

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4291

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub88 = sub i64 %25, 1, !dbg !4291
  %and89 = and i64 %sub88, 140737488355328, !dbg !4291
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4291
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4291

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4291

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub93 = sub i64 %26, 1, !dbg !4291
  %and94 = and i64 %sub93, 70368744177664, !dbg !4291
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4291
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4291

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4291

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub98 = sub i64 %27, 1, !dbg !4291
  %and99 = and i64 %sub98, 35184372088832, !dbg !4291
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4291
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4291

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4291

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub103 = sub i64 %28, 1, !dbg !4291
  %and104 = and i64 %sub103, 17592186044416, !dbg !4291
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4291
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4291

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4291

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub108 = sub i64 %29, 1, !dbg !4291
  %and109 = and i64 %sub108, 8796093022208, !dbg !4291
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4291
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4291

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4291

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub113 = sub i64 %30, 1, !dbg !4291
  %and114 = and i64 %sub113, 4398046511104, !dbg !4291
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4291
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4291

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4291

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub118 = sub i64 %31, 1, !dbg !4291
  %and119 = and i64 %sub118, 2199023255552, !dbg !4291
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4291
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4291

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4291

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub123 = sub i64 %32, 1, !dbg !4291
  %and124 = and i64 %sub123, 1099511627776, !dbg !4291
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4291
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4291

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4291

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub128 = sub i64 %33, 1, !dbg !4291
  %and129 = and i64 %sub128, 549755813888, !dbg !4291
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4291
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4291

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4291

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub133 = sub i64 %34, 1, !dbg !4291
  %and134 = and i64 %sub133, 274877906944, !dbg !4291
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4291
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4291

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4291

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub138 = sub i64 %35, 1, !dbg !4291
  %and139 = and i64 %sub138, 137438953472, !dbg !4291
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4291
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4291

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4291

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub143 = sub i64 %36, 1, !dbg !4291
  %and144 = and i64 %sub143, 68719476736, !dbg !4291
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4291
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4291

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4291

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub148 = sub i64 %37, 1, !dbg !4291
  %and149 = and i64 %sub148, 34359738368, !dbg !4291
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4291
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4291

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4291

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub153 = sub i64 %38, 1, !dbg !4291
  %and154 = and i64 %sub153, 17179869184, !dbg !4291
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4291
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4291

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4291

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub158 = sub i64 %39, 1, !dbg !4291
  %and159 = and i64 %sub158, 8589934592, !dbg !4291
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4291
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4291

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4291

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub163 = sub i64 %40, 1, !dbg !4291
  %and164 = and i64 %sub163, 4294967296, !dbg !4291
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4291
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4291

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4291

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub168 = sub i64 %41, 1, !dbg !4291
  %and169 = and i64 %sub168, 2147483648, !dbg !4291
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4291
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4291

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4291

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub173 = sub i64 %42, 1, !dbg !4291
  %and174 = and i64 %sub173, 1073741824, !dbg !4291
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4291
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4291

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4291

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub178 = sub i64 %43, 1, !dbg !4291
  %and179 = and i64 %sub178, 536870912, !dbg !4291
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4291
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4291

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4291

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub183 = sub i64 %44, 1, !dbg !4291
  %and184 = and i64 %sub183, 268435456, !dbg !4291
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4291
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4291

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4291

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub188 = sub i64 %45, 1, !dbg !4291
  %and189 = and i64 %sub188, 134217728, !dbg !4291
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4291
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4291

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4291

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub193 = sub i64 %46, 1, !dbg !4291
  %and194 = and i64 %sub193, 67108864, !dbg !4291
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4291
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4291

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4291

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub198 = sub i64 %47, 1, !dbg !4291
  %and199 = and i64 %sub198, 33554432, !dbg !4291
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4291
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4291

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4291

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub203 = sub i64 %48, 1, !dbg !4291
  %and204 = and i64 %sub203, 16777216, !dbg !4291
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4291
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4291

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4291

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub208 = sub i64 %49, 1, !dbg !4291
  %and209 = and i64 %sub208, 8388608, !dbg !4291
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4291
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4291

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4291

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub213 = sub i64 %50, 1, !dbg !4291
  %and214 = and i64 %sub213, 4194304, !dbg !4291
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4291
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4291

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4291

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub218 = sub i64 %51, 1, !dbg !4291
  %and219 = and i64 %sub218, 2097152, !dbg !4291
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4291
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4291

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4291

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub223 = sub i64 %52, 1, !dbg !4291
  %and224 = and i64 %sub223, 1048576, !dbg !4291
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4291
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4291

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4291

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub228 = sub i64 %53, 1, !dbg !4291
  %and229 = and i64 %sub228, 524288, !dbg !4291
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4291
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4291

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4291

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub233 = sub i64 %54, 1, !dbg !4291
  %and234 = and i64 %sub233, 262144, !dbg !4291
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4291
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4291

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4291

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub238 = sub i64 %55, 1, !dbg !4291
  %and239 = and i64 %sub238, 131072, !dbg !4291
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4291
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4291

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4291

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub243 = sub i64 %56, 1, !dbg !4291
  %and244 = and i64 %sub243, 65536, !dbg !4291
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4291
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4291

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4291

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub248 = sub i64 %57, 1, !dbg !4291
  %and249 = and i64 %sub248, 32768, !dbg !4291
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4291
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4291

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4291

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub253 = sub i64 %58, 1, !dbg !4291
  %and254 = and i64 %sub253, 16384, !dbg !4291
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4291
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4291

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4291

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub258 = sub i64 %59, 1, !dbg !4291
  %and259 = and i64 %sub258, 8192, !dbg !4291
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4291
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4291

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4291

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub263 = sub i64 %60, 1, !dbg !4291
  %and264 = and i64 %sub263, 4096, !dbg !4291
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4291
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4291

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4291

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub268 = sub i64 %61, 1, !dbg !4291
  %and269 = and i64 %sub268, 2048, !dbg !4291
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4291
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4291

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4291

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub273 = sub i64 %62, 1, !dbg !4291
  %and274 = and i64 %sub273, 1024, !dbg !4291
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4291
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4291

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4291

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub278 = sub i64 %63, 1, !dbg !4291
  %and279 = and i64 %sub278, 512, !dbg !4291
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4291
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4291

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4291

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub283 = sub i64 %64, 1, !dbg !4291
  %and284 = and i64 %sub283, 256, !dbg !4291
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4291
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4291

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4291

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub288 = sub i64 %65, 1, !dbg !4291
  %and289 = and i64 %sub288, 128, !dbg !4291
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4291
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4291

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4291

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub293 = sub i64 %66, 1, !dbg !4291
  %and294 = and i64 %sub293, 64, !dbg !4291
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4291
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4291

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4291

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub298 = sub i64 %67, 1, !dbg !4291
  %and299 = and i64 %sub298, 32, !dbg !4291
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4291
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4291

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4291

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub303 = sub i64 %68, 1, !dbg !4291
  %and304 = and i64 %sub303, 16, !dbg !4291
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4291
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4291

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4291

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub308 = sub i64 %69, 1, !dbg !4291
  %and309 = and i64 %sub308, 8, !dbg !4291
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4291
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4291

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4291

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub313 = sub i64 %70, 1, !dbg !4291
  %and314 = and i64 %sub313, 4, !dbg !4291
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4291
  %71 = zext i1 %tobool315 to i64, !dbg !4291
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4291
  br label %cond.end, !dbg !4291

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4291
  br label %cond.end317, !dbg !4291

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4291
  br label %cond.end319, !dbg !4291

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4291
  br label %cond.end321, !dbg !4291

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4291
  br label %cond.end323, !dbg !4291

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4291
  br label %cond.end325, !dbg !4291

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4291
  br label %cond.end327, !dbg !4291

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4291
  br label %cond.end329, !dbg !4291

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4291
  br label %cond.end331, !dbg !4291

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4291
  br label %cond.end333, !dbg !4291

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4291
  br label %cond.end335, !dbg !4291

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4291
  br label %cond.end337, !dbg !4291

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4291
  br label %cond.end339, !dbg !4291

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4291
  br label %cond.end341, !dbg !4291

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4291
  br label %cond.end343, !dbg !4291

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4291
  br label %cond.end345, !dbg !4291

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4291
  br label %cond.end347, !dbg !4291

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4291
  br label %cond.end349, !dbg !4291

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4291
  br label %cond.end351, !dbg !4291

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4291
  br label %cond.end353, !dbg !4291

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4291
  br label %cond.end355, !dbg !4291

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4291
  br label %cond.end357, !dbg !4291

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4291
  br label %cond.end359, !dbg !4291

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4291
  br label %cond.end361, !dbg !4291

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4291
  br label %cond.end363, !dbg !4291

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4291
  br label %cond.end365, !dbg !4291

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4291
  br label %cond.end367, !dbg !4291

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4291
  br label %cond.end369, !dbg !4291

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4291
  br label %cond.end371, !dbg !4291

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4291
  br label %cond.end373, !dbg !4291

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4291
  br label %cond.end375, !dbg !4291

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4291
  br label %cond.end377, !dbg !4291

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4291
  br label %cond.end379, !dbg !4291

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4291
  br label %cond.end381, !dbg !4291

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4291
  br label %cond.end383, !dbg !4291

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4291
  br label %cond.end385, !dbg !4291

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4291
  br label %cond.end387, !dbg !4291

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4291
  br label %cond.end389, !dbg !4291

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4291
  br label %cond.end391, !dbg !4291

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4291
  br label %cond.end393, !dbg !4291

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4291
  br label %cond.end395, !dbg !4291

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4291
  br label %cond.end397, !dbg !4291

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4291
  br label %cond.end399, !dbg !4291

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4291
  br label %cond.end401, !dbg !4291

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4291
  br label %cond.end403, !dbg !4291

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4291
  br label %cond.end405, !dbg !4291

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4291
  br label %cond.end407, !dbg !4291

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4291
  br label %cond.end409, !dbg !4291

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4291
  br label %cond.end411, !dbg !4291

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4291
  br label %cond.end413, !dbg !4291

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4291
  br label %cond.end415, !dbg !4291

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4291
  br label %cond.end417, !dbg !4291

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4291
  br label %cond.end419, !dbg !4291

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4291
  br label %cond.end421, !dbg !4291

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4291
  br label %cond.end423, !dbg !4291

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4291
  br label %cond.end425, !dbg !4291

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4291
  br label %cond.end427, !dbg !4291

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4291
  br label %cond.end429, !dbg !4291

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4291
  br label %cond.end431, !dbg !4291

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4291
  br label %cond.end433, !dbg !4291

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4291
  br label %cond.end435, !dbg !4291

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4291
  br label %cond.end437, !dbg !4291

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4291
  br label %cond.end440, !dbg !4291

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4291

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4291
  br label %cond.end444, !dbg !4291

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4291
  %sub443 = sub i64 %72, 1, !dbg !4291
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4291
  br label %cond.end444, !dbg !4291

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4291
  %sub446 = sub i32 %cond445, 12, !dbg !4292
  %add = add i32 %sub446, 1, !dbg !4293
  store i32 %add, i32* %retval, align 4, !dbg !4294
  br label %return, !dbg !4294

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4295
  %dec = add i64 %73, -1, !dbg !4295
  store i64 %dec, i64* %size.addr, align 8, !dbg !4295
  %74 = load i64, i64* %size.addr, align 8, !dbg !4296
  %shr = lshr i64 %74, 12, !dbg !4296
  store i64 %shr, i64* %size.addr, align 8, !dbg !4296
  %75 = load i64, i64* %size.addr, align 8, !dbg !4297
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4274
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4298
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4299
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4298, !srcloc !4300
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4298
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4301
  %add.i = add i32 %79, 1, !dbg !4302
  store i32 %add.i, i32* %retval, align 4, !dbg !4303
  br label %return, !dbg !4303

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4304
  ret i32 %80, !dbg !4304
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4305 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4266, metadata !DIExpression()), !dbg !4309
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4273, metadata !DIExpression()), !dbg !4311
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4312, metadata !DIExpression()), !dbg !4313
  %0 = load i64, i64* %n.addr, align 8, !dbg !4314
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4311
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4315
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4316
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4315, !srcloc !4300
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4315
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4317
  %add.i = add i32 %4, 1, !dbg !4318
  %sub = sub i32 %add.i, 1, !dbg !4319
  ret i32 %sub, !dbg !4320
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4321 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4325, metadata !DIExpression()), !dbg !4326
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4327, metadata !DIExpression()), !dbg !4328
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4329, metadata !DIExpression()), !dbg !4330
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4331, metadata !DIExpression()), !dbg !4332
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4333
  ret i8* %0, !dbg !4334
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @driver_release(%struct.kobject* %kobj) #0 !dbg !4335 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %drv_priv = alloca %struct.driver_private*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.driver_private*, align 8
  %tmp1 = alloca i32, align 4
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4336, metadata !DIExpression()), !dbg !4337
  call void @llvm.dbg.declare(metadata %struct.driver_private** %drv_priv, metadata !4338, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4340, metadata !DIExpression()), !dbg !4342
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4342
  %1 = bitcast %struct.kobject* %0 to i8*, !dbg !4342
  store i8* %1, i8** %__mptr, align 8, !dbg !4342
  br label %do.body, !dbg !4342

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4343

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4342
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4342
  %3 = bitcast i8* %add.ptr to %struct.driver_private*, !dbg !4342
  store %struct.driver_private* %3, %struct.driver_private** %tmp, align 8, !dbg !4343
  %4 = load %struct.driver_private*, %struct.driver_private** %tmp, align 8, !dbg !4342
  store %struct.driver_private* %4, %struct.driver_private** %drv_priv, align 8, !dbg !4339
  store i32 0, i32* %tmp1, align 4, !dbg !4345
  %5 = load i32, i32* %tmp1, align 4, !dbg !4348
  %6 = load %struct.driver_private*, %struct.driver_private** %drv_priv, align 8, !dbg !4349
  %7 = bitcast %struct.driver_private* %6 to i8*, !dbg !4349
  call void @kfree(i8* %7) #8, !dbg !4350
  ret void, !dbg !4351
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @drv_attr_show(%struct.kobject* %kobj, %struct.attribute* %attr, i8* %buf) #0 !dbg !4352 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %drv_attr = alloca %struct.driver_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.driver_attribute*, align 8
  %drv_priv = alloca %struct.driver_private*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.driver_private*, align 8
  %ret = alloca i64, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4353, metadata !DIExpression()), !dbg !4354
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !4355, metadata !DIExpression()), !dbg !4356
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4357, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.declare(metadata %struct.driver_attribute** %drv_attr, metadata !4359, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4361, metadata !DIExpression()), !dbg !4363
  %0 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !4363
  %1 = bitcast %struct.attribute* %0 to i8*, !dbg !4363
  store i8* %1, i8** %__mptr, align 8, !dbg !4363
  br label %do.body, !dbg !4363

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4364

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4363
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4363
  %3 = bitcast i8* %add.ptr to %struct.driver_attribute*, !dbg !4363
  store %struct.driver_attribute* %3, %struct.driver_attribute** %tmp, align 8, !dbg !4364
  %4 = load %struct.driver_attribute*, %struct.driver_attribute** %tmp, align 8, !dbg !4363
  store %struct.driver_attribute* %4, %struct.driver_attribute** %drv_attr, align 8, !dbg !4360
  call void @llvm.dbg.declare(metadata %struct.driver_private** %drv_priv, metadata !4366, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !4368, metadata !DIExpression()), !dbg !4370
  %5 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4370
  %6 = bitcast %struct.kobject* %5 to i8*, !dbg !4370
  store i8* %6, i8** %__mptr1, align 8, !dbg !4370
  br label %do.body2, !dbg !4370

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !4371

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !4370
  %add.ptr5 = getelementptr i8, i8* %7, i64 0, !dbg !4370
  %8 = bitcast i8* %add.ptr5 to %struct.driver_private*, !dbg !4370
  store %struct.driver_private* %8, %struct.driver_private** %tmp4, align 8, !dbg !4371
  %9 = load %struct.driver_private*, %struct.driver_private** %tmp4, align 8, !dbg !4370
  store %struct.driver_private* %9, %struct.driver_private** %drv_priv, align 8, !dbg !4367
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !4373, metadata !DIExpression()), !dbg !4374
  store i64 -5, i64* %ret, align 8, !dbg !4374
  %10 = load %struct.driver_attribute*, %struct.driver_attribute** %drv_attr, align 8, !dbg !4375
  %show = getelementptr inbounds %struct.driver_attribute, %struct.driver_attribute* %10, i32 0, i32 1, !dbg !4377
  %11 = load i64 (%struct.device_driver*, i8*)*, i64 (%struct.device_driver*, i8*)** %show, align 8, !dbg !4377
  %tobool = icmp ne i64 (%struct.device_driver*, i8*)* %11, null, !dbg !4375
  br i1 %tobool, label %if.then, label %if.end, !dbg !4378

if.then:                                          ; preds = %do.end3
  %12 = load %struct.driver_attribute*, %struct.driver_attribute** %drv_attr, align 8, !dbg !4379
  %show6 = getelementptr inbounds %struct.driver_attribute, %struct.driver_attribute* %12, i32 0, i32 1, !dbg !4380
  %13 = load i64 (%struct.device_driver*, i8*)*, i64 (%struct.device_driver*, i8*)** %show6, align 8, !dbg !4380
  %14 = load %struct.driver_private*, %struct.driver_private** %drv_priv, align 8, !dbg !4381
  %driver = getelementptr inbounds %struct.driver_private, %struct.driver_private* %14, i32 0, i32 4, !dbg !4382
  %15 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !4382
  %16 = load i8*, i8** %buf.addr, align 8, !dbg !4383
  %call = call i64 %13(%struct.device_driver* %15, i8* %16) #8, !dbg !4379
  store i64 %call, i64* %ret, align 8, !dbg !4384
  br label %if.end, !dbg !4385

if.end:                                           ; preds = %if.then, %do.end3
  %17 = load i64, i64* %ret, align 8, !dbg !4386
  ret i64 %17, !dbg !4387
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @drv_attr_store(%struct.kobject* %kobj, %struct.attribute* %attr, i8* %buf, i64 %count) #0 !dbg !4388 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %drv_attr = alloca %struct.driver_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.driver_attribute*, align 8
  %drv_priv = alloca %struct.driver_private*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.driver_private*, align 8
  %ret = alloca i64, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4389, metadata !DIExpression()), !dbg !4390
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !4391, metadata !DIExpression()), !dbg !4392
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4393, metadata !DIExpression()), !dbg !4394
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4395, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.declare(metadata %struct.driver_attribute** %drv_attr, metadata !4397, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4399, metadata !DIExpression()), !dbg !4401
  %0 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !4401
  %1 = bitcast %struct.attribute* %0 to i8*, !dbg !4401
  store i8* %1, i8** %__mptr, align 8, !dbg !4401
  br label %do.body, !dbg !4401

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4402

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4401
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4401
  %3 = bitcast i8* %add.ptr to %struct.driver_attribute*, !dbg !4401
  store %struct.driver_attribute* %3, %struct.driver_attribute** %tmp, align 8, !dbg !4402
  %4 = load %struct.driver_attribute*, %struct.driver_attribute** %tmp, align 8, !dbg !4401
  store %struct.driver_attribute* %4, %struct.driver_attribute** %drv_attr, align 8, !dbg !4398
  call void @llvm.dbg.declare(metadata %struct.driver_private** %drv_priv, metadata !4404, metadata !DIExpression()), !dbg !4405
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !4406, metadata !DIExpression()), !dbg !4408
  %5 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4408
  %6 = bitcast %struct.kobject* %5 to i8*, !dbg !4408
  store i8* %6, i8** %__mptr1, align 8, !dbg !4408
  br label %do.body2, !dbg !4408

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !4409

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !4408
  %add.ptr5 = getelementptr i8, i8* %7, i64 0, !dbg !4408
  %8 = bitcast i8* %add.ptr5 to %struct.driver_private*, !dbg !4408
  store %struct.driver_private* %8, %struct.driver_private** %tmp4, align 8, !dbg !4409
  %9 = load %struct.driver_private*, %struct.driver_private** %tmp4, align 8, !dbg !4408
  store %struct.driver_private* %9, %struct.driver_private** %drv_priv, align 8, !dbg !4405
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !4411, metadata !DIExpression()), !dbg !4412
  store i64 -5, i64* %ret, align 8, !dbg !4412
  %10 = load %struct.driver_attribute*, %struct.driver_attribute** %drv_attr, align 8, !dbg !4413
  %store = getelementptr inbounds %struct.driver_attribute, %struct.driver_attribute* %10, i32 0, i32 2, !dbg !4415
  %11 = load i64 (%struct.device_driver*, i8*, i64)*, i64 (%struct.device_driver*, i8*, i64)** %store, align 8, !dbg !4415
  %tobool = icmp ne i64 (%struct.device_driver*, i8*, i64)* %11, null, !dbg !4413
  br i1 %tobool, label %if.then, label %if.end, !dbg !4416

if.then:                                          ; preds = %do.end3
  %12 = load %struct.driver_attribute*, %struct.driver_attribute** %drv_attr, align 8, !dbg !4417
  %store6 = getelementptr inbounds %struct.driver_attribute, %struct.driver_attribute* %12, i32 0, i32 2, !dbg !4418
  %13 = load i64 (%struct.device_driver*, i8*, i64)*, i64 (%struct.device_driver*, i8*, i64)** %store6, align 8, !dbg !4418
  %14 = load %struct.driver_private*, %struct.driver_private** %drv_priv, align 8, !dbg !4419
  %driver = getelementptr inbounds %struct.driver_private, %struct.driver_private* %14, i32 0, i32 4, !dbg !4420
  %15 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !4420
  %16 = load i8*, i8** %buf.addr, align 8, !dbg !4421
  %17 = load i64, i64* %count.addr, align 8, !dbg !4422
  %call = call i64 %13(%struct.device_driver* %15, i8* %16, i64 %17) #8, !dbg !4417
  store i64 %call, i64* %ret, align 8, !dbg !4423
  br label %if.end, !dbg !4424

if.end:                                           ; preds = %if.then, %do.end3
  %18 = load i64, i64* %ret, align 8, !dbg !4425
  ret i64 %18, !dbg !4426
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @uevent_store(%struct.device_driver* %drv, i8* %buf, i64 %count) #0 !dbg !4427 {
entry:
  %drv.addr = alloca %struct.device_driver*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !4428, metadata !DIExpression()), !dbg !4429
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4430, metadata !DIExpression()), !dbg !4431
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4432, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4434, metadata !DIExpression()), !dbg !4435
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !4436
  %p = getelementptr inbounds %struct.device_driver, %struct.device_driver* %0, i32 0, i32 18, !dbg !4437
  %1 = load %struct.driver_private*, %struct.driver_private** %p, align 8, !dbg !4437
  %kobj = getelementptr inbounds %struct.driver_private, %struct.driver_private* %1, i32 0, i32 0, !dbg !4438
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !4439
  %3 = load i64, i64* %count.addr, align 8, !dbg !4440
  %call = call i32 @kobject_synth_uevent(%struct.kobject* %kobj, i8* %2, i64 %3) #8, !dbg !4441
  store i32 %call, i32* %rc, align 4, !dbg !4442
  %4 = load i32, i32* %rc, align 4, !dbg !4443
  %tobool = icmp ne i32 %4, 0, !dbg !4443
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4443

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %rc, align 4, !dbg !4444
  %conv = sext i32 %5 to i64, !dbg !4444
  br label %cond.end, !dbg !4443

cond.false:                                       ; preds = %entry
  %6 = load i64, i64* %count.addr, align 8, !dbg !4445
  br label %cond.end, !dbg !4443

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %6, %cond.false ], !dbg !4443
  ret i64 %cond, !dbg !4446
}

; Function Attrs: noredzone
declare dso_local i32 @kobject_synth_uevent(%struct.kobject*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @unbind_store(%struct.device_driver* %drv, i8* %buf, i64 %count) #0 !dbg !4447 {
entry:
  %drv.addr = alloca %struct.device_driver*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %bus = alloca %struct.bus_type*, align 8
  %dev = alloca %struct.device*, align 8
  %err = alloca i32, align 4
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !4448, metadata !DIExpression()), !dbg !4449
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4450, metadata !DIExpression()), !dbg !4451
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4452, metadata !DIExpression()), !dbg !4453
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus, metadata !4454, metadata !DIExpression()), !dbg !4455
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !4456
  %bus1 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %0, i32 0, i32 1, !dbg !4457
  %1 = load %struct.bus_type*, %struct.bus_type** %bus1, align 8, !dbg !4457
  %call = call %struct.bus_type* @bus_get(%struct.bus_type* %1) #8, !dbg !4458
  store %struct.bus_type* %call, %struct.bus_type** %bus, align 8, !dbg !4455
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4459, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4461, metadata !DIExpression()), !dbg !4462
  store i32 -19, i32* %err, align 4, !dbg !4462
  %2 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !4463
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !4464
  %call2 = call %struct.device* @bus_find_device_by_name(%struct.bus_type* %2, %struct.device* null, i8* %3) #8, !dbg !4465
  store %struct.device* %call2, %struct.device** %dev, align 8, !dbg !4466
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4467
  %tobool = icmp ne %struct.device* %4, null, !dbg !4467
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4469

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4470
  %driver = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 6, !dbg !4471
  %6 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !4471
  %7 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !4472
  %cmp = icmp eq %struct.device_driver* %6, %7, !dbg !4473
  br i1 %cmp, label %if.then, label %if.end, !dbg !4474

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4475
  call void @device_driver_detach(%struct.device* %8) #8, !dbg !4477
  %9 = load i64, i64* %count.addr, align 8, !dbg !4478
  %conv = trunc i64 %9 to i32, !dbg !4478
  store i32 %conv, i32* %err, align 4, !dbg !4479
  br label %if.end, !dbg !4480

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4481
  call void @put_device(%struct.device* %10) #8, !dbg !4482
  %11 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !4483
  call void @bus_put(%struct.bus_type* %11) #8, !dbg !4484
  %12 = load i32, i32* %err, align 4, !dbg !4485
  %conv3 = sext i32 %12 to i64, !dbg !4485
  ret i64 %conv3, !dbg !4486
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @bus_find_device_by_name(%struct.bus_type* %bus, %struct.device* %start, i8* %name) #0 !dbg !4487 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  %start.addr = alloca %struct.device*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !4490, metadata !DIExpression()), !dbg !4491
  store %struct.device* %start, %struct.device** %start.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %start.addr, metadata !4492, metadata !DIExpression()), !dbg !4493
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4494, metadata !DIExpression()), !dbg !4495
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !4496
  %1 = load %struct.device*, %struct.device** %start.addr, align 8, !dbg !4497
  %2 = load i8*, i8** %name.addr, align 8, !dbg !4498
  %call = call %struct.device* @bus_find_device(%struct.bus_type* %0, %struct.device* %1, i8* %2, i32 (%struct.device*, i8*)* @device_match_name) #8, !dbg !4499
  ret %struct.device* %call, !dbg !4500
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @device_match_name(%struct.device*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bind_store(%struct.device_driver* %drv, i8* %buf, i64 %count) #0 !dbg !4501 {
entry:
  %drv.addr = alloca %struct.device_driver*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %bus = alloca %struct.bus_type*, align 8
  %dev = alloca %struct.device*, align 8
  %err = alloca i32, align 4
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !4502, metadata !DIExpression()), !dbg !4503
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4504, metadata !DIExpression()), !dbg !4505
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4506, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus, metadata !4508, metadata !DIExpression()), !dbg !4509
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !4510
  %bus1 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %0, i32 0, i32 1, !dbg !4511
  %1 = load %struct.bus_type*, %struct.bus_type** %bus1, align 8, !dbg !4511
  %call = call %struct.bus_type* @bus_get(%struct.bus_type* %1) #8, !dbg !4512
  store %struct.bus_type* %call, %struct.bus_type** %bus, align 8, !dbg !4509
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4513, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4515, metadata !DIExpression()), !dbg !4516
  store i32 -19, i32* %err, align 4, !dbg !4516
  %2 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !4517
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !4518
  %call2 = call %struct.device* @bus_find_device_by_name(%struct.bus_type* %2, %struct.device* null, i8* %3) #8, !dbg !4519
  store %struct.device* %call2, %struct.device** %dev, align 8, !dbg !4520
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4521
  %tobool = icmp ne %struct.device* %4, null, !dbg !4521
  br i1 %tobool, label %land.lhs.true, label %if.end13, !dbg !4523

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4524
  %driver = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 6, !dbg !4525
  %6 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !4525
  %cmp = icmp eq %struct.device_driver* %6, null, !dbg !4526
  br i1 %cmp, label %land.lhs.true3, label %if.end13, !dbg !4527

land.lhs.true3:                                   ; preds = %land.lhs.true
  %7 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !4528
  %8 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4529
  %call4 = call i32 @driver_match_device(%struct.device_driver* %7, %struct.device* %8) #8, !dbg !4530
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4530
  br i1 %tobool5, label %if.then, label %if.end13, !dbg !4531

if.then:                                          ; preds = %land.lhs.true3
  %9 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !4532
  %10 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4534
  %call6 = call i32 @device_driver_attach(%struct.device_driver* %9, %struct.device* %10) #8, !dbg !4535
  store i32 %call6, i32* %err, align 4, !dbg !4536
  %11 = load i32, i32* %err, align 4, !dbg !4537
  %cmp7 = icmp sgt i32 %11, 0, !dbg !4539
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !4540

if.then8:                                         ; preds = %if.then
  %12 = load i64, i64* %count.addr, align 8, !dbg !4541
  %conv = trunc i64 %12 to i32, !dbg !4541
  store i32 %conv, i32* %err, align 4, !dbg !4543
  br label %if.end12, !dbg !4544

if.else:                                          ; preds = %if.then
  %13 = load i32, i32* %err, align 4, !dbg !4545
  %cmp9 = icmp eq i32 %13, 0, !dbg !4547
  br i1 %cmp9, label %if.then11, label %if.end, !dbg !4548

if.then11:                                        ; preds = %if.else
  store i32 -19, i32* %err, align 4, !dbg !4549
  br label %if.end, !dbg !4551

if.end:                                           ; preds = %if.then11, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then8
  br label %if.end13, !dbg !4552

if.end13:                                         ; preds = %if.end12, %land.lhs.true3, %land.lhs.true, %entry
  %14 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4553
  call void @put_device(%struct.device* %14) #8, !dbg !4554
  %15 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !4555
  call void @bus_put(%struct.bus_type* %15) #8, !dbg !4556
  %16 = load i32, i32* %err, align 4, !dbg !4557
  %conv14 = sext i32 %16 to i64, !dbg !4557
  ret i64 %conv14, !dbg !4558
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @driver_match_device(%struct.device_driver* %drv, %struct.device* %dev) #0 !dbg !4559 {
entry:
  %drv.addr = alloca %struct.device_driver*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !4562, metadata !DIExpression()), !dbg !4563
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4564, metadata !DIExpression()), !dbg !4565
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !4566
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %0, i32 0, i32 1, !dbg !4567
  %1 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !4567
  %match = getelementptr inbounds %struct.bus_type, %struct.bus_type* %1, i32 0, i32 6, !dbg !4568
  %2 = load i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.device_driver*)** %match, align 8, !dbg !4568
  %tobool = icmp ne i32 (%struct.device*, %struct.device_driver*)* %2, null, !dbg !4566
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4566

cond.true:                                        ; preds = %entry
  %3 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !4569
  %bus1 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 1, !dbg !4570
  %4 = load %struct.bus_type*, %struct.bus_type** %bus1, align 8, !dbg !4570
  %match2 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %4, i32 0, i32 6, !dbg !4571
  %5 = load i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.device_driver*)** %match2, align 8, !dbg !4571
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4572
  %7 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !4573
  %call = call i32 %5(%struct.device* %6, %struct.device_driver* %7) #8, !dbg !4569
  br label %cond.end, !dbg !4566

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4566

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 1, %cond.false ], !dbg !4566
  ret i32 %cond, !dbg !4574
}

; Function Attrs: noredzone
declare dso_local i32 @device_driver_attach(%struct.device_driver*, %struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_lock(%struct.device* %dev) #0 !dbg !4575 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4576, metadata !DIExpression()), !dbg !4577
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4578
  %mutex = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 9, !dbg !4579
  call void @mutex_lock(%struct.mutex* %mutex) #8, !dbg !4580
  ret void, !dbg !4581
}

; Function Attrs: noredzone
declare dso_local i32 @device_attach(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_unlock(%struct.device* %dev) #0 !dbg !4582 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4583, metadata !DIExpression()), !dbg !4584
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4585
  %mutex = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 9, !dbg !4586
  call void @mutex_unlock(%struct.mutex* %mutex) #8, !dbg !4587
  ret void, !dbg !4588
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bus_release(%struct.kobject* %kobj) #0 !dbg !4589 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %priv = alloca %struct.subsys_private*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.subsys_private*, align 8
  %bus = alloca %struct.bus_type*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4590, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.declare(metadata %struct.subsys_private** %priv, metadata !4592, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4594, metadata !DIExpression()), !dbg !4596
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4596
  %1 = bitcast %struct.kobject* %0 to i8*, !dbg !4596
  store i8* %1, i8** %__mptr, align 8, !dbg !4596
  br label %do.body, !dbg !4596

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4597

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4596
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !4596
  %3 = bitcast i8* %add.ptr to %struct.subsys_private*, !dbg !4596
  store %struct.subsys_private* %3, %struct.subsys_private** %tmp, align 8, !dbg !4597
  %4 = load %struct.subsys_private*, %struct.subsys_private** %tmp, align 8, !dbg !4596
  store %struct.subsys_private* %4, %struct.subsys_private** %priv, align 8, !dbg !4593
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus, metadata !4599, metadata !DIExpression()), !dbg !4600
  %5 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !4601
  %bus1 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %5, i32 0, i32 9, !dbg !4602
  %6 = load %struct.bus_type*, %struct.bus_type** %bus1, align 8, !dbg !4602
  store %struct.bus_type* %6, %struct.bus_type** %bus, align 8, !dbg !4600
  %7 = load %struct.subsys_private*, %struct.subsys_private** %priv, align 8, !dbg !4603
  %8 = bitcast %struct.subsys_private* %7 to i8*, !dbg !4603
  call void @kfree(i8* %8) #8, !dbg !4604
  %9 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !4605
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %9, i32 0, i32 20, !dbg !4606
  store %struct.subsys_private* null, %struct.subsys_private** %p, align 8, !dbg !4607
  ret void, !dbg !4608
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bus_attr_show(%struct.kobject* %kobj, %struct.attribute* %attr, i8* %buf) #0 !dbg !4609 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %bus_attr = alloca %struct.bus_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.bus_attribute*, align 8
  %subsys_priv = alloca %struct.subsys_private*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.subsys_private*, align 8
  %ret = alloca i64, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4610, metadata !DIExpression()), !dbg !4611
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !4612, metadata !DIExpression()), !dbg !4613
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4614, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.declare(metadata %struct.bus_attribute** %bus_attr, metadata !4616, metadata !DIExpression()), !dbg !4617
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4618, metadata !DIExpression()), !dbg !4620
  %0 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !4620
  %1 = bitcast %struct.attribute* %0 to i8*, !dbg !4620
  store i8* %1, i8** %__mptr, align 8, !dbg !4620
  br label %do.body, !dbg !4620

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4621

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4620
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4620
  %3 = bitcast i8* %add.ptr to %struct.bus_attribute*, !dbg !4620
  store %struct.bus_attribute* %3, %struct.bus_attribute** %tmp, align 8, !dbg !4621
  %4 = load %struct.bus_attribute*, %struct.bus_attribute** %tmp, align 8, !dbg !4620
  store %struct.bus_attribute* %4, %struct.bus_attribute** %bus_attr, align 8, !dbg !4617
  call void @llvm.dbg.declare(metadata %struct.subsys_private** %subsys_priv, metadata !4623, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !4625, metadata !DIExpression()), !dbg !4627
  %5 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4627
  %6 = bitcast %struct.kobject* %5 to i8*, !dbg !4627
  store i8* %6, i8** %__mptr1, align 8, !dbg !4627
  br label %do.body2, !dbg !4627

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !4628

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !4627
  %add.ptr5 = getelementptr i8, i8* %7, i64 -16, !dbg !4627
  %8 = bitcast i8* %add.ptr5 to %struct.subsys_private*, !dbg !4627
  store %struct.subsys_private* %8, %struct.subsys_private** %tmp4, align 8, !dbg !4628
  %9 = load %struct.subsys_private*, %struct.subsys_private** %tmp4, align 8, !dbg !4627
  store %struct.subsys_private* %9, %struct.subsys_private** %subsys_priv, align 8, !dbg !4624
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !4630, metadata !DIExpression()), !dbg !4631
  store i64 0, i64* %ret, align 8, !dbg !4631
  %10 = load %struct.bus_attribute*, %struct.bus_attribute** %bus_attr, align 8, !dbg !4632
  %show = getelementptr inbounds %struct.bus_attribute, %struct.bus_attribute* %10, i32 0, i32 1, !dbg !4634
  %11 = load i64 (%struct.bus_type*, i8*)*, i64 (%struct.bus_type*, i8*)** %show, align 8, !dbg !4634
  %tobool = icmp ne i64 (%struct.bus_type*, i8*)* %11, null, !dbg !4632
  br i1 %tobool, label %if.then, label %if.end, !dbg !4635

if.then:                                          ; preds = %do.end3
  %12 = load %struct.bus_attribute*, %struct.bus_attribute** %bus_attr, align 8, !dbg !4636
  %show6 = getelementptr inbounds %struct.bus_attribute, %struct.bus_attribute* %12, i32 0, i32 1, !dbg !4637
  %13 = load i64 (%struct.bus_type*, i8*)*, i64 (%struct.bus_type*, i8*)** %show6, align 8, !dbg !4637
  %14 = load %struct.subsys_private*, %struct.subsys_private** %subsys_priv, align 8, !dbg !4638
  %bus = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %14, i32 0, i32 9, !dbg !4639
  %15 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !4639
  %16 = load i8*, i8** %buf.addr, align 8, !dbg !4640
  %call = call i64 %13(%struct.bus_type* %15, i8* %16) #8, !dbg !4636
  store i64 %call, i64* %ret, align 8, !dbg !4641
  br label %if.end, !dbg !4642

if.end:                                           ; preds = %if.then, %do.end3
  %17 = load i64, i64* %ret, align 8, !dbg !4643
  ret i64 %17, !dbg !4644
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bus_attr_store(%struct.kobject* %kobj, %struct.attribute* %attr, i8* %buf, i64 %count) #0 !dbg !4645 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %bus_attr = alloca %struct.bus_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.bus_attribute*, align 8
  %subsys_priv = alloca %struct.subsys_private*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.subsys_private*, align 8
  %ret = alloca i64, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4646, metadata !DIExpression()), !dbg !4647
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !4648, metadata !DIExpression()), !dbg !4649
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4650, metadata !DIExpression()), !dbg !4651
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4652, metadata !DIExpression()), !dbg !4653
  call void @llvm.dbg.declare(metadata %struct.bus_attribute** %bus_attr, metadata !4654, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4656, metadata !DIExpression()), !dbg !4658
  %0 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !4658
  %1 = bitcast %struct.attribute* %0 to i8*, !dbg !4658
  store i8* %1, i8** %__mptr, align 8, !dbg !4658
  br label %do.body, !dbg !4658

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4659

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4658
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4658
  %3 = bitcast i8* %add.ptr to %struct.bus_attribute*, !dbg !4658
  store %struct.bus_attribute* %3, %struct.bus_attribute** %tmp, align 8, !dbg !4659
  %4 = load %struct.bus_attribute*, %struct.bus_attribute** %tmp, align 8, !dbg !4658
  store %struct.bus_attribute* %4, %struct.bus_attribute** %bus_attr, align 8, !dbg !4655
  call void @llvm.dbg.declare(metadata %struct.subsys_private** %subsys_priv, metadata !4661, metadata !DIExpression()), !dbg !4662
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !4663, metadata !DIExpression()), !dbg !4665
  %5 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4665
  %6 = bitcast %struct.kobject* %5 to i8*, !dbg !4665
  store i8* %6, i8** %__mptr1, align 8, !dbg !4665
  br label %do.body2, !dbg !4665

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !4666

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !4665
  %add.ptr5 = getelementptr i8, i8* %7, i64 -16, !dbg !4665
  %8 = bitcast i8* %add.ptr5 to %struct.subsys_private*, !dbg !4665
  store %struct.subsys_private* %8, %struct.subsys_private** %tmp4, align 8, !dbg !4666
  %9 = load %struct.subsys_private*, %struct.subsys_private** %tmp4, align 8, !dbg !4665
  store %struct.subsys_private* %9, %struct.subsys_private** %subsys_priv, align 8, !dbg !4662
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !4668, metadata !DIExpression()), !dbg !4669
  store i64 0, i64* %ret, align 8, !dbg !4669
  %10 = load %struct.bus_attribute*, %struct.bus_attribute** %bus_attr, align 8, !dbg !4670
  %store = getelementptr inbounds %struct.bus_attribute, %struct.bus_attribute* %10, i32 0, i32 2, !dbg !4672
  %11 = load i64 (%struct.bus_type*, i8*, i64)*, i64 (%struct.bus_type*, i8*, i64)** %store, align 8, !dbg !4672
  %tobool = icmp ne i64 (%struct.bus_type*, i8*, i64)* %11, null, !dbg !4670
  br i1 %tobool, label %if.then, label %if.end, !dbg !4673

if.then:                                          ; preds = %do.end3
  %12 = load %struct.bus_attribute*, %struct.bus_attribute** %bus_attr, align 8, !dbg !4674
  %store6 = getelementptr inbounds %struct.bus_attribute, %struct.bus_attribute* %12, i32 0, i32 2, !dbg !4675
  %13 = load i64 (%struct.bus_type*, i8*, i64)*, i64 (%struct.bus_type*, i8*, i64)** %store6, align 8, !dbg !4675
  %14 = load %struct.subsys_private*, %struct.subsys_private** %subsys_priv, align 8, !dbg !4676
  %bus = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %14, i32 0, i32 9, !dbg !4677
  %15 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !4677
  %16 = load i8*, i8** %buf.addr, align 8, !dbg !4678
  %17 = load i64, i64* %count.addr, align 8, !dbg !4679
  %call = call i64 %13(%struct.bus_type* %15, i8* %16, i64 %17) #8, !dbg !4674
  store i64 %call, i64* %ret, align 8, !dbg !4680
  br label %if.end, !dbg !4681

if.end:                                           ; preds = %if.then, %do.end3
  %18 = load i64, i64* %ret, align 8, !dbg !4682
  ret i64 %18, !dbg !4683
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bus_uevent_store(%struct.bus_type* %bus, i8* %buf, i64 %count) #0 !dbg !4684 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !4685, metadata !DIExpression()), !dbg !4686
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4687, metadata !DIExpression()), !dbg !4688
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4689, metadata !DIExpression()), !dbg !4690
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4691, metadata !DIExpression()), !dbg !4692
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !4693
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i32 0, i32 20, !dbg !4694
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !4694
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i32 0, i32 0, !dbg !4695
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %subsys, i32 0, i32 2, !dbg !4696
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !4697
  %3 = load i64, i64* %count.addr, align 8, !dbg !4698
  %call = call i32 @kobject_synth_uevent(%struct.kobject* %kobj, i8* %2, i64 %3) #8, !dbg !4699
  store i32 %call, i32* %rc, align 4, !dbg !4700
  %4 = load i32, i32* %rc, align 4, !dbg !4701
  %tobool = icmp ne i32 %4, 0, !dbg !4701
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4701

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %rc, align 4, !dbg !4702
  %conv = sext i32 %5 to i64, !dbg !4702
  br label %cond.end, !dbg !4701

cond.false:                                       ; preds = %entry
  %6 = load i64, i64* %count.addr, align 8, !dbg !4703
  br label %cond.end, !dbg !4701

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %6, %cond.false ], !dbg !4701
  ret i64 %cond, !dbg !4704
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @drivers_probe_store(%struct.bus_type* %bus, i8* %buf, i64 %count) #0 !dbg !4705 {
entry:
  %retval = alloca i64, align 8
  %bus.addr = alloca %struct.bus_type*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %dev = alloca %struct.device*, align 8
  %err = alloca i32, align 4
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !4706, metadata !DIExpression()), !dbg !4707
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4708, metadata !DIExpression()), !dbg !4709
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4710, metadata !DIExpression()), !dbg !4711
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4712, metadata !DIExpression()), !dbg !4713
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4714, metadata !DIExpression()), !dbg !4715
  store i32 -22, i32* %err, align 4, !dbg !4715
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !4716
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !4717
  %call = call %struct.device* @bus_find_device_by_name(%struct.bus_type* %0, %struct.device* null, i8* %1) #8, !dbg !4718
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !4719
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4720
  %tobool = icmp ne %struct.device* %2, null, !dbg !4720
  br i1 %tobool, label %if.end, label %if.then, !dbg !4722

if.then:                                          ; preds = %entry
  store i64 -19, i64* %retval, align 8, !dbg !4723
  br label %return, !dbg !4723

if.end:                                           ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4724
  %call1 = call i32 @bus_rescan_devices_helper(%struct.device* %3, i8* null) #8, !dbg !4726
  %cmp = icmp eq i32 %call1, 0, !dbg !4727
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4728

if.then2:                                         ; preds = %if.end
  %4 = load i64, i64* %count.addr, align 8, !dbg !4729
  %conv = trunc i64 %4 to i32, !dbg !4729
  store i32 %conv, i32* %err, align 4, !dbg !4730
  br label %if.end3, !dbg !4731

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4732
  call void @put_device(%struct.device* %5) #8, !dbg !4733
  %6 = load i32, i32* %err, align 4, !dbg !4734
  %conv4 = sext i32 %6 to i64, !dbg !4734
  store i64 %conv4, i64* %retval, align 8, !dbg !4735
  br label %return, !dbg !4735

return:                                           ; preds = %if.end3, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !4736
  ret i64 %7, !dbg !4736
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @drivers_autoprobe_show(%struct.bus_type* %bus, i8* %buf) #0 !dbg !4737 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !4738, metadata !DIExpression()), !dbg !4739
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4740, metadata !DIExpression()), !dbg !4741
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !4742
  %1 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !4743
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %1, i32 0, i32 20, !dbg !4744
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !4744
  %drivers_autoprobe = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %2, i32 0, i32 8, !dbg !4745
  %bf.load = load i8, i8* %drivers_autoprobe, align 8, !dbg !4745
  %bf.clear = and i8 %bf.load, 1, !dbg !4745
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4745
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %bf.cast) #8, !dbg !4746
  %conv = sext i32 %call to i64, !dbg !4746
  ret i64 %conv, !dbg !4747
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @drivers_autoprobe_store(%struct.bus_type* %bus, i8* %buf, i64 %count) #0 !dbg !4748 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !4749, metadata !DIExpression()), !dbg !4750
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4751, metadata !DIExpression()), !dbg !4752
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4753, metadata !DIExpression()), !dbg !4754
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !4755
  %arrayidx = getelementptr i8, i8* %0, i64 0, !dbg !4755
  %1 = load i8, i8* %arrayidx, align 1, !dbg !4755
  %conv = sext i8 %1 to i32, !dbg !4755
  %cmp = icmp eq i32 %conv, 48, !dbg !4757
  br i1 %cmp, label %if.then, label %if.else, !dbg !4758

if.then:                                          ; preds = %entry
  %2 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !4759
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %2, i32 0, i32 20, !dbg !4760
  %3 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !4760
  %drivers_autoprobe = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %3, i32 0, i32 8, !dbg !4761
  %bf.load = load i8, i8* %drivers_autoprobe, align 8, !dbg !4762
  %bf.clear = and i8 %bf.load, -2, !dbg !4762
  store i8 %bf.clear, i8* %drivers_autoprobe, align 8, !dbg !4762
  br label %if.end, !dbg !4759

if.else:                                          ; preds = %entry
  %4 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !4763
  %p2 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %4, i32 0, i32 20, !dbg !4764
  %5 = load %struct.subsys_private*, %struct.subsys_private** %p2, align 8, !dbg !4764
  %drivers_autoprobe3 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %5, i32 0, i32 8, !dbg !4765
  %bf.load4 = load i8, i8* %drivers_autoprobe3, align 8, !dbg !4766
  %bf.clear5 = and i8 %bf.load4, -2, !dbg !4766
  %bf.set = or i8 %bf.clear5, 1, !dbg !4766
  store i8 %bf.set, i8* %drivers_autoprobe3, align 8, !dbg !4766
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i64, i64* %count.addr, align 8, !dbg !4767
  ret i64 %6, !dbg !4768
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_emit(i8*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_groups(%struct.kobject*, %struct.attribute_group**) #2

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_groups(%struct.kobject*, %struct.attribute_group**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_move_tail(%struct.list_head* %list, %struct.list_head* %head) #0 !dbg !4769 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4770, metadata !DIExpression()), !dbg !4771
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4772, metadata !DIExpression()), !dbg !4773
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4774
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !4775
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4776
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4777
  call void @list_add_tail(%struct.list_head* %1, %struct.list_head* %2) #8, !dbg !4778
  ret void, !dbg !4779
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !4780 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4781, metadata !DIExpression()), !dbg !4782
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4783
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #8, !dbg !4785
  br i1 %call, label %if.end, label %if.then, !dbg !4786

if.then:                                          ; preds = %entry
  br label %return, !dbg !4787

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4788
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4789
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4789
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4790
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4791
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4791
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #8, !dbg !4792
  br label %return, !dbg !4793

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4793
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !4794 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4797, metadata !DIExpression()), !dbg !4798
  ret i1 true, !dbg !4799
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4800 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4801, metadata !DIExpression()), !dbg !4802
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4803, metadata !DIExpression()), !dbg !4804
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4805
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4806
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4807
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !4808
  br label %do.body, !dbg !4809

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !4810

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4812

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4810

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4814
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4814
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4814
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !4814
  br label %do.end5, !dbg !4814

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4810

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !4816
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !4817 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4820, metadata !DIExpression()), !dbg !4821
  br label %do.body, !dbg !4822

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4824

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4822
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !4822
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4822
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !4824
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !4822
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4826
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !4827
  %conv = zext i1 %cmp to i32, !dbg !4827
  ret i32 %conv, !dbg !4828
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_splice(%struct.list_head* %list, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4829 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  %first = alloca %struct.list_head*, align 8
  %last = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4832, metadata !DIExpression()), !dbg !4833
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4834, metadata !DIExpression()), !dbg !4835
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4836, metadata !DIExpression()), !dbg !4837
  call void @llvm.dbg.declare(metadata %struct.list_head** %first, metadata !4838, metadata !DIExpression()), !dbg !4839
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4840
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !4841
  %1 = load %struct.list_head*, %struct.list_head** %next1, align 8, !dbg !4841
  store %struct.list_head* %1, %struct.list_head** %first, align 8, !dbg !4839
  call void @llvm.dbg.declare(metadata %struct.list_head** %last, metadata !4842, metadata !DIExpression()), !dbg !4843
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4844
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !4845
  %3 = load %struct.list_head*, %struct.list_head** %prev2, align 8, !dbg !4845
  store %struct.list_head* %3, %struct.list_head** %last, align 8, !dbg !4843
  %4 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4846
  %5 = load %struct.list_head*, %struct.list_head** %first, align 8, !dbg !4847
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i32 0, i32 1, !dbg !4848
  store %struct.list_head* %4, %struct.list_head** %prev3, align 8, !dbg !4849
  %6 = load %struct.list_head*, %struct.list_head** %first, align 8, !dbg !4850
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4851
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %7, i32 0, i32 0, !dbg !4852
  store %struct.list_head* %6, %struct.list_head** %next4, align 8, !dbg !4853
  %8 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4854
  %9 = load %struct.list_head*, %struct.list_head** %last, align 8, !dbg !4855
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %9, i32 0, i32 0, !dbg !4856
  store %struct.list_head* %8, %struct.list_head** %next5, align 8, !dbg !4857
  %10 = load %struct.list_head*, %struct.list_head** %last, align 8, !dbg !4858
  %11 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4859
  %prev6 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i32 0, i32 1, !dbg !4860
  store %struct.list_head* %10, %struct.list_head** %prev6, align 8, !dbg !4861
  ret void, !dbg !4862
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4863 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4866, metadata !DIExpression()), !dbg !4867
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4868, metadata !DIExpression()), !dbg !4869
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4870, metadata !DIExpression()), !dbg !4871
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4872
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4874
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4875
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !4876
  br i1 %call, label %if.end, label %if.then, !dbg !4877

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4878

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4879
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4880
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !4881
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !4882
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4883
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4884
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !4885
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !4886
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4887
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4888
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !4889
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !4890
  br label %do.body, !dbg !4891

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4892

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4894

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4892

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4896
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4896
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !4896
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !4896
  br label %do.end7, !dbg !4896

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4892

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4898
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4899 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4902, metadata !DIExpression()), !dbg !4903
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4904, metadata !DIExpression()), !dbg !4905
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4906, metadata !DIExpression()), !dbg !4907
  ret i1 true, !dbg !4908
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @system_root_device_release(%struct.device* %dev) #0 !dbg !4909 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4910, metadata !DIExpression()), !dbg !4911
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4912
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4912
  call void @kfree(i8* %1) #8, !dbg !4913
  ret void, !dbg !4914
}

; Function Attrs: noredzone
declare dso_local i32 @device_register(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bus_uevent_filter(%struct.kset* %kset, %struct.kobject* %kobj) #0 !dbg !4915 {
entry:
  %retval = alloca i32, align 4
  %kset.addr = alloca %struct.kset*, align 8
  %kobj.addr = alloca %struct.kobject*, align 8
  %ktype = alloca %struct.kobj_type*, align 8
  store %struct.kset* %kset, %struct.kset** %kset.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kset** %kset.addr, metadata !4916, metadata !DIExpression()), !dbg !4917
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4918, metadata !DIExpression()), !dbg !4919
  call void @llvm.dbg.declare(metadata %struct.kobj_type** %ktype, metadata !4920, metadata !DIExpression()), !dbg !4921
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4922
  %call = call %struct.kobj_type* @get_ktype(%struct.kobject* %0) #8, !dbg !4923
  store %struct.kobj_type* %call, %struct.kobj_type** %ktype, align 8, !dbg !4921
  %1 = load %struct.kobj_type*, %struct.kobj_type** %ktype, align 8, !dbg !4924
  %cmp = icmp eq %struct.kobj_type* %1, @bus_ktype, !dbg !4926
  br i1 %cmp, label %if.then, label %if.end, !dbg !4927

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !4928
  br label %return, !dbg !4928

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4929
  br label %return, !dbg !4929

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !4930
  ret i32 %2, !dbg !4930
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.kobj_type* @get_ktype(%struct.kobject* %kobj) #0 !dbg !4931 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4934, metadata !DIExpression()), !dbg !4935
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4936
  %ktype = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 4, !dbg !4937
  %1 = load %struct.kobj_type*, %struct.kobj_type** %ktype, align 8, !dbg !4937
  ret %struct.kobj_type* %1, !dbg !4938
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2136, !2137, !2138, !2139}
!llvm.ident = !{!2140}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "driver_ktype", scope: !2, file: !3, line: 94, type: !176, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !79, globals: !2106, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/bus.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !56, !63, !67, !74}
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
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !68, line: 305, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!71 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!72 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!73 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 10, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!76 = !{!77, !78}
!77 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!78 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!79 = !{!80, !81, !1464, !1608, !1594, !114, !1692, !2078, !2014, !2090, !2102, !2104}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_interface", file: !30, line: 62, size: 384, elements: !83)
!83 = !{!84, !88, !2069, !2070, !2074}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !82, file: !30, line: 63, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !82, file: !30, line: 64, baseType: !89, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !91, line: 82, size: 1408, elements: !92)
!91 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!92 = !{!93, !94, !95, !2041, !2042, !2043, !2044, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2064, !2065, !2068}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !90, file: !91, line: 83, baseType: !85, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !90, file: !91, line: 84, baseType: !85, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !90, file: !91, line: 85, baseType: !96, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !98)
!98 = !{!99, !1592, !1593, !1714, !1715, !1733, !1734, !1735, !1736, !1737, !1738, !1747, !1930, !1943, !1946, !1947, !1951, !1953, !1954, !1955, !1959, !1965, !1966, !1969, !1973, !1976, !1979, !1980, !1981, !1982, !2029, !2030, !2031, !2034, !2037, !2038, !2039, !2040}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !97, file: !30, line: 462, baseType: !100, size: 512)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !101, line: 64, size: 512, elements: !102)
!101 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104, !111, !113, !174, !1428, !1582, !1587, !1588, !1589, !1590, !1591}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !100, file: !101, line: 65, baseType: !85, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !100, file: !101, line: 66, baseType: !105, size: 128, offset: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !106, line: 178, size: 128, elements: !107)
!106 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !110}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !106, line: 179, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !105, file: !106, line: 179, baseType: !109, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !100, file: !101, line: 67, baseType: !112, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !100, file: !101, line: 68, baseType: !114, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !101, line: 192, size: 704, elements: !116)
!116 = !{!117, !118, !134, !135}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !115, file: !101, line: 193, baseType: !105, size: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !115, file: !101, line: 194, baseType: !119, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !120, line: 83, baseType: !121)
!120 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !120, line: 71, elements: !122)
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, scope: !121, file: !120, line: 72, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !121, file: !120, line: 72, elements: !125)
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !124, file: !120, line: 73, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !120, line: 20, elements: !128)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !127, file: !120, line: 21, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !131, line: 25, baseType: !132)
!131 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 25, elements: !133)
!133 = !{}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !115, file: !101, line: 195, baseType: !100, size: 512, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !115, file: !101, line: 196, baseType: !136, size: 64, offset: 640)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !101, line: 156, size: 192, elements: !139)
!139 = !{!140, !146, !151}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !138, file: !101, line: 157, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!145, !114, !112}
!145 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !138, file: !101, line: 158, baseType: !147, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!85, !114, !112}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !138, file: !101, line: 159, baseType: !152, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!145, !114, !112, !156}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !101, line: 148, size: 20736, elements: !158)
!158 = !{!159, !164, !168, !169, !173}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !157, file: !101, line: 149, baseType: !160, size: 192)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 192, elements: !162)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!162 = !{!163}
!163 = !DISubrange(count: 3)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !157, file: !101, line: 150, baseType: !165, size: 4096, offset: 192)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 4096, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !157, file: !101, line: 151, baseType: !145, size: 32, offset: 4288)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !157, file: !101, line: 152, baseType: !170, size: 16384, offset: 4320)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 16384, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 2048)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !157, file: !101, line: 153, baseType: !145, size: 32, offset: 20704)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !100, file: !101, line: 69, baseType: !175, size: 64, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !101, line: 138, size: 448, elements: !177)
!177 = !{!178, !182, !212, !214, !1374, !1407, !1411}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !176, file: !101, line: 139, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !112}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !176, file: !101, line: 140, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !186, line: 230, size: 128, elements: !187)
!186 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!187 = !{!188, !204}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !185, file: !186, line: 231, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!192, !112, !197, !161}
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !106, line: 60, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !194, line: 73, baseType: !195)
!194 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !194, line: 15, baseType: !196)
!196 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !186, line: 30, size: 128, elements: !199)
!199 = !{!200, !201}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !186, line: 31, baseType: !85, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !198, file: !186, line: 32, baseType: !202, size: 16, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !106, line: 19, baseType: !203)
!203 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !185, file: !186, line: 232, baseType: !205, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!192, !112, !197, !85, !208}
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !106, line: 55, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !194, line: 72, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !194, line: 16, baseType: !211)
!211 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !176, file: !101, line: 141, baseType: !213, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !176, file: !101, line: 142, baseType: !215, size: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !186, line: 84, size: 320, elements: !219)
!219 = !{!220, !221, !225, !1371, !1372}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !218, file: !186, line: 85, baseType: !85, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !218, file: !186, line: 86, baseType: !222, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!202, !112, !197, !145}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !218, file: !186, line: 88, baseType: !226, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!202, !112, !229, !145}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !186, line: 168, size: 448, elements: !231)
!231 = !{!232, !233, !234, !235, !245, !246}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !230, file: !186, line: 169, baseType: !198, size: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !230, file: !186, line: 170, baseType: !208, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !230, file: !186, line: 171, baseType: !80, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !230, file: !186, line: 172, baseType: !236, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!192, !239, !112, !229, !161, !242, !208}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !241, line: 526, flags: DIFlagFwdDecl)
!241 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !106, line: 46, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !194, line: 88, baseType: !244)
!244 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !230, file: !186, line: 174, baseType: !236, size: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !230, file: !186, line: 176, baseType: !247, size: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!145, !239, !112, !229, !250}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !252, line: 305, size: 1472, elements: !253)
!252 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!253 = !{!254, !255, !256, !257, !258, !266, !267, !1345, !1351, !1352, !1357, !1358, !1361, !1365, !1366, !1367, !1368, !1369}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !251, file: !252, line: 308, baseType: !211, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !251, file: !252, line: 309, baseType: !211, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !251, file: !252, line: 313, baseType: !250, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !251, file: !252, line: 313, baseType: !250, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !251, file: !252, line: 315, baseType: !259, size: 192, align: 64, offset: 256)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !260, line: 24, size: 192, align: 64, elements: !261)
!260 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!261 = !{!262, !263, !265}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !259, file: !260, line: 25, baseType: !211, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !259, file: !260, line: 26, baseType: !264, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !259, file: !260, line: 27, baseType: !264, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !251, file: !252, line: 323, baseType: !211, size: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !251, file: !252, line: 327, baseType: !268, size: 64, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !252, line: 388, size: 7296, elements: !270)
!270 = !{!271, !1341}
!271 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !252, line: 389, baseType: !272, size: 7296)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !269, file: !252, line: 389, size: 7296, elements: !273)
!273 = !{!274, !275, !279, !285, !289, !290, !291, !292, !293, !301, !306, !307, !308, !309, !318, !319, !320, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !355, !363, !366, !414, !415, !1311, !1312, !1315, !1319, !1320, !1323, !1324, !1325, !1328, !1340}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !272, file: !252, line: 390, baseType: !250, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !272, file: !252, line: 391, baseType: !276, size: 64, offset: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !260, line: 31, size: 64, elements: !277)
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !276, file: !260, line: 32, baseType: !264, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !272, file: !252, line: 392, baseType: !280, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !281, line: 23, baseType: !282)
!281 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !283, line: 31, baseType: !284)
!283 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!284 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !272, file: !252, line: 394, baseType: !286, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!211, !239, !211, !211, !211, !211}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !272, file: !252, line: 398, baseType: !211, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !272, file: !252, line: 399, baseType: !211, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !272, file: !252, line: 405, baseType: !211, size: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !272, file: !252, line: 406, baseType: !211, size: 64, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !272, file: !252, line: 407, baseType: !294, size: 64, offset: 512)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !241, line: 286, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 286, size: 64, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !296, file: !241, line: 286, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !300, line: 18, baseType: !211)
!300 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!301 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !272, file: !252, line: 416, baseType: !302, size: 32, offset: 576)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !106, line: 168, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !106, line: 166, size: 32, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !303, file: !106, line: 167, baseType: !145, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !272, file: !252, line: 428, baseType: !302, size: 32, offset: 608)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !272, file: !252, line: 437, baseType: !302, size: 32, offset: 640)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !272, file: !252, line: 447, baseType: !302, size: 32, offset: 672)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !272, file: !252, line: 450, baseType: !310, size: 64, offset: 704)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !311, line: 13, baseType: !312)
!311 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !106, line: 175, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !106, line: 173, size: 64, elements: !314)
!314 = !{!315}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !313, file: !106, line: 174, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !281, line: 22, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !283, line: 30, baseType: !244)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !272, file: !252, line: 452, baseType: !145, size: 32, offset: 768)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !272, file: !252, line: 454, baseType: !119, offset: 800)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !272, file: !252, line: 457, baseType: !321, size: 256, offset: 832)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !322, line: 35, size: 256, elements: !323)
!322 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!323 = !{!324, !325, !326, !328}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !321, file: !322, line: 36, baseType: !310, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !321, file: !322, line: 42, baseType: !310, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !321, file: !322, line: 46, baseType: !327, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !120, line: 29, baseType: !127)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !321, file: !322, line: 47, baseType: !105, size: 128, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !272, file: !252, line: 459, baseType: !105, size: 128, offset: 1088)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !272, file: !252, line: 466, baseType: !211, size: 64, offset: 1216)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !272, file: !252, line: 467, baseType: !211, size: 64, offset: 1280)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !272, file: !252, line: 469, baseType: !211, size: 64, offset: 1344)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !272, file: !252, line: 470, baseType: !211, size: 64, offset: 1408)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !272, file: !252, line: 471, baseType: !312, size: 64, offset: 1472)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !272, file: !252, line: 472, baseType: !211, size: 64, offset: 1536)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !272, file: !252, line: 473, baseType: !211, size: 64, offset: 1600)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !272, file: !252, line: 474, baseType: !211, size: 64, offset: 1664)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !272, file: !252, line: 475, baseType: !211, size: 64, offset: 1728)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !272, file: !252, line: 477, baseType: !119, offset: 1792)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !272, file: !252, line: 478, baseType: !211, size: 64, offset: 1792)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !272, file: !252, line: 478, baseType: !211, size: 64, offset: 1856)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !272, file: !252, line: 478, baseType: !211, size: 64, offset: 1920)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !272, file: !252, line: 478, baseType: !211, size: 64, offset: 1984)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !272, file: !252, line: 479, baseType: !211, size: 64, offset: 2048)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !272, file: !252, line: 479, baseType: !211, size: 64, offset: 2112)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !272, file: !252, line: 479, baseType: !211, size: 64, offset: 2176)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !272, file: !252, line: 480, baseType: !211, size: 64, offset: 2240)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !272, file: !252, line: 480, baseType: !211, size: 64, offset: 2304)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !272, file: !252, line: 480, baseType: !211, size: 64, offset: 2368)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !272, file: !252, line: 480, baseType: !211, size: 64, offset: 2432)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !272, file: !252, line: 482, baseType: !352, size: 2816, offset: 2496)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 2816, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 44)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !272, file: !252, line: 488, baseType: !356, size: 256, offset: 5312)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !357, line: 60, size: 256, elements: !358)
!357 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !356, file: !357, line: 61, baseType: !360, size: 256)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 256, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 4)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !272, file: !252, line: 490, baseType: !364, size: 64, offset: 5568)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !252, line: 490, flags: DIFlagFwdDecl)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !272, file: !252, line: 493, baseType: !367, size: 896, offset: 5632)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !368, line: 53, baseType: !369)
!368 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 13, size: 896, elements: !370)
!370 = !{!371, !372, !373, !374, !377, !378, !385, !386, !406, !407, !410}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !369, file: !368, line: 18, baseType: !280, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !369, file: !368, line: 28, baseType: !312, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !369, file: !368, line: 31, baseType: !321, size: 256, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !369, file: !368, line: 32, baseType: !375, size: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !368, line: 32, flags: DIFlagFwdDecl)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !369, file: !368, line: 37, baseType: !203, size: 16, offset: 448)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !369, file: !368, line: 40, baseType: !379, size: 192, offset: 512)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !380, line: 53, size: 192, elements: !381)
!380 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!381 = !{!382, !383, !384}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !379, file: !380, line: 54, baseType: !310, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !379, file: !380, line: 55, baseType: !119, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !379, file: !380, line: 59, baseType: !105, size: 128, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !369, file: !368, line: 41, baseType: !80, size: 64, offset: 704)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !369, file: !368, line: 42, baseType: !387, size: 64, offset: 768)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !390, line: 13, size: 896, elements: !391)
!390 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!391 = !{!392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !389, file: !390, line: 14, baseType: !80, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !389, file: !390, line: 15, baseType: !211, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !389, file: !390, line: 17, baseType: !211, size: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !389, file: !390, line: 17, baseType: !211, size: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !389, file: !390, line: 19, baseType: !196, size: 64, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !389, file: !390, line: 21, baseType: !196, size: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !389, file: !390, line: 22, baseType: !196, size: 64, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !389, file: !390, line: 23, baseType: !196, size: 64, offset: 448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !389, file: !390, line: 24, baseType: !196, size: 64, offset: 512)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !389, file: !390, line: 25, baseType: !196, size: 64, offset: 576)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !389, file: !390, line: 26, baseType: !196, size: 64, offset: 640)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !389, file: !390, line: 27, baseType: !196, size: 64, offset: 704)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !389, file: !390, line: 28, baseType: !196, size: 64, offset: 768)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !389, file: !390, line: 29, baseType: !196, size: 64, offset: 832)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !369, file: !368, line: 44, baseType: !302, size: 32, offset: 832)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !369, file: !368, line: 50, baseType: !408, size: 16, offset: 864)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !281, line: 19, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !283, line: 24, baseType: !203)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !369, file: !368, line: 51, baseType: !411, size: 16, offset: 880)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !281, line: 18, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !283, line: 23, baseType: !413)
!413 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !272, file: !252, line: 495, baseType: !211, size: 64, offset: 6528)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !272, file: !252, line: 497, baseType: !416, size: 64, offset: 6592)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !252, line: 381, size: 384, elements: !418)
!418 = !{!419, !420, !1310}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !417, file: !252, line: 382, baseType: !302, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !417, file: !252, line: 383, baseType: !421, size: 128, offset: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !252, line: 376, size: 128, elements: !422)
!422 = !{!423, !1308}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !421, file: !252, line: 377, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !426, line: 640, size: 48640, elements: !427)
!426 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!427 = !{!428, !436, !438, !439, !445, !446, !447, !448, !449, !450, !451, !452, !456, !474, !485, !580, !581, !582, !593, !594, !596, !597, !598, !599, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !678, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !734, !736, !737, !738, !750, !752, !753, !754, !755, !756, !762, !763, !764, !765, !766, !767, !768, !780, !785, !789, !790, !791, !794, !798, !801, !804, !807, !810, !813, !816, !819, !825, !826, !827, !833, !834, !835, !836, !837, !846, !847, !848, !849, !850, !855, !856, !857, !860, !861, !864, !867, !870, !873, !876, !879, !880, !960, !963, !966, !967, !970, !971, !972, !978, !979, !980, !993, !994, !995, !1007, !1012, !1015, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !425, file: !426, line: 646, baseType: !429, size: 128)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !430, line: 56, size: 128, elements: !431)
!430 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !429, file: !430, line: 57, baseType: !211, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !429, file: !430, line: 58, baseType: !434, size: 32, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !281, line: 21, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !283, line: 27, baseType: !7)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !425, file: !426, line: 649, baseType: !437, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !196)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !425, file: !426, line: 657, baseType: !80, size: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !425, file: !426, line: 658, baseType: !440, size: 32, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !441, line: 113, baseType: !442)
!441 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !441, line: 111, size: 32, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !442, file: !441, line: 112, baseType: !302, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !425, file: !426, line: 660, baseType: !7, size: 32, offset: 288)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !425, file: !426, line: 661, baseType: !7, size: 32, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !425, file: !426, line: 684, baseType: !145, size: 32, offset: 352)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !425, file: !426, line: 686, baseType: !145, size: 32, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !425, file: !426, line: 687, baseType: !145, size: 32, offset: 416)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !425, file: !426, line: 688, baseType: !145, size: 32, offset: 448)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !425, file: !426, line: 689, baseType: !7, size: 32, offset: 480)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !425, file: !426, line: 691, baseType: !453, size: 64, offset: 512)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !426, line: 691, flags: DIFlagFwdDecl)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !425, file: !426, line: 692, baseType: !457, size: 832, offset: 576)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !426, line: 451, size: 832, elements: !458)
!458 = !{!459, !464, !465, !466, !467, !468, !469, !470, !471, !472}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !457, file: !426, line: 453, baseType: !460, size: 128)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !426, line: 325, size: 128, elements: !461)
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !460, file: !426, line: 326, baseType: !211, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !460, file: !426, line: 327, baseType: !434, size: 32, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !457, file: !426, line: 454, baseType: !259, size: 192, align: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !457, file: !426, line: 455, baseType: !105, size: 128, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !457, file: !426, line: 456, baseType: !7, size: 32, offset: 448)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !457, file: !426, line: 458, baseType: !280, size: 64, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !457, file: !426, line: 459, baseType: !280, size: 64, offset: 576)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !457, file: !426, line: 460, baseType: !280, size: 64, offset: 640)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !457, file: !426, line: 461, baseType: !280, size: 64, offset: 704)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !457, file: !426, line: 463, baseType: !280, size: 64, offset: 768)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !457, file: !426, line: 465, baseType: !473, offset: 832)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !426, line: 415, elements: !133)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !425, file: !426, line: 693, baseType: !475, size: 384, offset: 1408)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !426, line: 489, size: 384, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482, !483}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !475, file: !426, line: 490, baseType: !105, size: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !475, file: !426, line: 491, baseType: !211, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !475, file: !426, line: 492, baseType: !211, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !475, file: !426, line: 493, baseType: !7, size: 32, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !475, file: !426, line: 494, baseType: !203, size: 16, offset: 288)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !475, file: !426, line: 495, baseType: !203, size: 16, offset: 304)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !475, file: !426, line: 497, baseType: !484, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !425, file: !426, line: 697, baseType: !486, size: 1792, offset: 1792)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !426, line: 507, size: 1792, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !577, !578}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !486, file: !426, line: 508, baseType: !259, size: 192, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !486, file: !426, line: 515, baseType: !280, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !486, file: !426, line: 516, baseType: !280, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !486, file: !426, line: 517, baseType: !280, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !486, file: !426, line: 518, baseType: !280, size: 64, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !486, file: !426, line: 519, baseType: !280, size: 64, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !486, file: !426, line: 526, baseType: !316, size: 64, offset: 512)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !486, file: !426, line: 527, baseType: !280, size: 64, offset: 576)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !486, file: !426, line: 528, baseType: !7, size: 32, offset: 640)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !486, file: !426, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !486, file: !426, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !486, file: !426, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !486, file: !426, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !486, file: !426, line: 563, baseType: !502, size: 512, offset: 704)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !503)
!503 = !{!504, !512, !513, !518, !570, !574, !575, !576}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !502, file: !6, line: 119, baseType: !505, size: 256)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !506, line: 9, size: 256, elements: !507)
!506 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!507 = !{!508, !509}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !505, file: !506, line: 10, baseType: !259, size: 192, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !505, file: !506, line: 11, baseType: !510, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !511, line: 29, baseType: !316)
!511 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !502, file: !6, line: 120, baseType: !510, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !502, file: !6, line: 121, baseType: !514, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!5, !517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !502, file: !6, line: 122, baseType: !519, size: 64, offset: 384)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !521)
!521 = !{!522, !542, !543, !546, !556, !557, !565, !569}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !520, file: !6, line: 160, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !525)
!525 = !{!526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !524, file: !6, line: 215, baseType: !327)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !524, file: !6, line: 216, baseType: !7, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !524, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !524, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !524, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !524, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !524, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !524, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !524, file: !6, line: 233, baseType: !510, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !524, file: !6, line: 234, baseType: !517, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !524, file: !6, line: 235, baseType: !510, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !524, file: !6, line: 236, baseType: !517, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !524, file: !6, line: 237, baseType: !539, size: 4096, offset: 512)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 4096, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 8)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !520, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !520, file: !6, line: 162, baseType: !544, size: 32, offset: 96)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !106, line: 27, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !194, line: 96, baseType: !145)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !520, file: !6, line: 163, baseType: !547, size: 32, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !548, line: 276, baseType: !549)
!548 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !548, line: 276, size: 32, elements: !550)
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !549, file: !548, line: 276, baseType: !552, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !548, line: 70, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !548, line: 65, size: 32, elements: !554)
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !553, file: !548, line: 66, baseType: !7, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !520, file: !6, line: 164, baseType: !517, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !520, file: !6, line: 165, baseType: !558, size: 128, offset: 256)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !506, line: 14, size: 128, elements: !559)
!559 = !{!560}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !558, file: !506, line: 15, baseType: !561, size: 128)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !260, line: 125, size: 128, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !561, file: !260, line: 126, baseType: !276, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !561, file: !260, line: 127, baseType: !264, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !520, file: !6, line: 166, baseType: !566, size: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!510}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !520, file: !6, line: 167, baseType: !510, size: 64, offset: 448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !502, file: !6, line: 123, baseType: !571, size: 8, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !281, line: 17, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !283, line: 21, baseType: !573)
!573 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !502, file: !6, line: 124, baseType: !571, size: 8, offset: 456)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !502, file: !6, line: 125, baseType: !571, size: 8, offset: 464)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !502, file: !6, line: 126, baseType: !571, size: 8, offset: 472)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !486, file: !426, line: 572, baseType: !502, size: 512, offset: 1216)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !486, file: !426, line: 580, baseType: !579, size: 64, offset: 1728)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !425, file: !426, line: 721, baseType: !7, size: 32, offset: 3584)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !425, file: !426, line: 722, baseType: !145, size: 32, offset: 3616)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !425, file: !426, line: 723, baseType: !583, size: 64, offset: 3648)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !586, line: 17, baseType: !587)
!586 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !586, line: 17, size: 64, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !587, file: !586, line: 17, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 64, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 1)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !425, file: !426, line: 724, baseType: !585, size: 64, offset: 3712)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !425, file: !426, line: 749, baseType: !595, offset: 3776)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !426, line: 290, elements: !133)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !425, file: !426, line: 751, baseType: !105, size: 128, offset: 3776)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !425, file: !426, line: 757, baseType: !268, size: 64, offset: 3904)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !425, file: !426, line: 758, baseType: !268, size: 64, offset: 3968)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !425, file: !426, line: 761, baseType: !600, size: 320, offset: 4032)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !357, line: 34, size: 320, elements: !601)
!601 = !{!602, !603}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !600, file: !357, line: 35, baseType: !280, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !600, file: !357, line: 36, baseType: !604, size: 256, offset: 64)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 256, elements: !361)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !425, file: !426, line: 766, baseType: !145, size: 32, offset: 4352)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !425, file: !426, line: 767, baseType: !145, size: 32, offset: 4384)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !425, file: !426, line: 768, baseType: !145, size: 32, offset: 4416)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !425, file: !426, line: 770, baseType: !145, size: 32, offset: 4448)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !425, file: !426, line: 772, baseType: !211, size: 64, offset: 4480)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !425, file: !426, line: 775, baseType: !7, size: 32, offset: 4544)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !425, file: !426, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !425, file: !426, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !425, file: !426, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !425, file: !426, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !425, file: !426, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !425, file: !426, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !425, file: !426, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !425, file: !426, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !425, file: !426, line: 831, baseType: !211, size: 64, offset: 4672)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !425, file: !426, line: 833, baseType: !621, size: 384, offset: 4736)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !622)
!622 = !{!623, !628}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !621, file: !12, line: 26, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!196, !627}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !12, line: 27, baseType: !629, size: 320, offset: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !12, line: 27, size: 320, elements: !630)
!630 = !{!631, !641, !668}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !629, file: !12, line: 36, baseType: !632, size: 320)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !629, file: !12, line: 29, size: 320, elements: !633)
!633 = !{!634, !636, !637, !638, !639, !640}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !632, file: !12, line: 30, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !632, file: !12, line: 31, baseType: !434, size: 32, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !12, line: 32, baseType: !434, size: 32, offset: 96)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !632, file: !12, line: 33, baseType: !434, size: 32, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !632, file: !12, line: 34, baseType: !280, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !632, file: !12, line: 35, baseType: !635, size: 64, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !629, file: !12, line: 46, baseType: !642, size: 192)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !629, file: !12, line: 38, size: 192, elements: !643)
!643 = !{!644, !645, !646, !667}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !642, file: !12, line: 39, baseType: !544, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !642, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, scope: !642, file: !12, line: 41, baseType: !647, size: 64, offset: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !642, file: !12, line: 41, size: 64, elements: !648)
!648 = !{!649, !657}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !647, file: !12, line: 42, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !652, line: 7, size: 128, elements: !653)
!652 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!653 = !{!654, !656}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !651, file: !652, line: 8, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !194, line: 93, baseType: !244)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !651, file: !652, line: 9, baseType: !244, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !647, file: !12, line: 43, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !660, line: 7, size: 64, elements: !661)
!660 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!661 = !{!662, !666}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !659, file: !660, line: 8, baseType: !663, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !660, line: 5, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !281, line: 20, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !283, line: 26, baseType: !145)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !659, file: !660, line: 9, baseType: !664, size: 32, offset: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !642, file: !12, line: 45, baseType: !280, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !629, file: !12, line: 54, baseType: !669, size: 256)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !629, file: !12, line: 48, size: 256, elements: !670)
!670 = !{!671, !674, !675, !676, !677}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !669, file: !12, line: 49, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !669, file: !12, line: 50, baseType: !145, size: 32, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !669, file: !12, line: 51, baseType: !145, size: 32, offset: 96)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !669, file: !12, line: 52, baseType: !211, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !669, file: !12, line: 53, baseType: !211, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !425, file: !426, line: 835, baseType: !679, size: 32, offset: 5120)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !106, line: 22, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !194, line: 28, baseType: !145)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !425, file: !426, line: 836, baseType: !679, size: 32, offset: 5152)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !425, file: !426, line: 840, baseType: !211, size: 64, offset: 5184)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !425, file: !426, line: 849, baseType: !424, size: 64, offset: 5248)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !425, file: !426, line: 852, baseType: !424, size: 64, offset: 5312)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !425, file: !426, line: 857, baseType: !105, size: 128, offset: 5376)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !425, file: !426, line: 858, baseType: !105, size: 128, offset: 5504)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !425, file: !426, line: 859, baseType: !424, size: 64, offset: 5632)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !425, file: !426, line: 867, baseType: !105, size: 128, offset: 5696)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !425, file: !426, line: 868, baseType: !105, size: 128, offset: 5824)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !425, file: !426, line: 871, baseType: !691, size: 64, offset: 5952)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !693, line: 59, size: 768, elements: !694)
!693 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!694 = !{!695, !696, !697, !698, !709, !710, !717, !726}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !692, file: !693, line: 61, baseType: !440, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !692, file: !693, line: 62, baseType: !7, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !692, file: !693, line: 63, baseType: !119, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !692, file: !693, line: 65, baseType: !699, size: 256, offset: 64)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, size: 256, elements: !361)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !106, line: 182, size: 64, elements: !701)
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !700, file: !106, line: 183, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !106, line: 186, size: 128, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !704, file: !106, line: 187, baseType: !703, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !704, file: !106, line: 187, baseType: !708, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !692, file: !693, line: 66, baseType: !700, size: 64, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !692, file: !693, line: 68, baseType: !711, size: 128, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !712, line: 40, baseType: !713)
!712 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !712, line: 36, size: 128, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !713, file: !712, line: 37, baseType: !119)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !713, file: !712, line: 38, baseType: !105, size: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !692, file: !693, line: 69, baseType: !718, size: 128, align: 64, offset: 512)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !106, line: 216, size: 128, align: 64, elements: !719)
!719 = !{!720, !722}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !106, line: 217, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !718, file: !106, line: 218, baseType: !723, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !721}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !692, file: !693, line: 70, baseType: !727, size: 128, offset: 640)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 128, elements: !591)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !693, line: 54, size: 128, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !728, file: !693, line: 55, baseType: !145, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !728, file: !693, line: 56, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !693, line: 56, flags: DIFlagFwdDecl)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !425, file: !426, line: 872, baseType: !735, size: 512, offset: 6016)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, size: 512, elements: !361)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !425, file: !426, line: 873, baseType: !105, size: 128, offset: 6528)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !425, file: !426, line: 874, baseType: !105, size: 128, offset: 6656)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !425, file: !426, line: 876, baseType: !739, size: 64, offset: 6784)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !741, line: 26, size: 192, elements: !742)
!741 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !740, file: !741, line: 27, baseType: !7, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !740, file: !741, line: 28, baseType: !745, size: 128, offset: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !746, line: 43, size: 128, elements: !747)
!746 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !745, file: !746, line: 44, baseType: !327)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !745, file: !746, line: 45, baseType: !105, size: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !425, file: !426, line: 879, baseType: !751, size: 64, offset: 6848)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !425, file: !426, line: 882, baseType: !751, size: 64, offset: 6912)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !425, file: !426, line: 884, baseType: !280, size: 64, offset: 6976)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !425, file: !426, line: 885, baseType: !280, size: 64, offset: 7040)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !425, file: !426, line: 890, baseType: !280, size: 64, offset: 7104)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !425, file: !426, line: 891, baseType: !757, size: 128, offset: 7168)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !426, line: 242, size: 128, elements: !758)
!758 = !{!759, !760, !761}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !757, file: !426, line: 244, baseType: !280, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !757, file: !426, line: 245, baseType: !280, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !757, file: !426, line: 246, baseType: !327, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !425, file: !426, line: 900, baseType: !211, size: 64, offset: 7296)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !425, file: !426, line: 901, baseType: !211, size: 64, offset: 7360)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !425, file: !426, line: 904, baseType: !280, size: 64, offset: 7424)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !425, file: !426, line: 907, baseType: !280, size: 64, offset: 7488)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !425, file: !426, line: 910, baseType: !211, size: 64, offset: 7552)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !425, file: !426, line: 911, baseType: !211, size: 64, offset: 7616)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !425, file: !426, line: 914, baseType: !769, size: 640, offset: 7680)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !770, line: 123, size: 640, elements: !771)
!770 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!771 = !{!772, !778, !779}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !769, file: !770, line: 124, baseType: !773, size: 576)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 576, elements: !162)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !770, line: 108, size: 192, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !774, file: !770, line: 109, baseType: !280, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !774, file: !770, line: 110, baseType: !558, size: 128, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !769, file: !770, line: 125, baseType: !7, size: 32, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !769, file: !770, line: 126, baseType: !7, size: 32, offset: 608)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !425, file: !426, line: 917, baseType: !781, size: 192, offset: 8320)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !770, line: 134, size: 192, elements: !782)
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !781, file: !770, line: 135, baseType: !718, size: 128, align: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !781, file: !770, line: 136, baseType: !7, size: 32, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !425, file: !426, line: 923, baseType: !786, size: 64, offset: 8512)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !426, line: 923, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !425, file: !426, line: 926, baseType: !786, size: 64, offset: 8576)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !425, file: !426, line: 929, baseType: !786, size: 64, offset: 8640)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !425, file: !426, line: 933, baseType: !792, size: 64, offset: 8704)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !426, line: 933, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !425, file: !426, line: 943, baseType: !795, size: 128, offset: 8768)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 128, elements: !796)
!796 = !{!797}
!797 = !DISubrange(count: 16)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !425, file: !426, line: 945, baseType: !799, size: 64, offset: 8896)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !426, line: 49, flags: DIFlagFwdDecl)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !425, file: !426, line: 956, baseType: !802, size: 64, offset: 8960)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !426, line: 45, flags: DIFlagFwdDecl)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !425, file: !426, line: 959, baseType: !805, size: 64, offset: 9024)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !426, line: 959, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !425, file: !426, line: 962, baseType: !808, size: 64, offset: 9088)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !426, line: 66, flags: DIFlagFwdDecl)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !425, file: !426, line: 966, baseType: !811, size: 64, offset: 9152)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !426, line: 50, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !425, file: !426, line: 969, baseType: !814, size: 64, offset: 9216)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !770, line: 223, flags: DIFlagFwdDecl)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !425, file: !426, line: 970, baseType: !817, size: 64, offset: 9280)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !426, line: 62, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !425, file: !426, line: 971, baseType: !820, size: 64, offset: 9344)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !821, line: 25, baseType: !822)
!821 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !821, line: 23, size: 64, elements: !823)
!823 = !{!824}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !822, file: !821, line: 24, baseType: !590, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !425, file: !426, line: 972, baseType: !820, size: 64, offset: 9408)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !425, file: !426, line: 974, baseType: !820, size: 64, offset: 9472)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !425, file: !426, line: 975, baseType: !828, size: 192, offset: 9536)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !829, line: 30, size: 192, elements: !830)
!829 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !828, file: !829, line: 31, baseType: !105, size: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !828, file: !829, line: 32, baseType: !820, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !425, file: !426, line: 976, baseType: !211, size: 64, offset: 9728)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !425, file: !426, line: 977, baseType: !208, size: 64, offset: 9792)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !425, file: !426, line: 978, baseType: !7, size: 32, offset: 9856)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !425, file: !426, line: 980, baseType: !721, size: 64, offset: 9920)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !425, file: !426, line: 989, baseType: !838, size: 128, offset: 9984)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !839, line: 35, size: 128, elements: !840)
!839 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!840 = !{!841, !842, !843}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !838, file: !839, line: 36, baseType: !145, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !838, file: !839, line: 37, baseType: !302, size: 32, offset: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !838, file: !839, line: 38, baseType: !844, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !839, line: 23, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !425, file: !426, line: 992, baseType: !280, size: 64, offset: 10112)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !425, file: !426, line: 993, baseType: !280, size: 64, offset: 10176)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !425, file: !426, line: 996, baseType: !119, offset: 10240)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !425, file: !426, line: 999, baseType: !327, offset: 10240)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !425, file: !426, line: 1001, baseType: !851, size: 64, offset: 10240)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !426, line: 636, size: 64, elements: !852)
!852 = !{!853}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !851, file: !426, line: 637, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !425, file: !426, line: 1005, baseType: !561, size: 128, offset: 10304)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !425, file: !426, line: 1007, baseType: !424, size: 64, offset: 10432)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !425, file: !426, line: 1009, baseType: !858, size: 64, offset: 10496)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !426, line: 1009, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !425, file: !426, line: 1043, baseType: !80, size: 64, offset: 10560)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !425, file: !426, line: 1046, baseType: !862, size: 64, offset: 10624)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !426, line: 41, flags: DIFlagFwdDecl)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !425, file: !426, line: 1050, baseType: !865, size: 64, offset: 10688)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !426, line: 42, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !425, file: !426, line: 1054, baseType: !868, size: 64, offset: 10752)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !426, line: 55, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !425, file: !426, line: 1056, baseType: !871, size: 64, offset: 10816)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !426, line: 40, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !425, file: !426, line: 1058, baseType: !874, size: 64, offset: 10880)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !426, line: 47, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !425, file: !426, line: 1061, baseType: !877, size: 64, offset: 10944)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !426, line: 43, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !425, file: !426, line: 1064, baseType: !211, size: 64, offset: 11008)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !425, file: !426, line: 1065, baseType: !881, size: 64, offset: 11072)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !829, line: 14, baseType: !883)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !829, line: 12, size: 384, elements: !884)
!884 = !{!885}
!885 = !DIDerivedType(tag: DW_TAG_member, scope: !883, file: !829, line: 13, baseType: !886, size: 384)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !829, line: 13, size: 384, elements: !887)
!887 = !{!888, !889, !890, !891}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !886, file: !829, line: 13, baseType: !145, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !886, file: !829, line: 13, baseType: !145, size: 32, offset: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !886, file: !829, line: 13, baseType: !145, size: 32, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !886, file: !829, line: 13, baseType: !892, size: 256, offset: 128)
!892 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !893, line: 32, size: 256, elements: !894)
!893 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!894 = !{!895, !901, !914, !920, !929, !949, !954}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !892, file: !893, line: 37, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !893, line: 34, size: 64, elements: !897)
!897 = !{!898, !899}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !896, file: !893, line: 35, baseType: !680, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !896, file: !893, line: 36, baseType: !900, size: 32, offset: 32)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !194, line: 49, baseType: !7)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !892, file: !893, line: 45, baseType: !902, size: 192)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !893, line: 40, size: 192, elements: !903)
!903 = !{!904, !906, !907, !913}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !902, file: !893, line: 41, baseType: !905, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !194, line: 95, baseType: !145)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !902, file: !893, line: 42, baseType: !145, size: 32, offset: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !902, file: !893, line: 43, baseType: !908, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !893, line: 11, baseType: !909)
!909 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !893, line: 8, size: 64, elements: !910)
!910 = !{!911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !909, file: !893, line: 9, baseType: !145, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !909, file: !893, line: 10, baseType: !80, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !902, file: !893, line: 44, baseType: !145, size: 32, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !892, file: !893, line: 52, baseType: !915, size: 128)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !893, line: 48, size: 128, elements: !916)
!916 = !{!917, !918, !919}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !915, file: !893, line: 49, baseType: !680, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !915, file: !893, line: 50, baseType: !900, size: 32, offset: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !915, file: !893, line: 51, baseType: !908, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !892, file: !893, line: 61, baseType: !921, size: 256)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !893, line: 55, size: 256, elements: !922)
!922 = !{!923, !924, !925, !926, !928}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !921, file: !893, line: 56, baseType: !680, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !921, file: !893, line: 57, baseType: !900, size: 32, offset: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !921, file: !893, line: 58, baseType: !145, size: 32, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !921, file: !893, line: 59, baseType: !927, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !194, line: 94, baseType: !195)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !921, file: !893, line: 60, baseType: !927, size: 64, offset: 192)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !892, file: !893, line: 95, baseType: !930, size: 256)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !893, line: 64, size: 256, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !930, file: !893, line: 65, baseType: !80, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !930, file: !893, line: 77, baseType: !934, size: 192, offset: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !930, file: !893, line: 77, size: 192, elements: !935)
!935 = !{!936, !937, !944}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !934, file: !893, line: 82, baseType: !413, size: 16)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !934, file: !893, line: 88, baseType: !938, size: 192)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !934, file: !893, line: 84, size: 192, elements: !939)
!939 = !{!940, !942, !943}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !938, file: !893, line: 85, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 64, elements: !540)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !938, file: !893, line: 86, baseType: !80, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !938, file: !893, line: 87, baseType: !80, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !934, file: !893, line: 93, baseType: !945, size: 96)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !934, file: !893, line: 90, size: 96, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !945, file: !893, line: 91, baseType: !941, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !945, file: !893, line: 92, baseType: !435, size: 32, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !892, file: !893, line: 101, baseType: !950, size: 128)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !893, line: 98, size: 128, elements: !951)
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !950, file: !893, line: 99, baseType: !196, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !950, file: !893, line: 100, baseType: !145, size: 32, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !892, file: !893, line: 108, baseType: !955, size: 128)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !893, line: 104, size: 128, elements: !956)
!956 = !{!957, !958, !959}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !955, file: !893, line: 105, baseType: !80, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !955, file: !893, line: 106, baseType: !145, size: 32, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !955, file: !893, line: 107, baseType: !7, size: 32, offset: 96)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !425, file: !426, line: 1067, baseType: !961, offset: 11136)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !962, line: 12, elements: !133)
!962 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!963 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !425, file: !426, line: 1099, baseType: !964, size: 64, offset: 11136)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !426, line: 56, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !425, file: !426, line: 1103, baseType: !105, size: 128, offset: 11200)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !425, file: !426, line: 1104, baseType: !968, size: 64, offset: 11328)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !426, line: 46, flags: DIFlagFwdDecl)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !425, file: !426, line: 1105, baseType: !379, size: 192, offset: 11392)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !425, file: !426, line: 1106, baseType: !7, size: 32, offset: 11584)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !425, file: !426, line: 1109, baseType: !973, size: 128, offset: 11648)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !974, size: 128, elements: !976)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !426, line: 51, flags: DIFlagFwdDecl)
!976 = !{!977}
!977 = !DISubrange(count: 2)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !425, file: !426, line: 1110, baseType: !379, size: 192, offset: 11776)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !425, file: !426, line: 1111, baseType: !105, size: 128, offset: 11968)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !425, file: !426, line: 1173, baseType: !981, size: 64, offset: 12096)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !983, line: 62, size: 256, align: 256, elements: !984)
!983 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!984 = !{!985, !986, !987, !992}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !982, file: !983, line: 75, baseType: !435, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !982, file: !983, line: 90, baseType: !435, size: 32, offset: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !982, file: !983, line: 124, baseType: !988, size: 64, offset: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !983, line: 109, size: 64, elements: !989)
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !988, file: !983, line: 110, baseType: !282, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !988, file: !983, line: 112, baseType: !282, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !982, file: !983, line: 144, baseType: !435, size: 32, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !425, file: !426, line: 1174, baseType: !434, size: 32, offset: 12160)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !425, file: !426, line: 1179, baseType: !211, size: 64, offset: 12224)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !425, file: !426, line: 1182, baseType: !996, size: 128, offset: 12288)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !357, line: 76, size: 128, elements: !997)
!997 = !{!998, !1003, !1006}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !996, file: !357, line: 85, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1000, line: 7, size: 64, elements: !1001)
!1000 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1001 = !{!1002}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !999, file: !1000, line: 12, baseType: !587, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !996, file: !357, line: 88, baseType: !1004, size: 8, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !106, line: 30, baseType: !1005)
!1005 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !996, file: !357, line: 95, baseType: !1004, size: 8, offset: 72)
!1007 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !426, line: 1184, baseType: !1008, size: 128, offset: 12416)
!1008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !426, line: 1184, size: 128, elements: !1009)
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1008, file: !426, line: 1185, baseType: !440, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1008, file: !426, line: 1186, baseType: !718, size: 128, align: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !425, file: !426, line: 1190, baseType: !1013, size: 64, offset: 12544)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !426, line: 53, flags: DIFlagFwdDecl)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !425, file: !426, line: 1192, baseType: !1016, size: 128, offset: 12608)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !357, line: 64, size: 128, elements: !1017)
!1017 = !{!1018, !1111, !1112}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1016, file: !357, line: 65, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !252, line: 68, size: 512, align: 128, elements: !1021)
!1021 = !{!1022, !1023, !1103, !1110}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1020, file: !252, line: 69, baseType: !211, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !252, line: 77, baseType: !1024, size: 320, offset: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1020, file: !252, line: 77, size: 320, elements: !1025)
!1025 = !{!1026, !1035, !1040, !1068, !1076, !1082, !1095, !1102}
!1026 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !252, line: 78, baseType: !1027, size: 320)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1024, file: !252, line: 78, size: 320, elements: !1028)
!1028 = !{!1029, !1030, !1033, !1034}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1027, file: !252, line: 84, baseType: !105, size: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1027, file: !252, line: 86, baseType: !1031, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !252, line: 26, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1027, file: !252, line: 87, baseType: !211, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1027, file: !252, line: 94, baseType: !211, size: 64, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !252, line: 96, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1024, file: !252, line: 96, size: 64, elements: !1037)
!1037 = !{!1038}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1036, file: !252, line: 101, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !106, line: 143, baseType: !280)
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !252, line: 103, baseType: !1041, size: 320)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1024, file: !252, line: 103, size: 320, elements: !1042)
!1042 = !{!1043, !1053, !1056, !1057}
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !252, line: 104, baseType: !1044, size: 128)
!1044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1041, file: !252, line: 104, size: 128, elements: !1045)
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1044, file: !252, line: 105, baseType: !105, size: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, scope: !1044, file: !252, line: 106, baseType: !1048, size: 128)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1044, file: !252, line: 106, size: 128, elements: !1049)
!1049 = !{!1050, !1051, !1052}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1048, file: !252, line: 107, baseType: !1019, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1048, file: !252, line: 109, baseType: !145, size: 32, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1048, file: !252, line: 110, baseType: !145, size: 32, offset: 96)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1041, file: !252, line: 117, baseType: !1054, size: 64, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !252, line: 117, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1041, file: !252, line: 119, baseType: !80, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !252, line: 120, baseType: !1058, size: 64, offset: 256)
!1058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1041, file: !252, line: 120, size: 64, elements: !1059)
!1059 = !{!1060, !1061, !1062}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1058, file: !252, line: 121, baseType: !80, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1058, file: !252, line: 122, baseType: !211, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !252, line: 123, baseType: !1063, size: 32)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1058, file: !252, line: 123, size: 32, elements: !1064)
!1064 = !{!1065, !1066, !1067}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1063, file: !252, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1063, file: !252, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1063, file: !252, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1068 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !252, line: 130, baseType: !1069, size: 192)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1024, file: !252, line: 130, size: 192, elements: !1070)
!1070 = !{!1071, !1072, !1073, !1074, !1075}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1069, file: !252, line: 131, baseType: !211, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1069, file: !252, line: 134, baseType: !573, size: 8, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1069, file: !252, line: 135, baseType: !573, size: 8, offset: 72)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1069, file: !252, line: 136, baseType: !302, size: 32, offset: 96)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1069, file: !252, line: 137, baseType: !7, size: 32, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !252, line: 139, baseType: !1077, size: 256)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1024, file: !252, line: 139, size: 256, elements: !1078)
!1078 = !{!1079, !1080, !1081}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1077, file: !252, line: 140, baseType: !211, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1077, file: !252, line: 141, baseType: !302, size: 32, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1077, file: !252, line: 143, baseType: !105, size: 128, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !252, line: 145, baseType: !1083, size: 256)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1024, file: !252, line: 145, size: 256, elements: !1084)
!1084 = !{!1085, !1086, !1088, !1089, !1094}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1083, file: !252, line: 146, baseType: !211, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1083, file: !252, line: 147, baseType: !1087, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !241, line: 509, baseType: !1019)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1083, file: !252, line: 148, baseType: !211, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, scope: !1083, file: !252, line: 149, baseType: !1090, size: 64, offset: 192)
!1090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1083, file: !252, line: 149, size: 64, elements: !1091)
!1091 = !{!1092, !1093}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1090, file: !252, line: 150, baseType: !268, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1090, file: !252, line: 151, baseType: !302, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1083, file: !252, line: 156, baseType: !119, offset: 256)
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !252, line: 159, baseType: !1096, size: 128)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1024, file: !252, line: 159, size: 128, elements: !1097)
!1097 = !{!1098, !1101}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1096, file: !252, line: 161, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !252, line: 161, flags: DIFlagFwdDecl)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1096, file: !252, line: 162, baseType: !80, size: 64, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1024, file: !252, line: 176, baseType: !718, size: 128, align: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !252, line: 179, baseType: !1104, size: 32, offset: 384)
!1104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1020, file: !252, line: 179, size: 32, elements: !1105)
!1105 = !{!1106, !1107, !1108, !1109}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1104, file: !252, line: 184, baseType: !302, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1104, file: !252, line: 192, baseType: !7, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1104, file: !252, line: 194, baseType: !7, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1104, file: !252, line: 195, baseType: !145, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1020, file: !252, line: 199, baseType: !302, size: 32, offset: 416)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1016, file: !357, line: 67, baseType: !435, size: 32, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1016, file: !357, line: 68, baseType: !435, size: 32, offset: 96)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !425, file: !426, line: 1206, baseType: !145, size: 32, offset: 12736)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !425, file: !426, line: 1207, baseType: !145, size: 32, offset: 12768)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !425, file: !426, line: 1209, baseType: !211, size: 64, offset: 12800)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !425, file: !426, line: 1219, baseType: !280, size: 64, offset: 12864)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !425, file: !426, line: 1220, baseType: !280, size: 64, offset: 12928)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !425, file: !426, line: 1317, baseType: !145, size: 32, offset: 12992)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !425, file: !426, line: 1319, baseType: !424, size: 64, offset: 13056)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !425, file: !426, line: 1322, baseType: !1121, size: 64, offset: 13120)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !426, line: 1322, flags: DIFlagFwdDecl)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !425, file: !426, line: 1326, baseType: !440, size: 32, offset: 13184)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !425, file: !426, line: 1342, baseType: !80, size: 64, offset: 13248)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !425, file: !426, line: 1343, baseType: !282, size: 64, offset: 13312)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !425, file: !426, line: 1344, baseType: !280, size: 64, offset: 13376)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !425, file: !426, line: 1345, baseType: !282, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !425, file: !426, line: 1346, baseType: !282, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !425, file: !426, line: 1347, baseType: !282, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !425, file: !426, line: 1348, baseType: !718, size: 128, align: 64, offset: 13504)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !425, file: !426, line: 1358, baseType: !1132, size: 34816, offset: 13824)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1133, line: 485, size: 34816, elements: !1134)
!1133 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1134 = !{!1135, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1164, !1165, !1166, !1167, !1168, !1169, !1172, !1173, !1174}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1132, file: !1133, line: 487, baseType: !1136, size: 192)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1137, size: 192, elements: !162)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1138, line: 16, size: 64, elements: !1139)
!1138 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1139 = !{!1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1137, file: !1138, line: 17, baseType: !408, size: 16)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1137, file: !1138, line: 18, baseType: !408, size: 16, offset: 16)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1137, file: !1138, line: 19, baseType: !408, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1137, file: !1138, line: 19, baseType: !408, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1137, file: !1138, line: 19, baseType: !408, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1137, file: !1138, line: 19, baseType: !408, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1137, file: !1138, line: 19, baseType: !408, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1137, file: !1138, line: 20, baseType: !408, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1137, file: !1138, line: 20, baseType: !408, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1137, file: !1138, line: 20, baseType: !408, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1137, file: !1138, line: 20, baseType: !408, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1137, file: !1138, line: 20, baseType: !408, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1137, file: !1138, line: 20, baseType: !408, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1132, file: !1133, line: 491, baseType: !211, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1132, file: !1133, line: 495, baseType: !203, size: 16, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1132, file: !1133, line: 496, baseType: !203, size: 16, offset: 272)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1132, file: !1133, line: 497, baseType: !203, size: 16, offset: 288)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1132, file: !1133, line: 498, baseType: !203, size: 16, offset: 304)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1132, file: !1133, line: 502, baseType: !211, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1132, file: !1133, line: 503, baseType: !211, size: 64, offset: 384)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1132, file: !1133, line: 514, baseType: !1161, size: 256, offset: 448)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1162, size: 256, elements: !361)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1133, line: 483, flags: DIFlagFwdDecl)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1132, file: !1133, line: 516, baseType: !211, size: 64, offset: 704)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1132, file: !1133, line: 518, baseType: !211, size: 64, offset: 768)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1132, file: !1133, line: 520, baseType: !211, size: 64, offset: 832)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1132, file: !1133, line: 521, baseType: !211, size: 64, offset: 896)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1132, file: !1133, line: 522, baseType: !211, size: 64, offset: 960)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1132, file: !1133, line: 528, baseType: !1170, size: 64, offset: 1024)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1133, line: 10, flags: DIFlagFwdDecl)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1132, file: !1133, line: 535, baseType: !211, size: 64, offset: 1088)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1132, file: !1133, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1132, file: !1133, line: 540, baseType: !1175, size: 33280, offset: 1536)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1176, line: 317, size: 33280, elements: !1177)
!1176 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1177 = !{!1178, !1179, !1180}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1175, file: !1176, line: 330, baseType: !7, size: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1175, file: !1176, line: 337, baseType: !211, size: 64, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1175, file: !1176, line: 348, baseType: !1181, size: 32768, offset: 512)
!1181 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1176, line: 304, size: 32768, elements: !1182)
!1182 = !{!1183, !1198, !1237, !1287, !1304}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1181, file: !1176, line: 305, baseType: !1184, size: 896)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1176, line: 12, size: 896, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1197}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1184, file: !1176, line: 13, baseType: !434, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1184, file: !1176, line: 14, baseType: !434, size: 32, offset: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1184, file: !1176, line: 15, baseType: !434, size: 32, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1184, file: !1176, line: 16, baseType: !434, size: 32, offset: 96)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1184, file: !1176, line: 17, baseType: !434, size: 32, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1184, file: !1176, line: 18, baseType: !434, size: 32, offset: 160)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1184, file: !1176, line: 19, baseType: !434, size: 32, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1184, file: !1176, line: 22, baseType: !1194, size: 640, offset: 224)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 640, elements: !1195)
!1195 = !{!1196}
!1196 = !DISubrange(count: 20)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1184, file: !1176, line: 25, baseType: !434, size: 32, offset: 864)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1181, file: !1176, line: 306, baseType: !1199, size: 4096, align: 128)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1176, line: 34, size: 4096, align: 128, elements: !1200)
!1200 = !{!1201, !1202, !1203, !1204, !1205, !1220, !1221, !1222, !1226, !1228, !1232}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1199, file: !1176, line: 35, baseType: !408, size: 16)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1199, file: !1176, line: 36, baseType: !408, size: 16, offset: 16)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1199, file: !1176, line: 37, baseType: !408, size: 16, offset: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1199, file: !1176, line: 38, baseType: !408, size: 16, offset: 48)
!1205 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !1176, line: 39, baseType: !1206, size: 128, offset: 64)
!1206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1199, file: !1176, line: 39, size: 128, elements: !1207)
!1207 = !{!1208, !1213}
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1206, file: !1176, line: 40, baseType: !1209, size: 128)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1206, file: !1176, line: 40, size: 128, elements: !1210)
!1210 = !{!1211, !1212}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1209, file: !1176, line: 41, baseType: !280, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1209, file: !1176, line: 42, baseType: !280, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, scope: !1206, file: !1176, line: 44, baseType: !1214, size: 128)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1206, file: !1176, line: 44, size: 128, elements: !1215)
!1215 = !{!1216, !1217, !1218, !1219}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1214, file: !1176, line: 45, baseType: !434, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1214, file: !1176, line: 46, baseType: !434, size: 32, offset: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1214, file: !1176, line: 47, baseType: !434, size: 32, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1214, file: !1176, line: 48, baseType: !434, size: 32, offset: 96)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1199, file: !1176, line: 51, baseType: !434, size: 32, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1199, file: !1176, line: 52, baseType: !434, size: 32, offset: 224)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1199, file: !1176, line: 55, baseType: !1223, size: 1024, offset: 256)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 1024, elements: !1224)
!1224 = !{!1225}
!1225 = !DISubrange(count: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1199, file: !1176, line: 58, baseType: !1227, size: 2048, offset: 1280)
!1227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 2048, elements: !166)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1199, file: !1176, line: 60, baseType: !1229, size: 384, offset: 3328)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 384, elements: !1230)
!1230 = !{!1231}
!1231 = !DISubrange(count: 12)
!1232 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !1176, line: 62, baseType: !1233, size: 384, offset: 3712)
!1233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1199, file: !1176, line: 62, size: 384, elements: !1234)
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1233, file: !1176, line: 63, baseType: !1229, size: 384)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1233, file: !1176, line: 64, baseType: !1229, size: 384)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1181, file: !1176, line: 307, baseType: !1238, size: 1088)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1176, line: 79, size: 1088, elements: !1239)
!1239 = !{!1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1286}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1238, file: !1176, line: 80, baseType: !434, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1238, file: !1176, line: 81, baseType: !434, size: 32, offset: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1238, file: !1176, line: 82, baseType: !434, size: 32, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1238, file: !1176, line: 83, baseType: !434, size: 32, offset: 96)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1238, file: !1176, line: 84, baseType: !434, size: 32, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1238, file: !1176, line: 85, baseType: !434, size: 32, offset: 160)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1238, file: !1176, line: 86, baseType: !434, size: 32, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1238, file: !1176, line: 88, baseType: !1194, size: 640, offset: 224)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1238, file: !1176, line: 89, baseType: !571, size: 8, offset: 864)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1238, file: !1176, line: 90, baseType: !571, size: 8, offset: 872)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1238, file: !1176, line: 91, baseType: !571, size: 8, offset: 880)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1238, file: !1176, line: 92, baseType: !571, size: 8, offset: 888)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1238, file: !1176, line: 93, baseType: !571, size: 8, offset: 896)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1238, file: !1176, line: 94, baseType: !571, size: 8, offset: 904)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1238, file: !1176, line: 95, baseType: !1255, size: 64, offset: 960)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1257, line: 11, size: 128, elements: !1258)
!1257 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1258 = !{!1259, !1260}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1256, file: !1257, line: 12, baseType: !196, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1256, file: !1257, line: 13, baseType: !1261, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1263, line: 56, size: 1344, elements: !1264)
!1263 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1264 = !{!1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1262, file: !1263, line: 61, baseType: !211, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1262, file: !1263, line: 62, baseType: !211, size: 64, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1262, file: !1263, line: 63, baseType: !211, size: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1262, file: !1263, line: 64, baseType: !211, size: 64, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1262, file: !1263, line: 65, baseType: !211, size: 64, offset: 256)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1262, file: !1263, line: 66, baseType: !211, size: 64, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1262, file: !1263, line: 68, baseType: !211, size: 64, offset: 384)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1262, file: !1263, line: 69, baseType: !211, size: 64, offset: 448)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1262, file: !1263, line: 70, baseType: !211, size: 64, offset: 512)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1262, file: !1263, line: 71, baseType: !211, size: 64, offset: 576)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1262, file: !1263, line: 72, baseType: !211, size: 64, offset: 640)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1262, file: !1263, line: 73, baseType: !211, size: 64, offset: 704)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1262, file: !1263, line: 74, baseType: !211, size: 64, offset: 768)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1262, file: !1263, line: 75, baseType: !211, size: 64, offset: 832)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1262, file: !1263, line: 76, baseType: !211, size: 64, offset: 896)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1262, file: !1263, line: 81, baseType: !211, size: 64, offset: 960)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1262, file: !1263, line: 83, baseType: !211, size: 64, offset: 1024)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1262, file: !1263, line: 84, baseType: !211, size: 64, offset: 1088)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1262, file: !1263, line: 85, baseType: !211, size: 64, offset: 1152)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1262, file: !1263, line: 86, baseType: !211, size: 64, offset: 1216)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1262, file: !1263, line: 87, baseType: !211, size: 64, offset: 1280)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1238, file: !1176, line: 96, baseType: !434, size: 32, offset: 1024)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1181, file: !1176, line: 308, baseType: !1288, size: 4608, align: 512)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1176, line: 289, size: 4608, align: 512, elements: !1289)
!1289 = !{!1290, !1291, !1300}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1288, file: !1176, line: 290, baseType: !1199, size: 4096, align: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1288, file: !1176, line: 291, baseType: !1292, size: 512, offset: 4096)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1176, line: 268, size: 512, elements: !1293)
!1293 = !{!1294, !1295, !1296}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1292, file: !1176, line: 269, baseType: !280, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1292, file: !1176, line: 270, baseType: !280, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1292, file: !1176, line: 271, baseType: !1297, size: 384, offset: 128)
!1297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 384, elements: !1298)
!1298 = !{!1299}
!1299 = !DISubrange(count: 6)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1288, file: !1176, line: 292, baseType: !1301, offset: 4608)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, elements: !1302)
!1302 = !{!1303}
!1303 = !DISubrange(count: 0)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1181, file: !1176, line: 309, baseType: !1305, size: 32768)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 32768, elements: !1306)
!1306 = !{!1307}
!1307 = !DISubrange(count: 4096)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !252, line: 378, baseType: !1309, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !417, file: !252, line: 384, baseType: !740, size: 192, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !272, file: !252, line: 500, baseType: !119, offset: 6656)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !272, file: !252, line: 501, baseType: !1313, size: 64, offset: 6656)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !252, line: 387, flags: DIFlagFwdDecl)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !272, file: !252, line: 516, baseType: !1316, size: 64, offset: 6720)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1318, line: 18, flags: DIFlagFwdDecl)
!1318 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !272, file: !252, line: 519, baseType: !239, size: 64, offset: 6784)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !272, file: !252, line: 521, baseType: !1321, size: 64, offset: 6848)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !252, line: 521, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !272, file: !252, line: 545, baseType: !302, size: 32, offset: 6912)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !272, file: !252, line: 548, baseType: !1004, size: 8, offset: 6944)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !272, file: !252, line: 550, baseType: !1326, offset: 6952)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1327, line: 142, elements: !133)
!1327 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !272, file: !252, line: 554, baseType: !1329, size: 256, offset: 6976)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1330, line: 102, size: 256, elements: !1331)
!1330 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1331 = !{!1332, !1333, !1334}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1329, file: !1330, line: 103, baseType: !310, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1329, file: !1330, line: 104, baseType: !105, size: 128, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1329, file: !1330, line: 105, baseType: !1335, size: 64, offset: 192)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1330, line: 21, baseType: !1336)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{null, !1339}
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !272, file: !252, line: 557, baseType: !434, size: 32, offset: 7232)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !269, file: !252, line: 565, baseType: !1342, offset: 7296)
!1342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, elements: !1343)
!1343 = !{!1344}
!1344 = !DISubrange(count: -1)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !251, file: !252, line: 333, baseType: !1346, size: 64, offset: 576)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !241, line: 284, baseType: !1347)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !241, line: 284, size: 64, elements: !1348)
!1348 = !{!1349}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1347, file: !241, line: 284, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !300, line: 19, baseType: !211)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !251, file: !252, line: 334, baseType: !211, size: 64, offset: 640)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !251, file: !252, line: 343, baseType: !1353, size: 256, offset: 704)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !251, file: !252, line: 340, size: 256, elements: !1354)
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1353, file: !252, line: 341, baseType: !259, size: 192, align: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1353, file: !252, line: 342, baseType: !211, size: 64, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !251, file: !252, line: 351, baseType: !105, size: 128, offset: 960)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !251, file: !252, line: 353, baseType: !1359, size: 64, offset: 1088)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !252, line: 353, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !251, file: !252, line: 356, baseType: !1362, size: 64, offset: 1152)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1364)
!1364 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !252, line: 356, flags: DIFlagFwdDecl)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !251, file: !252, line: 359, baseType: !211, size: 64, offset: 1216)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !251, file: !252, line: 361, baseType: !239, size: 64, offset: 1280)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !251, file: !252, line: 362, baseType: !80, size: 64, offset: 1344)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !251, file: !252, line: 365, baseType: !310, size: 64, offset: 1408)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !251, file: !252, line: 373, baseType: !1370, offset: 1472)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !252, line: 296, elements: !133)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !218, file: !186, line: 90, baseType: !213, size: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !218, file: !186, line: 91, baseType: !1373, size: 64, offset: 256)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !176, file: !101, line: 143, baseType: !1375, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!1378, !112}
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1380)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1381)
!1381 = !{!1382, !1383, !1387, !1391, !1399, !1403}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1380, file: !18, line: 40, baseType: !17, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1380, file: !18, line: 41, baseType: !1384, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!1004}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1380, file: !18, line: 42, baseType: !1388, size: 64, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!80}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1380, file: !18, line: 43, baseType: !1392, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!1395, !1397}
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1380, file: !18, line: 44, baseType: !1400, size: 64, offset: 256)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!1395}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1380, file: !18, line: 45, baseType: !1404, size: 64, offset: 320)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{null, !80}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !176, file: !101, line: 144, baseType: !1408, size: 64, offset: 320)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!1395, !112}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !176, file: !101, line: 145, baseType: !1412, size: 64, offset: 384)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{null, !112, !1415, !1421}
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1318, line: 23, baseType: !1417)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1318, line: 21, size: 32, elements: !1418)
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1417, file: !1318, line: 22, baseType: !1420, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !106, line: 32, baseType: !900)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1318, line: 28, baseType: !1423)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1318, line: 26, size: 32, elements: !1424)
!1424 = !{!1425}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1423, file: !1318, line: 27, baseType: !1426, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !106, line: 33, baseType: !1427)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !194, line: 50, baseType: !7)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !100, file: !101, line: 70, baseType: !1429, size: 64, offset: 384)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1431, line: 123, size: 1024, elements: !1432)
!1431 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1432 = !{!1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1575, !1576, !1577, !1578, !1579}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1430, file: !1431, line: 124, baseType: !302, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1430, file: !1431, line: 125, baseType: !302, size: 32, offset: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1430, file: !1431, line: 135, baseType: !1429, size: 64, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1430, file: !1431, line: 136, baseType: !85, size: 64, offset: 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1430, file: !1431, line: 138, baseType: !259, size: 192, align: 64, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1430, file: !1431, line: 140, baseType: !1395, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1430, file: !1431, line: 141, baseType: !7, size: 32, offset: 448)
!1440 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !1431, line: 142, baseType: !1441, size: 256, offset: 512)
!1441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1430, file: !1431, line: 142, size: 256, elements: !1442)
!1442 = !{!1443, !1498, !1502}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1441, file: !1431, line: 143, baseType: !1444, size: 192)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1431, line: 91, size: 192, elements: !1445)
!1445 = !{!1446, !1447, !1448}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1444, file: !1431, line: 92, baseType: !211, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1444, file: !1431, line: 94, baseType: !276, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1444, file: !1431, line: 100, baseType: !1449, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1431, line: 180, size: 704, elements: !1451)
!1451 = !{!1452, !1453, !1454, !1468, !1469, !1470, !1496, !1497}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1450, file: !1431, line: 182, baseType: !1429, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1450, file: !1431, line: 183, baseType: !7, size: 32, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1450, file: !1431, line: 186, baseType: !1455, size: 192, offset: 128)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1456, line: 19, size: 192, elements: !1457)
!1456 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1457 = !{!1458, !1466, !1467}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1455, file: !1456, line: 20, baseType: !1459, size: 128)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1460, line: 292, size: 128, elements: !1461)
!1460 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1461 = !{!1462, !1463, !1465}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1459, file: !1460, line: 293, baseType: !119)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1459, file: !1460, line: 295, baseType: !1464, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !106, line: 148, baseType: !7)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1459, file: !1460, line: 296, baseType: !80, size: 64, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1455, file: !1456, line: 21, baseType: !7, size: 32, offset: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1455, file: !1456, line: 22, baseType: !7, size: 32, offset: 160)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1450, file: !1431, line: 187, baseType: !434, size: 32, offset: 320)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1450, file: !1431, line: 188, baseType: !434, size: 32, offset: 352)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1450, file: !1431, line: 189, baseType: !1471, size: 64, offset: 384)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1431, line: 168, size: 320, elements: !1473)
!1473 = !{!1474, !1480, !1484, !1488, !1492}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1472, file: !1431, line: 169, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!145, !1478, !1449}
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !241, line: 539, flags: DIFlagFwdDecl)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1472, file: !1431, line: 171, baseType: !1481, size: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!145, !1429, !85, !202}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1472, file: !1431, line: 173, baseType: !1485, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!145, !1429}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1472, file: !1431, line: 174, baseType: !1489, size: 64, offset: 192)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!145, !1429, !1429, !85}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1472, file: !1431, line: 176, baseType: !1493, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!145, !1478, !1429, !1449}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1450, file: !1431, line: 192, baseType: !105, size: 128, offset: 448)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1450, file: !1431, line: 194, baseType: !711, size: 128, offset: 576)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1441, file: !1431, line: 144, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1431, line: 103, size: 64, elements: !1500)
!1500 = !{!1501}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1499, file: !1431, line: 104, baseType: !1429, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1441, file: !1431, line: 145, baseType: !1503, size: 256)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1431, line: 107, size: 256, elements: !1504)
!1504 = !{!1505, !1570, !1573, !1574}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1503, file: !1431, line: 108, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1508)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1431, line: 217, size: 768, elements: !1509)
!1509 = !{!1510, !1530, !1534, !1538, !1543, !1547, !1551, !1555, !1556, !1557, !1558, !1566}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1508, file: !1431, line: 222, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!145, !1514}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1431, line: 197, size: 1088, elements: !1516)
!1516 = !{!1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1515, file: !1431, line: 199, baseType: !1429, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1515, file: !1431, line: 200, baseType: !239, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1515, file: !1431, line: 201, baseType: !1478, size: 64, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1515, file: !1431, line: 202, baseType: !80, size: 64, offset: 192)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1515, file: !1431, line: 205, baseType: !379, size: 192, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1515, file: !1431, line: 206, baseType: !379, size: 192, offset: 448)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1515, file: !1431, line: 207, baseType: !145, size: 32, offset: 640)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1515, file: !1431, line: 208, baseType: !105, size: 128, offset: 704)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1515, file: !1431, line: 209, baseType: !161, size: 64, offset: 832)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1515, file: !1431, line: 211, baseType: !208, size: 64, offset: 896)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1515, file: !1431, line: 212, baseType: !1004, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1515, file: !1431, line: 213, baseType: !1004, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1515, file: !1431, line: 214, baseType: !1362, size: 64, offset: 1024)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1508, file: !1431, line: 223, baseType: !1531, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{null, !1514}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1508, file: !1431, line: 236, baseType: !1535, size: 64, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!145, !1478, !80}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1508, file: !1431, line: 238, baseType: !1539, size: 64, offset: 192)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!80, !1478, !1542}
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1508, file: !1431, line: 239, baseType: !1544, size: 64, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!80, !1478, !80, !1542}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1508, file: !1431, line: 240, baseType: !1548, size: 64, offset: 320)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{null, !1478, !80}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1508, file: !1431, line: 242, baseType: !1552, size: 64, offset: 384)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!192, !1514, !161, !208, !242}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1508, file: !1431, line: 252, baseType: !208, size: 64, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1508, file: !1431, line: 259, baseType: !1004, size: 8, offset: 512)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1508, file: !1431, line: 260, baseType: !1552, size: 64, offset: 576)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1508, file: !1431, line: 263, baseType: !1559, size: 64, offset: 640)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!1562, !1514, !1564}
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1563, line: 52, baseType: !7)
!1563 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1431, line: 27, flags: DIFlagFwdDecl)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1508, file: !1431, line: 266, baseType: !1567, size: 64, offset: 704)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!145, !1514, !250}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1503, file: !1431, line: 109, baseType: !1571, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1431, line: 31, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1503, file: !1431, line: 110, baseType: !242, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1503, file: !1431, line: 111, baseType: !1429, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1430, file: !1431, line: 148, baseType: !80, size: 64, offset: 768)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1430, file: !1431, line: 154, baseType: !280, size: 64, offset: 832)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1430, file: !1431, line: 156, baseType: !203, size: 16, offset: 896)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1430, file: !1431, line: 157, baseType: !202, size: 16, offset: 912)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1430, file: !1431, line: 158, baseType: !1580, size: 64, offset: 960)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1431, line: 32, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !100, file: !101, line: 71, baseType: !1583, size: 32, offset: 448)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1584, line: 19, size: 32, elements: !1585)
!1584 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1585 = !{!1586}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1583, file: !1584, line: 20, baseType: !440, size: 32)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !100, file: !101, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !100, file: !101, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !100, file: !101, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !100, file: !101, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !100, file: !101, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !97, file: !30, line: 463, baseType: !96, size: 64, offset: 512)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !97, file: !30, line: 465, baseType: !1594, size: 64, offset: 576)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !1596, line: 88, size: 1664, elements: !1597)
!1596 = !DIFile(filename: "drivers/base/base.h", directory: "/home/lizy2001/genbc/linux")
!1597 = !{!1598, !1615, !1616, !1617, !1618, !1619, !1620, !1711, !1712, !1713}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "klist_children", scope: !1595, file: !1596, line: 89, baseType: !1599, size: 256, align: 64)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist", file: !1600, line: 18, size: 256, align: 64, elements: !1601)
!1600 = !DIFile(filename: "./include/linux/klist.h", directory: "/home/lizy2001/genbc/linux")
!1601 = !{!1602, !1603, !1604, !1614}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "k_lock", scope: !1599, file: !1600, line: 19, baseType: !119)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "k_list", scope: !1599, file: !1600, line: 20, baseType: !105, size: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1599, file: !1600, line: 21, baseType: !1605, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{null, !1608}
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_node", file: !1600, line: 37, size: 256, elements: !1610)
!1610 = !{!1611, !1612, !1613}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "n_klist", scope: !1609, file: !1600, line: 38, baseType: !80, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "n_node", scope: !1609, file: !1600, line: 39, baseType: !105, size: 128, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "n_ref", scope: !1609, file: !1600, line: 40, baseType: !1583, size: 32, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1599, file: !1600, line: 22, baseType: !1605, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "knode_parent", scope: !1595, file: !1596, line: 90, baseType: !1609, size: 256, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "knode_driver", scope: !1595, file: !1596, line: 91, baseType: !1609, size: 256, offset: 512)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !1595, file: !1596, line: 92, baseType: !1609, size: 256, offset: 768)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "knode_class", scope: !1595, file: !1596, line: 93, baseType: !1609, size: 256, offset: 1024)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe", scope: !1595, file: !1596, line: 94, baseType: !105, size: 128, offset: 1280)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "async_driver", scope: !1595, file: !1596, line: 95, baseType: !1621, size: 64, offset: 1408)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1623)
!1623 = !{!1624, !1625, !1626, !1630, !1631, !1632, !1633, !1637, !1641, !1645, !1649, !1650, !1651, !1659, !1660, !1661, !1662, !1690, !1691}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1622, file: !24, line: 96, baseType: !85, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1622, file: !24, line: 97, baseType: !89, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1622, file: !24, line: 99, baseType: !1627, size: 64, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1629, line: 76, flags: DIFlagFwdDecl)
!1629 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1622, file: !24, line: 100, baseType: !85, size: 64, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1622, file: !24, line: 102, baseType: !1004, size: 8, offset: 256)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1622, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1622, file: !24, line: 105, baseType: !1634, size: 64, offset: 320)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1636)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !24, line: 105, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1622, file: !24, line: 106, baseType: !1638, size: 64, offset: 384)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1640)
!1640 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !24, line: 106, flags: DIFlagFwdDecl)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1622, file: !24, line: 108, baseType: !1642, size: 64, offset: 448)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!145, !96}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1622, file: !24, line: 109, baseType: !1646, size: 64, offset: 512)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{null, !96}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1622, file: !24, line: 110, baseType: !1642, size: 64, offset: 576)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1622, file: !24, line: 111, baseType: !1646, size: 64, offset: 640)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1622, file: !24, line: 112, baseType: !1652, size: 64, offset: 704)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!145, !96, !1655}
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1656)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1657)
!1657 = !{!1658}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1656, file: !37, line: 51, baseType: !145, size: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1622, file: !24, line: 113, baseType: !1642, size: 64, offset: 768)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1622, file: !24, line: 114, baseType: !215, size: 64, offset: 832)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1622, file: !24, line: 115, baseType: !215, size: 64, offset: 896)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1622, file: !24, line: 117, baseType: !1663, size: 64, offset: 960)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1665)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1666)
!1666 = !{!1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1665, file: !37, line: 279, baseType: !1642, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1665, file: !37, line: 280, baseType: !1646, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1665, file: !37, line: 281, baseType: !1642, size: 64, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1665, file: !37, line: 282, baseType: !1642, size: 64, offset: 192)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1665, file: !37, line: 283, baseType: !1642, size: 64, offset: 256)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1665, file: !37, line: 284, baseType: !1642, size: 64, offset: 320)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1665, file: !37, line: 285, baseType: !1642, size: 64, offset: 384)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1665, file: !37, line: 286, baseType: !1642, size: 64, offset: 448)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1665, file: !37, line: 287, baseType: !1642, size: 64, offset: 512)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1665, file: !37, line: 288, baseType: !1642, size: 64, offset: 576)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1665, file: !37, line: 289, baseType: !1642, size: 64, offset: 640)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1665, file: !37, line: 290, baseType: !1642, size: 64, offset: 704)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1665, file: !37, line: 291, baseType: !1642, size: 64, offset: 768)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1665, file: !37, line: 292, baseType: !1642, size: 64, offset: 832)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1665, file: !37, line: 293, baseType: !1642, size: 64, offset: 896)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1665, file: !37, line: 294, baseType: !1642, size: 64, offset: 960)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1665, file: !37, line: 295, baseType: !1642, size: 64, offset: 1024)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1665, file: !37, line: 296, baseType: !1642, size: 64, offset: 1088)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1665, file: !37, line: 297, baseType: !1642, size: 64, offset: 1152)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1665, file: !37, line: 298, baseType: !1642, size: 64, offset: 1216)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1665, file: !37, line: 299, baseType: !1642, size: 64, offset: 1280)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1665, file: !37, line: 300, baseType: !1642, size: 64, offset: 1344)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1665, file: !37, line: 301, baseType: !1642, size: 64, offset: 1408)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1622, file: !24, line: 118, baseType: !1646, size: 64, offset: 1024)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1622, file: !24, line: 120, baseType: !1692, size: 64, offset: 1088)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !1596, line: 58, size: 1152, elements: !1694)
!1694 = !{!1695, !1696, !1697, !1698, !1710}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1693, file: !1596, line: 59, baseType: !100, size: 512)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !1693, file: !1596, line: 60, baseType: !1599, size: 256, align: 64, offset: 512)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !1693, file: !1596, line: 61, baseType: !1609, size: 256, offset: 768)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1693, file: !1596, line: 62, baseType: !1699, size: 64, offset: 1024)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !1701, line: 46, size: 768, elements: !1702)
!1701 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!1702 = !{!1703, !1704, !1705, !1706, !1709}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1700, file: !1701, line: 47, baseType: !100, size: 512)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1700, file: !1701, line: 48, baseType: !1627, size: 64, offset: 512)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1700, file: !1701, line: 49, baseType: !112, size: 64, offset: 576)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1700, file: !1701, line: 50, baseType: !1707, size: 64, offset: 640)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !1701, line: 50, flags: DIFlagFwdDecl)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1700, file: !1701, line: 51, baseType: !739, size: 64, offset: 704)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1693, file: !1596, line: 63, baseType: !1621, size: 64, offset: 1088)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe_reason", scope: !1595, file: !1596, line: 96, baseType: !161, size: 64, offset: 1472)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1595, file: !1596, line: 97, baseType: !96, size: 64, offset: 1536)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1595, file: !1596, line: 98, baseType: !571, size: 1, offset: 1600, flags: DIFlagBitField, extraData: i64 1600)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !97, file: !30, line: 467, baseType: !85, size: 64, offset: 640)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !30, line: 468, baseType: !1716, size: 64, offset: 704)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1718)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1719)
!1719 = !{!1720, !1721, !1722, !1726, !1731, !1732}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1718, file: !30, line: 88, baseType: !85, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1718, file: !30, line: 89, baseType: !215, size: 64, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1718, file: !30, line: 90, baseType: !1723, size: 64, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!145, !96, !156}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1718, file: !30, line: 91, baseType: !1727, size: 64, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!161, !96, !1730, !1415, !1421}
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1718, file: !30, line: 93, baseType: !1646, size: 64, offset: 256)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1718, file: !30, line: 95, baseType: !1663, size: 64, offset: 320)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !97, file: !30, line: 470, baseType: !89, size: 64, offset: 768)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !97, file: !30, line: 471, baseType: !1621, size: 64, offset: 832)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !97, file: !30, line: 473, baseType: !80, size: 64, offset: 896)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !97, file: !30, line: 475, baseType: !80, size: 64, offset: 960)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !97, file: !30, line: 480, baseType: !379, size: 192, offset: 1024)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !97, file: !30, line: 484, baseType: !1739, size: 576, offset: 1216)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1740)
!1740 = !{!1741, !1742, !1743, !1744, !1745, !1746}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1739, file: !30, line: 362, baseType: !105, size: 128)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1739, file: !30, line: 363, baseType: !105, size: 128, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1739, file: !30, line: 364, baseType: !105, size: 128, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1739, file: !30, line: 365, baseType: !105, size: 128, offset: 384)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1739, file: !30, line: 366, baseType: !1004, size: 8, offset: 512)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1739, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !97, file: !30, line: 485, baseType: !1748, size: 2304, offset: 1792)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1749)
!1749 = !{!1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1851, !1855}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1748, file: !37, line: 566, baseType: !1655, size: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1748, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1748, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1748, file: !37, line: 569, baseType: !1004, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1748, file: !37, line: 570, baseType: !1004, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1748, file: !37, line: 571, baseType: !1004, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1748, file: !37, line: 572, baseType: !1004, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1748, file: !37, line: 573, baseType: !1004, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1748, file: !37, line: 574, baseType: !1004, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1748, file: !37, line: 575, baseType: !1004, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1748, file: !37, line: 576, baseType: !1004, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1748, file: !37, line: 577, baseType: !434, size: 32, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1748, file: !37, line: 578, baseType: !119, offset: 96)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1748, file: !37, line: 580, baseType: !105, size: 128, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1748, file: !37, line: 581, baseType: !740, size: 192, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1748, file: !37, line: 582, baseType: !1766, size: 64, offset: 448)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1768, line: 43, size: 1472, elements: !1769)
!1768 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1769 = !{!1770, !1771, !1772, !1773, !1774, !1783, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1767, file: !1768, line: 44, baseType: !85, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1767, file: !1768, line: 45, baseType: !145, size: 32, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1767, file: !1768, line: 46, baseType: !105, size: 128, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1767, file: !1768, line: 47, baseType: !119, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1767, file: !1768, line: 48, baseType: !1775, size: 64, offset: 256)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !1777, line: 31, size: 192, elements: !1778)
!1777 = !DIFile(filename: "drivers/base/power/power.h", directory: "/home/lizy2001/genbc/linux")
!1778 = !{!1779, !1780, !1781, !1782}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1776, file: !1777, line: 32, baseType: !96, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1776, file: !1777, line: 33, baseType: !7, size: 32, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1776, file: !1777, line: 34, baseType: !145, size: 32, offset: 96)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1776, file: !1777, line: 35, baseType: !85, size: 64, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1767, file: !1768, line: 49, baseType: !1784, size: 320, offset: 320)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1785, line: 11, size: 320, elements: !1786)
!1785 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1786 = !{!1787, !1788, !1789, !1794}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1784, file: !1785, line: 16, baseType: !704, size: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1784, file: !1785, line: 17, baseType: !211, size: 64, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1784, file: !1785, line: 18, baseType: !1790, size: 64, offset: 192)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{null, !1793}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1784, file: !1785, line: 19, baseType: !434, size: 32, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1767, file: !1768, line: 50, baseType: !211, size: 64, offset: 640)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1767, file: !1768, line: 51, baseType: !510, size: 64, offset: 704)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1767, file: !1768, line: 52, baseType: !510, size: 64, offset: 768)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1767, file: !1768, line: 53, baseType: !510, size: 64, offset: 832)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1767, file: !1768, line: 54, baseType: !510, size: 64, offset: 896)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1767, file: !1768, line: 55, baseType: !510, size: 64, offset: 960)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1767, file: !1768, line: 56, baseType: !211, size: 64, offset: 1024)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1767, file: !1768, line: 57, baseType: !211, size: 64, offset: 1088)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1767, file: !1768, line: 58, baseType: !211, size: 64, offset: 1152)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1767, file: !1768, line: 59, baseType: !211, size: 64, offset: 1216)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1767, file: !1768, line: 60, baseType: !211, size: 64, offset: 1280)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1767, file: !1768, line: 61, baseType: !96, size: 64, offset: 1344)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1767, file: !1768, line: 62, baseType: !1004, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1767, file: !1768, line: 63, baseType: !1004, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1748, file: !37, line: 583, baseType: !1004, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1748, file: !37, line: 584, baseType: !1004, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1748, file: !37, line: 585, baseType: !1004, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1748, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1748, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1748, file: !37, line: 592, baseType: !502, size: 512, offset: 576)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1748, file: !37, line: 593, baseType: !280, size: 64, offset: 1088)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1748, file: !37, line: 594, baseType: !1329, size: 256, offset: 1152)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1748, file: !37, line: 595, baseType: !711, size: 128, offset: 1408)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1748, file: !37, line: 596, baseType: !1775, size: 64, offset: 1536)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1748, file: !37, line: 597, baseType: !302, size: 32, offset: 1600)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1748, file: !37, line: 598, baseType: !302, size: 32, offset: 1632)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1748, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1748, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1748, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1748, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1748, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1748, file: !37, line: 604, baseType: !1004, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1748, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1748, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1748, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1748, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1748, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1748, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1748, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1748, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1748, file: !37, line: 613, baseType: !145, size: 32, offset: 1792)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1748, file: !37, line: 614, baseType: !145, size: 32, offset: 1824)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1748, file: !37, line: 615, baseType: !280, size: 64, offset: 1856)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1748, file: !37, line: 616, baseType: !280, size: 64, offset: 1920)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1748, file: !37, line: 617, baseType: !280, size: 64, offset: 1984)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1748, file: !37, line: 618, baseType: !280, size: 64, offset: 2048)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1748, file: !37, line: 620, baseType: !1842, size: 64, offset: 2112)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1844)
!1844 = !{!1845, !1846, !1847, !1848}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1843, file: !37, line: 537, baseType: !119)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1843, file: !37, line: 538, baseType: !7, size: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1843, file: !37, line: 540, baseType: !105, size: 128, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1843, file: !37, line: 543, baseType: !1849, size: 64, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1748, file: !37, line: 621, baseType: !1852, size: 64, offset: 2176)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{null, !96, !664}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1748, file: !37, line: 622, baseType: !1856, size: 64, offset: 2240)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !51, line: 117, size: 2304, elements: !1858)
!1858 = !{!1859, !1888, !1889, !1896, !1901, !1928, !1929}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !1857, file: !51, line: 118, baseType: !1860, size: 320)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !51, line: 52, size: 320, elements: !1861)
!1861 = !{!1862, !1867, !1868, !1869, !1870, !1871}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1860, file: !51, line: 53, baseType: !1863, size: 128)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1864, line: 79, size: 128, elements: !1865)
!1864 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/lizy2001/genbc/linux")
!1865 = !{!1866}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1863, file: !1864, line: 80, baseType: !105, size: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1860, file: !51, line: 54, baseType: !664, size: 32, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1860, file: !51, line: 55, baseType: !664, size: 32, offset: 160)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1860, file: !51, line: 56, baseType: !664, size: 32, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1860, file: !51, line: 57, baseType: !50, size: 32, offset: 224)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1860, file: !51, line: 58, baseType: !1872, size: 64, offset: 256)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1874, line: 65, size: 320, elements: !1875)
!1874 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!1875 = !{!1876, !1877}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1873, file: !1874, line: 66, baseType: !321, size: 256)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1873, file: !1874, line: 67, baseType: !1878, size: 64, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1874, line: 54, size: 192, elements: !1880)
!1880 = !{!1881, !1886, !1887}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1879, file: !1874, line: 55, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1874, line: 51, baseType: !1883)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!145, !1878, !211, !80}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1879, file: !1874, line: 56, baseType: !1878, size: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1879, file: !1874, line: 57, baseType: !145, size: 32, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !1857, file: !51, line: 119, baseType: !1860, size: 320, offset: 320)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1857, file: !51, line: 120, baseType: !1890, size: 1280, offset: 640)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !51, line: 85, size: 1280, elements: !1891)
!1891 = !{!1892, !1893, !1894, !1895}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !1890, file: !51, line: 86, baseType: !1860, size: 320)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !1890, file: !51, line: 87, baseType: !1873, size: 320, offset: 320)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !1890, file: !51, line: 88, baseType: !1860, size: 320, offset: 640)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !1890, file: !51, line: 89, baseType: !1873, size: 320, offset: 960)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1857, file: !51, line: 121, baseType: !1897, size: 192, offset: 1920)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !51, line: 71, size: 192, elements: !1898)
!1898 = !{!1899, !1900}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1897, file: !51, line: 72, baseType: !105, size: 128)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !1897, file: !51, line: 73, baseType: !664, size: 32, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !1857, file: !51, line: 122, baseType: !1902, size: 64, offset: 2112)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !51, line: 107, size: 576, elements: !1904)
!1904 = !{!1905, !1906, !1927}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1903, file: !51, line: 108, baseType: !56, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1903, file: !51, line: 113, baseType: !1907, size: 448, offset: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1903, file: !51, line: 109, size: 448, elements: !1908)
!1908 = !{!1909, !1915, !1920}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1907, file: !51, line: 110, baseType: !1910, size: 320)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1864, line: 83, size: 320, elements: !1911)
!1911 = !{!1912, !1913, !1914}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1910, file: !1864, line: 84, baseType: !145, size: 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1910, file: !1864, line: 85, baseType: !105, size: 128, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1910, file: !1864, line: 86, baseType: !105, size: 128, offset: 192)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !1907, file: !51, line: 111, baseType: !1916, size: 192)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !51, line: 66, size: 192, elements: !1917)
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1916, file: !51, line: 67, baseType: !105, size: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1916, file: !51, line: 68, baseType: !664, size: 32, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1907, file: !51, line: 112, baseType: !1921, size: 448)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !51, line: 92, size: 448, elements: !1922)
!1922 = !{!1923, !1924, !1925}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1921, file: !51, line: 93, baseType: !63, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1921, file: !51, line: 94, baseType: !1910, size: 320, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1921, file: !51, line: 95, baseType: !1926, size: 64, offset: 384)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1903, file: !51, line: 114, baseType: !96, size: 64, offset: 512)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !1857, file: !51, line: 123, baseType: !1902, size: 64, offset: 2176)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !1857, file: !51, line: 124, baseType: !1902, size: 64, offset: 2240)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !97, file: !30, line: 486, baseType: !1931, size: 64, offset: 4096)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1933)
!1933 = !{!1934, !1935, !1936, !1940, !1941, !1942}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1932, file: !37, line: 643, baseType: !1665, size: 1472)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1932, file: !37, line: 644, baseType: !1642, size: 64, offset: 1472)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1932, file: !37, line: 645, baseType: !1937, size: 64, offset: 1536)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{null, !96, !1004}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1932, file: !37, line: 646, baseType: !1642, size: 64, offset: 1600)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1932, file: !37, line: 647, baseType: !1646, size: 64, offset: 1664)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1932, file: !37, line: 648, baseType: !1646, size: 64, offset: 1728)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !97, file: !30, line: 493, baseType: !1944, size: 64, offset: 4160)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !97, file: !30, line: 499, baseType: !105, size: 128, offset: 4224)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !97, file: !30, line: 502, baseType: !1948, size: 64, offset: 4352)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1950)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !97, file: !30, line: 504, baseType: !1952, size: 64, offset: 4416)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !97, file: !30, line: 505, baseType: !280, size: 64, offset: 4480)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !97, file: !30, line: 510, baseType: !280, size: 64, offset: 4544)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !97, file: !30, line: 511, baseType: !1956, size: 64, offset: 4608)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1958)
!1958 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !97, file: !30, line: 513, baseType: !1960, size: 64, offset: 4672)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1962)
!1962 = !{!1963, !1964}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1961, file: !30, line: 293, baseType: !7, size: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1961, file: !30, line: 294, baseType: !211, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !97, file: !30, line: 515, baseType: !105, size: 128, offset: 4736)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !97, file: !30, line: 526, baseType: !1967, offset: 4864)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1968, line: 5, elements: !133)
!1968 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !97, file: !30, line: 528, baseType: !1970, size: 64, offset: 4864)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1972, line: 14, flags: DIFlagFwdDecl)
!1972 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !97, file: !30, line: 529, baseType: !1974, size: 64, offset: 4928)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !91, line: 22, flags: DIFlagFwdDecl)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !97, file: !30, line: 534, baseType: !1977, size: 32, offset: 4992)
!1977 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !106, line: 16, baseType: !1978)
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !106, line: 13, baseType: !434)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !97, file: !30, line: 535, baseType: !434, size: 32, offset: 5024)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !97, file: !30, line: 537, baseType: !119, offset: 5056)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !97, file: !30, line: 538, baseType: !105, size: 128, offset: 5056)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !97, file: !30, line: 540, baseType: !1983, size: 64, offset: 5184)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1985, line: 54, size: 960, elements: !1986)
!1985 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1986 = !{!1987, !1988, !1989, !1990, !1991, !1992, !1993, !1997, !2001, !2002, !2003, !2004, !2008, !2012, !2013}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1984, file: !1985, line: 55, baseType: !85, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1984, file: !1985, line: 56, baseType: !1627, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1984, file: !1985, line: 58, baseType: !215, size: 64, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1984, file: !1985, line: 59, baseType: !215, size: 64, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1984, file: !1985, line: 60, baseType: !112, size: 64, offset: 256)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1984, file: !1985, line: 62, baseType: !1723, size: 64, offset: 320)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1984, file: !1985, line: 63, baseType: !1994, size: 64, offset: 384)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!161, !96, !1730}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1984, file: !1985, line: 65, baseType: !1998, size: 64, offset: 448)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{null, !1983}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1984, file: !1985, line: 66, baseType: !1646, size: 64, offset: 512)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1984, file: !1985, line: 68, baseType: !1642, size: 64, offset: 576)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1984, file: !1985, line: 70, baseType: !1378, size: 64, offset: 640)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1984, file: !1985, line: 71, baseType: !2005, size: 64, offset: 704)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!1395, !96}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1984, file: !1985, line: 73, baseType: !2009, size: 64, offset: 768)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{null, !96, !1415, !1421}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1984, file: !1985, line: 75, baseType: !1663, size: 64, offset: 832)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1984, file: !1985, line: 77, baseType: !2014, size: 64, offset: 896)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1596, line: 40, size: 2880, elements: !2016)
!2016 = !{!2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !2015, file: !1596, line: 41, baseType: !115, size: 704)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "devices_kset", scope: !2015, file: !1596, line: 42, baseType: !114, size: 64, offset: 704)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "interfaces", scope: !2015, file: !1596, line: 43, baseType: !105, size: 128, offset: 768)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2015, file: !1596, line: 44, baseType: !379, size: 192, offset: 896)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_kset", scope: !2015, file: !1596, line: 46, baseType: !114, size: 64, offset: 1088)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !2015, file: !1596, line: 47, baseType: !1599, size: 256, align: 64, offset: 1152)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "klist_drivers", scope: !2015, file: !1596, line: 48, baseType: !1599, size: 256, align: 64, offset: 1408)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "bus_notifier", scope: !2015, file: !1596, line: 49, baseType: !1873, size: 320, offset: 1664)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !2015, file: !1596, line: 50, baseType: !7, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2015, file: !1596, line: 51, baseType: !89, size: 64, offset: 2048)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "glue_dirs", scope: !2015, file: !1596, line: 53, baseType: !115, size: 704, offset: 2112)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2015, file: !1596, line: 54, baseType: !1983, size: 64, offset: 2816)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !97, file: !30, line: 541, baseType: !215, size: 64, offset: 5248)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !97, file: !30, line: 543, baseType: !1646, size: 64, offset: 5312)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !97, file: !30, line: 544, baseType: !2032, size: 64, offset: 5376)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !97, file: !30, line: 545, baseType: !2035, size: 64, offset: 5440)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !97, file: !30, line: 547, baseType: !1004, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !97, file: !30, line: 548, baseType: !1004, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !97, file: !30, line: 549, baseType: !1004, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !97, file: !30, line: 550, baseType: !1004, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !90, file: !91, line: 86, baseType: !215, size: 64, offset: 192)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !90, file: !91, line: 87, baseType: !215, size: 64, offset: 256)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !90, file: !91, line: 88, baseType: !215, size: 64, offset: 320)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !90, file: !91, line: 90, baseType: !2045, size: 64, offset: 384)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!145, !96, !1621}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !90, file: !91, line: 91, baseType: !1723, size: 64, offset: 448)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !90, file: !91, line: 92, baseType: !1642, size: 64, offset: 512)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !90, file: !91, line: 93, baseType: !1646, size: 64, offset: 576)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !90, file: !91, line: 94, baseType: !1642, size: 64, offset: 640)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !90, file: !91, line: 95, baseType: !1646, size: 64, offset: 704)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !90, file: !91, line: 97, baseType: !1642, size: 64, offset: 768)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !90, file: !91, line: 98, baseType: !1642, size: 64, offset: 832)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !90, file: !91, line: 100, baseType: !1652, size: 64, offset: 896)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !90, file: !91, line: 101, baseType: !1642, size: 64, offset: 960)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !90, file: !91, line: 103, baseType: !1642, size: 64, offset: 1024)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !90, file: !91, line: 105, baseType: !1642, size: 64, offset: 1088)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !90, file: !91, line: 107, baseType: !1663, size: 64, offset: 1152)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !90, file: !91, line: 109, baseType: !2061, size: 64, offset: 1216)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2063)
!2063 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !91, line: 109, flags: DIFlagFwdDecl)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !90, file: !91, line: 111, baseType: !2014, size: 64, offset: 1280)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !90, file: !91, line: 112, baseType: !2066, offset: 1344)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2067, line: 187, elements: !133)
!2067 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !90, file: !91, line: 114, baseType: !1004, size: 8, offset: 1344)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !82, file: !30, line: 65, baseType: !105, size: 128, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "add_dev", scope: !82, file: !30, line: 66, baseType: !2071, size: 64, offset: 256)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!145, !96, !81}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "remove_dev", scope: !82, file: !30, line: 67, baseType: !2075, size: 64, offset: 320)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{null, !96, !81}
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_attribute", file: !24, line: 134, size: 256, elements: !2080)
!2080 = !{!2081, !2082, !2086}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2079, file: !24, line: 135, baseType: !198, size: 128)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2079, file: !24, line: 136, baseType: !2083, size: 64, offset: 128)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!192, !1621, !161}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2079, file: !24, line: 137, baseType: !2087, size: 64, offset: 192)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!192, !1621, !85, !208}
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_attribute", file: !91, line: 123, size: 256, elements: !2092)
!2092 = !{!2093, !2094, !2098}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2091, file: !91, line: 124, baseType: !198, size: 128)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2091, file: !91, line: 125, baseType: !2095, size: 64, offset: 128)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!192, !89, !161}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2091, file: !91, line: 126, baseType: !2099, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!192, !89, !85, !208}
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !109)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2103)
!2106 = !{!2107, !2112, !2114, !0, !2116, !2118, !2120, !2122, !2124, !2126, !2128, !2130, !2132, !2134}
!2107 = !DIGlobalVariableExpression(var: !2108, expr: !DIExpression())
!2108 = distinct !DIGlobalVariable(name: "__key", scope: !2109, file: !3, line: 815, type: !2066, isLocal: true, isDefinition: true)
!2109 = distinct !DISubprogram(name: "bus_register", scope: !3, file: !3, line: 802, type: !2110, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!145, !89}
!2112 = !DIGlobalVariableExpression(var: !2113, expr: !DIExpression())
!2113 = distinct !DIGlobalVariable(name: "system_kset", scope: !2, file: !3, line: 25, type: !114, isLocal: true, isDefinition: true)
!2114 = !DIGlobalVariableExpression(var: !2115, expr: !DIExpression())
!2115 = distinct !DIGlobalVariable(name: "bus_kset", scope: !2, file: !3, line: 179, type: !114, isLocal: true, isDefinition: true)
!2116 = !DIGlobalVariableExpression(var: !2117, expr: !DIExpression())
!2117 = distinct !DIGlobalVariable(name: "driver_sysfs_ops", scope: !2, file: !3, line: 81, type: !184, isLocal: true, isDefinition: true)
!2118 = !DIGlobalVariableExpression(var: !2119, expr: !DIExpression())
!2119 = distinct !DIGlobalVariable(name: "driver_attr_uevent", scope: !2, file: !3, line: 588, type: !2079, isLocal: true, isDefinition: true)
!2120 = !DIGlobalVariableExpression(var: !2121, expr: !DIExpression())
!2121 = distinct !DIGlobalVariable(name: "driver_attr_unbind", scope: !2, file: !3, line: 198, type: !2079, isLocal: true, isDefinition: true)
!2122 = !DIGlobalVariableExpression(var: !2123, expr: !DIExpression())
!2123 = distinct !DIGlobalVariable(name: "driver_attr_bind", scope: !2, file: !3, line: 228, type: !2079, isLocal: true, isDefinition: true)
!2124 = !DIGlobalVariableExpression(var: !2125, expr: !DIExpression())
!2125 = distinct !DIGlobalVariable(name: "bus_ktype", scope: !2, file: !3, line: 161, type: !176, isLocal: true, isDefinition: true)
!2126 = !DIGlobalVariableExpression(var: !2127, expr: !DIExpression())
!2127 = distinct !DIGlobalVariable(name: "bus_sysfs_ops", scope: !2, file: !3, line: 126, type: !184, isLocal: true, isDefinition: true)
!2128 = !DIGlobalVariableExpression(var: !2129, expr: !DIExpression())
!2129 = distinct !DIGlobalVariable(name: "bus_attr_uevent", scope: !2, file: !3, line: 791, type: !2091, isLocal: true, isDefinition: true)
!2130 = !DIGlobalVariableExpression(var: !2131, expr: !DIExpression())
!2131 = distinct !DIGlobalVariable(name: "bus_attr_drivers_probe", scope: !2, file: !3, line: 556, type: !2091, isLocal: true, isDefinition: true)
!2132 = !DIGlobalVariableExpression(var: !2133, expr: !DIExpression())
!2133 = distinct !DIGlobalVariable(name: "bus_attr_drivers_autoprobe", scope: !2, file: !3, line: 557, type: !2091, isLocal: true, isDefinition: true)
!2134 = !DIGlobalVariableExpression(var: !2135, expr: !DIExpression())
!2135 = distinct !DIGlobalVariable(name: "bus_uevent_ops", scope: !2, file: !3, line: 175, type: !137, isLocal: true, isDefinition: true)
!2136 = !{i32 7, !"Dwarf Version", i32 4}
!2137 = !{i32 2, !"Debug Info Version", i32 3}
!2138 = !{i32 1, !"wchar_size", i32 2}
!2139 = !{i32 1, !"Code Model", i32 2}
!2140 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2141 = distinct !DISubprogram(name: "bus_create_file", scope: !3, file: !3, line: 131, type: !2142, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!145, !89, !2090}
!2144 = !DILocalVariable(name: "bus", arg: 1, scope: !2141, file: !3, line: 131, type: !89)
!2145 = !DILocation(line: 131, column: 38, scope: !2141)
!2146 = !DILocalVariable(name: "attr", arg: 2, scope: !2141, file: !3, line: 131, type: !2090)
!2147 = !DILocation(line: 131, column: 65, scope: !2141)
!2148 = !DILocalVariable(name: "error", scope: !2141, file: !3, line: 133, type: !145)
!2149 = !DILocation(line: 133, column: 6, scope: !2141)
!2150 = !DILocation(line: 134, column: 14, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 134, column: 6)
!2152 = !DILocation(line: 134, column: 6, scope: !2151)
!2153 = !DILocation(line: 134, column: 6, scope: !2141)
!2154 = !DILocation(line: 135, column: 30, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 134, column: 20)
!2156 = !DILocation(line: 135, column: 35, scope: !2155)
!2157 = !DILocation(line: 135, column: 38, scope: !2155)
!2158 = !DILocation(line: 135, column: 45, scope: !2155)
!2159 = !DILocation(line: 135, column: 52, scope: !2155)
!2160 = !DILocation(line: 135, column: 58, scope: !2155)
!2161 = !DILocation(line: 135, column: 11, scope: !2155)
!2162 = !DILocation(line: 135, column: 9, scope: !2155)
!2163 = !DILocation(line: 136, column: 11, scope: !2155)
!2164 = !DILocation(line: 136, column: 3, scope: !2155)
!2165 = !DILocation(line: 137, column: 2, scope: !2155)
!2166 = !DILocation(line: 138, column: 9, scope: !2151)
!2167 = !DILocation(line: 139, column: 9, scope: !2141)
!2168 = !DILocation(line: 139, column: 2, scope: !2141)
!2169 = distinct !DISubprogram(name: "bus_get", scope: !3, file: !3, line: 42, type: !2170, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!89, !89}
!2172 = !DILocalVariable(name: "bus", arg: 1, scope: !2169, file: !3, line: 42, type: !89)
!2173 = !DILocation(line: 42, column: 50, scope: !2169)
!2174 = !DILocation(line: 44, column: 6, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 44, column: 6)
!2176 = !DILocation(line: 44, column: 6, scope: !2169)
!2177 = !DILocation(line: 45, column: 13, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 44, column: 11)
!2179 = !DILocation(line: 45, column: 18, scope: !2178)
!2180 = !DILocation(line: 45, column: 21, scope: !2178)
!2181 = !DILocation(line: 45, column: 3, scope: !2178)
!2182 = !DILocation(line: 46, column: 10, scope: !2178)
!2183 = !DILocation(line: 46, column: 3, scope: !2178)
!2184 = !DILocation(line: 48, column: 2, scope: !2169)
!2185 = !DILocation(line: 49, column: 1, scope: !2169)
!2186 = distinct !DISubprogram(name: "sysfs_create_file", scope: !186, file: !186, line: 596, type: !2187, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!145, !112, !2189}
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!2191 = !DILocalVariable(name: "kobj", arg: 1, scope: !2186, file: !186, line: 596, type: !112)
!2192 = !DILocation(line: 596, column: 66, scope: !2186)
!2193 = !DILocalVariable(name: "attr", arg: 2, scope: !2186, file: !186, line: 597, type: !2189)
!2194 = !DILocation(line: 597, column: 32, scope: !2186)
!2195 = !DILocation(line: 599, column: 30, scope: !2186)
!2196 = !DILocation(line: 599, column: 36, scope: !2186)
!2197 = !DILocation(line: 599, column: 9, scope: !2186)
!2198 = !DILocation(line: 599, column: 2, scope: !2186)
!2199 = distinct !DISubprogram(name: "bus_put", scope: !3, file: !3, line: 51, type: !2200, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{null, !89}
!2202 = !DILocalVariable(name: "bus", arg: 1, scope: !2199, file: !3, line: 51, type: !89)
!2203 = !DILocation(line: 51, column: 38, scope: !2199)
!2204 = !DILocation(line: 53, column: 6, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 53, column: 6)
!2206 = !DILocation(line: 53, column: 6, scope: !2199)
!2207 = !DILocation(line: 54, column: 13, scope: !2205)
!2208 = !DILocation(line: 54, column: 18, scope: !2205)
!2209 = !DILocation(line: 54, column: 21, scope: !2205)
!2210 = !DILocation(line: 54, column: 3, scope: !2205)
!2211 = !DILocation(line: 55, column: 1, scope: !2199)
!2212 = distinct !DISubprogram(name: "bus_remove_file", scope: !3, file: !3, line: 143, type: !2213, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{null, !89, !2090}
!2215 = !DILocalVariable(name: "bus", arg: 1, scope: !2212, file: !3, line: 143, type: !89)
!2216 = !DILocation(line: 143, column: 39, scope: !2212)
!2217 = !DILocalVariable(name: "attr", arg: 2, scope: !2212, file: !3, line: 143, type: !2090)
!2218 = !DILocation(line: 143, column: 66, scope: !2212)
!2219 = !DILocation(line: 145, column: 14, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 145, column: 6)
!2221 = !DILocation(line: 145, column: 6, scope: !2220)
!2222 = !DILocation(line: 145, column: 6, scope: !2212)
!2223 = !DILocation(line: 146, column: 22, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 145, column: 20)
!2225 = !DILocation(line: 146, column: 27, scope: !2224)
!2226 = !DILocation(line: 146, column: 30, scope: !2224)
!2227 = !DILocation(line: 146, column: 37, scope: !2224)
!2228 = !DILocation(line: 146, column: 44, scope: !2224)
!2229 = !DILocation(line: 146, column: 50, scope: !2224)
!2230 = !DILocation(line: 146, column: 3, scope: !2224)
!2231 = !DILocation(line: 147, column: 11, scope: !2224)
!2232 = !DILocation(line: 147, column: 3, scope: !2224)
!2233 = !DILocation(line: 148, column: 2, scope: !2224)
!2234 = !DILocation(line: 149, column: 1, scope: !2212)
!2235 = distinct !DISubprogram(name: "sysfs_remove_file", scope: !186, file: !186, line: 602, type: !2236, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{null, !112, !2189}
!2238 = !DILocalVariable(name: "kobj", arg: 1, scope: !2235, file: !186, line: 602, type: !112)
!2239 = !DILocation(line: 602, column: 54, scope: !2235)
!2240 = !DILocalVariable(name: "attr", arg: 2, scope: !2235, file: !186, line: 603, type: !2189)
!2241 = !DILocation(line: 603, column: 34, scope: !2235)
!2242 = !DILocation(line: 605, column: 23, scope: !2235)
!2243 = !DILocation(line: 605, column: 29, scope: !2235)
!2244 = !DILocation(line: 605, column: 2, scope: !2235)
!2245 = !DILocation(line: 606, column: 1, scope: !2235)
!2246 = distinct !DISubprogram(name: "bus_for_each_dev", scope: !3, file: !3, line: 292, type: !2247, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!145, !89, !96, !80, !2249}
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!145, !96, !80}
!2252 = !DILocalVariable(name: "bus", arg: 1, scope: !2246, file: !3, line: 292, type: !89)
!2253 = !DILocation(line: 292, column: 39, scope: !2246)
!2254 = !DILocalVariable(name: "start", arg: 2, scope: !2246, file: !3, line: 292, type: !96)
!2255 = !DILocation(line: 292, column: 59, scope: !2246)
!2256 = !DILocalVariable(name: "data", arg: 3, scope: !2246, file: !3, line: 293, type: !80)
!2257 = !DILocation(line: 293, column: 14, scope: !2246)
!2258 = !DILocalVariable(name: "fn", arg: 4, scope: !2246, file: !3, line: 293, type: !2249)
!2259 = !DILocation(line: 293, column: 26, scope: !2246)
!2260 = !DILocalVariable(name: "i", scope: !2246, file: !3, line: 295, type: !2261)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_iter", file: !1600, line: 54, size: 128, elements: !2262)
!2262 = !{!2263, !2265}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "i_klist", scope: !2261, file: !1600, line: 55, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "i_cur", scope: !2261, file: !1600, line: 56, baseType: !1608, size: 64, offset: 64)
!2266 = !DILocation(line: 295, column: 20, scope: !2246)
!2267 = !DILocalVariable(name: "dev", scope: !2246, file: !3, line: 296, type: !96)
!2268 = !DILocation(line: 296, column: 17, scope: !2246)
!2269 = !DILocalVariable(name: "error", scope: !2246, file: !3, line: 297, type: !145)
!2270 = !DILocation(line: 297, column: 6, scope: !2246)
!2271 = !DILocation(line: 299, column: 7, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 299, column: 6)
!2273 = !DILocation(line: 299, column: 11, scope: !2272)
!2274 = !DILocation(line: 299, column: 15, scope: !2272)
!2275 = !DILocation(line: 299, column: 20, scope: !2272)
!2276 = !DILocation(line: 299, column: 6, scope: !2246)
!2277 = !DILocation(line: 300, column: 3, scope: !2272)
!2278 = !DILocation(line: 302, column: 24, scope: !2246)
!2279 = !DILocation(line: 302, column: 29, scope: !2246)
!2280 = !DILocation(line: 302, column: 32, scope: !2246)
!2281 = !DILocation(line: 303, column: 10, scope: !2246)
!2282 = !DILocation(line: 303, column: 19, scope: !2246)
!2283 = !DILocation(line: 303, column: 26, scope: !2246)
!2284 = !DILocation(line: 303, column: 29, scope: !2246)
!2285 = !DILocation(line: 302, column: 2, scope: !2246)
!2286 = !DILocation(line: 304, column: 2, scope: !2246)
!2287 = !DILocation(line: 304, column: 10, scope: !2246)
!2288 = !DILocation(line: 304, column: 16, scope: !2246)
!2289 = !DILocation(line: 304, column: 26, scope: !2246)
!2290 = !DILocation(line: 304, column: 24, scope: !2246)
!2291 = !DILocation(line: 0, scope: !2246)
!2292 = !DILocation(line: 305, column: 11, scope: !2246)
!2293 = !DILocation(line: 305, column: 14, scope: !2246)
!2294 = !DILocation(line: 305, column: 19, scope: !2246)
!2295 = !DILocation(line: 305, column: 9, scope: !2246)
!2296 = distinct !{!2296, !2286, !2297}
!2297 = !DILocation(line: 305, column: 23, scope: !2246)
!2298 = !DILocation(line: 306, column: 2, scope: !2246)
!2299 = !DILocation(line: 307, column: 9, scope: !2246)
!2300 = !DILocation(line: 307, column: 2, scope: !2246)
!2301 = !DILocation(line: 308, column: 1, scope: !2246)
!2302 = distinct !DISubprogram(name: "next_device", scope: !3, file: !3, line: 260, type: !2303, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!96, !2305}
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2306 = !DILocalVariable(name: "i", arg: 1, scope: !2302, file: !3, line: 260, type: !2305)
!2307 = !DILocation(line: 260, column: 54, scope: !2302)
!2308 = !DILocalVariable(name: "n", scope: !2302, file: !3, line: 262, type: !1608)
!2309 = !DILocation(line: 262, column: 21, scope: !2302)
!2310 = !DILocation(line: 262, column: 36, scope: !2302)
!2311 = !DILocation(line: 262, column: 25, scope: !2302)
!2312 = !DILocalVariable(name: "dev", scope: !2302, file: !3, line: 263, type: !96)
!2313 = !DILocation(line: 263, column: 17, scope: !2302)
!2314 = !DILocalVariable(name: "dev_prv", scope: !2302, file: !3, line: 264, type: !1594)
!2315 = !DILocation(line: 264, column: 25, scope: !2302)
!2316 = !DILocation(line: 266, column: 6, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 266, column: 6)
!2318 = !DILocation(line: 266, column: 6, scope: !2302)
!2319 = !DILocalVariable(name: "__mptr", scope: !2320, file: !3, line: 267, type: !80)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 267, column: 13)
!2321 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 266, column: 9)
!2322 = !DILocation(line: 267, column: 13, scope: !2320)
!2323 = !DILocation(line: 267, column: 13, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 267, column: 13)
!2325 = !DILocation(line: 267, column: 11, scope: !2321)
!2326 = !DILocation(line: 268, column: 9, scope: !2321)
!2327 = !DILocation(line: 268, column: 18, scope: !2321)
!2328 = !DILocation(line: 268, column: 7, scope: !2321)
!2329 = !DILocation(line: 269, column: 2, scope: !2321)
!2330 = !DILocation(line: 270, column: 9, scope: !2302)
!2331 = !DILocation(line: 270, column: 2, scope: !2302)
!2332 = distinct !DISubprogram(name: "bus_find_device", scope: !3, file: !3, line: 326, type: !2333, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!96, !89, !96, !1395, !2335}
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!145, !96, !1395}
!2338 = !DILocalVariable(name: "bus", arg: 1, scope: !2332, file: !3, line: 326, type: !89)
!2339 = !DILocation(line: 326, column: 49, scope: !2332)
!2340 = !DILocalVariable(name: "start", arg: 2, scope: !2332, file: !3, line: 327, type: !96)
!2341 = !DILocation(line: 327, column: 26, scope: !2332)
!2342 = !DILocalVariable(name: "data", arg: 3, scope: !2332, file: !3, line: 327, type: !1395)
!2343 = !DILocation(line: 327, column: 45, scope: !2332)
!2344 = !DILocalVariable(name: "match", arg: 4, scope: !2332, file: !3, line: 328, type: !2335)
!2345 = !DILocation(line: 328, column: 17, scope: !2332)
!2346 = !DILocalVariable(name: "i", scope: !2332, file: !3, line: 330, type: !2261)
!2347 = !DILocation(line: 330, column: 20, scope: !2332)
!2348 = !DILocalVariable(name: "dev", scope: !2332, file: !3, line: 331, type: !96)
!2349 = !DILocation(line: 331, column: 17, scope: !2332)
!2350 = !DILocation(line: 333, column: 7, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 333, column: 6)
!2352 = !DILocation(line: 333, column: 11, scope: !2351)
!2353 = !DILocation(line: 333, column: 15, scope: !2351)
!2354 = !DILocation(line: 333, column: 20, scope: !2351)
!2355 = !DILocation(line: 333, column: 6, scope: !2332)
!2356 = !DILocation(line: 334, column: 3, scope: !2351)
!2357 = !DILocation(line: 336, column: 24, scope: !2332)
!2358 = !DILocation(line: 336, column: 29, scope: !2332)
!2359 = !DILocation(line: 336, column: 32, scope: !2332)
!2360 = !DILocation(line: 337, column: 10, scope: !2332)
!2361 = !DILocation(line: 337, column: 19, scope: !2332)
!2362 = !DILocation(line: 337, column: 26, scope: !2332)
!2363 = !DILocation(line: 337, column: 29, scope: !2332)
!2364 = !DILocation(line: 336, column: 2, scope: !2332)
!2365 = !DILocation(line: 338, column: 2, scope: !2332)
!2366 = !DILocation(line: 338, column: 16, scope: !2332)
!2367 = !DILocation(line: 338, column: 14, scope: !2332)
!2368 = !DILocation(line: 339, column: 7, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 339, column: 7)
!2370 = !DILocation(line: 339, column: 13, scope: !2369)
!2371 = !DILocation(line: 339, column: 18, scope: !2369)
!2372 = !DILocation(line: 339, column: 24, scope: !2369)
!2373 = !DILocation(line: 339, column: 38, scope: !2369)
!2374 = !DILocation(line: 339, column: 27, scope: !2369)
!2375 = !DILocation(line: 339, column: 7, scope: !2332)
!2376 = !DILocation(line: 340, column: 4, scope: !2369)
!2377 = distinct !{!2377, !2365, !2378}
!2378 = !DILocation(line: 340, column: 4, scope: !2332)
!2379 = !DILocation(line: 341, column: 2, scope: !2332)
!2380 = !DILocation(line: 342, column: 9, scope: !2332)
!2381 = !DILocation(line: 342, column: 2, scope: !2332)
!2382 = !DILocation(line: 343, column: 1, scope: !2332)
!2383 = distinct !DISubprogram(name: "subsys_find_device_by_id", scope: !3, file: !3, line: 356, type: !2384, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!96, !89, !7, !96}
!2386 = !DILocalVariable(name: "subsys", arg: 1, scope: !2383, file: !3, line: 356, type: !89)
!2387 = !DILocation(line: 356, column: 58, scope: !2383)
!2388 = !DILocalVariable(name: "id", arg: 2, scope: !2383, file: !3, line: 356, type: !7)
!2389 = !DILocation(line: 356, column: 79, scope: !2383)
!2390 = !DILocalVariable(name: "hint", arg: 3, scope: !2383, file: !3, line: 357, type: !96)
!2391 = !DILocation(line: 357, column: 21, scope: !2383)
!2392 = !DILocalVariable(name: "i", scope: !2383, file: !3, line: 359, type: !2261)
!2393 = !DILocation(line: 359, column: 20, scope: !2383)
!2394 = !DILocalVariable(name: "dev", scope: !2383, file: !3, line: 360, type: !96)
!2395 = !DILocation(line: 360, column: 17, scope: !2383)
!2396 = !DILocation(line: 362, column: 7, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 362, column: 6)
!2398 = !DILocation(line: 362, column: 6, scope: !2383)
!2399 = !DILocation(line: 363, column: 3, scope: !2397)
!2400 = !DILocation(line: 365, column: 6, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 365, column: 6)
!2402 = !DILocation(line: 365, column: 6, scope: !2383)
!2403 = !DILocation(line: 366, column: 25, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 365, column: 12)
!2405 = !DILocation(line: 366, column: 33, scope: !2404)
!2406 = !DILocation(line: 366, column: 36, scope: !2404)
!2407 = !DILocation(line: 366, column: 56, scope: !2404)
!2408 = !DILocation(line: 366, column: 62, scope: !2404)
!2409 = !DILocation(line: 366, column: 65, scope: !2404)
!2410 = !DILocation(line: 366, column: 3, scope: !2404)
!2411 = !DILocation(line: 367, column: 9, scope: !2404)
!2412 = !DILocation(line: 367, column: 7, scope: !2404)
!2413 = !DILocation(line: 368, column: 7, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 368, column: 7)
!2415 = !DILocation(line: 368, column: 11, scope: !2414)
!2416 = !DILocation(line: 368, column: 14, scope: !2414)
!2417 = !DILocation(line: 368, column: 19, scope: !2414)
!2418 = !DILocation(line: 368, column: 25, scope: !2414)
!2419 = !DILocation(line: 368, column: 22, scope: !2414)
!2420 = !DILocation(line: 368, column: 28, scope: !2414)
!2421 = !DILocation(line: 368, column: 42, scope: !2414)
!2422 = !DILocation(line: 368, column: 31, scope: !2414)
!2423 = !DILocation(line: 368, column: 7, scope: !2404)
!2424 = !DILocation(line: 369, column: 4, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 368, column: 48)
!2426 = !DILocation(line: 370, column: 11, scope: !2425)
!2427 = !DILocation(line: 370, column: 4, scope: !2425)
!2428 = !DILocation(line: 372, column: 3, scope: !2404)
!2429 = !DILocation(line: 373, column: 2, scope: !2404)
!2430 = !DILocation(line: 375, column: 24, scope: !2383)
!2431 = !DILocation(line: 375, column: 32, scope: !2383)
!2432 = !DILocation(line: 375, column: 35, scope: !2383)
!2433 = !DILocation(line: 375, column: 2, scope: !2383)
!2434 = !DILocation(line: 376, column: 2, scope: !2383)
!2435 = !DILocation(line: 376, column: 16, scope: !2383)
!2436 = !DILocation(line: 376, column: 14, scope: !2383)
!2437 = !DILocation(line: 377, column: 7, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 377, column: 7)
!2439 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 376, column: 34)
!2440 = !DILocation(line: 377, column: 12, scope: !2438)
!2441 = !DILocation(line: 377, column: 18, scope: !2438)
!2442 = !DILocation(line: 377, column: 15, scope: !2438)
!2443 = !DILocation(line: 377, column: 21, scope: !2438)
!2444 = !DILocation(line: 377, column: 35, scope: !2438)
!2445 = !DILocation(line: 377, column: 24, scope: !2438)
!2446 = !DILocation(line: 377, column: 7, scope: !2439)
!2447 = !DILocation(line: 378, column: 4, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 377, column: 41)
!2449 = !DILocation(line: 379, column: 11, scope: !2448)
!2450 = !DILocation(line: 379, column: 4, scope: !2448)
!2451 = distinct !{!2451, !2434, !2452}
!2452 = !DILocation(line: 381, column: 2, scope: !2383)
!2453 = !DILocation(line: 382, column: 2, scope: !2383)
!2454 = !DILocation(line: 383, column: 2, scope: !2383)
!2455 = !DILocation(line: 384, column: 1, scope: !2383)
!2456 = distinct !DISubprogram(name: "bus_for_each_drv", scope: !3, file: !3, line: 418, type: !2457, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!145, !89, !1621, !80, !2459}
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!145, !1621, !80}
!2462 = !DILocalVariable(name: "bus", arg: 1, scope: !2456, file: !3, line: 418, type: !89)
!2463 = !DILocation(line: 418, column: 39, scope: !2456)
!2464 = !DILocalVariable(name: "start", arg: 2, scope: !2456, file: !3, line: 418, type: !1621)
!2465 = !DILocation(line: 418, column: 66, scope: !2456)
!2466 = !DILocalVariable(name: "data", arg: 3, scope: !2456, file: !3, line: 419, type: !80)
!2467 = !DILocation(line: 419, column: 14, scope: !2456)
!2468 = !DILocalVariable(name: "fn", arg: 4, scope: !2456, file: !3, line: 419, type: !2459)
!2469 = !DILocation(line: 419, column: 26, scope: !2456)
!2470 = !DILocalVariable(name: "i", scope: !2456, file: !3, line: 421, type: !2261)
!2471 = !DILocation(line: 421, column: 20, scope: !2456)
!2472 = !DILocalVariable(name: "drv", scope: !2456, file: !3, line: 422, type: !1621)
!2473 = !DILocation(line: 422, column: 24, scope: !2456)
!2474 = !DILocalVariable(name: "error", scope: !2456, file: !3, line: 423, type: !145)
!2475 = !DILocation(line: 423, column: 6, scope: !2456)
!2476 = !DILocation(line: 425, column: 7, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 425, column: 6)
!2478 = !DILocation(line: 425, column: 6, scope: !2456)
!2479 = !DILocation(line: 426, column: 3, scope: !2477)
!2480 = !DILocation(line: 428, column: 24, scope: !2456)
!2481 = !DILocation(line: 428, column: 29, scope: !2456)
!2482 = !DILocation(line: 428, column: 32, scope: !2456)
!2483 = !DILocation(line: 429, column: 9, scope: !2456)
!2484 = !DILocation(line: 429, column: 18, scope: !2456)
!2485 = !DILocation(line: 429, column: 25, scope: !2456)
!2486 = !DILocation(line: 429, column: 28, scope: !2456)
!2487 = !DILocation(line: 428, column: 2, scope: !2456)
!2488 = !DILocation(line: 430, column: 2, scope: !2456)
!2489 = !DILocation(line: 430, column: 16, scope: !2456)
!2490 = !DILocation(line: 430, column: 14, scope: !2456)
!2491 = !DILocation(line: 430, column: 33, scope: !2456)
!2492 = !DILocation(line: 430, column: 37, scope: !2456)
!2493 = !DILocation(line: 430, column: 36, scope: !2456)
!2494 = !DILocation(line: 0, scope: !2456)
!2495 = !DILocation(line: 431, column: 11, scope: !2456)
!2496 = !DILocation(line: 431, column: 14, scope: !2456)
!2497 = !DILocation(line: 431, column: 19, scope: !2456)
!2498 = !DILocation(line: 431, column: 9, scope: !2456)
!2499 = distinct !{!2499, !2488, !2500}
!2500 = !DILocation(line: 431, column: 23, scope: !2456)
!2501 = !DILocation(line: 432, column: 2, scope: !2456)
!2502 = !DILocation(line: 433, column: 9, scope: !2456)
!2503 = !DILocation(line: 433, column: 2, scope: !2456)
!2504 = !DILocation(line: 434, column: 1, scope: !2456)
!2505 = distinct !DISubprogram(name: "next_driver", scope: !3, file: !3, line: 387, type: !2506, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!1621, !2305}
!2508 = !DILocalVariable(name: "i", arg: 1, scope: !2505, file: !3, line: 387, type: !2305)
!2509 = !DILocation(line: 387, column: 61, scope: !2505)
!2510 = !DILocalVariable(name: "n", scope: !2505, file: !3, line: 389, type: !1608)
!2511 = !DILocation(line: 389, column: 21, scope: !2505)
!2512 = !DILocation(line: 389, column: 36, scope: !2505)
!2513 = !DILocation(line: 389, column: 25, scope: !2505)
!2514 = !DILocalVariable(name: "drv_priv", scope: !2505, file: !3, line: 390, type: !1692)
!2515 = !DILocation(line: 390, column: 25, scope: !2505)
!2516 = !DILocation(line: 392, column: 6, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 392, column: 6)
!2518 = !DILocation(line: 392, column: 6, scope: !2505)
!2519 = !DILocalVariable(name: "__mptr", scope: !2520, file: !3, line: 393, type: !80)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 393, column: 14)
!2521 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 392, column: 9)
!2522 = !DILocation(line: 393, column: 14, scope: !2520)
!2523 = !DILocation(line: 393, column: 14, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 393, column: 14)
!2525 = !DILocation(line: 393, column: 12, scope: !2521)
!2526 = !DILocation(line: 394, column: 10, scope: !2521)
!2527 = !DILocation(line: 394, column: 20, scope: !2521)
!2528 = !DILocation(line: 394, column: 3, scope: !2521)
!2529 = !DILocation(line: 396, column: 2, scope: !2505)
!2530 = !DILocation(line: 397, column: 1, scope: !2505)
!2531 = distinct !DISubprogram(name: "bus_add_device", scope: !3, file: !3, line: 445, type: !1643, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2532 = !DILocalVariable(name: "dev", arg: 1, scope: !2531, file: !3, line: 445, type: !96)
!2533 = !DILocation(line: 445, column: 35, scope: !2531)
!2534 = !DILocalVariable(name: "bus", scope: !2531, file: !3, line: 447, type: !89)
!2535 = !DILocation(line: 447, column: 19, scope: !2531)
!2536 = !DILocation(line: 447, column: 33, scope: !2531)
!2537 = !DILocation(line: 447, column: 38, scope: !2531)
!2538 = !DILocation(line: 447, column: 25, scope: !2531)
!2539 = !DILocalVariable(name: "error", scope: !2531, file: !3, line: 448, type: !145)
!2540 = !DILocation(line: 448, column: 6, scope: !2531)
!2541 = !DILocation(line: 450, column: 6, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 450, column: 6)
!2543 = !DILocation(line: 450, column: 6, scope: !2531)
!2544 = !DILocation(line: 451, column: 3, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 451, column: 3)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 451, column: 3)
!2547 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 450, column: 11)
!2548 = !DILocation(line: 451, column: 3, scope: !2546)
!2549 = !DILocation(line: 452, column: 29, scope: !2547)
!2550 = !DILocation(line: 452, column: 34, scope: !2547)
!2551 = !DILocation(line: 452, column: 39, scope: !2547)
!2552 = !DILocation(line: 452, column: 11, scope: !2547)
!2553 = !DILocation(line: 452, column: 9, scope: !2547)
!2554 = !DILocation(line: 453, column: 7, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 453, column: 7)
!2556 = !DILocation(line: 453, column: 7, scope: !2547)
!2557 = !DILocation(line: 454, column: 4, scope: !2555)
!2558 = !DILocation(line: 455, column: 30, scope: !2547)
!2559 = !DILocation(line: 455, column: 35, scope: !2547)
!2560 = !DILocation(line: 455, column: 38, scope: !2547)
!2561 = !DILocation(line: 455, column: 52, scope: !2547)
!2562 = !DILocation(line: 456, column: 8, scope: !2547)
!2563 = !DILocation(line: 456, column: 13, scope: !2547)
!2564 = !DILocation(line: 456, column: 28, scope: !2547)
!2565 = !DILocation(line: 456, column: 19, scope: !2547)
!2566 = !DILocation(line: 455, column: 11, scope: !2547)
!2567 = !DILocation(line: 455, column: 9, scope: !2547)
!2568 = !DILocation(line: 457, column: 7, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 457, column: 7)
!2570 = !DILocation(line: 457, column: 7, scope: !2547)
!2571 = !DILocation(line: 458, column: 4, scope: !2569)
!2572 = !DILocation(line: 459, column: 30, scope: !2547)
!2573 = !DILocation(line: 459, column: 35, scope: !2547)
!2574 = !DILocation(line: 460, column: 6, scope: !2547)
!2575 = !DILocation(line: 460, column: 11, scope: !2547)
!2576 = !DILocation(line: 460, column: 16, scope: !2547)
!2577 = !DILocation(line: 460, column: 19, scope: !2547)
!2578 = !DILocation(line: 460, column: 26, scope: !2547)
!2579 = !DILocation(line: 459, column: 11, scope: !2547)
!2580 = !DILocation(line: 459, column: 9, scope: !2547)
!2581 = !DILocation(line: 461, column: 7, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 461, column: 7)
!2583 = !DILocation(line: 461, column: 7, scope: !2547)
!2584 = !DILocation(line: 462, column: 4, scope: !2582)
!2585 = !DILocation(line: 463, column: 19, scope: !2547)
!2586 = !DILocation(line: 463, column: 24, scope: !2547)
!2587 = !DILocation(line: 463, column: 27, scope: !2547)
!2588 = !DILocation(line: 463, column: 39, scope: !2547)
!2589 = !DILocation(line: 463, column: 44, scope: !2547)
!2590 = !DILocation(line: 463, column: 47, scope: !2547)
!2591 = !DILocation(line: 463, column: 3, scope: !2547)
!2592 = !DILocation(line: 464, column: 2, scope: !2547)
!2593 = !DILocation(line: 465, column: 2, scope: !2531)
!2594 = !DILabel(scope: !2531, name: "out_subsys", file: !3, line: 467)
!2595 = !DILocation(line: 467, column: 1, scope: !2531)
!2596 = !DILocation(line: 468, column: 21, scope: !2531)
!2597 = !DILocation(line: 468, column: 26, scope: !2531)
!2598 = !DILocation(line: 468, column: 29, scope: !2531)
!2599 = !DILocation(line: 468, column: 43, scope: !2531)
!2600 = !DILocation(line: 468, column: 58, scope: !2531)
!2601 = !DILocation(line: 468, column: 49, scope: !2531)
!2602 = !DILocation(line: 468, column: 2, scope: !2531)
!2603 = !DILabel(scope: !2531, name: "out_groups", file: !3, line: 469)
!2604 = !DILocation(line: 469, column: 1, scope: !2531)
!2605 = !DILocation(line: 470, column: 23, scope: !2531)
!2606 = !DILocation(line: 470, column: 28, scope: !2531)
!2607 = !DILocation(line: 470, column: 33, scope: !2531)
!2608 = !DILocation(line: 470, column: 2, scope: !2531)
!2609 = !DILabel(scope: !2531, name: "out_put", file: !3, line: 471)
!2610 = !DILocation(line: 471, column: 1, scope: !2531)
!2611 = !DILocation(line: 472, column: 10, scope: !2531)
!2612 = !DILocation(line: 472, column: 15, scope: !2531)
!2613 = !DILocation(line: 472, column: 2, scope: !2531)
!2614 = !DILocation(line: 473, column: 9, scope: !2531)
!2615 = !DILocation(line: 473, column: 2, scope: !2531)
!2616 = !DILocation(line: 474, column: 1, scope: !2531)
!2617 = distinct !DISubprogram(name: "dev_name", scope: !30, file: !30, line: 609, type: !2618, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!85, !2620}
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!2622 = !DILocalVariable(name: "dev", arg: 1, scope: !2617, file: !30, line: 609, type: !2620)
!2623 = !DILocation(line: 609, column: 57, scope: !2617)
!2624 = !DILocation(line: 612, column: 6, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2617, file: !30, line: 612, column: 6)
!2626 = !DILocation(line: 612, column: 11, scope: !2625)
!2627 = !DILocation(line: 612, column: 6, scope: !2617)
!2628 = !DILocation(line: 613, column: 10, scope: !2625)
!2629 = !DILocation(line: 613, column: 15, scope: !2625)
!2630 = !DILocation(line: 613, column: 3, scope: !2625)
!2631 = !DILocation(line: 615, column: 23, scope: !2617)
!2632 = !DILocation(line: 615, column: 28, scope: !2617)
!2633 = !DILocation(line: 615, column: 9, scope: !2617)
!2634 = !DILocation(line: 615, column: 2, scope: !2617)
!2635 = !DILocation(line: 616, column: 1, scope: !2617)
!2636 = distinct !DISubprogram(name: "bus_probe_device", scope: !3, file: !3, line: 482, type: !1647, scopeLine: 483, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2637 = !DILocalVariable(name: "dev", arg: 1, scope: !2636, file: !3, line: 482, type: !96)
!2638 = !DILocation(line: 482, column: 38, scope: !2636)
!2639 = !DILocalVariable(name: "bus", scope: !2636, file: !3, line: 484, type: !89)
!2640 = !DILocation(line: 484, column: 19, scope: !2636)
!2641 = !DILocation(line: 484, column: 25, scope: !2636)
!2642 = !DILocation(line: 484, column: 30, scope: !2636)
!2643 = !DILocalVariable(name: "sif", scope: !2636, file: !3, line: 485, type: !81)
!2644 = !DILocation(line: 485, column: 27, scope: !2636)
!2645 = !DILocation(line: 487, column: 7, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 487, column: 6)
!2647 = !DILocation(line: 487, column: 6, scope: !2636)
!2648 = !DILocation(line: 488, column: 3, scope: !2646)
!2649 = !DILocation(line: 490, column: 6, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 490, column: 6)
!2651 = !DILocation(line: 490, column: 11, scope: !2650)
!2652 = !DILocation(line: 490, column: 14, scope: !2650)
!2653 = !DILocation(line: 490, column: 6, scope: !2636)
!2654 = !DILocation(line: 491, column: 24, scope: !2650)
!2655 = !DILocation(line: 491, column: 3, scope: !2650)
!2656 = !DILocation(line: 493, column: 14, scope: !2636)
!2657 = !DILocation(line: 493, column: 19, scope: !2636)
!2658 = !DILocation(line: 493, column: 22, scope: !2636)
!2659 = !DILocation(line: 493, column: 2, scope: !2636)
!2660 = !DILocalVariable(name: "__mptr", scope: !2661, file: !3, line: 494, type: !80)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 494, column: 2)
!2662 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 494, column: 2)
!2663 = !DILocation(line: 494, column: 2, scope: !2661)
!2664 = !DILocation(line: 494, column: 2, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 494, column: 2)
!2666 = !DILocation(line: 494, column: 2, scope: !2662)
!2667 = !DILocation(line: 494, column: 2, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 494, column: 2)
!2669 = !DILocation(line: 495, column: 7, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 495, column: 7)
!2671 = !DILocation(line: 495, column: 12, scope: !2670)
!2672 = !DILocation(line: 495, column: 7, scope: !2668)
!2673 = !DILocation(line: 496, column: 4, scope: !2670)
!2674 = !DILocation(line: 496, column: 9, scope: !2670)
!2675 = !DILocation(line: 496, column: 17, scope: !2670)
!2676 = !DILocation(line: 496, column: 22, scope: !2670)
!2677 = !DILocalVariable(name: "__mptr", scope: !2678, file: !3, line: 494, type: !80)
!2678 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 494, column: 2)
!2679 = !DILocation(line: 494, column: 2, scope: !2678)
!2680 = !DILocation(line: 494, column: 2, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 494, column: 2)
!2682 = distinct !{!2682, !2666, !2683}
!2683 = !DILocation(line: 496, column: 25, scope: !2662)
!2684 = !DILocation(line: 497, column: 16, scope: !2636)
!2685 = !DILocation(line: 497, column: 21, scope: !2636)
!2686 = !DILocation(line: 497, column: 24, scope: !2636)
!2687 = !DILocation(line: 497, column: 2, scope: !2636)
!2688 = !DILocation(line: 498, column: 1, scope: !2636)
!2689 = distinct !DISubprogram(name: "bus_remove_device", scope: !3, file: !3, line: 510, type: !1647, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2690 = !DILocalVariable(name: "dev", arg: 1, scope: !2689, file: !3, line: 510, type: !96)
!2691 = !DILocation(line: 510, column: 39, scope: !2689)
!2692 = !DILocalVariable(name: "bus", scope: !2689, file: !3, line: 512, type: !89)
!2693 = !DILocation(line: 512, column: 19, scope: !2689)
!2694 = !DILocation(line: 512, column: 25, scope: !2689)
!2695 = !DILocation(line: 512, column: 30, scope: !2689)
!2696 = !DILocalVariable(name: "sif", scope: !2689, file: !3, line: 513, type: !81)
!2697 = !DILocation(line: 513, column: 27, scope: !2689)
!2698 = !DILocation(line: 515, column: 7, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 515, column: 6)
!2700 = !DILocation(line: 515, column: 6, scope: !2689)
!2701 = !DILocation(line: 516, column: 3, scope: !2699)
!2702 = !DILocation(line: 518, column: 14, scope: !2689)
!2703 = !DILocation(line: 518, column: 19, scope: !2689)
!2704 = !DILocation(line: 518, column: 22, scope: !2689)
!2705 = !DILocation(line: 518, column: 2, scope: !2689)
!2706 = !DILocalVariable(name: "__mptr", scope: !2707, file: !3, line: 519, type: !80)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 519, column: 2)
!2708 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 519, column: 2)
!2709 = !DILocation(line: 519, column: 2, scope: !2707)
!2710 = !DILocation(line: 519, column: 2, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 519, column: 2)
!2712 = !DILocation(line: 519, column: 2, scope: !2708)
!2713 = !DILocation(line: 519, column: 2, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 519, column: 2)
!2715 = !DILocation(line: 520, column: 7, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 520, column: 7)
!2717 = !DILocation(line: 520, column: 12, scope: !2716)
!2718 = !DILocation(line: 520, column: 7, scope: !2714)
!2719 = !DILocation(line: 521, column: 4, scope: !2716)
!2720 = !DILocation(line: 521, column: 9, scope: !2716)
!2721 = !DILocation(line: 521, column: 20, scope: !2716)
!2722 = !DILocation(line: 521, column: 25, scope: !2716)
!2723 = !DILocalVariable(name: "__mptr", scope: !2724, file: !3, line: 519, type: !80)
!2724 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 519, column: 2)
!2725 = !DILocation(line: 519, column: 2, scope: !2724)
!2726 = !DILocation(line: 519, column: 2, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 519, column: 2)
!2728 = distinct !{!2728, !2712, !2729}
!2729 = !DILocation(line: 521, column: 28, scope: !2708)
!2730 = !DILocation(line: 522, column: 16, scope: !2689)
!2731 = !DILocation(line: 522, column: 21, scope: !2689)
!2732 = !DILocation(line: 522, column: 24, scope: !2689)
!2733 = !DILocation(line: 522, column: 2, scope: !2689)
!2734 = !DILocation(line: 524, column: 21, scope: !2689)
!2735 = !DILocation(line: 524, column: 26, scope: !2689)
!2736 = !DILocation(line: 524, column: 2, scope: !2689)
!2737 = !DILocation(line: 525, column: 21, scope: !2689)
!2738 = !DILocation(line: 525, column: 26, scope: !2689)
!2739 = !DILocation(line: 525, column: 31, scope: !2689)
!2740 = !DILocation(line: 525, column: 34, scope: !2689)
!2741 = !DILocation(line: 525, column: 48, scope: !2689)
!2742 = !DILocation(line: 526, column: 15, scope: !2689)
!2743 = !DILocation(line: 526, column: 6, scope: !2689)
!2744 = !DILocation(line: 525, column: 2, scope: !2689)
!2745 = !DILocation(line: 527, column: 23, scope: !2689)
!2746 = !DILocation(line: 527, column: 28, scope: !2689)
!2747 = !DILocation(line: 527, column: 33, scope: !2689)
!2748 = !DILocation(line: 527, column: 38, scope: !2689)
!2749 = !DILocation(line: 527, column: 2, scope: !2689)
!2750 = !DILocation(line: 528, column: 27, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 528, column: 6)
!2752 = !DILocation(line: 528, column: 32, scope: !2751)
!2753 = !DILocation(line: 528, column: 35, scope: !2751)
!2754 = !DILocation(line: 528, column: 6, scope: !2751)
!2755 = !DILocation(line: 528, column: 6, scope: !2689)
!2756 = !DILocation(line: 529, column: 14, scope: !2751)
!2757 = !DILocation(line: 529, column: 19, scope: !2751)
!2758 = !DILocation(line: 529, column: 22, scope: !2751)
!2759 = !DILocation(line: 529, column: 3, scope: !2751)
!2760 = !DILocation(line: 531, column: 2, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 531, column: 2)
!2762 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 531, column: 2)
!2763 = !DILocation(line: 531, column: 2, scope: !2762)
!2764 = !DILocation(line: 533, column: 24, scope: !2689)
!2765 = !DILocation(line: 533, column: 2, scope: !2689)
!2766 = !DILocation(line: 534, column: 10, scope: !2689)
!2767 = !DILocation(line: 534, column: 15, scope: !2689)
!2768 = !DILocation(line: 534, column: 2, scope: !2689)
!2769 = !DILocation(line: 535, column: 1, scope: !2689)
!2770 = distinct !DISubprogram(name: "bus_add_driver", scope: !3, file: !3, line: 594, type: !2771, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!145, !1621}
!2773 = !DILocalVariable(name: "drv", arg: 1, scope: !2770, file: !3, line: 594, type: !1621)
!2774 = !DILocation(line: 594, column: 42, scope: !2770)
!2775 = !DILocalVariable(name: "bus", scope: !2770, file: !3, line: 596, type: !89)
!2776 = !DILocation(line: 596, column: 19, scope: !2770)
!2777 = !DILocalVariable(name: "priv", scope: !2770, file: !3, line: 597, type: !1692)
!2778 = !DILocation(line: 597, column: 25, scope: !2770)
!2779 = !DILocalVariable(name: "error", scope: !2770, file: !3, line: 598, type: !145)
!2780 = !DILocation(line: 598, column: 6, scope: !2770)
!2781 = !DILocation(line: 600, column: 16, scope: !2770)
!2782 = !DILocation(line: 600, column: 21, scope: !2770)
!2783 = !DILocation(line: 600, column: 8, scope: !2770)
!2784 = !DILocation(line: 600, column: 6, scope: !2770)
!2785 = !DILocation(line: 601, column: 7, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 601, column: 6)
!2787 = !DILocation(line: 601, column: 6, scope: !2770)
!2788 = !DILocation(line: 602, column: 3, scope: !2786)
!2789 = !DILocation(line: 604, column: 2, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !3, line: 604, column: 2)
!2791 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 604, column: 2)
!2792 = !DILocation(line: 604, column: 2, scope: !2791)
!2793 = !DILocation(line: 606, column: 9, scope: !2770)
!2794 = !DILocation(line: 606, column: 7, scope: !2770)
!2795 = !DILocation(line: 607, column: 7, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 607, column: 6)
!2797 = !DILocation(line: 607, column: 6, scope: !2770)
!2798 = !DILocation(line: 608, column: 9, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 607, column: 13)
!2800 = !DILocation(line: 609, column: 3, scope: !2799)
!2801 = !DILocation(line: 611, column: 14, scope: !2770)
!2802 = !DILocation(line: 611, column: 20, scope: !2770)
!2803 = !DILocation(line: 611, column: 2, scope: !2770)
!2804 = !DILocation(line: 612, column: 17, scope: !2770)
!2805 = !DILocation(line: 612, column: 2, scope: !2770)
!2806 = !DILocation(line: 612, column: 8, scope: !2770)
!2807 = !DILocation(line: 612, column: 15, scope: !2770)
!2808 = !DILocation(line: 613, column: 11, scope: !2770)
!2809 = !DILocation(line: 613, column: 2, scope: !2770)
!2810 = !DILocation(line: 613, column: 7, scope: !2770)
!2811 = !DILocation(line: 613, column: 9, scope: !2770)
!2812 = !DILocation(line: 614, column: 20, scope: !2770)
!2813 = !DILocation(line: 614, column: 25, scope: !2770)
!2814 = !DILocation(line: 614, column: 28, scope: !2770)
!2815 = !DILocation(line: 614, column: 2, scope: !2770)
!2816 = !DILocation(line: 614, column: 8, scope: !2770)
!2817 = !DILocation(line: 614, column: 13, scope: !2770)
!2818 = !DILocation(line: 614, column: 18, scope: !2770)
!2819 = !DILocation(line: 615, column: 32, scope: !2770)
!2820 = !DILocation(line: 615, column: 38, scope: !2770)
!2821 = !DILocation(line: 616, column: 16, scope: !2770)
!2822 = !DILocation(line: 616, column: 21, scope: !2770)
!2823 = !DILocation(line: 615, column: 10, scope: !2770)
!2824 = !DILocation(line: 615, column: 8, scope: !2770)
!2825 = !DILocation(line: 617, column: 6, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 617, column: 6)
!2827 = !DILocation(line: 617, column: 6, scope: !2770)
!2828 = !DILocation(line: 618, column: 3, scope: !2826)
!2829 = !DILocation(line: 620, column: 18, scope: !2770)
!2830 = !DILocation(line: 620, column: 24, scope: !2770)
!2831 = !DILocation(line: 620, column: 36, scope: !2770)
!2832 = !DILocation(line: 620, column: 41, scope: !2770)
!2833 = !DILocation(line: 620, column: 44, scope: !2770)
!2834 = !DILocation(line: 620, column: 2, scope: !2770)
!2835 = !DILocation(line: 621, column: 6, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 621, column: 6)
!2837 = !DILocation(line: 621, column: 11, scope: !2836)
!2838 = !DILocation(line: 621, column: 16, scope: !2836)
!2839 = !DILocation(line: 621, column: 19, scope: !2836)
!2840 = !DILocation(line: 621, column: 6, scope: !2770)
!2841 = !DILocation(line: 622, column: 25, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 621, column: 38)
!2843 = !DILocation(line: 622, column: 11, scope: !2842)
!2844 = !DILocation(line: 622, column: 9, scope: !2842)
!2845 = !DILocation(line: 623, column: 7, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 623, column: 7)
!2847 = !DILocation(line: 623, column: 7, scope: !2842)
!2848 = !DILocation(line: 624, column: 4, scope: !2846)
!2849 = !DILocation(line: 625, column: 2, scope: !2842)
!2850 = !DILocation(line: 626, column: 20, scope: !2770)
!2851 = !DILocation(line: 626, column: 25, scope: !2770)
!2852 = !DILocation(line: 626, column: 32, scope: !2770)
!2853 = !DILocation(line: 626, column: 2, scope: !2770)
!2854 = !DILocation(line: 628, column: 29, scope: !2770)
!2855 = !DILocation(line: 628, column: 10, scope: !2770)
!2856 = !DILocation(line: 628, column: 8, scope: !2770)
!2857 = !DILocation(line: 629, column: 6, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 629, column: 6)
!2859 = !DILocation(line: 629, column: 6, scope: !2770)
!2860 = !DILocation(line: 631, column: 14, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 629, column: 13)
!2862 = !DILocation(line: 631, column: 19, scope: !2861)
!2863 = !DILocation(line: 630, column: 3, scope: !2861)
!2864 = !DILocation(line: 632, column: 2, scope: !2861)
!2865 = !DILocation(line: 633, column: 28, scope: !2770)
!2866 = !DILocation(line: 633, column: 33, scope: !2770)
!2867 = !DILocation(line: 633, column: 38, scope: !2770)
!2868 = !DILocation(line: 633, column: 10, scope: !2770)
!2869 = !DILocation(line: 633, column: 8, scope: !2770)
!2870 = !DILocation(line: 634, column: 6, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 634, column: 6)
!2872 = !DILocation(line: 634, column: 6, scope: !2770)
!2873 = !DILocation(line: 637, column: 14, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 634, column: 13)
!2875 = !DILocation(line: 637, column: 19, scope: !2874)
!2876 = !DILocation(line: 636, column: 3, scope: !2874)
!2877 = !DILocation(line: 638, column: 2, scope: !2874)
!2878 = !DILocation(line: 640, column: 7, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 640, column: 6)
!2880 = !DILocation(line: 640, column: 12, scope: !2879)
!2881 = !DILocation(line: 640, column: 6, scope: !2770)
!2882 = !DILocation(line: 641, column: 26, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2879, file: !3, line: 640, column: 33)
!2884 = !DILocation(line: 641, column: 11, scope: !2883)
!2885 = !DILocation(line: 641, column: 9, scope: !2883)
!2886 = !DILocation(line: 642, column: 7, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 642, column: 7)
!2888 = !DILocation(line: 642, column: 7, scope: !2883)
!2889 = !DILocation(line: 645, column: 15, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 642, column: 14)
!2891 = !DILocation(line: 645, column: 20, scope: !2890)
!2892 = !DILocation(line: 644, column: 4, scope: !2890)
!2893 = !DILocation(line: 646, column: 3, scope: !2890)
!2894 = !DILocation(line: 647, column: 2, scope: !2883)
!2895 = !DILocation(line: 649, column: 2, scope: !2770)
!2896 = !DILabel(scope: !2770, name: "out_unregister", file: !3, line: 651)
!2897 = !DILocation(line: 651, column: 1, scope: !2770)
!2898 = !DILocation(line: 652, column: 15, scope: !2770)
!2899 = !DILocation(line: 652, column: 21, scope: !2770)
!2900 = !DILocation(line: 652, column: 2, scope: !2770)
!2901 = !DILocation(line: 654, column: 2, scope: !2770)
!2902 = !DILocation(line: 654, column: 7, scope: !2770)
!2903 = !DILocation(line: 654, column: 9, scope: !2770)
!2904 = !DILabel(scope: !2770, name: "out_put_bus", file: !3, line: 655)
!2905 = !DILocation(line: 655, column: 1, scope: !2770)
!2906 = !DILocation(line: 656, column: 10, scope: !2770)
!2907 = !DILocation(line: 656, column: 2, scope: !2770)
!2908 = !DILocation(line: 657, column: 9, scope: !2770)
!2909 = !DILocation(line: 657, column: 2, scope: !2770)
!2910 = !DILocation(line: 658, column: 1, scope: !2770)
!2911 = distinct !DISubprogram(name: "kzalloc", scope: !68, file: !68, line: 662, type: !2912, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!80, !208, !1464}
!2914 = !DILocalVariable(name: "s", arg: 1, scope: !2915, file: !68, line: 445, type: !1054)
!2915 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !68, file: !68, line: 445, type: !2916, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!80, !1054, !1464, !208}
!2918 = !DILocation(line: 445, column: 72, scope: !2915, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 552, column: 10, scope: !2920, inlinedAt: !2923)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !68, line: 540, column: 34)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !68, line: 540, column: 6)
!2922 = distinct !DISubprogram(name: "kmalloc", scope: !68, file: !68, line: 538, type: !2912, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2923 = distinct !DILocation(line: 664, column: 9, scope: !2911)
!2924 = !DILocalVariable(name: "flags", arg: 2, scope: !2915, file: !68, line: 446, type: !1464)
!2925 = !DILocation(line: 446, column: 9, scope: !2915, inlinedAt: !2919)
!2926 = !DILocalVariable(name: "size", arg: 3, scope: !2915, file: !68, line: 446, type: !208)
!2927 = !DILocation(line: 446, column: 23, scope: !2915, inlinedAt: !2919)
!2928 = !DILocalVariable(name: "ret", scope: !2915, file: !68, line: 448, type: !80)
!2929 = !DILocation(line: 448, column: 8, scope: !2915, inlinedAt: !2919)
!2930 = !DILocalVariable(name: "flags", arg: 1, scope: !2931, file: !68, line: 318, type: !1464)
!2931 = distinct !DISubprogram(name: "kmalloc_type", scope: !68, file: !68, line: 318, type: !2932, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!67, !1464}
!2934 = !DILocation(line: 318, column: 67, scope: !2931, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 553, column: 20, scope: !2920, inlinedAt: !2923)
!2936 = !DILocalVariable(name: "size", arg: 1, scope: !2937, file: !68, line: 346, type: !208)
!2937 = distinct !DISubprogram(name: "kmalloc_index", scope: !68, file: !68, line: 346, type: !2938, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!7, !208}
!2940 = !DILocation(line: 346, column: 58, scope: !2937, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 547, column: 11, scope: !2920, inlinedAt: !2923)
!2942 = !DILocalVariable(name: "size", arg: 1, scope: !2943, file: !68, line: 472, type: !208)
!2943 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !68, file: !68, line: 472, type: !2944, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!80, !208, !1464, !7}
!2946 = !DILocation(line: 472, column: 28, scope: !2943, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 481, column: 9, scope: !2948, inlinedAt: !2949)
!2948 = distinct !DISubprogram(name: "kmalloc_large", scope: !68, file: !68, line: 478, type: !2912, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2949 = distinct !DILocation(line: 545, column: 11, scope: !2950, inlinedAt: !2923)
!2950 = distinct !DILexicalBlock(scope: !2920, file: !68, line: 544, column: 7)
!2951 = !DILocalVariable(name: "flags", arg: 2, scope: !2943, file: !68, line: 472, type: !1464)
!2952 = !DILocation(line: 472, column: 40, scope: !2943, inlinedAt: !2947)
!2953 = !DILocalVariable(name: "order", arg: 3, scope: !2943, file: !68, line: 472, type: !7)
!2954 = !DILocation(line: 472, column: 60, scope: !2943, inlinedAt: !2947)
!2955 = !DILocalVariable(name: "size", arg: 1, scope: !2948, file: !68, line: 478, type: !208)
!2956 = !DILocation(line: 478, column: 51, scope: !2948, inlinedAt: !2949)
!2957 = !DILocalVariable(name: "flags", arg: 2, scope: !2948, file: !68, line: 478, type: !1464)
!2958 = !DILocation(line: 478, column: 63, scope: !2948, inlinedAt: !2949)
!2959 = !DILocalVariable(name: "order", scope: !2948, file: !68, line: 480, type: !7)
!2960 = !DILocation(line: 480, column: 15, scope: !2948, inlinedAt: !2949)
!2961 = !DILocalVariable(name: "size", arg: 1, scope: !2922, file: !68, line: 538, type: !208)
!2962 = !DILocation(line: 538, column: 45, scope: !2922, inlinedAt: !2923)
!2963 = !DILocalVariable(name: "flags", arg: 2, scope: !2922, file: !68, line: 538, type: !1464)
!2964 = !DILocation(line: 538, column: 57, scope: !2922, inlinedAt: !2923)
!2965 = !DILocalVariable(name: "index", scope: !2920, file: !68, line: 542, type: !7)
!2966 = !DILocation(line: 542, column: 16, scope: !2920, inlinedAt: !2923)
!2967 = !DILocalVariable(name: "size", arg: 1, scope: !2911, file: !68, line: 662, type: !208)
!2968 = !DILocation(line: 662, column: 36, scope: !2911)
!2969 = !DILocalVariable(name: "flags", arg: 2, scope: !2911, file: !68, line: 662, type: !1464)
!2970 = !DILocation(line: 662, column: 48, scope: !2911)
!2971 = !DILocation(line: 664, column: 17, scope: !2911)
!2972 = !DILocation(line: 664, column: 23, scope: !2911)
!2973 = !DILocation(line: 664, column: 29, scope: !2911)
!2974 = !DILocation(line: 540, column: 27, scope: !2921, inlinedAt: !2923)
!2975 = !DILocation(line: 540, column: 6, scope: !2921, inlinedAt: !2923)
!2976 = !DILocation(line: 540, column: 6, scope: !2922, inlinedAt: !2923)
!2977 = !DILocation(line: 544, column: 7, scope: !2950, inlinedAt: !2923)
!2978 = !DILocation(line: 544, column: 12, scope: !2950, inlinedAt: !2923)
!2979 = !DILocation(line: 544, column: 7, scope: !2920, inlinedAt: !2923)
!2980 = !DILocation(line: 545, column: 25, scope: !2950, inlinedAt: !2923)
!2981 = !DILocation(line: 545, column: 31, scope: !2950, inlinedAt: !2923)
!2982 = !DILocation(line: 480, column: 33, scope: !2948, inlinedAt: !2949)
!2983 = !DILocation(line: 480, column: 23, scope: !2948, inlinedAt: !2949)
!2984 = !DILocation(line: 481, column: 29, scope: !2948, inlinedAt: !2949)
!2985 = !DILocation(line: 481, column: 35, scope: !2948, inlinedAt: !2949)
!2986 = !DILocation(line: 481, column: 42, scope: !2948, inlinedAt: !2949)
!2987 = !DILocation(line: 474, column: 23, scope: !2943, inlinedAt: !2947)
!2988 = !DILocation(line: 474, column: 29, scope: !2943, inlinedAt: !2947)
!2989 = !DILocation(line: 474, column: 36, scope: !2943, inlinedAt: !2947)
!2990 = !DILocation(line: 474, column: 9, scope: !2943, inlinedAt: !2947)
!2991 = !DILocation(line: 545, column: 4, scope: !2950, inlinedAt: !2923)
!2992 = !DILocation(line: 547, column: 25, scope: !2920, inlinedAt: !2923)
!2993 = !DILocation(line: 348, column: 7, scope: !2994, inlinedAt: !2941)
!2994 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 348, column: 6)
!2995 = !DILocation(line: 348, column: 6, scope: !2937, inlinedAt: !2941)
!2996 = !DILocation(line: 349, column: 3, scope: !2994, inlinedAt: !2941)
!2997 = !DILocation(line: 351, column: 6, scope: !2998, inlinedAt: !2941)
!2998 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 351, column: 6)
!2999 = !DILocation(line: 351, column: 11, scope: !2998, inlinedAt: !2941)
!3000 = !DILocation(line: 351, column: 6, scope: !2937, inlinedAt: !2941)
!3001 = !DILocation(line: 352, column: 3, scope: !2998, inlinedAt: !2941)
!3002 = !DILocation(line: 354, column: 32, scope: !3003, inlinedAt: !2941)
!3003 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 354, column: 6)
!3004 = !DILocation(line: 354, column: 37, scope: !3003, inlinedAt: !2941)
!3005 = !DILocation(line: 354, column: 42, scope: !3003, inlinedAt: !2941)
!3006 = !DILocation(line: 354, column: 45, scope: !3003, inlinedAt: !2941)
!3007 = !DILocation(line: 354, column: 50, scope: !3003, inlinedAt: !2941)
!3008 = !DILocation(line: 354, column: 6, scope: !2937, inlinedAt: !2941)
!3009 = !DILocation(line: 355, column: 3, scope: !3003, inlinedAt: !2941)
!3010 = !DILocation(line: 356, column: 32, scope: !3011, inlinedAt: !2941)
!3011 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 356, column: 6)
!3012 = !DILocation(line: 356, column: 37, scope: !3011, inlinedAt: !2941)
!3013 = !DILocation(line: 356, column: 43, scope: !3011, inlinedAt: !2941)
!3014 = !DILocation(line: 356, column: 46, scope: !3011, inlinedAt: !2941)
!3015 = !DILocation(line: 356, column: 51, scope: !3011, inlinedAt: !2941)
!3016 = !DILocation(line: 356, column: 6, scope: !2937, inlinedAt: !2941)
!3017 = !DILocation(line: 357, column: 3, scope: !3011, inlinedAt: !2941)
!3018 = !DILocation(line: 358, column: 6, scope: !3019, inlinedAt: !2941)
!3019 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 358, column: 6)
!3020 = !DILocation(line: 358, column: 11, scope: !3019, inlinedAt: !2941)
!3021 = !DILocation(line: 358, column: 6, scope: !2937, inlinedAt: !2941)
!3022 = !DILocation(line: 358, column: 26, scope: !3019, inlinedAt: !2941)
!3023 = !DILocation(line: 359, column: 6, scope: !3024, inlinedAt: !2941)
!3024 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 359, column: 6)
!3025 = !DILocation(line: 359, column: 11, scope: !3024, inlinedAt: !2941)
!3026 = !DILocation(line: 359, column: 6, scope: !2937, inlinedAt: !2941)
!3027 = !DILocation(line: 359, column: 26, scope: !3024, inlinedAt: !2941)
!3028 = !DILocation(line: 360, column: 6, scope: !3029, inlinedAt: !2941)
!3029 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 360, column: 6)
!3030 = !DILocation(line: 360, column: 11, scope: !3029, inlinedAt: !2941)
!3031 = !DILocation(line: 360, column: 6, scope: !2937, inlinedAt: !2941)
!3032 = !DILocation(line: 360, column: 26, scope: !3029, inlinedAt: !2941)
!3033 = !DILocation(line: 361, column: 6, scope: !3034, inlinedAt: !2941)
!3034 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 361, column: 6)
!3035 = !DILocation(line: 361, column: 11, scope: !3034, inlinedAt: !2941)
!3036 = !DILocation(line: 361, column: 6, scope: !2937, inlinedAt: !2941)
!3037 = !DILocation(line: 361, column: 26, scope: !3034, inlinedAt: !2941)
!3038 = !DILocation(line: 362, column: 6, scope: !3039, inlinedAt: !2941)
!3039 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 362, column: 6)
!3040 = !DILocation(line: 362, column: 11, scope: !3039, inlinedAt: !2941)
!3041 = !DILocation(line: 362, column: 6, scope: !2937, inlinedAt: !2941)
!3042 = !DILocation(line: 362, column: 26, scope: !3039, inlinedAt: !2941)
!3043 = !DILocation(line: 363, column: 6, scope: !3044, inlinedAt: !2941)
!3044 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 363, column: 6)
!3045 = !DILocation(line: 363, column: 11, scope: !3044, inlinedAt: !2941)
!3046 = !DILocation(line: 363, column: 6, scope: !2937, inlinedAt: !2941)
!3047 = !DILocation(line: 363, column: 26, scope: !3044, inlinedAt: !2941)
!3048 = !DILocation(line: 364, column: 6, scope: !3049, inlinedAt: !2941)
!3049 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 364, column: 6)
!3050 = !DILocation(line: 364, column: 11, scope: !3049, inlinedAt: !2941)
!3051 = !DILocation(line: 364, column: 6, scope: !2937, inlinedAt: !2941)
!3052 = !DILocation(line: 364, column: 26, scope: !3049, inlinedAt: !2941)
!3053 = !DILocation(line: 365, column: 6, scope: !3054, inlinedAt: !2941)
!3054 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 365, column: 6)
!3055 = !DILocation(line: 365, column: 11, scope: !3054, inlinedAt: !2941)
!3056 = !DILocation(line: 365, column: 6, scope: !2937, inlinedAt: !2941)
!3057 = !DILocation(line: 365, column: 26, scope: !3054, inlinedAt: !2941)
!3058 = !DILocation(line: 366, column: 6, scope: !3059, inlinedAt: !2941)
!3059 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 366, column: 6)
!3060 = !DILocation(line: 366, column: 11, scope: !3059, inlinedAt: !2941)
!3061 = !DILocation(line: 366, column: 6, scope: !2937, inlinedAt: !2941)
!3062 = !DILocation(line: 366, column: 26, scope: !3059, inlinedAt: !2941)
!3063 = !DILocation(line: 367, column: 6, scope: !3064, inlinedAt: !2941)
!3064 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 367, column: 6)
!3065 = !DILocation(line: 367, column: 11, scope: !3064, inlinedAt: !2941)
!3066 = !DILocation(line: 367, column: 6, scope: !2937, inlinedAt: !2941)
!3067 = !DILocation(line: 367, column: 26, scope: !3064, inlinedAt: !2941)
!3068 = !DILocation(line: 368, column: 6, scope: !3069, inlinedAt: !2941)
!3069 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 368, column: 6)
!3070 = !DILocation(line: 368, column: 11, scope: !3069, inlinedAt: !2941)
!3071 = !DILocation(line: 368, column: 6, scope: !2937, inlinedAt: !2941)
!3072 = !DILocation(line: 368, column: 26, scope: !3069, inlinedAt: !2941)
!3073 = !DILocation(line: 369, column: 6, scope: !3074, inlinedAt: !2941)
!3074 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 369, column: 6)
!3075 = !DILocation(line: 369, column: 11, scope: !3074, inlinedAt: !2941)
!3076 = !DILocation(line: 369, column: 6, scope: !2937, inlinedAt: !2941)
!3077 = !DILocation(line: 369, column: 26, scope: !3074, inlinedAt: !2941)
!3078 = !DILocation(line: 370, column: 6, scope: !3079, inlinedAt: !2941)
!3079 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 370, column: 6)
!3080 = !DILocation(line: 370, column: 11, scope: !3079, inlinedAt: !2941)
!3081 = !DILocation(line: 370, column: 6, scope: !2937, inlinedAt: !2941)
!3082 = !DILocation(line: 370, column: 26, scope: !3079, inlinedAt: !2941)
!3083 = !DILocation(line: 371, column: 6, scope: !3084, inlinedAt: !2941)
!3084 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 371, column: 6)
!3085 = !DILocation(line: 371, column: 11, scope: !3084, inlinedAt: !2941)
!3086 = !DILocation(line: 371, column: 6, scope: !2937, inlinedAt: !2941)
!3087 = !DILocation(line: 371, column: 26, scope: !3084, inlinedAt: !2941)
!3088 = !DILocation(line: 372, column: 6, scope: !3089, inlinedAt: !2941)
!3089 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 372, column: 6)
!3090 = !DILocation(line: 372, column: 11, scope: !3089, inlinedAt: !2941)
!3091 = !DILocation(line: 372, column: 6, scope: !2937, inlinedAt: !2941)
!3092 = !DILocation(line: 372, column: 26, scope: !3089, inlinedAt: !2941)
!3093 = !DILocation(line: 373, column: 6, scope: !3094, inlinedAt: !2941)
!3094 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 373, column: 6)
!3095 = !DILocation(line: 373, column: 11, scope: !3094, inlinedAt: !2941)
!3096 = !DILocation(line: 373, column: 6, scope: !2937, inlinedAt: !2941)
!3097 = !DILocation(line: 373, column: 26, scope: !3094, inlinedAt: !2941)
!3098 = !DILocation(line: 374, column: 6, scope: !3099, inlinedAt: !2941)
!3099 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 374, column: 6)
!3100 = !DILocation(line: 374, column: 11, scope: !3099, inlinedAt: !2941)
!3101 = !DILocation(line: 374, column: 6, scope: !2937, inlinedAt: !2941)
!3102 = !DILocation(line: 374, column: 26, scope: !3099, inlinedAt: !2941)
!3103 = !DILocation(line: 375, column: 6, scope: !3104, inlinedAt: !2941)
!3104 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 375, column: 6)
!3105 = !DILocation(line: 375, column: 11, scope: !3104, inlinedAt: !2941)
!3106 = !DILocation(line: 375, column: 6, scope: !2937, inlinedAt: !2941)
!3107 = !DILocation(line: 375, column: 27, scope: !3104, inlinedAt: !2941)
!3108 = !DILocation(line: 376, column: 6, scope: !3109, inlinedAt: !2941)
!3109 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 376, column: 6)
!3110 = !DILocation(line: 376, column: 11, scope: !3109, inlinedAt: !2941)
!3111 = !DILocation(line: 376, column: 6, scope: !2937, inlinedAt: !2941)
!3112 = !DILocation(line: 376, column: 32, scope: !3109, inlinedAt: !2941)
!3113 = !DILocation(line: 377, column: 6, scope: !3114, inlinedAt: !2941)
!3114 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 377, column: 6)
!3115 = !DILocation(line: 377, column: 11, scope: !3114, inlinedAt: !2941)
!3116 = !DILocation(line: 377, column: 6, scope: !2937, inlinedAt: !2941)
!3117 = !DILocation(line: 377, column: 32, scope: !3114, inlinedAt: !2941)
!3118 = !DILocation(line: 378, column: 6, scope: !3119, inlinedAt: !2941)
!3119 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 378, column: 6)
!3120 = !DILocation(line: 378, column: 11, scope: !3119, inlinedAt: !2941)
!3121 = !DILocation(line: 378, column: 6, scope: !2937, inlinedAt: !2941)
!3122 = !DILocation(line: 378, column: 32, scope: !3119, inlinedAt: !2941)
!3123 = !DILocation(line: 379, column: 6, scope: !3124, inlinedAt: !2941)
!3124 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 379, column: 6)
!3125 = !DILocation(line: 379, column: 11, scope: !3124, inlinedAt: !2941)
!3126 = !DILocation(line: 379, column: 6, scope: !2937, inlinedAt: !2941)
!3127 = !DILocation(line: 379, column: 33, scope: !3124, inlinedAt: !2941)
!3128 = !DILocation(line: 380, column: 6, scope: !3129, inlinedAt: !2941)
!3129 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 380, column: 6)
!3130 = !DILocation(line: 380, column: 11, scope: !3129, inlinedAt: !2941)
!3131 = !DILocation(line: 380, column: 6, scope: !2937, inlinedAt: !2941)
!3132 = !DILocation(line: 380, column: 33, scope: !3129, inlinedAt: !2941)
!3133 = !DILocation(line: 381, column: 6, scope: !3134, inlinedAt: !2941)
!3134 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 381, column: 6)
!3135 = !DILocation(line: 381, column: 11, scope: !3134, inlinedAt: !2941)
!3136 = !DILocation(line: 381, column: 6, scope: !2937, inlinedAt: !2941)
!3137 = !DILocation(line: 381, column: 33, scope: !3134, inlinedAt: !2941)
!3138 = !DILocation(line: 382, column: 2, scope: !3139, inlinedAt: !2941)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !68, line: 382, column: 2)
!3140 = distinct !DILexicalBlock(scope: !2937, file: !68, line: 382, column: 2)
!3141 = !{i32 -2143535386, i32 -2143535357, i32 -2143535311, i32 -2143535253, i32 -2143535199, i32 -2143535145, i32 -2143535090, i32 -2143535059}
!3142 = !DILocation(line: 382, column: 2, scope: !3143, inlinedAt: !2941)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !68, line: 382, column: 2)
!3144 = distinct !DILexicalBlock(scope: !3140, file: !68, line: 382, column: 2)
!3145 = !{i32 -2143534616, i32 -2143534609, i32 -2143534555, i32 -2143534524, i32 -2143534494}
!3146 = !DILocation(line: 382, column: 2, scope: !3144, inlinedAt: !2941)
!3147 = !DILocation(line: 386, column: 1, scope: !2937, inlinedAt: !2941)
!3148 = !DILocation(line: 547, column: 9, scope: !2920, inlinedAt: !2923)
!3149 = !DILocation(line: 549, column: 8, scope: !3150, inlinedAt: !2923)
!3150 = distinct !DILexicalBlock(scope: !2920, file: !68, line: 549, column: 7)
!3151 = !DILocation(line: 549, column: 7, scope: !2920, inlinedAt: !2923)
!3152 = !DILocation(line: 550, column: 4, scope: !3150, inlinedAt: !2923)
!3153 = !DILocation(line: 553, column: 33, scope: !2920, inlinedAt: !2923)
!3154 = !DILocation(line: 325, column: 6, scope: !3155, inlinedAt: !2935)
!3155 = distinct !DILexicalBlock(scope: !2931, file: !68, line: 325, column: 6)
!3156 = !DILocation(line: 325, column: 6, scope: !2931, inlinedAt: !2935)
!3157 = !DILocation(line: 326, column: 3, scope: !3155, inlinedAt: !2935)
!3158 = !DILocation(line: 332, column: 9, scope: !2931, inlinedAt: !2935)
!3159 = !DILocation(line: 332, column: 15, scope: !2931, inlinedAt: !2935)
!3160 = !DILocation(line: 332, column: 2, scope: !2931, inlinedAt: !2935)
!3161 = !DILocation(line: 336, column: 1, scope: !2931, inlinedAt: !2935)
!3162 = !DILocation(line: 553, column: 5, scope: !2920, inlinedAt: !2923)
!3163 = !DILocation(line: 553, column: 41, scope: !2920, inlinedAt: !2923)
!3164 = !DILocation(line: 554, column: 5, scope: !2920, inlinedAt: !2923)
!3165 = !DILocation(line: 554, column: 12, scope: !2920, inlinedAt: !2923)
!3166 = !DILocation(line: 448, column: 31, scope: !2915, inlinedAt: !2919)
!3167 = !DILocation(line: 448, column: 34, scope: !2915, inlinedAt: !2919)
!3168 = !DILocation(line: 448, column: 14, scope: !2915, inlinedAt: !2919)
!3169 = !DILocation(line: 450, column: 22, scope: !2915, inlinedAt: !2919)
!3170 = !DILocation(line: 450, column: 25, scope: !2915, inlinedAt: !2919)
!3171 = !DILocation(line: 450, column: 30, scope: !2915, inlinedAt: !2919)
!3172 = !DILocation(line: 450, column: 36, scope: !2915, inlinedAt: !2919)
!3173 = !DILocation(line: 450, column: 8, scope: !2915, inlinedAt: !2919)
!3174 = !DILocation(line: 450, column: 6, scope: !2915, inlinedAt: !2919)
!3175 = !DILocation(line: 451, column: 9, scope: !2915, inlinedAt: !2919)
!3176 = !DILocation(line: 552, column: 3, scope: !2920, inlinedAt: !2923)
!3177 = !DILocation(line: 557, column: 19, scope: !2922, inlinedAt: !2923)
!3178 = !DILocation(line: 557, column: 25, scope: !2922, inlinedAt: !2923)
!3179 = !DILocation(line: 557, column: 9, scope: !2922, inlinedAt: !2923)
!3180 = !DILocation(line: 557, column: 2, scope: !2922, inlinedAt: !2923)
!3181 = !DILocation(line: 558, column: 1, scope: !2922, inlinedAt: !2923)
!3182 = !DILocation(line: 664, column: 2, scope: !2911)
!3183 = distinct !DISubprogram(name: "module_add_driver", scope: !1596, file: !1596, line: 168, type: !3184, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{null, !1627, !1621}
!3186 = !DILocalVariable(name: "mod", arg: 1, scope: !3183, file: !1596, line: 168, type: !1627)
!3187 = !DILocation(line: 168, column: 53, scope: !3183)
!3188 = !DILocalVariable(name: "drv", arg: 2, scope: !3183, file: !1596, line: 169, type: !1621)
!3189 = !DILocation(line: 169, column: 32, scope: !3183)
!3190 = !DILocation(line: 169, column: 39, scope: !3183)
!3191 = distinct !DISubprogram(name: "add_bind_files", scope: !3, file: !3, line: 537, type: !2771, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3192 = !DILocalVariable(name: "drv", arg: 1, scope: !3191, file: !3, line: 537, type: !1621)
!3193 = !DILocation(line: 537, column: 62, scope: !3191)
!3194 = !DILocalVariable(name: "ret", scope: !3191, file: !3, line: 539, type: !145)
!3195 = !DILocation(line: 539, column: 6, scope: !3191)
!3196 = !DILocation(line: 541, column: 27, scope: !3191)
!3197 = !DILocation(line: 541, column: 8, scope: !3191)
!3198 = !DILocation(line: 541, column: 6, scope: !3191)
!3199 = !DILocation(line: 542, column: 6, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 542, column: 6)
!3201 = !DILocation(line: 542, column: 10, scope: !3200)
!3202 = !DILocation(line: 542, column: 6, scope: !3191)
!3203 = !DILocation(line: 543, column: 28, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 542, column: 16)
!3205 = !DILocation(line: 543, column: 9, scope: !3204)
!3206 = !DILocation(line: 543, column: 7, scope: !3204)
!3207 = !DILocation(line: 544, column: 7, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 544, column: 7)
!3209 = !DILocation(line: 544, column: 7, scope: !3204)
!3210 = !DILocation(line: 545, column: 23, scope: !3208)
!3211 = !DILocation(line: 545, column: 4, scope: !3208)
!3212 = !DILocation(line: 546, column: 2, scope: !3204)
!3213 = !DILocation(line: 547, column: 9, scope: !3191)
!3214 = !DILocation(line: 547, column: 2, scope: !3191)
!3215 = distinct !DISubprogram(name: "bus_remove_driver", scope: !3, file: !3, line: 668, type: !3216, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{null, !1621}
!3218 = !DILocalVariable(name: "drv", arg: 1, scope: !3215, file: !3, line: 668, type: !1621)
!3219 = !DILocation(line: 668, column: 46, scope: !3215)
!3220 = !DILocation(line: 670, column: 7, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 670, column: 6)
!3222 = !DILocation(line: 670, column: 12, scope: !3221)
!3223 = !DILocation(line: 670, column: 6, scope: !3215)
!3224 = !DILocation(line: 671, column: 3, scope: !3221)
!3225 = !DILocation(line: 673, column: 7, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 673, column: 6)
!3227 = !DILocation(line: 673, column: 12, scope: !3226)
!3228 = !DILocation(line: 673, column: 6, scope: !3215)
!3229 = !DILocation(line: 674, column: 21, scope: !3226)
!3230 = !DILocation(line: 674, column: 3, scope: !3226)
!3231 = !DILocation(line: 675, column: 23, scope: !3215)
!3232 = !DILocation(line: 675, column: 28, scope: !3215)
!3233 = !DILocation(line: 675, column: 33, scope: !3215)
!3234 = !DILocation(line: 675, column: 38, scope: !3215)
!3235 = !DILocation(line: 675, column: 2, scope: !3215)
!3236 = !DILocation(line: 676, column: 21, scope: !3215)
!3237 = !DILocation(line: 676, column: 2, scope: !3215)
!3238 = !DILocation(line: 677, column: 16, scope: !3215)
!3239 = !DILocation(line: 677, column: 21, scope: !3215)
!3240 = !DILocation(line: 677, column: 24, scope: !3215)
!3241 = !DILocation(line: 677, column: 2, scope: !3215)
!3242 = !DILocation(line: 678, column: 2, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 678, column: 2)
!3244 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 678, column: 2)
!3245 = !DILocation(line: 678, column: 2, scope: !3244)
!3246 = !DILocation(line: 679, column: 16, scope: !3215)
!3247 = !DILocation(line: 679, column: 2, scope: !3215)
!3248 = !DILocation(line: 680, column: 23, scope: !3215)
!3249 = !DILocation(line: 680, column: 2, scope: !3215)
!3250 = !DILocation(line: 681, column: 15, scope: !3215)
!3251 = !DILocation(line: 681, column: 20, scope: !3215)
!3252 = !DILocation(line: 681, column: 23, scope: !3215)
!3253 = !DILocation(line: 681, column: 2, scope: !3215)
!3254 = !DILocation(line: 682, column: 10, scope: !3215)
!3255 = !DILocation(line: 682, column: 15, scope: !3215)
!3256 = !DILocation(line: 682, column: 2, scope: !3215)
!3257 = !DILocation(line: 683, column: 1, scope: !3215)
!3258 = distinct !DISubprogram(name: "remove_bind_files", scope: !3, file: !3, line: 550, type: !3216, scopeLine: 551, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3259 = !DILocalVariable(name: "drv", arg: 1, scope: !3258, file: !3, line: 550, type: !1621)
!3260 = !DILocation(line: 550, column: 53, scope: !3258)
!3261 = !DILocation(line: 552, column: 21, scope: !3258)
!3262 = !DILocation(line: 552, column: 2, scope: !3258)
!3263 = !DILocation(line: 553, column: 21, scope: !3258)
!3264 = !DILocation(line: 553, column: 2, scope: !3258)
!3265 = !DILocation(line: 554, column: 1, scope: !3258)
!3266 = distinct !DISubprogram(name: "module_remove_driver", scope: !1596, file: !1596, line: 170, type: !3216, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3267 = !DILocalVariable(name: "drv", arg: 1, scope: !3266, file: !1596, line: 170, type: !1621)
!3268 = !DILocation(line: 170, column: 63, scope: !3266)
!3269 = !DILocation(line: 170, column: 70, scope: !3266)
!3270 = distinct !DISubprogram(name: "bus_rescan_devices", scope: !3, file: !3, line: 709, type: !2110, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3271 = !DILocalVariable(name: "bus", arg: 1, scope: !3270, file: !3, line: 709, type: !89)
!3272 = !DILocation(line: 709, column: 41, scope: !3270)
!3273 = !DILocation(line: 711, column: 26, scope: !3270)
!3274 = !DILocation(line: 711, column: 9, scope: !3270)
!3275 = !DILocation(line: 711, column: 2, scope: !3270)
!3276 = distinct !DISubprogram(name: "bus_rescan_devices_helper", scope: !3, file: !3, line: 686, type: !2250, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3277 = !DILocalVariable(name: "dev", arg: 1, scope: !3276, file: !3, line: 686, type: !96)
!3278 = !DILocation(line: 686, column: 66, scope: !3276)
!3279 = !DILocalVariable(name: "data", arg: 2, scope: !3276, file: !3, line: 687, type: !80)
!3280 = !DILocation(line: 687, column: 15, scope: !3276)
!3281 = !DILocalVariable(name: "ret", scope: !3276, file: !3, line: 689, type: !145)
!3282 = !DILocation(line: 689, column: 6, scope: !3276)
!3283 = !DILocation(line: 691, column: 7, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3276, file: !3, line: 691, column: 6)
!3285 = !DILocation(line: 691, column: 12, scope: !3284)
!3286 = !DILocation(line: 691, column: 6, scope: !3276)
!3287 = !DILocation(line: 692, column: 7, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 692, column: 7)
!3289 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 691, column: 20)
!3290 = !DILocation(line: 692, column: 12, scope: !3288)
!3291 = !DILocation(line: 692, column: 19, scope: !3288)
!3292 = !DILocation(line: 692, column: 22, scope: !3288)
!3293 = !DILocation(line: 692, column: 27, scope: !3288)
!3294 = !DILocation(line: 692, column: 32, scope: !3288)
!3295 = !DILocation(line: 692, column: 7, scope: !3289)
!3296 = !DILocation(line: 693, column: 16, scope: !3288)
!3297 = !DILocation(line: 693, column: 21, scope: !3288)
!3298 = !DILocation(line: 693, column: 4, scope: !3288)
!3299 = !DILocation(line: 694, column: 23, scope: !3289)
!3300 = !DILocation(line: 694, column: 9, scope: !3289)
!3301 = !DILocation(line: 694, column: 7, scope: !3289)
!3302 = !DILocation(line: 695, column: 7, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 695, column: 7)
!3304 = !DILocation(line: 695, column: 12, scope: !3303)
!3305 = !DILocation(line: 695, column: 19, scope: !3303)
!3306 = !DILocation(line: 695, column: 22, scope: !3303)
!3307 = !DILocation(line: 695, column: 27, scope: !3303)
!3308 = !DILocation(line: 695, column: 32, scope: !3303)
!3309 = !DILocation(line: 695, column: 7, scope: !3289)
!3310 = !DILocation(line: 696, column: 18, scope: !3303)
!3311 = !DILocation(line: 696, column: 23, scope: !3303)
!3312 = !DILocation(line: 696, column: 4, scope: !3303)
!3313 = !DILocation(line: 697, column: 2, scope: !3289)
!3314 = !DILocation(line: 698, column: 9, scope: !3276)
!3315 = !DILocation(line: 698, column: 13, scope: !3276)
!3316 = !DILocation(line: 698, column: 19, scope: !3276)
!3317 = !DILocation(line: 698, column: 2, scope: !3276)
!3318 = distinct !DISubprogram(name: "device_reprobe", scope: !3, file: !3, line: 724, type: !1643, scopeLine: 725, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3319 = !DILocalVariable(name: "dev", arg: 1, scope: !3318, file: !3, line: 724, type: !96)
!3320 = !DILocation(line: 724, column: 35, scope: !3318)
!3321 = !DILocation(line: 726, column: 6, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3318, file: !3, line: 726, column: 6)
!3323 = !DILocation(line: 726, column: 11, scope: !3322)
!3324 = !DILocation(line: 726, column: 6, scope: !3318)
!3325 = !DILocation(line: 727, column: 24, scope: !3322)
!3326 = !DILocation(line: 727, column: 3, scope: !3322)
!3327 = !DILocation(line: 728, column: 35, scope: !3318)
!3328 = !DILocation(line: 728, column: 9, scope: !3318)
!3329 = !DILocation(line: 728, column: 2, scope: !3318)
!3330 = !DILocalVariable(name: "bus", arg: 1, scope: !2109, file: !3, line: 802, type: !89)
!3331 = !DILocation(line: 802, column: 35, scope: !2109)
!3332 = !DILocalVariable(name: "retval", scope: !2109, file: !3, line: 804, type: !145)
!3333 = !DILocation(line: 804, column: 6, scope: !2109)
!3334 = !DILocalVariable(name: "priv", scope: !2109, file: !3, line: 805, type: !2014)
!3335 = !DILocation(line: 805, column: 25, scope: !2109)
!3336 = !DILocalVariable(name: "key", scope: !2109, file: !3, line: 806, type: !3337)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!3338 = !DILocation(line: 806, column: 25, scope: !2109)
!3339 = !DILocation(line: 806, column: 32, scope: !2109)
!3340 = !DILocation(line: 806, column: 37, scope: !2109)
!3341 = !DILocation(line: 808, column: 9, scope: !2109)
!3342 = !DILocation(line: 808, column: 7, scope: !2109)
!3343 = !DILocation(line: 809, column: 7, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 809, column: 6)
!3345 = !DILocation(line: 809, column: 6, scope: !2109)
!3346 = !DILocation(line: 810, column: 3, scope: !3344)
!3347 = !DILocation(line: 812, column: 14, scope: !2109)
!3348 = !DILocation(line: 812, column: 2, scope: !2109)
!3349 = !DILocation(line: 812, column: 8, scope: !2109)
!3350 = !DILocation(line: 812, column: 12, scope: !2109)
!3351 = !DILocation(line: 813, column: 11, scope: !2109)
!3352 = !DILocation(line: 813, column: 2, scope: !2109)
!3353 = !DILocation(line: 813, column: 7, scope: !2109)
!3354 = !DILocation(line: 813, column: 9, scope: !2109)
!3355 = !DILocation(line: 815, column: 2, scope: !2109)
!3356 = !DILocation(line: 815, column: 2, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 815, column: 2)
!3358 = !DILocation(line: 815, column: 2, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 815, column: 2)
!3360 = !DILocation(line: 817, column: 29, scope: !2109)
!3361 = !DILocation(line: 817, column: 35, scope: !2109)
!3362 = !DILocation(line: 817, column: 42, scope: !2109)
!3363 = !DILocation(line: 817, column: 54, scope: !2109)
!3364 = !DILocation(line: 817, column: 59, scope: !2109)
!3365 = !DILocation(line: 817, column: 11, scope: !2109)
!3366 = !DILocation(line: 817, column: 9, scope: !2109)
!3367 = !DILocation(line: 818, column: 6, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 818, column: 6)
!3369 = !DILocation(line: 818, column: 6, scope: !2109)
!3370 = !DILocation(line: 819, column: 3, scope: !3368)
!3371 = !DILocation(line: 821, column: 27, scope: !2109)
!3372 = !DILocation(line: 821, column: 2, scope: !2109)
!3373 = !DILocation(line: 821, column: 8, scope: !2109)
!3374 = !DILocation(line: 821, column: 15, scope: !2109)
!3375 = !DILocation(line: 821, column: 20, scope: !2109)
!3376 = !DILocation(line: 821, column: 25, scope: !2109)
!3377 = !DILocation(line: 822, column: 2, scope: !2109)
!3378 = !DILocation(line: 822, column: 8, scope: !2109)
!3379 = !DILocation(line: 822, column: 15, scope: !2109)
!3380 = !DILocation(line: 822, column: 20, scope: !2109)
!3381 = !DILocation(line: 822, column: 26, scope: !2109)
!3382 = !DILocation(line: 823, column: 2, scope: !2109)
!3383 = !DILocation(line: 823, column: 8, scope: !2109)
!3384 = !DILocation(line: 823, column: 26, scope: !2109)
!3385 = !DILocation(line: 825, column: 26, scope: !2109)
!3386 = !DILocation(line: 825, column: 32, scope: !2109)
!3387 = !DILocation(line: 825, column: 11, scope: !2109)
!3388 = !DILocation(line: 825, column: 9, scope: !2109)
!3389 = !DILocation(line: 826, column: 6, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 826, column: 6)
!3391 = !DILocation(line: 826, column: 6, scope: !2109)
!3392 = !DILocation(line: 827, column: 3, scope: !3390)
!3393 = !DILocation(line: 829, column: 27, scope: !2109)
!3394 = !DILocation(line: 829, column: 11, scope: !2109)
!3395 = !DILocation(line: 829, column: 9, scope: !2109)
!3396 = !DILocation(line: 830, column: 6, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 830, column: 6)
!3398 = !DILocation(line: 830, column: 6, scope: !2109)
!3399 = !DILocation(line: 831, column: 3, scope: !3397)
!3400 = !DILocation(line: 834, column: 9, scope: !2109)
!3401 = !DILocation(line: 834, column: 15, scope: !2109)
!3402 = !DILocation(line: 834, column: 22, scope: !2109)
!3403 = !DILocation(line: 833, column: 23, scope: !2109)
!3404 = !DILocation(line: 833, column: 2, scope: !2109)
!3405 = !DILocation(line: 833, column: 8, scope: !2109)
!3406 = !DILocation(line: 833, column: 21, scope: !2109)
!3407 = !DILocation(line: 835, column: 7, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 835, column: 6)
!3409 = !DILocation(line: 835, column: 13, scope: !3408)
!3410 = !DILocation(line: 835, column: 6, scope: !2109)
!3411 = !DILocation(line: 836, column: 10, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3408, file: !3, line: 835, column: 27)
!3413 = !DILocation(line: 837, column: 3, scope: !3412)
!3414 = !DILocation(line: 841, column: 9, scope: !2109)
!3415 = !DILocation(line: 841, column: 15, scope: !2109)
!3416 = !DILocation(line: 841, column: 22, scope: !2109)
!3417 = !DILocation(line: 840, column: 23, scope: !2109)
!3418 = !DILocation(line: 840, column: 2, scope: !2109)
!3419 = !DILocation(line: 840, column: 8, scope: !2109)
!3420 = !DILocation(line: 840, column: 21, scope: !2109)
!3421 = !DILocation(line: 842, column: 7, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 842, column: 6)
!3423 = !DILocation(line: 842, column: 13, scope: !3422)
!3424 = !DILocation(line: 842, column: 6, scope: !2109)
!3425 = !DILocation(line: 843, column: 10, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 842, column: 27)
!3427 = !DILocation(line: 844, column: 3, scope: !3426)
!3428 = !DILocation(line: 847, column: 18, scope: !2109)
!3429 = !DILocation(line: 847, column: 24, scope: !2109)
!3430 = !DILocation(line: 847, column: 2, scope: !2109)
!3431 = !DILocation(line: 848, column: 16, scope: !2109)
!3432 = !DILocation(line: 848, column: 22, scope: !2109)
!3433 = !DILocation(line: 848, column: 45, scope: !2109)
!3434 = !DILocation(line: 848, column: 2, scope: !2109)
!3435 = !DILocation(line: 849, column: 14, scope: !2109)
!3436 = !DILocation(line: 849, column: 20, scope: !2109)
!3437 = !DILocation(line: 849, column: 2, scope: !2109)
!3438 = !DILocation(line: 850, column: 14, scope: !2109)
!3439 = !DILocation(line: 850, column: 20, scope: !2109)
!3440 = !DILocation(line: 850, column: 2, scope: !2109)
!3441 = !DILocation(line: 852, column: 27, scope: !2109)
!3442 = !DILocation(line: 852, column: 11, scope: !2109)
!3443 = !DILocation(line: 852, column: 9, scope: !2109)
!3444 = !DILocation(line: 853, column: 6, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 853, column: 6)
!3446 = !DILocation(line: 853, column: 6, scope: !2109)
!3447 = !DILocation(line: 854, column: 3, scope: !3445)
!3448 = !DILocation(line: 856, column: 26, scope: !2109)
!3449 = !DILocation(line: 856, column: 31, scope: !2109)
!3450 = !DILocation(line: 856, column: 36, scope: !2109)
!3451 = !DILocation(line: 856, column: 11, scope: !2109)
!3452 = !DILocation(line: 856, column: 9, scope: !2109)
!3453 = !DILocation(line: 857, column: 6, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 857, column: 6)
!3455 = !DILocation(line: 857, column: 6, scope: !2109)
!3456 = !DILocation(line: 858, column: 3, scope: !3454)
!3457 = !DILocation(line: 860, column: 2, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 860, column: 2)
!3459 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 860, column: 2)
!3460 = !DILocation(line: 860, column: 2, scope: !3459)
!3461 = !DILocation(line: 861, column: 2, scope: !2109)
!3462 = !DILabel(scope: !2109, name: "bus_groups_fail", file: !3, line: 863)
!3463 = !DILocation(line: 863, column: 1, scope: !2109)
!3464 = !DILocation(line: 864, column: 21, scope: !2109)
!3465 = !DILocation(line: 864, column: 2, scope: !2109)
!3466 = !DILabel(scope: !2109, name: "bus_probe_files_fail", file: !3, line: 865)
!3467 = !DILocation(line: 865, column: 1, scope: !2109)
!3468 = !DILocation(line: 866, column: 18, scope: !2109)
!3469 = !DILocation(line: 866, column: 23, scope: !2109)
!3470 = !DILocation(line: 866, column: 26, scope: !2109)
!3471 = !DILocation(line: 866, column: 2, scope: !2109)
!3472 = !DILabel(scope: !2109, name: "bus_drivers_fail", file: !3, line: 867)
!3473 = !DILocation(line: 867, column: 1, scope: !2109)
!3474 = !DILocation(line: 868, column: 18, scope: !2109)
!3475 = !DILocation(line: 868, column: 23, scope: !2109)
!3476 = !DILocation(line: 868, column: 26, scope: !2109)
!3477 = !DILocation(line: 868, column: 2, scope: !2109)
!3478 = !DILabel(scope: !2109, name: "bus_devices_fail", file: !3, line: 869)
!3479 = !DILocation(line: 869, column: 1, scope: !2109)
!3480 = !DILocation(line: 870, column: 18, scope: !2109)
!3481 = !DILocation(line: 870, column: 2, scope: !2109)
!3482 = !DILabel(scope: !2109, name: "bus_uevent_fail", file: !3, line: 871)
!3483 = !DILocation(line: 871, column: 1, scope: !2109)
!3484 = !DILocation(line: 872, column: 19, scope: !2109)
!3485 = !DILocation(line: 872, column: 24, scope: !2109)
!3486 = !DILocation(line: 872, column: 27, scope: !2109)
!3487 = !DILocation(line: 872, column: 2, scope: !2109)
!3488 = !DILabel(scope: !2109, name: "out", file: !3, line: 873)
!3489 = !DILocation(line: 873, column: 1, scope: !2109)
!3490 = !DILocation(line: 874, column: 8, scope: !2109)
!3491 = !DILocation(line: 874, column: 13, scope: !2109)
!3492 = !DILocation(line: 874, column: 2, scope: !2109)
!3493 = !DILocation(line: 875, column: 2, scope: !2109)
!3494 = !DILocation(line: 875, column: 7, scope: !2109)
!3495 = !DILocation(line: 875, column: 9, scope: !2109)
!3496 = !DILocation(line: 876, column: 9, scope: !2109)
!3497 = !DILocation(line: 876, column: 2, scope: !2109)
!3498 = !DILocation(line: 877, column: 1, scope: !2109)
!3499 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !3500, file: !3500, line: 33, type: !3501, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3500 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!3501 = !DISubroutineType(types: !3502)
!3502 = !{null, !109}
!3503 = !DILocalVariable(name: "list", arg: 1, scope: !3499, file: !3500, line: 33, type: !109)
!3504 = !DILocation(line: 33, column: 53, scope: !3499)
!3505 = !DILocation(line: 35, column: 2, scope: !3499)
!3506 = !DILocation(line: 35, column: 2, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3499, file: !3500, line: 35, column: 2)
!3508 = !DILocation(line: 35, column: 2, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3507, file: !3500, line: 35, column: 2)
!3510 = !DILocation(line: 35, column: 2, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3507, file: !3500, line: 35, column: 2)
!3512 = !DILocation(line: 36, column: 15, scope: !3499)
!3513 = !DILocation(line: 36, column: 2, scope: !3499)
!3514 = !DILocation(line: 36, column: 8, scope: !3499)
!3515 = !DILocation(line: 36, column: 13, scope: !3499)
!3516 = !DILocation(line: 37, column: 1, scope: !3499)
!3517 = distinct !DISubprogram(name: "klist_devices_get", scope: !3, file: !3, line: 761, type: !1606, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3518 = !DILocalVariable(name: "n", arg: 1, scope: !3517, file: !3, line: 761, type: !1608)
!3519 = !DILocation(line: 761, column: 50, scope: !3517)
!3520 = !DILocalVariable(name: "dev_prv", scope: !3517, file: !3, line: 763, type: !1594)
!3521 = !DILocation(line: 763, column: 25, scope: !3517)
!3522 = !DILocalVariable(name: "__mptr", scope: !3523, file: !3, line: 763, type: !80)
!3523 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 763, column: 35)
!3524 = !DILocation(line: 763, column: 35, scope: !3523)
!3525 = !DILocation(line: 763, column: 35, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 763, column: 35)
!3527 = !DILocalVariable(name: "dev", scope: !3517, file: !3, line: 764, type: !96)
!3528 = !DILocation(line: 764, column: 17, scope: !3517)
!3529 = !DILocation(line: 764, column: 23, scope: !3517)
!3530 = !DILocation(line: 764, column: 32, scope: !3517)
!3531 = !DILocation(line: 766, column: 13, scope: !3517)
!3532 = !DILocation(line: 766, column: 2, scope: !3517)
!3533 = !DILocation(line: 767, column: 1, scope: !3517)
!3534 = distinct !DISubprogram(name: "klist_devices_put", scope: !3, file: !3, line: 769, type: !1606, scopeLine: 770, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3535 = !DILocalVariable(name: "n", arg: 1, scope: !3534, file: !3, line: 769, type: !1608)
!3536 = !DILocation(line: 769, column: 50, scope: !3534)
!3537 = !DILocalVariable(name: "dev_prv", scope: !3534, file: !3, line: 771, type: !1594)
!3538 = !DILocation(line: 771, column: 25, scope: !3534)
!3539 = !DILocalVariable(name: "__mptr", scope: !3540, file: !3, line: 771, type: !80)
!3540 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 771, column: 35)
!3541 = !DILocation(line: 771, column: 35, scope: !3540)
!3542 = !DILocation(line: 771, column: 35, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 771, column: 35)
!3544 = !DILocalVariable(name: "dev", scope: !3534, file: !3, line: 772, type: !96)
!3545 = !DILocation(line: 772, column: 17, scope: !3534)
!3546 = !DILocation(line: 772, column: 23, scope: !3534)
!3547 = !DILocation(line: 772, column: 32, scope: !3534)
!3548 = !DILocation(line: 774, column: 13, scope: !3534)
!3549 = !DILocation(line: 774, column: 2, scope: !3534)
!3550 = !DILocation(line: 775, column: 1, scope: !3534)
!3551 = distinct !DISubprogram(name: "add_probe_files", scope: !3, file: !3, line: 559, type: !2110, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3552 = !DILocalVariable(name: "bus", arg: 1, scope: !3551, file: !3, line: 559, type: !89)
!3553 = !DILocation(line: 559, column: 45, scope: !3551)
!3554 = !DILocalVariable(name: "retval", scope: !3551, file: !3, line: 561, type: !145)
!3555 = !DILocation(line: 561, column: 6, scope: !3551)
!3556 = !DILocation(line: 563, column: 27, scope: !3551)
!3557 = !DILocation(line: 563, column: 11, scope: !3551)
!3558 = !DILocation(line: 563, column: 9, scope: !3551)
!3559 = !DILocation(line: 564, column: 6, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3551, file: !3, line: 564, column: 6)
!3561 = !DILocation(line: 564, column: 6, scope: !3551)
!3562 = !DILocation(line: 565, column: 3, scope: !3560)
!3563 = !DILocation(line: 567, column: 27, scope: !3551)
!3564 = !DILocation(line: 567, column: 11, scope: !3551)
!3565 = !DILocation(line: 567, column: 9, scope: !3551)
!3566 = !DILocation(line: 568, column: 6, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3551, file: !3, line: 568, column: 6)
!3568 = !DILocation(line: 568, column: 6, scope: !3551)
!3569 = !DILocation(line: 569, column: 19, scope: !3567)
!3570 = !DILocation(line: 569, column: 3, scope: !3567)
!3571 = !DILabel(scope: !3551, name: "out", file: !3, line: 570)
!3572 = !DILocation(line: 570, column: 1, scope: !3551)
!3573 = !DILocation(line: 571, column: 9, scope: !3551)
!3574 = !DILocation(line: 571, column: 2, scope: !3551)
!3575 = distinct !DISubprogram(name: "bus_add_groups", scope: !3, file: !3, line: 749, type: !3576, scopeLine: 751, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!145, !89, !215}
!3578 = !DILocalVariable(name: "bus", arg: 1, scope: !3575, file: !3, line: 749, type: !89)
!3579 = !DILocation(line: 749, column: 44, scope: !3575)
!3580 = !DILocalVariable(name: "groups", arg: 2, scope: !3575, file: !3, line: 750, type: !215)
!3581 = !DILocation(line: 750, column: 37, scope: !3575)
!3582 = !DILocation(line: 752, column: 30, scope: !3575)
!3583 = !DILocation(line: 752, column: 35, scope: !3575)
!3584 = !DILocation(line: 752, column: 38, scope: !3575)
!3585 = !DILocation(line: 752, column: 45, scope: !3575)
!3586 = !DILocation(line: 752, column: 51, scope: !3575)
!3587 = !DILocation(line: 752, column: 9, scope: !3575)
!3588 = !DILocation(line: 752, column: 2, scope: !3575)
!3589 = distinct !DISubprogram(name: "remove_probe_files", scope: !3, file: !3, line: 574, type: !2200, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3590 = !DILocalVariable(name: "bus", arg: 1, scope: !3589, file: !3, line: 574, type: !89)
!3591 = !DILocation(line: 574, column: 49, scope: !3589)
!3592 = !DILocation(line: 576, column: 18, scope: !3589)
!3593 = !DILocation(line: 576, column: 2, scope: !3589)
!3594 = !DILocation(line: 577, column: 18, scope: !3589)
!3595 = !DILocation(line: 577, column: 2, scope: !3589)
!3596 = !DILocation(line: 578, column: 1, scope: !3589)
!3597 = distinct !DISubprogram(name: "bus_unregister", scope: !3, file: !3, line: 887, type: !2200, scopeLine: 888, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3598 = !DILocalVariable(name: "bus", arg: 1, scope: !3597, file: !3, line: 887, type: !89)
!3599 = !DILocation(line: 887, column: 38, scope: !3597)
!3600 = !DILocation(line: 889, column: 2, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 889, column: 2)
!3602 = distinct !DILexicalBlock(scope: !3597, file: !3, line: 889, column: 2)
!3603 = !DILocation(line: 889, column: 2, scope: !3602)
!3604 = !DILocation(line: 890, column: 6, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3597, file: !3, line: 890, column: 6)
!3606 = !DILocation(line: 890, column: 11, scope: !3605)
!3607 = !DILocation(line: 890, column: 6, scope: !3597)
!3608 = !DILocation(line: 891, column: 21, scope: !3605)
!3609 = !DILocation(line: 891, column: 26, scope: !3605)
!3610 = !DILocation(line: 891, column: 3, scope: !3605)
!3611 = !DILocation(line: 892, column: 20, scope: !3597)
!3612 = !DILocation(line: 892, column: 25, scope: !3597)
!3613 = !DILocation(line: 892, column: 30, scope: !3597)
!3614 = !DILocation(line: 892, column: 2, scope: !3597)
!3615 = !DILocation(line: 893, column: 21, scope: !3597)
!3616 = !DILocation(line: 893, column: 2, scope: !3597)
!3617 = !DILocation(line: 894, column: 18, scope: !3597)
!3618 = !DILocation(line: 894, column: 23, scope: !3597)
!3619 = !DILocation(line: 894, column: 26, scope: !3597)
!3620 = !DILocation(line: 894, column: 2, scope: !3597)
!3621 = !DILocation(line: 895, column: 18, scope: !3597)
!3622 = !DILocation(line: 895, column: 23, scope: !3597)
!3623 = !DILocation(line: 895, column: 26, scope: !3597)
!3624 = !DILocation(line: 895, column: 2, scope: !3597)
!3625 = !DILocation(line: 896, column: 18, scope: !3597)
!3626 = !DILocation(line: 896, column: 2, scope: !3597)
!3627 = !DILocation(line: 897, column: 19, scope: !3597)
!3628 = !DILocation(line: 897, column: 24, scope: !3597)
!3629 = !DILocation(line: 897, column: 27, scope: !3597)
!3630 = !DILocation(line: 897, column: 2, scope: !3597)
!3631 = !DILocation(line: 898, column: 1, scope: !3597)
!3632 = distinct !DISubprogram(name: "bus_remove_groups", scope: !3, file: !3, line: 755, type: !3633, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{null, !89, !215}
!3635 = !DILocalVariable(name: "bus", arg: 1, scope: !3632, file: !3, line: 755, type: !89)
!3636 = !DILocation(line: 755, column: 48, scope: !3632)
!3637 = !DILocalVariable(name: "groups", arg: 2, scope: !3632, file: !3, line: 756, type: !215)
!3638 = !DILocation(line: 756, column: 41, scope: !3632)
!3639 = !DILocation(line: 758, column: 23, scope: !3632)
!3640 = !DILocation(line: 758, column: 28, scope: !3632)
!3641 = !DILocation(line: 758, column: 31, scope: !3632)
!3642 = !DILocation(line: 758, column: 38, scope: !3632)
!3643 = !DILocation(line: 758, column: 44, scope: !3632)
!3644 = !DILocation(line: 758, column: 2, scope: !3632)
!3645 = !DILocation(line: 759, column: 1, scope: !3632)
!3646 = distinct !DISubprogram(name: "bus_register_notifier", scope: !3, file: !3, line: 901, type: !3647, scopeLine: 902, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!145, !89, !1878}
!3649 = !DILocalVariable(name: "bus", arg: 1, scope: !3646, file: !3, line: 901, type: !89)
!3650 = !DILocation(line: 901, column: 44, scope: !3646)
!3651 = !DILocalVariable(name: "nb", arg: 2, scope: !3646, file: !3, line: 901, type: !1878)
!3652 = !DILocation(line: 901, column: 72, scope: !3646)
!3653 = !DILocation(line: 903, column: 43, scope: !3646)
!3654 = !DILocation(line: 903, column: 48, scope: !3646)
!3655 = !DILocation(line: 903, column: 51, scope: !3646)
!3656 = !DILocation(line: 903, column: 65, scope: !3646)
!3657 = !DILocation(line: 903, column: 9, scope: !3646)
!3658 = !DILocation(line: 903, column: 2, scope: !3646)
!3659 = distinct !DISubprogram(name: "bus_unregister_notifier", scope: !3, file: !3, line: 907, type: !3647, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3660 = !DILocalVariable(name: "bus", arg: 1, scope: !3659, file: !3, line: 907, type: !89)
!3661 = !DILocation(line: 907, column: 46, scope: !3659)
!3662 = !DILocalVariable(name: "nb", arg: 2, scope: !3659, file: !3, line: 907, type: !1878)
!3663 = !DILocation(line: 907, column: 74, scope: !3659)
!3664 = !DILocation(line: 909, column: 45, scope: !3659)
!3665 = !DILocation(line: 909, column: 50, scope: !3659)
!3666 = !DILocation(line: 909, column: 53, scope: !3659)
!3667 = !DILocation(line: 909, column: 67, scope: !3659)
!3668 = !DILocation(line: 909, column: 9, scope: !3659)
!3669 = !DILocation(line: 909, column: 2, scope: !3659)
!3670 = distinct !DISubprogram(name: "bus_get_kset", scope: !3, file: !3, line: 913, type: !3671, scopeLine: 914, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!114, !89}
!3673 = !DILocalVariable(name: "bus", arg: 1, scope: !3670, file: !3, line: 913, type: !89)
!3674 = !DILocation(line: 913, column: 44, scope: !3670)
!3675 = !DILocation(line: 915, column: 10, scope: !3670)
!3676 = !DILocation(line: 915, column: 15, scope: !3670)
!3677 = !DILocation(line: 915, column: 18, scope: !3670)
!3678 = !DILocation(line: 915, column: 2, scope: !3670)
!3679 = distinct !DISubprogram(name: "bus_get_device_klist", scope: !3, file: !3, line: 919, type: !3680, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!2264, !89}
!3682 = !DILocalVariable(name: "bus", arg: 1, scope: !3679, file: !3, line: 919, type: !89)
!3683 = !DILocation(line: 919, column: 53, scope: !3679)
!3684 = !DILocation(line: 921, column: 10, scope: !3679)
!3685 = !DILocation(line: 921, column: 15, scope: !3679)
!3686 = !DILocation(line: 921, column: 18, scope: !3679)
!3687 = !DILocation(line: 921, column: 2, scope: !3679)
!3688 = distinct !DISubprogram(name: "bus_sort_breadthfirst", scope: !3, file: !3, line: 952, type: !3689, scopeLine: 955, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{null, !89, !3691}
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!145, !2620, !2620}
!3694 = !DILocalVariable(name: "lock", arg: 1, scope: !3695, file: !3696, line: 392, type: !3699)
!3695 = distinct !DISubprogram(name: "spin_unlock", scope: !3696, file: !3696, line: 392, type: !3697, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3696 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!3697 = !DISubroutineType(types: !3698)
!3698 = !{null, !3699}
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!3700 = !DILocation(line: 392, column: 53, scope: !3695, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 971, column: 2, scope: !3688)
!3702 = !DILocalVariable(name: "lock", arg: 1, scope: !3703, file: !3696, line: 352, type: !3699)
!3703 = distinct !DISubprogram(name: "spin_lock", scope: !3696, file: !3696, line: 352, type: !3697, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3704 = !DILocation(line: 352, column: 51, scope: !3703, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 964, column: 2, scope: !3688)
!3706 = !DILocalVariable(name: "bus", arg: 1, scope: !3688, file: !3, line: 952, type: !89)
!3707 = !DILocation(line: 952, column: 45, scope: !3688)
!3708 = !DILocalVariable(name: "compare", arg: 2, scope: !3688, file: !3, line: 953, type: !3691)
!3709 = !DILocation(line: 953, column: 13, scope: !3688)
!3710 = !DILocalVariable(name: "sorted_devices", scope: !3688, file: !3, line: 956, type: !105)
!3711 = !DILocation(line: 956, column: 2, scope: !3688)
!3712 = !DILocalVariable(name: "n", scope: !3688, file: !3, line: 957, type: !1608)
!3713 = !DILocation(line: 957, column: 21, scope: !3688)
!3714 = !DILocalVariable(name: "tmp", scope: !3688, file: !3, line: 957, type: !1608)
!3715 = !DILocation(line: 957, column: 25, scope: !3688)
!3716 = !DILocalVariable(name: "dev_prv", scope: !3688, file: !3, line: 958, type: !1594)
!3717 = !DILocation(line: 958, column: 25, scope: !3688)
!3718 = !DILocalVariable(name: "dev", scope: !3688, file: !3, line: 959, type: !96)
!3719 = !DILocation(line: 959, column: 17, scope: !3688)
!3720 = !DILocalVariable(name: "device_klist", scope: !3688, file: !3, line: 960, type: !2264)
!3721 = !DILocation(line: 960, column: 16, scope: !3688)
!3722 = !DILocation(line: 962, column: 38, scope: !3688)
!3723 = !DILocation(line: 962, column: 17, scope: !3688)
!3724 = !DILocation(line: 962, column: 15, scope: !3688)
!3725 = !DILocation(line: 964, column: 13, scope: !3688)
!3726 = !DILocation(line: 964, column: 27, scope: !3688)
!3727 = !DILocation(line: 354, column: 2, scope: !3728, inlinedAt: !3705)
!3728 = distinct !DILexicalBlock(scope: !3703, file: !3696, line: 354, column: 2)
!3729 = !{i32 -2145265938}
!3730 = !DILocation(line: 354, column: 2, scope: !3731, inlinedAt: !3705)
!3731 = distinct !DILexicalBlock(scope: !3728, file: !3696, line: 354, column: 2)
!3732 = !DILocalVariable(name: "__mptr", scope: !3733, file: !3, line: 965, type: !80)
!3733 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 965, column: 2)
!3734 = distinct !DILexicalBlock(scope: !3688, file: !3, line: 965, column: 2)
!3735 = !DILocation(line: 965, column: 2, scope: !3733)
!3736 = !DILocation(line: 965, column: 2, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3733, file: !3, line: 965, column: 2)
!3738 = !DILocation(line: 965, column: 2, scope: !3734)
!3739 = !DILocalVariable(name: "__mptr", scope: !3740, file: !3, line: 965, type: !80)
!3740 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 965, column: 2)
!3741 = !DILocation(line: 965, column: 2, scope: !3740)
!3742 = !DILocation(line: 965, column: 2, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3740, file: !3, line: 965, column: 2)
!3744 = !DILocation(line: 965, column: 2, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 965, column: 2)
!3746 = !DILocalVariable(name: "__mptr", scope: !3747, file: !3, line: 966, type: !80)
!3747 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 966, column: 13)
!3748 = distinct !DILexicalBlock(scope: !3745, file: !3, line: 965, column: 66)
!3749 = !DILocation(line: 966, column: 13, scope: !3747)
!3750 = !DILocation(line: 966, column: 13, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3747, file: !3, line: 966, column: 13)
!3752 = !DILocation(line: 966, column: 11, scope: !3748)
!3753 = !DILocation(line: 967, column: 9, scope: !3748)
!3754 = !DILocation(line: 967, column: 18, scope: !3748)
!3755 = !DILocation(line: 967, column: 7, scope: !3748)
!3756 = !DILocation(line: 968, column: 31, scope: !3748)
!3757 = !DILocation(line: 968, column: 53, scope: !3748)
!3758 = !DILocation(line: 968, column: 3, scope: !3748)
!3759 = !DILocation(line: 969, column: 2, scope: !3748)
!3760 = !DILocalVariable(name: "__mptr", scope: !3761, file: !3, line: 965, type: !80)
!3761 = distinct !DILexicalBlock(scope: !3745, file: !3, line: 965, column: 2)
!3762 = !DILocation(line: 965, column: 2, scope: !3761)
!3763 = !DILocation(line: 965, column: 2, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3761, file: !3, line: 965, column: 2)
!3765 = distinct !{!3765, !3738, !3766}
!3766 = !DILocation(line: 969, column: 2, scope: !3734)
!3767 = !DILocation(line: 970, column: 32, scope: !3688)
!3768 = !DILocation(line: 970, column: 46, scope: !3688)
!3769 = !DILocation(line: 970, column: 2, scope: !3688)
!3770 = !DILocation(line: 971, column: 15, scope: !3688)
!3771 = !DILocation(line: 971, column: 29, scope: !3688)
!3772 = !DILocation(line: 394, column: 2, scope: !3773, inlinedAt: !3701)
!3773 = distinct !DILexicalBlock(scope: !3695, file: !3696, line: 394, column: 2)
!3774 = !{i32 -2145263577}
!3775 = !DILocation(line: 394, column: 2, scope: !3776, inlinedAt: !3701)
!3776 = distinct !DILexicalBlock(scope: !3773, file: !3696, line: 394, column: 2)
!3777 = !DILocation(line: 972, column: 1, scope: !3688)
!3778 = distinct !DISubprogram(name: "device_insertion_sort_klist", scope: !3, file: !3, line: 932, type: !3779, scopeLine: 935, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{null, !96, !109, !3691}
!3781 = !DILocalVariable(name: "a", arg: 1, scope: !3778, file: !3, line: 932, type: !96)
!3782 = !DILocation(line: 932, column: 56, scope: !3778)
!3783 = !DILocalVariable(name: "list", arg: 2, scope: !3778, file: !3, line: 932, type: !109)
!3784 = !DILocation(line: 932, column: 77, scope: !3778)
!3785 = !DILocalVariable(name: "compare", arg: 3, scope: !3778, file: !3, line: 933, type: !3691)
!3786 = !DILocation(line: 933, column: 12, scope: !3778)
!3787 = !DILocalVariable(name: "n", scope: !3778, file: !3, line: 936, type: !1608)
!3788 = !DILocation(line: 936, column: 21, scope: !3778)
!3789 = !DILocalVariable(name: "dev_prv", scope: !3778, file: !3, line: 937, type: !1594)
!3790 = !DILocation(line: 937, column: 25, scope: !3778)
!3791 = !DILocalVariable(name: "b", scope: !3778, file: !3, line: 938, type: !96)
!3792 = !DILocation(line: 938, column: 17, scope: !3778)
!3793 = !DILocalVariable(name: "__mptr", scope: !3794, file: !3, line: 940, type: !80)
!3794 = distinct !DILexicalBlock(scope: !3795, file: !3, line: 940, column: 2)
!3795 = distinct !DILexicalBlock(scope: !3778, file: !3, line: 940, column: 2)
!3796 = !DILocation(line: 940, column: 2, scope: !3794)
!3797 = !DILocation(line: 940, column: 2, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3794, file: !3, line: 940, column: 2)
!3799 = !DILocation(line: 940, column: 2, scope: !3795)
!3800 = !DILocation(line: 940, column: 2, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3795, file: !3, line: 940, column: 2)
!3802 = !DILocalVariable(name: "__mptr", scope: !3803, file: !3, line: 941, type: !80)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 941, column: 13)
!3804 = distinct !DILexicalBlock(scope: !3801, file: !3, line: 940, column: 39)
!3805 = !DILocation(line: 941, column: 13, scope: !3803)
!3806 = !DILocation(line: 941, column: 13, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 941, column: 13)
!3808 = !DILocation(line: 941, column: 11, scope: !3804)
!3809 = !DILocation(line: 942, column: 7, scope: !3804)
!3810 = !DILocation(line: 942, column: 16, scope: !3804)
!3811 = !DILocation(line: 942, column: 5, scope: !3804)
!3812 = !DILocation(line: 943, column: 7, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 943, column: 7)
!3814 = !DILocation(line: 943, column: 15, scope: !3813)
!3815 = !DILocation(line: 943, column: 18, scope: !3813)
!3816 = !DILocation(line: 943, column: 21, scope: !3813)
!3817 = !DILocation(line: 943, column: 7, scope: !3804)
!3818 = !DILocation(line: 944, column: 20, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3813, file: !3, line: 943, column: 27)
!3820 = !DILocation(line: 944, column: 23, scope: !3819)
!3821 = !DILocation(line: 944, column: 26, scope: !3819)
!3822 = !DILocation(line: 944, column: 36, scope: !3819)
!3823 = !DILocation(line: 945, column: 13, scope: !3819)
!3824 = !DILocation(line: 945, column: 16, scope: !3819)
!3825 = !DILocation(line: 945, column: 19, scope: !3819)
!3826 = !DILocation(line: 945, column: 29, scope: !3819)
!3827 = !DILocation(line: 944, column: 4, scope: !3819)
!3828 = !DILocation(line: 946, column: 4, scope: !3819)
!3829 = !DILocation(line: 948, column: 2, scope: !3804)
!3830 = !DILocalVariable(name: "__mptr", scope: !3831, file: !3, line: 940, type: !80)
!3831 = distinct !DILexicalBlock(scope: !3801, file: !3, line: 940, column: 2)
!3832 = !DILocation(line: 940, column: 2, scope: !3831)
!3833 = !DILocation(line: 940, column: 2, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3831, file: !3, line: 940, column: 2)
!3835 = distinct !{!3835, !3799, !3836}
!3836 = !DILocation(line: 948, column: 2, scope: !3795)
!3837 = !DILocation(line: 949, column: 18, scope: !3778)
!3838 = !DILocation(line: 949, column: 21, scope: !3778)
!3839 = !DILocation(line: 949, column: 24, scope: !3778)
!3840 = !DILocation(line: 949, column: 34, scope: !3778)
!3841 = !DILocation(line: 949, column: 42, scope: !3778)
!3842 = !DILocation(line: 949, column: 2, scope: !3778)
!3843 = !DILocation(line: 950, column: 1, scope: !3778)
!3844 = distinct !DISubprogram(name: "list_splice", scope: !3500, file: !3500, line: 452, type: !3845, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{null, !3847, !109}
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!3849 = !DILocalVariable(name: "list", arg: 1, scope: !3844, file: !3500, line: 452, type: !3847)
!3850 = !DILocation(line: 452, column: 56, scope: !3844)
!3851 = !DILocalVariable(name: "head", arg: 2, scope: !3844, file: !3500, line: 453, type: !109)
!3852 = !DILocation(line: 453, column: 23, scope: !3844)
!3853 = !DILocation(line: 455, column: 18, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3844, file: !3500, line: 455, column: 6)
!3855 = !DILocation(line: 455, column: 7, scope: !3854)
!3856 = !DILocation(line: 455, column: 6, scope: !3844)
!3857 = !DILocation(line: 456, column: 17, scope: !3854)
!3858 = !DILocation(line: 456, column: 23, scope: !3854)
!3859 = !DILocation(line: 456, column: 29, scope: !3854)
!3860 = !DILocation(line: 456, column: 35, scope: !3854)
!3861 = !DILocation(line: 456, column: 3, scope: !3854)
!3862 = !DILocation(line: 457, column: 1, scope: !3844)
!3863 = distinct !DISubprogram(name: "subsys_dev_iter_init", scope: !3, file: !3, line: 987, type: !3864, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{null, !3866, !89, !96, !1716}
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_dev_iter", file: !91, line: 149, size: 192, elements: !3868)
!3868 = !{!3869, !3870}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "ki", scope: !3867, file: !91, line: 150, baseType: !2261, size: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3867, file: !91, line: 151, baseType: !1716, size: 64, offset: 128)
!3871 = !DILocalVariable(name: "iter", arg: 1, scope: !3863, file: !3, line: 987, type: !3866)
!3872 = !DILocation(line: 987, column: 51, scope: !3863)
!3873 = !DILocalVariable(name: "subsys", arg: 2, scope: !3863, file: !3, line: 987, type: !89)
!3874 = !DILocation(line: 987, column: 74, scope: !3863)
!3875 = !DILocalVariable(name: "start", arg: 3, scope: !3863, file: !3, line: 988, type: !96)
!3876 = !DILocation(line: 988, column: 21, scope: !3863)
!3877 = !DILocalVariable(name: "type", arg: 4, scope: !3863, file: !3, line: 988, type: !1716)
!3878 = !DILocation(line: 988, column: 54, scope: !3863)
!3879 = !DILocalVariable(name: "start_knode", scope: !3863, file: !3, line: 990, type: !1608)
!3880 = !DILocation(line: 990, column: 21, scope: !3863)
!3881 = !DILocation(line: 992, column: 6, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3863, file: !3, line: 992, column: 6)
!3883 = !DILocation(line: 992, column: 6, scope: !3863)
!3884 = !DILocation(line: 993, column: 18, scope: !3882)
!3885 = !DILocation(line: 993, column: 25, scope: !3882)
!3886 = !DILocation(line: 993, column: 28, scope: !3882)
!3887 = !DILocation(line: 993, column: 15, scope: !3882)
!3888 = !DILocation(line: 993, column: 3, scope: !3882)
!3889 = !DILocation(line: 994, column: 24, scope: !3863)
!3890 = !DILocation(line: 994, column: 32, scope: !3863)
!3891 = !DILocation(line: 994, column: 35, scope: !3863)
!3892 = !DILocation(line: 994, column: 51, scope: !3863)
!3893 = !DILocation(line: 994, column: 57, scope: !3863)
!3894 = !DILocation(line: 994, column: 61, scope: !3863)
!3895 = !DILocation(line: 994, column: 2, scope: !3863)
!3896 = !DILocation(line: 995, column: 15, scope: !3863)
!3897 = !DILocation(line: 995, column: 2, scope: !3863)
!3898 = !DILocation(line: 995, column: 8, scope: !3863)
!3899 = !DILocation(line: 995, column: 13, scope: !3863)
!3900 = !DILocation(line: 996, column: 1, scope: !3863)
!3901 = distinct !DISubprogram(name: "subsys_dev_iter_next", scope: !3, file: !3, line: 1011, type: !3902, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!96, !3866}
!3904 = !DILocalVariable(name: "iter", arg: 1, scope: !3901, file: !3, line: 1011, type: !3866)
!3905 = !DILocation(line: 1011, column: 61, scope: !3901)
!3906 = !DILocalVariable(name: "knode", scope: !3901, file: !3, line: 1013, type: !1608)
!3907 = !DILocation(line: 1013, column: 21, scope: !3901)
!3908 = !DILocalVariable(name: "dev", scope: !3901, file: !3, line: 1014, type: !96)
!3909 = !DILocation(line: 1014, column: 17, scope: !3901)
!3910 = !DILocation(line: 1016, column: 2, scope: !3901)
!3911 = !DILocation(line: 1017, column: 23, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 1016, column: 11)
!3913 = distinct !DILexicalBlock(scope: !3914, file: !3, line: 1016, column: 2)
!3914 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 1016, column: 2)
!3915 = !DILocation(line: 1017, column: 29, scope: !3912)
!3916 = !DILocation(line: 1017, column: 11, scope: !3912)
!3917 = !DILocation(line: 1017, column: 9, scope: !3912)
!3918 = !DILocation(line: 1018, column: 8, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 1018, column: 7)
!3920 = !DILocation(line: 1018, column: 7, scope: !3912)
!3921 = !DILocation(line: 1019, column: 4, scope: !3919)
!3922 = !DILocalVariable(name: "__mptr", scope: !3923, file: !3, line: 1020, type: !80)
!3923 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 1020, column: 9)
!3924 = !DILocation(line: 1020, column: 9, scope: !3923)
!3925 = !DILocation(line: 1020, column: 9, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3923, file: !3, line: 1020, column: 9)
!3927 = !DILocation(line: 1020, column: 39, scope: !3912)
!3928 = !DILocation(line: 1020, column: 7, scope: !3912)
!3929 = !DILocation(line: 1021, column: 8, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 1021, column: 7)
!3931 = !DILocation(line: 1021, column: 14, scope: !3930)
!3932 = !DILocation(line: 1021, column: 19, scope: !3930)
!3933 = !DILocation(line: 1021, column: 22, scope: !3930)
!3934 = !DILocation(line: 1021, column: 28, scope: !3930)
!3935 = !DILocation(line: 1021, column: 36, scope: !3930)
!3936 = !DILocation(line: 1021, column: 41, scope: !3930)
!3937 = !DILocation(line: 1021, column: 33, scope: !3930)
!3938 = !DILocation(line: 1021, column: 7, scope: !3912)
!3939 = !DILocation(line: 1022, column: 11, scope: !3930)
!3940 = !DILocation(line: 1022, column: 4, scope: !3930)
!3941 = !DILocation(line: 1016, column: 2, scope: !3913)
!3942 = distinct !{!3942, !3943, !3944}
!3943 = !DILocation(line: 1016, column: 2, scope: !3914)
!3944 = !DILocation(line: 1023, column: 2, scope: !3914)
!3945 = !DILocation(line: 1024, column: 1, scope: !3901)
!3946 = distinct !DISubprogram(name: "subsys_dev_iter_exit", scope: !3, file: !3, line: 1034, type: !3947, scopeLine: 1035, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{null, !3866}
!3949 = !DILocalVariable(name: "iter", arg: 1, scope: !3946, file: !3, line: 1034, type: !3866)
!3950 = !DILocation(line: 1034, column: 51, scope: !3946)
!3951 = !DILocation(line: 1036, column: 19, scope: !3946)
!3952 = !DILocation(line: 1036, column: 25, scope: !3946)
!3953 = !DILocation(line: 1036, column: 2, scope: !3946)
!3954 = !DILocation(line: 1037, column: 1, scope: !3946)
!3955 = distinct !DISubprogram(name: "subsys_interface_register", scope: !3, file: !3, line: 1040, type: !3956, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!145, !81}
!3958 = !DILocalVariable(name: "sif", arg: 1, scope: !3955, file: !3, line: 1040, type: !81)
!3959 = !DILocation(line: 1040, column: 56, scope: !3955)
!3960 = !DILocalVariable(name: "subsys", scope: !3955, file: !3, line: 1042, type: !89)
!3961 = !DILocation(line: 1042, column: 19, scope: !3955)
!3962 = !DILocalVariable(name: "iter", scope: !3955, file: !3, line: 1043, type: !3867)
!3963 = !DILocation(line: 1043, column: 25, scope: !3955)
!3964 = !DILocalVariable(name: "dev", scope: !3955, file: !3, line: 1044, type: !96)
!3965 = !DILocation(line: 1044, column: 17, scope: !3955)
!3966 = !DILocation(line: 1046, column: 7, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 1046, column: 6)
!3968 = !DILocation(line: 1046, column: 11, scope: !3967)
!3969 = !DILocation(line: 1046, column: 15, scope: !3967)
!3970 = !DILocation(line: 1046, column: 20, scope: !3967)
!3971 = !DILocation(line: 1046, column: 6, scope: !3955)
!3972 = !DILocation(line: 1047, column: 3, scope: !3967)
!3973 = !DILocation(line: 1049, column: 19, scope: !3955)
!3974 = !DILocation(line: 1049, column: 24, scope: !3955)
!3975 = !DILocation(line: 1049, column: 11, scope: !3955)
!3976 = !DILocation(line: 1049, column: 9, scope: !3955)
!3977 = !DILocation(line: 1050, column: 7, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 1050, column: 6)
!3979 = !DILocation(line: 1050, column: 6, scope: !3955)
!3980 = !DILocation(line: 1051, column: 3, scope: !3978)
!3981 = !DILocation(line: 1053, column: 14, scope: !3955)
!3982 = !DILocation(line: 1053, column: 22, scope: !3955)
!3983 = !DILocation(line: 1053, column: 25, scope: !3955)
!3984 = !DILocation(line: 1053, column: 2, scope: !3955)
!3985 = !DILocation(line: 1054, column: 17, scope: !3955)
!3986 = !DILocation(line: 1054, column: 22, scope: !3955)
!3987 = !DILocation(line: 1054, column: 29, scope: !3955)
!3988 = !DILocation(line: 1054, column: 37, scope: !3955)
!3989 = !DILocation(line: 1054, column: 40, scope: !3955)
!3990 = !DILocation(line: 1054, column: 2, scope: !3955)
!3991 = !DILocation(line: 1055, column: 6, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 1055, column: 6)
!3993 = !DILocation(line: 1055, column: 11, scope: !3992)
!3994 = !DILocation(line: 1055, column: 6, scope: !3955)
!3995 = !DILocation(line: 1056, column: 31, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3992, file: !3, line: 1055, column: 20)
!3997 = !DILocation(line: 1056, column: 3, scope: !3996)
!3998 = !DILocation(line: 1057, column: 3, scope: !3996)
!3999 = !DILocation(line: 1057, column: 17, scope: !3996)
!4000 = !DILocation(line: 1057, column: 15, scope: !3996)
!4001 = !DILocation(line: 1058, column: 4, scope: !3996)
!4002 = !DILocation(line: 1058, column: 9, scope: !3996)
!4003 = !DILocation(line: 1058, column: 17, scope: !3996)
!4004 = !DILocation(line: 1058, column: 22, scope: !3996)
!4005 = distinct !{!4005, !3998, !4006}
!4006 = !DILocation(line: 1058, column: 25, scope: !3996)
!4007 = !DILocation(line: 1059, column: 3, scope: !3996)
!4008 = !DILocation(line: 1060, column: 2, scope: !3996)
!4009 = !DILocation(line: 1061, column: 16, scope: !3955)
!4010 = !DILocation(line: 1061, column: 24, scope: !3955)
!4011 = !DILocation(line: 1061, column: 27, scope: !3955)
!4012 = !DILocation(line: 1061, column: 2, scope: !3955)
!4013 = !DILocation(line: 1063, column: 2, scope: !3955)
!4014 = !DILocation(line: 1064, column: 1, scope: !3955)
!4015 = distinct !DISubprogram(name: "list_add_tail", scope: !3500, file: !3500, line: 98, type: !4016, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{null, !109, !109}
!4018 = !DILocalVariable(name: "new", arg: 1, scope: !4015, file: !3500, line: 98, type: !109)
!4019 = !DILocation(line: 98, column: 52, scope: !4015)
!4020 = !DILocalVariable(name: "head", arg: 2, scope: !4015, file: !3500, line: 98, type: !109)
!4021 = !DILocation(line: 98, column: 75, scope: !4015)
!4022 = !DILocation(line: 100, column: 13, scope: !4015)
!4023 = !DILocation(line: 100, column: 18, scope: !4015)
!4024 = !DILocation(line: 100, column: 24, scope: !4015)
!4025 = !DILocation(line: 100, column: 30, scope: !4015)
!4026 = !DILocation(line: 100, column: 2, scope: !4015)
!4027 = !DILocation(line: 101, column: 1, scope: !4015)
!4028 = distinct !DISubprogram(name: "subsys_interface_unregister", scope: !3, file: !3, line: 1067, type: !4029, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{null, !81}
!4031 = !DILocalVariable(name: "sif", arg: 1, scope: !4028, file: !3, line: 1067, type: !81)
!4032 = !DILocation(line: 1067, column: 59, scope: !4028)
!4033 = !DILocalVariable(name: "subsys", scope: !4028, file: !3, line: 1069, type: !89)
!4034 = !DILocation(line: 1069, column: 19, scope: !4028)
!4035 = !DILocalVariable(name: "iter", scope: !4028, file: !3, line: 1070, type: !3867)
!4036 = !DILocation(line: 1070, column: 25, scope: !4028)
!4037 = !DILocalVariable(name: "dev", scope: !4028, file: !3, line: 1071, type: !96)
!4038 = !DILocation(line: 1071, column: 17, scope: !4028)
!4039 = !DILocation(line: 1073, column: 7, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 1073, column: 6)
!4041 = !DILocation(line: 1073, column: 11, scope: !4040)
!4042 = !DILocation(line: 1073, column: 15, scope: !4040)
!4043 = !DILocation(line: 1073, column: 20, scope: !4040)
!4044 = !DILocation(line: 1073, column: 6, scope: !4028)
!4045 = !DILocation(line: 1074, column: 3, scope: !4040)
!4046 = !DILocation(line: 1076, column: 11, scope: !4028)
!4047 = !DILocation(line: 1076, column: 16, scope: !4028)
!4048 = !DILocation(line: 1076, column: 9, scope: !4028)
!4049 = !DILocation(line: 1078, column: 14, scope: !4028)
!4050 = !DILocation(line: 1078, column: 22, scope: !4028)
!4051 = !DILocation(line: 1078, column: 25, scope: !4028)
!4052 = !DILocation(line: 1078, column: 2, scope: !4028)
!4053 = !DILocation(line: 1079, column: 17, scope: !4028)
!4054 = !DILocation(line: 1079, column: 22, scope: !4028)
!4055 = !DILocation(line: 1079, column: 2, scope: !4028)
!4056 = !DILocation(line: 1080, column: 6, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 1080, column: 6)
!4058 = !DILocation(line: 1080, column: 11, scope: !4057)
!4059 = !DILocation(line: 1080, column: 6, scope: !4028)
!4060 = !DILocation(line: 1081, column: 31, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 1080, column: 23)
!4062 = !DILocation(line: 1081, column: 3, scope: !4061)
!4063 = !DILocation(line: 1082, column: 3, scope: !4061)
!4064 = !DILocation(line: 1082, column: 17, scope: !4061)
!4065 = !DILocation(line: 1082, column: 15, scope: !4061)
!4066 = !DILocation(line: 1083, column: 4, scope: !4061)
!4067 = !DILocation(line: 1083, column: 9, scope: !4061)
!4068 = !DILocation(line: 1083, column: 20, scope: !4061)
!4069 = !DILocation(line: 1083, column: 25, scope: !4061)
!4070 = distinct !{!4070, !4063, !4071}
!4071 = !DILocation(line: 1083, column: 28, scope: !4061)
!4072 = !DILocation(line: 1084, column: 3, scope: !4061)
!4073 = !DILocation(line: 1085, column: 2, scope: !4061)
!4074 = !DILocation(line: 1086, column: 16, scope: !4028)
!4075 = !DILocation(line: 1086, column: 24, scope: !4028)
!4076 = !DILocation(line: 1086, column: 27, scope: !4028)
!4077 = !DILocation(line: 1086, column: 2, scope: !4028)
!4078 = !DILocation(line: 1088, column: 10, scope: !4028)
!4079 = !DILocation(line: 1088, column: 2, scope: !4028)
!4080 = !DILocation(line: 1089, column: 1, scope: !4028)
!4081 = distinct !DISubprogram(name: "list_del_init", scope: !3500, file: !3500, line: 202, type: !3501, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4082 = !DILocalVariable(name: "entry", arg: 1, scope: !4081, file: !3500, line: 202, type: !109)
!4083 = !DILocation(line: 202, column: 52, scope: !4081)
!4084 = !DILocation(line: 204, column: 19, scope: !4081)
!4085 = !DILocation(line: 204, column: 2, scope: !4081)
!4086 = !DILocation(line: 205, column: 17, scope: !4081)
!4087 = !DILocation(line: 205, column: 2, scope: !4081)
!4088 = !DILocation(line: 206, column: 1, scope: !4081)
!4089 = distinct !DISubprogram(name: "subsys_system_register", scope: !3, file: !3, line: 1157, type: !3576, scopeLine: 1159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4090 = !DILocalVariable(name: "subsys", arg: 1, scope: !4089, file: !3, line: 1157, type: !89)
!4091 = !DILocation(line: 1157, column: 45, scope: !4089)
!4092 = !DILocalVariable(name: "groups", arg: 2, scope: !4089, file: !3, line: 1158, type: !215)
!4093 = !DILocation(line: 1158, column: 38, scope: !4089)
!4094 = !DILocation(line: 1160, column: 25, scope: !4089)
!4095 = !DILocation(line: 1160, column: 33, scope: !4089)
!4096 = !DILocation(line: 1160, column: 42, scope: !4089)
!4097 = !DILocation(line: 1160, column: 55, scope: !4089)
!4098 = !DILocation(line: 1160, column: 9, scope: !4089)
!4099 = !DILocation(line: 1160, column: 2, scope: !4089)
!4100 = distinct !DISubprogram(name: "subsys_register", scope: !3, file: !3, line: 1097, type: !4101, scopeLine: 1100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!145, !89, !215, !112}
!4103 = !DILocalVariable(name: "subsys", arg: 1, scope: !4100, file: !3, line: 1097, type: !89)
!4104 = !DILocation(line: 1097, column: 45, scope: !4100)
!4105 = !DILocalVariable(name: "groups", arg: 2, scope: !4100, file: !3, line: 1098, type: !215)
!4106 = !DILocation(line: 1098, column: 38, scope: !4100)
!4107 = !DILocalVariable(name: "parent_of_root", arg: 3, scope: !4100, file: !3, line: 1099, type: !112)
!4108 = !DILocation(line: 1099, column: 23, scope: !4100)
!4109 = !DILocalVariable(name: "dev", scope: !4100, file: !3, line: 1101, type: !96)
!4110 = !DILocation(line: 1101, column: 17, scope: !4100)
!4111 = !DILocalVariable(name: "err", scope: !4100, file: !3, line: 1102, type: !145)
!4112 = !DILocation(line: 1102, column: 6, scope: !4100)
!4113 = !DILocation(line: 1104, column: 21, scope: !4100)
!4114 = !DILocation(line: 1104, column: 8, scope: !4100)
!4115 = !DILocation(line: 1104, column: 6, scope: !4100)
!4116 = !DILocation(line: 1105, column: 6, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 1105, column: 6)
!4118 = !DILocation(line: 1105, column: 10, scope: !4117)
!4119 = !DILocation(line: 1105, column: 6, scope: !4100)
!4120 = !DILocation(line: 1106, column: 10, scope: !4117)
!4121 = !DILocation(line: 1106, column: 3, scope: !4117)
!4122 = !DILocation(line: 1108, column: 8, scope: !4100)
!4123 = !DILocation(line: 1108, column: 6, scope: !4100)
!4124 = !DILocation(line: 1109, column: 7, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 1109, column: 6)
!4126 = !DILocation(line: 1109, column: 6, scope: !4100)
!4127 = !DILocation(line: 1110, column: 7, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 1109, column: 12)
!4129 = !DILocation(line: 1111, column: 3, scope: !4128)
!4130 = !DILocation(line: 1114, column: 21, scope: !4100)
!4131 = !DILocation(line: 1114, column: 32, scope: !4100)
!4132 = !DILocation(line: 1114, column: 40, scope: !4100)
!4133 = !DILocation(line: 1114, column: 8, scope: !4100)
!4134 = !DILocation(line: 1114, column: 6, scope: !4100)
!4135 = !DILocation(line: 1115, column: 6, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 1115, column: 6)
!4137 = !DILocation(line: 1115, column: 10, scope: !4136)
!4138 = !DILocation(line: 1115, column: 6, scope: !4100)
!4139 = !DILocation(line: 1116, column: 3, scope: !4136)
!4140 = !DILocation(line: 1118, column: 21, scope: !4100)
!4141 = !DILocation(line: 1118, column: 2, scope: !4100)
!4142 = !DILocation(line: 1118, column: 7, scope: !4100)
!4143 = !DILocation(line: 1118, column: 12, scope: !4100)
!4144 = !DILocation(line: 1118, column: 19, scope: !4100)
!4145 = !DILocation(line: 1119, column: 16, scope: !4100)
!4146 = !DILocation(line: 1119, column: 2, scope: !4100)
!4147 = !DILocation(line: 1119, column: 7, scope: !4100)
!4148 = !DILocation(line: 1119, column: 14, scope: !4100)
!4149 = !DILocation(line: 1120, column: 2, scope: !4100)
!4150 = !DILocation(line: 1120, column: 7, scope: !4100)
!4151 = !DILocation(line: 1120, column: 15, scope: !4100)
!4152 = !DILocation(line: 1122, column: 24, scope: !4100)
!4153 = !DILocation(line: 1122, column: 8, scope: !4100)
!4154 = !DILocation(line: 1122, column: 6, scope: !4100)
!4155 = !DILocation(line: 1123, column: 6, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 1123, column: 6)
!4157 = !DILocation(line: 1123, column: 10, scope: !4156)
!4158 = !DILocation(line: 1123, column: 6, scope: !4100)
!4159 = !DILocation(line: 1124, column: 3, scope: !4156)
!4160 = !DILocation(line: 1126, column: 21, scope: !4100)
!4161 = !DILocation(line: 1126, column: 2, scope: !4100)
!4162 = !DILocation(line: 1126, column: 10, scope: !4100)
!4163 = !DILocation(line: 1126, column: 19, scope: !4100)
!4164 = !DILocation(line: 1127, column: 2, scope: !4100)
!4165 = !DILabel(scope: !4100, name: "err_dev_reg", file: !3, line: 1129)
!4166 = !DILocation(line: 1129, column: 1, scope: !4100)
!4167 = !DILocation(line: 1130, column: 13, scope: !4100)
!4168 = !DILocation(line: 1130, column: 2, scope: !4100)
!4169 = !DILocation(line: 1131, column: 6, scope: !4100)
!4170 = !DILocation(line: 1131, column: 2, scope: !4100)
!4171 = !DILabel(scope: !4100, name: "err_name", file: !3, line: 1132)
!4172 = !DILocation(line: 1132, column: 1, scope: !4100)
!4173 = !DILocation(line: 1133, column: 8, scope: !4100)
!4174 = !DILocation(line: 1133, column: 2, scope: !4100)
!4175 = !DILabel(scope: !4100, name: "err_dev", file: !3, line: 1134)
!4176 = !DILocation(line: 1134, column: 1, scope: !4100)
!4177 = !DILocation(line: 1135, column: 17, scope: !4100)
!4178 = !DILocation(line: 1135, column: 2, scope: !4100)
!4179 = !DILocation(line: 1136, column: 9, scope: !4100)
!4180 = !DILocation(line: 1136, column: 2, scope: !4100)
!4181 = !DILocation(line: 1137, column: 1, scope: !4100)
!4182 = distinct !DISubprogram(name: "subsys_virtual_register", scope: !3, file: !3, line: 1175, type: !3576, scopeLine: 1177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4183 = !DILocalVariable(name: "subsys", arg: 1, scope: !4182, file: !3, line: 1175, type: !89)
!4184 = !DILocation(line: 1175, column: 46, scope: !4182)
!4185 = !DILocalVariable(name: "groups", arg: 2, scope: !4182, file: !3, line: 1176, type: !215)
!4186 = !DILocation(line: 1176, column: 39, scope: !4182)
!4187 = !DILocalVariable(name: "virtual_dir", scope: !4182, file: !3, line: 1178, type: !112)
!4188 = !DILocation(line: 1178, column: 18, scope: !4182)
!4189 = !DILocation(line: 1180, column: 16, scope: !4182)
!4190 = !DILocation(line: 1180, column: 14, scope: !4182)
!4191 = !DILocation(line: 1181, column: 7, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 1181, column: 6)
!4193 = !DILocation(line: 1181, column: 6, scope: !4182)
!4194 = !DILocation(line: 1182, column: 3, scope: !4192)
!4195 = !DILocation(line: 1184, column: 25, scope: !4182)
!4196 = !DILocation(line: 1184, column: 33, scope: !4182)
!4197 = !DILocation(line: 1184, column: 41, scope: !4182)
!4198 = !DILocation(line: 1184, column: 9, scope: !4182)
!4199 = !DILocation(line: 1184, column: 2, scope: !4182)
!4200 = !DILocation(line: 1185, column: 1, scope: !4182)
!4201 = distinct !DISubprogram(name: "buses_init", scope: !3, file: !3, line: 1188, type: !4202, scopeLine: 1189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!145}
!4204 = !DILocation(line: 1190, column: 13, scope: !4201)
!4205 = !DILocation(line: 1190, column: 11, scope: !4201)
!4206 = !DILocation(line: 1191, column: 7, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4201, file: !3, line: 1191, column: 6)
!4208 = !DILocation(line: 1191, column: 6, scope: !4201)
!4209 = !DILocation(line: 1192, column: 3, scope: !4207)
!4210 = !DILocation(line: 1194, column: 53, scope: !4201)
!4211 = !DILocation(line: 1194, column: 67, scope: !4201)
!4212 = !DILocation(line: 1194, column: 16, scope: !4201)
!4213 = !DILocation(line: 1194, column: 14, scope: !4201)
!4214 = !DILocation(line: 1195, column: 7, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4201, file: !3, line: 1195, column: 6)
!4216 = !DILocation(line: 1195, column: 6, scope: !4201)
!4217 = !DILocation(line: 1196, column: 3, scope: !4215)
!4218 = !DILocation(line: 1198, column: 2, scope: !4201)
!4219 = !DILocation(line: 1199, column: 1, scope: !4201)
!4220 = distinct !DISubprogram(name: "kset_get", scope: !101, file: !101, line: 211, type: !4221, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!114, !114}
!4223 = !DILocalVariable(name: "k", arg: 1, scope: !4220, file: !101, line: 211, type: !114)
!4224 = !DILocation(line: 211, column: 50, scope: !4220)
!4225 = !DILocation(line: 213, column: 9, scope: !4220)
!4226 = !DILocation(line: 213, column: 34, scope: !4220)
!4227 = !DILocation(line: 213, column: 37, scope: !4220)
!4228 = !DILocation(line: 213, column: 21, scope: !4220)
!4229 = !DILocation(line: 213, column: 13, scope: !4220)
!4230 = !DILocation(line: 213, column: 2, scope: !4220)
!4231 = distinct !DISubprogram(name: "to_kset", scope: !101, file: !101, line: 206, type: !4232, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!114, !112}
!4234 = !DILocalVariable(name: "kobj", arg: 1, scope: !4231, file: !101, line: 206, type: !112)
!4235 = !DILocation(line: 206, column: 52, scope: !4231)
!4236 = !DILocation(line: 208, column: 9, scope: !4231)
!4237 = !DILocalVariable(name: "__mptr", scope: !4238, file: !101, line: 208, type: !80)
!4238 = distinct !DILexicalBlock(scope: !4231, file: !101, line: 208, column: 16)
!4239 = !DILocation(line: 208, column: 16, scope: !4238)
!4240 = !DILocation(line: 208, column: 16, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4238, file: !101, line: 208, column: 16)
!4242 = !DILocation(line: 208, column: 2, scope: !4231)
!4243 = distinct !DISubprogram(name: "kset_put", scope: !101, file: !101, line: 216, type: !4244, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{null, !114}
!4246 = !DILocalVariable(name: "k", arg: 1, scope: !4243, file: !101, line: 216, type: !114)
!4247 = !DILocation(line: 216, column: 42, scope: !4243)
!4248 = !DILocation(line: 218, column: 15, scope: !4243)
!4249 = !DILocation(line: 218, column: 18, scope: !4243)
!4250 = !DILocation(line: 218, column: 2, scope: !4243)
!4251 = !DILocation(line: 219, column: 1, scope: !4243)
!4252 = distinct !DISubprogram(name: "kobject_name", scope: !101, file: !101, line: 88, type: !4253, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!85, !4255}
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!4257 = !DILocalVariable(name: "kobj", arg: 1, scope: !4252, file: !101, line: 88, type: !4255)
!4258 = !DILocation(line: 88, column: 62, scope: !4252)
!4259 = !DILocation(line: 90, column: 9, scope: !4252)
!4260 = !DILocation(line: 90, column: 15, scope: !4252)
!4261 = !DILocation(line: 90, column: 2, scope: !4252)
!4262 = distinct !DISubprogram(name: "get_order", scope: !4263, file: !4263, line: 29, type: !4264, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4263 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!145, !211}
!4266 = !DILocalVariable(name: "x", arg: 1, scope: !4267, file: !4268, line: 366, type: !282)
!4267 = distinct !DISubprogram(name: "fls64", scope: !4268, file: !4268, line: 366, type: !4269, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4268 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!145, !282}
!4271 = !DILocation(line: 366, column: 40, scope: !4267, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 46, column: 9, scope: !4262)
!4273 = !DILocalVariable(name: "bitpos", scope: !4267, file: !4268, line: 368, type: !145)
!4274 = !DILocation(line: 368, column: 6, scope: !4267, inlinedAt: !4272)
!4275 = !DILocalVariable(name: "size", arg: 1, scope: !4262, file: !4263, line: 29, type: !211)
!4276 = !DILocation(line: 29, column: 63, scope: !4262)
!4277 = !DILocation(line: 31, column: 27, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4262, file: !4263, line: 31, column: 6)
!4279 = !DILocation(line: 31, column: 6, scope: !4278)
!4280 = !DILocation(line: 31, column: 6, scope: !4262)
!4281 = !DILocation(line: 32, column: 8, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4283, file: !4263, line: 32, column: 7)
!4283 = distinct !DILexicalBlock(scope: !4278, file: !4263, line: 31, column: 34)
!4284 = !DILocation(line: 32, column: 7, scope: !4283)
!4285 = !DILocation(line: 33, column: 4, scope: !4282)
!4286 = !DILocation(line: 35, column: 7, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4283, file: !4263, line: 35, column: 7)
!4288 = !DILocation(line: 35, column: 12, scope: !4287)
!4289 = !DILocation(line: 35, column: 7, scope: !4283)
!4290 = !DILocation(line: 36, column: 4, scope: !4287)
!4291 = !DILocation(line: 38, column: 10, scope: !4283)
!4292 = !DILocation(line: 38, column: 28, scope: !4283)
!4293 = !DILocation(line: 38, column: 41, scope: !4283)
!4294 = !DILocation(line: 38, column: 3, scope: !4283)
!4295 = !DILocation(line: 41, column: 6, scope: !4262)
!4296 = !DILocation(line: 42, column: 7, scope: !4262)
!4297 = !DILocation(line: 46, column: 15, scope: !4262)
!4298 = !DILocation(line: 374, column: 2, scope: !4267, inlinedAt: !4272)
!4299 = !DILocation(line: 376, column: 14, scope: !4267, inlinedAt: !4272)
!4300 = !{i32 307344}
!4301 = !DILocation(line: 377, column: 9, scope: !4267, inlinedAt: !4272)
!4302 = !DILocation(line: 377, column: 16, scope: !4267, inlinedAt: !4272)
!4303 = !DILocation(line: 46, column: 2, scope: !4262)
!4304 = !DILocation(line: 48, column: 1, scope: !4262)
!4305 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4306, file: !4306, line: 30, type: !4307, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4306 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!145, !280}
!4309 = !DILocation(line: 366, column: 40, scope: !4267, inlinedAt: !4310)
!4310 = distinct !DILocation(line: 32, column: 9, scope: !4305)
!4311 = !DILocation(line: 368, column: 6, scope: !4267, inlinedAt: !4310)
!4312 = !DILocalVariable(name: "n", arg: 1, scope: !4305, file: !4306, line: 30, type: !280)
!4313 = !DILocation(line: 30, column: 21, scope: !4305)
!4314 = !DILocation(line: 32, column: 15, scope: !4305)
!4315 = !DILocation(line: 374, column: 2, scope: !4267, inlinedAt: !4310)
!4316 = !DILocation(line: 376, column: 14, scope: !4267, inlinedAt: !4310)
!4317 = !DILocation(line: 377, column: 9, scope: !4267, inlinedAt: !4310)
!4318 = !DILocation(line: 377, column: 16, scope: !4267, inlinedAt: !4310)
!4319 = !DILocation(line: 32, column: 18, scope: !4305)
!4320 = !DILocation(line: 32, column: 2, scope: !4305)
!4321 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4322, file: !4322, line: 137, type: !4323, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4322 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!80, !1054, !1395, !208, !1464}
!4325 = !DILocalVariable(name: "s", arg: 1, scope: !4321, file: !4322, line: 137, type: !1054)
!4326 = !DILocation(line: 137, column: 54, scope: !4321)
!4327 = !DILocalVariable(name: "object", arg: 2, scope: !4321, file: !4322, line: 137, type: !1395)
!4328 = !DILocation(line: 137, column: 69, scope: !4321)
!4329 = !DILocalVariable(name: "size", arg: 3, scope: !4321, file: !4322, line: 138, type: !208)
!4330 = !DILocation(line: 138, column: 12, scope: !4321)
!4331 = !DILocalVariable(name: "flags", arg: 4, scope: !4321, file: !4322, line: 138, type: !1464)
!4332 = !DILocation(line: 138, column: 24, scope: !4321)
!4333 = !DILocation(line: 140, column: 17, scope: !4321)
!4334 = !DILocation(line: 140, column: 2, scope: !4321)
!4335 = distinct !DISubprogram(name: "driver_release", scope: !3, file: !3, line: 86, type: !180, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4336 = !DILocalVariable(name: "kobj", arg: 1, scope: !4335, file: !3, line: 86, type: !112)
!4337 = !DILocation(line: 86, column: 44, scope: !4335)
!4338 = !DILocalVariable(name: "drv_priv", scope: !4335, file: !3, line: 88, type: !1692)
!4339 = !DILocation(line: 88, column: 25, scope: !4335)
!4340 = !DILocalVariable(name: "__mptr", scope: !4341, file: !3, line: 88, type: !80)
!4341 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 88, column: 36)
!4342 = !DILocation(line: 88, column: 36, scope: !4341)
!4343 = !DILocation(line: 88, column: 36, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4341, file: !3, line: 88, column: 36)
!4345 = !DILocation(line: 90, column: 2, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 90, column: 2)
!4347 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 90, column: 2)
!4348 = !DILocation(line: 90, column: 2, scope: !4347)
!4349 = !DILocation(line: 91, column: 8, scope: !4335)
!4350 = !DILocation(line: 91, column: 2, scope: !4335)
!4351 = !DILocation(line: 92, column: 1, scope: !4335)
!4352 = distinct !DISubprogram(name: "drv_attr_show", scope: !3, file: !3, line: 57, type: !190, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4353 = !DILocalVariable(name: "kobj", arg: 1, scope: !4352, file: !3, line: 57, type: !112)
!4354 = !DILocation(line: 57, column: 46, scope: !4352)
!4355 = !DILocalVariable(name: "attr", arg: 2, scope: !4352, file: !3, line: 57, type: !197)
!4356 = !DILocation(line: 57, column: 70, scope: !4352)
!4357 = !DILocalVariable(name: "buf", arg: 3, scope: !4352, file: !3, line: 58, type: !161)
!4358 = !DILocation(line: 58, column: 15, scope: !4352)
!4359 = !DILocalVariable(name: "drv_attr", scope: !4352, file: !3, line: 60, type: !2078)
!4360 = !DILocation(line: 60, column: 27, scope: !4352)
!4361 = !DILocalVariable(name: "__mptr", scope: !4362, file: !3, line: 60, type: !80)
!4362 = distinct !DILexicalBlock(scope: !4352, file: !3, line: 60, column: 38)
!4363 = !DILocation(line: 60, column: 38, scope: !4362)
!4364 = !DILocation(line: 60, column: 38, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 60, column: 38)
!4366 = !DILocalVariable(name: "drv_priv", scope: !4352, file: !3, line: 61, type: !1692)
!4367 = !DILocation(line: 61, column: 25, scope: !4352)
!4368 = !DILocalVariable(name: "__mptr", scope: !4369, file: !3, line: 61, type: !80)
!4369 = distinct !DILexicalBlock(scope: !4352, file: !3, line: 61, column: 36)
!4370 = !DILocation(line: 61, column: 36, scope: !4369)
!4371 = !DILocation(line: 61, column: 36, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 61, column: 36)
!4373 = !DILocalVariable(name: "ret", scope: !4352, file: !3, line: 62, type: !192)
!4374 = !DILocation(line: 62, column: 10, scope: !4352)
!4375 = !DILocation(line: 64, column: 6, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4352, file: !3, line: 64, column: 6)
!4377 = !DILocation(line: 64, column: 16, scope: !4376)
!4378 = !DILocation(line: 64, column: 6, scope: !4352)
!4379 = !DILocation(line: 65, column: 9, scope: !4376)
!4380 = !DILocation(line: 65, column: 19, scope: !4376)
!4381 = !DILocation(line: 65, column: 24, scope: !4376)
!4382 = !DILocation(line: 65, column: 34, scope: !4376)
!4383 = !DILocation(line: 65, column: 42, scope: !4376)
!4384 = !DILocation(line: 65, column: 7, scope: !4376)
!4385 = !DILocation(line: 65, column: 3, scope: !4376)
!4386 = !DILocation(line: 66, column: 9, scope: !4352)
!4387 = !DILocation(line: 66, column: 2, scope: !4352)
!4388 = distinct !DISubprogram(name: "drv_attr_store", scope: !3, file: !3, line: 69, type: !206, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4389 = !DILocalVariable(name: "kobj", arg: 1, scope: !4388, file: !3, line: 69, type: !112)
!4390 = !DILocation(line: 69, column: 47, scope: !4388)
!4391 = !DILocalVariable(name: "attr", arg: 2, scope: !4388, file: !3, line: 69, type: !197)
!4392 = !DILocation(line: 69, column: 71, scope: !4388)
!4393 = !DILocalVariable(name: "buf", arg: 3, scope: !4388, file: !3, line: 70, type: !85)
!4394 = !DILocation(line: 70, column: 22, scope: !4388)
!4395 = !DILocalVariable(name: "count", arg: 4, scope: !4388, file: !3, line: 70, type: !208)
!4396 = !DILocation(line: 70, column: 34, scope: !4388)
!4397 = !DILocalVariable(name: "drv_attr", scope: !4388, file: !3, line: 72, type: !2078)
!4398 = !DILocation(line: 72, column: 27, scope: !4388)
!4399 = !DILocalVariable(name: "__mptr", scope: !4400, file: !3, line: 72, type: !80)
!4400 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 72, column: 38)
!4401 = !DILocation(line: 72, column: 38, scope: !4400)
!4402 = !DILocation(line: 72, column: 38, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4400, file: !3, line: 72, column: 38)
!4404 = !DILocalVariable(name: "drv_priv", scope: !4388, file: !3, line: 73, type: !1692)
!4405 = !DILocation(line: 73, column: 25, scope: !4388)
!4406 = !DILocalVariable(name: "__mptr", scope: !4407, file: !3, line: 73, type: !80)
!4407 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 73, column: 36)
!4408 = !DILocation(line: 73, column: 36, scope: !4407)
!4409 = !DILocation(line: 73, column: 36, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 73, column: 36)
!4411 = !DILocalVariable(name: "ret", scope: !4388, file: !3, line: 74, type: !192)
!4412 = !DILocation(line: 74, column: 10, scope: !4388)
!4413 = !DILocation(line: 76, column: 6, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 76, column: 6)
!4415 = !DILocation(line: 76, column: 16, scope: !4414)
!4416 = !DILocation(line: 76, column: 6, scope: !4388)
!4417 = !DILocation(line: 77, column: 9, scope: !4414)
!4418 = !DILocation(line: 77, column: 19, scope: !4414)
!4419 = !DILocation(line: 77, column: 25, scope: !4414)
!4420 = !DILocation(line: 77, column: 35, scope: !4414)
!4421 = !DILocation(line: 77, column: 43, scope: !4414)
!4422 = !DILocation(line: 77, column: 48, scope: !4414)
!4423 = !DILocation(line: 77, column: 7, scope: !4414)
!4424 = !DILocation(line: 77, column: 3, scope: !4414)
!4425 = !DILocation(line: 78, column: 9, scope: !4388)
!4426 = !DILocation(line: 78, column: 2, scope: !4388)
!4427 = distinct !DISubprogram(name: "uevent_store", scope: !3, file: !3, line: 580, type: !2088, scopeLine: 582, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4428 = !DILocalVariable(name: "drv", arg: 1, scope: !4427, file: !3, line: 580, type: !1621)
!4429 = !DILocation(line: 580, column: 51, scope: !4427)
!4430 = !DILocalVariable(name: "buf", arg: 2, scope: !4427, file: !3, line: 580, type: !85)
!4431 = !DILocation(line: 580, column: 68, scope: !4427)
!4432 = !DILocalVariable(name: "count", arg: 3, scope: !4427, file: !3, line: 581, type: !208)
!4433 = !DILocation(line: 581, column: 15, scope: !4427)
!4434 = !DILocalVariable(name: "rc", scope: !4427, file: !3, line: 583, type: !145)
!4435 = !DILocation(line: 583, column: 6, scope: !4427)
!4436 = !DILocation(line: 585, column: 29, scope: !4427)
!4437 = !DILocation(line: 585, column: 34, scope: !4427)
!4438 = !DILocation(line: 585, column: 37, scope: !4427)
!4439 = !DILocation(line: 585, column: 43, scope: !4427)
!4440 = !DILocation(line: 585, column: 48, scope: !4427)
!4441 = !DILocation(line: 585, column: 7, scope: !4427)
!4442 = !DILocation(line: 585, column: 5, scope: !4427)
!4443 = !DILocation(line: 586, column: 9, scope: !4427)
!4444 = !DILocation(line: 586, column: 14, scope: !4427)
!4445 = !DILocation(line: 586, column: 19, scope: !4427)
!4446 = !DILocation(line: 586, column: 2, scope: !4427)
!4447 = distinct !DISubprogram(name: "unbind_store", scope: !3, file: !3, line: 182, type: !2088, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4448 = !DILocalVariable(name: "drv", arg: 1, scope: !4447, file: !3, line: 182, type: !1621)
!4449 = !DILocation(line: 182, column: 51, scope: !4447)
!4450 = !DILocalVariable(name: "buf", arg: 2, scope: !4447, file: !3, line: 182, type: !85)
!4451 = !DILocation(line: 182, column: 68, scope: !4447)
!4452 = !DILocalVariable(name: "count", arg: 3, scope: !4447, file: !3, line: 183, type: !208)
!4453 = !DILocation(line: 183, column: 15, scope: !4447)
!4454 = !DILocalVariable(name: "bus", scope: !4447, file: !3, line: 185, type: !89)
!4455 = !DILocation(line: 185, column: 19, scope: !4447)
!4456 = !DILocation(line: 185, column: 33, scope: !4447)
!4457 = !DILocation(line: 185, column: 38, scope: !4447)
!4458 = !DILocation(line: 185, column: 25, scope: !4447)
!4459 = !DILocalVariable(name: "dev", scope: !4447, file: !3, line: 186, type: !96)
!4460 = !DILocation(line: 186, column: 17, scope: !4447)
!4461 = !DILocalVariable(name: "err", scope: !4447, file: !3, line: 187, type: !145)
!4462 = !DILocation(line: 187, column: 6, scope: !4447)
!4463 = !DILocation(line: 189, column: 32, scope: !4447)
!4464 = !DILocation(line: 189, column: 43, scope: !4447)
!4465 = !DILocation(line: 189, column: 8, scope: !4447)
!4466 = !DILocation(line: 189, column: 6, scope: !4447)
!4467 = !DILocation(line: 190, column: 6, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 190, column: 6)
!4469 = !DILocation(line: 190, column: 10, scope: !4468)
!4470 = !DILocation(line: 190, column: 13, scope: !4468)
!4471 = !DILocation(line: 190, column: 18, scope: !4468)
!4472 = !DILocation(line: 190, column: 28, scope: !4468)
!4473 = !DILocation(line: 190, column: 25, scope: !4468)
!4474 = !DILocation(line: 190, column: 6, scope: !4447)
!4475 = !DILocation(line: 191, column: 24, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4468, file: !3, line: 190, column: 33)
!4477 = !DILocation(line: 191, column: 3, scope: !4476)
!4478 = !DILocation(line: 192, column: 9, scope: !4476)
!4479 = !DILocation(line: 192, column: 7, scope: !4476)
!4480 = !DILocation(line: 193, column: 2, scope: !4476)
!4481 = !DILocation(line: 194, column: 13, scope: !4447)
!4482 = !DILocation(line: 194, column: 2, scope: !4447)
!4483 = !DILocation(line: 195, column: 10, scope: !4447)
!4484 = !DILocation(line: 195, column: 2, scope: !4447)
!4485 = !DILocation(line: 196, column: 9, scope: !4447)
!4486 = !DILocation(line: 196, column: 2, scope: !4447)
!4487 = distinct !DISubprogram(name: "bus_find_device_by_name", scope: !91, file: !91, line: 172, type: !4488, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!96, !89, !96, !85}
!4490 = !DILocalVariable(name: "bus", arg: 1, scope: !4487, file: !91, line: 172, type: !89)
!4491 = !DILocation(line: 172, column: 71, scope: !4487)
!4492 = !DILocalVariable(name: "start", arg: 2, scope: !4487, file: !91, line: 173, type: !96)
!4493 = !DILocation(line: 173, column: 27, scope: !4487)
!4494 = !DILocalVariable(name: "name", arg: 3, scope: !4487, file: !91, line: 174, type: !85)
!4495 = !DILocation(line: 174, column: 24, scope: !4487)
!4496 = !DILocation(line: 176, column: 25, scope: !4487)
!4497 = !DILocation(line: 176, column: 30, scope: !4487)
!4498 = !DILocation(line: 176, column: 37, scope: !4487)
!4499 = !DILocation(line: 176, column: 9, scope: !4487)
!4500 = !DILocation(line: 176, column: 2, scope: !4487)
!4501 = distinct !DISubprogram(name: "bind_store", scope: !3, file: !3, line: 205, type: !2088, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4502 = !DILocalVariable(name: "drv", arg: 1, scope: !4501, file: !3, line: 205, type: !1621)
!4503 = !DILocation(line: 205, column: 49, scope: !4501)
!4504 = !DILocalVariable(name: "buf", arg: 2, scope: !4501, file: !3, line: 205, type: !85)
!4505 = !DILocation(line: 205, column: 66, scope: !4501)
!4506 = !DILocalVariable(name: "count", arg: 3, scope: !4501, file: !3, line: 206, type: !208)
!4507 = !DILocation(line: 206, column: 13, scope: !4501)
!4508 = !DILocalVariable(name: "bus", scope: !4501, file: !3, line: 208, type: !89)
!4509 = !DILocation(line: 208, column: 19, scope: !4501)
!4510 = !DILocation(line: 208, column: 33, scope: !4501)
!4511 = !DILocation(line: 208, column: 38, scope: !4501)
!4512 = !DILocation(line: 208, column: 25, scope: !4501)
!4513 = !DILocalVariable(name: "dev", scope: !4501, file: !3, line: 209, type: !96)
!4514 = !DILocation(line: 209, column: 17, scope: !4501)
!4515 = !DILocalVariable(name: "err", scope: !4501, file: !3, line: 210, type: !145)
!4516 = !DILocation(line: 210, column: 6, scope: !4501)
!4517 = !DILocation(line: 212, column: 32, scope: !4501)
!4518 = !DILocation(line: 212, column: 43, scope: !4501)
!4519 = !DILocation(line: 212, column: 8, scope: !4501)
!4520 = !DILocation(line: 212, column: 6, scope: !4501)
!4521 = !DILocation(line: 213, column: 6, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4501, file: !3, line: 213, column: 6)
!4523 = !DILocation(line: 213, column: 10, scope: !4522)
!4524 = !DILocation(line: 213, column: 13, scope: !4522)
!4525 = !DILocation(line: 213, column: 18, scope: !4522)
!4526 = !DILocation(line: 213, column: 25, scope: !4522)
!4527 = !DILocation(line: 213, column: 33, scope: !4522)
!4528 = !DILocation(line: 213, column: 56, scope: !4522)
!4529 = !DILocation(line: 213, column: 61, scope: !4522)
!4530 = !DILocation(line: 213, column: 36, scope: !4522)
!4531 = !DILocation(line: 213, column: 6, scope: !4501)
!4532 = !DILocation(line: 214, column: 30, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 213, column: 67)
!4534 = !DILocation(line: 214, column: 35, scope: !4533)
!4535 = !DILocation(line: 214, column: 9, scope: !4533)
!4536 = !DILocation(line: 214, column: 7, scope: !4533)
!4537 = !DILocation(line: 216, column: 7, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 216, column: 7)
!4539 = !DILocation(line: 216, column: 11, scope: !4538)
!4540 = !DILocation(line: 216, column: 7, scope: !4533)
!4541 = !DILocation(line: 218, column: 10, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 216, column: 16)
!4543 = !DILocation(line: 218, column: 8, scope: !4542)
!4544 = !DILocation(line: 219, column: 3, scope: !4542)
!4545 = !DILocation(line: 219, column: 14, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 219, column: 14)
!4547 = !DILocation(line: 219, column: 18, scope: !4546)
!4548 = !DILocation(line: 219, column: 14, scope: !4538)
!4549 = !DILocation(line: 221, column: 8, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 219, column: 24)
!4551 = !DILocation(line: 222, column: 3, scope: !4550)
!4552 = !DILocation(line: 223, column: 2, scope: !4533)
!4553 = !DILocation(line: 224, column: 13, scope: !4501)
!4554 = !DILocation(line: 224, column: 2, scope: !4501)
!4555 = !DILocation(line: 225, column: 10, scope: !4501)
!4556 = !DILocation(line: 225, column: 2, scope: !4501)
!4557 = !DILocation(line: 226, column: 9, scope: !4501)
!4558 = !DILocation(line: 226, column: 2, scope: !4501)
!4559 = distinct !DISubprogram(name: "driver_match_device", scope: !1596, file: !1596, line: 140, type: !4560, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!145, !1621, !96}
!4562 = !DILocalVariable(name: "drv", arg: 1, scope: !4559, file: !1596, line: 140, type: !1621)
!4563 = !DILocation(line: 140, column: 61, scope: !4559)
!4564 = !DILocalVariable(name: "dev", arg: 2, scope: !4559, file: !1596, line: 141, type: !96)
!4565 = !DILocation(line: 141, column: 26, scope: !4559)
!4566 = !DILocation(line: 143, column: 9, scope: !4559)
!4567 = !DILocation(line: 143, column: 14, scope: !4559)
!4568 = !DILocation(line: 143, column: 19, scope: !4559)
!4569 = !DILocation(line: 143, column: 27, scope: !4559)
!4570 = !DILocation(line: 143, column: 32, scope: !4559)
!4571 = !DILocation(line: 143, column: 37, scope: !4559)
!4572 = !DILocation(line: 143, column: 43, scope: !4559)
!4573 = !DILocation(line: 143, column: 48, scope: !4559)
!4574 = !DILocation(line: 143, column: 2, scope: !4559)
!4575 = distinct !DISubprogram(name: "device_lock", scope: !30, file: !30, line: 729, type: !1647, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4576 = !DILocalVariable(name: "dev", arg: 1, scope: !4575, file: !30, line: 729, type: !96)
!4577 = !DILocation(line: 729, column: 47, scope: !4575)
!4578 = !DILocation(line: 731, column: 14, scope: !4575)
!4579 = !DILocation(line: 731, column: 19, scope: !4575)
!4580 = !DILocation(line: 731, column: 2, scope: !4575)
!4581 = !DILocation(line: 732, column: 1, scope: !4575)
!4582 = distinct !DISubprogram(name: "device_unlock", scope: !30, file: !30, line: 744, type: !1647, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4583 = !DILocalVariable(name: "dev", arg: 1, scope: !4582, file: !30, line: 744, type: !96)
!4584 = !DILocation(line: 744, column: 49, scope: !4582)
!4585 = !DILocation(line: 746, column: 16, scope: !4582)
!4586 = !DILocation(line: 746, column: 21, scope: !4582)
!4587 = !DILocation(line: 746, column: 2, scope: !4582)
!4588 = !DILocation(line: 747, column: 1, scope: !4582)
!4589 = distinct !DISubprogram(name: "bus_release", scope: !3, file: !3, line: 152, type: !180, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4590 = !DILocalVariable(name: "kobj", arg: 1, scope: !4589, file: !3, line: 152, type: !112)
!4591 = !DILocation(line: 152, column: 41, scope: !4589)
!4592 = !DILocalVariable(name: "priv", scope: !4589, file: !3, line: 154, type: !2014)
!4593 = !DILocation(line: 154, column: 25, scope: !4589)
!4594 = !DILocalVariable(name: "__mptr", scope: !4595, file: !3, line: 154, type: !80)
!4595 = distinct !DILexicalBlock(scope: !4589, file: !3, line: 154, column: 32)
!4596 = !DILocation(line: 154, column: 32, scope: !4595)
!4597 = !DILocation(line: 154, column: 32, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4595, file: !3, line: 154, column: 32)
!4599 = !DILocalVariable(name: "bus", scope: !4589, file: !3, line: 155, type: !89)
!4600 = !DILocation(line: 155, column: 19, scope: !4589)
!4601 = !DILocation(line: 155, column: 25, scope: !4589)
!4602 = !DILocation(line: 155, column: 31, scope: !4589)
!4603 = !DILocation(line: 157, column: 8, scope: !4589)
!4604 = !DILocation(line: 157, column: 2, scope: !4589)
!4605 = !DILocation(line: 158, column: 2, scope: !4589)
!4606 = !DILocation(line: 158, column: 7, scope: !4589)
!4607 = !DILocation(line: 158, column: 9, scope: !4589)
!4608 = !DILocation(line: 159, column: 1, scope: !4589)
!4609 = distinct !DISubprogram(name: "bus_attr_show", scope: !3, file: !3, line: 102, type: !190, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4610 = !DILocalVariable(name: "kobj", arg: 1, scope: !4609, file: !3, line: 102, type: !112)
!4611 = !DILocation(line: 102, column: 46, scope: !4609)
!4612 = !DILocalVariable(name: "attr", arg: 2, scope: !4609, file: !3, line: 102, type: !197)
!4613 = !DILocation(line: 102, column: 70, scope: !4609)
!4614 = !DILocalVariable(name: "buf", arg: 3, scope: !4609, file: !3, line: 103, type: !161)
!4615 = !DILocation(line: 103, column: 15, scope: !4609)
!4616 = !DILocalVariable(name: "bus_attr", scope: !4609, file: !3, line: 105, type: !2090)
!4617 = !DILocation(line: 105, column: 24, scope: !4609)
!4618 = !DILocalVariable(name: "__mptr", scope: !4619, file: !3, line: 105, type: !80)
!4619 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 105, column: 35)
!4620 = !DILocation(line: 105, column: 35, scope: !4619)
!4621 = !DILocation(line: 105, column: 35, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 105, column: 35)
!4623 = !DILocalVariable(name: "subsys_priv", scope: !4609, file: !3, line: 106, type: !2014)
!4624 = !DILocation(line: 106, column: 25, scope: !4609)
!4625 = !DILocalVariable(name: "__mptr", scope: !4626, file: !3, line: 106, type: !80)
!4626 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 106, column: 39)
!4627 = !DILocation(line: 106, column: 39, scope: !4626)
!4628 = !DILocation(line: 106, column: 39, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4626, file: !3, line: 106, column: 39)
!4630 = !DILocalVariable(name: "ret", scope: !4609, file: !3, line: 107, type: !192)
!4631 = !DILocation(line: 107, column: 10, scope: !4609)
!4632 = !DILocation(line: 109, column: 6, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 109, column: 6)
!4634 = !DILocation(line: 109, column: 16, scope: !4633)
!4635 = !DILocation(line: 109, column: 6, scope: !4609)
!4636 = !DILocation(line: 110, column: 9, scope: !4633)
!4637 = !DILocation(line: 110, column: 19, scope: !4633)
!4638 = !DILocation(line: 110, column: 24, scope: !4633)
!4639 = !DILocation(line: 110, column: 37, scope: !4633)
!4640 = !DILocation(line: 110, column: 42, scope: !4633)
!4641 = !DILocation(line: 110, column: 7, scope: !4633)
!4642 = !DILocation(line: 110, column: 3, scope: !4633)
!4643 = !DILocation(line: 111, column: 9, scope: !4609)
!4644 = !DILocation(line: 111, column: 2, scope: !4609)
!4645 = distinct !DISubprogram(name: "bus_attr_store", scope: !3, file: !3, line: 114, type: !206, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4646 = !DILocalVariable(name: "kobj", arg: 1, scope: !4645, file: !3, line: 114, type: !112)
!4647 = !DILocation(line: 114, column: 47, scope: !4645)
!4648 = !DILocalVariable(name: "attr", arg: 2, scope: !4645, file: !3, line: 114, type: !197)
!4649 = !DILocation(line: 114, column: 71, scope: !4645)
!4650 = !DILocalVariable(name: "buf", arg: 3, scope: !4645, file: !3, line: 115, type: !85)
!4651 = !DILocation(line: 115, column: 22, scope: !4645)
!4652 = !DILocalVariable(name: "count", arg: 4, scope: !4645, file: !3, line: 115, type: !208)
!4653 = !DILocation(line: 115, column: 34, scope: !4645)
!4654 = !DILocalVariable(name: "bus_attr", scope: !4645, file: !3, line: 117, type: !2090)
!4655 = !DILocation(line: 117, column: 24, scope: !4645)
!4656 = !DILocalVariable(name: "__mptr", scope: !4657, file: !3, line: 117, type: !80)
!4657 = distinct !DILexicalBlock(scope: !4645, file: !3, line: 117, column: 35)
!4658 = !DILocation(line: 117, column: 35, scope: !4657)
!4659 = !DILocation(line: 117, column: 35, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4657, file: !3, line: 117, column: 35)
!4661 = !DILocalVariable(name: "subsys_priv", scope: !4645, file: !3, line: 118, type: !2014)
!4662 = !DILocation(line: 118, column: 25, scope: !4645)
!4663 = !DILocalVariable(name: "__mptr", scope: !4664, file: !3, line: 118, type: !80)
!4664 = distinct !DILexicalBlock(scope: !4645, file: !3, line: 118, column: 39)
!4665 = !DILocation(line: 118, column: 39, scope: !4664)
!4666 = !DILocation(line: 118, column: 39, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 118, column: 39)
!4668 = !DILocalVariable(name: "ret", scope: !4645, file: !3, line: 119, type: !192)
!4669 = !DILocation(line: 119, column: 10, scope: !4645)
!4670 = !DILocation(line: 121, column: 6, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4645, file: !3, line: 121, column: 6)
!4672 = !DILocation(line: 121, column: 16, scope: !4671)
!4673 = !DILocation(line: 121, column: 6, scope: !4645)
!4674 = !DILocation(line: 122, column: 9, scope: !4671)
!4675 = !DILocation(line: 122, column: 19, scope: !4671)
!4676 = !DILocation(line: 122, column: 25, scope: !4671)
!4677 = !DILocation(line: 122, column: 38, scope: !4671)
!4678 = !DILocation(line: 122, column: 43, scope: !4671)
!4679 = !DILocation(line: 122, column: 48, scope: !4671)
!4680 = !DILocation(line: 122, column: 7, scope: !4671)
!4681 = !DILocation(line: 122, column: 3, scope: !4671)
!4682 = !DILocation(line: 123, column: 9, scope: !4645)
!4683 = !DILocation(line: 123, column: 2, scope: !4645)
!4684 = distinct !DISubprogram(name: "bus_uevent_store", scope: !3, file: !3, line: 777, type: !2100, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4685 = !DILocalVariable(name: "bus", arg: 1, scope: !4684, file: !3, line: 777, type: !89)
!4686 = !DILocation(line: 777, column: 50, scope: !4684)
!4687 = !DILocalVariable(name: "buf", arg: 2, scope: !4684, file: !3, line: 778, type: !85)
!4688 = !DILocation(line: 778, column: 17, scope: !4684)
!4689 = !DILocalVariable(name: "count", arg: 3, scope: !4684, file: !3, line: 778, type: !208)
!4690 = !DILocation(line: 778, column: 29, scope: !4684)
!4691 = !DILocalVariable(name: "rc", scope: !4684, file: !3, line: 780, type: !145)
!4692 = !DILocation(line: 780, column: 6, scope: !4684)
!4693 = !DILocation(line: 782, column: 29, scope: !4684)
!4694 = !DILocation(line: 782, column: 34, scope: !4684)
!4695 = !DILocation(line: 782, column: 37, scope: !4684)
!4696 = !DILocation(line: 782, column: 44, scope: !4684)
!4697 = !DILocation(line: 782, column: 50, scope: !4684)
!4698 = !DILocation(line: 782, column: 55, scope: !4684)
!4699 = !DILocation(line: 782, column: 7, scope: !4684)
!4700 = !DILocation(line: 782, column: 5, scope: !4684)
!4701 = !DILocation(line: 783, column: 9, scope: !4684)
!4702 = !DILocation(line: 783, column: 14, scope: !4684)
!4703 = !DILocation(line: 783, column: 19, scope: !4684)
!4704 = !DILocation(line: 783, column: 2, scope: !4684)
!4705 = distinct !DISubprogram(name: "drivers_probe_store", scope: !3, file: !3, line: 245, type: !2100, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4706 = !DILocalVariable(name: "bus", arg: 1, scope: !4705, file: !3, line: 245, type: !89)
!4707 = !DILocation(line: 245, column: 53, scope: !4705)
!4708 = !DILocalVariable(name: "buf", arg: 2, scope: !4705, file: !3, line: 246, type: !85)
!4709 = !DILocation(line: 246, column: 20, scope: !4705)
!4710 = !DILocalVariable(name: "count", arg: 3, scope: !4705, file: !3, line: 246, type: !208)
!4711 = !DILocation(line: 246, column: 32, scope: !4705)
!4712 = !DILocalVariable(name: "dev", scope: !4705, file: !3, line: 248, type: !96)
!4713 = !DILocation(line: 248, column: 17, scope: !4705)
!4714 = !DILocalVariable(name: "err", scope: !4705, file: !3, line: 249, type: !145)
!4715 = !DILocation(line: 249, column: 6, scope: !4705)
!4716 = !DILocation(line: 251, column: 32, scope: !4705)
!4717 = !DILocation(line: 251, column: 43, scope: !4705)
!4718 = !DILocation(line: 251, column: 8, scope: !4705)
!4719 = !DILocation(line: 251, column: 6, scope: !4705)
!4720 = !DILocation(line: 252, column: 7, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 252, column: 6)
!4722 = !DILocation(line: 252, column: 6, scope: !4705)
!4723 = !DILocation(line: 253, column: 3, scope: !4721)
!4724 = !DILocation(line: 254, column: 32, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 254, column: 6)
!4726 = !DILocation(line: 254, column: 6, scope: !4725)
!4727 = !DILocation(line: 254, column: 43, scope: !4725)
!4728 = !DILocation(line: 254, column: 6, scope: !4705)
!4729 = !DILocation(line: 255, column: 9, scope: !4725)
!4730 = !DILocation(line: 255, column: 7, scope: !4725)
!4731 = !DILocation(line: 255, column: 3, scope: !4725)
!4732 = !DILocation(line: 256, column: 13, scope: !4705)
!4733 = !DILocation(line: 256, column: 2, scope: !4705)
!4734 = !DILocation(line: 257, column: 9, scope: !4705)
!4735 = !DILocation(line: 257, column: 2, scope: !4705)
!4736 = !DILocation(line: 258, column: 1, scope: !4705)
!4737 = distinct !DISubprogram(name: "drivers_autoprobe_show", scope: !3, file: !3, line: 230, type: !2096, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4738 = !DILocalVariable(name: "bus", arg: 1, scope: !4737, file: !3, line: 230, type: !89)
!4739 = !DILocation(line: 230, column: 56, scope: !4737)
!4740 = !DILocalVariable(name: "buf", arg: 2, scope: !4737, file: !3, line: 230, type: !161)
!4741 = !DILocation(line: 230, column: 67, scope: !4737)
!4742 = !DILocation(line: 232, column: 20, scope: !4737)
!4743 = !DILocation(line: 232, column: 33, scope: !4737)
!4744 = !DILocation(line: 232, column: 38, scope: !4737)
!4745 = !DILocation(line: 232, column: 41, scope: !4737)
!4746 = !DILocation(line: 232, column: 9, scope: !4737)
!4747 = !DILocation(line: 232, column: 2, scope: !4737)
!4748 = distinct !DISubprogram(name: "drivers_autoprobe_store", scope: !3, file: !3, line: 235, type: !2100, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4749 = !DILocalVariable(name: "bus", arg: 1, scope: !4748, file: !3, line: 235, type: !89)
!4750 = !DILocation(line: 235, column: 57, scope: !4748)
!4751 = !DILocalVariable(name: "buf", arg: 2, scope: !4748, file: !3, line: 236, type: !85)
!4752 = !DILocation(line: 236, column: 24, scope: !4748)
!4753 = !DILocalVariable(name: "count", arg: 3, scope: !4748, file: !3, line: 236, type: !208)
!4754 = !DILocation(line: 236, column: 36, scope: !4748)
!4755 = !DILocation(line: 238, column: 6, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 238, column: 6)
!4757 = !DILocation(line: 238, column: 13, scope: !4756)
!4758 = !DILocation(line: 238, column: 6, scope: !4748)
!4759 = !DILocation(line: 239, column: 3, scope: !4756)
!4760 = !DILocation(line: 239, column: 8, scope: !4756)
!4761 = !DILocation(line: 239, column: 11, scope: !4756)
!4762 = !DILocation(line: 239, column: 29, scope: !4756)
!4763 = !DILocation(line: 241, column: 3, scope: !4756)
!4764 = !DILocation(line: 241, column: 8, scope: !4756)
!4765 = !DILocation(line: 241, column: 11, scope: !4756)
!4766 = !DILocation(line: 241, column: 29, scope: !4756)
!4767 = !DILocation(line: 242, column: 9, scope: !4748)
!4768 = !DILocation(line: 242, column: 2, scope: !4748)
!4769 = distinct !DISubprogram(name: "list_move_tail", scope: !3500, file: !3500, line: 224, type: !4016, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4770 = !DILocalVariable(name: "list", arg: 1, scope: !4769, file: !3500, line: 224, type: !109)
!4771 = !DILocation(line: 224, column: 53, scope: !4769)
!4772 = !DILocalVariable(name: "head", arg: 2, scope: !4769, file: !3500, line: 225, type: !109)
!4773 = !DILocation(line: 225, column: 25, scope: !4769)
!4774 = !DILocation(line: 227, column: 19, scope: !4769)
!4775 = !DILocation(line: 227, column: 2, scope: !4769)
!4776 = !DILocation(line: 228, column: 16, scope: !4769)
!4777 = !DILocation(line: 228, column: 22, scope: !4769)
!4778 = !DILocation(line: 228, column: 2, scope: !4769)
!4779 = !DILocation(line: 229, column: 1, scope: !4769)
!4780 = distinct !DISubprogram(name: "__list_del_entry", scope: !3500, file: !3500, line: 130, type: !3501, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4781 = !DILocalVariable(name: "entry", arg: 1, scope: !4780, file: !3500, line: 130, type: !109)
!4782 = !DILocation(line: 130, column: 55, scope: !4780)
!4783 = !DILocation(line: 132, column: 30, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4780, file: !3500, line: 132, column: 6)
!4785 = !DILocation(line: 132, column: 7, scope: !4784)
!4786 = !DILocation(line: 132, column: 6, scope: !4780)
!4787 = !DILocation(line: 133, column: 3, scope: !4784)
!4788 = !DILocation(line: 135, column: 13, scope: !4780)
!4789 = !DILocation(line: 135, column: 20, scope: !4780)
!4790 = !DILocation(line: 135, column: 26, scope: !4780)
!4791 = !DILocation(line: 135, column: 33, scope: !4780)
!4792 = !DILocation(line: 135, column: 2, scope: !4780)
!4793 = !DILocation(line: 136, column: 1, scope: !4780)
!4794 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !3500, file: !3500, line: 51, type: !4795, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!1004, !109}
!4797 = !DILocalVariable(name: "entry", arg: 1, scope: !4794, file: !3500, line: 51, type: !109)
!4798 = !DILocation(line: 51, column: 61, scope: !4794)
!4799 = !DILocation(line: 53, column: 2, scope: !4794)
!4800 = distinct !DISubprogram(name: "__list_del", scope: !3500, file: !3500, line: 110, type: !4016, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4801 = !DILocalVariable(name: "prev", arg: 1, scope: !4800, file: !3500, line: 110, type: !109)
!4802 = !DILocation(line: 110, column: 50, scope: !4800)
!4803 = !DILocalVariable(name: "next", arg: 2, scope: !4800, file: !3500, line: 110, type: !109)
!4804 = !DILocation(line: 110, column: 75, scope: !4800)
!4805 = !DILocation(line: 112, column: 15, scope: !4800)
!4806 = !DILocation(line: 112, column: 2, scope: !4800)
!4807 = !DILocation(line: 112, column: 8, scope: !4800)
!4808 = !DILocation(line: 112, column: 13, scope: !4800)
!4809 = !DILocation(line: 113, column: 2, scope: !4800)
!4810 = !DILocation(line: 113, column: 2, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4800, file: !3500, line: 113, column: 2)
!4812 = !DILocation(line: 113, column: 2, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4811, file: !3500, line: 113, column: 2)
!4814 = !DILocation(line: 113, column: 2, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4811, file: !3500, line: 113, column: 2)
!4816 = !DILocation(line: 114, column: 1, scope: !4800)
!4817 = distinct !DISubprogram(name: "list_empty", scope: !3500, file: !3500, line: 280, type: !4818, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!145, !3847}
!4820 = !DILocalVariable(name: "head", arg: 1, scope: !4817, file: !3500, line: 280, type: !3847)
!4821 = !DILocation(line: 280, column: 54, scope: !4817)
!4822 = !DILocation(line: 282, column: 9, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4817, file: !3500, line: 282, column: 9)
!4824 = !DILocation(line: 282, column: 9, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4823, file: !3500, line: 282, column: 9)
!4826 = !DILocation(line: 282, column: 34, scope: !4817)
!4827 = !DILocation(line: 282, column: 31, scope: !4817)
!4828 = !DILocation(line: 282, column: 2, scope: !4817)
!4829 = distinct !DISubprogram(name: "__list_splice", scope: !3500, file: !3500, line: 433, type: !4830, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{null, !3847, !109, !109}
!4832 = !DILocalVariable(name: "list", arg: 1, scope: !4829, file: !3500, line: 433, type: !3847)
!4833 = !DILocation(line: 433, column: 58, scope: !4829)
!4834 = !DILocalVariable(name: "prev", arg: 2, scope: !4829, file: !3500, line: 434, type: !109)
!4835 = !DILocation(line: 434, column: 24, scope: !4829)
!4836 = !DILocalVariable(name: "next", arg: 3, scope: !4829, file: !3500, line: 435, type: !109)
!4837 = !DILocation(line: 435, column: 24, scope: !4829)
!4838 = !DILocalVariable(name: "first", scope: !4829, file: !3500, line: 437, type: !109)
!4839 = !DILocation(line: 437, column: 20, scope: !4829)
!4840 = !DILocation(line: 437, column: 28, scope: !4829)
!4841 = !DILocation(line: 437, column: 34, scope: !4829)
!4842 = !DILocalVariable(name: "last", scope: !4829, file: !3500, line: 438, type: !109)
!4843 = !DILocation(line: 438, column: 20, scope: !4829)
!4844 = !DILocation(line: 438, column: 27, scope: !4829)
!4845 = !DILocation(line: 438, column: 33, scope: !4829)
!4846 = !DILocation(line: 440, column: 16, scope: !4829)
!4847 = !DILocation(line: 440, column: 2, scope: !4829)
!4848 = !DILocation(line: 440, column: 9, scope: !4829)
!4849 = !DILocation(line: 440, column: 14, scope: !4829)
!4850 = !DILocation(line: 441, column: 15, scope: !4829)
!4851 = !DILocation(line: 441, column: 2, scope: !4829)
!4852 = !DILocation(line: 441, column: 8, scope: !4829)
!4853 = !DILocation(line: 441, column: 13, scope: !4829)
!4854 = !DILocation(line: 443, column: 15, scope: !4829)
!4855 = !DILocation(line: 443, column: 2, scope: !4829)
!4856 = !DILocation(line: 443, column: 8, scope: !4829)
!4857 = !DILocation(line: 443, column: 13, scope: !4829)
!4858 = !DILocation(line: 444, column: 15, scope: !4829)
!4859 = !DILocation(line: 444, column: 2, scope: !4829)
!4860 = !DILocation(line: 444, column: 8, scope: !4829)
!4861 = !DILocation(line: 444, column: 13, scope: !4829)
!4862 = !DILocation(line: 445, column: 1, scope: !4829)
!4863 = distinct !DISubprogram(name: "__list_add", scope: !3500, file: !3500, line: 63, type: !4864, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{null, !109, !109, !109}
!4866 = !DILocalVariable(name: "new", arg: 1, scope: !4863, file: !3500, line: 63, type: !109)
!4867 = !DILocation(line: 63, column: 49, scope: !4863)
!4868 = !DILocalVariable(name: "prev", arg: 2, scope: !4863, file: !3500, line: 64, type: !109)
!4869 = !DILocation(line: 64, column: 28, scope: !4863)
!4870 = !DILocalVariable(name: "next", arg: 3, scope: !4863, file: !3500, line: 65, type: !109)
!4871 = !DILocation(line: 65, column: 28, scope: !4863)
!4872 = !DILocation(line: 67, column: 24, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4863, file: !3500, line: 67, column: 6)
!4874 = !DILocation(line: 67, column: 29, scope: !4873)
!4875 = !DILocation(line: 67, column: 35, scope: !4873)
!4876 = !DILocation(line: 67, column: 7, scope: !4873)
!4877 = !DILocation(line: 67, column: 6, scope: !4863)
!4878 = !DILocation(line: 68, column: 3, scope: !4873)
!4879 = !DILocation(line: 70, column: 15, scope: !4863)
!4880 = !DILocation(line: 70, column: 2, scope: !4863)
!4881 = !DILocation(line: 70, column: 8, scope: !4863)
!4882 = !DILocation(line: 70, column: 13, scope: !4863)
!4883 = !DILocation(line: 71, column: 14, scope: !4863)
!4884 = !DILocation(line: 71, column: 2, scope: !4863)
!4885 = !DILocation(line: 71, column: 7, scope: !4863)
!4886 = !DILocation(line: 71, column: 12, scope: !4863)
!4887 = !DILocation(line: 72, column: 14, scope: !4863)
!4888 = !DILocation(line: 72, column: 2, scope: !4863)
!4889 = !DILocation(line: 72, column: 7, scope: !4863)
!4890 = !DILocation(line: 72, column: 12, scope: !4863)
!4891 = !DILocation(line: 73, column: 2, scope: !4863)
!4892 = !DILocation(line: 73, column: 2, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4863, file: !3500, line: 73, column: 2)
!4894 = !DILocation(line: 73, column: 2, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4893, file: !3500, line: 73, column: 2)
!4896 = !DILocation(line: 73, column: 2, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4893, file: !3500, line: 73, column: 2)
!4898 = !DILocation(line: 74, column: 1, scope: !4863)
!4899 = distinct !DISubprogram(name: "__list_add_valid", scope: !3500, file: !3500, line: 45, type: !4900, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!1004, !109, !109, !109}
!4902 = !DILocalVariable(name: "new", arg: 1, scope: !4899, file: !3500, line: 45, type: !109)
!4903 = !DILocation(line: 45, column: 55, scope: !4899)
!4904 = !DILocalVariable(name: "prev", arg: 2, scope: !4899, file: !3500, line: 46, type: !109)
!4905 = !DILocation(line: 46, column: 23, scope: !4899)
!4906 = !DILocalVariable(name: "next", arg: 3, scope: !4899, file: !3500, line: 47, type: !109)
!4907 = !DILocation(line: 47, column: 23, scope: !4899)
!4908 = !DILocation(line: 49, column: 2, scope: !4899)
!4909 = distinct !DISubprogram(name: "system_root_device_release", scope: !3, file: !3, line: 1092, type: !1647, scopeLine: 1093, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4910 = !DILocalVariable(name: "dev", arg: 1, scope: !4909, file: !3, line: 1092, type: !96)
!4911 = !DILocation(line: 1092, column: 55, scope: !4909)
!4912 = !DILocation(line: 1094, column: 8, scope: !4909)
!4913 = !DILocation(line: 1094, column: 2, scope: !4909)
!4914 = !DILocation(line: 1095, column: 1, scope: !4909)
!4915 = distinct !DISubprogram(name: "bus_uevent_filter", scope: !3, file: !3, line: 166, type: !143, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4916 = !DILocalVariable(name: "kset", arg: 1, scope: !4915, file: !3, line: 166, type: !114)
!4917 = !DILocation(line: 166, column: 43, scope: !4915)
!4918 = !DILocalVariable(name: "kobj", arg: 2, scope: !4915, file: !3, line: 166, type: !112)
!4919 = !DILocation(line: 166, column: 65, scope: !4915)
!4920 = !DILocalVariable(name: "ktype", scope: !4915, file: !3, line: 168, type: !175)
!4921 = !DILocation(line: 168, column: 20, scope: !4915)
!4922 = !DILocation(line: 168, column: 38, scope: !4915)
!4923 = !DILocation(line: 168, column: 28, scope: !4915)
!4924 = !DILocation(line: 170, column: 6, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 170, column: 6)
!4926 = !DILocation(line: 170, column: 12, scope: !4925)
!4927 = !DILocation(line: 170, column: 6, scope: !4915)
!4928 = !DILocation(line: 171, column: 3, scope: !4925)
!4929 = !DILocation(line: 172, column: 2, scope: !4915)
!4930 = !DILocation(line: 173, column: 1, scope: !4915)
!4931 = distinct !DISubprogram(name: "get_ktype", scope: !101, file: !101, line: 221, type: !4932, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!175, !112}
!4934 = !DILocalVariable(name: "kobj", arg: 1, scope: !4931, file: !101, line: 221, type: !112)
!4935 = !DILocation(line: 221, column: 59, scope: !4931)
!4936 = !DILocation(line: 223, column: 9, scope: !4931)
!4937 = !DILocation(line: 223, column: 15, scope: !4931)
!4938 = !DILocation(line: 223, column: 2, scope: !4931)
