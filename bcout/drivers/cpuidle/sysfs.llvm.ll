; ModuleID = '../bcout/drivers/cpuidle/sysfs.llvm.bc'
source_filename = "drivers/cpuidle/sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
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
%struct.vm_userfaultfd_ctx = type {}
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { {}*, void (%struct.device*)*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, {}*, void (%struct.device*)*, {}*, void (%struct.device*)*, {}*, {}*, i32 (%struct.device*, i32)*, {}*, {}*, {}*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, {}*, void (%struct.device*)*, {}*, void (%struct.device*)*, i32 (%struct.device*, i32)*, {}*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.wake_irq = type opaque
%struct.pm_subsys_data = type { %struct.spinlock, i32, %struct.list_head, %struct.pm_domain_data* }
%struct.pm_domain_data = type opaque
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, {}*, void (%struct.device*, i1)*, {}*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, {}*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.cpuidle_governor = type { [16 x i8], %struct.list_head, i32, i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*)*, void (%struct.cpuidle_driver*, %struct.cpuidle_device*)*, i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*, i8*)*, void (%struct.cpuidle_device*, i32)* }
%struct.cpuidle_driver = type { i8*, %struct.module*, i8, [10 x %struct.cpuidle_state], i32, i32, %struct.cpumask*, i8* }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)*, i32 (%struct.cpuidle_device*, i32)*, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_kobj*], %struct.cpuidle_driver_kobj*, %struct.cpuidle_device_kobj*, %struct.list_head }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpuidle_state_kobj = type { %struct.cpuidle_state*, %struct.cpuidle_state_usage*, %struct.completion, %struct.kobject, %struct.cpuidle_device* }
%struct.cpuidle_driver_kobj = type opaque
%struct.cpuidle_device_kobj = type { %struct.cpuidle_device*, %struct.completion, %struct.kobject }
%struct.cpuidle_state_attr = type { %struct.attribute, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*)*, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*, i64)* }
%struct.kmem_cache = type opaque
%struct.cpuidle_attr = type { %struct.attribute, i64 (%struct.cpuidle_device*, i8*)*, i64 (%struct.cpuidle_device*, i8*, i64)* }

@cpuidle_attr_group = internal global %struct.attribute_group { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([5 x %struct.attribute*], [5 x %struct.attribute*]* @cpuidle_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !0
@ktype_cpuidle = internal global %struct.kobj_type { void (%struct.kobject*)* @cpuidle_sysfs_release, %struct.sysfs_ops* @cpuidle_sysfs_ops, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8, !dbg !2104
@.str = private unnamed_addr constant [8 x i8] c"cpuidle\00", align 1
@cpuidle_attrs = internal global [5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_available_governors, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_current_driver, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_current_governor, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_current_governor_ro, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !1683
@dev_attr_available_governors = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_available_governors, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !1688
@dev_attr_current_driver = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_current_driver, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2051
@dev_attr_current_governor = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_current_governor, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_current_governor }, align 8, !dbg !2053
@dev_attr_current_governor_ro = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_current_governor, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2055
@.str.1 = private unnamed_addr constant [20 x i8] c"available_governors\00", align 1
@cpuidle_lock = external dso_local global %struct.mutex, align 8
@cpuidle_governors = external dso_local global %struct.list_head, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"current_driver\00", align 1
@cpuidle_driver_lock = external dso_local global %struct.spinlock, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"current_governor\00", align 1
@cpuidle_curr_governor = external dso_local global %struct.cpuidle_governor*, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"%16s\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"current_governor_ro\00", align 1
@ktype_state_cpuidle = internal global %struct.kobj_type { void (%struct.kobject*)* @cpuidle_state_sysfs_release, %struct.sysfs_ops* @cpuidle_state_sysfs_ops, %struct.attribute** getelementptr inbounds ([13 x %struct.attribute*], [13 x %struct.attribute*]* @cpuidle_state_default_attrs, i32 0, i32 0), %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8, !dbg !2057
@.str.10 = private unnamed_addr constant [8 x i8] c"state%d\00", align 1
@cpuidle_state_sysfs_ops = internal constant %struct.sysfs_ops { i64 (%struct.kobject*, %struct.attribute*, i8*)* @cpuidle_state_show, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* @cpuidle_state_store }, align 8, !dbg !2059
@cpuidle_state_default_attrs = internal global [13 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.cpuidle_state_attr, %struct.cpuidle_state_attr* @attr_name, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.cpuidle_state_attr, %struct.cpuidle_state_attr* @attr_desc, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.cpuidle_state_attr, %struct.cpuidle_state_attr* @attr_latency, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.cpuidle_state_attr, %struct.cpuidle_state_attr* @attr_residency, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.cpuidle_state_attr, %struct.cpuidle_state_attr* @attr_power, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.cpuidle_state_attr, %struct.cpuidle_state_attr* @attr_usage, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.cpuidle_state_attr, %struct.cpuidle_state_attr* @attr_rejected, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.cpuidle_state_attr, %struct.cpuidle_state_attr* @attr_time, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.cpuidle_state_attr, %struct.cpuidle_state_attr* @attr_disable, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.cpuidle_state_attr, %struct.cpuidle_state_attr* @attr_above, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.cpuidle_state_attr, %struct.cpuidle_state_attr* @attr_below, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.cpuidle_state_attr, %struct.cpuidle_state_attr* @attr_default_status, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2061
@attr_name = internal global %struct.cpuidle_state_attr { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i16 292 }, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*)* @show_state_name, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*, i64)* null }, align 8, !dbg !2066
@attr_desc = internal global %struct.cpuidle_state_attr { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i16 292 }, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*)* @show_state_desc, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*, i64)* null }, align 8, !dbg !2068
@attr_latency = internal global %struct.cpuidle_state_attr { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i16 292 }, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*)* @show_state_exit_latency, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*, i64)* null }, align 8, !dbg !2070
@attr_residency = internal global %struct.cpuidle_state_attr { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i16 292 }, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*)* @show_state_target_residency, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*, i64)* null }, align 8, !dbg !2072
@attr_power = internal global %struct.cpuidle_state_attr { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i16 292 }, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*)* @show_state_power_usage, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*, i64)* null }, align 8, !dbg !2074
@attr_usage = internal global %struct.cpuidle_state_attr { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i16 292 }, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*)* @show_state_usage, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*, i64)* null }, align 8, !dbg !2076
@attr_rejected = internal global %struct.cpuidle_state_attr { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i16 292 }, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*)* @show_state_rejected, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*, i64)* null }, align 8, !dbg !2078
@attr_time = internal global %struct.cpuidle_state_attr { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i16 292 }, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*)* @show_state_time, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*, i64)* null }, align 8, !dbg !2080
@attr_disable = internal global %struct.cpuidle_state_attr { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i16 420 }, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*)* @show_state_disable, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*, i64)* @store_state_disable }, align 8, !dbg !2082
@attr_above = internal global %struct.cpuidle_state_attr { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i16 292 }, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*)* @show_state_above, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*, i64)* null }, align 8, !dbg !2084
@attr_below = internal global %struct.cpuidle_state_attr { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i16 292 }, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*)* @show_state_below, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*, i64)* null }, align 8, !dbg !2086
@attr_default_status = internal global %struct.cpuidle_state_attr { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i16 292 }, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*)* @show_state_default_status, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*, i64)* null }, align 8, !dbg !2088
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"<null>\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"latency\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"include/linux/ktime.h\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"residency\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"rejected\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"above\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"below\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"default_status\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@cpuidle_state_s2idle_group = internal constant %struct.attribute_group { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([3 x %struct.attribute*], [3 x %struct.attribute*]* @cpuidle_state_s2idle_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2090
@.str.29 = private unnamed_addr constant [7 x i8] c"s2idle\00", align 1
@cpuidle_state_s2idle_attrs = internal global [3 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.cpuidle_state_attr, %struct.cpuidle_state_attr* @attr_s2idle_usage, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.cpuidle_state_attr, %struct.cpuidle_state_attr* @attr_s2idle_time, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2092
@attr_s2idle_usage = internal global %struct.cpuidle_state_attr { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i16 292 }, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*)* @show_state_s2idle_usage, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*, i64)* null }, align 8, !dbg !2095
@attr_s2idle_time = internal global %struct.cpuidle_state_attr { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i16 292 }, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*)* @show_state_s2idle_time, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*, i64)* null }, align 8, !dbg !2097
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.30 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@__init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2099
@.str.31 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@cpuidle_sysfs_ops = internal constant %struct.sysfs_ops { i64 (%struct.kobject*, %struct.attribute*, i8*)* @cpuidle_show, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* @cpuidle_store }, align 8, !dbg !2106

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cpuidle_add_interface(%struct.device* %dev) #0 !dbg !2113 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2114, metadata !DIExpression()), !dbg !2115
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2116
  %kobj = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 0, !dbg !2117
  %call = call i32 @sysfs_create_group(%struct.kobject* %kobj, %struct.attribute_group* @cpuidle_attr_group) #6, !dbg !2118
  ret i32 %call, !dbg !2119
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_group(%struct.kobject*, %struct.attribute_group*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @cpuidle_remove_interface(%struct.device* %dev) #0 !dbg !2120 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2121, metadata !DIExpression()), !dbg !2122
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2123
  %kobj = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 0, !dbg !2124
  call void @sysfs_remove_group(%struct.kobject* %kobj, %struct.attribute_group* @cpuidle_attr_group) #6, !dbg !2125
  ret void, !dbg !2126
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_group(%struct.kobject*, %struct.attribute_group*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cpuidle_add_device_sysfs(%struct.cpuidle_device* %device) #0 !dbg !2127 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.cpuidle_device*, align 8
  %ret = alloca i32, align 4
  store %struct.cpuidle_device* %device, %struct.cpuidle_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %device.addr, metadata !2130, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2132, metadata !DIExpression()), !dbg !2133
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device.addr, align 8, !dbg !2134
  %call = call i32 @cpuidle_add_state_sysfs(%struct.cpuidle_device* %0) #6, !dbg !2135
  store i32 %call, i32* %ret, align 4, !dbg !2136
  %1 = load i32, i32* %ret, align 4, !dbg !2137
  %tobool = icmp ne i32 %1, 0, !dbg !2137
  br i1 %tobool, label %if.then, label %if.end, !dbg !2139

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !2140
  store i32 %2, i32* %retval, align 4, !dbg !2141
  br label %return, !dbg !2141

if.end:                                           ; preds = %entry
  %3 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device.addr, align 8, !dbg !2142
  %call1 = call i32 @cpuidle_add_driver_sysfs(%struct.cpuidle_device* %3) #6, !dbg !2143
  store i32 %call1, i32* %ret, align 4, !dbg !2144
  %4 = load i32, i32* %ret, align 4, !dbg !2145
  %tobool2 = icmp ne i32 %4, 0, !dbg !2145
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2147

if.then3:                                         ; preds = %if.end
  %5 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device.addr, align 8, !dbg !2148
  call void @cpuidle_remove_state_sysfs(%struct.cpuidle_device* %5) #6, !dbg !2149
  br label %if.end4, !dbg !2149

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, i32* %ret, align 4, !dbg !2150
  store i32 %6, i32* %retval, align 4, !dbg !2151
  br label %return, !dbg !2151

return:                                           ; preds = %if.end4, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !2152
  ret i32 %7, !dbg !2152
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpuidle_add_state_sysfs(%struct.cpuidle_device* %device) #0 !dbg !2153 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.cpuidle_device*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %kobj = alloca %struct.cpuidle_state_kobj*, align 8
  %kdev = alloca %struct.cpuidle_device_kobj*, align 8
  %drv = alloca %struct.cpuidle_driver*, align 8
  store %struct.cpuidle_device* %device, %struct.cpuidle_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %device.addr, metadata !2154, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2156, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2158, metadata !DIExpression()), !dbg !2159
  store i32 -12, i32* %ret, align 4, !dbg !2159
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_kobj** %kobj, metadata !2160, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device_kobj** %kdev, metadata !2162, metadata !DIExpression()), !dbg !2163
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device.addr, align 8, !dbg !2164
  %kobj_dev = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %0, i32 0, i32 10, !dbg !2165
  %1 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %kobj_dev, align 8, !dbg !2165
  store %struct.cpuidle_device_kobj* %1, %struct.cpuidle_device_kobj** %kdev, align 8, !dbg !2163
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv, metadata !2166, metadata !DIExpression()), !dbg !2167
  %2 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device.addr, align 8, !dbg !2168
  %call = call %struct.cpuidle_driver* @cpuidle_get_cpu_driver(%struct.cpuidle_device* %2) #6, !dbg !2169
  store %struct.cpuidle_driver* %call, %struct.cpuidle_driver** %drv, align 8, !dbg !2167
  store i32 0, i32* %i, align 4, !dbg !2170
  br label %for.cond, !dbg !2172

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !2173
  %4 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !2175
  %state_count = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %4, i32 0, i32 4, !dbg !2176
  %5 = load i32, i32* %state_count, align 8, !dbg !2176
  %cmp = icmp slt i32 %3, %5, !dbg !2177
  br i1 %cmp, label %for.body, label %for.end, !dbg !2178

for.body:                                         ; preds = %for.cond
  %call1 = call i8* @kzalloc(i64 112, i32 3264) #6, !dbg !2179
  %6 = bitcast i8* %call1 to %struct.cpuidle_state_kobj*, !dbg !2179
  store %struct.cpuidle_state_kobj* %6, %struct.cpuidle_state_kobj** %kobj, align 8, !dbg !2181
  %7 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %kobj, align 8, !dbg !2182
  %tobool = icmp ne %struct.cpuidle_state_kobj* %7, null, !dbg !2182
  br i1 %tobool, label %if.end, label %if.then, !dbg !2184

if.then:                                          ; preds = %for.body
  store i32 -12, i32* %ret, align 4, !dbg !2185
  br label %error_state, !dbg !2187

if.end:                                           ; preds = %for.body
  %8 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !2188
  %states = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %8, i32 0, i32 3, !dbg !2189
  %9 = load i32, i32* %i, align 4, !dbg !2190
  %idxprom = sext i32 %9 to i64, !dbg !2188
  %arrayidx = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states, i64 0, i64 %idxprom, !dbg !2188
  %10 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %kobj, align 8, !dbg !2191
  %state = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %10, i32 0, i32 0, !dbg !2192
  store %struct.cpuidle_state* %arrayidx, %struct.cpuidle_state** %state, align 8, !dbg !2193
  %11 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device.addr, align 8, !dbg !2194
  %states_usage = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %11, i32 0, i32 7, !dbg !2195
  %12 = load i32, i32* %i, align 4, !dbg !2196
  %idxprom2 = sext i32 %12 to i64, !dbg !2194
  %arrayidx3 = getelementptr [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_usage]* %states_usage, i64 0, i64 %idxprom2, !dbg !2194
  %13 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %kobj, align 8, !dbg !2197
  %state_usage = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %13, i32 0, i32 1, !dbg !2198
  store %struct.cpuidle_state_usage* %arrayidx3, %struct.cpuidle_state_usage** %state_usage, align 8, !dbg !2199
  %14 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device.addr, align 8, !dbg !2200
  %15 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %kobj, align 8, !dbg !2201
  %device4 = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %15, i32 0, i32 4, !dbg !2202
  store %struct.cpuidle_device* %14, %struct.cpuidle_device** %device4, align 8, !dbg !2203
  %16 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %kobj, align 8, !dbg !2204
  %kobj_unregister = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %16, i32 0, i32 2, !dbg !2204
  call void @__init_completion(%struct.completion* %kobj_unregister) #6, !dbg !2204
  %17 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %kobj, align 8, !dbg !2205
  %kobj5 = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %17, i32 0, i32 3, !dbg !2206
  %18 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %kdev, align 8, !dbg !2207
  %kobj6 = getelementptr inbounds %struct.cpuidle_device_kobj, %struct.cpuidle_device_kobj* %18, i32 0, i32 2, !dbg !2208
  %19 = load i32, i32* %i, align 4, !dbg !2209
  %call7 = call i32 (%struct.kobject*, %struct.kobj_type*, %struct.kobject*, i8*, ...) @kobject_init_and_add(%struct.kobject* %kobj5, %struct.kobj_type* @ktype_state_cpuidle, %struct.kobject* %kobj6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %19) #6, !dbg !2210
  store i32 %call7, i32* %ret, align 4, !dbg !2211
  %20 = load i32, i32* %ret, align 4, !dbg !2212
  %tobool8 = icmp ne i32 %20, 0, !dbg !2212
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !2214

if.then9:                                         ; preds = %if.end
  %21 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %kobj, align 8, !dbg !2215
  %kobj10 = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %21, i32 0, i32 3, !dbg !2217
  call void @kobject_put(%struct.kobject* %kobj10) #6, !dbg !2218
  br label %error_state, !dbg !2219

if.end11:                                         ; preds = %if.end
  %22 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %kobj, align 8, !dbg !2220
  call void @cpuidle_add_s2idle_attr_group(%struct.cpuidle_state_kobj* %22) #6, !dbg !2221
  %23 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %kobj, align 8, !dbg !2222
  %kobj12 = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %23, i32 0, i32 3, !dbg !2223
  %call13 = call i32 @kobject_uevent(%struct.kobject* %kobj12, i32 0) #6, !dbg !2224
  %24 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %kobj, align 8, !dbg !2225
  %25 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device.addr, align 8, !dbg !2226
  %kobjs = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %25, i32 0, i32 8, !dbg !2227
  %26 = load i32, i32* %i, align 4, !dbg !2228
  %idxprom14 = sext i32 %26 to i64, !dbg !2226
  %arrayidx15 = getelementptr [10 x %struct.cpuidle_state_kobj*], [10 x %struct.cpuidle_state_kobj*]* %kobjs, i64 0, i64 %idxprom14, !dbg !2226
  store %struct.cpuidle_state_kobj* %24, %struct.cpuidle_state_kobj** %arrayidx15, align 8, !dbg !2229
  br label %for.inc, !dbg !2230

for.inc:                                          ; preds = %if.end11
  %27 = load i32, i32* %i, align 4, !dbg !2231
  %inc = add i32 %27, 1, !dbg !2231
  store i32 %inc, i32* %i, align 4, !dbg !2231
  br label %for.cond, !dbg !2232, !llvm.loop !2233

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !2235
  br label %return, !dbg !2235

error_state:                                      ; preds = %if.then9, %if.then
  call void @llvm.dbg.label(metadata !2236), !dbg !2237
  %28 = load i32, i32* %i, align 4, !dbg !2238
  %sub = sub i32 %28, 1, !dbg !2240
  store i32 %sub, i32* %i, align 4, !dbg !2241
  br label %for.cond16, !dbg !2242

for.cond16:                                       ; preds = %for.inc19, %error_state
  %29 = load i32, i32* %i, align 4, !dbg !2243
  %cmp17 = icmp sge i32 %29, 0, !dbg !2245
  br i1 %cmp17, label %for.body18, label %for.end20, !dbg !2246

for.body18:                                       ; preds = %for.cond16
  %30 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device.addr, align 8, !dbg !2247
  %31 = load i32, i32* %i, align 4, !dbg !2248
  call void @cpuidle_free_state_kobj(%struct.cpuidle_device* %30, i32 %31) #6, !dbg !2249
  br label %for.inc19, !dbg !2249

for.inc19:                                        ; preds = %for.body18
  %32 = load i32, i32* %i, align 4, !dbg !2250
  %dec = add i32 %32, -1, !dbg !2250
  store i32 %dec, i32* %i, align 4, !dbg !2250
  br label %for.cond16, !dbg !2251, !llvm.loop !2252

for.end20:                                        ; preds = %for.cond16
  %33 = load i32, i32* %ret, align 4, !dbg !2254
  store i32 %33, i32* %retval, align 4, !dbg !2255
  br label %return, !dbg !2255

return:                                           ; preds = %for.end20, %for.end
  %34 = load i32, i32* %retval, align 4, !dbg !2256
  ret i32 %34, !dbg !2256
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpuidle_add_driver_sysfs(%struct.cpuidle_device* %dev) #0 !dbg !2257 {
entry:
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !2258, metadata !DIExpression()), !dbg !2259
  ret i32 0, !dbg !2260
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpuidle_remove_state_sysfs(%struct.cpuidle_device* %device) #0 !dbg !2261 {
entry:
  %device.addr = alloca %struct.cpuidle_device*, align 8
  %drv = alloca %struct.cpuidle_driver*, align 8
  %i = alloca i32, align 4
  store %struct.cpuidle_device* %device, %struct.cpuidle_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %device.addr, metadata !2264, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv, metadata !2266, metadata !DIExpression()), !dbg !2267
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device.addr, align 8, !dbg !2268
  %call = call %struct.cpuidle_driver* @cpuidle_get_cpu_driver(%struct.cpuidle_device* %0) #6, !dbg !2269
  store %struct.cpuidle_driver* %call, %struct.cpuidle_driver** %drv, align 8, !dbg !2267
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2270, metadata !DIExpression()), !dbg !2271
  store i32 0, i32* %i, align 4, !dbg !2272
  br label %for.cond, !dbg !2274

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !2275
  %2 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !2277
  %state_count = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %2, i32 0, i32 4, !dbg !2278
  %3 = load i32, i32* %state_count, align 8, !dbg !2278
  %cmp = icmp slt i32 %1, %3, !dbg !2279
  br i1 %cmp, label %for.body, label %for.end, !dbg !2280

for.body:                                         ; preds = %for.cond
  %4 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device.addr, align 8, !dbg !2281
  %5 = load i32, i32* %i, align 4, !dbg !2282
  call void @cpuidle_free_state_kobj(%struct.cpuidle_device* %4, i32 %5) #6, !dbg !2283
  br label %for.inc, !dbg !2283

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !2284
  %inc = add i32 %6, 1, !dbg !2284
  store i32 %inc, i32* %i, align 4, !dbg !2284
  br label %for.cond, !dbg !2285, !llvm.loop !2286

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2288
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @cpuidle_remove_device_sysfs(%struct.cpuidle_device* %device) #0 !dbg !2289 {
entry:
  %device.addr = alloca %struct.cpuidle_device*, align 8
  store %struct.cpuidle_device* %device, %struct.cpuidle_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %device.addr, metadata !2290, metadata !DIExpression()), !dbg !2291
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device.addr, align 8, !dbg !2292
  call void @cpuidle_remove_driver_sysfs(%struct.cpuidle_device* %0) #6, !dbg !2293
  %1 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device.addr, align 8, !dbg !2294
  call void @cpuidle_remove_state_sysfs(%struct.cpuidle_device* %1) #6, !dbg !2295
  ret void, !dbg !2296
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpuidle_remove_driver_sysfs(%struct.cpuidle_device* %dev) #0 !dbg !2297 {
entry:
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !2298, metadata !DIExpression()), !dbg !2299
  ret void, !dbg !2300
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cpuidle_add_sysfs(%struct.cpuidle_device* %dev) #0 !dbg !2301 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %kdev = alloca %struct.cpuidle_device_kobj*, align 8
  %cpu_dev = alloca %struct.device*, align 8
  %error = alloca i32, align 4
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !2302, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device_kobj** %kdev, metadata !2304, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.declare(metadata %struct.device** %cpu_dev, metadata !2306, metadata !DIExpression()), !dbg !2307
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !2308
  %cpu = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %0, i32 0, i32 1, !dbg !2309
  %1 = load i32, i32* %cpu, align 4, !dbg !2309
  %conv = zext i32 %1 to i64, !dbg !2310
  %conv1 = trunc i64 %conv to i32, !dbg !2310
  %call = call %struct.device* @get_cpu_device(i32 %conv1) #6, !dbg !2311
  store %struct.device* %call, %struct.device** %cpu_dev, align 8, !dbg !2307
  call void @llvm.dbg.declare(metadata i32* %error, metadata !2312, metadata !DIExpression()), !dbg !2313
  %2 = load %struct.device*, %struct.device** %cpu_dev, align 8, !dbg !2314
  %tobool = icmp ne %struct.device* %2, null, !dbg !2314
  br i1 %tobool, label %if.end, label %if.then, !dbg !2316

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !2317
  br label %return, !dbg !2317

if.end:                                           ; preds = %entry
  %call2 = call i8* @kzalloc(i64 96, i32 3264) #6, !dbg !2318
  %3 = bitcast i8* %call2 to %struct.cpuidle_device_kobj*, !dbg !2318
  store %struct.cpuidle_device_kobj* %3, %struct.cpuidle_device_kobj** %kdev, align 8, !dbg !2319
  %4 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %kdev, align 8, !dbg !2320
  %tobool3 = icmp ne %struct.cpuidle_device_kobj* %4, null, !dbg !2320
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2322

if.then4:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2323
  br label %return, !dbg !2323

if.end5:                                          ; preds = %if.end
  %5 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !2324
  %6 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %kdev, align 8, !dbg !2325
  %dev6 = getelementptr inbounds %struct.cpuidle_device_kobj, %struct.cpuidle_device_kobj* %6, i32 0, i32 0, !dbg !2326
  store %struct.cpuidle_device* %5, %struct.cpuidle_device** %dev6, align 8, !dbg !2327
  %7 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %kdev, align 8, !dbg !2328
  %8 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !2329
  %kobj_dev = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %8, i32 0, i32 10, !dbg !2330
  store %struct.cpuidle_device_kobj* %7, %struct.cpuidle_device_kobj** %kobj_dev, align 8, !dbg !2331
  %9 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %kdev, align 8, !dbg !2332
  %kobj_unregister = getelementptr inbounds %struct.cpuidle_device_kobj, %struct.cpuidle_device_kobj* %9, i32 0, i32 1, !dbg !2332
  call void @__init_completion(%struct.completion* %kobj_unregister) #6, !dbg !2332
  %10 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %kdev, align 8, !dbg !2333
  %kobj = getelementptr inbounds %struct.cpuidle_device_kobj, %struct.cpuidle_device_kobj* %10, i32 0, i32 2, !dbg !2334
  %11 = load %struct.device*, %struct.device** %cpu_dev, align 8, !dbg !2335
  %kobj7 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0, !dbg !2336
  %call8 = call i32 (%struct.kobject*, %struct.kobj_type*, %struct.kobject*, i8*, ...) @kobject_init_and_add(%struct.kobject* %kobj, %struct.kobj_type* @ktype_cpuidle, %struct.kobject* %kobj7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !2337
  store i32 %call8, i32* %error, align 4, !dbg !2338
  %12 = load i32, i32* %error, align 4, !dbg !2339
  %tobool9 = icmp ne i32 %12, 0, !dbg !2339
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !2341

if.then10:                                        ; preds = %if.end5
  %13 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %kdev, align 8, !dbg !2342
  %kobj11 = getelementptr inbounds %struct.cpuidle_device_kobj, %struct.cpuidle_device_kobj* %13, i32 0, i32 2, !dbg !2344
  call void @kobject_put(%struct.kobject* %kobj11) #6, !dbg !2345
  %14 = load i32, i32* %error, align 4, !dbg !2346
  store i32 %14, i32* %retval, align 4, !dbg !2347
  br label %return, !dbg !2347

if.end12:                                         ; preds = %if.end5
  %15 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %kdev, align 8, !dbg !2348
  %kobj13 = getelementptr inbounds %struct.cpuidle_device_kobj, %struct.cpuidle_device_kobj* %15, i32 0, i32 2, !dbg !2349
  %call14 = call i32 @kobject_uevent(%struct.kobject* %kobj13, i32 0) #6, !dbg !2350
  store i32 0, i32* %retval, align 4, !dbg !2351
  br label %return, !dbg !2351

return:                                           ; preds = %if.end12, %if.then10, %if.then4, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !2352
  ret i32 %16, !dbg !2352
}

; Function Attrs: noredzone
declare dso_local %struct.device* @get_cpu_device(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2353 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2356, metadata !DIExpression()), !dbg !2360
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2366, metadata !DIExpression()), !dbg !2367
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2368, metadata !DIExpression()), !dbg !2369
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2370, metadata !DIExpression()), !dbg !2371
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2372, metadata !DIExpression()), !dbg !2376
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2378, metadata !DIExpression()), !dbg !2382
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2384, metadata !DIExpression()), !dbg !2388
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2393, metadata !DIExpression()), !dbg !2394
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2395, metadata !DIExpression()), !dbg !2396
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2397, metadata !DIExpression()), !dbg !2398
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2399, metadata !DIExpression()), !dbg !2400
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2401, metadata !DIExpression()), !dbg !2402
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2403, metadata !DIExpression()), !dbg !2404
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2405, metadata !DIExpression()), !dbg !2406
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2407, metadata !DIExpression()), !dbg !2408
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2409, metadata !DIExpression()), !dbg !2410
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2411, metadata !DIExpression()), !dbg !2412
  %0 = load i64, i64* %size.addr, align 8, !dbg !2413
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2414
  %or = or i32 %1, 256, !dbg !2415
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2416
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !2417
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2418

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2419
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2420
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2421

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2422
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2423
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2424
  %call.i.i = call i32 @get_order(i64 %7) #8, !dbg !2425
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2402
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2426
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2427
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2428
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2429
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2430
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2431
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #9, !dbg !2432
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2432
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2432
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2432
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !2432
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2433
  br label %kmalloc.exit, !dbg !2433

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2434
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2435
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2435
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2437

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2438
  br label %kmalloc_index.exit.i, !dbg !2438

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2439
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2441
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2442

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2443
  br label %kmalloc_index.exit.i, !dbg !2443

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2444
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2446
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2447

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2448
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2449
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2450

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2451
  br label %kmalloc_index.exit.i, !dbg !2451

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2452
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2454
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2455

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2456
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2457
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2458

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2459
  br label %kmalloc_index.exit.i, !dbg !2459

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2460
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2462
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2463

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2464
  br label %kmalloc_index.exit.i, !dbg !2464

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2465
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2467
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2468

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2469
  br label %kmalloc_index.exit.i, !dbg !2469

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2470
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2472
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2473

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2474
  br label %kmalloc_index.exit.i, !dbg !2474

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2475
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2477
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2478

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2479
  br label %kmalloc_index.exit.i, !dbg !2479

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2480
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2482
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2483

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2484
  br label %kmalloc_index.exit.i, !dbg !2484

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2485
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2487
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2488

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2489
  br label %kmalloc_index.exit.i, !dbg !2489

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2490
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2492
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2493

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2494
  br label %kmalloc_index.exit.i, !dbg !2494

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2495
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2497
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2498

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2499
  br label %kmalloc_index.exit.i, !dbg !2499

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2500
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2502
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2503

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2504
  br label %kmalloc_index.exit.i, !dbg !2504

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2505
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2507
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2508

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2509
  br label %kmalloc_index.exit.i, !dbg !2509

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2510
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2512
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2513

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2514
  br label %kmalloc_index.exit.i, !dbg !2514

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2515
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2517
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2518

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2519
  br label %kmalloc_index.exit.i, !dbg !2519

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2520
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2522
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2523

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2524
  br label %kmalloc_index.exit.i, !dbg !2524

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2525
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2527
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2528

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2529
  br label %kmalloc_index.exit.i, !dbg !2529

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2530
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2532
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2533

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2534
  br label %kmalloc_index.exit.i, !dbg !2534

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2535
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2537
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2538

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2539
  br label %kmalloc_index.exit.i, !dbg !2539

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2540
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2542
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2543

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2544
  br label %kmalloc_index.exit.i, !dbg !2544

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2545
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2547
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2548

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2549
  br label %kmalloc_index.exit.i, !dbg !2549

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2550
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2552
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2553

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2554
  br label %kmalloc_index.exit.i, !dbg !2554

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2555
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2557
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2558

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2559
  br label %kmalloc_index.exit.i, !dbg !2559

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2560
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2562
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2563

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2564
  br label %kmalloc_index.exit.i, !dbg !2564

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2565
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2567
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2568

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2569
  br label %kmalloc_index.exit.i, !dbg !2569

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2570
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2572
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2573

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2574
  br label %kmalloc_index.exit.i, !dbg !2574

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2575
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2577
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2578

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2579
  br label %kmalloc_index.exit.i, !dbg !2579

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !2580, !srcloc !2583
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 101) #7, !dbg !2584, !srcloc !2587
  unreachable, !dbg !2588

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2589
  store i32 %45, i32* %index.i, align 4, !dbg !2590
  %46 = load i32, i32* %index.i, align 4, !dbg !2591
  %tobool.i = icmp ne i32 %46, 0, !dbg !2591
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2593

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2594
  br label %kmalloc.exit, !dbg !2594

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2595
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2596
  %and.i.i = and i32 %48, 17, !dbg !2596
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2596
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2596
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2596
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2596
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2598

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2599
  br label %kmalloc_type.exit.i, !dbg !2599

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2600
  %and2.i.i = and i32 %49, 1, !dbg !2601
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2600
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2600
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2600
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2602
  br label %kmalloc_type.exit.i, !dbg !2602

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2603
  %idxprom.i = zext i32 %51 to i64, !dbg !2604
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2604
  %52 = load i32, i32* %index.i, align 4, !dbg !2605
  %idxprom6.i = zext i32 %52 to i64, !dbg !2604
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2604
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2604
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2606
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2607
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2608
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2609
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #9, !dbg !2610
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2610
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2610
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2610
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !2610
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2371
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2611
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2612
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2613
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2614
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #9, !dbg !2615
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2616
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2617
  store i8* %62, i8** %retval.i, align 8, !dbg !2618
  br label %kmalloc.exit, !dbg !2618

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2619
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2620
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #9, !dbg !2621
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2621
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2621
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2621
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !2621
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2622
  br label %kmalloc.exit, !dbg !2622

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2623
  ret i8* %65, !dbg !2624
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_completion(%struct.completion* %x) #0 !dbg !2101 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !2625, metadata !DIExpression()), !dbg !2626
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !2627
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !2628
  store i32 0, i32* %done, align 8, !dbg !2629
  br label %do.body, !dbg !2630

do.body:                                          ; preds = %entry
  %1 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !2631
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %1, i32 0, i32 1, !dbg !2631
  call void @__init_swait_queue_head(%struct.swait_queue_head* %wait, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), %struct.lock_class_key* @__init_completion.__key) #6, !dbg !2631
  br label %do.end, !dbg !2631

do.end:                                           ; preds = %do.body
  ret void, !dbg !2633
}

; Function Attrs: noredzone
declare dso_local i32 @kobject_init_and_add(%struct.kobject*, %struct.kobj_type*, %struct.kobject*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @kobject_put(%struct.kobject*) #2

; Function Attrs: noredzone
declare dso_local i32 @kobject_uevent(%struct.kobject*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @cpuidle_remove_sysfs(%struct.cpuidle_device* %dev) #0 !dbg !2634 {
entry:
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %kdev = alloca %struct.cpuidle_device_kobj*, align 8
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !2635, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device_kobj** %kdev, metadata !2637, metadata !DIExpression()), !dbg !2638
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !2639
  %kobj_dev = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %0, i32 0, i32 10, !dbg !2640
  %1 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %kobj_dev, align 8, !dbg !2640
  store %struct.cpuidle_device_kobj* %1, %struct.cpuidle_device_kobj** %kdev, align 8, !dbg !2638
  %2 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %kdev, align 8, !dbg !2641
  %kobj = getelementptr inbounds %struct.cpuidle_device_kobj, %struct.cpuidle_device_kobj* %2, i32 0, i32 2, !dbg !2642
  call void @kobject_put(%struct.kobject* %kobj) #6, !dbg !2643
  %3 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %kdev, align 8, !dbg !2644
  %kobj_unregister = getelementptr inbounds %struct.cpuidle_device_kobj, %struct.cpuidle_device_kobj* %3, i32 0, i32 1, !dbg !2645
  call void @wait_for_completion(%struct.completion* %kobj_unregister) #6, !dbg !2646
  %4 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %kdev, align 8, !dbg !2647
  %5 = bitcast %struct.cpuidle_device_kobj* %4 to i8*, !dbg !2647
  call void @kfree(i8* %5) #6, !dbg !2648
  ret void, !dbg !2649
}

; Function Attrs: noredzone
declare dso_local void @wait_for_completion(%struct.completion*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_available_governors(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2650 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %tmp = alloca %struct.cpuidle_governor*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.cpuidle_governor*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp7 = alloca %struct.cpuidle_governor*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2651, metadata !DIExpression()), !dbg !2652
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2653, metadata !DIExpression()), !dbg !2654
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2655, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.declare(metadata i64* %i, metadata !2657, metadata !DIExpression()), !dbg !2658
  store i64 0, i64* %i, align 8, !dbg !2658
  call void @llvm.dbg.declare(metadata %struct.cpuidle_governor** %tmp, metadata !2659, metadata !DIExpression()), !dbg !2660
  call void @mutex_lock(%struct.mutex* @cpuidle_lock) #6, !dbg !2661
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2662, metadata !DIExpression()), !dbg !2665
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @cpuidle_governors, i32 0, i32 0), align 8, !dbg !2665
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !2665
  store i8* %1, i8** %__mptr, align 8, !dbg !2665
  br label %do.body, !dbg !2665

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2666

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2665
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !2665
  %3 = bitcast i8* %add.ptr to %struct.cpuidle_governor*, !dbg !2665
  store %struct.cpuidle_governor* %3, %struct.cpuidle_governor** %tmp1, align 8, !dbg !2666
  %4 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %tmp1, align 8, !dbg !2665
  store %struct.cpuidle_governor* %4, %struct.cpuidle_governor** %tmp, align 8, !dbg !2668
  br label %for.cond, !dbg !2668

for.cond:                                         ; preds = %do.end6, %do.end
  %5 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %tmp, align 8, !dbg !2669
  %governor_list = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %5, i32 0, i32 1, !dbg !2669
  %cmp = icmp eq %struct.list_head* %governor_list, @cpuidle_governors, !dbg !2669
  %lnot = xor i1 %cmp, true, !dbg !2669
  br i1 %lnot, label %for.body, label %for.end, !dbg !2668

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %i, align 8, !dbg !2671
  %cmp2 = icmp sge i64 %6, 4078, !dbg !2674
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2675

if.then:                                          ; preds = %for.body
  br label %out, !dbg !2676

if.end:                                           ; preds = %for.body
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !2677
  %8 = load i64, i64* %i, align 8, !dbg !2678
  %arrayidx = getelementptr i8, i8* %7, i64 %8, !dbg !2677
  %9 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %tmp, align 8, !dbg !2679
  %name = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %9, i32 0, i32 0, !dbg !2680
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !2679
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %arrayidx, i64 17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay) #6, !dbg !2681
  %conv = sext i32 %call to i64, !dbg !2681
  %10 = load i64, i64* %i, align 8, !dbg !2682
  %add = add i64 %10, %conv, !dbg !2682
  store i64 %add, i64* %i, align 8, !dbg !2682
  br label %for.inc, !dbg !2683

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !2684, metadata !DIExpression()), !dbg !2686
  %11 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %tmp, align 8, !dbg !2686
  %governor_list4 = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %11, i32 0, i32 1, !dbg !2686
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %governor_list4, i32 0, i32 0, !dbg !2686
  %12 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2686
  %13 = bitcast %struct.list_head* %12 to i8*, !dbg !2686
  store i8* %13, i8** %__mptr3, align 8, !dbg !2686
  br label %do.body5, !dbg !2686

do.body5:                                         ; preds = %for.inc
  br label %do.end6, !dbg !2687

do.end6:                                          ; preds = %do.body5
  %14 = load i8*, i8** %__mptr3, align 8, !dbg !2686
  %add.ptr8 = getelementptr i8, i8* %14, i64 -16, !dbg !2686
  %15 = bitcast i8* %add.ptr8 to %struct.cpuidle_governor*, !dbg !2686
  store %struct.cpuidle_governor* %15, %struct.cpuidle_governor** %tmp7, align 8, !dbg !2687
  %16 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %tmp7, align 8, !dbg !2686
  store %struct.cpuidle_governor* %16, %struct.cpuidle_governor** %tmp, align 8, !dbg !2669
  br label %for.cond, !dbg !2669, !llvm.loop !2689

for.end:                                          ; preds = %for.cond
  br label %out, !dbg !2690

out:                                              ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !2691), !dbg !2692
  %17 = load i8*, i8** %buf.addr, align 8, !dbg !2693
  %18 = load i64, i64* %i, align 8, !dbg !2694
  %arrayidx9 = getelementptr i8, i8* %17, i64 %18, !dbg !2693
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* %arrayidx9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2695
  %conv11 = sext i32 %call10 to i64, !dbg !2695
  %19 = load i64, i64* %i, align 8, !dbg !2696
  %add12 = add i64 %19, %conv11, !dbg !2696
  store i64 %add12, i64* %i, align 8, !dbg !2696
  call void @mutex_unlock(%struct.mutex* @cpuidle_lock) #6, !dbg !2697
  %20 = load i64, i64* %i, align 8, !dbg !2698
  ret i64 %20, !dbg !2699
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local i32 @scnprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_current_driver(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2700 {
entry:
  %lock.addr.i4 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i4, metadata !2701, metadata !DIExpression()), !dbg !2707
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2709, metadata !DIExpression()), !dbg !2711
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ret = alloca i64, align 8
  %drv = alloca %struct.cpuidle_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2713, metadata !DIExpression()), !dbg !2714
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2715, metadata !DIExpression()), !dbg !2716
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2717, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !2719, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv, metadata !2721, metadata !DIExpression()), !dbg !2722
  store %struct.spinlock* @cpuidle_driver_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2723, !srcloc !2725
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2726
  %1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i32 0, i32 0, !dbg !2726
  %rlock.i = bitcast %union.anon* %1 to %struct.raw_spinlock*, !dbg !2726
  %call = call %struct.cpuidle_driver* @cpuidle_get_driver() #6, !dbg !2728
  store %struct.cpuidle_driver* %call, %struct.cpuidle_driver** %drv, align 8, !dbg !2729
  %2 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !2730
  %tobool = icmp ne %struct.cpuidle_driver* %2, null, !dbg !2730
  br i1 %tobool, label %if.then, label %if.else, !dbg !2732

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !2733
  %4 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !2734
  %name = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %4, i32 0, i32 0, !dbg !2735
  %5 = load i8*, i8** %name, align 8, !dbg !2735
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %5) #6, !dbg !2736
  %conv = sext i32 %call1 to i64, !dbg !2736
  store i64 %conv, i64* %ret, align 8, !dbg !2737
  br label %if.end, !dbg !2738

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !2739
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2740
  %conv3 = sext i32 %call2 to i64, !dbg !2740
  store i64 %conv3, i64* %ret, align 8, !dbg !2741
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store %struct.spinlock* @cpuidle_driver_lock, %struct.spinlock** %lock.addr.i4, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2742, !srcloc !2744
  %7 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i4, align 8, !dbg !2745
  %8 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %7, i32 0, i32 0, !dbg !2745
  %rlock.i5 = bitcast %union.anon* %8 to %struct.raw_spinlock*, !dbg !2745
  %9 = load i64, i64* %ret, align 8, !dbg !2747
  ret i64 %9, !dbg !2748
}

; Function Attrs: noredzone
declare dso_local %struct.cpuidle_driver* @cpuidle_get_driver() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_current_governor(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2749 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ret = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2750, metadata !DIExpression()), !dbg !2751
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2752, metadata !DIExpression()), !dbg !2753
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2754, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !2756, metadata !DIExpression()), !dbg !2757
  call void @mutex_lock(%struct.mutex* @cpuidle_lock) #6, !dbg !2758
  %0 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** @cpuidle_curr_governor, align 8, !dbg !2759
  %tobool = icmp ne %struct.cpuidle_governor* %0, null, !dbg !2759
  br i1 %tobool, label %if.then, label %if.else, !dbg !2761

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !2762
  %2 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** @cpuidle_curr_governor, align 8, !dbg !2763
  %name = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %2, i32 0, i32 0, !dbg !2764
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !2763
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %arraydecay) #6, !dbg !2765
  %conv = sext i32 %call to i64, !dbg !2765
  store i64 %conv, i64* %ret, align 8, !dbg !2766
  br label %if.end, !dbg !2767

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !2768
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2769
  %conv2 = sext i32 %call1 to i64, !dbg !2769
  store i64 %conv2, i64* %ret, align 8, !dbg !2770
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @mutex_unlock(%struct.mutex* @cpuidle_lock) #6, !dbg !2771
  %4 = load i64, i64* %ret, align 8, !dbg !2772
  ret i64 %4, !dbg !2773
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @store_current_governor(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !2774 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %gov_name = alloca [17 x i8], align 16
  %ret = alloca i32, align 4
  %gov = alloca %struct.cpuidle_governor*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.cpuidle_governor*, align 8
  %__mptr8 = alloca i8*, align 8
  %tmp12 = alloca %struct.cpuidle_governor*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2775, metadata !DIExpression()), !dbg !2776
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2777, metadata !DIExpression()), !dbg !2778
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2779, metadata !DIExpression()), !dbg !2780
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !2781, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.declare(metadata [17 x i8]* %gov_name, metadata !2783, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2788, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.declare(metadata %struct.cpuidle_governor** %gov, metadata !2790, metadata !DIExpression()), !dbg !2791
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !2792
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %gov_name, i64 0, i64 0, !dbg !2793
  %call = call i32 (i8*, i8*, ...) @sscanf(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %arraydecay) #6, !dbg !2794
  store i32 %call, i32* %ret, align 4, !dbg !2795
  %1 = load i32, i32* %ret, align 4, !dbg !2796
  %cmp = icmp ne i32 %1, 1, !dbg !2798
  br i1 %cmp, label %if.then, label %if.end, !dbg !2799

if.then:                                          ; preds = %entry
  store i64 -22, i64* %retval, align 8, !dbg !2800
  br label %return, !dbg !2800

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* @cpuidle_lock) #6, !dbg !2801
  store i32 -22, i32* %ret, align 4, !dbg !2802
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2803, metadata !DIExpression()), !dbg !2806
  %2 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @cpuidle_governors, i32 0, i32 0), align 8, !dbg !2806
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !2806
  store i8* %3, i8** %__mptr, align 8, !dbg !2806
  br label %do.body, !dbg !2806

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2807

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !2806
  %add.ptr = getelementptr i8, i8* %4, i64 -16, !dbg !2806
  %5 = bitcast i8* %add.ptr to %struct.cpuidle_governor*, !dbg !2806
  store %struct.cpuidle_governor* %5, %struct.cpuidle_governor** %tmp, align 8, !dbg !2807
  %6 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %tmp, align 8, !dbg !2806
  store %struct.cpuidle_governor* %6, %struct.cpuidle_governor** %gov, align 8, !dbg !2809
  br label %for.cond, !dbg !2809

for.cond:                                         ; preds = %do.end11, %do.end
  %7 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %gov, align 8, !dbg !2810
  %governor_list = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %7, i32 0, i32 1, !dbg !2810
  %cmp1 = icmp eq %struct.list_head* %governor_list, @cpuidle_governors, !dbg !2810
  %lnot = xor i1 %cmp1, true, !dbg !2810
  br i1 %lnot, label %for.body, label %for.end, !dbg !2809

for.body:                                         ; preds = %for.cond
  %8 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %gov, align 8, !dbg !2812
  %name = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %8, i32 0, i32 0, !dbg !2815
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !2812
  %arraydecay3 = getelementptr inbounds [17 x i8], [17 x i8]* %gov_name, i64 0, i64 0, !dbg !2816
  %call4 = call i32 @strncmp(i8* %arraydecay2, i8* %arraydecay3, i64 16) #6, !dbg !2817
  %tobool = icmp ne i32 %call4, 0, !dbg !2817
  br i1 %tobool, label %if.end7, label %if.then5, !dbg !2818

if.then5:                                         ; preds = %for.body
  %9 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %gov, align 8, !dbg !2819
  %call6 = call i32 @cpuidle_switch_governor(%struct.cpuidle_governor* %9) #6, !dbg !2821
  store i32 %call6, i32* %ret, align 4, !dbg !2822
  br label %for.end, !dbg !2823

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !2824

for.inc:                                          ; preds = %if.end7
  call void @llvm.dbg.declare(metadata i8** %__mptr8, metadata !2825, metadata !DIExpression()), !dbg !2827
  %10 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %gov, align 8, !dbg !2827
  %governor_list9 = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %10, i32 0, i32 1, !dbg !2827
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %governor_list9, i32 0, i32 0, !dbg !2827
  %11 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2827
  %12 = bitcast %struct.list_head* %11 to i8*, !dbg !2827
  store i8* %12, i8** %__mptr8, align 8, !dbg !2827
  br label %do.body10, !dbg !2827

do.body10:                                        ; preds = %for.inc
  br label %do.end11, !dbg !2828

do.end11:                                         ; preds = %do.body10
  %13 = load i8*, i8** %__mptr8, align 8, !dbg !2827
  %add.ptr13 = getelementptr i8, i8* %13, i64 -16, !dbg !2827
  %14 = bitcast i8* %add.ptr13 to %struct.cpuidle_governor*, !dbg !2827
  store %struct.cpuidle_governor* %14, %struct.cpuidle_governor** %tmp12, align 8, !dbg !2828
  %15 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %tmp12, align 8, !dbg !2827
  store %struct.cpuidle_governor* %15, %struct.cpuidle_governor** %gov, align 8, !dbg !2810
  br label %for.cond, !dbg !2810, !llvm.loop !2830

for.end:                                          ; preds = %if.then5, %for.cond
  call void @mutex_unlock(%struct.mutex* @cpuidle_lock) #6, !dbg !2832
  %16 = load i32, i32* %ret, align 4, !dbg !2833
  %tobool14 = icmp ne i32 %16, 0, !dbg !2833
  br i1 %tobool14, label %cond.true, label %cond.false, !dbg !2833

cond.true:                                        ; preds = %for.end
  %17 = load i32, i32* %ret, align 4, !dbg !2834
  %conv = sext i32 %17 to i64, !dbg !2834
  br label %cond.end, !dbg !2833

cond.false:                                       ; preds = %for.end
  %18 = load i64, i64* %count.addr, align 8, !dbg !2835
  br label %cond.end, !dbg !2833

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %18, %cond.false ], !dbg !2833
  store i64 %cond, i64* %retval, align 8, !dbg !2836
  br label %return, !dbg !2836

return:                                           ; preds = %cond.end, %if.then
  %19 = load i64, i64* %retval, align 8, !dbg !2837
  ret i64 %19, !dbg !2837
}

; Function Attrs: noredzone
declare dso_local i32 @sscanf(i8*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @cpuidle_switch_governor(%struct.cpuidle_governor*) #2

; Function Attrs: noredzone
declare dso_local %struct.cpuidle_driver* @cpuidle_get_cpu_driver(%struct.cpuidle_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpuidle_add_s2idle_attr_group(%struct.cpuidle_state_kobj* %kobj) #0 !dbg !2838 {
entry:
  %kobj.addr = alloca %struct.cpuidle_state_kobj*, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.cpuidle_state_kobj* %kobj, %struct.cpuidle_state_kobj** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_kobj** %kobj.addr, metadata !2841, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2843, metadata !DIExpression()), !dbg !2844
  %0 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %kobj.addr, align 8, !dbg !2845
  %state = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %0, i32 0, i32 0, !dbg !2847
  %1 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !2847
  %enter_s2idle = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %1, i32 0, i32 10, !dbg !2848
  %2 = load i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)*, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)** %enter_s2idle, align 8, !dbg !2848
  %tobool = icmp ne i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* %2, null, !dbg !2845
  br i1 %tobool, label %if.end, label %if.then, !dbg !2849

if.then:                                          ; preds = %entry
  br label %if.end4, !dbg !2850

if.end:                                           ; preds = %entry
  %3 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %kobj.addr, align 8, !dbg !2851
  %kobj1 = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %3, i32 0, i32 3, !dbg !2852
  %call = call i32 @sysfs_create_group(%struct.kobject* %kobj1, %struct.attribute_group* @cpuidle_state_s2idle_group) #6, !dbg !2853
  store i32 %call, i32* %ret, align 4, !dbg !2854
  %4 = load i32, i32* %ret, align 4, !dbg !2855
  %tobool2 = icmp ne i32 %4, 0, !dbg !2855
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2857

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %tmp, align 4, !dbg !2858
  %5 = load i32, i32* %tmp, align 4, !dbg !2861
  br label %if.end4, !dbg !2862

if.end4:                                          ; preds = %if.then, %if.then3, %if.end
  ret void, !dbg !2863
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpuidle_free_state_kobj(%struct.cpuidle_device* %device, i32 %i) #0 !dbg !2864 {
entry:
  %device.addr = alloca %struct.cpuidle_device*, align 8
  %i.addr = alloca i32, align 4
  store %struct.cpuidle_device* %device, %struct.cpuidle_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %device.addr, metadata !2865, metadata !DIExpression()), !dbg !2866
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !2867, metadata !DIExpression()), !dbg !2868
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device.addr, align 8, !dbg !2869
  %kobjs = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %0, i32 0, i32 8, !dbg !2870
  %1 = load i32, i32* %i.addr, align 4, !dbg !2871
  %idxprom = sext i32 %1 to i64, !dbg !2869
  %arrayidx = getelementptr [10 x %struct.cpuidle_state_kobj*], [10 x %struct.cpuidle_state_kobj*]* %kobjs, i64 0, i64 %idxprom, !dbg !2869
  %2 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %arrayidx, align 8, !dbg !2869
  call void @cpuidle_remove_s2idle_attr_group(%struct.cpuidle_state_kobj* %2) #6, !dbg !2872
  %3 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device.addr, align 8, !dbg !2873
  %kobjs1 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %3, i32 0, i32 8, !dbg !2874
  %4 = load i32, i32* %i.addr, align 4, !dbg !2875
  %idxprom2 = sext i32 %4 to i64, !dbg !2873
  %arrayidx3 = getelementptr [10 x %struct.cpuidle_state_kobj*], [10 x %struct.cpuidle_state_kobj*]* %kobjs1, i64 0, i64 %idxprom2, !dbg !2873
  %5 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %arrayidx3, align 8, !dbg !2873
  %kobj = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %5, i32 0, i32 3, !dbg !2876
  call void @kobject_put(%struct.kobject* %kobj) #6, !dbg !2877
  %6 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device.addr, align 8, !dbg !2878
  %kobjs4 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %6, i32 0, i32 8, !dbg !2879
  %7 = load i32, i32* %i.addr, align 4, !dbg !2880
  %idxprom5 = sext i32 %7 to i64, !dbg !2878
  %arrayidx6 = getelementptr [10 x %struct.cpuidle_state_kobj*], [10 x %struct.cpuidle_state_kobj*]* %kobjs4, i64 0, i64 %idxprom5, !dbg !2878
  %8 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %arrayidx6, align 8, !dbg !2878
  %kobj_unregister = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %8, i32 0, i32 2, !dbg !2881
  call void @wait_for_completion(%struct.completion* %kobj_unregister) #6, !dbg !2882
  %9 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device.addr, align 8, !dbg !2883
  %kobjs7 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %9, i32 0, i32 8, !dbg !2884
  %10 = load i32, i32* %i.addr, align 4, !dbg !2885
  %idxprom8 = sext i32 %10 to i64, !dbg !2883
  %arrayidx9 = getelementptr [10 x %struct.cpuidle_state_kobj*], [10 x %struct.cpuidle_state_kobj*]* %kobjs7, i64 0, i64 %idxprom8, !dbg !2883
  %11 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %arrayidx9, align 8, !dbg !2883
  %12 = bitcast %struct.cpuidle_state_kobj* %11 to i8*, !dbg !2883
  call void @kfree(i8* %12) #6, !dbg !2886
  %13 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device.addr, align 8, !dbg !2887
  %kobjs10 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %13, i32 0, i32 8, !dbg !2888
  %14 = load i32, i32* %i.addr, align 4, !dbg !2889
  %idxprom11 = sext i32 %14 to i64, !dbg !2887
  %arrayidx12 = getelementptr [10 x %struct.cpuidle_state_kobj*], [10 x %struct.cpuidle_state_kobj*]* %kobjs10, i64 0, i64 %idxprom11, !dbg !2887
  store %struct.cpuidle_state_kobj* null, %struct.cpuidle_state_kobj** %arrayidx12, align 8, !dbg !2890
  ret void, !dbg !2891
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpuidle_state_sysfs_release(%struct.kobject* %kobj) #0 !dbg !2892 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %state_obj = alloca %struct.cpuidle_state_kobj*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.cpuidle_state_kobj*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !2893, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_kobj** %state_obj, metadata !2895, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2897, metadata !DIExpression()), !dbg !2899
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !2899
  %1 = bitcast %struct.kobject* %0 to i8*, !dbg !2899
  store i8* %1, i8** %__mptr, align 8, !dbg !2899
  br label %do.body, !dbg !2899

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2900

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2899
  %add.ptr = getelementptr i8, i8* %2, i64 -40, !dbg !2899
  %3 = bitcast i8* %add.ptr to %struct.cpuidle_state_kobj*, !dbg !2899
  store %struct.cpuidle_state_kobj* %3, %struct.cpuidle_state_kobj** %tmp, align 8, !dbg !2900
  %4 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %tmp, align 8, !dbg !2899
  store %struct.cpuidle_state_kobj* %4, %struct.cpuidle_state_kobj** %state_obj, align 8, !dbg !2896
  %5 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %state_obj, align 8, !dbg !2902
  %kobj_unregister = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %5, i32 0, i32 2, !dbg !2903
  call void @complete(%struct.completion* %kobj_unregister) #6, !dbg !2904
  ret void, !dbg !2905
}

; Function Attrs: noredzone
declare dso_local void @complete(%struct.completion*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @cpuidle_state_show(%struct.kobject* %kobj, %struct.attribute* %attr, i8* %buf) #0 !dbg !2906 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %state = alloca %struct.cpuidle_state*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.cpuidle_state_kobj*, align 8
  %state_usage = alloca %struct.cpuidle_state_usage*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp5 = alloca %struct.cpuidle_state_kobj*, align 8
  %cattr = alloca %struct.cpuidle_state_attr*, align 8
  %__mptr8 = alloca i8*, align 8
  %tmp11 = alloca %struct.cpuidle_state_attr*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !2907, metadata !DIExpression()), !dbg !2908
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !2909, metadata !DIExpression()), !dbg !2910
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2911, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2913, metadata !DIExpression()), !dbg !2914
  store i32 -5, i32* %ret, align 4, !dbg !2914
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state, metadata !2915, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2917, metadata !DIExpression()), !dbg !2919
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !2919
  %1 = bitcast %struct.kobject* %0 to i8*, !dbg !2919
  store i8* %1, i8** %__mptr, align 8, !dbg !2919
  br label %do.body, !dbg !2919

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2920

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2919
  %add.ptr = getelementptr i8, i8* %2, i64 -40, !dbg !2919
  %3 = bitcast i8* %add.ptr to %struct.cpuidle_state_kobj*, !dbg !2919
  store %struct.cpuidle_state_kobj* %3, %struct.cpuidle_state_kobj** %tmp, align 8, !dbg !2920
  %4 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %tmp, align 8, !dbg !2919
  %state1 = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %4, i32 0, i32 0, !dbg !2922
  %5 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state1, align 8, !dbg !2922
  store %struct.cpuidle_state* %5, %struct.cpuidle_state** %state, align 8, !dbg !2916
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_usage** %state_usage, metadata !2923, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !2925, metadata !DIExpression()), !dbg !2927
  %6 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !2927
  %7 = bitcast %struct.kobject* %6 to i8*, !dbg !2927
  store i8* %7, i8** %__mptr2, align 8, !dbg !2927
  br label %do.body3, !dbg !2927

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !2928

do.end4:                                          ; preds = %do.body3
  %8 = load i8*, i8** %__mptr2, align 8, !dbg !2927
  %add.ptr6 = getelementptr i8, i8* %8, i64 -40, !dbg !2927
  %9 = bitcast i8* %add.ptr6 to %struct.cpuidle_state_kobj*, !dbg !2927
  store %struct.cpuidle_state_kobj* %9, %struct.cpuidle_state_kobj** %tmp5, align 8, !dbg !2928
  %10 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %tmp5, align 8, !dbg !2927
  %state_usage7 = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %10, i32 0, i32 1, !dbg !2930
  %11 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %state_usage7, align 8, !dbg !2930
  store %struct.cpuidle_state_usage* %11, %struct.cpuidle_state_usage** %state_usage, align 8, !dbg !2924
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_attr** %cattr, metadata !2931, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.declare(metadata i8** %__mptr8, metadata !2933, metadata !DIExpression()), !dbg !2935
  %12 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !2935
  %13 = bitcast %struct.attribute* %12 to i8*, !dbg !2935
  store i8* %13, i8** %__mptr8, align 8, !dbg !2935
  br label %do.body9, !dbg !2935

do.body9:                                         ; preds = %do.end4
  br label %do.end10, !dbg !2936

do.end10:                                         ; preds = %do.body9
  %14 = load i8*, i8** %__mptr8, align 8, !dbg !2935
  %add.ptr12 = getelementptr i8, i8* %14, i64 0, !dbg !2935
  %15 = bitcast i8* %add.ptr12 to %struct.cpuidle_state_attr*, !dbg !2935
  store %struct.cpuidle_state_attr* %15, %struct.cpuidle_state_attr** %tmp11, align 8, !dbg !2936
  %16 = load %struct.cpuidle_state_attr*, %struct.cpuidle_state_attr** %tmp11, align 8, !dbg !2935
  store %struct.cpuidle_state_attr* %16, %struct.cpuidle_state_attr** %cattr, align 8, !dbg !2932
  %17 = load %struct.cpuidle_state_attr*, %struct.cpuidle_state_attr** %cattr, align 8, !dbg !2938
  %show = getelementptr inbounds %struct.cpuidle_state_attr, %struct.cpuidle_state_attr* %17, i32 0, i32 1, !dbg !2940
  %18 = load i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*)*, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*)** %show, align 8, !dbg !2940
  %tobool = icmp ne i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*)* %18, null, !dbg !2938
  br i1 %tobool, label %if.then, label %if.end, !dbg !2941

if.then:                                          ; preds = %do.end10
  %19 = load %struct.cpuidle_state_attr*, %struct.cpuidle_state_attr** %cattr, align 8, !dbg !2942
  %show13 = getelementptr inbounds %struct.cpuidle_state_attr, %struct.cpuidle_state_attr* %19, i32 0, i32 1, !dbg !2943
  %20 = load i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*)*, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*)** %show13, align 8, !dbg !2943
  %21 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !2944
  %22 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %state_usage, align 8, !dbg !2945
  %23 = load i8*, i8** %buf.addr, align 8, !dbg !2946
  %call = call i64 %20(%struct.cpuidle_state* %21, %struct.cpuidle_state_usage* %22, i8* %23) #6, !dbg !2942
  %conv = trunc i64 %call to i32, !dbg !2942
  store i32 %conv, i32* %ret, align 4, !dbg !2947
  br label %if.end, !dbg !2948

if.end:                                           ; preds = %if.then, %do.end10
  %24 = load i32, i32* %ret, align 4, !dbg !2949
  %conv14 = sext i32 %24 to i64, !dbg !2949
  ret i64 %conv14, !dbg !2950
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @cpuidle_state_store(%struct.kobject* %kobj, %struct.attribute* %attr, i8* %buf, i64 %size) #0 !dbg !2951 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %state = alloca %struct.cpuidle_state*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.cpuidle_state_kobj*, align 8
  %state_usage = alloca %struct.cpuidle_state_usage*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp5 = alloca %struct.cpuidle_state_kobj*, align 8
  %cattr = alloca %struct.cpuidle_state_attr*, align 8
  %__mptr8 = alloca i8*, align 8
  %tmp11 = alloca %struct.cpuidle_state_attr*, align 8
  %dev = alloca %struct.cpuidle_device*, align 8
  %__mptr13 = alloca i8*, align 8
  %tmp16 = alloca %struct.cpuidle_state_kobj*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !2952, metadata !DIExpression()), !dbg !2953
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !2954, metadata !DIExpression()), !dbg !2955
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2956, metadata !DIExpression()), !dbg !2957
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2958, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2960, metadata !DIExpression()), !dbg !2961
  store i32 -5, i32* %ret, align 4, !dbg !2961
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state, metadata !2962, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2964, metadata !DIExpression()), !dbg !2966
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !2966
  %1 = bitcast %struct.kobject* %0 to i8*, !dbg !2966
  store i8* %1, i8** %__mptr, align 8, !dbg !2966
  br label %do.body, !dbg !2966

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2967

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2966
  %add.ptr = getelementptr i8, i8* %2, i64 -40, !dbg !2966
  %3 = bitcast i8* %add.ptr to %struct.cpuidle_state_kobj*, !dbg !2966
  store %struct.cpuidle_state_kobj* %3, %struct.cpuidle_state_kobj** %tmp, align 8, !dbg !2967
  %4 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %tmp, align 8, !dbg !2966
  %state1 = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %4, i32 0, i32 0, !dbg !2969
  %5 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state1, align 8, !dbg !2969
  store %struct.cpuidle_state* %5, %struct.cpuidle_state** %state, align 8, !dbg !2963
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_usage** %state_usage, metadata !2970, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !2972, metadata !DIExpression()), !dbg !2974
  %6 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !2974
  %7 = bitcast %struct.kobject* %6 to i8*, !dbg !2974
  store i8* %7, i8** %__mptr2, align 8, !dbg !2974
  br label %do.body3, !dbg !2974

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !2975

do.end4:                                          ; preds = %do.body3
  %8 = load i8*, i8** %__mptr2, align 8, !dbg !2974
  %add.ptr6 = getelementptr i8, i8* %8, i64 -40, !dbg !2974
  %9 = bitcast i8* %add.ptr6 to %struct.cpuidle_state_kobj*, !dbg !2974
  store %struct.cpuidle_state_kobj* %9, %struct.cpuidle_state_kobj** %tmp5, align 8, !dbg !2975
  %10 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %tmp5, align 8, !dbg !2974
  %state_usage7 = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %10, i32 0, i32 1, !dbg !2977
  %11 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %state_usage7, align 8, !dbg !2977
  store %struct.cpuidle_state_usage* %11, %struct.cpuidle_state_usage** %state_usage, align 8, !dbg !2971
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_attr** %cattr, metadata !2978, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.declare(metadata i8** %__mptr8, metadata !2980, metadata !DIExpression()), !dbg !2982
  %12 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !2982
  %13 = bitcast %struct.attribute* %12 to i8*, !dbg !2982
  store i8* %13, i8** %__mptr8, align 8, !dbg !2982
  br label %do.body9, !dbg !2982

do.body9:                                         ; preds = %do.end4
  br label %do.end10, !dbg !2983

do.end10:                                         ; preds = %do.body9
  %14 = load i8*, i8** %__mptr8, align 8, !dbg !2982
  %add.ptr12 = getelementptr i8, i8* %14, i64 0, !dbg !2982
  %15 = bitcast i8* %add.ptr12 to %struct.cpuidle_state_attr*, !dbg !2982
  store %struct.cpuidle_state_attr* %15, %struct.cpuidle_state_attr** %tmp11, align 8, !dbg !2983
  %16 = load %struct.cpuidle_state_attr*, %struct.cpuidle_state_attr** %tmp11, align 8, !dbg !2982
  store %struct.cpuidle_state_attr* %16, %struct.cpuidle_state_attr** %cattr, align 8, !dbg !2979
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev, metadata !2985, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.declare(metadata i8** %__mptr13, metadata !2987, metadata !DIExpression()), !dbg !2989
  %17 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !2989
  %18 = bitcast %struct.kobject* %17 to i8*, !dbg !2989
  store i8* %18, i8** %__mptr13, align 8, !dbg !2989
  br label %do.body14, !dbg !2989

do.body14:                                        ; preds = %do.end10
  br label %do.end15, !dbg !2990

do.end15:                                         ; preds = %do.body14
  %19 = load i8*, i8** %__mptr13, align 8, !dbg !2989
  %add.ptr17 = getelementptr i8, i8* %19, i64 -40, !dbg !2989
  %20 = bitcast i8* %add.ptr17 to %struct.cpuidle_state_kobj*, !dbg !2989
  store %struct.cpuidle_state_kobj* %20, %struct.cpuidle_state_kobj** %tmp16, align 8, !dbg !2990
  %21 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %tmp16, align 8, !dbg !2989
  %device = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %21, i32 0, i32 4, !dbg !2992
  %22 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device, align 8, !dbg !2992
  store %struct.cpuidle_device* %22, %struct.cpuidle_device** %dev, align 8, !dbg !2986
  %23 = load %struct.cpuidle_state_attr*, %struct.cpuidle_state_attr** %cattr, align 8, !dbg !2993
  %store = getelementptr inbounds %struct.cpuidle_state_attr, %struct.cpuidle_state_attr* %23, i32 0, i32 2, !dbg !2995
  %24 = load i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*, i64)*, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*, i64)** %store, align 8, !dbg !2995
  %tobool = icmp ne i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*, i64)* %24, null, !dbg !2993
  br i1 %tobool, label %if.then, label %if.end, !dbg !2996

if.then:                                          ; preds = %do.end15
  %25 = load %struct.cpuidle_state_attr*, %struct.cpuidle_state_attr** %cattr, align 8, !dbg !2997
  %store18 = getelementptr inbounds %struct.cpuidle_state_attr, %struct.cpuidle_state_attr* %25, i32 0, i32 2, !dbg !2998
  %26 = load i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*, i64)*, i64 (%struct.cpuidle_state*, %struct.cpuidle_state_usage*, i8*, i64)** %store18, align 8, !dbg !2998
  %27 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !2999
  %28 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %state_usage, align 8, !dbg !3000
  %29 = load i8*, i8** %buf.addr, align 8, !dbg !3001
  %30 = load i64, i64* %size.addr, align 8, !dbg !3002
  %call = call i64 %26(%struct.cpuidle_state* %27, %struct.cpuidle_state_usage* %28, i8* %29, i64 %30) #6, !dbg !2997
  %conv = trunc i64 %call to i32, !dbg !2997
  store i32 %conv, i32* %ret, align 4, !dbg !3003
  br label %if.end, !dbg !3004

if.end:                                           ; preds = %if.then, %do.end15
  %31 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !3005
  %poll_limit_ns = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %31, i32 0, i32 5, !dbg !3006
  store i64 0, i64* %poll_limit_ns, align 8, !dbg !3007
  %32 = load i32, i32* %ret, align 4, !dbg !3008
  %conv19 = sext i32 %32 to i64, !dbg !3008
  ret i64 %conv19, !dbg !3009
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_state_name(%struct.cpuidle_state* %state, %struct.cpuidle_state_usage* %state_usage, i8* %buf) #0 !dbg !3010 {
entry:
  %retval = alloca i64, align 8
  %state.addr = alloca %struct.cpuidle_state*, align 8
  %state_usage.addr = alloca %struct.cpuidle_state_usage*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.cpuidle_state* %state, %struct.cpuidle_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state.addr, metadata !3011, metadata !DIExpression()), !dbg !3012
  store %struct.cpuidle_state_usage* %state_usage, %struct.cpuidle_state_usage** %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_usage** %state_usage.addr, metadata !3013, metadata !DIExpression()), !dbg !3012
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3014, metadata !DIExpression()), !dbg !3012
  %0 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state.addr, align 8, !dbg !3015
  %name = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %0, i32 0, i32 0, !dbg !3015
  %arrayidx = getelementptr [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !3015
  %1 = load i8, i8* %arrayidx, align 8, !dbg !3015
  %conv = sext i8 %1 to i32, !dbg !3015
  %cmp = icmp eq i32 %conv, 0, !dbg !3015
  br i1 %cmp, label %if.then, label %if.end, !dbg !3012

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !3015
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !3015
  %conv2 = sext i32 %call to i64, !dbg !3015
  store i64 %conv2, i64* %retval, align 8, !dbg !3015
  br label %return, !dbg !3015

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !3012
  %4 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state.addr, align 8, !dbg !3012
  %name3 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %4, i32 0, i32 0, !dbg !3012
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name3, i64 0, i64 0, !dbg !3012
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %arraydecay) #6, !dbg !3012
  %conv5 = sext i32 %call4 to i64, !dbg !3012
  store i64 %conv5, i64* %retval, align 8, !dbg !3012
  br label %return, !dbg !3012

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !3012
  ret i64 %5, !dbg !3012
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_state_desc(%struct.cpuidle_state* %state, %struct.cpuidle_state_usage* %state_usage, i8* %buf) #0 !dbg !3017 {
entry:
  %retval = alloca i64, align 8
  %state.addr = alloca %struct.cpuidle_state*, align 8
  %state_usage.addr = alloca %struct.cpuidle_state_usage*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.cpuidle_state* %state, %struct.cpuidle_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state.addr, metadata !3018, metadata !DIExpression()), !dbg !3019
  store %struct.cpuidle_state_usage* %state_usage, %struct.cpuidle_state_usage** %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_usage** %state_usage.addr, metadata !3020, metadata !DIExpression()), !dbg !3019
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3021, metadata !DIExpression()), !dbg !3019
  %0 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state.addr, align 8, !dbg !3022
  %desc = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %0, i32 0, i32 1, !dbg !3022
  %arrayidx = getelementptr [32 x i8], [32 x i8]* %desc, i64 0, i64 0, !dbg !3022
  %1 = load i8, i8* %arrayidx, align 8, !dbg !3022
  %conv = sext i8 %1 to i32, !dbg !3022
  %cmp = icmp eq i32 %conv, 0, !dbg !3022
  br i1 %cmp, label %if.then, label %if.end, !dbg !3019

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !3022
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !3022
  %conv2 = sext i32 %call to i64, !dbg !3022
  store i64 %conv2, i64* %retval, align 8, !dbg !3022
  br label %return, !dbg !3022

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !3019
  %4 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state.addr, align 8, !dbg !3019
  %desc3 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %4, i32 0, i32 1, !dbg !3019
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %desc3, i64 0, i64 0, !dbg !3019
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %arraydecay) #6, !dbg !3019
  %conv5 = sext i32 %call4 to i64, !dbg !3019
  store i64 %conv5, i64* %retval, align 8, !dbg !3019
  br label %return, !dbg !3019

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !3019
  ret i64 %5, !dbg !3019
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_state_exit_latency(%struct.cpuidle_state* %state, %struct.cpuidle_state_usage* %state_usage, i8* %buf) #0 !dbg !3024 {
entry:
  %state.addr = alloca %struct.cpuidle_state*, align 8
  %state_usage.addr = alloca %struct.cpuidle_state_usage*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.cpuidle_state* %state, %struct.cpuidle_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state.addr, metadata !3025, metadata !DIExpression()), !dbg !3026
  store %struct.cpuidle_state_usage* %state_usage, %struct.cpuidle_state_usage** %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_usage** %state_usage.addr, metadata !3027, metadata !DIExpression()), !dbg !3026
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3028, metadata !DIExpression()), !dbg !3026
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3026
  %1 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state.addr, align 8, !dbg !3026
  %exit_latency_ns = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %1, i32 0, i32 2, !dbg !3026
  %2 = load i64, i64* %exit_latency_ns, align 8, !dbg !3026
  %call = call i64 @ktime_to_us(i64 %2) #6, !dbg !3026
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i64 %call) #6, !dbg !3026
  %conv = sext i32 %call1 to i64, !dbg !3026
  ret i64 %conv, !dbg !3026
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_to_us(i64 %kt) #0 !dbg !3029 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !3033, metadata !DIExpression()), !dbg !3034
  %0 = load i64, i64* %kt.addr, align 8, !dbg !3035
  %call = call i64 @ktime_divns(i64 %0, i64 1000) #6, !dbg !3036
  ret i64 %call, !dbg !3037
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_divns(i64 %kt, i64 %div) #0 !dbg !3038 {
entry:
  %kt.addr = alloca i64, align 8
  %div.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !3041, metadata !DIExpression()), !dbg !3042
  store i64 %div, i64* %div.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %div.addr, metadata !3043, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3045, metadata !DIExpression()), !dbg !3047
  %0 = load i64, i64* %div.addr, align 8, !dbg !3047
  %cmp = icmp slt i64 %0, 0, !dbg !3047
  %lnot = xor i1 %cmp, true, !dbg !3047
  %lnot1 = xor i1 %lnot, true, !dbg !3047
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3047
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3047
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !3048
  %tobool = icmp ne i32 %1, 0, !dbg !3048
  %lnot2 = xor i1 %tobool, true, !dbg !3048
  %lnot4 = xor i1 %lnot2, true, !dbg !3048
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !3048
  %conv = sext i32 %lnot.ext5 to i64, !dbg !3048
  %tobool6 = icmp ne i64 %conv, 0, !dbg !3048
  br i1 %tobool6, label %if.then, label %if.end, !dbg !3047

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3048

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !3050

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !3052

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !3050

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 154, i32 2305, i64 12) #7, !dbg !3054, !srcloc !3056
  br label %do.end9, !dbg !3054

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 45) #7, !dbg !3057, !srcloc !3059
  br label %do.body10, !dbg !3050

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !3060

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !3050

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !3050

if.end:                                           ; preds = %do.end12, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !3047
  %tobool13 = icmp ne i32 %2, 0, !dbg !3047
  %lnot14 = xor i1 %tobool13, true, !dbg !3047
  %lnot16 = xor i1 %lnot14, true, !dbg !3047
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !3047
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !3047
  store i64 %conv18, i64* %tmp, align 8, !dbg !3048
  %3 = load i64, i64* %tmp, align 8, !dbg !3047
  %4 = load i64, i64* %kt.addr, align 8, !dbg !3062
  %5 = load i64, i64* %div.addr, align 8, !dbg !3063
  %div19 = sdiv i64 %4, %5, !dbg !3064
  ret i64 %div19, !dbg !3065
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_state_target_residency(%struct.cpuidle_state* %state, %struct.cpuidle_state_usage* %state_usage, i8* %buf) #0 !dbg !3066 {
entry:
  %state.addr = alloca %struct.cpuidle_state*, align 8
  %state_usage.addr = alloca %struct.cpuidle_state_usage*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.cpuidle_state* %state, %struct.cpuidle_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state.addr, metadata !3067, metadata !DIExpression()), !dbg !3068
  store %struct.cpuidle_state_usage* %state_usage, %struct.cpuidle_state_usage** %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_usage** %state_usage.addr, metadata !3069, metadata !DIExpression()), !dbg !3068
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3070, metadata !DIExpression()), !dbg !3068
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3068
  %1 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state.addr, align 8, !dbg !3068
  %target_residency_ns = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %1, i32 0, i32 3, !dbg !3068
  %2 = load i64, i64* %target_residency_ns, align 8, !dbg !3068
  %call = call i64 @ktime_to_us(i64 %2) #6, !dbg !3068
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i64 %call) #6, !dbg !3068
  %conv = sext i32 %call1 to i64, !dbg !3068
  ret i64 %conv, !dbg !3068
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_state_power_usage(%struct.cpuidle_state* %state, %struct.cpuidle_state_usage* %state_usage, i8* %buf) #0 !dbg !3071 {
entry:
  %state.addr = alloca %struct.cpuidle_state*, align 8
  %state_usage.addr = alloca %struct.cpuidle_state_usage*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.cpuidle_state* %state, %struct.cpuidle_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state.addr, metadata !3072, metadata !DIExpression()), !dbg !3073
  store %struct.cpuidle_state_usage* %state_usage, %struct.cpuidle_state_usage** %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_usage** %state_usage.addr, metadata !3074, metadata !DIExpression()), !dbg !3073
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3075, metadata !DIExpression()), !dbg !3073
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3073
  %1 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state.addr, align 8, !dbg !3073
  %power_usage = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %1, i32 0, i32 6, !dbg !3073
  %2 = load i32, i32* %power_usage, align 8, !dbg !3073
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %2) #6, !dbg !3073
  %conv = sext i32 %call to i64, !dbg !3073
  ret i64 %conv, !dbg !3073
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_state_usage(%struct.cpuidle_state* %state, %struct.cpuidle_state_usage* %state_usage, i8* %buf) #0 !dbg !3076 {
entry:
  %state.addr = alloca %struct.cpuidle_state*, align 8
  %state_usage.addr = alloca %struct.cpuidle_state_usage*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.cpuidle_state* %state, %struct.cpuidle_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state.addr, metadata !3077, metadata !DIExpression()), !dbg !3078
  store %struct.cpuidle_state_usage* %state_usage, %struct.cpuidle_state_usage** %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_usage** %state_usage.addr, metadata !3079, metadata !DIExpression()), !dbg !3078
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3080, metadata !DIExpression()), !dbg !3078
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3078
  %1 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %state_usage.addr, align 8, !dbg !3078
  %usage = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %1, i32 0, i32 1, !dbg !3078
  %2 = load i64, i64* %usage, align 8, !dbg !3078
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i64 %2) #6, !dbg !3078
  %conv = sext i32 %call to i64, !dbg !3078
  ret i64 %conv, !dbg !3078
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_state_rejected(%struct.cpuidle_state* %state, %struct.cpuidle_state_usage* %state_usage, i8* %buf) #0 !dbg !3081 {
entry:
  %state.addr = alloca %struct.cpuidle_state*, align 8
  %state_usage.addr = alloca %struct.cpuidle_state_usage*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.cpuidle_state* %state, %struct.cpuidle_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state.addr, metadata !3082, metadata !DIExpression()), !dbg !3083
  store %struct.cpuidle_state_usage* %state_usage, %struct.cpuidle_state_usage** %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_usage** %state_usage.addr, metadata !3084, metadata !DIExpression()), !dbg !3083
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3085, metadata !DIExpression()), !dbg !3083
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3083
  %1 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %state_usage.addr, align 8, !dbg !3083
  %rejected = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %1, i32 0, i32 5, !dbg !3083
  %2 = load i64, i64* %rejected, align 8, !dbg !3083
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i64 %2) #6, !dbg !3083
  %conv = sext i32 %call to i64, !dbg !3083
  ret i64 %conv, !dbg !3083
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_state_time(%struct.cpuidle_state* %state, %struct.cpuidle_state_usage* %state_usage, i8* %buf) #0 !dbg !3086 {
entry:
  %state.addr = alloca %struct.cpuidle_state*, align 8
  %state_usage.addr = alloca %struct.cpuidle_state_usage*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.cpuidle_state* %state, %struct.cpuidle_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state.addr, metadata !3087, metadata !DIExpression()), !dbg !3088
  store %struct.cpuidle_state_usage* %state_usage, %struct.cpuidle_state_usage** %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_usage** %state_usage.addr, metadata !3089, metadata !DIExpression()), !dbg !3090
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3091, metadata !DIExpression()), !dbg !3092
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3093
  %1 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %state_usage.addr, align 8, !dbg !3094
  %time_ns = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %1, i32 0, i32 2, !dbg !3095
  %2 = load i64, i64* %time_ns, align 8, !dbg !3095
  %call = call i64 @ktime_to_us(i64 %2) #6, !dbg !3096
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i64 %call) #6, !dbg !3097
  %conv = sext i32 %call1 to i64, !dbg !3097
  ret i64 %conv, !dbg !3098
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_state_disable(%struct.cpuidle_state* %state, %struct.cpuidle_state_usage* %state_usage, i8* %buf) #0 !dbg !3099 {
entry:
  %state.addr = alloca %struct.cpuidle_state*, align 8
  %state_usage.addr = alloca %struct.cpuidle_state_usage*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.cpuidle_state* %state, %struct.cpuidle_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state.addr, metadata !3100, metadata !DIExpression()), !dbg !3101
  store %struct.cpuidle_state_usage* %state_usage, %struct.cpuidle_state_usage** %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_usage** %state_usage.addr, metadata !3102, metadata !DIExpression()), !dbg !3103
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3104, metadata !DIExpression()), !dbg !3105
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3106
  %1 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %state_usage.addr, align 8, !dbg !3107
  %disable = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %1, i32 0, i32 0, !dbg !3108
  %2 = load i64, i64* %disable, align 8, !dbg !3108
  %and = and i64 %2, 1, !dbg !3109
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i64 %and) #6, !dbg !3110
  %conv = sext i32 %call to i64, !dbg !3110
  ret i64 %conv, !dbg !3111
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @store_state_disable(%struct.cpuidle_state* %state, %struct.cpuidle_state_usage* %state_usage, i8* %buf, i64 %size) #0 !dbg !3112 {
entry:
  %retval = alloca i64, align 8
  %state.addr = alloca %struct.cpuidle_state*, align 8
  %state_usage.addr = alloca %struct.cpuidle_state_usage*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %value = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.cpuidle_state* %state, %struct.cpuidle_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state.addr, metadata !3113, metadata !DIExpression()), !dbg !3114
  store %struct.cpuidle_state_usage* %state_usage, %struct.cpuidle_state_usage** %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_usage** %state_usage.addr, metadata !3115, metadata !DIExpression()), !dbg !3116
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3117, metadata !DIExpression()), !dbg !3118
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3119, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.declare(metadata i32* %value, metadata !3121, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3123, metadata !DIExpression()), !dbg !3124
  %call = call zeroext i1 @capable(i32 21) #6, !dbg !3125
  br i1 %call, label %if.end, label %if.then, !dbg !3127

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !3128
  br label %return, !dbg !3128

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3129
  %call1 = call i32 @kstrtouint(i8* %0, i32 0, i32* %value) #6, !dbg !3130
  store i32 %call1, i32* %err, align 4, !dbg !3131
  %1 = load i32, i32* %err, align 4, !dbg !3132
  %tobool = icmp ne i32 %1, 0, !dbg !3132
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !3134

if.then2:                                         ; preds = %if.end
  %2 = load i32, i32* %err, align 4, !dbg !3135
  %conv = sext i32 %2 to i64, !dbg !3135
  store i64 %conv, i64* %retval, align 8, !dbg !3136
  br label %return, !dbg !3136

if.end3:                                          ; preds = %if.end
  %3 = load i32, i32* %value, align 4, !dbg !3137
  %tobool4 = icmp ne i32 %3, 0, !dbg !3137
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !3139

if.then5:                                         ; preds = %if.end3
  %4 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %state_usage.addr, align 8, !dbg !3140
  %disable = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %4, i32 0, i32 0, !dbg !3141
  %5 = load i64, i64* %disable, align 8, !dbg !3142
  %or = or i64 %5, 1, !dbg !3142
  store i64 %or, i64* %disable, align 8, !dbg !3142
  br label %if.end7, !dbg !3140

if.else:                                          ; preds = %if.end3
  %6 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %state_usage.addr, align 8, !dbg !3143
  %disable6 = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %6, i32 0, i32 0, !dbg !3144
  %7 = load i64, i64* %disable6, align 8, !dbg !3145
  %and = and i64 %7, -2, !dbg !3145
  store i64 %and, i64* %disable6, align 8, !dbg !3145
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %8 = load i64, i64* %size.addr, align 8, !dbg !3146
  store i64 %8, i64* %retval, align 8, !dbg !3147
  br label %return, !dbg !3147

return:                                           ; preds = %if.end7, %if.then2, %if.then
  %9 = load i64, i64* %retval, align 8, !dbg !3148
  ret i64 %9, !dbg !3148
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @capable(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @kstrtouint(i8*, i32, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_state_above(%struct.cpuidle_state* %state, %struct.cpuidle_state_usage* %state_usage, i8* %buf) #0 !dbg !3149 {
entry:
  %state.addr = alloca %struct.cpuidle_state*, align 8
  %state_usage.addr = alloca %struct.cpuidle_state_usage*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.cpuidle_state* %state, %struct.cpuidle_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state.addr, metadata !3150, metadata !DIExpression()), !dbg !3151
  store %struct.cpuidle_state_usage* %state_usage, %struct.cpuidle_state_usage** %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_usage** %state_usage.addr, metadata !3152, metadata !DIExpression()), !dbg !3151
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3153, metadata !DIExpression()), !dbg !3151
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3151
  %1 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %state_usage.addr, align 8, !dbg !3151
  %above = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %1, i32 0, i32 3, !dbg !3151
  %2 = load i64, i64* %above, align 8, !dbg !3151
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i64 %2) #6, !dbg !3151
  %conv = sext i32 %call to i64, !dbg !3151
  ret i64 %conv, !dbg !3151
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_state_below(%struct.cpuidle_state* %state, %struct.cpuidle_state_usage* %state_usage, i8* %buf) #0 !dbg !3154 {
entry:
  %state.addr = alloca %struct.cpuidle_state*, align 8
  %state_usage.addr = alloca %struct.cpuidle_state_usage*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.cpuidle_state* %state, %struct.cpuidle_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state.addr, metadata !3155, metadata !DIExpression()), !dbg !3156
  store %struct.cpuidle_state_usage* %state_usage, %struct.cpuidle_state_usage** %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_usage** %state_usage.addr, metadata !3157, metadata !DIExpression()), !dbg !3156
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3158, metadata !DIExpression()), !dbg !3156
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3156
  %1 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %state_usage.addr, align 8, !dbg !3156
  %below = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %1, i32 0, i32 4, !dbg !3156
  %2 = load i64, i64* %below, align 8, !dbg !3156
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i64 %2) #6, !dbg !3156
  %conv = sext i32 %call to i64, !dbg !3156
  ret i64 %conv, !dbg !3156
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_state_default_status(%struct.cpuidle_state* %state, %struct.cpuidle_state_usage* %state_usage, i8* %buf) #0 !dbg !3159 {
entry:
  %state.addr = alloca %struct.cpuidle_state*, align 8
  %state_usage.addr = alloca %struct.cpuidle_state_usage*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.cpuidle_state* %state, %struct.cpuidle_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state.addr, metadata !3160, metadata !DIExpression()), !dbg !3161
  store %struct.cpuidle_state_usage* %state_usage, %struct.cpuidle_state_usage** %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_usage** %state_usage.addr, metadata !3162, metadata !DIExpression()), !dbg !3163
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3164, metadata !DIExpression()), !dbg !3165
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3166
  %1 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state.addr, align 8, !dbg !3167
  %flags = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %1, i32 0, i32 4, !dbg !3168
  %2 = load i32, i32* %flags, align 8, !dbg !3168
  %conv = zext i32 %2 to i64, !dbg !3167
  %and = and i64 %conv, 16, !dbg !3169
  %tobool = icmp ne i64 %and, 0, !dbg !3167
  %3 = zext i1 %tobool to i64, !dbg !3167
  %cond = select i1 %tobool, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), !dbg !3167
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %cond) #6, !dbg !3170
  %conv1 = sext i32 %call to i64, !dbg !3170
  ret i64 %conv1, !dbg !3171
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_state_s2idle_usage(%struct.cpuidle_state* %state, %struct.cpuidle_state_usage* %state_usage, i8* %buf) #0 !dbg !3172 {
entry:
  %state.addr = alloca %struct.cpuidle_state*, align 8
  %state_usage.addr = alloca %struct.cpuidle_state_usage*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.cpuidle_state* %state, %struct.cpuidle_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state.addr, metadata !3173, metadata !DIExpression()), !dbg !3174
  store %struct.cpuidle_state_usage* %state_usage, %struct.cpuidle_state_usage** %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_usage** %state_usage.addr, metadata !3175, metadata !DIExpression()), !dbg !3174
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3176, metadata !DIExpression()), !dbg !3174
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3174
  %1 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %state_usage.addr, align 8, !dbg !3174
  %s2idle_usage = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %1, i32 0, i32 6, !dbg !3174
  %2 = load i64, i64* %s2idle_usage, align 8, !dbg !3174
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i64 %2) #6, !dbg !3174
  %conv = sext i32 %call to i64, !dbg !3174
  ret i64 %conv, !dbg !3174
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_state_s2idle_time(%struct.cpuidle_state* %state, %struct.cpuidle_state_usage* %state_usage, i8* %buf) #0 !dbg !3177 {
entry:
  %state.addr = alloca %struct.cpuidle_state*, align 8
  %state_usage.addr = alloca %struct.cpuidle_state_usage*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.cpuidle_state* %state, %struct.cpuidle_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state.addr, metadata !3178, metadata !DIExpression()), !dbg !3179
  store %struct.cpuidle_state_usage* %state_usage, %struct.cpuidle_state_usage** %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_usage** %state_usage.addr, metadata !3180, metadata !DIExpression()), !dbg !3179
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3181, metadata !DIExpression()), !dbg !3179
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3179
  %1 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %state_usage.addr, align 8, !dbg !3179
  %s2idle_time = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %1, i32 0, i32 7, !dbg !3179
  %2 = load i64, i64* %s2idle_time, align 8, !dbg !3179
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i64 %2) #6, !dbg !3179
  %conv = sext i32 %call to i64, !dbg !3179
  ret i64 %conv, !dbg !3179
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpuidle_remove_s2idle_attr_group(%struct.cpuidle_state_kobj* %kobj) #0 !dbg !3182 {
entry:
  %kobj.addr = alloca %struct.cpuidle_state_kobj*, align 8
  store %struct.cpuidle_state_kobj* %kobj, %struct.cpuidle_state_kobj** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state_kobj** %kobj.addr, metadata !3183, metadata !DIExpression()), !dbg !3184
  %0 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %kobj.addr, align 8, !dbg !3185
  %state = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %0, i32 0, i32 0, !dbg !3187
  %1 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !3187
  %enter_s2idle = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %1, i32 0, i32 10, !dbg !3188
  %2 = load i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)*, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)** %enter_s2idle, align 8, !dbg !3188
  %tobool = icmp ne i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* %2, null, !dbg !3185
  br i1 %tobool, label %if.then, label %if.end, !dbg !3189

if.then:                                          ; preds = %entry
  %3 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %kobj.addr, align 8, !dbg !3190
  %kobj1 = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %3, i32 0, i32 3, !dbg !3191
  call void @sysfs_remove_group(%struct.kobject* %kobj1, %struct.attribute_group* @cpuidle_state_s2idle_group) #6, !dbg !3192
  br label %if.end, !dbg !3192

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3193
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !3194 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3198, metadata !DIExpression()), !dbg !3203
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3205, metadata !DIExpression()), !dbg !3206
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3207, metadata !DIExpression()), !dbg !3208
  %0 = load i64, i64* %size.addr, align 8, !dbg !3209
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3211
  br i1 %1, label %if.then, label %if.end447, !dbg !3212

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3213
  %tobool = icmp ne i64 %2, 0, !dbg !3213
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3216

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3217
  br label %return, !dbg !3217

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3218
  %cmp = icmp ult i64 %3, 4096, !dbg !3220
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3221

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3222
  br label %return, !dbg !3222

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub = sub i64 %4, 1, !dbg !3223
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3223
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3223

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub4 = sub i64 %6, 1, !dbg !3223
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3223
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3223

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub6 = sub i64 %8, 1, !dbg !3223
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3223
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3223

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3223

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub9 = sub i64 %9, 1, !dbg !3223
  %and = and i64 %sub9, -9223372036854775808, !dbg !3223
  %tobool10 = icmp ne i64 %and, 0, !dbg !3223
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3223

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3223

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub13 = sub i64 %10, 1, !dbg !3223
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3223
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3223
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3223

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3223

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub18 = sub i64 %11, 1, !dbg !3223
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3223
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3223
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3223

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3223

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub23 = sub i64 %12, 1, !dbg !3223
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3223
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3223
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3223

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3223

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub28 = sub i64 %13, 1, !dbg !3223
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3223
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3223
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3223

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3223

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub33 = sub i64 %14, 1, !dbg !3223
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3223
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3223
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3223

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3223

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub38 = sub i64 %15, 1, !dbg !3223
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3223
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3223
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3223

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3223

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub43 = sub i64 %16, 1, !dbg !3223
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3223
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3223
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3223

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3223

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub48 = sub i64 %17, 1, !dbg !3223
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3223
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3223
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3223

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3223

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub53 = sub i64 %18, 1, !dbg !3223
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3223
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3223
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3223

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3223

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub58 = sub i64 %19, 1, !dbg !3223
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3223
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3223
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3223

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3223

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub63 = sub i64 %20, 1, !dbg !3223
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3223
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3223
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3223

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3223

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub68 = sub i64 %21, 1, !dbg !3223
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3223
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3223
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3223

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3223

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub73 = sub i64 %22, 1, !dbg !3223
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3223
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3223
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3223

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3223

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub78 = sub i64 %23, 1, !dbg !3223
  %and79 = and i64 %sub78, 562949953421312, !dbg !3223
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3223
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3223

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3223

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub83 = sub i64 %24, 1, !dbg !3223
  %and84 = and i64 %sub83, 281474976710656, !dbg !3223
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3223
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3223

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3223

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub88 = sub i64 %25, 1, !dbg !3223
  %and89 = and i64 %sub88, 140737488355328, !dbg !3223
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3223
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3223

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3223

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub93 = sub i64 %26, 1, !dbg !3223
  %and94 = and i64 %sub93, 70368744177664, !dbg !3223
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3223
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3223

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3223

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub98 = sub i64 %27, 1, !dbg !3223
  %and99 = and i64 %sub98, 35184372088832, !dbg !3223
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3223
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3223

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3223

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub103 = sub i64 %28, 1, !dbg !3223
  %and104 = and i64 %sub103, 17592186044416, !dbg !3223
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3223
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3223

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3223

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub108 = sub i64 %29, 1, !dbg !3223
  %and109 = and i64 %sub108, 8796093022208, !dbg !3223
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3223
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3223

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3223

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub113 = sub i64 %30, 1, !dbg !3223
  %and114 = and i64 %sub113, 4398046511104, !dbg !3223
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3223
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3223

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3223

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub118 = sub i64 %31, 1, !dbg !3223
  %and119 = and i64 %sub118, 2199023255552, !dbg !3223
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3223
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3223

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3223

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub123 = sub i64 %32, 1, !dbg !3223
  %and124 = and i64 %sub123, 1099511627776, !dbg !3223
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3223
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3223

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3223

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub128 = sub i64 %33, 1, !dbg !3223
  %and129 = and i64 %sub128, 549755813888, !dbg !3223
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3223
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3223

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3223

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub133 = sub i64 %34, 1, !dbg !3223
  %and134 = and i64 %sub133, 274877906944, !dbg !3223
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3223
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3223

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3223

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub138 = sub i64 %35, 1, !dbg !3223
  %and139 = and i64 %sub138, 137438953472, !dbg !3223
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3223
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3223

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3223

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub143 = sub i64 %36, 1, !dbg !3223
  %and144 = and i64 %sub143, 68719476736, !dbg !3223
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3223
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3223

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3223

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub148 = sub i64 %37, 1, !dbg !3223
  %and149 = and i64 %sub148, 34359738368, !dbg !3223
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3223
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3223

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3223

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub153 = sub i64 %38, 1, !dbg !3223
  %and154 = and i64 %sub153, 17179869184, !dbg !3223
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3223
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3223

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3223

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub158 = sub i64 %39, 1, !dbg !3223
  %and159 = and i64 %sub158, 8589934592, !dbg !3223
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3223
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3223

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3223

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub163 = sub i64 %40, 1, !dbg !3223
  %and164 = and i64 %sub163, 4294967296, !dbg !3223
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3223
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3223

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3223

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub168 = sub i64 %41, 1, !dbg !3223
  %and169 = and i64 %sub168, 2147483648, !dbg !3223
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3223
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3223

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3223

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub173 = sub i64 %42, 1, !dbg !3223
  %and174 = and i64 %sub173, 1073741824, !dbg !3223
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3223
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3223

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3223

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub178 = sub i64 %43, 1, !dbg !3223
  %and179 = and i64 %sub178, 536870912, !dbg !3223
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3223
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3223

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3223

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub183 = sub i64 %44, 1, !dbg !3223
  %and184 = and i64 %sub183, 268435456, !dbg !3223
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3223
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3223

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3223

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub188 = sub i64 %45, 1, !dbg !3223
  %and189 = and i64 %sub188, 134217728, !dbg !3223
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3223
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3223

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3223

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub193 = sub i64 %46, 1, !dbg !3223
  %and194 = and i64 %sub193, 67108864, !dbg !3223
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3223
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3223

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3223

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub198 = sub i64 %47, 1, !dbg !3223
  %and199 = and i64 %sub198, 33554432, !dbg !3223
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3223
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3223

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3223

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub203 = sub i64 %48, 1, !dbg !3223
  %and204 = and i64 %sub203, 16777216, !dbg !3223
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3223
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3223

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3223

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub208 = sub i64 %49, 1, !dbg !3223
  %and209 = and i64 %sub208, 8388608, !dbg !3223
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3223
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3223

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3223

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub213 = sub i64 %50, 1, !dbg !3223
  %and214 = and i64 %sub213, 4194304, !dbg !3223
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3223
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3223

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3223

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub218 = sub i64 %51, 1, !dbg !3223
  %and219 = and i64 %sub218, 2097152, !dbg !3223
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3223
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3223

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3223

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub223 = sub i64 %52, 1, !dbg !3223
  %and224 = and i64 %sub223, 1048576, !dbg !3223
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3223
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3223

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3223

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub228 = sub i64 %53, 1, !dbg !3223
  %and229 = and i64 %sub228, 524288, !dbg !3223
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3223
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3223

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3223

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub233 = sub i64 %54, 1, !dbg !3223
  %and234 = and i64 %sub233, 262144, !dbg !3223
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3223
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3223

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3223

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub238 = sub i64 %55, 1, !dbg !3223
  %and239 = and i64 %sub238, 131072, !dbg !3223
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3223
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3223

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3223

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub243 = sub i64 %56, 1, !dbg !3223
  %and244 = and i64 %sub243, 65536, !dbg !3223
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3223
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3223

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3223

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub248 = sub i64 %57, 1, !dbg !3223
  %and249 = and i64 %sub248, 32768, !dbg !3223
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3223
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3223

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3223

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub253 = sub i64 %58, 1, !dbg !3223
  %and254 = and i64 %sub253, 16384, !dbg !3223
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3223
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3223

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3223

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub258 = sub i64 %59, 1, !dbg !3223
  %and259 = and i64 %sub258, 8192, !dbg !3223
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3223
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3223

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3223

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub263 = sub i64 %60, 1, !dbg !3223
  %and264 = and i64 %sub263, 4096, !dbg !3223
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3223
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3223

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3223

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub268 = sub i64 %61, 1, !dbg !3223
  %and269 = and i64 %sub268, 2048, !dbg !3223
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3223
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3223

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3223

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub273 = sub i64 %62, 1, !dbg !3223
  %and274 = and i64 %sub273, 1024, !dbg !3223
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3223
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3223

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3223

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub278 = sub i64 %63, 1, !dbg !3223
  %and279 = and i64 %sub278, 512, !dbg !3223
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3223
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3223

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3223

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub283 = sub i64 %64, 1, !dbg !3223
  %and284 = and i64 %sub283, 256, !dbg !3223
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3223
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3223

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3223

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub288 = sub i64 %65, 1, !dbg !3223
  %and289 = and i64 %sub288, 128, !dbg !3223
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3223
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3223

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3223

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub293 = sub i64 %66, 1, !dbg !3223
  %and294 = and i64 %sub293, 64, !dbg !3223
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3223
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3223

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3223

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub298 = sub i64 %67, 1, !dbg !3223
  %and299 = and i64 %sub298, 32, !dbg !3223
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3223
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3223

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3223

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub303 = sub i64 %68, 1, !dbg !3223
  %and304 = and i64 %sub303, 16, !dbg !3223
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3223
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3223

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3223

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub308 = sub i64 %69, 1, !dbg !3223
  %and309 = and i64 %sub308, 8, !dbg !3223
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3223
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3223

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3223

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub313 = sub i64 %70, 1, !dbg !3223
  %and314 = and i64 %sub313, 4, !dbg !3223
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3223
  %71 = zext i1 %tobool315 to i64, !dbg !3223
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3223
  br label %cond.end, !dbg !3223

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3223
  br label %cond.end317, !dbg !3223

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3223
  br label %cond.end319, !dbg !3223

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3223
  br label %cond.end321, !dbg !3223

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3223
  br label %cond.end323, !dbg !3223

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3223
  br label %cond.end325, !dbg !3223

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3223
  br label %cond.end327, !dbg !3223

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3223
  br label %cond.end329, !dbg !3223

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3223
  br label %cond.end331, !dbg !3223

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3223
  br label %cond.end333, !dbg !3223

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3223
  br label %cond.end335, !dbg !3223

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3223
  br label %cond.end337, !dbg !3223

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3223
  br label %cond.end339, !dbg !3223

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3223
  br label %cond.end341, !dbg !3223

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3223
  br label %cond.end343, !dbg !3223

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3223
  br label %cond.end345, !dbg !3223

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3223
  br label %cond.end347, !dbg !3223

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3223
  br label %cond.end349, !dbg !3223

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3223
  br label %cond.end351, !dbg !3223

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3223
  br label %cond.end353, !dbg !3223

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3223
  br label %cond.end355, !dbg !3223

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3223
  br label %cond.end357, !dbg !3223

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3223
  br label %cond.end359, !dbg !3223

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3223
  br label %cond.end361, !dbg !3223

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3223
  br label %cond.end363, !dbg !3223

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3223
  br label %cond.end365, !dbg !3223

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3223
  br label %cond.end367, !dbg !3223

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3223
  br label %cond.end369, !dbg !3223

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3223
  br label %cond.end371, !dbg !3223

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3223
  br label %cond.end373, !dbg !3223

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3223
  br label %cond.end375, !dbg !3223

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3223
  br label %cond.end377, !dbg !3223

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3223
  br label %cond.end379, !dbg !3223

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3223
  br label %cond.end381, !dbg !3223

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3223
  br label %cond.end383, !dbg !3223

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3223
  br label %cond.end385, !dbg !3223

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3223
  br label %cond.end387, !dbg !3223

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3223
  br label %cond.end389, !dbg !3223

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3223
  br label %cond.end391, !dbg !3223

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3223
  br label %cond.end393, !dbg !3223

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3223
  br label %cond.end395, !dbg !3223

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3223
  br label %cond.end397, !dbg !3223

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3223
  br label %cond.end399, !dbg !3223

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3223
  br label %cond.end401, !dbg !3223

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3223
  br label %cond.end403, !dbg !3223

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3223
  br label %cond.end405, !dbg !3223

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3223
  br label %cond.end407, !dbg !3223

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3223
  br label %cond.end409, !dbg !3223

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3223
  br label %cond.end411, !dbg !3223

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3223
  br label %cond.end413, !dbg !3223

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3223
  br label %cond.end415, !dbg !3223

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3223
  br label %cond.end417, !dbg !3223

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3223
  br label %cond.end419, !dbg !3223

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3223
  br label %cond.end421, !dbg !3223

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3223
  br label %cond.end423, !dbg !3223

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3223
  br label %cond.end425, !dbg !3223

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3223
  br label %cond.end427, !dbg !3223

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3223
  br label %cond.end429, !dbg !3223

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3223
  br label %cond.end431, !dbg !3223

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3223
  br label %cond.end433, !dbg !3223

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3223
  br label %cond.end435, !dbg !3223

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3223
  br label %cond.end437, !dbg !3223

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3223
  br label %cond.end440, !dbg !3223

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3223

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3223
  br label %cond.end444, !dbg !3223

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3223
  %sub443 = sub i64 %72, 1, !dbg !3223
  %call = call i32 @__ilog2_u64(i64 %sub443) #8, !dbg !3223
  br label %cond.end444, !dbg !3223

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3223
  %sub446 = sub i32 %cond445, 12, !dbg !3224
  %add = add i32 %sub446, 1, !dbg !3225
  store i32 %add, i32* %retval, align 4, !dbg !3226
  br label %return, !dbg !3226

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3227
  %dec = add i64 %73, -1, !dbg !3227
  store i64 %dec, i64* %size.addr, align 8, !dbg !3227
  %74 = load i64, i64* %size.addr, align 8, !dbg !3228
  %shr = lshr i64 %74, 12, !dbg !3228
  store i64 %shr, i64* %size.addr, align 8, !dbg !3228
  %75 = load i64, i64* %size.addr, align 8, !dbg !3229
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3206
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3230
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3231
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #10, !dbg !3230, !srcloc !3232
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3230
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3233
  %add.i = add i32 %79, 1, !dbg !3234
  store i32 %add.i, i32* %retval, align 4, !dbg !3235
  br label %return, !dbg !3235

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3236
  ret i32 %80, !dbg !3236
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !3237 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3198, metadata !DIExpression()), !dbg !3241
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3205, metadata !DIExpression()), !dbg !3243
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3244, metadata !DIExpression()), !dbg !3245
  %0 = load i64, i64* %n.addr, align 8, !dbg !3246
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3243
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3247
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3248
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #10, !dbg !3247, !srcloc !3232
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3247
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3249
  %add.i = add i32 %4, 1, !dbg !3250
  %sub = sub i32 %add.i, 1, !dbg !3251
  ret i32 %sub, !dbg !3252
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3253 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3256, metadata !DIExpression()), !dbg !3257
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3258, metadata !DIExpression()), !dbg !3259
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3260, metadata !DIExpression()), !dbg !3261
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3262, metadata !DIExpression()), !dbg !3263
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3264
  ret i8* %0, !dbg !3265
}

; Function Attrs: noredzone
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpuidle_sysfs_release(%struct.kobject* %kobj) #0 !dbg !3266 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %kdev = alloca %struct.cpuidle_device_kobj*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.cpuidle_device_kobj*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3267, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device_kobj** %kdev, metadata !3269, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3271, metadata !DIExpression()), !dbg !3273
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3273
  %1 = bitcast %struct.kobject* %0 to i8*, !dbg !3273
  store i8* %1, i8** %__mptr, align 8, !dbg !3273
  br label %do.body, !dbg !3273

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3274

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3273
  %add.ptr = getelementptr i8, i8* %2, i64 -32, !dbg !3273
  %3 = bitcast i8* %add.ptr to %struct.cpuidle_device_kobj*, !dbg !3273
  store %struct.cpuidle_device_kobj* %3, %struct.cpuidle_device_kobj** %tmp, align 8, !dbg !3274
  %4 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %tmp, align 8, !dbg !3273
  store %struct.cpuidle_device_kobj* %4, %struct.cpuidle_device_kobj** %kdev, align 8, !dbg !3270
  %5 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %kdev, align 8, !dbg !3276
  %kobj_unregister = getelementptr inbounds %struct.cpuidle_device_kobj, %struct.cpuidle_device_kobj* %5, i32 0, i32 1, !dbg !3277
  call void @complete(%struct.completion* %kobj_unregister) #6, !dbg !3278
  ret void, !dbg !3279
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @cpuidle_show(%struct.kobject* %kobj, %struct.attribute* %attr, i8* %buf) #0 !dbg !3280 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %dev = alloca %struct.cpuidle_device*, align 8
  %cattr = alloca %struct.cpuidle_attr*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.cpuidle_attr*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3281, metadata !DIExpression()), !dbg !3282
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !3283, metadata !DIExpression()), !dbg !3284
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3285, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3287, metadata !DIExpression()), !dbg !3288
  store i32 -5, i32* %ret, align 4, !dbg !3288
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev, metadata !3289, metadata !DIExpression()), !dbg !3290
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3291
  %call = call %struct.cpuidle_device* @to_cpuidle_device(%struct.kobject* %0) #6, !dbg !3292
  store %struct.cpuidle_device* %call, %struct.cpuidle_device** %dev, align 8, !dbg !3290
  call void @llvm.dbg.declare(metadata %struct.cpuidle_attr** %cattr, metadata !3293, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3295, metadata !DIExpression()), !dbg !3297
  %1 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !3297
  %2 = bitcast %struct.attribute* %1 to i8*, !dbg !3297
  store i8* %2, i8** %__mptr, align 8, !dbg !3297
  br label %do.body, !dbg !3297

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3298

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3297
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !3297
  %4 = bitcast i8* %add.ptr to %struct.cpuidle_attr*, !dbg !3297
  store %struct.cpuidle_attr* %4, %struct.cpuidle_attr** %tmp, align 8, !dbg !3298
  %5 = load %struct.cpuidle_attr*, %struct.cpuidle_attr** %tmp, align 8, !dbg !3297
  store %struct.cpuidle_attr* %5, %struct.cpuidle_attr** %cattr, align 8, !dbg !3294
  %6 = load %struct.cpuidle_attr*, %struct.cpuidle_attr** %cattr, align 8, !dbg !3300
  %show = getelementptr inbounds %struct.cpuidle_attr, %struct.cpuidle_attr* %6, i32 0, i32 1, !dbg !3302
  %7 = load i64 (%struct.cpuidle_device*, i8*)*, i64 (%struct.cpuidle_device*, i8*)** %show, align 8, !dbg !3302
  %tobool = icmp ne i64 (%struct.cpuidle_device*, i8*)* %7, null, !dbg !3300
  br i1 %tobool, label %if.then, label %if.end, !dbg !3303

if.then:                                          ; preds = %do.end
  call void @mutex_lock(%struct.mutex* @cpuidle_lock) #6, !dbg !3304
  %8 = load %struct.cpuidle_attr*, %struct.cpuidle_attr** %cattr, align 8, !dbg !3306
  %show1 = getelementptr inbounds %struct.cpuidle_attr, %struct.cpuidle_attr* %8, i32 0, i32 1, !dbg !3307
  %9 = load i64 (%struct.cpuidle_device*, i8*)*, i64 (%struct.cpuidle_device*, i8*)** %show1, align 8, !dbg !3307
  %10 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !3308
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !3309
  %call2 = call i64 %9(%struct.cpuidle_device* %10, i8* %11) #6, !dbg !3306
  %conv = trunc i64 %call2 to i32, !dbg !3306
  store i32 %conv, i32* %ret, align 4, !dbg !3310
  call void @mutex_unlock(%struct.mutex* @cpuidle_lock) #6, !dbg !3311
  br label %if.end, !dbg !3312

if.end:                                           ; preds = %if.then, %do.end
  %12 = load i32, i32* %ret, align 4, !dbg !3313
  %conv3 = sext i32 %12 to i64, !dbg !3313
  ret i64 %conv3, !dbg !3314
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @cpuidle_store(%struct.kobject* %kobj, %struct.attribute* %attr, i8* %buf, i64 %count) #0 !dbg !3315 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %dev = alloca %struct.cpuidle_device*, align 8
  %cattr = alloca %struct.cpuidle_attr*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.cpuidle_attr*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3316, metadata !DIExpression()), !dbg !3317
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !3318, metadata !DIExpression()), !dbg !3319
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3320, metadata !DIExpression()), !dbg !3321
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !3322, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3324, metadata !DIExpression()), !dbg !3325
  store i32 -5, i32* %ret, align 4, !dbg !3325
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev, metadata !3326, metadata !DIExpression()), !dbg !3327
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3328
  %call = call %struct.cpuidle_device* @to_cpuidle_device(%struct.kobject* %0) #6, !dbg !3329
  store %struct.cpuidle_device* %call, %struct.cpuidle_device** %dev, align 8, !dbg !3327
  call void @llvm.dbg.declare(metadata %struct.cpuidle_attr** %cattr, metadata !3330, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3332, metadata !DIExpression()), !dbg !3334
  %1 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !3334
  %2 = bitcast %struct.attribute* %1 to i8*, !dbg !3334
  store i8* %2, i8** %__mptr, align 8, !dbg !3334
  br label %do.body, !dbg !3334

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3335

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3334
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !3334
  %4 = bitcast i8* %add.ptr to %struct.cpuidle_attr*, !dbg !3334
  store %struct.cpuidle_attr* %4, %struct.cpuidle_attr** %tmp, align 8, !dbg !3335
  %5 = load %struct.cpuidle_attr*, %struct.cpuidle_attr** %tmp, align 8, !dbg !3334
  store %struct.cpuidle_attr* %5, %struct.cpuidle_attr** %cattr, align 8, !dbg !3331
  %6 = load %struct.cpuidle_attr*, %struct.cpuidle_attr** %cattr, align 8, !dbg !3337
  %store = getelementptr inbounds %struct.cpuidle_attr, %struct.cpuidle_attr* %6, i32 0, i32 2, !dbg !3339
  %7 = load i64 (%struct.cpuidle_device*, i8*, i64)*, i64 (%struct.cpuidle_device*, i8*, i64)** %store, align 8, !dbg !3339
  %tobool = icmp ne i64 (%struct.cpuidle_device*, i8*, i64)* %7, null, !dbg !3337
  br i1 %tobool, label %if.then, label %if.end, !dbg !3340

if.then:                                          ; preds = %do.end
  call void @mutex_lock(%struct.mutex* @cpuidle_lock) #6, !dbg !3341
  %8 = load %struct.cpuidle_attr*, %struct.cpuidle_attr** %cattr, align 8, !dbg !3343
  %store1 = getelementptr inbounds %struct.cpuidle_attr, %struct.cpuidle_attr* %8, i32 0, i32 2, !dbg !3344
  %9 = load i64 (%struct.cpuidle_device*, i8*, i64)*, i64 (%struct.cpuidle_device*, i8*, i64)** %store1, align 8, !dbg !3344
  %10 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !3345
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !3346
  %12 = load i64, i64* %count.addr, align 8, !dbg !3347
  %call2 = call i64 %9(%struct.cpuidle_device* %10, i8* %11, i64 %12) #6, !dbg !3343
  %conv = trunc i64 %call2 to i32, !dbg !3343
  store i32 %conv, i32* %ret, align 4, !dbg !3348
  call void @mutex_unlock(%struct.mutex* @cpuidle_lock) #6, !dbg !3349
  br label %if.end, !dbg !3350

if.end:                                           ; preds = %if.then, %do.end
  %13 = load i32, i32* %ret, align 4, !dbg !3351
  %conv3 = sext i32 %13 to i64, !dbg !3351
  ret i64 %conv3, !dbg !3352
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.cpuidle_device* @to_cpuidle_device(%struct.kobject* %kobj) #0 !dbg !3353 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %kdev = alloca %struct.cpuidle_device_kobj*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.cpuidle_device_kobj*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3356, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device_kobj** %kdev, metadata !3358, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3360, metadata !DIExpression()), !dbg !3362
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3362
  %1 = bitcast %struct.kobject* %0 to i8*, !dbg !3362
  store i8* %1, i8** %__mptr, align 8, !dbg !3362
  br label %do.body, !dbg !3362

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3363

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3362
  %add.ptr = getelementptr i8, i8* %2, i64 -32, !dbg !3362
  %3 = bitcast i8* %add.ptr to %struct.cpuidle_device_kobj*, !dbg !3362
  store %struct.cpuidle_device_kobj* %3, %struct.cpuidle_device_kobj** %tmp, align 8, !dbg !3363
  %4 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %tmp, align 8, !dbg !3362
  store %struct.cpuidle_device_kobj* %4, %struct.cpuidle_device_kobj** %kdev, align 8, !dbg !3359
  %5 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %kdev, align 8, !dbg !3365
  %dev = getelementptr inbounds %struct.cpuidle_device_kobj, %struct.cpuidle_device_kobj* %5, i32 0, i32 0, !dbg !3366
  %6 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !3366
  ret %struct.cpuidle_device* %6, !dbg !3367
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind readnone }
attributes #9 = { noredzone nounwind }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2108, !2109, !2110, !2111}
!llvm.ident = !{!2112}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cpuidle_attr_group", scope: !2, file: !3, line: 115, type: !291, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !68, globals: !1682, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/cpuidle/sysfs.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !61}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !51, line: 53, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60}
!53 = !DIEnumerator(name: "KOBJ_ADD", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "KOBJ_MOVE", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4, isUnsigned: true)
!58 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5, isUnsigned: true)
!59 = !DIEnumerator(name: "KOBJ_BIND", value: 6, isUnsigned: true)
!60 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7, isUnsigned: true)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !62, line: 305, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!63 = !{!64, !65, !66, !67}
!64 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!65 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!66 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!67 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!68 = !{!69, !70, !72, !73, !266, !162, !1658, !1628, !1670}
!69 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !71, line: 148, baseType: !7)
!71 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_governor", file: !75, line: 258, size: 576, elements: !76)
!75 = !DIFile(filename: "./include/linux/cpuidle.h", directory: "/home/lizy2001/genbc/linux")
!76 = !{!77, !82, !88, !89, !1645, !1649, !1654}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !74, file: !75, line: 259, baseType: !78, size: 128)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 128, elements: !80)
!79 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!80 = !{!81}
!81 = !DISubrange(count: 16)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !74, file: !75, line: 260, baseType: !83, size: 128, offset: 128)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !71, line: 178, size: 128, elements: !84)
!84 = !{!85, !87}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !83, file: !71, line: 179, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !83, file: !71, line: 179, baseType: !86, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "rating", scope: !74, file: !75, line: 261, baseType: !7, size: 32, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !74, file: !75, line: 263, baseType: !90, size: 64, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!93, !94, !129}
!93 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver", file: !75, line: 122, size: 8704, elements: !96)
!96 = !{!97, !100, !104, !105, !1640, !1641, !1642, !1644}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !95, file: !75, line: 123, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !95, file: !75, line: 124, baseType: !101, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !103, line: 76, flags: DIFlagFwdDecl)
!103 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "bctimer", scope: !95, file: !75, line: 127, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !95, file: !75, line: 129, baseType: !106, size: 8320, offset: 192)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 8320, elements: !158)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state", file: !75, line: 48, size: 832, elements: !108)
!108 = !{!109, !110, !114, !120, !121, !122, !123, !124, !125, !1635, !1639}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !107, file: !75, line: 49, baseType: !78, size: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !107, file: !75, line: 50, baseType: !111, size: 256, offset: 128)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 256, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency_ns", scope: !107, file: !75, line: 52, baseType: !115, size: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !116, line: 23, baseType: !117)
!116 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !118, line: 31, baseType: !119)
!118 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!119 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency_ns", scope: !107, file: !75, line: 53, baseType: !115, size: 64, offset: 448)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !107, file: !75, line: 54, baseType: !7, size: 32, offset: 512)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency", scope: !107, file: !75, line: 55, baseType: !7, size: 32, offset: 544)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "power_usage", scope: !107, file: !75, line: 56, baseType: !93, size: 32, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency", scope: !107, file: !75, line: 57, baseType: !7, size: 32, offset: 608)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "enter", scope: !107, file: !75, line: 59, baseType: !126, size: 64, offset: 640)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!93, !129, !94, !93}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device", file: !75, line: 92, size: 6400, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !142, !143, !144, !145, !146, !160, !1624, !1627, !1634}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !130, file: !75, line: 93, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !130, file: !75, line: 94, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "poll_time_limit", scope: !130, file: !75, line: 95, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !130, file: !75, line: 96, baseType: !7, size: 32, offset: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next_hrtimer", scope: !130, file: !75, line: 97, baseType: !137, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !138, line: 29, baseType: !139)
!138 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !116, line: 22, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !118, line: 30, baseType: !141)
!141 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "last_state_idx", scope: !130, file: !75, line: 99, baseType: !93, size: 32, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "last_residency_ns", scope: !130, file: !75, line: 100, baseType: !115, size: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "poll_limit_ns", scope: !130, file: !75, line: 101, baseType: !115, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "forced_idle_latency_limit_ns", scope: !130, file: !75, line: 102, baseType: !115, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "states_usage", scope: !130, file: !75, line: 103, baseType: !147, size: 5120, offset: 384)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 5120, elements: !158)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_usage", file: !75, line: 35, size: 512, elements: !149)
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !148, file: !75, line: 36, baseType: !119, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !148, file: !75, line: 37, baseType: !119, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !148, file: !75, line: 38, baseType: !115, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "above", scope: !148, file: !75, line: 39, baseType: !119, size: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "below", scope: !148, file: !75, line: 40, baseType: !119, size: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "rejected", scope: !148, file: !75, line: 41, baseType: !119, size: 64, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_usage", scope: !148, file: !75, line: 43, baseType: !119, size: 64, offset: 384)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_time", scope: !148, file: !75, line: 44, baseType: !119, size: 64, offset: 448)
!158 = !{!159}
!159 = !DISubrange(count: 10)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "kobjs", scope: !130, file: !75, line: 104, baseType: !161, size: 640, offset: 5504)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 640, elements: !158)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_kobj", file: !3, line: 339, size: 896, elements: !164)
!164 = !{!165, !167, !169, !189, !1623}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !163, file: !3, line: 340, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "state_usage", scope: !163, file: !3, line: 341, baseType: !168, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_unregister", scope: !163, file: !3, line: 342, baseType: !170, size: 192, offset: 128)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !171, line: 26, size: 192, elements: !172)
!171 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!172 = !{!173, !174}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !170, file: !171, line: 27, baseType: !7, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !170, file: !171, line: 28, baseType: !175, size: 128, offset: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !176, line: 43, size: 128, elements: !177)
!176 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!177 = !{!178, !188}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !175, file: !176, line: 44, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !180, line: 29, baseType: !181)
!180 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !180, line: 20, elements: !182)
!182 = !{!183}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !181, file: !180, line: 21, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !185, line: 25, baseType: !186)
!185 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 25, elements: !187)
!187 = !{}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !175, file: !176, line: 45, baseType: !83, size: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !163, file: !3, line: 343, baseType: !190, size: 512, offset: 320)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !51, line: 64, size: 512, elements: !191)
!191 = !{!192, !193, !194, !196, !248, !1460, !1613, !1618, !1619, !1620, !1621, !1622}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !190, file: !51, line: 65, baseType: !98, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !190, file: !51, line: 66, baseType: !83, size: 128, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !190, file: !51, line: 67, baseType: !195, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !190, file: !51, line: 68, baseType: !197, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !51, line: 192, size: 704, elements: !199)
!199 = !{!200, !201, !209, !210}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !198, file: !51, line: 193, baseType: !83, size: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !198, file: !51, line: 194, baseType: !202, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !180, line: 83, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !180, line: 71, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, scope: !203, file: !180, line: 72, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !203, file: !180, line: 72, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !206, file: !180, line: 73, baseType: !181)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !198, file: !51, line: 195, baseType: !190, size: 512, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !198, file: !51, line: 196, baseType: !211, size: 64, offset: 640)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !51, line: 156, size: 192, elements: !214)
!214 = !{!215, !220, !225}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !213, file: !51, line: 157, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!93, !197, !195}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !51, line: 158, baseType: !221, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!98, !197, !195}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !213, file: !51, line: 159, baseType: !226, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!93, !197, !195, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !51, line: 148, size: 20736, elements: !232)
!232 = !{!233, !238, !242, !243, !247}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !231, file: !51, line: 149, baseType: !234, size: 192)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 192, elements: !236)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!236 = !{!237}
!237 = !DISubrange(count: 3)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !231, file: !51, line: 150, baseType: !239, size: 4096, offset: 192)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 4096, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !231, file: !51, line: 151, baseType: !93, size: 32, offset: 4288)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !231, file: !51, line: 152, baseType: !244, size: 16384, offset: 4320)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 16384, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 2048)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !231, file: !51, line: 153, baseType: !93, size: 32, offset: 20704)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !190, file: !51, line: 69, baseType: !249, size: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !51, line: 138, size: 448, elements: !251)
!251 = !{!252, !256, !285, !287, !1405, !1438, !1442}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !250, file: !51, line: 139, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !195}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !250, file: !51, line: 140, baseType: !257, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !260, line: 230, size: 128, elements: !261)
!260 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!261 = !{!262, !278}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !259, file: !260, line: 231, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!266, !195, !271, !235}
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !71, line: 60, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !268, line: 73, baseType: !269)
!268 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !268, line: 15, baseType: !270)
!270 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !260, line: 30, size: 128, elements: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !260, line: 31, baseType: !98, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !272, file: !260, line: 32, baseType: !276, size: 16, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !71, line: 19, baseType: !277)
!277 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !259, file: !260, line: 232, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!266, !195, !271, !98, !282}
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 55, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !268, line: 72, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !268, line: 16, baseType: !69)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !250, file: !51, line: 141, baseType: !286, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !250, file: !51, line: 142, baseType: !288, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !260, line: 84, size: 320, elements: !292)
!292 = !{!293, !294, !298, !1402, !1403}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !291, file: !260, line: 85, baseType: !98, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !291, file: !260, line: 86, baseType: !295, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!276, !195, !271, !93}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !291, file: !260, line: 88, baseType: !299, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!276, !195, !302, !93}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !260, line: 168, size: 448, elements: !304)
!304 = !{!305, !306, !307, !308, !317, !318}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !303, file: !260, line: 169, baseType: !272, size: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !303, file: !260, line: 170, baseType: !282, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !303, file: !260, line: 171, baseType: !72, size: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !303, file: !260, line: 172, baseType: !309, size: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!266, !312, !195, !302, !235, !315, !282}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !314, line: 526, flags: DIFlagFwdDecl)
!314 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !71, line: 46, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !268, line: 88, baseType: !141)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !303, file: !260, line: 174, baseType: !309, size: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !303, file: !260, line: 176, baseType: !319, size: 64, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!93, !312, !195, !302, !322}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !324, line: 305, size: 1472, elements: !325)
!324 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!325 = !{!326, !327, !328, !329, !330, !338, !339, !1376, !1382, !1383, !1388, !1389, !1392, !1396, !1397, !1398, !1399, !1400}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !323, file: !324, line: 308, baseType: !69, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !323, file: !324, line: 309, baseType: !69, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !323, file: !324, line: 313, baseType: !322, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !323, file: !324, line: 313, baseType: !322, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !323, file: !324, line: 315, baseType: !331, size: 192, align: 64, offset: 256)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !332, line: 24, size: 192, align: 64, elements: !333)
!332 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!333 = !{!334, !335, !337}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !331, file: !332, line: 25, baseType: !69, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !331, file: !332, line: 26, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !331, file: !332, line: 27, baseType: !336, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !323, file: !324, line: 323, baseType: !69, size: 64, offset: 448)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !323, file: !324, line: 327, baseType: !340, size: 64, offset: 512)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !324, line: 388, size: 7296, elements: !342)
!342 = !{!343, !1372}
!343 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !324, line: 389, baseType: !344, size: 7296)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !341, file: !324, line: 389, size: 7296, elements: !345)
!345 = !{!346, !347, !351, !352, !356, !357, !358, !359, !360, !368, !373, !374, !375, !376, !383, !384, !385, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !419, !427, !430, !462, !463, !1343, !1344, !1347, !1350, !1351, !1354, !1355, !1356, !1359, !1371}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !344, file: !324, line: 390, baseType: !322, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !344, file: !324, line: 391, baseType: !348, size: 64, offset: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !332, line: 31, size: 64, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !348, file: !332, line: 32, baseType: !336, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !344, file: !324, line: 392, baseType: !115, size: 64, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !344, file: !324, line: 394, baseType: !353, size: 64, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!69, !312, !69, !69, !69, !69}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !344, file: !324, line: 398, baseType: !69, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !344, file: !324, line: 399, baseType: !69, size: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !344, file: !324, line: 405, baseType: !69, size: 64, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !344, file: !324, line: 406, baseType: !69, size: 64, offset: 448)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !344, file: !324, line: 407, baseType: !361, size: 64, offset: 512)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !314, line: 286, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !314, line: 286, size: 64, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !363, file: !314, line: 286, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !367, line: 18, baseType: !69)
!367 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!368 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !344, file: !324, line: 416, baseType: !369, size: 32, offset: 576)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !71, line: 168, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 166, size: 32, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !370, file: !71, line: 167, baseType: !93, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !344, file: !324, line: 428, baseType: !369, size: 32, offset: 608)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !344, file: !324, line: 437, baseType: !369, size: 32, offset: 640)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !344, file: !324, line: 447, baseType: !369, size: 32, offset: 672)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !344, file: !324, line: 450, baseType: !377, size: 64, offset: 704)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !378, line: 13, baseType: !379)
!378 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !71, line: 175, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 173, size: 64, elements: !381)
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !380, file: !71, line: 174, baseType: !139, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !344, file: !324, line: 452, baseType: !93, size: 32, offset: 768)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !344, file: !324, line: 454, baseType: !202, offset: 800)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !344, file: !324, line: 457, baseType: !386, size: 256, offset: 832)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !387, line: 35, size: 256, elements: !388)
!387 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!388 = !{!389, !390, !391, !392}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !386, file: !387, line: 36, baseType: !377, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !386, file: !387, line: 42, baseType: !377, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !386, file: !387, line: 46, baseType: !179, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !386, file: !387, line: 47, baseType: !83, size: 128, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !344, file: !324, line: 459, baseType: !83, size: 128, offset: 1088)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !344, file: !324, line: 466, baseType: !69, size: 64, offset: 1216)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !344, file: !324, line: 467, baseType: !69, size: 64, offset: 1280)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !344, file: !324, line: 469, baseType: !69, size: 64, offset: 1344)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !344, file: !324, line: 470, baseType: !69, size: 64, offset: 1408)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !344, file: !324, line: 471, baseType: !379, size: 64, offset: 1472)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !344, file: !324, line: 472, baseType: !69, size: 64, offset: 1536)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !344, file: !324, line: 473, baseType: !69, size: 64, offset: 1600)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !344, file: !324, line: 474, baseType: !69, size: 64, offset: 1664)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !344, file: !324, line: 475, baseType: !69, size: 64, offset: 1728)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !344, file: !324, line: 477, baseType: !202, offset: 1792)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !344, file: !324, line: 478, baseType: !69, size: 64, offset: 1792)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !344, file: !324, line: 478, baseType: !69, size: 64, offset: 1856)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !344, file: !324, line: 478, baseType: !69, size: 64, offset: 1920)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !344, file: !324, line: 478, baseType: !69, size: 64, offset: 1984)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !344, file: !324, line: 479, baseType: !69, size: 64, offset: 2048)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !344, file: !324, line: 479, baseType: !69, size: 64, offset: 2112)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !344, file: !324, line: 479, baseType: !69, size: 64, offset: 2176)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !344, file: !324, line: 480, baseType: !69, size: 64, offset: 2240)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !344, file: !324, line: 480, baseType: !69, size: 64, offset: 2304)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !344, file: !324, line: 480, baseType: !69, size: 64, offset: 2368)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !344, file: !324, line: 480, baseType: !69, size: 64, offset: 2432)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !344, file: !324, line: 482, baseType: !416, size: 2816, offset: 2496)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 2816, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 44)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !344, file: !324, line: 488, baseType: !420, size: 256, offset: 5312)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !421, line: 60, size: 256, elements: !422)
!421 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !420, file: !421, line: 61, baseType: !424, size: 256)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 256, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 4)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !344, file: !324, line: 490, baseType: !428, size: 64, offset: 5568)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !324, line: 490, flags: DIFlagFwdDecl)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !344, file: !324, line: 493, baseType: !431, size: 896, offset: 5632)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !432, line: 53, baseType: !433)
!432 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !432, line: 13, size: 896, elements: !434)
!434 = !{!435, !436, !437, !438, !441, !442, !449, !450, !454, !455, !458}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !433, file: !432, line: 18, baseType: !115, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !433, file: !432, line: 28, baseType: !379, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !433, file: !432, line: 31, baseType: !386, size: 256, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !433, file: !432, line: 32, baseType: !439, size: 64, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !432, line: 32, flags: DIFlagFwdDecl)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !433, file: !432, line: 37, baseType: !277, size: 16, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !433, file: !432, line: 40, baseType: !443, size: 192, offset: 512)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !444, line: 53, size: 192, elements: !445)
!444 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!445 = !{!446, !447, !448}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !443, file: !444, line: 54, baseType: !377, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !443, file: !444, line: 55, baseType: !202, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !443, file: !444, line: 59, baseType: !83, size: 128, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !433, file: !432, line: 41, baseType: !72, size: 64, offset: 704)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !433, file: !432, line: 42, baseType: !451, size: 64, offset: 768)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !432, line: 42, flags: DIFlagFwdDecl)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !433, file: !432, line: 44, baseType: !369, size: 32, offset: 832)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !433, file: !432, line: 50, baseType: !456, size: 16, offset: 864)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !116, line: 19, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !118, line: 24, baseType: !277)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !433, file: !432, line: 51, baseType: !459, size: 16, offset: 880)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !116, line: 18, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !118, line: 23, baseType: !461)
!461 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !344, file: !324, line: 495, baseType: !69, size: 64, offset: 6528)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !344, file: !324, line: 497, baseType: !464, size: 64, offset: 6592)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !324, line: 381, size: 384, elements: !466)
!466 = !{!467, !468, !1342}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !465, file: !324, line: 382, baseType: !369, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !465, file: !324, line: 383, baseType: !469, size: 128, offset: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !324, line: 376, size: 128, elements: !470)
!470 = !{!471, !1340}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !469, file: !324, line: 377, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !474, line: 640, size: 48640, elements: !475)
!474 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!475 = !{!476, !484, !486, !487, !493, !494, !495, !496, !497, !498, !499, !500, !504, !522, !533, !626, !627, !628, !639, !640, !642, !643, !644, !645, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !724, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !780, !782, !783, !784, !786, !788, !789, !790, !791, !792, !798, !799, !800, !801, !802, !803, !804, !816, !821, !825, !826, !827, !830, !831, !834, !837, !840, !843, !846, !849, !852, !858, !859, !860, !866, !867, !868, !869, !870, !879, !880, !881, !882, !883, !888, !889, !890, !893, !894, !897, !900, !903, !906, !909, !912, !913, !993, !996, !999, !1000, !1003, !1004, !1005, !1011, !1012, !1013, !1026, !1027, !1028, !1040, !1045, !1048, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !473, file: !474, line: 646, baseType: !477, size: 128)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !478, line: 56, size: 128, elements: !479)
!478 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !477, file: !478, line: 57, baseType: !69, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !477, file: !478, line: 58, baseType: !482, size: 32, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !116, line: 21, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !118, line: 27, baseType: !7)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !473, file: !474, line: 649, baseType: !485, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !270)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !473, file: !474, line: 657, baseType: !72, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !473, file: !474, line: 658, baseType: !488, size: 32, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !489, line: 113, baseType: !490)
!489 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !489, line: 111, size: 32, elements: !491)
!491 = !{!492}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !490, file: !489, line: 112, baseType: !369, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !473, file: !474, line: 660, baseType: !7, size: 32, offset: 288)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !473, file: !474, line: 661, baseType: !7, size: 32, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !473, file: !474, line: 684, baseType: !93, size: 32, offset: 352)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !473, file: !474, line: 686, baseType: !93, size: 32, offset: 384)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !473, file: !474, line: 687, baseType: !93, size: 32, offset: 416)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !473, file: !474, line: 688, baseType: !93, size: 32, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !473, file: !474, line: 689, baseType: !7, size: 32, offset: 480)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !473, file: !474, line: 691, baseType: !501, size: 64, offset: 512)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!503 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !474, line: 691, flags: DIFlagFwdDecl)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !473, file: !474, line: 692, baseType: !505, size: 832, offset: 576)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !474, line: 451, size: 832, elements: !506)
!506 = !{!507, !512, !513, !514, !515, !516, !517, !518, !519, !520}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !505, file: !474, line: 453, baseType: !508, size: 128)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !474, line: 325, size: 128, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !508, file: !474, line: 326, baseType: !69, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !508, file: !474, line: 327, baseType: !482, size: 32, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !505, file: !474, line: 454, baseType: !331, size: 192, align: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !505, file: !474, line: 455, baseType: !83, size: 128, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !505, file: !474, line: 456, baseType: !7, size: 32, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !505, file: !474, line: 458, baseType: !115, size: 64, offset: 512)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !505, file: !474, line: 459, baseType: !115, size: 64, offset: 576)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !505, file: !474, line: 460, baseType: !115, size: 64, offset: 640)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !505, file: !474, line: 461, baseType: !115, size: 64, offset: 704)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !505, file: !474, line: 463, baseType: !115, size: 64, offset: 768)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !505, file: !474, line: 465, baseType: !521, offset: 832)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !474, line: 415, elements: !187)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !473, file: !474, line: 693, baseType: !523, size: 384, offset: 1408)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !474, line: 489, size: 384, elements: !524)
!524 = !{!525, !526, !527, !528, !529, !530, !531}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !523, file: !474, line: 490, baseType: !83, size: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !523, file: !474, line: 491, baseType: !69, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !523, file: !474, line: 492, baseType: !69, size: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !523, file: !474, line: 493, baseType: !7, size: 32, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !523, file: !474, line: 494, baseType: !277, size: 16, offset: 288)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !523, file: !474, line: 495, baseType: !277, size: 16, offset: 304)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !523, file: !474, line: 497, baseType: !532, size: 64, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !473, file: !474, line: 697, baseType: !534, size: 1792, offset: 1792)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !474, line: 507, size: 1792, elements: !535)
!535 = !{!536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !623, !624}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !534, file: !474, line: 508, baseType: !331, size: 192, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !534, file: !474, line: 515, baseType: !115, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !534, file: !474, line: 516, baseType: !115, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !534, file: !474, line: 517, baseType: !115, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !534, file: !474, line: 518, baseType: !115, size: 64, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !534, file: !474, line: 519, baseType: !115, size: 64, offset: 448)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !534, file: !474, line: 526, baseType: !139, size: 64, offset: 512)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !534, file: !474, line: 527, baseType: !115, size: 64, offset: 576)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !534, file: !474, line: 528, baseType: !7, size: 32, offset: 640)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !534, file: !474, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !534, file: !474, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !534, file: !474, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !534, file: !474, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !534, file: !474, line: 563, baseType: !550, size: 512, offset: 704)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !551)
!551 = !{!552, !558, !559, !564, !616, !620, !621, !622}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !550, file: !6, line: 119, baseType: !553, size: 256)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !554, line: 9, size: 256, elements: !555)
!554 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !553, file: !554, line: 10, baseType: !331, size: 192, align: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !553, file: !554, line: 11, baseType: !137, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !550, file: !6, line: 120, baseType: !137, size: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !550, file: !6, line: 121, baseType: !560, size: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!5, !563}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !550, file: !6, line: 122, baseType: !565, size: 64, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !567)
!567 = !{!568, !588, !589, !592, !602, !603, !611, !615}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !566, file: !6, line: 160, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !571)
!571 = !{!572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !570, file: !6, line: 215, baseType: !179)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !570, file: !6, line: 216, baseType: !7, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !570, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !570, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !570, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !570, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !570, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !570, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !570, file: !6, line: 233, baseType: !137, size: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !570, file: !6, line: 234, baseType: !563, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !570, file: !6, line: 235, baseType: !137, size: 64, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !570, file: !6, line: 236, baseType: !563, size: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !570, file: !6, line: 237, baseType: !585, size: 4096, offset: 512)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 4096, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 8)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !566, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !566, file: !6, line: 162, baseType: !590, size: 32, offset: 96)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !71, line: 27, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !268, line: 96, baseType: !93)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !566, file: !6, line: 163, baseType: !593, size: 32, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !594, line: 276, baseType: !595)
!594 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !594, line: 276, size: 32, elements: !596)
!596 = !{!597}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !595, file: !594, line: 276, baseType: !598, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !594, line: 70, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !594, line: 65, size: 32, elements: !600)
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !599, file: !594, line: 66, baseType: !7, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !566, file: !6, line: 164, baseType: !563, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !566, file: !6, line: 165, baseType: !604, size: 128, offset: 256)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !554, line: 14, size: 128, elements: !605)
!605 = !{!606}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !604, file: !554, line: 15, baseType: !607, size: 128)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !332, line: 125, size: 128, elements: !608)
!608 = !{!609, !610}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !607, file: !332, line: 126, baseType: !348, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !607, file: !332, line: 127, baseType: !336, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !566, file: !6, line: 166, baseType: !612, size: 64, offset: 384)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!137}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !566, file: !6, line: 167, baseType: !137, size: 64, offset: 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !550, file: !6, line: 123, baseType: !617, size: 8, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !116, line: 17, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !118, line: 21, baseType: !619)
!619 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !550, file: !6, line: 124, baseType: !617, size: 8, offset: 456)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !550, file: !6, line: 125, baseType: !617, size: 8, offset: 464)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !550, file: !6, line: 126, baseType: !617, size: 8, offset: 472)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !534, file: !474, line: 572, baseType: !550, size: 512, offset: 1216)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !534, file: !474, line: 580, baseType: !625, size: 64, offset: 1728)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !473, file: !474, line: 721, baseType: !7, size: 32, offset: 3584)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !473, file: !474, line: 722, baseType: !93, size: 32, offset: 3616)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !473, file: !474, line: 723, baseType: !629, size: 64, offset: 3648)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !632, line: 17, baseType: !633)
!632 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !632, line: 17, size: 64, elements: !634)
!634 = !{!635}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !633, file: !632, line: 17, baseType: !636, size: 64)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 64, elements: !637)
!637 = !{!638}
!638 = !DISubrange(count: 1)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !473, file: !474, line: 724, baseType: !631, size: 64, offset: 3712)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !473, file: !474, line: 749, baseType: !641, offset: 3776)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !474, line: 290, elements: !187)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !473, file: !474, line: 751, baseType: !83, size: 128, offset: 3776)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !473, file: !474, line: 757, baseType: !340, size: 64, offset: 3904)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !473, file: !474, line: 758, baseType: !340, size: 64, offset: 3968)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !473, file: !474, line: 761, baseType: !646, size: 320, offset: 4032)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !421, line: 34, size: 320, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !646, file: !421, line: 35, baseType: !115, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !646, file: !421, line: 36, baseType: !650, size: 256, offset: 64)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 256, elements: !425)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !473, file: !474, line: 766, baseType: !93, size: 32, offset: 4352)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !473, file: !474, line: 767, baseType: !93, size: 32, offset: 4384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !473, file: !474, line: 768, baseType: !93, size: 32, offset: 4416)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !473, file: !474, line: 770, baseType: !93, size: 32, offset: 4448)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !473, file: !474, line: 772, baseType: !69, size: 64, offset: 4480)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !473, file: !474, line: 775, baseType: !7, size: 32, offset: 4544)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !473, file: !474, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !473, file: !474, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !473, file: !474, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !473, file: !474, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !473, file: !474, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !473, file: !474, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !473, file: !474, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !473, file: !474, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !473, file: !474, line: 831, baseType: !69, size: 64, offset: 4672)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !473, file: !474, line: 833, baseType: !667, size: 384, offset: 4736)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !668)
!668 = !{!669, !674}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !667, file: !12, line: 26, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!270, !673}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, scope: !667, file: !12, line: 27, baseType: !675, size: 320, offset: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !667, file: !12, line: 27, size: 320, elements: !676)
!676 = !{!677, !687, !714}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !675, file: !12, line: 36, baseType: !678, size: 320)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !675, file: !12, line: 29, size: 320, elements: !679)
!679 = !{!680, !682, !683, !684, !685, !686}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !678, file: !12, line: 30, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !678, file: !12, line: 31, baseType: !482, size: 32, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !678, file: !12, line: 32, baseType: !482, size: 32, offset: 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !678, file: !12, line: 33, baseType: !482, size: 32, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !678, file: !12, line: 34, baseType: !115, size: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !678, file: !12, line: 35, baseType: !681, size: 64, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !675, file: !12, line: 46, baseType: !688, size: 192)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !675, file: !12, line: 38, size: 192, elements: !689)
!689 = !{!690, !691, !692, !713}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !688, file: !12, line: 39, baseType: !590, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !688, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, scope: !688, file: !12, line: 41, baseType: !693, size: 64, offset: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !688, file: !12, line: 41, size: 64, elements: !694)
!694 = !{!695, !703}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !693, file: !12, line: 42, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !698, line: 7, size: 128, elements: !699)
!698 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!699 = !{!700, !702}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !697, file: !698, line: 8, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !268, line: 93, baseType: !141)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !697, file: !698, line: 9, baseType: !141, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !693, file: !12, line: 43, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !706, line: 7, size: 64, elements: !707)
!706 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!707 = !{!708, !712}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !705, file: !706, line: 8, baseType: !709, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !706, line: 5, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !116, line: 20, baseType: !711)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !118, line: 26, baseType: !93)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !705, file: !706, line: 9, baseType: !710, size: 32, offset: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !688, file: !12, line: 45, baseType: !115, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !675, file: !12, line: 54, baseType: !715, size: 256)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !675, file: !12, line: 48, size: 256, elements: !716)
!716 = !{!717, !720, !721, !722, !723}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !715, file: !12, line: 49, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !715, file: !12, line: 50, baseType: !93, size: 32, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !715, file: !12, line: 51, baseType: !93, size: 32, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !715, file: !12, line: 52, baseType: !69, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !715, file: !12, line: 53, baseType: !69, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !473, file: !474, line: 835, baseType: !725, size: 32, offset: 5120)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !71, line: 22, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !268, line: 28, baseType: !93)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !473, file: !474, line: 836, baseType: !725, size: 32, offset: 5152)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !473, file: !474, line: 840, baseType: !69, size: 64, offset: 5184)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !473, file: !474, line: 849, baseType: !472, size: 64, offset: 5248)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !473, file: !474, line: 852, baseType: !472, size: 64, offset: 5312)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !473, file: !474, line: 857, baseType: !83, size: 128, offset: 5376)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !473, file: !474, line: 858, baseType: !83, size: 128, offset: 5504)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !473, file: !474, line: 859, baseType: !472, size: 64, offset: 5632)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !473, file: !474, line: 867, baseType: !83, size: 128, offset: 5696)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !473, file: !474, line: 868, baseType: !83, size: 128, offset: 5824)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !473, file: !474, line: 871, baseType: !737, size: 64, offset: 5952)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !739, line: 59, size: 768, elements: !740)
!739 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!740 = !{!741, !742, !743, !744, !755, !756, !763, !772}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !738, file: !739, line: 61, baseType: !488, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !738, file: !739, line: 62, baseType: !7, size: 32, offset: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !738, file: !739, line: 63, baseType: !202, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !738, file: !739, line: 65, baseType: !745, size: 256, offset: 64)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 256, elements: !425)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !71, line: 182, size: 64, elements: !747)
!747 = !{!748}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !746, file: !71, line: 183, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !71, line: 186, size: 128, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !750, file: !71, line: 187, baseType: !749, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !750, file: !71, line: 187, baseType: !754, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !738, file: !739, line: 66, baseType: !746, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !738, file: !739, line: 68, baseType: !757, size: 128, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !758, line: 40, baseType: !759)
!758 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !758, line: 36, size: 128, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !759, file: !758, line: 37, baseType: !202)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !759, file: !758, line: 38, baseType: !83, size: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !738, file: !739, line: 69, baseType: !764, size: 128, align: 64, offset: 512)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !71, line: 216, size: 128, align: 64, elements: !765)
!765 = !{!766, !768}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !764, file: !71, line: 217, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !764, file: !71, line: 218, baseType: !769, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !767}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !738, file: !739, line: 70, baseType: !773, size: 128, offset: 640)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 128, elements: !637)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !739, line: 54, size: 128, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !774, file: !739, line: 55, baseType: !93, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !774, file: !739, line: 56, baseType: !778, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !739, line: 56, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !473, file: !474, line: 872, baseType: !781, size: 512, offset: 6016)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !750, size: 512, elements: !425)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !473, file: !474, line: 873, baseType: !83, size: 128, offset: 6528)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !473, file: !474, line: 874, baseType: !83, size: 128, offset: 6656)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !473, file: !474, line: 876, baseType: !785, size: 64, offset: 6784)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !473, file: !474, line: 879, baseType: !787, size: 64, offset: 6848)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !473, file: !474, line: 882, baseType: !787, size: 64, offset: 6912)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !473, file: !474, line: 884, baseType: !115, size: 64, offset: 6976)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !473, file: !474, line: 885, baseType: !115, size: 64, offset: 7040)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !473, file: !474, line: 890, baseType: !115, size: 64, offset: 7104)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !473, file: !474, line: 891, baseType: !793, size: 128, offset: 7168)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !474, line: 242, size: 128, elements: !794)
!794 = !{!795, !796, !797}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !793, file: !474, line: 244, baseType: !115, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !793, file: !474, line: 245, baseType: !115, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !793, file: !474, line: 246, baseType: !179, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !473, file: !474, line: 900, baseType: !69, size: 64, offset: 7296)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !473, file: !474, line: 901, baseType: !69, size: 64, offset: 7360)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !473, file: !474, line: 904, baseType: !115, size: 64, offset: 7424)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !473, file: !474, line: 907, baseType: !115, size: 64, offset: 7488)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !473, file: !474, line: 910, baseType: !69, size: 64, offset: 7552)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !473, file: !474, line: 911, baseType: !69, size: 64, offset: 7616)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !473, file: !474, line: 914, baseType: !805, size: 640, offset: 7680)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !806, line: 123, size: 640, elements: !807)
!806 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!807 = !{!808, !814, !815}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !805, file: !806, line: 124, baseType: !809, size: 576)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, size: 576, elements: !236)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !806, line: 108, size: 192, elements: !811)
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !810, file: !806, line: 109, baseType: !115, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !810, file: !806, line: 110, baseType: !604, size: 128, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !805, file: !806, line: 125, baseType: !7, size: 32, offset: 576)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !805, file: !806, line: 126, baseType: !7, size: 32, offset: 608)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !473, file: !474, line: 917, baseType: !817, size: 192, offset: 8320)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !806, line: 134, size: 192, elements: !818)
!818 = !{!819, !820}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !817, file: !806, line: 135, baseType: !764, size: 128, align: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !817, file: !806, line: 136, baseType: !7, size: 32, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !473, file: !474, line: 923, baseType: !822, size: 64, offset: 8512)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !824)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !474, line: 923, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !473, file: !474, line: 926, baseType: !822, size: 64, offset: 8576)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !473, file: !474, line: 929, baseType: !822, size: 64, offset: 8640)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !473, file: !474, line: 933, baseType: !828, size: 64, offset: 8704)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !474, line: 933, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !473, file: !474, line: 943, baseType: !78, size: 128, offset: 8768)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !473, file: !474, line: 945, baseType: !832, size: 64, offset: 8896)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !474, line: 49, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !473, file: !474, line: 956, baseType: !835, size: 64, offset: 8960)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !474, line: 45, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !473, file: !474, line: 959, baseType: !838, size: 64, offset: 9024)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !474, line: 959, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !473, file: !474, line: 962, baseType: !841, size: 64, offset: 9088)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !474, line: 66, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !473, file: !474, line: 966, baseType: !844, size: 64, offset: 9152)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !474, line: 50, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !473, file: !474, line: 969, baseType: !847, size: 64, offset: 9216)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !806, line: 223, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !473, file: !474, line: 970, baseType: !850, size: 64, offset: 9280)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !474, line: 62, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !473, file: !474, line: 971, baseType: !853, size: 64, offset: 9344)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !854, line: 25, baseType: !855)
!854 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !854, line: 23, size: 64, elements: !856)
!856 = !{!857}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !855, file: !854, line: 24, baseType: !636, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !473, file: !474, line: 972, baseType: !853, size: 64, offset: 9408)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !473, file: !474, line: 974, baseType: !853, size: 64, offset: 9472)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !473, file: !474, line: 975, baseType: !861, size: 192, offset: 9536)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !862, line: 30, size: 192, elements: !863)
!862 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !861, file: !862, line: 31, baseType: !83, size: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !861, file: !862, line: 32, baseType: !853, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !473, file: !474, line: 976, baseType: !69, size: 64, offset: 9728)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !473, file: !474, line: 977, baseType: !282, size: 64, offset: 9792)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !473, file: !474, line: 978, baseType: !7, size: 32, offset: 9856)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !473, file: !474, line: 980, baseType: !767, size: 64, offset: 9920)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !473, file: !474, line: 989, baseType: !871, size: 128, offset: 9984)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !872, line: 35, size: 128, elements: !873)
!872 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!873 = !{!874, !875, !876}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !871, file: !872, line: 36, baseType: !93, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !871, file: !872, line: 37, baseType: !369, size: 32, offset: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !871, file: !872, line: 38, baseType: !877, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !872, line: 23, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !473, file: !474, line: 992, baseType: !115, size: 64, offset: 10112)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !473, file: !474, line: 993, baseType: !115, size: 64, offset: 10176)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !473, file: !474, line: 996, baseType: !202, offset: 10240)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !473, file: !474, line: 999, baseType: !179, offset: 10240)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !473, file: !474, line: 1001, baseType: !884, size: 64, offset: 10240)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !474, line: 636, size: 64, elements: !885)
!885 = !{!886}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !884, file: !474, line: 637, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !473, file: !474, line: 1005, baseType: !607, size: 128, offset: 10304)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !473, file: !474, line: 1007, baseType: !472, size: 64, offset: 10432)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !473, file: !474, line: 1009, baseType: !891, size: 64, offset: 10496)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !474, line: 1009, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !473, file: !474, line: 1043, baseType: !72, size: 64, offset: 10560)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !473, file: !474, line: 1046, baseType: !895, size: 64, offset: 10624)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !474, line: 41, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !473, file: !474, line: 1050, baseType: !898, size: 64, offset: 10688)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !474, line: 42, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !473, file: !474, line: 1054, baseType: !901, size: 64, offset: 10752)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !474, line: 55, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !473, file: !474, line: 1056, baseType: !904, size: 64, offset: 10816)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !474, line: 40, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !473, file: !474, line: 1058, baseType: !907, size: 64, offset: 10880)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !474, line: 47, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !473, file: !474, line: 1061, baseType: !910, size: 64, offset: 10944)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !474, line: 43, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !473, file: !474, line: 1064, baseType: !69, size: 64, offset: 11008)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !473, file: !474, line: 1065, baseType: !914, size: 64, offset: 11072)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !862, line: 14, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !862, line: 12, size: 384, elements: !917)
!917 = !{!918}
!918 = !DIDerivedType(tag: DW_TAG_member, scope: !916, file: !862, line: 13, baseType: !919, size: 384)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !916, file: !862, line: 13, size: 384, elements: !920)
!920 = !{!921, !922, !923, !924}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !919, file: !862, line: 13, baseType: !93, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !919, file: !862, line: 13, baseType: !93, size: 32, offset: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !919, file: !862, line: 13, baseType: !93, size: 32, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !919, file: !862, line: 13, baseType: !925, size: 256, offset: 128)
!925 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !926, line: 32, size: 256, elements: !927)
!926 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!927 = !{!928, !934, !947, !953, !962, !982, !987}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !925, file: !926, line: 37, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !926, line: 34, size: 64, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !929, file: !926, line: 35, baseType: !726, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !929, file: !926, line: 36, baseType: !933, size: 32, offset: 32)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !268, line: 49, baseType: !7)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !925, file: !926, line: 45, baseType: !935, size: 192)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !926, line: 40, size: 192, elements: !936)
!936 = !{!937, !939, !940, !946}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !935, file: !926, line: 41, baseType: !938, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !268, line: 95, baseType: !93)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !935, file: !926, line: 42, baseType: !93, size: 32, offset: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !935, file: !926, line: 43, baseType: !941, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !926, line: 11, baseType: !942)
!942 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !926, line: 8, size: 64, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !942, file: !926, line: 9, baseType: !93, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !942, file: !926, line: 10, baseType: !72, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !935, file: !926, line: 44, baseType: !93, size: 32, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !925, file: !926, line: 52, baseType: !948, size: 128)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !926, line: 48, size: 128, elements: !949)
!949 = !{!950, !951, !952}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !948, file: !926, line: 49, baseType: !726, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !948, file: !926, line: 50, baseType: !933, size: 32, offset: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !948, file: !926, line: 51, baseType: !941, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !925, file: !926, line: 61, baseType: !954, size: 256)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !926, line: 55, size: 256, elements: !955)
!955 = !{!956, !957, !958, !959, !961}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !954, file: !926, line: 56, baseType: !726, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !954, file: !926, line: 57, baseType: !933, size: 32, offset: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !954, file: !926, line: 58, baseType: !93, size: 32, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !954, file: !926, line: 59, baseType: !960, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !268, line: 94, baseType: !269)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !954, file: !926, line: 60, baseType: !960, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !925, file: !926, line: 95, baseType: !963, size: 256)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !926, line: 64, size: 256, elements: !964)
!964 = !{!965, !966}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !963, file: !926, line: 65, baseType: !72, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !963, file: !926, line: 77, baseType: !967, size: 192, offset: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !963, file: !926, line: 77, size: 192, elements: !968)
!968 = !{!969, !970, !977}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !967, file: !926, line: 82, baseType: !461, size: 16)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !967, file: !926, line: 88, baseType: !971, size: 192)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !967, file: !926, line: 84, size: 192, elements: !972)
!972 = !{!973, !975, !976}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !971, file: !926, line: 85, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 64, elements: !586)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !971, file: !926, line: 86, baseType: !72, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !971, file: !926, line: 87, baseType: !72, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !967, file: !926, line: 93, baseType: !978, size: 96)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !967, file: !926, line: 90, size: 96, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !978, file: !926, line: 91, baseType: !974, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !978, file: !926, line: 92, baseType: !483, size: 32, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !925, file: !926, line: 101, baseType: !983, size: 128)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !926, line: 98, size: 128, elements: !984)
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !983, file: !926, line: 99, baseType: !270, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !983, file: !926, line: 100, baseType: !93, size: 32, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !925, file: !926, line: 108, baseType: !988, size: 128)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !926, line: 104, size: 128, elements: !989)
!989 = !{!990, !991, !992}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !988, file: !926, line: 105, baseType: !72, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !988, file: !926, line: 106, baseType: !93, size: 32, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !988, file: !926, line: 107, baseType: !7, size: 32, offset: 96)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !473, file: !474, line: 1067, baseType: !994, offset: 11136)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !995, line: 12, elements: !187)
!995 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!996 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !473, file: !474, line: 1099, baseType: !997, size: 64, offset: 11136)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !474, line: 56, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !473, file: !474, line: 1103, baseType: !83, size: 128, offset: 11200)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !473, file: !474, line: 1104, baseType: !1001, size: 64, offset: 11328)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !474, line: 46, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !473, file: !474, line: 1105, baseType: !443, size: 192, offset: 11392)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !473, file: !474, line: 1106, baseType: !7, size: 32, offset: 11584)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !473, file: !474, line: 1109, baseType: !1006, size: 128, offset: 11648)
!1006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1007, size: 128, elements: !1009)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !474, line: 51, flags: DIFlagFwdDecl)
!1009 = !{!1010}
!1010 = !DISubrange(count: 2)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !473, file: !474, line: 1110, baseType: !443, size: 192, offset: 11776)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !473, file: !474, line: 1111, baseType: !83, size: 128, offset: 11968)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !473, file: !474, line: 1173, baseType: !1014, size: 64, offset: 12096)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1016, line: 62, size: 256, align: 256, elements: !1017)
!1016 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1017 = !{!1018, !1019, !1020, !1025}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1015, file: !1016, line: 75, baseType: !483, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1015, file: !1016, line: 90, baseType: !483, size: 32, offset: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1015, file: !1016, line: 124, baseType: !1021, size: 64, offset: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1015, file: !1016, line: 109, size: 64, elements: !1022)
!1022 = !{!1023, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1021, file: !1016, line: 110, baseType: !117, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1021, file: !1016, line: 112, baseType: !117, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1015, file: !1016, line: 144, baseType: !483, size: 32, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !473, file: !474, line: 1174, baseType: !482, size: 32, offset: 12160)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !473, file: !474, line: 1179, baseType: !69, size: 64, offset: 12224)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !473, file: !474, line: 1182, baseType: !1029, size: 128, offset: 12288)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !421, line: 76, size: 128, elements: !1030)
!1030 = !{!1031, !1036, !1039}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1029, file: !421, line: 85, baseType: !1032, size: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1033, line: 7, size: 64, elements: !1034)
!1033 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1034 = !{!1035}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1032, file: !1033, line: 12, baseType: !633, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1029, file: !421, line: 88, baseType: !1037, size: 8, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !71, line: 30, baseType: !1038)
!1038 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1029, file: !421, line: 95, baseType: !1037, size: 8, offset: 72)
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !473, file: !474, line: 1184, baseType: !1041, size: 128, offset: 12416)
!1041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !473, file: !474, line: 1184, size: 128, elements: !1042)
!1042 = !{!1043, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1041, file: !474, line: 1185, baseType: !488, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1041, file: !474, line: 1186, baseType: !764, size: 128, align: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !473, file: !474, line: 1190, baseType: !1046, size: 64, offset: 12544)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !474, line: 53, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !473, file: !474, line: 1192, baseType: !1049, size: 128, offset: 12608)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !421, line: 64, size: 128, elements: !1050)
!1050 = !{!1051, !1144, !1145}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1049, file: !421, line: 65, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !324, line: 68, size: 512, align: 128, elements: !1054)
!1054 = !{!1055, !1056, !1136, !1143}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1053, file: !324, line: 69, baseType: !69, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1053, file: !324, line: 77, baseType: !1057, size: 320, offset: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1053, file: !324, line: 77, size: 320, elements: !1058)
!1058 = !{!1059, !1068, !1073, !1101, !1109, !1115, !1128, !1135}
!1059 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !324, line: 78, baseType: !1060, size: 320)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !324, line: 78, size: 320, elements: !1061)
!1061 = !{!1062, !1063, !1066, !1067}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1060, file: !324, line: 84, baseType: !83, size: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1060, file: !324, line: 86, baseType: !1064, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !324, line: 26, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1060, file: !324, line: 87, baseType: !69, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1060, file: !324, line: 94, baseType: !69, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !324, line: 96, baseType: !1069, size: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !324, line: 96, size: 64, elements: !1070)
!1070 = !{!1071}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1069, file: !324, line: 101, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !71, line: 143, baseType: !115)
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !324, line: 103, baseType: !1074, size: 320)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !324, line: 103, size: 320, elements: !1075)
!1075 = !{!1076, !1086, !1089, !1090}
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !324, line: 104, baseType: !1077, size: 128)
!1077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1074, file: !324, line: 104, size: 128, elements: !1078)
!1078 = !{!1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1077, file: !324, line: 105, baseType: !83, size: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !324, line: 106, baseType: !1081, size: 128)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1077, file: !324, line: 106, size: 128, elements: !1082)
!1082 = !{!1083, !1084, !1085}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1081, file: !324, line: 107, baseType: !1052, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1081, file: !324, line: 109, baseType: !93, size: 32, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1081, file: !324, line: 110, baseType: !93, size: 32, offset: 96)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1074, file: !324, line: 117, baseType: !1087, size: 64, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !324, line: 117, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1074, file: !324, line: 119, baseType: !72, size: 64, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !324, line: 120, baseType: !1091, size: 64, offset: 256)
!1091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1074, file: !324, line: 120, size: 64, elements: !1092)
!1092 = !{!1093, !1094, !1095}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1091, file: !324, line: 121, baseType: !72, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1091, file: !324, line: 122, baseType: !69, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !324, line: 123, baseType: !1096, size: 32)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1091, file: !324, line: 123, size: 32, elements: !1097)
!1097 = !{!1098, !1099, !1100}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1096, file: !324, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1096, file: !324, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1096, file: !324, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1101 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !324, line: 130, baseType: !1102, size: 192)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !324, line: 130, size: 192, elements: !1103)
!1103 = !{!1104, !1105, !1106, !1107, !1108}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1102, file: !324, line: 131, baseType: !69, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1102, file: !324, line: 134, baseType: !619, size: 8, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1102, file: !324, line: 135, baseType: !619, size: 8, offset: 72)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1102, file: !324, line: 136, baseType: !369, size: 32, offset: 96)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1102, file: !324, line: 137, baseType: !7, size: 32, offset: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !324, line: 139, baseType: !1110, size: 256)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !324, line: 139, size: 256, elements: !1111)
!1111 = !{!1112, !1113, !1114}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1110, file: !324, line: 140, baseType: !69, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1110, file: !324, line: 141, baseType: !369, size: 32, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1110, file: !324, line: 143, baseType: !83, size: 128, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !324, line: 145, baseType: !1116, size: 256)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !324, line: 145, size: 256, elements: !1117)
!1117 = !{!1118, !1119, !1121, !1122, !1127}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1116, file: !324, line: 146, baseType: !69, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1116, file: !324, line: 147, baseType: !1120, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !314, line: 509, baseType: !1052)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1116, file: !324, line: 148, baseType: !69, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !324, line: 149, baseType: !1123, size: 64, offset: 192)
!1123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1116, file: !324, line: 149, size: 64, elements: !1124)
!1124 = !{!1125, !1126}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1123, file: !324, line: 150, baseType: !340, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1123, file: !324, line: 151, baseType: !369, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1116, file: !324, line: 156, baseType: !202, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !324, line: 159, baseType: !1129, size: 128)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !324, line: 159, size: 128, elements: !1130)
!1130 = !{!1131, !1134}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1129, file: !324, line: 161, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !324, line: 161, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1129, file: !324, line: 162, baseType: !72, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1057, file: !324, line: 176, baseType: !764, size: 128, align: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, scope: !1053, file: !324, line: 179, baseType: !1137, size: 32, offset: 384)
!1137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1053, file: !324, line: 179, size: 32, elements: !1138)
!1138 = !{!1139, !1140, !1141, !1142}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1137, file: !324, line: 184, baseType: !369, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1137, file: !324, line: 192, baseType: !7, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1137, file: !324, line: 194, baseType: !7, size: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1137, file: !324, line: 195, baseType: !93, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1053, file: !324, line: 199, baseType: !369, size: 32, offset: 416)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1049, file: !421, line: 67, baseType: !483, size: 32, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1049, file: !421, line: 68, baseType: !483, size: 32, offset: 96)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !473, file: !474, line: 1206, baseType: !93, size: 32, offset: 12736)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !473, file: !474, line: 1207, baseType: !93, size: 32, offset: 12768)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !473, file: !474, line: 1209, baseType: !69, size: 64, offset: 12800)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !473, file: !474, line: 1219, baseType: !115, size: 64, offset: 12864)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !473, file: !474, line: 1220, baseType: !115, size: 64, offset: 12928)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !473, file: !474, line: 1317, baseType: !93, size: 32, offset: 12992)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !473, file: !474, line: 1319, baseType: !472, size: 64, offset: 13056)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !473, file: !474, line: 1322, baseType: !1154, size: 64, offset: 13120)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1156, line: 9, flags: DIFlagFwdDecl)
!1156 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !473, file: !474, line: 1326, baseType: !488, size: 32, offset: 13184)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !473, file: !474, line: 1342, baseType: !72, size: 64, offset: 13248)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !473, file: !474, line: 1343, baseType: !117, size: 64, offset: 13312)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !473, file: !474, line: 1344, baseType: !115, size: 64, offset: 13376)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !473, file: !474, line: 1345, baseType: !117, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !473, file: !474, line: 1346, baseType: !117, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !473, file: !474, line: 1347, baseType: !117, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !473, file: !474, line: 1348, baseType: !764, size: 128, align: 64, offset: 13504)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !473, file: !474, line: 1358, baseType: !1166, size: 34816, offset: 13824)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1167, line: 485, size: 34816, elements: !1168)
!1167 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1168 = !{!1169, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1198, !1199, !1200, !1201, !1202, !1203, !1206, !1207, !1208}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1166, file: !1167, line: 487, baseType: !1170, size: 192)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1171, size: 192, elements: !236)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1172, line: 16, size: 64, elements: !1173)
!1172 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1173 = !{!1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1171, file: !1172, line: 17, baseType: !456, size: 16)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1171, file: !1172, line: 18, baseType: !456, size: 16, offset: 16)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1171, file: !1172, line: 19, baseType: !456, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1171, file: !1172, line: 19, baseType: !456, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1171, file: !1172, line: 19, baseType: !456, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1171, file: !1172, line: 19, baseType: !456, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1171, file: !1172, line: 19, baseType: !456, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1171, file: !1172, line: 20, baseType: !456, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1171, file: !1172, line: 20, baseType: !456, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1171, file: !1172, line: 20, baseType: !456, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1171, file: !1172, line: 20, baseType: !456, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1171, file: !1172, line: 20, baseType: !456, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1171, file: !1172, line: 20, baseType: !456, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1166, file: !1167, line: 491, baseType: !69, size: 64, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1166, file: !1167, line: 495, baseType: !277, size: 16, offset: 256)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1166, file: !1167, line: 496, baseType: !277, size: 16, offset: 272)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1166, file: !1167, line: 497, baseType: !277, size: 16, offset: 288)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1166, file: !1167, line: 498, baseType: !277, size: 16, offset: 304)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1166, file: !1167, line: 502, baseType: !69, size: 64, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1166, file: !1167, line: 503, baseType: !69, size: 64, offset: 384)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1166, file: !1167, line: 514, baseType: !1195, size: 256, offset: 448)
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1196, size: 256, elements: !425)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1167, line: 483, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1166, file: !1167, line: 516, baseType: !69, size: 64, offset: 704)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1166, file: !1167, line: 518, baseType: !69, size: 64, offset: 768)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1166, file: !1167, line: 520, baseType: !69, size: 64, offset: 832)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1166, file: !1167, line: 521, baseType: !69, size: 64, offset: 896)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1166, file: !1167, line: 522, baseType: !69, size: 64, offset: 960)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1166, file: !1167, line: 528, baseType: !1204, size: 64, offset: 1024)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1167, line: 10, flags: DIFlagFwdDecl)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1166, file: !1167, line: 535, baseType: !69, size: 64, offset: 1088)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1166, file: !1167, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1166, file: !1167, line: 540, baseType: !1209, size: 33280, offset: 1536)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1210, line: 317, size: 33280, elements: !1211)
!1210 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1211 = !{!1212, !1213, !1214}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1209, file: !1210, line: 330, baseType: !7, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1209, file: !1210, line: 337, baseType: !69, size: 64, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1209, file: !1210, line: 348, baseType: !1215, size: 32768, offset: 512)
!1215 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1210, line: 304, size: 32768, elements: !1216)
!1216 = !{!1217, !1232, !1269, !1319, !1336}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1215, file: !1210, line: 305, baseType: !1218, size: 896)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1210, line: 12, size: 896, elements: !1219)
!1219 = !{!1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1231}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1218, file: !1210, line: 13, baseType: !482, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1218, file: !1210, line: 14, baseType: !482, size: 32, offset: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1218, file: !1210, line: 15, baseType: !482, size: 32, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1218, file: !1210, line: 16, baseType: !482, size: 32, offset: 96)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1218, file: !1210, line: 17, baseType: !482, size: 32, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1218, file: !1210, line: 18, baseType: !482, size: 32, offset: 160)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1218, file: !1210, line: 19, baseType: !482, size: 32, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1218, file: !1210, line: 22, baseType: !1228, size: 640, offset: 224)
!1228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 640, elements: !1229)
!1229 = !{!1230}
!1230 = !DISubrange(count: 20)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1218, file: !1210, line: 25, baseType: !482, size: 32, offset: 864)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1215, file: !1210, line: 306, baseType: !1233, size: 4096, align: 128)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1210, line: 34, size: 4096, align: 128, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1254, !1255, !1256, !1258, !1260, !1264}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1233, file: !1210, line: 35, baseType: !456, size: 16)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1233, file: !1210, line: 36, baseType: !456, size: 16, offset: 16)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1233, file: !1210, line: 37, baseType: !456, size: 16, offset: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1233, file: !1210, line: 38, baseType: !456, size: 16, offset: 48)
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1233, file: !1210, line: 39, baseType: !1240, size: 128, offset: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1233, file: !1210, line: 39, size: 128, elements: !1241)
!1241 = !{!1242, !1247}
!1242 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !1210, line: 40, baseType: !1243, size: 128)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1240, file: !1210, line: 40, size: 128, elements: !1244)
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1243, file: !1210, line: 41, baseType: !115, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1243, file: !1210, line: 42, baseType: !115, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !1210, line: 44, baseType: !1248, size: 128)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1240, file: !1210, line: 44, size: 128, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1248, file: !1210, line: 45, baseType: !482, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1248, file: !1210, line: 46, baseType: !482, size: 32, offset: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1248, file: !1210, line: 47, baseType: !482, size: 32, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1248, file: !1210, line: 48, baseType: !482, size: 32, offset: 96)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1233, file: !1210, line: 51, baseType: !482, size: 32, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1233, file: !1210, line: 52, baseType: !482, size: 32, offset: 224)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1233, file: !1210, line: 55, baseType: !1257, size: 1024, offset: 256)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 1024, elements: !112)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1233, file: !1210, line: 58, baseType: !1259, size: 2048, offset: 1280)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 2048, elements: !240)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1233, file: !1210, line: 60, baseType: !1261, size: 384, offset: 3328)
!1261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 384, elements: !1262)
!1262 = !{!1263}
!1263 = !DISubrange(count: 12)
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !1233, file: !1210, line: 62, baseType: !1265, size: 384, offset: 3712)
!1265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1233, file: !1210, line: 62, size: 384, elements: !1266)
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1265, file: !1210, line: 63, baseType: !1261, size: 384)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1265, file: !1210, line: 64, baseType: !1261, size: 384)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1215, file: !1210, line: 307, baseType: !1270, size: 1088)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1210, line: 79, size: 1088, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1318}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1270, file: !1210, line: 80, baseType: !482, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1270, file: !1210, line: 81, baseType: !482, size: 32, offset: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1270, file: !1210, line: 82, baseType: !482, size: 32, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1270, file: !1210, line: 83, baseType: !482, size: 32, offset: 96)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1270, file: !1210, line: 84, baseType: !482, size: 32, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1270, file: !1210, line: 85, baseType: !482, size: 32, offset: 160)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1270, file: !1210, line: 86, baseType: !482, size: 32, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1270, file: !1210, line: 88, baseType: !1228, size: 640, offset: 224)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1270, file: !1210, line: 89, baseType: !617, size: 8, offset: 864)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1270, file: !1210, line: 90, baseType: !617, size: 8, offset: 872)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1270, file: !1210, line: 91, baseType: !617, size: 8, offset: 880)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1270, file: !1210, line: 92, baseType: !617, size: 8, offset: 888)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1270, file: !1210, line: 93, baseType: !617, size: 8, offset: 896)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1270, file: !1210, line: 94, baseType: !617, size: 8, offset: 904)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1270, file: !1210, line: 95, baseType: !1287, size: 64, offset: 960)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1289, line: 11, size: 128, elements: !1290)
!1289 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1288, file: !1289, line: 12, baseType: !270, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1288, file: !1289, line: 13, baseType: !1293, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1295, line: 56, size: 1344, elements: !1296)
!1295 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1296 = !{!1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1294, file: !1295, line: 61, baseType: !69, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1294, file: !1295, line: 62, baseType: !69, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1294, file: !1295, line: 63, baseType: !69, size: 64, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1294, file: !1295, line: 64, baseType: !69, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1294, file: !1295, line: 65, baseType: !69, size: 64, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1294, file: !1295, line: 66, baseType: !69, size: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1294, file: !1295, line: 68, baseType: !69, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1294, file: !1295, line: 69, baseType: !69, size: 64, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1294, file: !1295, line: 70, baseType: !69, size: 64, offset: 512)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1294, file: !1295, line: 71, baseType: !69, size: 64, offset: 576)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1294, file: !1295, line: 72, baseType: !69, size: 64, offset: 640)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1294, file: !1295, line: 73, baseType: !69, size: 64, offset: 704)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1294, file: !1295, line: 74, baseType: !69, size: 64, offset: 768)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1294, file: !1295, line: 75, baseType: !69, size: 64, offset: 832)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1294, file: !1295, line: 76, baseType: !69, size: 64, offset: 896)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1294, file: !1295, line: 81, baseType: !69, size: 64, offset: 960)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1294, file: !1295, line: 83, baseType: !69, size: 64, offset: 1024)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1294, file: !1295, line: 84, baseType: !69, size: 64, offset: 1088)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1294, file: !1295, line: 85, baseType: !69, size: 64, offset: 1152)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1294, file: !1295, line: 86, baseType: !69, size: 64, offset: 1216)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1294, file: !1295, line: 87, baseType: !69, size: 64, offset: 1280)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1270, file: !1210, line: 96, baseType: !482, size: 32, offset: 1024)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1215, file: !1210, line: 308, baseType: !1320, size: 4608, align: 512)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1210, line: 289, size: 4608, align: 512, elements: !1321)
!1321 = !{!1322, !1323, !1332}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1320, file: !1210, line: 290, baseType: !1233, size: 4096, align: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1320, file: !1210, line: 291, baseType: !1324, size: 512, offset: 4096)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1210, line: 268, size: 512, elements: !1325)
!1325 = !{!1326, !1327, !1328}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1324, file: !1210, line: 269, baseType: !115, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1324, file: !1210, line: 270, baseType: !115, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1324, file: !1210, line: 271, baseType: !1329, size: 384, offset: 128)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 384, elements: !1330)
!1330 = !{!1331}
!1331 = !DISubrange(count: 6)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1320, file: !1210, line: 292, baseType: !1333, offset: 4608)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !617, elements: !1334)
!1334 = !{!1335}
!1335 = !DISubrange(count: 0)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1215, file: !1210, line: 309, baseType: !1337, size: 32768)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !617, size: 32768, elements: !1338)
!1338 = !{!1339}
!1339 = !DISubrange(count: 4096)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !469, file: !324, line: 378, baseType: !1341, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !465, file: !324, line: 384, baseType: !170, size: 192, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !344, file: !324, line: 500, baseType: !202, offset: 6656)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !344, file: !324, line: 501, baseType: !1345, size: 64, offset: 6656)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !324, line: 387, flags: DIFlagFwdDecl)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !344, file: !324, line: 516, baseType: !1348, size: 64, offset: 6720)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !324, line: 516, flags: DIFlagFwdDecl)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !344, file: !324, line: 519, baseType: !312, size: 64, offset: 6784)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !344, file: !324, line: 521, baseType: !1352, size: 64, offset: 6848)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !324, line: 521, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !344, file: !324, line: 545, baseType: !369, size: 32, offset: 6912)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !344, file: !324, line: 548, baseType: !1037, size: 8, offset: 6944)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !344, file: !324, line: 550, baseType: !1357, offset: 6952)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1358, line: 142, elements: !187)
!1358 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !344, file: !324, line: 554, baseType: !1360, size: 256, offset: 6976)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1361, line: 102, size: 256, elements: !1362)
!1361 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1362 = !{!1363, !1364, !1365}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1360, file: !1361, line: 103, baseType: !377, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1360, file: !1361, line: 104, baseType: !83, size: 128, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1360, file: !1361, line: 105, baseType: !1366, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1361, line: 21, baseType: !1367)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{null, !1370}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !344, file: !324, line: 557, baseType: !482, size: 32, offset: 7232)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !341, file: !324, line: 565, baseType: !1373, offset: 7296)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, elements: !1374)
!1374 = !{!1375}
!1375 = !DISubrange(count: -1)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !323, file: !324, line: 333, baseType: !1377, size: 64, offset: 576)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !314, line: 284, baseType: !1378)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !314, line: 284, size: 64, elements: !1379)
!1379 = !{!1380}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1378, file: !314, line: 284, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !367, line: 19, baseType: !69)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !323, file: !324, line: 334, baseType: !69, size: 64, offset: 640)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !323, file: !324, line: 343, baseType: !1384, size: 256, offset: 704)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !323, file: !324, line: 340, size: 256, elements: !1385)
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1384, file: !324, line: 341, baseType: !331, size: 192, align: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1384, file: !324, line: 342, baseType: !69, size: 64, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !323, file: !324, line: 351, baseType: !83, size: 128, offset: 960)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !323, file: !324, line: 353, baseType: !1390, size: 64, offset: 1088)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !324, line: 353, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !323, file: !324, line: 356, baseType: !1393, size: 64, offset: 1152)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1395)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !324, line: 356, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !323, file: !324, line: 359, baseType: !69, size: 64, offset: 1216)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !323, file: !324, line: 361, baseType: !312, size: 64, offset: 1280)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !323, file: !324, line: 362, baseType: !72, size: 64, offset: 1344)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !323, file: !324, line: 365, baseType: !377, size: 64, offset: 1408)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !323, file: !324, line: 373, baseType: !1401, offset: 1472)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !324, line: 296, elements: !187)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !291, file: !260, line: 90, baseType: !286, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !291, file: !260, line: 91, baseType: !1404, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !250, file: !51, line: 143, baseType: !1406, size: 64, offset: 256)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!1409, !195}
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1412)
!1412 = !{!1413, !1414, !1418, !1422, !1430, !1434}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1411, file: !18, line: 40, baseType: !17, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1411, file: !18, line: 41, baseType: !1415, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!1037}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1411, file: !18, line: 42, baseType: !1419, size: 64, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!72}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1411, file: !18, line: 43, baseType: !1423, size: 64, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!1426, !1428}
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1411, file: !18, line: 44, baseType: !1431, size: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!1426}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1411, file: !18, line: 45, baseType: !1435, size: 64, offset: 320)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !72}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !250, file: !51, line: 144, baseType: !1439, size: 64, offset: 320)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!1426, !195}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !250, file: !51, line: 145, baseType: !1443, size: 64, offset: 384)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{null, !195, !1446, !1453}
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1448, line: 23, baseType: !1449)
!1448 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1448, line: 21, size: 32, elements: !1450)
!1450 = !{!1451}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1449, file: !1448, line: 22, baseType: !1452, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !71, line: 32, baseType: !933)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1448, line: 28, baseType: !1455)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1448, line: 26, size: 32, elements: !1456)
!1456 = !{!1457}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1455, file: !1448, line: 27, baseType: !1458, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !71, line: 33, baseType: !1459)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !268, line: 50, baseType: !7)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !190, file: !51, line: 70, baseType: !1461, size: 64, offset: 384)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1463, line: 123, size: 1024, elements: !1464)
!1463 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1464 = !{!1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1606, !1607, !1608, !1609, !1610}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1462, file: !1463, line: 124, baseType: !369, size: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1462, file: !1463, line: 125, baseType: !369, size: 32, offset: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1462, file: !1463, line: 135, baseType: !1461, size: 64, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1462, file: !1463, line: 136, baseType: !98, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1462, file: !1463, line: 138, baseType: !331, size: 192, align: 64, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1462, file: !1463, line: 140, baseType: !1426, size: 64, offset: 384)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1462, file: !1463, line: 141, baseType: !7, size: 32, offset: 448)
!1472 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !1463, line: 142, baseType: !1473, size: 256, offset: 512)
!1473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !1463, line: 142, size: 256, elements: !1474)
!1474 = !{!1475, !1529, !1533}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1473, file: !1463, line: 143, baseType: !1476, size: 192)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1463, line: 91, size: 192, elements: !1477)
!1477 = !{!1478, !1479, !1480}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1476, file: !1463, line: 92, baseType: !69, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1476, file: !1463, line: 94, baseType: !348, size: 64, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1476, file: !1463, line: 100, baseType: !1481, size: 64, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1463, line: 180, size: 704, elements: !1483)
!1483 = !{!1484, !1485, !1486, !1499, !1500, !1501, !1527, !1528}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1482, file: !1463, line: 182, baseType: !1461, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1482, file: !1463, line: 183, baseType: !7, size: 32, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1482, file: !1463, line: 186, baseType: !1487, size: 192, offset: 128)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1488, line: 19, size: 192, elements: !1489)
!1488 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1489 = !{!1490, !1497, !1498}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1487, file: !1488, line: 20, baseType: !1491, size: 128)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1492, line: 292, size: 128, elements: !1493)
!1492 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1493 = !{!1494, !1495, !1496}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1491, file: !1492, line: 293, baseType: !202)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1491, file: !1492, line: 295, baseType: !70, size: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1491, file: !1492, line: 296, baseType: !72, size: 64, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1487, file: !1488, line: 21, baseType: !7, size: 32, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1487, file: !1488, line: 22, baseType: !7, size: 32, offset: 160)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1482, file: !1463, line: 187, baseType: !482, size: 32, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1482, file: !1463, line: 188, baseType: !482, size: 32, offset: 352)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1482, file: !1463, line: 189, baseType: !1502, size: 64, offset: 384)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1463, line: 168, size: 320, elements: !1504)
!1504 = !{!1505, !1511, !1515, !1519, !1523}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1503, file: !1463, line: 169, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!93, !1509, !1481}
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !314, line: 539, flags: DIFlagFwdDecl)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1503, file: !1463, line: 171, baseType: !1512, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!93, !1461, !98, !276}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1503, file: !1463, line: 173, baseType: !1516, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!93, !1461}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1503, file: !1463, line: 174, baseType: !1520, size: 64, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!93, !1461, !1461, !98}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1503, file: !1463, line: 176, baseType: !1524, size: 64, offset: 256)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!93, !1509, !1461, !1481}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1482, file: !1463, line: 192, baseType: !83, size: 128, offset: 448)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1482, file: !1463, line: 194, baseType: !757, size: 128, offset: 576)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1473, file: !1463, line: 144, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1463, line: 103, size: 64, elements: !1531)
!1531 = !{!1532}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1530, file: !1463, line: 104, baseType: !1461, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1473, file: !1463, line: 145, baseType: !1534, size: 256)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1463, line: 107, size: 256, elements: !1535)
!1535 = !{!1536, !1601, !1604, !1605}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1534, file: !1463, line: 108, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1539)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1463, line: 217, size: 768, elements: !1540)
!1540 = !{!1541, !1561, !1565, !1569, !1574, !1578, !1582, !1586, !1587, !1588, !1589, !1597}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1539, file: !1463, line: 222, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!93, !1545}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1463, line: 197, size: 1088, elements: !1547)
!1547 = !{!1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1546, file: !1463, line: 199, baseType: !1461, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1546, file: !1463, line: 200, baseType: !312, size: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1546, file: !1463, line: 201, baseType: !1509, size: 64, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1546, file: !1463, line: 202, baseType: !72, size: 64, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1546, file: !1463, line: 205, baseType: !443, size: 192, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1546, file: !1463, line: 206, baseType: !443, size: 192, offset: 448)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1546, file: !1463, line: 207, baseType: !93, size: 32, offset: 640)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1546, file: !1463, line: 208, baseType: !83, size: 128, offset: 704)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1546, file: !1463, line: 209, baseType: !235, size: 64, offset: 832)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1546, file: !1463, line: 211, baseType: !282, size: 64, offset: 896)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1546, file: !1463, line: 212, baseType: !1037, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1546, file: !1463, line: 213, baseType: !1037, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1546, file: !1463, line: 214, baseType: !1393, size: 64, offset: 1024)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1539, file: !1463, line: 223, baseType: !1562, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{null, !1545}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1539, file: !1463, line: 236, baseType: !1566, size: 64, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!93, !1509, !72}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1539, file: !1463, line: 238, baseType: !1570, size: 64, offset: 192)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!72, !1509, !1573}
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1539, file: !1463, line: 239, baseType: !1575, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!72, !1509, !72, !1573}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1539, file: !1463, line: 240, baseType: !1579, size: 64, offset: 320)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{null, !1509, !72}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1539, file: !1463, line: 242, baseType: !1583, size: 64, offset: 384)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!266, !1545, !235, !282, !315}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1539, file: !1463, line: 252, baseType: !282, size: 64, offset: 448)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1539, file: !1463, line: 259, baseType: !1037, size: 8, offset: 512)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1539, file: !1463, line: 260, baseType: !1583, size: 64, offset: 576)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1539, file: !1463, line: 263, baseType: !1590, size: 64, offset: 640)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!1593, !1545, !1595}
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1594, line: 52, baseType: !7)
!1594 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1463, line: 27, flags: DIFlagFwdDecl)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1539, file: !1463, line: 266, baseType: !1598, size: 64, offset: 704)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!93, !1545, !322}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1534, file: !1463, line: 109, baseType: !1602, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1463, line: 31, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1534, file: !1463, line: 110, baseType: !315, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1534, file: !1463, line: 111, baseType: !1461, size: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1462, file: !1463, line: 148, baseType: !72, size: 64, offset: 768)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1462, file: !1463, line: 154, baseType: !115, size: 64, offset: 832)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1462, file: !1463, line: 156, baseType: !277, size: 16, offset: 896)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1462, file: !1463, line: 157, baseType: !276, size: 16, offset: 912)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1462, file: !1463, line: 158, baseType: !1611, size: 64, offset: 960)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1463, line: 32, flags: DIFlagFwdDecl)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !190, file: !51, line: 71, baseType: !1614, size: 32, offset: 448)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1615, line: 19, size: 32, elements: !1616)
!1615 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1616 = !{!1617}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1614, file: !1615, line: 20, baseType: !488, size: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !190, file: !51, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !190, file: !51, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !190, file: !51, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !190, file: !51, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !190, file: !51, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !163, file: !3, line: 344, baseType: !129, size: 64, offset: 832)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_driver", scope: !130, file: !75, line: 105, baseType: !1625, size: 64, offset: 6144)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver_kobj", file: !75, line: 90, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_dev", scope: !130, file: !75, line: 106, baseType: !1628, size: 64, offset: 6208)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device_kobj", file: !3, line: 146, size: 768, elements: !1630)
!1630 = !{!1631, !1632, !1633}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1629, file: !3, line: 147, baseType: !129, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_unregister", scope: !1629, file: !3, line: 148, baseType: !170, size: 192, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1629, file: !3, line: 149, baseType: !190, size: 512, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !130, file: !75, line: 107, baseType: !83, size: 128, offset: 6272)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "enter_dead", scope: !107, file: !75, line: 63, baseType: !1636, size: 64, offset: 704)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!93, !129, !93}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "enter_s2idle", scope: !107, file: !75, line: 73, baseType: !126, size: 64, offset: 768)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !95, file: !75, line: 130, baseType: !93, size: 32, offset: 8512)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "safe_state_index", scope: !95, file: !75, line: 131, baseType: !93, size: 32, offset: 8544)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !95, file: !75, line: 134, baseType: !1643, size: 64, offset: 8576)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !95, file: !75, line: 137, baseType: !98, size: 64, offset: 8640)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !74, file: !75, line: 265, baseType: !1646, size: 64, offset: 384)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{null, !94, !129}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !74, file: !75, line: 268, baseType: !1650, size: 64, offset: 448)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!93, !94, !129, !1653}
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "reflect", scope: !74, file: !75, line: 271, baseType: !1655, size: 64, offset: 512)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{null, !129, !93}
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_attr", file: !3, line: 208, size: 256, elements: !1660)
!1660 = !{!1661, !1662, !1666}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1659, file: !3, line: 209, baseType: !272, size: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1659, file: !3, line: 210, baseType: !1663, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!266, !166, !168, !235}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1659, file: !3, line: 212, baseType: !1667, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!266, !166, !168, !98, !282}
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_attr", file: !3, line: 138, size: 256, elements: !1672)
!1672 = !{!1673, !1674, !1678}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1671, file: !3, line: 139, baseType: !272, size: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1671, file: !3, line: 140, baseType: !1675, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!266, !129, !235}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1671, file: !3, line: 141, baseType: !1679, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!266, !129, !98, !282}
!1682 = !{!0, !1683, !1688, !2051, !2053, !2055, !2057, !2059, !2061, !2066, !2068, !2070, !2072, !2074, !2076, !2078, !2080, !2082, !2084, !2086, !2088, !2090, !2092, !2095, !2097, !2099, !2104, !2106}
!1683 = !DIGlobalVariableExpression(var: !1684, expr: !DIExpression())
!1684 = distinct !DIGlobalVariable(name: "cpuidle_attrs", scope: !2, file: !3, line: 107, type: !1685, isLocal: true, isDefinition: true)
!1685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 320, elements: !1686)
!1686 = !{!1687}
!1687 = !DISubrange(count: 5)
!1688 = !DIGlobalVariableExpression(var: !1689, expr: !DIExpression())
!1689 = distinct !DIGlobalVariable(name: "dev_attr_available_governors", scope: !2, file: !3, line: 101, type: !1690, isLocal: true, isDefinition: true)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !1691)
!1691 = !{!1692, !1693, !2047}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1690, file: !30, line: 100, baseType: !272, size: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1690, file: !30, line: 101, baseType: !1694, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!266, !1697, !2046, !235}
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !1699)
!1699 = !{!1700, !1701, !1702, !1705, !1706, !1757, !1832, !1833, !1834, !1835, !1836, !1845, !1950, !1963, !1966, !1967, !1971, !1973, !1974, !1975, !1979, !1985, !1986, !1989, !1993, !1996, !1999, !2000, !2001, !2002, !2034, !2035, !2036, !2039, !2042, !2043, !2044, !2045}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1698, file: !30, line: 462, baseType: !190, size: 512)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1698, file: !30, line: 463, baseType: !1697, size: 64, offset: 512)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1698, file: !30, line: 465, baseType: !1703, size: 64, offset: 576)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1698, file: !30, line: 467, baseType: !98, size: 64, offset: 640)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1698, file: !30, line: 468, baseType: !1707, size: 64, offset: 704)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1709)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1710)
!1710 = !{!1711, !1712, !1713, !1717, !1722, !1726}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1709, file: !30, line: 88, baseType: !98, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1709, file: !30, line: 89, baseType: !288, size: 64, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1709, file: !30, line: 90, baseType: !1714, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!93, !1697, !230}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1709, file: !30, line: 91, baseType: !1718, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!235, !1697, !1721, !1446, !1453}
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1709, file: !30, line: 93, baseType: !1723, size: 64, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !1697}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1709, file: !30, line: 95, baseType: !1727, size: 64, offset: 320)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1729)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1730)
!1730 = !{!1731, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1729, file: !37, line: 279, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!93, !1697}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1729, file: !37, line: 280, baseType: !1723, size: 64, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1729, file: !37, line: 281, baseType: !1732, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1729, file: !37, line: 282, baseType: !1732, size: 64, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1729, file: !37, line: 283, baseType: !1732, size: 64, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1729, file: !37, line: 284, baseType: !1732, size: 64, offset: 320)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1729, file: !37, line: 285, baseType: !1732, size: 64, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1729, file: !37, line: 286, baseType: !1732, size: 64, offset: 448)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1729, file: !37, line: 287, baseType: !1732, size: 64, offset: 512)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1729, file: !37, line: 288, baseType: !1732, size: 64, offset: 576)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1729, file: !37, line: 289, baseType: !1732, size: 64, offset: 640)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1729, file: !37, line: 290, baseType: !1732, size: 64, offset: 704)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1729, file: !37, line: 291, baseType: !1732, size: 64, offset: 768)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1729, file: !37, line: 292, baseType: !1732, size: 64, offset: 832)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1729, file: !37, line: 293, baseType: !1732, size: 64, offset: 896)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1729, file: !37, line: 294, baseType: !1732, size: 64, offset: 960)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1729, file: !37, line: 295, baseType: !1732, size: 64, offset: 1024)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1729, file: !37, line: 296, baseType: !1732, size: 64, offset: 1088)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1729, file: !37, line: 297, baseType: !1732, size: 64, offset: 1152)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1729, file: !37, line: 298, baseType: !1732, size: 64, offset: 1216)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1729, file: !37, line: 299, baseType: !1732, size: 64, offset: 1280)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1729, file: !37, line: 300, baseType: !1732, size: 64, offset: 1344)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1729, file: !37, line: 301, baseType: !1732, size: 64, offset: 1408)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1698, file: !30, line: 470, baseType: !1758, size: 64, offset: 768)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1760, line: 82, size: 1408, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1761 = !{!1762, !1763, !1764, !1765, !1766, !1767, !1768, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1825, !1828, !1831}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1759, file: !1760, line: 83, baseType: !98, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1759, file: !1760, line: 84, baseType: !98, size: 64, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1759, file: !1760, line: 85, baseType: !1697, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1759, file: !1760, line: 86, baseType: !288, size: 64, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1759, file: !1760, line: 87, baseType: !288, size: 64, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1759, file: !1760, line: 88, baseType: !288, size: 64, offset: 320)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1759, file: !1760, line: 90, baseType: !1769, size: 64, offset: 384)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!93, !1697, !1772}
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1774)
!1774 = !{!1775, !1776, !1777, !1778, !1779, !1780, !1781, !1785, !1789, !1790, !1791, !1792, !1793, !1801, !1802, !1803, !1804, !1805, !1806}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1773, file: !24, line: 96, baseType: !98, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1773, file: !24, line: 97, baseType: !1758, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1773, file: !24, line: 99, baseType: !101, size: 64, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1773, file: !24, line: 100, baseType: !98, size: 64, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1773, file: !24, line: 102, baseType: !1037, size: 8, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1773, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1773, file: !24, line: 105, baseType: !1782, size: 64, offset: 320)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1784)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !24, line: 105, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1773, file: !24, line: 106, baseType: !1786, size: 64, offset: 384)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1788)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !24, line: 106, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1773, file: !24, line: 108, baseType: !1732, size: 64, offset: 448)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1773, file: !24, line: 109, baseType: !1723, size: 64, offset: 512)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1773, file: !24, line: 110, baseType: !1732, size: 64, offset: 576)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1773, file: !24, line: 111, baseType: !1723, size: 64, offset: 640)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1773, file: !24, line: 112, baseType: !1794, size: 64, offset: 704)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!93, !1697, !1797}
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1798)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1799)
!1799 = !{!1800}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1798, file: !37, line: 51, baseType: !93, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1773, file: !24, line: 113, baseType: !1732, size: 64, offset: 768)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1773, file: !24, line: 114, baseType: !288, size: 64, offset: 832)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1773, file: !24, line: 115, baseType: !288, size: 64, offset: 896)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1773, file: !24, line: 117, baseType: !1727, size: 64, offset: 960)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1773, file: !24, line: 118, baseType: !1723, size: 64, offset: 1024)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1773, file: !24, line: 120, baseType: !1807, size: 64, offset: 1088)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1759, file: !1760, line: 91, baseType: !1714, size: 64, offset: 448)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1759, file: !1760, line: 92, baseType: !1732, size: 64, offset: 512)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1759, file: !1760, line: 93, baseType: !1723, size: 64, offset: 576)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1759, file: !1760, line: 94, baseType: !1732, size: 64, offset: 640)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1759, file: !1760, line: 95, baseType: !1723, size: 64, offset: 704)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1759, file: !1760, line: 97, baseType: !1732, size: 64, offset: 768)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1759, file: !1760, line: 98, baseType: !1732, size: 64, offset: 832)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1759, file: !1760, line: 100, baseType: !1794, size: 64, offset: 896)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1759, file: !1760, line: 101, baseType: !1732, size: 64, offset: 960)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1759, file: !1760, line: 103, baseType: !1732, size: 64, offset: 1024)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1759, file: !1760, line: 105, baseType: !1732, size: 64, offset: 1088)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1759, file: !1760, line: 107, baseType: !1727, size: 64, offset: 1152)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1759, file: !1760, line: 109, baseType: !1822, size: 64, offset: 1216)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1824)
!1824 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1760, line: 109, flags: DIFlagFwdDecl)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1759, file: !1760, line: 111, baseType: !1826, size: 64, offset: 1280)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1760, line: 111, flags: DIFlagFwdDecl)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1759, file: !1760, line: 112, baseType: !1829, offset: 1344)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1830, line: 187, elements: !187)
!1830 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1759, file: !1760, line: 114, baseType: !1037, size: 8, offset: 1344)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1698, file: !30, line: 471, baseType: !1772, size: 64, offset: 832)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1698, file: !30, line: 473, baseType: !72, size: 64, offset: 896)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1698, file: !30, line: 475, baseType: !72, size: 64, offset: 960)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1698, file: !30, line: 480, baseType: !443, size: 192, offset: 1024)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1698, file: !30, line: 484, baseType: !1837, size: 576, offset: 1216)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1838)
!1838 = !{!1839, !1840, !1841, !1842, !1843, !1844}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1837, file: !30, line: 362, baseType: !83, size: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1837, file: !30, line: 363, baseType: !83, size: 128, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1837, file: !30, line: 364, baseType: !83, size: 128, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1837, file: !30, line: 365, baseType: !83, size: 128, offset: 384)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1837, file: !30, line: 366, baseType: !1037, size: 8, offset: 512)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1837, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1698, file: !30, line: 485, baseType: !1846, size: 2304, offset: 1792)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1847)
!1847 = !{!1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1943, !1947}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1846, file: !37, line: 566, baseType: !1797, size: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1846, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1846, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1846, file: !37, line: 569, baseType: !1037, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1846, file: !37, line: 570, baseType: !1037, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1846, file: !37, line: 571, baseType: !1037, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1846, file: !37, line: 572, baseType: !1037, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1846, file: !37, line: 573, baseType: !1037, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1846, file: !37, line: 574, baseType: !1037, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1846, file: !37, line: 575, baseType: !1037, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1846, file: !37, line: 576, baseType: !1037, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1846, file: !37, line: 577, baseType: !482, size: 32, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1846, file: !37, line: 578, baseType: !202, offset: 96)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1846, file: !37, line: 580, baseType: !83, size: 128, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1846, file: !37, line: 581, baseType: !170, size: 192, offset: 256)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1846, file: !37, line: 582, baseType: !1864, size: 64, offset: 448)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1866, line: 43, size: 1472, elements: !1867)
!1866 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1867 = !{!1868, !1869, !1870, !1871, !1872, !1875, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1865, file: !1866, line: 44, baseType: !98, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1865, file: !1866, line: 45, baseType: !93, size: 32, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1865, file: !1866, line: 46, baseType: !83, size: 128, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1865, file: !1866, line: 47, baseType: !202, offset: 256)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1865, file: !1866, line: 48, baseType: !1873, size: 64, offset: 256)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1865, file: !1866, line: 49, baseType: !1876, size: 320, offset: 320)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1877, line: 11, size: 320, elements: !1878)
!1877 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1878 = !{!1879, !1880, !1881, !1886}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1876, file: !1877, line: 16, baseType: !750, size: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1876, file: !1877, line: 17, baseType: !69, size: 64, offset: 128)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1876, file: !1877, line: 18, baseType: !1882, size: 64, offset: 192)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{null, !1885}
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1876, file: !1877, line: 19, baseType: !482, size: 32, offset: 256)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1865, file: !1866, line: 50, baseType: !69, size: 64, offset: 640)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1865, file: !1866, line: 51, baseType: !137, size: 64, offset: 704)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1865, file: !1866, line: 52, baseType: !137, size: 64, offset: 768)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1865, file: !1866, line: 53, baseType: !137, size: 64, offset: 832)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1865, file: !1866, line: 54, baseType: !137, size: 64, offset: 896)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1865, file: !1866, line: 55, baseType: !137, size: 64, offset: 960)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1865, file: !1866, line: 56, baseType: !69, size: 64, offset: 1024)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1865, file: !1866, line: 57, baseType: !69, size: 64, offset: 1088)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1865, file: !1866, line: 58, baseType: !69, size: 64, offset: 1152)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1865, file: !1866, line: 59, baseType: !69, size: 64, offset: 1216)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1865, file: !1866, line: 60, baseType: !69, size: 64, offset: 1280)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1865, file: !1866, line: 61, baseType: !1697, size: 64, offset: 1344)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1865, file: !1866, line: 62, baseType: !1037, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1865, file: !1866, line: 63, baseType: !1037, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1846, file: !37, line: 583, baseType: !1037, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1846, file: !37, line: 584, baseType: !1037, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1846, file: !37, line: 585, baseType: !1037, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1846, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1846, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1846, file: !37, line: 592, baseType: !550, size: 512, offset: 576)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1846, file: !37, line: 593, baseType: !115, size: 64, offset: 1088)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1846, file: !37, line: 594, baseType: !1360, size: 256, offset: 1152)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1846, file: !37, line: 595, baseType: !757, size: 128, offset: 1408)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1846, file: !37, line: 596, baseType: !1873, size: 64, offset: 1536)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1846, file: !37, line: 597, baseType: !369, size: 32, offset: 1600)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1846, file: !37, line: 598, baseType: !369, size: 32, offset: 1632)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1846, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1846, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1846, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1846, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1846, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1846, file: !37, line: 604, baseType: !1037, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1846, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1846, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1846, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1846, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1846, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1846, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1846, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1846, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1846, file: !37, line: 613, baseType: !93, size: 32, offset: 1792)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1846, file: !37, line: 614, baseType: !93, size: 32, offset: 1824)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1846, file: !37, line: 615, baseType: !115, size: 64, offset: 1856)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1846, file: !37, line: 616, baseType: !115, size: 64, offset: 1920)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1846, file: !37, line: 617, baseType: !115, size: 64, offset: 1984)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1846, file: !37, line: 618, baseType: !115, size: 64, offset: 2048)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1846, file: !37, line: 620, baseType: !1934, size: 64, offset: 2112)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1936)
!1936 = !{!1937, !1938, !1939, !1940}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1935, file: !37, line: 537, baseType: !202)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1935, file: !37, line: 538, baseType: !7, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1935, file: !37, line: 540, baseType: !83, size: 128, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1935, file: !37, line: 543, baseType: !1941, size: 64, offset: 192)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1846, file: !37, line: 621, baseType: !1944, size: 64, offset: 2176)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{null, !1697, !710}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1846, file: !37, line: 622, baseType: !1948, size: 64, offset: 2240)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1698, file: !30, line: 486, baseType: !1951, size: 64, offset: 4096)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1953)
!1953 = !{!1954, !1955, !1956, !1960, !1961, !1962}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1952, file: !37, line: 643, baseType: !1729, size: 1472)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1952, file: !37, line: 644, baseType: !1732, size: 64, offset: 1472)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1952, file: !37, line: 645, baseType: !1957, size: 64, offset: 1536)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{null, !1697, !1037}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1952, file: !37, line: 646, baseType: !1732, size: 64, offset: 1600)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1952, file: !37, line: 647, baseType: !1723, size: 64, offset: 1664)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1952, file: !37, line: 648, baseType: !1723, size: 64, offset: 1728)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1698, file: !30, line: 493, baseType: !1964, size: 64, offset: 4160)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1698, file: !30, line: 499, baseType: !83, size: 128, offset: 4224)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1698, file: !30, line: 502, baseType: !1968, size: 64, offset: 4352)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1970)
!1970 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1698, file: !30, line: 504, baseType: !1972, size: 64, offset: 4416)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1698, file: !30, line: 505, baseType: !115, size: 64, offset: 4480)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1698, file: !30, line: 510, baseType: !115, size: 64, offset: 4544)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1698, file: !30, line: 511, baseType: !1976, size: 64, offset: 4608)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1978)
!1978 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1698, file: !30, line: 513, baseType: !1980, size: 64, offset: 4672)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1982)
!1982 = !{!1983, !1984}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1981, file: !30, line: 293, baseType: !7, size: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1981, file: !30, line: 294, baseType: !69, size: 64, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1698, file: !30, line: 515, baseType: !83, size: 128, offset: 4736)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1698, file: !30, line: 526, baseType: !1987, offset: 4864)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1988, line: 5, elements: !187)
!1988 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1698, file: !30, line: 528, baseType: !1990, size: 64, offset: 4864)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1992, line: 14, flags: DIFlagFwdDecl)
!1992 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1698, file: !30, line: 529, baseType: !1994, size: 64, offset: 4928)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1760, line: 22, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1698, file: !30, line: 534, baseType: !1997, size: 32, offset: 4992)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !71, line: 16, baseType: !1998)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !71, line: 13, baseType: !482)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1698, file: !30, line: 535, baseType: !482, size: 32, offset: 5024)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1698, file: !30, line: 537, baseType: !202, offset: 5056)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1698, file: !30, line: 538, baseType: !83, size: 128, offset: 5056)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1698, file: !30, line: 540, baseType: !2003, size: 64, offset: 5184)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2005, line: 54, size: 960, elements: !2006)
!2005 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2006 = !{!2007, !2008, !2009, !2010, !2011, !2012, !2013, !2017, !2021, !2022, !2023, !2024, !2028, !2032, !2033}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2004, file: !2005, line: 55, baseType: !98, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2004, file: !2005, line: 56, baseType: !101, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2004, file: !2005, line: 58, baseType: !288, size: 64, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2004, file: !2005, line: 59, baseType: !288, size: 64, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2004, file: !2005, line: 60, baseType: !195, size: 64, offset: 256)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2004, file: !2005, line: 62, baseType: !1714, size: 64, offset: 320)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2004, file: !2005, line: 63, baseType: !2014, size: 64, offset: 384)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!235, !1697, !1721}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2004, file: !2005, line: 65, baseType: !2018, size: 64, offset: 448)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{null, !2003}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2004, file: !2005, line: 66, baseType: !1723, size: 64, offset: 512)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2004, file: !2005, line: 68, baseType: !1732, size: 64, offset: 576)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2004, file: !2005, line: 70, baseType: !1409, size: 64, offset: 640)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2004, file: !2005, line: 71, baseType: !2025, size: 64, offset: 704)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!1426, !1697}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2004, file: !2005, line: 73, baseType: !2029, size: 64, offset: 768)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !1697, !1446, !1453}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2004, file: !2005, line: 75, baseType: !1727, size: 64, offset: 832)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2004, file: !2005, line: 77, baseType: !1826, size: 64, offset: 896)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1698, file: !30, line: 541, baseType: !288, size: 64, offset: 5248)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1698, file: !30, line: 543, baseType: !1723, size: 64, offset: 5312)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1698, file: !30, line: 544, baseType: !2037, size: 64, offset: 5376)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1698, file: !30, line: 545, baseType: !2040, size: 64, offset: 5440)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1698, file: !30, line: 547, baseType: !1037, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1698, file: !30, line: 548, baseType: !1037, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1698, file: !30, line: 549, baseType: !1037, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1698, file: !30, line: 550, baseType: !1037, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1690, file: !30, line: 103, baseType: !2048, size: 64, offset: 192)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!266, !1697, !2046, !98, !282}
!2051 = !DIGlobalVariableExpression(var: !2052, expr: !DIExpression())
!2052 = distinct !DIGlobalVariable(name: "dev_attr_current_driver", scope: !2, file: !3, line: 102, type: !1690, isLocal: true, isDefinition: true)
!2053 = !DIGlobalVariableExpression(var: !2054, expr: !DIExpression())
!2054 = distinct !DIGlobalVariable(name: "dev_attr_current_governor", scope: !2, file: !3, line: 103, type: !1690, isLocal: true, isDefinition: true)
!2055 = !DIGlobalVariableExpression(var: !2056, expr: !DIExpression())
!2056 = distinct !DIGlobalVariable(name: "dev_attr_current_governor_ro", scope: !2, file: !3, line: 105, type: !1690, isLocal: true, isDefinition: true)
!2057 = !DIGlobalVariableExpression(var: !2058, expr: !DIExpression())
!2058 = distinct !DIGlobalVariable(name: "ktype_state_cpuidle", scope: !2, file: !3, line: 449, type: !250, isLocal: true, isDefinition: true)
!2059 = !DIGlobalVariableExpression(var: !2060, expr: !DIExpression())
!2060 = distinct !DIGlobalVariable(name: "cpuidle_state_sysfs_ops", scope: !2, file: !3, line: 437, type: !258, isLocal: true, isDefinition: true)
!2061 = !DIGlobalVariableExpression(var: !2062, expr: !DIExpression())
!2062 = distinct !DIGlobalVariable(name: "cpuidle_state_default_attrs", scope: !2, file: !3, line: 323, type: !2063, isLocal: true, isDefinition: true)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 832, elements: !2064)
!2064 = !{!2065}
!2065 = !DISubrange(count: 13)
!2066 = !DIGlobalVariableExpression(var: !2067, expr: !DIExpression())
!2067 = distinct !DIGlobalVariable(name: "attr_name", scope: !2, file: !3, line: 310, type: !1659, isLocal: true, isDefinition: true)
!2068 = !DIGlobalVariableExpression(var: !2069, expr: !DIExpression())
!2069 = distinct !DIGlobalVariable(name: "attr_desc", scope: !2, file: !3, line: 311, type: !1659, isLocal: true, isDefinition: true)
!2070 = !DIGlobalVariableExpression(var: !2071, expr: !DIExpression())
!2071 = distinct !DIGlobalVariable(name: "attr_latency", scope: !2, file: !3, line: 312, type: !1659, isLocal: true, isDefinition: true)
!2072 = !DIGlobalVariableExpression(var: !2073, expr: !DIExpression())
!2073 = distinct !DIGlobalVariable(name: "attr_residency", scope: !2, file: !3, line: 313, type: !1659, isLocal: true, isDefinition: true)
!2074 = !DIGlobalVariableExpression(var: !2075, expr: !DIExpression())
!2075 = distinct !DIGlobalVariable(name: "attr_power", scope: !2, file: !3, line: 314, type: !1659, isLocal: true, isDefinition: true)
!2076 = !DIGlobalVariableExpression(var: !2077, expr: !DIExpression())
!2077 = distinct !DIGlobalVariable(name: "attr_usage", scope: !2, file: !3, line: 315, type: !1659, isLocal: true, isDefinition: true)
!2078 = !DIGlobalVariableExpression(var: !2079, expr: !DIExpression())
!2079 = distinct !DIGlobalVariable(name: "attr_rejected", scope: !2, file: !3, line: 316, type: !1659, isLocal: true, isDefinition: true)
!2080 = !DIGlobalVariableExpression(var: !2081, expr: !DIExpression())
!2081 = distinct !DIGlobalVariable(name: "attr_time", scope: !2, file: !3, line: 317, type: !1659, isLocal: true, isDefinition: true)
!2082 = !DIGlobalVariableExpression(var: !2083, expr: !DIExpression())
!2083 = distinct !DIGlobalVariable(name: "attr_disable", scope: !2, file: !3, line: 318, type: !1659, isLocal: true, isDefinition: true)
!2084 = !DIGlobalVariableExpression(var: !2085, expr: !DIExpression())
!2085 = distinct !DIGlobalVariable(name: "attr_above", scope: !2, file: !3, line: 319, type: !1659, isLocal: true, isDefinition: true)
!2086 = !DIGlobalVariableExpression(var: !2087, expr: !DIExpression())
!2087 = distinct !DIGlobalVariable(name: "attr_below", scope: !2, file: !3, line: 320, type: !1659, isLocal: true, isDefinition: true)
!2088 = !DIGlobalVariableExpression(var: !2089, expr: !DIExpression())
!2089 = distinct !DIGlobalVariable(name: "attr_default_status", scope: !2, file: !3, line: 321, type: !1659, isLocal: true, isDefinition: true)
!2090 = !DIGlobalVariableExpression(var: !2091, expr: !DIExpression())
!2091 = distinct !DIGlobalVariable(name: "cpuidle_state_s2idle_group", scope: !2, file: !3, line: 372, type: !290, isLocal: true, isDefinition: true)
!2092 = !DIGlobalVariableExpression(var: !2093, expr: !DIExpression())
!2093 = distinct !DIGlobalVariable(name: "cpuidle_state_s2idle_attrs", scope: !2, file: !3, line: 366, type: !2094, isLocal: true, isDefinition: true)
!2094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 192, elements: !236)
!2095 = !DIGlobalVariableExpression(var: !2096, expr: !DIExpression())
!2096 = distinct !DIGlobalVariable(name: "attr_s2idle_usage", scope: !2, file: !3, line: 363, type: !1659, isLocal: true, isDefinition: true)
!2097 = !DIGlobalVariableExpression(var: !2098, expr: !DIExpression())
!2098 = distinct !DIGlobalVariable(name: "attr_s2idle_time", scope: !2, file: !3, line: 364, type: !1659, isLocal: true, isDefinition: true)
!2099 = !DIGlobalVariableExpression(var: !2100, expr: !DIExpression())
!2100 = distinct !DIGlobalVariable(name: "__key", scope: !2101, file: !171, line: 88, type: !1829, isLocal: true, isDefinition: true)
!2101 = distinct !DISubprogram(name: "__init_completion", scope: !171, file: !171, line: 85, type: !2102, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{null, !785}
!2104 = !DIGlobalVariableExpression(var: !2105, expr: !DIExpression())
!2105 = distinct !DIGlobalVariable(name: "ktype_cpuidle", scope: !2, file: !3, line: 203, type: !250, isLocal: true, isDefinition: true)
!2106 = !DIGlobalVariableExpression(var: !2107, expr: !DIExpression())
!2107 = distinct !DIGlobalVariable(name: "cpuidle_sysfs_ops", scope: !2, file: !3, line: 190, type: !258, isLocal: true, isDefinition: true)
!2108 = !{i32 7, !"Dwarf Version", i32 4}
!2109 = !{i32 2, !"Debug Info Version", i32 3}
!2110 = !{i32 1, !"wchar_size", i32 2}
!2111 = !{i32 1, !"Code Model", i32 2}
!2112 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2113 = distinct !DISubprogram(name: "cpuidle_add_interface", scope: !3, file: !3, line: 124, type: !1733, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2114 = !DILocalVariable(name: "dev", arg: 1, scope: !2113, file: !3, line: 124, type: !1697)
!2115 = !DILocation(line: 124, column: 42, scope: !2113)
!2116 = !DILocation(line: 126, column: 29, scope: !2113)
!2117 = !DILocation(line: 126, column: 34, scope: !2113)
!2118 = !DILocation(line: 126, column: 9, scope: !2113)
!2119 = !DILocation(line: 126, column: 2, scope: !2113)
!2120 = distinct !DISubprogram(name: "cpuidle_remove_interface", scope: !3, file: !3, line: 133, type: !1724, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2121 = !DILocalVariable(name: "dev", arg: 1, scope: !2120, file: !3, line: 133, type: !1697)
!2122 = !DILocation(line: 133, column: 46, scope: !2120)
!2123 = !DILocation(line: 135, column: 22, scope: !2120)
!2124 = !DILocation(line: 135, column: 27, scope: !2120)
!2125 = !DILocation(line: 135, column: 2, scope: !2120)
!2126 = !DILocation(line: 136, column: 1, scope: !2120)
!2127 = distinct !DISubprogram(name: "cpuidle_add_device_sysfs", scope: !3, file: !3, line: 658, type: !2128, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!93, !129}
!2130 = !DILocalVariable(name: "device", arg: 1, scope: !2127, file: !3, line: 658, type: !129)
!2131 = !DILocation(line: 658, column: 53, scope: !2127)
!2132 = !DILocalVariable(name: "ret", scope: !2127, file: !3, line: 660, type: !93)
!2133 = !DILocation(line: 660, column: 6, scope: !2127)
!2134 = !DILocation(line: 662, column: 32, scope: !2127)
!2135 = !DILocation(line: 662, column: 8, scope: !2127)
!2136 = !DILocation(line: 662, column: 6, scope: !2127)
!2137 = !DILocation(line: 663, column: 6, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 663, column: 6)
!2139 = !DILocation(line: 663, column: 6, scope: !2127)
!2140 = !DILocation(line: 664, column: 10, scope: !2138)
!2141 = !DILocation(line: 664, column: 3, scope: !2138)
!2142 = !DILocation(line: 666, column: 33, scope: !2127)
!2143 = !DILocation(line: 666, column: 8, scope: !2127)
!2144 = !DILocation(line: 666, column: 6, scope: !2127)
!2145 = !DILocation(line: 667, column: 6, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 667, column: 6)
!2147 = !DILocation(line: 667, column: 6, scope: !2127)
!2148 = !DILocation(line: 668, column: 30, scope: !2146)
!2149 = !DILocation(line: 668, column: 3, scope: !2146)
!2150 = !DILocation(line: 669, column: 9, scope: !2127)
!2151 = !DILocation(line: 669, column: 2, scope: !2127)
!2152 = !DILocation(line: 670, column: 1, scope: !2127)
!2153 = distinct !DISubprogram(name: "cpuidle_add_state_sysfs", scope: !3, file: !3, line: 468, type: !2128, scopeLine: 469, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2154 = !DILocalVariable(name: "device", arg: 1, scope: !2153, file: !3, line: 468, type: !129)
!2155 = !DILocation(line: 468, column: 59, scope: !2153)
!2156 = !DILocalVariable(name: "i", scope: !2153, file: !3, line: 470, type: !93)
!2157 = !DILocation(line: 470, column: 6, scope: !2153)
!2158 = !DILocalVariable(name: "ret", scope: !2153, file: !3, line: 470, type: !93)
!2159 = !DILocation(line: 470, column: 9, scope: !2153)
!2160 = !DILocalVariable(name: "kobj", scope: !2153, file: !3, line: 471, type: !162)
!2161 = !DILocation(line: 471, column: 29, scope: !2153)
!2162 = !DILocalVariable(name: "kdev", scope: !2153, file: !3, line: 472, type: !1628)
!2163 = !DILocation(line: 472, column: 30, scope: !2153)
!2164 = !DILocation(line: 472, column: 37, scope: !2153)
!2165 = !DILocation(line: 472, column: 45, scope: !2153)
!2166 = !DILocalVariable(name: "drv", scope: !2153, file: !3, line: 473, type: !94)
!2167 = !DILocation(line: 473, column: 25, scope: !2153)
!2168 = !DILocation(line: 473, column: 54, scope: !2153)
!2169 = !DILocation(line: 473, column: 31, scope: !2153)
!2170 = !DILocation(line: 476, column: 9, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 476, column: 2)
!2172 = !DILocation(line: 476, column: 7, scope: !2171)
!2173 = !DILocation(line: 476, column: 14, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 476, column: 2)
!2175 = !DILocation(line: 476, column: 18, scope: !2174)
!2176 = !DILocation(line: 476, column: 23, scope: !2174)
!2177 = !DILocation(line: 476, column: 16, scope: !2174)
!2178 = !DILocation(line: 476, column: 2, scope: !2171)
!2179 = !DILocation(line: 477, column: 10, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 476, column: 41)
!2181 = !DILocation(line: 477, column: 8, scope: !2180)
!2182 = !DILocation(line: 478, column: 8, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 478, column: 7)
!2184 = !DILocation(line: 478, column: 7, scope: !2180)
!2185 = !DILocation(line: 479, column: 8, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2183, file: !3, line: 478, column: 14)
!2187 = !DILocation(line: 480, column: 4, scope: !2186)
!2188 = !DILocation(line: 482, column: 18, scope: !2180)
!2189 = !DILocation(line: 482, column: 23, scope: !2180)
!2190 = !DILocation(line: 482, column: 30, scope: !2180)
!2191 = !DILocation(line: 482, column: 3, scope: !2180)
!2192 = !DILocation(line: 482, column: 9, scope: !2180)
!2193 = !DILocation(line: 482, column: 15, scope: !2180)
!2194 = !DILocation(line: 483, column: 24, scope: !2180)
!2195 = !DILocation(line: 483, column: 32, scope: !2180)
!2196 = !DILocation(line: 483, column: 45, scope: !2180)
!2197 = !DILocation(line: 483, column: 3, scope: !2180)
!2198 = !DILocation(line: 483, column: 9, scope: !2180)
!2199 = !DILocation(line: 483, column: 21, scope: !2180)
!2200 = !DILocation(line: 484, column: 18, scope: !2180)
!2201 = !DILocation(line: 484, column: 3, scope: !2180)
!2202 = !DILocation(line: 484, column: 9, scope: !2180)
!2203 = !DILocation(line: 484, column: 16, scope: !2180)
!2204 = !DILocation(line: 485, column: 3, scope: !2180)
!2205 = !DILocation(line: 487, column: 31, scope: !2180)
!2206 = !DILocation(line: 487, column: 37, scope: !2180)
!2207 = !DILocation(line: 488, column: 10, scope: !2180)
!2208 = !DILocation(line: 488, column: 16, scope: !2180)
!2209 = !DILocation(line: 488, column: 33, scope: !2180)
!2210 = !DILocation(line: 487, column: 9, scope: !2180)
!2211 = !DILocation(line: 487, column: 7, scope: !2180)
!2212 = !DILocation(line: 489, column: 7, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 489, column: 7)
!2214 = !DILocation(line: 489, column: 7, scope: !2180)
!2215 = !DILocation(line: 490, column: 17, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 489, column: 12)
!2217 = !DILocation(line: 490, column: 23, scope: !2216)
!2218 = !DILocation(line: 490, column: 4, scope: !2216)
!2219 = !DILocation(line: 491, column: 4, scope: !2216)
!2220 = !DILocation(line: 493, column: 33, scope: !2180)
!2221 = !DILocation(line: 493, column: 3, scope: !2180)
!2222 = !DILocation(line: 494, column: 19, scope: !2180)
!2223 = !DILocation(line: 494, column: 25, scope: !2180)
!2224 = !DILocation(line: 494, column: 3, scope: !2180)
!2225 = !DILocation(line: 495, column: 22, scope: !2180)
!2226 = !DILocation(line: 495, column: 3, scope: !2180)
!2227 = !DILocation(line: 495, column: 11, scope: !2180)
!2228 = !DILocation(line: 495, column: 17, scope: !2180)
!2229 = !DILocation(line: 495, column: 20, scope: !2180)
!2230 = !DILocation(line: 496, column: 2, scope: !2180)
!2231 = !DILocation(line: 476, column: 37, scope: !2174)
!2232 = !DILocation(line: 476, column: 2, scope: !2174)
!2233 = distinct !{!2233, !2178, !2234}
!2234 = !DILocation(line: 496, column: 2, scope: !2171)
!2235 = !DILocation(line: 498, column: 2, scope: !2153)
!2236 = !DILabel(scope: !2153, name: "error_state", file: !3, line: 500)
!2237 = !DILocation(line: 500, column: 1, scope: !2153)
!2238 = !DILocation(line: 501, column: 11, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 501, column: 2)
!2240 = !DILocation(line: 501, column: 13, scope: !2239)
!2241 = !DILocation(line: 501, column: 9, scope: !2239)
!2242 = !DILocation(line: 501, column: 7, scope: !2239)
!2243 = !DILocation(line: 501, column: 18, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 501, column: 2)
!2245 = !DILocation(line: 501, column: 20, scope: !2244)
!2246 = !DILocation(line: 501, column: 2, scope: !2239)
!2247 = !DILocation(line: 502, column: 27, scope: !2244)
!2248 = !DILocation(line: 502, column: 35, scope: !2244)
!2249 = !DILocation(line: 502, column: 3, scope: !2244)
!2250 = !DILocation(line: 501, column: 27, scope: !2244)
!2251 = !DILocation(line: 501, column: 2, scope: !2244)
!2252 = distinct !{!2252, !2246, !2253}
!2253 = !DILocation(line: 502, column: 36, scope: !2239)
!2254 = !DILocation(line: 503, column: 9, scope: !2153)
!2255 = !DILocation(line: 503, column: 2, scope: !2153)
!2256 = !DILocation(line: 504, column: 1, scope: !2153)
!2257 = distinct !DISubprogram(name: "cpuidle_add_driver_sysfs", scope: !3, file: !3, line: 643, type: !2128, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2258 = !DILocalVariable(name: "dev", arg: 1, scope: !2257, file: !3, line: 643, type: !129)
!2259 = !DILocation(line: 643, column: 67, scope: !2257)
!2260 = !DILocation(line: 645, column: 2, scope: !2257)
!2261 = distinct !DISubprogram(name: "cpuidle_remove_state_sysfs", scope: !3, file: !3, line: 510, type: !2262, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{null, !129}
!2264 = !DILocalVariable(name: "device", arg: 1, scope: !2261, file: !3, line: 510, type: !129)
!2265 = !DILocation(line: 510, column: 63, scope: !2261)
!2266 = !DILocalVariable(name: "drv", scope: !2261, file: !3, line: 512, type: !94)
!2267 = !DILocation(line: 512, column: 25, scope: !2261)
!2268 = !DILocation(line: 512, column: 54, scope: !2261)
!2269 = !DILocation(line: 512, column: 31, scope: !2261)
!2270 = !DILocalVariable(name: "i", scope: !2261, file: !3, line: 513, type: !93)
!2271 = !DILocation(line: 513, column: 6, scope: !2261)
!2272 = !DILocation(line: 515, column: 9, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 515, column: 2)
!2274 = !DILocation(line: 515, column: 7, scope: !2273)
!2275 = !DILocation(line: 515, column: 14, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 515, column: 2)
!2277 = !DILocation(line: 515, column: 18, scope: !2276)
!2278 = !DILocation(line: 515, column: 23, scope: !2276)
!2279 = !DILocation(line: 515, column: 16, scope: !2276)
!2280 = !DILocation(line: 515, column: 2, scope: !2273)
!2281 = !DILocation(line: 516, column: 27, scope: !2276)
!2282 = !DILocation(line: 516, column: 35, scope: !2276)
!2283 = !DILocation(line: 516, column: 3, scope: !2276)
!2284 = !DILocation(line: 515, column: 37, scope: !2276)
!2285 = !DILocation(line: 515, column: 2, scope: !2276)
!2286 = distinct !{!2286, !2280, !2287}
!2287 = !DILocation(line: 516, column: 36, scope: !2273)
!2288 = !DILocation(line: 517, column: 1, scope: !2261)
!2289 = distinct !DISubprogram(name: "cpuidle_remove_device_sysfs", scope: !3, file: !3, line: 676, type: !2262, scopeLine: 677, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2290 = !DILocalVariable(name: "device", arg: 1, scope: !2289, file: !3, line: 676, type: !129)
!2291 = !DILocation(line: 676, column: 57, scope: !2289)
!2292 = !DILocation(line: 678, column: 30, scope: !2289)
!2293 = !DILocation(line: 678, column: 2, scope: !2289)
!2294 = !DILocation(line: 679, column: 29, scope: !2289)
!2295 = !DILocation(line: 679, column: 2, scope: !2289)
!2296 = !DILocation(line: 680, column: 1, scope: !2289)
!2297 = distinct !DISubprogram(name: "cpuidle_remove_driver_sysfs", scope: !3, file: !3, line: 648, type: !2262, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2298 = !DILocalVariable(name: "dev", arg: 1, scope: !2297, file: !3, line: 648, type: !129)
!2299 = !DILocation(line: 648, column: 71, scope: !2297)
!2300 = !DILocation(line: 651, column: 1, scope: !2297)
!2301 = distinct !DISubprogram(name: "cpuidle_add_sysfs", scope: !3, file: !3, line: 686, type: !2128, scopeLine: 687, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2302 = !DILocalVariable(name: "dev", arg: 1, scope: !2301, file: !3, line: 686, type: !129)
!2303 = !DILocation(line: 686, column: 46, scope: !2301)
!2304 = !DILocalVariable(name: "kdev", scope: !2301, file: !3, line: 688, type: !1628)
!2305 = !DILocation(line: 688, column: 30, scope: !2301)
!2306 = !DILocalVariable(name: "cpu_dev", scope: !2301, file: !3, line: 689, type: !1697)
!2307 = !DILocation(line: 689, column: 17, scope: !2301)
!2308 = !DILocation(line: 689, column: 57, scope: !2301)
!2309 = !DILocation(line: 689, column: 62, scope: !2301)
!2310 = !DILocation(line: 689, column: 42, scope: !2301)
!2311 = !DILocation(line: 689, column: 27, scope: !2301)
!2312 = !DILocalVariable(name: "error", scope: !2301, file: !3, line: 690, type: !93)
!2313 = !DILocation(line: 690, column: 6, scope: !2301)
!2314 = !DILocation(line: 701, column: 7, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 701, column: 6)
!2316 = !DILocation(line: 701, column: 6, scope: !2301)
!2317 = !DILocation(line: 702, column: 3, scope: !2315)
!2318 = !DILocation(line: 704, column: 9, scope: !2301)
!2319 = !DILocation(line: 704, column: 7, scope: !2301)
!2320 = !DILocation(line: 705, column: 7, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 705, column: 6)
!2322 = !DILocation(line: 705, column: 6, scope: !2301)
!2323 = !DILocation(line: 706, column: 3, scope: !2321)
!2324 = !DILocation(line: 707, column: 14, scope: !2301)
!2325 = !DILocation(line: 707, column: 2, scope: !2301)
!2326 = !DILocation(line: 707, column: 8, scope: !2301)
!2327 = !DILocation(line: 707, column: 12, scope: !2301)
!2328 = !DILocation(line: 708, column: 18, scope: !2301)
!2329 = !DILocation(line: 708, column: 2, scope: !2301)
!2330 = !DILocation(line: 708, column: 7, scope: !2301)
!2331 = !DILocation(line: 708, column: 16, scope: !2301)
!2332 = !DILocation(line: 710, column: 2, scope: !2301)
!2333 = !DILocation(line: 712, column: 32, scope: !2301)
!2334 = !DILocation(line: 712, column: 38, scope: !2301)
!2335 = !DILocation(line: 712, column: 61, scope: !2301)
!2336 = !DILocation(line: 712, column: 70, scope: !2301)
!2337 = !DILocation(line: 712, column: 10, scope: !2301)
!2338 = !DILocation(line: 712, column: 8, scope: !2301)
!2339 = !DILocation(line: 714, column: 6, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 714, column: 6)
!2341 = !DILocation(line: 714, column: 6, scope: !2301)
!2342 = !DILocation(line: 715, column: 16, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 714, column: 13)
!2344 = !DILocation(line: 715, column: 22, scope: !2343)
!2345 = !DILocation(line: 715, column: 3, scope: !2343)
!2346 = !DILocation(line: 716, column: 10, scope: !2343)
!2347 = !DILocation(line: 716, column: 3, scope: !2343)
!2348 = !DILocation(line: 719, column: 18, scope: !2301)
!2349 = !DILocation(line: 719, column: 24, scope: !2301)
!2350 = !DILocation(line: 719, column: 2, scope: !2301)
!2351 = !DILocation(line: 721, column: 2, scope: !2301)
!2352 = !DILocation(line: 722, column: 1, scope: !2301)
!2353 = distinct !DISubprogram(name: "kzalloc", scope: !62, file: !62, line: 662, type: !2354, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!72, !282, !70}
!2356 = !DILocalVariable(name: "s", arg: 1, scope: !2357, file: !62, line: 445, type: !1087)
!2357 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !62, file: !62, line: 445, type: !2358, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!72, !1087, !70, !282}
!2360 = !DILocation(line: 445, column: 72, scope: !2357, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 552, column: 10, scope: !2362, inlinedAt: !2365)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !62, line: 540, column: 34)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !62, line: 540, column: 6)
!2364 = distinct !DISubprogram(name: "kmalloc", scope: !62, file: !62, line: 538, type: !2354, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2365 = distinct !DILocation(line: 664, column: 9, scope: !2353)
!2366 = !DILocalVariable(name: "flags", arg: 2, scope: !2357, file: !62, line: 446, type: !70)
!2367 = !DILocation(line: 446, column: 9, scope: !2357, inlinedAt: !2361)
!2368 = !DILocalVariable(name: "size", arg: 3, scope: !2357, file: !62, line: 446, type: !282)
!2369 = !DILocation(line: 446, column: 23, scope: !2357, inlinedAt: !2361)
!2370 = !DILocalVariable(name: "ret", scope: !2357, file: !62, line: 448, type: !72)
!2371 = !DILocation(line: 448, column: 8, scope: !2357, inlinedAt: !2361)
!2372 = !DILocalVariable(name: "flags", arg: 1, scope: !2373, file: !62, line: 318, type: !70)
!2373 = distinct !DISubprogram(name: "kmalloc_type", scope: !62, file: !62, line: 318, type: !2374, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!61, !70}
!2376 = !DILocation(line: 318, column: 67, scope: !2373, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 553, column: 20, scope: !2362, inlinedAt: !2365)
!2378 = !DILocalVariable(name: "size", arg: 1, scope: !2379, file: !62, line: 346, type: !282)
!2379 = distinct !DISubprogram(name: "kmalloc_index", scope: !62, file: !62, line: 346, type: !2380, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!7, !282}
!2382 = !DILocation(line: 346, column: 58, scope: !2379, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 547, column: 11, scope: !2362, inlinedAt: !2365)
!2384 = !DILocalVariable(name: "size", arg: 1, scope: !2385, file: !62, line: 472, type: !282)
!2385 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !62, file: !62, line: 472, type: !2386, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!72, !282, !70, !7}
!2388 = !DILocation(line: 472, column: 28, scope: !2385, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 481, column: 9, scope: !2390, inlinedAt: !2391)
!2390 = distinct !DISubprogram(name: "kmalloc_large", scope: !62, file: !62, line: 478, type: !2354, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2391 = distinct !DILocation(line: 545, column: 11, scope: !2392, inlinedAt: !2365)
!2392 = distinct !DILexicalBlock(scope: !2362, file: !62, line: 544, column: 7)
!2393 = !DILocalVariable(name: "flags", arg: 2, scope: !2385, file: !62, line: 472, type: !70)
!2394 = !DILocation(line: 472, column: 40, scope: !2385, inlinedAt: !2389)
!2395 = !DILocalVariable(name: "order", arg: 3, scope: !2385, file: !62, line: 472, type: !7)
!2396 = !DILocation(line: 472, column: 60, scope: !2385, inlinedAt: !2389)
!2397 = !DILocalVariable(name: "size", arg: 1, scope: !2390, file: !62, line: 478, type: !282)
!2398 = !DILocation(line: 478, column: 51, scope: !2390, inlinedAt: !2391)
!2399 = !DILocalVariable(name: "flags", arg: 2, scope: !2390, file: !62, line: 478, type: !70)
!2400 = !DILocation(line: 478, column: 63, scope: !2390, inlinedAt: !2391)
!2401 = !DILocalVariable(name: "order", scope: !2390, file: !62, line: 480, type: !7)
!2402 = !DILocation(line: 480, column: 15, scope: !2390, inlinedAt: !2391)
!2403 = !DILocalVariable(name: "size", arg: 1, scope: !2364, file: !62, line: 538, type: !282)
!2404 = !DILocation(line: 538, column: 45, scope: !2364, inlinedAt: !2365)
!2405 = !DILocalVariable(name: "flags", arg: 2, scope: !2364, file: !62, line: 538, type: !70)
!2406 = !DILocation(line: 538, column: 57, scope: !2364, inlinedAt: !2365)
!2407 = !DILocalVariable(name: "index", scope: !2362, file: !62, line: 542, type: !7)
!2408 = !DILocation(line: 542, column: 16, scope: !2362, inlinedAt: !2365)
!2409 = !DILocalVariable(name: "size", arg: 1, scope: !2353, file: !62, line: 662, type: !282)
!2410 = !DILocation(line: 662, column: 36, scope: !2353)
!2411 = !DILocalVariable(name: "flags", arg: 2, scope: !2353, file: !62, line: 662, type: !70)
!2412 = !DILocation(line: 662, column: 48, scope: !2353)
!2413 = !DILocation(line: 664, column: 17, scope: !2353)
!2414 = !DILocation(line: 664, column: 23, scope: !2353)
!2415 = !DILocation(line: 664, column: 29, scope: !2353)
!2416 = !DILocation(line: 540, column: 27, scope: !2363, inlinedAt: !2365)
!2417 = !DILocation(line: 540, column: 6, scope: !2363, inlinedAt: !2365)
!2418 = !DILocation(line: 540, column: 6, scope: !2364, inlinedAt: !2365)
!2419 = !DILocation(line: 544, column: 7, scope: !2392, inlinedAt: !2365)
!2420 = !DILocation(line: 544, column: 12, scope: !2392, inlinedAt: !2365)
!2421 = !DILocation(line: 544, column: 7, scope: !2362, inlinedAt: !2365)
!2422 = !DILocation(line: 545, column: 25, scope: !2392, inlinedAt: !2365)
!2423 = !DILocation(line: 545, column: 31, scope: !2392, inlinedAt: !2365)
!2424 = !DILocation(line: 480, column: 33, scope: !2390, inlinedAt: !2391)
!2425 = !DILocation(line: 480, column: 23, scope: !2390, inlinedAt: !2391)
!2426 = !DILocation(line: 481, column: 29, scope: !2390, inlinedAt: !2391)
!2427 = !DILocation(line: 481, column: 35, scope: !2390, inlinedAt: !2391)
!2428 = !DILocation(line: 481, column: 42, scope: !2390, inlinedAt: !2391)
!2429 = !DILocation(line: 474, column: 23, scope: !2385, inlinedAt: !2389)
!2430 = !DILocation(line: 474, column: 29, scope: !2385, inlinedAt: !2389)
!2431 = !DILocation(line: 474, column: 36, scope: !2385, inlinedAt: !2389)
!2432 = !DILocation(line: 474, column: 9, scope: !2385, inlinedAt: !2389)
!2433 = !DILocation(line: 545, column: 4, scope: !2392, inlinedAt: !2365)
!2434 = !DILocation(line: 547, column: 25, scope: !2362, inlinedAt: !2365)
!2435 = !DILocation(line: 348, column: 7, scope: !2436, inlinedAt: !2383)
!2436 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 348, column: 6)
!2437 = !DILocation(line: 348, column: 6, scope: !2379, inlinedAt: !2383)
!2438 = !DILocation(line: 349, column: 3, scope: !2436, inlinedAt: !2383)
!2439 = !DILocation(line: 351, column: 6, scope: !2440, inlinedAt: !2383)
!2440 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 351, column: 6)
!2441 = !DILocation(line: 351, column: 11, scope: !2440, inlinedAt: !2383)
!2442 = !DILocation(line: 351, column: 6, scope: !2379, inlinedAt: !2383)
!2443 = !DILocation(line: 352, column: 3, scope: !2440, inlinedAt: !2383)
!2444 = !DILocation(line: 354, column: 32, scope: !2445, inlinedAt: !2383)
!2445 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 354, column: 6)
!2446 = !DILocation(line: 354, column: 37, scope: !2445, inlinedAt: !2383)
!2447 = !DILocation(line: 354, column: 42, scope: !2445, inlinedAt: !2383)
!2448 = !DILocation(line: 354, column: 45, scope: !2445, inlinedAt: !2383)
!2449 = !DILocation(line: 354, column: 50, scope: !2445, inlinedAt: !2383)
!2450 = !DILocation(line: 354, column: 6, scope: !2379, inlinedAt: !2383)
!2451 = !DILocation(line: 355, column: 3, scope: !2445, inlinedAt: !2383)
!2452 = !DILocation(line: 356, column: 32, scope: !2453, inlinedAt: !2383)
!2453 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 356, column: 6)
!2454 = !DILocation(line: 356, column: 37, scope: !2453, inlinedAt: !2383)
!2455 = !DILocation(line: 356, column: 43, scope: !2453, inlinedAt: !2383)
!2456 = !DILocation(line: 356, column: 46, scope: !2453, inlinedAt: !2383)
!2457 = !DILocation(line: 356, column: 51, scope: !2453, inlinedAt: !2383)
!2458 = !DILocation(line: 356, column: 6, scope: !2379, inlinedAt: !2383)
!2459 = !DILocation(line: 357, column: 3, scope: !2453, inlinedAt: !2383)
!2460 = !DILocation(line: 358, column: 6, scope: !2461, inlinedAt: !2383)
!2461 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 358, column: 6)
!2462 = !DILocation(line: 358, column: 11, scope: !2461, inlinedAt: !2383)
!2463 = !DILocation(line: 358, column: 6, scope: !2379, inlinedAt: !2383)
!2464 = !DILocation(line: 358, column: 26, scope: !2461, inlinedAt: !2383)
!2465 = !DILocation(line: 359, column: 6, scope: !2466, inlinedAt: !2383)
!2466 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 359, column: 6)
!2467 = !DILocation(line: 359, column: 11, scope: !2466, inlinedAt: !2383)
!2468 = !DILocation(line: 359, column: 6, scope: !2379, inlinedAt: !2383)
!2469 = !DILocation(line: 359, column: 26, scope: !2466, inlinedAt: !2383)
!2470 = !DILocation(line: 360, column: 6, scope: !2471, inlinedAt: !2383)
!2471 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 360, column: 6)
!2472 = !DILocation(line: 360, column: 11, scope: !2471, inlinedAt: !2383)
!2473 = !DILocation(line: 360, column: 6, scope: !2379, inlinedAt: !2383)
!2474 = !DILocation(line: 360, column: 26, scope: !2471, inlinedAt: !2383)
!2475 = !DILocation(line: 361, column: 6, scope: !2476, inlinedAt: !2383)
!2476 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 361, column: 6)
!2477 = !DILocation(line: 361, column: 11, scope: !2476, inlinedAt: !2383)
!2478 = !DILocation(line: 361, column: 6, scope: !2379, inlinedAt: !2383)
!2479 = !DILocation(line: 361, column: 26, scope: !2476, inlinedAt: !2383)
!2480 = !DILocation(line: 362, column: 6, scope: !2481, inlinedAt: !2383)
!2481 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 362, column: 6)
!2482 = !DILocation(line: 362, column: 11, scope: !2481, inlinedAt: !2383)
!2483 = !DILocation(line: 362, column: 6, scope: !2379, inlinedAt: !2383)
!2484 = !DILocation(line: 362, column: 26, scope: !2481, inlinedAt: !2383)
!2485 = !DILocation(line: 363, column: 6, scope: !2486, inlinedAt: !2383)
!2486 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 363, column: 6)
!2487 = !DILocation(line: 363, column: 11, scope: !2486, inlinedAt: !2383)
!2488 = !DILocation(line: 363, column: 6, scope: !2379, inlinedAt: !2383)
!2489 = !DILocation(line: 363, column: 26, scope: !2486, inlinedAt: !2383)
!2490 = !DILocation(line: 364, column: 6, scope: !2491, inlinedAt: !2383)
!2491 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 364, column: 6)
!2492 = !DILocation(line: 364, column: 11, scope: !2491, inlinedAt: !2383)
!2493 = !DILocation(line: 364, column: 6, scope: !2379, inlinedAt: !2383)
!2494 = !DILocation(line: 364, column: 26, scope: !2491, inlinedAt: !2383)
!2495 = !DILocation(line: 365, column: 6, scope: !2496, inlinedAt: !2383)
!2496 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 365, column: 6)
!2497 = !DILocation(line: 365, column: 11, scope: !2496, inlinedAt: !2383)
!2498 = !DILocation(line: 365, column: 6, scope: !2379, inlinedAt: !2383)
!2499 = !DILocation(line: 365, column: 26, scope: !2496, inlinedAt: !2383)
!2500 = !DILocation(line: 366, column: 6, scope: !2501, inlinedAt: !2383)
!2501 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 366, column: 6)
!2502 = !DILocation(line: 366, column: 11, scope: !2501, inlinedAt: !2383)
!2503 = !DILocation(line: 366, column: 6, scope: !2379, inlinedAt: !2383)
!2504 = !DILocation(line: 366, column: 26, scope: !2501, inlinedAt: !2383)
!2505 = !DILocation(line: 367, column: 6, scope: !2506, inlinedAt: !2383)
!2506 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 367, column: 6)
!2507 = !DILocation(line: 367, column: 11, scope: !2506, inlinedAt: !2383)
!2508 = !DILocation(line: 367, column: 6, scope: !2379, inlinedAt: !2383)
!2509 = !DILocation(line: 367, column: 26, scope: !2506, inlinedAt: !2383)
!2510 = !DILocation(line: 368, column: 6, scope: !2511, inlinedAt: !2383)
!2511 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 368, column: 6)
!2512 = !DILocation(line: 368, column: 11, scope: !2511, inlinedAt: !2383)
!2513 = !DILocation(line: 368, column: 6, scope: !2379, inlinedAt: !2383)
!2514 = !DILocation(line: 368, column: 26, scope: !2511, inlinedAt: !2383)
!2515 = !DILocation(line: 369, column: 6, scope: !2516, inlinedAt: !2383)
!2516 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 369, column: 6)
!2517 = !DILocation(line: 369, column: 11, scope: !2516, inlinedAt: !2383)
!2518 = !DILocation(line: 369, column: 6, scope: !2379, inlinedAt: !2383)
!2519 = !DILocation(line: 369, column: 26, scope: !2516, inlinedAt: !2383)
!2520 = !DILocation(line: 370, column: 6, scope: !2521, inlinedAt: !2383)
!2521 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 370, column: 6)
!2522 = !DILocation(line: 370, column: 11, scope: !2521, inlinedAt: !2383)
!2523 = !DILocation(line: 370, column: 6, scope: !2379, inlinedAt: !2383)
!2524 = !DILocation(line: 370, column: 26, scope: !2521, inlinedAt: !2383)
!2525 = !DILocation(line: 371, column: 6, scope: !2526, inlinedAt: !2383)
!2526 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 371, column: 6)
!2527 = !DILocation(line: 371, column: 11, scope: !2526, inlinedAt: !2383)
!2528 = !DILocation(line: 371, column: 6, scope: !2379, inlinedAt: !2383)
!2529 = !DILocation(line: 371, column: 26, scope: !2526, inlinedAt: !2383)
!2530 = !DILocation(line: 372, column: 6, scope: !2531, inlinedAt: !2383)
!2531 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 372, column: 6)
!2532 = !DILocation(line: 372, column: 11, scope: !2531, inlinedAt: !2383)
!2533 = !DILocation(line: 372, column: 6, scope: !2379, inlinedAt: !2383)
!2534 = !DILocation(line: 372, column: 26, scope: !2531, inlinedAt: !2383)
!2535 = !DILocation(line: 373, column: 6, scope: !2536, inlinedAt: !2383)
!2536 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 373, column: 6)
!2537 = !DILocation(line: 373, column: 11, scope: !2536, inlinedAt: !2383)
!2538 = !DILocation(line: 373, column: 6, scope: !2379, inlinedAt: !2383)
!2539 = !DILocation(line: 373, column: 26, scope: !2536, inlinedAt: !2383)
!2540 = !DILocation(line: 374, column: 6, scope: !2541, inlinedAt: !2383)
!2541 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 374, column: 6)
!2542 = !DILocation(line: 374, column: 11, scope: !2541, inlinedAt: !2383)
!2543 = !DILocation(line: 374, column: 6, scope: !2379, inlinedAt: !2383)
!2544 = !DILocation(line: 374, column: 26, scope: !2541, inlinedAt: !2383)
!2545 = !DILocation(line: 375, column: 6, scope: !2546, inlinedAt: !2383)
!2546 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 375, column: 6)
!2547 = !DILocation(line: 375, column: 11, scope: !2546, inlinedAt: !2383)
!2548 = !DILocation(line: 375, column: 6, scope: !2379, inlinedAt: !2383)
!2549 = !DILocation(line: 375, column: 27, scope: !2546, inlinedAt: !2383)
!2550 = !DILocation(line: 376, column: 6, scope: !2551, inlinedAt: !2383)
!2551 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 376, column: 6)
!2552 = !DILocation(line: 376, column: 11, scope: !2551, inlinedAt: !2383)
!2553 = !DILocation(line: 376, column: 6, scope: !2379, inlinedAt: !2383)
!2554 = !DILocation(line: 376, column: 32, scope: !2551, inlinedAt: !2383)
!2555 = !DILocation(line: 377, column: 6, scope: !2556, inlinedAt: !2383)
!2556 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 377, column: 6)
!2557 = !DILocation(line: 377, column: 11, scope: !2556, inlinedAt: !2383)
!2558 = !DILocation(line: 377, column: 6, scope: !2379, inlinedAt: !2383)
!2559 = !DILocation(line: 377, column: 32, scope: !2556, inlinedAt: !2383)
!2560 = !DILocation(line: 378, column: 6, scope: !2561, inlinedAt: !2383)
!2561 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 378, column: 6)
!2562 = !DILocation(line: 378, column: 11, scope: !2561, inlinedAt: !2383)
!2563 = !DILocation(line: 378, column: 6, scope: !2379, inlinedAt: !2383)
!2564 = !DILocation(line: 378, column: 32, scope: !2561, inlinedAt: !2383)
!2565 = !DILocation(line: 379, column: 6, scope: !2566, inlinedAt: !2383)
!2566 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 379, column: 6)
!2567 = !DILocation(line: 379, column: 11, scope: !2566, inlinedAt: !2383)
!2568 = !DILocation(line: 379, column: 6, scope: !2379, inlinedAt: !2383)
!2569 = !DILocation(line: 379, column: 33, scope: !2566, inlinedAt: !2383)
!2570 = !DILocation(line: 380, column: 6, scope: !2571, inlinedAt: !2383)
!2571 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 380, column: 6)
!2572 = !DILocation(line: 380, column: 11, scope: !2571, inlinedAt: !2383)
!2573 = !DILocation(line: 380, column: 6, scope: !2379, inlinedAt: !2383)
!2574 = !DILocation(line: 380, column: 33, scope: !2571, inlinedAt: !2383)
!2575 = !DILocation(line: 381, column: 6, scope: !2576, inlinedAt: !2383)
!2576 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 381, column: 6)
!2577 = !DILocation(line: 381, column: 11, scope: !2576, inlinedAt: !2383)
!2578 = !DILocation(line: 381, column: 6, scope: !2379, inlinedAt: !2383)
!2579 = !DILocation(line: 381, column: 33, scope: !2576, inlinedAt: !2383)
!2580 = !DILocation(line: 382, column: 2, scope: !2581, inlinedAt: !2383)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !62, line: 382, column: 2)
!2582 = distinct !DILexicalBlock(scope: !2379, file: !62, line: 382, column: 2)
!2583 = !{i32 -2144383662, i32 -2144383633, i32 -2144383587, i32 -2144383529, i32 -2144383475, i32 -2144383421, i32 -2144383366, i32 -2144383335}
!2584 = !DILocation(line: 382, column: 2, scope: !2585, inlinedAt: !2383)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !62, line: 382, column: 2)
!2586 = distinct !DILexicalBlock(scope: !2582, file: !62, line: 382, column: 2)
!2587 = !{i32 -2144382892, i32 -2144382885, i32 -2144382831, i32 -2144382800, i32 -2144382770}
!2588 = !DILocation(line: 382, column: 2, scope: !2586, inlinedAt: !2383)
!2589 = !DILocation(line: 386, column: 1, scope: !2379, inlinedAt: !2383)
!2590 = !DILocation(line: 547, column: 9, scope: !2362, inlinedAt: !2365)
!2591 = !DILocation(line: 549, column: 8, scope: !2592, inlinedAt: !2365)
!2592 = distinct !DILexicalBlock(scope: !2362, file: !62, line: 549, column: 7)
!2593 = !DILocation(line: 549, column: 7, scope: !2362, inlinedAt: !2365)
!2594 = !DILocation(line: 550, column: 4, scope: !2592, inlinedAt: !2365)
!2595 = !DILocation(line: 553, column: 33, scope: !2362, inlinedAt: !2365)
!2596 = !DILocation(line: 325, column: 6, scope: !2597, inlinedAt: !2377)
!2597 = distinct !DILexicalBlock(scope: !2373, file: !62, line: 325, column: 6)
!2598 = !DILocation(line: 325, column: 6, scope: !2373, inlinedAt: !2377)
!2599 = !DILocation(line: 326, column: 3, scope: !2597, inlinedAt: !2377)
!2600 = !DILocation(line: 332, column: 9, scope: !2373, inlinedAt: !2377)
!2601 = !DILocation(line: 332, column: 15, scope: !2373, inlinedAt: !2377)
!2602 = !DILocation(line: 332, column: 2, scope: !2373, inlinedAt: !2377)
!2603 = !DILocation(line: 336, column: 1, scope: !2373, inlinedAt: !2377)
!2604 = !DILocation(line: 553, column: 5, scope: !2362, inlinedAt: !2365)
!2605 = !DILocation(line: 553, column: 41, scope: !2362, inlinedAt: !2365)
!2606 = !DILocation(line: 554, column: 5, scope: !2362, inlinedAt: !2365)
!2607 = !DILocation(line: 554, column: 12, scope: !2362, inlinedAt: !2365)
!2608 = !DILocation(line: 448, column: 31, scope: !2357, inlinedAt: !2361)
!2609 = !DILocation(line: 448, column: 34, scope: !2357, inlinedAt: !2361)
!2610 = !DILocation(line: 448, column: 14, scope: !2357, inlinedAt: !2361)
!2611 = !DILocation(line: 450, column: 22, scope: !2357, inlinedAt: !2361)
!2612 = !DILocation(line: 450, column: 25, scope: !2357, inlinedAt: !2361)
!2613 = !DILocation(line: 450, column: 30, scope: !2357, inlinedAt: !2361)
!2614 = !DILocation(line: 450, column: 36, scope: !2357, inlinedAt: !2361)
!2615 = !DILocation(line: 450, column: 8, scope: !2357, inlinedAt: !2361)
!2616 = !DILocation(line: 450, column: 6, scope: !2357, inlinedAt: !2361)
!2617 = !DILocation(line: 451, column: 9, scope: !2357, inlinedAt: !2361)
!2618 = !DILocation(line: 552, column: 3, scope: !2362, inlinedAt: !2365)
!2619 = !DILocation(line: 557, column: 19, scope: !2364, inlinedAt: !2365)
!2620 = !DILocation(line: 557, column: 25, scope: !2364, inlinedAt: !2365)
!2621 = !DILocation(line: 557, column: 9, scope: !2364, inlinedAt: !2365)
!2622 = !DILocation(line: 557, column: 2, scope: !2364, inlinedAt: !2365)
!2623 = !DILocation(line: 558, column: 1, scope: !2364, inlinedAt: !2365)
!2624 = !DILocation(line: 664, column: 2, scope: !2353)
!2625 = !DILocalVariable(name: "x", arg: 1, scope: !2101, file: !171, line: 85, type: !785)
!2626 = !DILocation(line: 85, column: 57, scope: !2101)
!2627 = !DILocation(line: 87, column: 2, scope: !2101)
!2628 = !DILocation(line: 87, column: 5, scope: !2101)
!2629 = !DILocation(line: 87, column: 10, scope: !2101)
!2630 = !DILocation(line: 88, column: 2, scope: !2101)
!2631 = !DILocation(line: 88, column: 2, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2101, file: !171, line: 88, column: 2)
!2633 = !DILocation(line: 89, column: 1, scope: !2101)
!2634 = distinct !DISubprogram(name: "cpuidle_remove_sysfs", scope: !3, file: !3, line: 728, type: !2262, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2635 = !DILocalVariable(name: "dev", arg: 1, scope: !2634, file: !3, line: 728, type: !129)
!2636 = !DILocation(line: 728, column: 50, scope: !2634)
!2637 = !DILocalVariable(name: "kdev", scope: !2634, file: !3, line: 730, type: !1628)
!2638 = !DILocation(line: 730, column: 30, scope: !2634)
!2639 = !DILocation(line: 730, column: 37, scope: !2634)
!2640 = !DILocation(line: 730, column: 42, scope: !2634)
!2641 = !DILocation(line: 732, column: 15, scope: !2634)
!2642 = !DILocation(line: 732, column: 21, scope: !2634)
!2643 = !DILocation(line: 732, column: 2, scope: !2634)
!2644 = !DILocation(line: 733, column: 23, scope: !2634)
!2645 = !DILocation(line: 733, column: 29, scope: !2634)
!2646 = !DILocation(line: 733, column: 2, scope: !2634)
!2647 = !DILocation(line: 734, column: 8, scope: !2634)
!2648 = !DILocation(line: 734, column: 2, scope: !2634)
!2649 = !DILocation(line: 735, column: 1, scope: !2634)
!2650 = distinct !DISubprogram(name: "show_available_governors", scope: !3, file: !3, line: 21, type: !1695, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2651 = !DILocalVariable(name: "dev", arg: 1, scope: !2650, file: !3, line: 21, type: !1697)
!2652 = !DILocation(line: 21, column: 56, scope: !2650)
!2653 = !DILocalVariable(name: "attr", arg: 2, scope: !2650, file: !3, line: 22, type: !2046)
!2654 = !DILocation(line: 22, column: 31, scope: !2650)
!2655 = !DILocalVariable(name: "buf", arg: 3, scope: !2650, file: !3, line: 23, type: !235)
!2656 = !DILocation(line: 23, column: 12, scope: !2650)
!2657 = !DILocalVariable(name: "i", scope: !2650, file: !3, line: 25, type: !266)
!2658 = !DILocation(line: 25, column: 10, scope: !2650)
!2659 = !DILocalVariable(name: "tmp", scope: !2650, file: !3, line: 26, type: !73)
!2660 = !DILocation(line: 26, column: 27, scope: !2650)
!2661 = !DILocation(line: 28, column: 2, scope: !2650)
!2662 = !DILocalVariable(name: "__mptr", scope: !2663, file: !3, line: 29, type: !72)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 29, column: 2)
!2664 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 29, column: 2)
!2665 = !DILocation(line: 29, column: 2, scope: !2663)
!2666 = !DILocation(line: 29, column: 2, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 29, column: 2)
!2668 = !DILocation(line: 29, column: 2, scope: !2664)
!2669 = !DILocation(line: 29, column: 2, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 29, column: 2)
!2671 = !DILocation(line: 30, column: 7, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 30, column: 7)
!2673 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 29, column: 62)
!2674 = !DILocation(line: 30, column: 9, scope: !2672)
!2675 = !DILocation(line: 30, column: 7, scope: !2673)
!2676 = !DILocation(line: 31, column: 4, scope: !2672)
!2677 = !DILocation(line: 33, column: 19, scope: !2673)
!2678 = !DILocation(line: 33, column: 23, scope: !2673)
!2679 = !DILocation(line: 33, column: 56, scope: !2673)
!2680 = !DILocation(line: 33, column: 61, scope: !2673)
!2681 = !DILocation(line: 33, column: 8, scope: !2673)
!2682 = !DILocation(line: 33, column: 5, scope: !2673)
!2683 = !DILocation(line: 34, column: 2, scope: !2673)
!2684 = !DILocalVariable(name: "__mptr", scope: !2685, file: !3, line: 29, type: !72)
!2685 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 29, column: 2)
!2686 = !DILocation(line: 29, column: 2, scope: !2685)
!2687 = !DILocation(line: 29, column: 2, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 29, column: 2)
!2689 = distinct !{!2689, !2668, !2690}
!2690 = !DILocation(line: 34, column: 2, scope: !2664)
!2691 = !DILabel(scope: !2650, name: "out", file: !3, line: 36)
!2692 = !DILocation(line: 36, column: 1, scope: !2650)
!2693 = !DILocation(line: 37, column: 15, scope: !2650)
!2694 = !DILocation(line: 37, column: 19, scope: !2650)
!2695 = !DILocation(line: 37, column: 6, scope: !2650)
!2696 = !DILocation(line: 37, column: 3, scope: !2650)
!2697 = !DILocation(line: 38, column: 2, scope: !2650)
!2698 = !DILocation(line: 39, column: 9, scope: !2650)
!2699 = !DILocation(line: 39, column: 2, scope: !2650)
!2700 = distinct !DISubprogram(name: "show_current_driver", scope: !3, file: !3, line: 42, type: !1695, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2701 = !DILocalVariable(name: "lock", arg: 1, scope: !2702, file: !2703, line: 392, type: !2706)
!2702 = distinct !DISubprogram(name: "spin_unlock", scope: !2703, file: !2703, line: 392, type: !2704, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2703 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!2704 = !DISubroutineType(types: !2705)
!2705 = !{null, !2706}
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!2707 = !DILocation(line: 392, column: 53, scope: !2702, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 55, column: 2, scope: !2700)
!2709 = !DILocalVariable(name: "lock", arg: 1, scope: !2710, file: !2703, line: 352, type: !2706)
!2710 = distinct !DISubprogram(name: "spin_lock", scope: !2703, file: !2703, line: 352, type: !2704, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2711 = !DILocation(line: 352, column: 51, scope: !2710, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 49, column: 2, scope: !2700)
!2713 = !DILocalVariable(name: "dev", arg: 1, scope: !2700, file: !3, line: 42, type: !1697)
!2714 = !DILocation(line: 42, column: 51, scope: !2700)
!2715 = !DILocalVariable(name: "attr", arg: 2, scope: !2700, file: !3, line: 43, type: !2046)
!2716 = !DILocation(line: 43, column: 33, scope: !2700)
!2717 = !DILocalVariable(name: "buf", arg: 3, scope: !2700, file: !3, line: 44, type: !235)
!2718 = !DILocation(line: 44, column: 14, scope: !2700)
!2719 = !DILocalVariable(name: "ret", scope: !2700, file: !3, line: 46, type: !266)
!2720 = !DILocation(line: 46, column: 10, scope: !2700)
!2721 = !DILocalVariable(name: "drv", scope: !2700, file: !3, line: 47, type: !94)
!2722 = !DILocation(line: 47, column: 25, scope: !2700)
!2723 = !DILocation(line: 354, column: 2, scope: !2724, inlinedAt: !2712)
!2724 = distinct !DILexicalBlock(scope: !2710, file: !2703, line: 354, column: 2)
!2725 = !{i32 -2145376663}
!2726 = !DILocation(line: 354, column: 2, scope: !2727, inlinedAt: !2712)
!2727 = distinct !DILexicalBlock(scope: !2724, file: !2703, line: 354, column: 2)
!2728 = !DILocation(line: 50, column: 8, scope: !2700)
!2729 = !DILocation(line: 50, column: 6, scope: !2700)
!2730 = !DILocation(line: 51, column: 6, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 51, column: 6)
!2732 = !DILocation(line: 51, column: 6, scope: !2700)
!2733 = !DILocation(line: 52, column: 17, scope: !2731)
!2734 = !DILocation(line: 52, column: 30, scope: !2731)
!2735 = !DILocation(line: 52, column: 35, scope: !2731)
!2736 = !DILocation(line: 52, column: 9, scope: !2731)
!2737 = !DILocation(line: 52, column: 7, scope: !2731)
!2738 = !DILocation(line: 52, column: 3, scope: !2731)
!2739 = !DILocation(line: 54, column: 17, scope: !2731)
!2740 = !DILocation(line: 54, column: 9, scope: !2731)
!2741 = !DILocation(line: 54, column: 7, scope: !2731)
!2742 = !DILocation(line: 394, column: 2, scope: !2743, inlinedAt: !2708)
!2743 = distinct !DILexicalBlock(scope: !2702, file: !2703, line: 394, column: 2)
!2744 = !{i32 -2145374302}
!2745 = !DILocation(line: 394, column: 2, scope: !2746, inlinedAt: !2708)
!2746 = distinct !DILexicalBlock(scope: !2743, file: !2703, line: 394, column: 2)
!2747 = !DILocation(line: 57, column: 9, scope: !2700)
!2748 = !DILocation(line: 57, column: 2, scope: !2700)
!2749 = distinct !DISubprogram(name: "show_current_governor", scope: !3, file: !3, line: 60, type: !1695, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2750 = !DILocalVariable(name: "dev", arg: 1, scope: !2749, file: !3, line: 60, type: !1697)
!2751 = !DILocation(line: 60, column: 53, scope: !2749)
!2752 = !DILocalVariable(name: "attr", arg: 2, scope: !2749, file: !3, line: 61, type: !2046)
!2753 = !DILocation(line: 61, column: 35, scope: !2749)
!2754 = !DILocalVariable(name: "buf", arg: 3, scope: !2749, file: !3, line: 62, type: !235)
!2755 = !DILocation(line: 62, column: 16, scope: !2749)
!2756 = !DILocalVariable(name: "ret", scope: !2749, file: !3, line: 64, type: !266)
!2757 = !DILocation(line: 64, column: 10, scope: !2749)
!2758 = !DILocation(line: 66, column: 2, scope: !2749)
!2759 = !DILocation(line: 67, column: 6, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 67, column: 6)
!2761 = !DILocation(line: 67, column: 6, scope: !2749)
!2762 = !DILocation(line: 68, column: 17, scope: !2760)
!2763 = !DILocation(line: 68, column: 30, scope: !2760)
!2764 = !DILocation(line: 68, column: 53, scope: !2760)
!2765 = !DILocation(line: 68, column: 9, scope: !2760)
!2766 = !DILocation(line: 68, column: 7, scope: !2760)
!2767 = !DILocation(line: 68, column: 3, scope: !2760)
!2768 = !DILocation(line: 70, column: 17, scope: !2760)
!2769 = !DILocation(line: 70, column: 9, scope: !2760)
!2770 = !DILocation(line: 70, column: 7, scope: !2760)
!2771 = !DILocation(line: 71, column: 2, scope: !2749)
!2772 = !DILocation(line: 73, column: 9, scope: !2749)
!2773 = !DILocation(line: 73, column: 2, scope: !2749)
!2774 = distinct !DISubprogram(name: "store_current_governor", scope: !3, file: !3, line: 76, type: !2049, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2775 = !DILocalVariable(name: "dev", arg: 1, scope: !2774, file: !3, line: 76, type: !1697)
!2776 = !DILocation(line: 76, column: 54, scope: !2774)
!2777 = !DILocalVariable(name: "attr", arg: 2, scope: !2774, file: !3, line: 77, type: !2046)
!2778 = !DILocation(line: 77, column: 36, scope: !2774)
!2779 = !DILocalVariable(name: "buf", arg: 3, scope: !2774, file: !3, line: 78, type: !98)
!2780 = !DILocation(line: 78, column: 23, scope: !2774)
!2781 = !DILocalVariable(name: "count", arg: 4, scope: !2774, file: !3, line: 78, type: !282)
!2782 = !DILocation(line: 78, column: 35, scope: !2774)
!2783 = !DILocalVariable(name: "gov_name", scope: !2774, file: !3, line: 80, type: !2784)
!2784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 136, elements: !2785)
!2785 = !{!2786}
!2786 = !DISubrange(count: 17)
!2787 = !DILocation(line: 80, column: 7, scope: !2774)
!2788 = !DILocalVariable(name: "ret", scope: !2774, file: !3, line: 81, type: !93)
!2789 = !DILocation(line: 81, column: 6, scope: !2774)
!2790 = !DILocalVariable(name: "gov", scope: !2774, file: !3, line: 82, type: !73)
!2791 = !DILocation(line: 82, column: 27, scope: !2774)
!2792 = !DILocation(line: 84, column: 15, scope: !2774)
!2793 = !DILocation(line: 84, column: 59, scope: !2774)
!2794 = !DILocation(line: 84, column: 8, scope: !2774)
!2795 = !DILocation(line: 84, column: 6, scope: !2774)
!2796 = !DILocation(line: 85, column: 6, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 85, column: 6)
!2798 = !DILocation(line: 85, column: 10, scope: !2797)
!2799 = !DILocation(line: 85, column: 6, scope: !2774)
!2800 = !DILocation(line: 86, column: 3, scope: !2797)
!2801 = !DILocation(line: 88, column: 2, scope: !2774)
!2802 = !DILocation(line: 89, column: 6, scope: !2774)
!2803 = !DILocalVariable(name: "__mptr", scope: !2804, file: !3, line: 90, type: !72)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !3, line: 90, column: 2)
!2805 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 90, column: 2)
!2806 = !DILocation(line: 90, column: 2, scope: !2804)
!2807 = !DILocation(line: 90, column: 2, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 90, column: 2)
!2809 = !DILocation(line: 90, column: 2, scope: !2805)
!2810 = !DILocation(line: 90, column: 2, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2805, file: !3, line: 90, column: 2)
!2812 = !DILocation(line: 91, column: 16, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 91, column: 7)
!2814 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 90, column: 62)
!2815 = !DILocation(line: 91, column: 21, scope: !2813)
!2816 = !DILocation(line: 91, column: 27, scope: !2813)
!2817 = !DILocation(line: 91, column: 8, scope: !2813)
!2818 = !DILocation(line: 91, column: 7, scope: !2814)
!2819 = !DILocation(line: 92, column: 34, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 91, column: 56)
!2821 = !DILocation(line: 92, column: 10, scope: !2820)
!2822 = !DILocation(line: 92, column: 8, scope: !2820)
!2823 = !DILocation(line: 93, column: 4, scope: !2820)
!2824 = !DILocation(line: 95, column: 2, scope: !2814)
!2825 = !DILocalVariable(name: "__mptr", scope: !2826, file: !3, line: 90, type: !72)
!2826 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 90, column: 2)
!2827 = !DILocation(line: 90, column: 2, scope: !2826)
!2828 = !DILocation(line: 90, column: 2, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 90, column: 2)
!2830 = distinct !{!2830, !2809, !2831}
!2831 = !DILocation(line: 95, column: 2, scope: !2805)
!2832 = !DILocation(line: 96, column: 2, scope: !2774)
!2833 = !DILocation(line: 98, column: 9, scope: !2774)
!2834 = !DILocation(line: 98, column: 15, scope: !2774)
!2835 = !DILocation(line: 98, column: 21, scope: !2774)
!2836 = !DILocation(line: 98, column: 2, scope: !2774)
!2837 = !DILocation(line: 99, column: 1, scope: !2774)
!2838 = distinct !DISubprogram(name: "cpuidle_add_s2idle_attr_group", scope: !3, file: !3, line: 377, type: !2839, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{null, !162}
!2841 = !DILocalVariable(name: "kobj", arg: 1, scope: !2838, file: !3, line: 377, type: !162)
!2842 = !DILocation(line: 377, column: 70, scope: !2838)
!2843 = !DILocalVariable(name: "ret", scope: !2838, file: !3, line: 379, type: !93)
!2844 = !DILocation(line: 379, column: 6, scope: !2838)
!2845 = !DILocation(line: 381, column: 7, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 381, column: 6)
!2847 = !DILocation(line: 381, column: 13, scope: !2846)
!2848 = !DILocation(line: 381, column: 20, scope: !2846)
!2849 = !DILocation(line: 381, column: 6, scope: !2838)
!2850 = !DILocation(line: 382, column: 3, scope: !2846)
!2851 = !DILocation(line: 384, column: 28, scope: !2838)
!2852 = !DILocation(line: 384, column: 34, scope: !2838)
!2853 = !DILocation(line: 384, column: 8, scope: !2838)
!2854 = !DILocation(line: 384, column: 6, scope: !2838)
!2855 = !DILocation(line: 385, column: 6, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 385, column: 6)
!2857 = !DILocation(line: 385, column: 6, scope: !2838)
!2858 = !DILocation(line: 386, column: 3, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !3, line: 386, column: 3)
!2860 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 386, column: 3)
!2861 = !DILocation(line: 386, column: 3, scope: !2860)
!2862 = !DILocation(line: 386, column: 3, scope: !2856)
!2863 = !DILocation(line: 387, column: 1, scope: !2838)
!2864 = distinct !DISubprogram(name: "cpuidle_free_state_kobj", scope: !3, file: !3, line: 455, type: !1656, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2865 = !DILocalVariable(name: "device", arg: 1, scope: !2864, file: !3, line: 455, type: !129)
!2866 = !DILocation(line: 455, column: 67, scope: !2864)
!2867 = !DILocalVariable(name: "i", arg: 2, scope: !2864, file: !3, line: 455, type: !93)
!2868 = !DILocation(line: 455, column: 79, scope: !2864)
!2869 = !DILocation(line: 457, column: 35, scope: !2864)
!2870 = !DILocation(line: 457, column: 43, scope: !2864)
!2871 = !DILocation(line: 457, column: 49, scope: !2864)
!2872 = !DILocation(line: 457, column: 2, scope: !2864)
!2873 = !DILocation(line: 458, column: 15, scope: !2864)
!2874 = !DILocation(line: 458, column: 23, scope: !2864)
!2875 = !DILocation(line: 458, column: 29, scope: !2864)
!2876 = !DILocation(line: 458, column: 33, scope: !2864)
!2877 = !DILocation(line: 458, column: 2, scope: !2864)
!2878 = !DILocation(line: 459, column: 23, scope: !2864)
!2879 = !DILocation(line: 459, column: 31, scope: !2864)
!2880 = !DILocation(line: 459, column: 37, scope: !2864)
!2881 = !DILocation(line: 459, column: 41, scope: !2864)
!2882 = !DILocation(line: 459, column: 2, scope: !2864)
!2883 = !DILocation(line: 460, column: 8, scope: !2864)
!2884 = !DILocation(line: 460, column: 16, scope: !2864)
!2885 = !DILocation(line: 460, column: 22, scope: !2864)
!2886 = !DILocation(line: 460, column: 2, scope: !2864)
!2887 = !DILocation(line: 461, column: 2, scope: !2864)
!2888 = !DILocation(line: 461, column: 10, scope: !2864)
!2889 = !DILocation(line: 461, column: 16, scope: !2864)
!2890 = !DILocation(line: 461, column: 19, scope: !2864)
!2891 = !DILocation(line: 462, column: 1, scope: !2864)
!2892 = distinct !DISubprogram(name: "cpuidle_state_sysfs_release", scope: !3, file: !3, line: 442, type: !254, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2893 = !DILocalVariable(name: "kobj", arg: 1, scope: !2892, file: !3, line: 442, type: !195)
!2894 = !DILocation(line: 442, column: 57, scope: !2892)
!2895 = !DILocalVariable(name: "state_obj", scope: !2892, file: !3, line: 444, type: !162)
!2896 = !DILocation(line: 444, column: 29, scope: !2892)
!2897 = !DILocalVariable(name: "__mptr", scope: !2898, file: !3, line: 444, type: !72)
!2898 = distinct !DILexicalBlock(scope: !2892, file: !3, line: 444, column: 41)
!2899 = !DILocation(line: 444, column: 41, scope: !2898)
!2900 = !DILocation(line: 444, column: 41, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 444, column: 41)
!2902 = !DILocation(line: 446, column: 12, scope: !2892)
!2903 = !DILocation(line: 446, column: 23, scope: !2892)
!2904 = !DILocation(line: 446, column: 2, scope: !2892)
!2905 = !DILocation(line: 447, column: 1, scope: !2892)
!2906 = distinct !DISubprogram(name: "cpuidle_state_show", scope: !3, file: !3, line: 405, type: !264, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2907 = !DILocalVariable(name: "kobj", arg: 1, scope: !2906, file: !3, line: 405, type: !195)
!2908 = !DILocation(line: 405, column: 51, scope: !2906)
!2909 = !DILocalVariable(name: "attr", arg: 2, scope: !2906, file: !3, line: 405, type: !271)
!2910 = !DILocation(line: 405, column: 75, scope: !2906)
!2911 = !DILocalVariable(name: "buf", arg: 3, scope: !2906, file: !3, line: 406, type: !235)
!2912 = !DILocation(line: 406, column: 13, scope: !2906)
!2913 = !DILocalVariable(name: "ret", scope: !2906, file: !3, line: 408, type: !93)
!2914 = !DILocation(line: 408, column: 6, scope: !2906)
!2915 = !DILocalVariable(name: "state", scope: !2906, file: !3, line: 409, type: !166)
!2916 = !DILocation(line: 409, column: 24, scope: !2906)
!2917 = !DILocalVariable(name: "__mptr", scope: !2918, file: !3, line: 409, type: !72)
!2918 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 409, column: 32)
!2919 = !DILocation(line: 409, column: 32, scope: !2918)
!2920 = !DILocation(line: 409, column: 32, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 409, column: 32)
!2922 = !DILocation(line: 409, column: 32, scope: !2906)
!2923 = !DILocalVariable(name: "state_usage", scope: !2906, file: !3, line: 410, type: !168)
!2924 = !DILocation(line: 410, column: 30, scope: !2906)
!2925 = !DILocalVariable(name: "__mptr", scope: !2926, file: !3, line: 410, type: !72)
!2926 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 410, column: 44)
!2927 = !DILocation(line: 410, column: 44, scope: !2926)
!2928 = !DILocation(line: 410, column: 44, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 410, column: 44)
!2930 = !DILocation(line: 410, column: 44, scope: !2906)
!2931 = !DILocalVariable(name: "cattr", scope: !2906, file: !3, line: 411, type: !1658)
!2932 = !DILocation(line: 411, column: 29, scope: !2906)
!2933 = !DILocalVariable(name: "__mptr", scope: !2934, file: !3, line: 411, type: !72)
!2934 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 411, column: 37)
!2935 = !DILocation(line: 411, column: 37, scope: !2934)
!2936 = !DILocation(line: 411, column: 37, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 411, column: 37)
!2938 = !DILocation(line: 413, column: 6, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 413, column: 6)
!2940 = !DILocation(line: 413, column: 13, scope: !2939)
!2941 = !DILocation(line: 413, column: 6, scope: !2906)
!2942 = !DILocation(line: 414, column: 9, scope: !2939)
!2943 = !DILocation(line: 414, column: 16, scope: !2939)
!2944 = !DILocation(line: 414, column: 21, scope: !2939)
!2945 = !DILocation(line: 414, column: 28, scope: !2939)
!2946 = !DILocation(line: 414, column: 41, scope: !2939)
!2947 = !DILocation(line: 414, column: 7, scope: !2939)
!2948 = !DILocation(line: 414, column: 3, scope: !2939)
!2949 = !DILocation(line: 416, column: 9, scope: !2906)
!2950 = !DILocation(line: 416, column: 2, scope: !2906)
!2951 = distinct !DISubprogram(name: "cpuidle_state_store", scope: !3, file: !3, line: 419, type: !280, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!2952 = !DILocalVariable(name: "kobj", arg: 1, scope: !2951, file: !3, line: 419, type: !195)
!2953 = !DILocation(line: 419, column: 52, scope: !2951)
!2954 = !DILocalVariable(name: "attr", arg: 2, scope: !2951, file: !3, line: 419, type: !271)
!2955 = !DILocation(line: 419, column: 76, scope: !2951)
!2956 = !DILocalVariable(name: "buf", arg: 3, scope: !2951, file: !3, line: 420, type: !98)
!2957 = !DILocation(line: 420, column: 20, scope: !2951)
!2958 = !DILocalVariable(name: "size", arg: 4, scope: !2951, file: !3, line: 420, type: !282)
!2959 = !DILocation(line: 420, column: 32, scope: !2951)
!2960 = !DILocalVariable(name: "ret", scope: !2951, file: !3, line: 422, type: !93)
!2961 = !DILocation(line: 422, column: 6, scope: !2951)
!2962 = !DILocalVariable(name: "state", scope: !2951, file: !3, line: 423, type: !166)
!2963 = !DILocation(line: 423, column: 24, scope: !2951)
!2964 = !DILocalVariable(name: "__mptr", scope: !2965, file: !3, line: 423, type: !72)
!2965 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 423, column: 32)
!2966 = !DILocation(line: 423, column: 32, scope: !2965)
!2967 = !DILocation(line: 423, column: 32, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 423, column: 32)
!2969 = !DILocation(line: 423, column: 32, scope: !2951)
!2970 = !DILocalVariable(name: "state_usage", scope: !2951, file: !3, line: 424, type: !168)
!2971 = !DILocation(line: 424, column: 30, scope: !2951)
!2972 = !DILocalVariable(name: "__mptr", scope: !2973, file: !3, line: 424, type: !72)
!2973 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 424, column: 44)
!2974 = !DILocation(line: 424, column: 44, scope: !2973)
!2975 = !DILocation(line: 424, column: 44, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 424, column: 44)
!2977 = !DILocation(line: 424, column: 44, scope: !2951)
!2978 = !DILocalVariable(name: "cattr", scope: !2951, file: !3, line: 425, type: !1658)
!2979 = !DILocation(line: 425, column: 29, scope: !2951)
!2980 = !DILocalVariable(name: "__mptr", scope: !2981, file: !3, line: 425, type: !72)
!2981 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 425, column: 37)
!2982 = !DILocation(line: 425, column: 37, scope: !2981)
!2983 = !DILocation(line: 425, column: 37, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 425, column: 37)
!2985 = !DILocalVariable(name: "dev", scope: !2951, file: !3, line: 426, type: !129)
!2986 = !DILocation(line: 426, column: 25, scope: !2951)
!2987 = !DILocalVariable(name: "__mptr", scope: !2988, file: !3, line: 426, type: !72)
!2988 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 426, column: 31)
!2989 = !DILocation(line: 426, column: 31, scope: !2988)
!2990 = !DILocation(line: 426, column: 31, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 426, column: 31)
!2992 = !DILocation(line: 426, column: 31, scope: !2951)
!2993 = !DILocation(line: 428, column: 6, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 428, column: 6)
!2995 = !DILocation(line: 428, column: 13, scope: !2994)
!2996 = !DILocation(line: 428, column: 6, scope: !2951)
!2997 = !DILocation(line: 429, column: 9, scope: !2994)
!2998 = !DILocation(line: 429, column: 16, scope: !2994)
!2999 = !DILocation(line: 429, column: 22, scope: !2994)
!3000 = !DILocation(line: 429, column: 29, scope: !2994)
!3001 = !DILocation(line: 429, column: 42, scope: !2994)
!3002 = !DILocation(line: 429, column: 47, scope: !2994)
!3003 = !DILocation(line: 429, column: 7, scope: !2994)
!3004 = !DILocation(line: 429, column: 3, scope: !2994)
!3005 = !DILocation(line: 432, column: 2, scope: !2951)
!3006 = !DILocation(line: 432, column: 7, scope: !2951)
!3007 = !DILocation(line: 432, column: 21, scope: !2951)
!3008 = !DILocation(line: 434, column: 9, scope: !2951)
!3009 = !DILocation(line: 434, column: 2, scope: !2951)
!3010 = distinct !DISubprogram(name: "show_state_name", scope: !3, file: !3, line: 260, type: !1664, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3011 = !DILocalVariable(name: "state", arg: 1, scope: !3010, file: !3, line: 260, type: !166)
!3012 = !DILocation(line: 260, column: 1, scope: !3010)
!3013 = !DILocalVariable(name: "state_usage", arg: 2, scope: !3010, file: !3, line: 260, type: !168)
!3014 = !DILocalVariable(name: "buf", arg: 3, scope: !3010, file: !3, line: 260, type: !235)
!3015 = !DILocation(line: 260, column: 1, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 260, column: 1)
!3017 = distinct !DISubprogram(name: "show_state_desc", scope: !3, file: !3, line: 261, type: !1664, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3018 = !DILocalVariable(name: "state", arg: 1, scope: !3017, file: !3, line: 261, type: !166)
!3019 = !DILocation(line: 261, column: 1, scope: !3017)
!3020 = !DILocalVariable(name: "state_usage", arg: 2, scope: !3017, file: !3, line: 261, type: !168)
!3021 = !DILocalVariable(name: "buf", arg: 3, scope: !3017, file: !3, line: 261, type: !235)
!3022 = !DILocation(line: 261, column: 1, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 261, column: 1)
!3024 = distinct !DISubprogram(name: "show_state_exit_latency", scope: !3, file: !3, line: 255, type: !1664, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3025 = !DILocalVariable(name: "state", arg: 1, scope: !3024, file: !3, line: 255, type: !166)
!3026 = !DILocation(line: 255, column: 1, scope: !3024)
!3027 = !DILocalVariable(name: "state_usage", arg: 2, scope: !3024, file: !3, line: 255, type: !168)
!3028 = !DILocalVariable(name: "buf", arg: 3, scope: !3024, file: !3, line: 255, type: !235)
!3029 = distinct !DISubprogram(name: "ktime_to_us", scope: !138, file: !138, line: 159, type: !3030, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!139, !3032}
!3032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!3033 = !DILocalVariable(name: "kt", arg: 1, scope: !3029, file: !138, line: 159, type: !3032)
!3034 = !DILocation(line: 159, column: 45, scope: !3029)
!3035 = !DILocation(line: 161, column: 21, scope: !3029)
!3036 = !DILocation(line: 161, column: 9, scope: !3029)
!3037 = !DILocation(line: 161, column: 2, scope: !3029)
!3038 = distinct !DISubprogram(name: "ktime_divns", scope: !138, file: !138, line: 148, type: !3039, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!139, !3032, !139}
!3041 = !DILocalVariable(name: "kt", arg: 1, scope: !3038, file: !138, line: 148, type: !3032)
!3042 = !DILocation(line: 148, column: 45, scope: !3038)
!3043 = !DILocalVariable(name: "div", arg: 2, scope: !3038, file: !138, line: 148, type: !139)
!3044 = !DILocation(line: 148, column: 53, scope: !3038)
!3045 = !DILocalVariable(name: "__ret_warn_on", scope: !3046, file: !138, line: 154, type: !93)
!3046 = distinct !DILexicalBlock(scope: !3038, file: !138, line: 154, column: 2)
!3047 = !DILocation(line: 154, column: 2, scope: !3046)
!3048 = !DILocation(line: 154, column: 2, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3046, file: !138, line: 154, column: 2)
!3050 = !DILocation(line: 154, column: 2, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3049, file: !138, line: 154, column: 2)
!3052 = !DILocation(line: 154, column: 2, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3051, file: !138, line: 154, column: 2)
!3054 = !DILocation(line: 154, column: 2, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3051, file: !138, line: 154, column: 2)
!3056 = !{i32 -2145573753, i32 -2145573724, i32 -2145573678, i32 -2145573620, i32 -2145573566, i32 -2145573512, i32 -2145573457, i32 -2145573426}
!3057 = !DILocation(line: 154, column: 2, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3051, file: !138, line: 154, column: 2)
!3059 = !{i32 -2145573023, i32 -2145573016, i32 -2145572964, i32 -2145572933, i32 -2145572903}
!3060 = !DILocation(line: 154, column: 2, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3051, file: !138, line: 154, column: 2)
!3062 = !DILocation(line: 155, column: 9, scope: !3038)
!3063 = !DILocation(line: 155, column: 14, scope: !3038)
!3064 = !DILocation(line: 155, column: 12, scope: !3038)
!3065 = !DILocation(line: 155, column: 2, scope: !3038)
!3066 = distinct !DISubprogram(name: "show_state_target_residency", scope: !3, file: !3, line: 256, type: !1664, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3067 = !DILocalVariable(name: "state", arg: 1, scope: !3066, file: !3, line: 256, type: !166)
!3068 = !DILocation(line: 256, column: 1, scope: !3066)
!3069 = !DILocalVariable(name: "state_usage", arg: 2, scope: !3066, file: !3, line: 256, type: !168)
!3070 = !DILocalVariable(name: "buf", arg: 3, scope: !3066, file: !3, line: 256, type: !235)
!3071 = distinct !DISubprogram(name: "show_state_power_usage", scope: !3, file: !3, line: 257, type: !1664, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3072 = !DILocalVariable(name: "state", arg: 1, scope: !3071, file: !3, line: 257, type: !166)
!3073 = !DILocation(line: 257, column: 1, scope: !3071)
!3074 = !DILocalVariable(name: "state_usage", arg: 2, scope: !3071, file: !3, line: 257, type: !168)
!3075 = !DILocalVariable(name: "buf", arg: 3, scope: !3071, file: !3, line: 257, type: !235)
!3076 = distinct !DISubprogram(name: "show_state_usage", scope: !3, file: !3, line: 258, type: !1664, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3077 = !DILocalVariable(name: "state", arg: 1, scope: !3076, file: !3, line: 258, type: !166)
!3078 = !DILocation(line: 258, column: 1, scope: !3076)
!3079 = !DILocalVariable(name: "state_usage", arg: 2, scope: !3076, file: !3, line: 258, type: !168)
!3080 = !DILocalVariable(name: "buf", arg: 3, scope: !3076, file: !3, line: 258, type: !235)
!3081 = distinct !DISubprogram(name: "show_state_rejected", scope: !3, file: !3, line: 259, type: !1664, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3082 = !DILocalVariable(name: "state", arg: 1, scope: !3081, file: !3, line: 259, type: !166)
!3083 = !DILocation(line: 259, column: 1, scope: !3081)
!3084 = !DILocalVariable(name: "state_usage", arg: 2, scope: !3081, file: !3, line: 259, type: !168)
!3085 = !DILocalVariable(name: "buf", arg: 3, scope: !3081, file: !3, line: 259, type: !235)
!3086 = distinct !DISubprogram(name: "show_state_time", scope: !3, file: !3, line: 265, type: !1664, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3087 = !DILocalVariable(name: "state", arg: 1, scope: !3086, file: !3, line: 265, type: !166)
!3088 = !DILocation(line: 265, column: 54, scope: !3086)
!3089 = !DILocalVariable(name: "state_usage", arg: 2, scope: !3086, file: !3, line: 266, type: !168)
!3090 = !DILocation(line: 266, column: 39, scope: !3086)
!3091 = !DILocalVariable(name: "buf", arg: 3, scope: !3086, file: !3, line: 267, type: !235)
!3092 = !DILocation(line: 267, column: 17, scope: !3086)
!3093 = !DILocation(line: 269, column: 17, scope: !3086)
!3094 = !DILocation(line: 269, column: 44, scope: !3086)
!3095 = !DILocation(line: 269, column: 57, scope: !3086)
!3096 = !DILocation(line: 269, column: 32, scope: !3086)
!3097 = !DILocation(line: 269, column: 9, scope: !3086)
!3098 = !DILocation(line: 269, column: 2, scope: !3086)
!3099 = distinct !DISubprogram(name: "show_state_disable", scope: !3, file: !3, line: 272, type: !1664, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3100 = !DILocalVariable(name: "state", arg: 1, scope: !3099, file: !3, line: 272, type: !166)
!3101 = !DILocation(line: 272, column: 57, scope: !3099)
!3102 = !DILocalVariable(name: "state_usage", arg: 2, scope: !3099, file: !3, line: 273, type: !168)
!3103 = !DILocation(line: 273, column: 35, scope: !3099)
!3104 = !DILocalVariable(name: "buf", arg: 3, scope: !3099, file: !3, line: 274, type: !235)
!3105 = !DILocation(line: 274, column: 13, scope: !3099)
!3106 = !DILocation(line: 276, column: 17, scope: !3099)
!3107 = !DILocation(line: 277, column: 10, scope: !3099)
!3108 = !DILocation(line: 277, column: 23, scope: !3099)
!3109 = !DILocation(line: 277, column: 31, scope: !3099)
!3110 = !DILocation(line: 276, column: 9, scope: !3099)
!3111 = !DILocation(line: 276, column: 2, scope: !3099)
!3112 = distinct !DISubprogram(name: "store_state_disable", scope: !3, file: !3, line: 280, type: !1668, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3113 = !DILocalVariable(name: "state", arg: 1, scope: !3112, file: !3, line: 280, type: !166)
!3114 = !DILocation(line: 280, column: 58, scope: !3112)
!3115 = !DILocalVariable(name: "state_usage", arg: 2, scope: !3112, file: !3, line: 281, type: !168)
!3116 = !DILocation(line: 281, column: 36, scope: !3112)
!3117 = !DILocalVariable(name: "buf", arg: 3, scope: !3112, file: !3, line: 282, type: !98)
!3118 = !DILocation(line: 282, column: 20, scope: !3112)
!3119 = !DILocalVariable(name: "size", arg: 4, scope: !3112, file: !3, line: 282, type: !282)
!3120 = !DILocation(line: 282, column: 32, scope: !3112)
!3121 = !DILocalVariable(name: "value", scope: !3112, file: !3, line: 284, type: !7)
!3122 = !DILocation(line: 284, column: 15, scope: !3112)
!3123 = !DILocalVariable(name: "err", scope: !3112, file: !3, line: 285, type: !93)
!3124 = !DILocation(line: 285, column: 6, scope: !3112)
!3125 = !DILocation(line: 287, column: 7, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 287, column: 6)
!3127 = !DILocation(line: 287, column: 6, scope: !3112)
!3128 = !DILocation(line: 288, column: 3, scope: !3126)
!3129 = !DILocation(line: 290, column: 19, scope: !3112)
!3130 = !DILocation(line: 290, column: 8, scope: !3112)
!3131 = !DILocation(line: 290, column: 6, scope: !3112)
!3132 = !DILocation(line: 291, column: 6, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 291, column: 6)
!3134 = !DILocation(line: 291, column: 6, scope: !3112)
!3135 = !DILocation(line: 292, column: 10, scope: !3133)
!3136 = !DILocation(line: 292, column: 3, scope: !3133)
!3137 = !DILocation(line: 294, column: 6, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 294, column: 6)
!3139 = !DILocation(line: 294, column: 6, scope: !3112)
!3140 = !DILocation(line: 295, column: 3, scope: !3138)
!3141 = !DILocation(line: 295, column: 16, scope: !3138)
!3142 = !DILocation(line: 295, column: 24, scope: !3138)
!3143 = !DILocation(line: 297, column: 3, scope: !3138)
!3144 = !DILocation(line: 297, column: 16, scope: !3138)
!3145 = !DILocation(line: 297, column: 24, scope: !3138)
!3146 = !DILocation(line: 299, column: 9, scope: !3112)
!3147 = !DILocation(line: 299, column: 2, scope: !3112)
!3148 = !DILocation(line: 300, column: 1, scope: !3112)
!3149 = distinct !DISubprogram(name: "show_state_above", scope: !3, file: !3, line: 262, type: !1664, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3150 = !DILocalVariable(name: "state", arg: 1, scope: !3149, file: !3, line: 262, type: !166)
!3151 = !DILocation(line: 262, column: 1, scope: !3149)
!3152 = !DILocalVariable(name: "state_usage", arg: 2, scope: !3149, file: !3, line: 262, type: !168)
!3153 = !DILocalVariable(name: "buf", arg: 3, scope: !3149, file: !3, line: 262, type: !235)
!3154 = distinct !DISubprogram(name: "show_state_below", scope: !3, file: !3, line: 263, type: !1664, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3155 = !DILocalVariable(name: "state", arg: 1, scope: !3154, file: !3, line: 263, type: !166)
!3156 = !DILocation(line: 263, column: 1, scope: !3154)
!3157 = !DILocalVariable(name: "state_usage", arg: 2, scope: !3154, file: !3, line: 263, type: !168)
!3158 = !DILocalVariable(name: "buf", arg: 3, scope: !3154, file: !3, line: 263, type: !235)
!3159 = distinct !DISubprogram(name: "show_state_default_status", scope: !3, file: !3, line: 302, type: !1664, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3160 = !DILocalVariable(name: "state", arg: 1, scope: !3159, file: !3, line: 302, type: !166)
!3161 = !DILocation(line: 302, column: 64, scope: !3159)
!3162 = !DILocalVariable(name: "state_usage", arg: 2, scope: !3159, file: !3, line: 303, type: !168)
!3163 = !DILocation(line: 303, column: 36, scope: !3159)
!3164 = !DILocalVariable(name: "buf", arg: 3, scope: !3159, file: !3, line: 304, type: !235)
!3165 = !DILocation(line: 304, column: 14, scope: !3159)
!3166 = !DILocation(line: 306, column: 17, scope: !3159)
!3167 = !DILocation(line: 307, column: 10, scope: !3159)
!3168 = !DILocation(line: 307, column: 17, scope: !3159)
!3169 = !DILocation(line: 307, column: 23, scope: !3159)
!3170 = !DILocation(line: 306, column: 9, scope: !3159)
!3171 = !DILocation(line: 306, column: 2, scope: !3159)
!3172 = distinct !DISubprogram(name: "show_state_s2idle_usage", scope: !3, file: !3, line: 356, type: !1664, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3173 = !DILocalVariable(name: "state", arg: 1, scope: !3172, file: !3, line: 356, type: !166)
!3174 = !DILocation(line: 356, column: 1, scope: !3172)
!3175 = !DILocalVariable(name: "state_usage", arg: 2, scope: !3172, file: !3, line: 356, type: !168)
!3176 = !DILocalVariable(name: "buf", arg: 3, scope: !3172, file: !3, line: 356, type: !235)
!3177 = distinct !DISubprogram(name: "show_state_s2idle_time", scope: !3, file: !3, line: 357, type: !1664, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3178 = !DILocalVariable(name: "state", arg: 1, scope: !3177, file: !3, line: 357, type: !166)
!3179 = !DILocation(line: 357, column: 1, scope: !3177)
!3180 = !DILocalVariable(name: "state_usage", arg: 2, scope: !3177, file: !3, line: 357, type: !168)
!3181 = !DILocalVariable(name: "buf", arg: 3, scope: !3177, file: !3, line: 357, type: !235)
!3182 = distinct !DISubprogram(name: "cpuidle_remove_s2idle_attr_group", scope: !3, file: !3, line: 389, type: !2839, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3183 = !DILocalVariable(name: "kobj", arg: 1, scope: !3182, file: !3, line: 389, type: !162)
!3184 = !DILocation(line: 389, column: 73, scope: !3182)
!3185 = !DILocation(line: 391, column: 6, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 391, column: 6)
!3187 = !DILocation(line: 391, column: 12, scope: !3186)
!3188 = !DILocation(line: 391, column: 19, scope: !3186)
!3189 = !DILocation(line: 391, column: 6, scope: !3182)
!3190 = !DILocation(line: 392, column: 23, scope: !3186)
!3191 = !DILocation(line: 392, column: 29, scope: !3186)
!3192 = !DILocation(line: 392, column: 3, scope: !3186)
!3193 = !DILocation(line: 393, column: 1, scope: !3182)
!3194 = distinct !DISubprogram(name: "get_order", scope: !3195, file: !3195, line: 29, type: !3196, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3195 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!93, !69}
!3198 = !DILocalVariable(name: "x", arg: 1, scope: !3199, file: !3200, line: 366, type: !117)
!3199 = distinct !DISubprogram(name: "fls64", scope: !3200, file: !3200, line: 366, type: !3201, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3200 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!93, !117}
!3203 = !DILocation(line: 366, column: 40, scope: !3199, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 46, column: 9, scope: !3194)
!3205 = !DILocalVariable(name: "bitpos", scope: !3199, file: !3200, line: 368, type: !93)
!3206 = !DILocation(line: 368, column: 6, scope: !3199, inlinedAt: !3204)
!3207 = !DILocalVariable(name: "size", arg: 1, scope: !3194, file: !3195, line: 29, type: !69)
!3208 = !DILocation(line: 29, column: 63, scope: !3194)
!3209 = !DILocation(line: 31, column: 27, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3194, file: !3195, line: 31, column: 6)
!3211 = !DILocation(line: 31, column: 6, scope: !3210)
!3212 = !DILocation(line: 31, column: 6, scope: !3194)
!3213 = !DILocation(line: 32, column: 8, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !3195, line: 32, column: 7)
!3215 = distinct !DILexicalBlock(scope: !3210, file: !3195, line: 31, column: 34)
!3216 = !DILocation(line: 32, column: 7, scope: !3215)
!3217 = !DILocation(line: 33, column: 4, scope: !3214)
!3218 = !DILocation(line: 35, column: 7, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3215, file: !3195, line: 35, column: 7)
!3220 = !DILocation(line: 35, column: 12, scope: !3219)
!3221 = !DILocation(line: 35, column: 7, scope: !3215)
!3222 = !DILocation(line: 36, column: 4, scope: !3219)
!3223 = !DILocation(line: 38, column: 10, scope: !3215)
!3224 = !DILocation(line: 38, column: 28, scope: !3215)
!3225 = !DILocation(line: 38, column: 41, scope: !3215)
!3226 = !DILocation(line: 38, column: 3, scope: !3215)
!3227 = !DILocation(line: 41, column: 6, scope: !3194)
!3228 = !DILocation(line: 42, column: 7, scope: !3194)
!3229 = !DILocation(line: 46, column: 15, scope: !3194)
!3230 = !DILocation(line: 374, column: 2, scope: !3199, inlinedAt: !3204)
!3231 = !DILocation(line: 376, column: 14, scope: !3199, inlinedAt: !3204)
!3232 = !{i32 258354}
!3233 = !DILocation(line: 377, column: 9, scope: !3199, inlinedAt: !3204)
!3234 = !DILocation(line: 377, column: 16, scope: !3199, inlinedAt: !3204)
!3235 = !DILocation(line: 46, column: 2, scope: !3194)
!3236 = !DILocation(line: 48, column: 1, scope: !3194)
!3237 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3238, file: !3238, line: 30, type: !3239, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3238 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!93, !115}
!3241 = !DILocation(line: 366, column: 40, scope: !3199, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 32, column: 9, scope: !3237)
!3243 = !DILocation(line: 368, column: 6, scope: !3199, inlinedAt: !3242)
!3244 = !DILocalVariable(name: "n", arg: 1, scope: !3237, file: !3238, line: 30, type: !115)
!3245 = !DILocation(line: 30, column: 21, scope: !3237)
!3246 = !DILocation(line: 32, column: 15, scope: !3237)
!3247 = !DILocation(line: 374, column: 2, scope: !3199, inlinedAt: !3242)
!3248 = !DILocation(line: 376, column: 14, scope: !3199, inlinedAt: !3242)
!3249 = !DILocation(line: 377, column: 9, scope: !3199, inlinedAt: !3242)
!3250 = !DILocation(line: 377, column: 16, scope: !3199, inlinedAt: !3242)
!3251 = !DILocation(line: 32, column: 18, scope: !3237)
!3252 = !DILocation(line: 32, column: 2, scope: !3237)
!3253 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1156, file: !1156, line: 137, type: !3254, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!72, !1087, !1426, !282, !70}
!3256 = !DILocalVariable(name: "s", arg: 1, scope: !3253, file: !1156, line: 137, type: !1087)
!3257 = !DILocation(line: 137, column: 54, scope: !3253)
!3258 = !DILocalVariable(name: "object", arg: 2, scope: !3253, file: !1156, line: 137, type: !1426)
!3259 = !DILocation(line: 137, column: 69, scope: !3253)
!3260 = !DILocalVariable(name: "size", arg: 3, scope: !3253, file: !1156, line: 138, type: !282)
!3261 = !DILocation(line: 138, column: 12, scope: !3253)
!3262 = !DILocalVariable(name: "flags", arg: 4, scope: !3253, file: !1156, line: 138, type: !70)
!3263 = !DILocation(line: 138, column: 24, scope: !3253)
!3264 = !DILocation(line: 140, column: 17, scope: !3253)
!3265 = !DILocation(line: 140, column: 2, scope: !3253)
!3266 = distinct !DISubprogram(name: "cpuidle_sysfs_release", scope: !3, file: !3, line: 195, type: !254, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3267 = !DILocalVariable(name: "kobj", arg: 1, scope: !3266, file: !3, line: 195, type: !195)
!3268 = !DILocation(line: 195, column: 51, scope: !3266)
!3269 = !DILocalVariable(name: "kdev", scope: !3266, file: !3, line: 197, type: !1628)
!3270 = !DILocation(line: 197, column: 30, scope: !3266)
!3271 = !DILocalVariable(name: "__mptr", scope: !3272, file: !3, line: 198, type: !72)
!3272 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 198, column: 3)
!3273 = !DILocation(line: 198, column: 3, scope: !3272)
!3274 = !DILocation(line: 198, column: 3, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 198, column: 3)
!3276 = !DILocation(line: 200, column: 12, scope: !3266)
!3277 = !DILocation(line: 200, column: 18, scope: !3266)
!3278 = !DILocation(line: 200, column: 2, scope: !3266)
!3279 = !DILocation(line: 201, column: 1, scope: !3266)
!3280 = distinct !DISubprogram(name: "cpuidle_show", scope: !3, file: !3, line: 160, type: !264, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3281 = !DILocalVariable(name: "kobj", arg: 1, scope: !3280, file: !3, line: 160, type: !195)
!3282 = !DILocation(line: 160, column: 45, scope: !3280)
!3283 = !DILocalVariable(name: "attr", arg: 2, scope: !3280, file: !3, line: 160, type: !271)
!3284 = !DILocation(line: 160, column: 69, scope: !3280)
!3285 = !DILocalVariable(name: "buf", arg: 3, scope: !3280, file: !3, line: 161, type: !235)
!3286 = !DILocation(line: 161, column: 14, scope: !3280)
!3287 = !DILocalVariable(name: "ret", scope: !3280, file: !3, line: 163, type: !93)
!3288 = !DILocation(line: 163, column: 6, scope: !3280)
!3289 = !DILocalVariable(name: "dev", scope: !3280, file: !3, line: 164, type: !129)
!3290 = !DILocation(line: 164, column: 25, scope: !3280)
!3291 = !DILocation(line: 164, column: 49, scope: !3280)
!3292 = !DILocation(line: 164, column: 31, scope: !3280)
!3293 = !DILocalVariable(name: "cattr", scope: !3280, file: !3, line: 165, type: !1670)
!3294 = !DILocation(line: 165, column: 23, scope: !3280)
!3295 = !DILocalVariable(name: "__mptr", scope: !3296, file: !3, line: 165, type: !72)
!3296 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 165, column: 31)
!3297 = !DILocation(line: 165, column: 31, scope: !3296)
!3298 = !DILocation(line: 165, column: 31, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 165, column: 31)
!3300 = !DILocation(line: 167, column: 6, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 167, column: 6)
!3302 = !DILocation(line: 167, column: 13, scope: !3301)
!3303 = !DILocation(line: 167, column: 6, scope: !3280)
!3304 = !DILocation(line: 168, column: 3, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 167, column: 19)
!3306 = !DILocation(line: 169, column: 9, scope: !3305)
!3307 = !DILocation(line: 169, column: 16, scope: !3305)
!3308 = !DILocation(line: 169, column: 21, scope: !3305)
!3309 = !DILocation(line: 169, column: 26, scope: !3305)
!3310 = !DILocation(line: 169, column: 7, scope: !3305)
!3311 = !DILocation(line: 170, column: 3, scope: !3305)
!3312 = !DILocation(line: 171, column: 2, scope: !3305)
!3313 = !DILocation(line: 172, column: 9, scope: !3280)
!3314 = !DILocation(line: 172, column: 2, scope: !3280)
!3315 = distinct !DISubprogram(name: "cpuidle_store", scope: !3, file: !3, line: 175, type: !280, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3316 = !DILocalVariable(name: "kobj", arg: 1, scope: !3315, file: !3, line: 175, type: !195)
!3317 = !DILocation(line: 175, column: 46, scope: !3315)
!3318 = !DILocalVariable(name: "attr", arg: 2, scope: !3315, file: !3, line: 175, type: !271)
!3319 = !DILocation(line: 175, column: 70, scope: !3315)
!3320 = !DILocalVariable(name: "buf", arg: 3, scope: !3315, file: !3, line: 176, type: !98)
!3321 = !DILocation(line: 176, column: 21, scope: !3315)
!3322 = !DILocalVariable(name: "count", arg: 4, scope: !3315, file: !3, line: 176, type: !282)
!3323 = !DILocation(line: 176, column: 33, scope: !3315)
!3324 = !DILocalVariable(name: "ret", scope: !3315, file: !3, line: 178, type: !93)
!3325 = !DILocation(line: 178, column: 6, scope: !3315)
!3326 = !DILocalVariable(name: "dev", scope: !3315, file: !3, line: 179, type: !129)
!3327 = !DILocation(line: 179, column: 25, scope: !3315)
!3328 = !DILocation(line: 179, column: 49, scope: !3315)
!3329 = !DILocation(line: 179, column: 31, scope: !3315)
!3330 = !DILocalVariable(name: "cattr", scope: !3315, file: !3, line: 180, type: !1670)
!3331 = !DILocation(line: 180, column: 23, scope: !3315)
!3332 = !DILocalVariable(name: "__mptr", scope: !3333, file: !3, line: 180, type: !72)
!3333 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 180, column: 31)
!3334 = !DILocation(line: 180, column: 31, scope: !3333)
!3335 = !DILocation(line: 180, column: 31, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 180, column: 31)
!3337 = !DILocation(line: 182, column: 6, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 182, column: 6)
!3339 = !DILocation(line: 182, column: 13, scope: !3338)
!3340 = !DILocation(line: 182, column: 6, scope: !3315)
!3341 = !DILocation(line: 183, column: 3, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 182, column: 20)
!3343 = !DILocation(line: 184, column: 9, scope: !3342)
!3344 = !DILocation(line: 184, column: 16, scope: !3342)
!3345 = !DILocation(line: 184, column: 22, scope: !3342)
!3346 = !DILocation(line: 184, column: 27, scope: !3342)
!3347 = !DILocation(line: 184, column: 32, scope: !3342)
!3348 = !DILocation(line: 184, column: 7, scope: !3342)
!3349 = !DILocation(line: 185, column: 3, scope: !3342)
!3350 = !DILocation(line: 186, column: 2, scope: !3342)
!3351 = !DILocation(line: 187, column: 9, scope: !3315)
!3352 = !DILocation(line: 187, column: 2, scope: !3315)
!3353 = distinct !DISubprogram(name: "to_cpuidle_device", scope: !3, file: !3, line: 152, type: !3354, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!129, !195}
!3356 = !DILocalVariable(name: "kobj", arg: 1, scope: !3353, file: !3, line: 152, type: !195)
!3357 = !DILocation(line: 152, column: 72, scope: !3353)
!3358 = !DILocalVariable(name: "kdev", scope: !3353, file: !3, line: 154, type: !1628)
!3359 = !DILocation(line: 154, column: 30, scope: !3353)
!3360 = !DILocalVariable(name: "__mptr", scope: !3361, file: !3, line: 155, type: !72)
!3361 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 155, column: 3)
!3362 = !DILocation(line: 155, column: 3, scope: !3361)
!3363 = !DILocation(line: 155, column: 3, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 155, column: 3)
!3365 = !DILocation(line: 157, column: 9, scope: !3353)
!3366 = !DILocation(line: 157, column: 15, scope: !3353)
!3367 = !DILocation(line: 157, column: 2, scope: !3353)
