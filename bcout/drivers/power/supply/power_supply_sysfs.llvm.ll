; ModuleID = '../bcout/drivers/power/supply/power_supply_sysfs.llvm.bc'
source_filename = "drivers/power/supply/power_supply_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type opaque
%struct.seq_file = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.vm_operations_struct = type opaque
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.37, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
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
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.37 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.power_supply_attr = type { i8*, [31 x i8], %struct.device_attribute, i8**, i32 }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, {}*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
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
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, {}*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.power_supply = type { %struct.power_supply_desc*, i8**, i64, i8**, i64, %struct.device_node*, i8*, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, %struct.thermal_zone_device*, %struct.thermal_cooling_device* }
%struct.power_supply_desc = type { i8*, i32, i32*, i64, i32*, i64, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32)*, void (%struct.power_supply*)*, void (%struct.power_supply*)*, i8, i32 }
%union.power_supply_propval = type { i8* }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type opaque
%struct.thermal_zone_device = type opaque
%struct.thermal_cooling_device = type opaque

@power_supply_attr_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @power_supply_attr_group, %struct.attribute_group* null], align 16, !dbg !0
@power_supply_attrs = internal global [75 x %struct.power_supply_attr] [%struct.power_supply_attr { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), [31 x i8] c"STATUS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @POWER_SUPPLY_STATUS_TEXT, i32 0, i32 0), i32 5 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), [31 x i8] c"CHARGE_TYPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @POWER_SUPPLY_CHARGE_TYPE_TEXT, i32 0, i32 0), i32 8 }, %struct.power_supply_attr { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), [31 x i8] c"HEALTH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** getelementptr inbounds ([14 x i8*], [14 x i8*]* @POWER_SUPPLY_HEALTH_TEXT, i32 0, i32 0), i32 14 }, %struct.power_supply_attr { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), [31 x i8] c"PRESENT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), [31 x i8] c"ONLINE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), [31 x i8] c"AUTHENTIC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), [31 x i8] c"TECHNOLOGY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @POWER_SUPPLY_TECHNOLOGY_TEXT, i32 0, i32 0), i32 7 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), [31 x i8] c"CYCLE_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), [31 x i8] c"VOLTAGE_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), [31 x i8] c"VOLTAGE_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), [31 x i8] c"VOLTAGE_MAX_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), [31 x i8] c"VOLTAGE_MIN_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), [31 x i8] c"VOLTAGE_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), [31 x i8] c"VOLTAGE_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), [31 x i8] c"VOLTAGE_OCV\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), [31 x i8] c"VOLTAGE_BOOT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), [31 x i8] c"CURRENT_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), [31 x i8] c"CURRENT_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), [31 x i8] c"CURRENT_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), [31 x i8] c"CURRENT_BOOT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), [31 x i8] c"POWER_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), [31 x i8] c"POWER_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), [31 x i8] c"CHARGE_FULL_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), [31 x i8] c"CHARGE_EMPTY_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), [31 x i8] c"CHARGE_FULL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), [31 x i8] c"CHARGE_EMPTY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), [31 x i8] c"CHARGE_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), [31 x i8] c"CHARGE_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), [31 x i8] c"CHARGE_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), [31 x i8] c"CONSTANT_CHARGE_CURRENT\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), [31 x i8] c"CONSTANT_CHARGE_CURRENT_MAX\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0), [31 x i8] c"CONSTANT_CHARGE_VOLTAGE\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i32 0, i32 0), [31 x i8] c"CONSTANT_CHARGE_VOLTAGE_MAX\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i32 0, i32 0), [31 x i8] c"CHARGE_CONTROL_LIMIT\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0), [31 x i8] c"CHARGE_CONTROL_LIMIT_MAX\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0), [31 x i8] c"CHARGE_CONTROL_START_THRESHOLD\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.39, i32 0, i32 0), [31 x i8] c"CHARGE_CONTROL_END_THRESHOLD\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), [31 x i8] c"INPUT_CURRENT_LIMIT\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0), [31 x i8] c"INPUT_VOLTAGE_LIMIT\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0), [31 x i8] c"INPUT_POWER_LIMIT\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0), [31 x i8] c"ENERGY_FULL_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), [31 x i8] c"ENERGY_EMPTY_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), [31 x i8] c"ENERGY_FULL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), [31 x i8] c"ENERGY_EMPTY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), [31 x i8] c"ENERGY_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), [31 x i8] c"ENERGY_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), [31 x i8] c"CAPACITY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i32 0, i32 0), [31 x i8] c"CAPACITY_ALERT_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i32 0, i32 0), [31 x i8] c"CAPACITY_ALERT_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i32 0, i32 0), [31 x i8] c"CAPACITY_ERROR_MARGIN\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), [31 x i8] c"CAPACITY_LEVEL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @POWER_SUPPLY_CAPACITY_LEVEL_TEXT, i32 0, i32 0), i32 6 }, %struct.power_supply_attr { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), [31 x i8] c"TEMP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), [31 x i8] c"TEMP_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), [31 x i8] c"TEMP_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), [31 x i8] c"TEMP_ALERT_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0), [31 x i8] c"TEMP_ALERT_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), [31 x i8] c"TEMP_AMBIENT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.60, i32 0, i32 0), [31 x i8] c"TEMP_AMBIENT_ALERT_MIN\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.61, i32 0, i32 0), [31 x i8] c"TEMP_AMBIENT_ALERT_MAX\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0), [31 x i8] c"TIME_TO_EMPTY_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i32 0, i32 0), [31 x i8] c"TIME_TO_EMPTY_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i32 0, i32 0), [31 x i8] c"TIME_TO_FULL_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i32 0, i32 0), [31 x i8] c"TIME_TO_FULL_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), [31 x i8] c"TYPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** getelementptr inbounds ([13 x i8*], [13 x i8*]* @POWER_SUPPLY_TYPE_TEXT, i32 0, i32 0), i32 13 }, %struct.power_supply_attr { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), [31 x i8] c"USB_TYPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), [31 x i8] c"SCOPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @POWER_SUPPLY_SCOPE_TEXT, i32 0, i32 0), i32 3 }, %struct.power_supply_attr { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0), [31 x i8] c"PRECHARGE_CURRENT\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.70, i32 0, i32 0), [31 x i8] c"CHARGE_TERM_CURRENT\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), [31 x i8] c"CALIBRATE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.72, i32 0, i32 0), [31 x i8] c"MANUFACTURE_YEAR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.73, i32 0, i32 0), [31 x i8] c"MANUFACTURE_MONTH\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0), [31 x i8] c"MANUFACTURE_DAY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), [31 x i8] c"MODEL_NAME\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i32 0, i32 0), [31 x i8] c"MANUFACTURER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }, %struct.power_supply_attr { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i32 0, i32 0), [31 x i8] c"SERIAL_NUMBER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, i8** null, i32 0 }], align 16, !dbg !2027
@.str = private unnamed_addr constant [73 x i8] c"\014%s: Property %d skipped because is is missing from power_supply_attrs\0A\00", align 1
@__func__.power_supply_init_attrs = private unnamed_addr constant [24 x i8] c"power_supply_init_attrs\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"_err_%d\00", align 1
@__power_supply_attrs = internal global [76 x %struct.attribute*] zeroinitializer, align 16, !dbg !2020
@.str.2 = private unnamed_addr constant [21 x i8] c"POWER_SUPPLY_NAME=%s\00", align 1
@power_supply_attr_group = internal global %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* @power_supply_attr_is_visible, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([76 x %struct.attribute*], [76 x %struct.attribute*]* @__power_supply_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2025
@.str.3 = private unnamed_addr constant [7 x i8] c"STATUS\00", align 1
@POWER_SUPPLY_STATUS_TEXT = internal constant [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0)], align 16, !dbg !2032
@.str.4 = private unnamed_addr constant [12 x i8] c"CHARGE_TYPE\00", align 1
@POWER_SUPPLY_CHARGE_TYPE_TEXT = internal constant [8 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i32 0, i32 0)], align 16, !dbg !2037
@.str.5 = private unnamed_addr constant [7 x i8] c"HEALTH\00", align 1
@POWER_SUPPLY_HEALTH_TEXT = internal constant [14 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0)], align 16, !dbg !2040
@.str.6 = private unnamed_addr constant [8 x i8] c"PRESENT\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ONLINE\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"AUTHENTIC\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"TECHNOLOGY\00", align 1
@POWER_SUPPLY_TECHNOLOGY_TEXT = internal constant [7 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0)], align 16, !dbg !2045
@.str.10 = private unnamed_addr constant [12 x i8] c"CYCLE_COUNT\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"VOLTAGE_MAX\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"VOLTAGE_MIN\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"VOLTAGE_MAX_DESIGN\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"VOLTAGE_MIN_DESIGN\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"VOLTAGE_NOW\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"VOLTAGE_AVG\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"VOLTAGE_OCV\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"VOLTAGE_BOOT\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"CURRENT_MAX\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"CURRENT_NOW\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"CURRENT_AVG\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"CURRENT_BOOT\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"POWER_NOW\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"POWER_AVG\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"CHARGE_FULL_DESIGN\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"CHARGE_EMPTY_DESIGN\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"CHARGE_FULL\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"CHARGE_EMPTY\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"CHARGE_NOW\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"CHARGE_AVG\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"CHARGE_COUNTER\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"CONSTANT_CHARGE_CURRENT\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"CONSTANT_CHARGE_CURRENT_MAX\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"CONSTANT_CHARGE_VOLTAGE\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"CONSTANT_CHARGE_VOLTAGE_MAX\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"CHARGE_CONTROL_LIMIT\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"CHARGE_CONTROL_LIMIT_MAX\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"CHARGE_CONTROL_START_THRESHOLD\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"CHARGE_CONTROL_END_THRESHOLD\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"INPUT_CURRENT_LIMIT\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"INPUT_VOLTAGE_LIMIT\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"INPUT_POWER_LIMIT\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"ENERGY_FULL_DESIGN\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"ENERGY_EMPTY_DESIGN\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"ENERGY_FULL\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"ENERGY_EMPTY\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"ENERGY_NOW\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"ENERGY_AVG\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"CAPACITY\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"CAPACITY_ALERT_MIN\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"CAPACITY_ALERT_MAX\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"CAPACITY_ERROR_MARGIN\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"CAPACITY_LEVEL\00", align 1
@POWER_SUPPLY_CAPACITY_LEVEL_TEXT = internal constant [6 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0)], align 16, !dbg !2050
@.str.54 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"TEMP_MAX\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"TEMP_MIN\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"TEMP_ALERT_MIN\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"TEMP_ALERT_MAX\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"TEMP_AMBIENT\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"TEMP_AMBIENT_ALERT_MIN\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"TEMP_AMBIENT_ALERT_MAX\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"TIME_TO_EMPTY_NOW\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"TIME_TO_EMPTY_AVG\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"TIME_TO_FULL_NOW\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"TIME_TO_FULL_AVG\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@POWER_SUPPLY_TYPE_TEXT = internal constant [13 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.124, i32 0, i32 0)], align 16, !dbg !2053
@.str.67 = private unnamed_addr constant [9 x i8] c"USB_TYPE\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"SCOPE\00", align 1
@POWER_SUPPLY_SCOPE_TEXT = internal constant [3 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.126, i32 0, i32 0)], align 16, !dbg !2058
@.str.69 = private unnamed_addr constant [18 x i8] c"PRECHARGE_CURRENT\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"CHARGE_TERM_CURRENT\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"CALIBRATE\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"MANUFACTURE_YEAR\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"MANUFACTURE_MONTH\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"MANUFACTURE_DAY\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"MODEL_NAME\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"MANUFACTURER\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"SERIAL_NUMBER\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"Charging\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"Discharging\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"Not charging\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"Trickle\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"Fast\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"Standard\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"Adaptive\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"Custom\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"Long Life\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"Good\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"Overheat\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"Dead\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"Over voltage\00", align 1
@.str.94 = private unnamed_addr constant [20 x i8] c"Unspecified failure\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"Cold\00", align 1
@.str.96 = private unnamed_addr constant [22 x i8] c"Watchdog timer expire\00", align 1
@.str.97 = private unnamed_addr constant [20 x i8] c"Safety timer expire\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"Over current\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"Calibration required\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"Warm\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"Cool\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"Hot\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"NiMH\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"Li-ion\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"Li-poly\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"LiFe\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"NiCd\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"LiMn\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"Critical\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"Low\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"High\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"Battery\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"UPS\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"Mains\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"USB_DCP\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"USB_CDP\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"USB_ACA\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"USB_C\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"USB_PD\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"USB_PD_DRP\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"BrickID\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"Wireless\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"System\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"Device\00", align 1
@_ctype = external dso_local constant [0 x i8], align 1
@power_supply_show_property._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock undef, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !2061
@__func__.power_supply_show_property = private unnamed_addr constant [27 x i8] c"power_supply_show_property\00", align 1
@.str.127 = private unnamed_addr constant [44 x i8] c"driver failed to report `%s' property: %zd\0A\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@POWER_SUPPLY_USB_TYPE_TEXT = internal constant [10 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i32 0, i32 0)], align 16, !dbg !2074
@.str.131 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.132 = private unnamed_addr constant [45 x i8] c"driver reporting unsupported connected type\0A\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"SDP\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"DCP\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"CDP\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"ACA\00", align 1
@.str.137 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"PD\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"PD_DRP\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"PD_PPS\00", align 1
@.str.141 = private unnamed_addr constant [19 x i8] c"POWER_SUPPLY_%s=%s\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @power_supply_init_attrs(%struct.device_type* %dev_type) #0 !dbg !2085 {
entry:
  %dev_type.addr = alloca %struct.device_type*, align 8
  %i = alloca i32, align 4
  %attr = alloca %struct.device_attribute*, align 8
  store %struct.device_type* %dev_type, %struct.device_type** %dev_type.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_type** %dev_type.addr, metadata !2089, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2091, metadata !DIExpression()), !dbg !2092
  %0 = load %struct.device_type*, %struct.device_type** %dev_type.addr, align 8, !dbg !2093
  %groups = getelementptr inbounds %struct.device_type, %struct.device_type* %0, i32 0, i32 1, !dbg !2094
  store %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @power_supply_attr_groups, i64 0, i64 0), %struct.attribute_group*** %groups, align 8, !dbg !2095
  store i32 0, i32* %i, align 4, !dbg !2096
  br label %for.cond, !dbg !2098

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !2099
  %conv = sext i32 %1 to i64, !dbg !2099
  %cmp = icmp ult i64 %conv, 75, !dbg !2101
  br i1 %cmp, label %for.body, label %for.end, !dbg !2102

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr, metadata !2103, metadata !DIExpression()), !dbg !2105
  %2 = load i32, i32* %i, align 4, !dbg !2106
  %idxprom = sext i32 %2 to i64, !dbg !2108
  %arrayidx = getelementptr [75 x %struct.power_supply_attr], [75 x %struct.power_supply_attr]* @power_supply_attrs, i64 0, i64 %idxprom, !dbg !2108
  %prop_name = getelementptr inbounds %struct.power_supply_attr, %struct.power_supply_attr* %arrayidx, i32 0, i32 0, !dbg !2109
  %3 = load i8*, i8** %prop_name, align 8, !dbg !2109
  %tobool = icmp ne i8* %3, null, !dbg !2108
  br i1 %tobool, label %if.else, label %if.then, !dbg !2110

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !2111
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.power_supply_init_attrs, i64 0, i64 0), i32 %4) #4, !dbg !2111
  %5 = load i32, i32* %i, align 4, !dbg !2113
  %idxprom2 = sext i32 %5 to i64, !dbg !2114
  %arrayidx3 = getelementptr [75 x %struct.power_supply_attr], [75 x %struct.power_supply_attr]* @power_supply_attrs, i64 0, i64 %idxprom2, !dbg !2114
  %attr_name = getelementptr inbounds %struct.power_supply_attr, %struct.power_supply_attr* %arrayidx3, i32 0, i32 1, !dbg !2115
  %arraydecay = getelementptr inbounds [31 x i8], [31 x i8]* %attr_name, i64 0, i64 0, !dbg !2114
  %6 = load i32, i32* %i, align 4, !dbg !2116
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %6) #5, !dbg !2117
  br label %if.end, !dbg !2118

if.else:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !2119
  %idxprom5 = sext i32 %7 to i64, !dbg !2121
  %arrayidx6 = getelementptr [75 x %struct.power_supply_attr], [75 x %struct.power_supply_attr]* @power_supply_attrs, i64 0, i64 %idxprom5, !dbg !2121
  %attr_name7 = getelementptr inbounds %struct.power_supply_attr, %struct.power_supply_attr* %arrayidx6, i32 0, i32 1, !dbg !2122
  %arraydecay8 = getelementptr inbounds [31 x i8], [31 x i8]* %attr_name7, i64 0, i64 0, !dbg !2121
  call void @str_to_lower(i8* %arraydecay8) #5, !dbg !2123
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %i, align 4, !dbg !2124
  %idxprom9 = sext i32 %8 to i64, !dbg !2125
  %arrayidx10 = getelementptr [75 x %struct.power_supply_attr], [75 x %struct.power_supply_attr]* @power_supply_attrs, i64 0, i64 %idxprom9, !dbg !2125
  %dev_attr = getelementptr inbounds %struct.power_supply_attr, %struct.power_supply_attr* %arrayidx10, i32 0, i32 2, !dbg !2126
  store %struct.device_attribute* %dev_attr, %struct.device_attribute** %attr, align 8, !dbg !2127
  %9 = load i32, i32* %i, align 4, !dbg !2128
  %idxprom11 = sext i32 %9 to i64, !dbg !2129
  %arrayidx12 = getelementptr [75 x %struct.power_supply_attr], [75 x %struct.power_supply_attr]* @power_supply_attrs, i64 0, i64 %idxprom11, !dbg !2129
  %attr_name13 = getelementptr inbounds %struct.power_supply_attr, %struct.power_supply_attr* %arrayidx12, i32 0, i32 1, !dbg !2130
  %arraydecay14 = getelementptr inbounds [31 x i8], [31 x i8]* %attr_name13, i64 0, i64 0, !dbg !2129
  %10 = load %struct.device_attribute*, %struct.device_attribute** %attr, align 8, !dbg !2131
  %attr15 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %10, i32 0, i32 0, !dbg !2132
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %attr15, i32 0, i32 0, !dbg !2133
  store i8* %arraydecay14, i8** %name, align 8, !dbg !2134
  %11 = load %struct.device_attribute*, %struct.device_attribute** %attr, align 8, !dbg !2135
  %show = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %11, i32 0, i32 1, !dbg !2136
  store i64 (%struct.device*, %struct.device_attribute*, i8*)* @power_supply_show_property, i64 (%struct.device*, %struct.device_attribute*, i8*)** %show, align 8, !dbg !2137
  %12 = load %struct.device_attribute*, %struct.device_attribute** %attr, align 8, !dbg !2138
  %store = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %12, i32 0, i32 2, !dbg !2139
  store i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @power_supply_store_property, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)** %store, align 8, !dbg !2140
  %13 = load %struct.device_attribute*, %struct.device_attribute** %attr, align 8, !dbg !2141
  %attr16 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %13, i32 0, i32 0, !dbg !2142
  %14 = load i32, i32* %i, align 4, !dbg !2143
  %idxprom17 = sext i32 %14 to i64, !dbg !2144
  %arrayidx18 = getelementptr [76 x %struct.attribute*], [76 x %struct.attribute*]* @__power_supply_attrs, i64 0, i64 %idxprom17, !dbg !2144
  store %struct.attribute* %attr16, %struct.attribute** %arrayidx18, align 8, !dbg !2145
  br label %for.inc, !dbg !2146

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4, !dbg !2147
  %inc = add i32 %15, 1, !dbg !2147
  store i32 %inc, i32* %i, align 4, !dbg !2147
  br label %for.cond, !dbg !2148, !llvm.loop !2149

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2151
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @str_to_lower(i8* %str) #0 !dbg !2152 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !2155, metadata !DIExpression()), !dbg !2156
  br label %while.cond, !dbg !2157

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %str.addr, align 8, !dbg !2158
  %1 = load i8, i8* %0, align 1, !dbg !2159
  %tobool = icmp ne i8 %1, 0, !dbg !2157
  br i1 %tobool, label %while.body, label %while.end, !dbg !2157

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %str.addr, align 8, !dbg !2160
  %3 = load i8, i8* %2, align 1, !dbg !2160
  %call = call zeroext i8 @__tolower(i8 zeroext %3) #5, !dbg !2160
  %4 = load i8*, i8** %str.addr, align 8, !dbg !2162
  store i8 %call, i8* %4, align 1, !dbg !2163
  %5 = load i8*, i8** %str.addr, align 8, !dbg !2164
  %incdec.ptr = getelementptr i8, i8* %5, i32 1, !dbg !2164
  store i8* %incdec.ptr, i8** %str.addr, align 8, !dbg !2164
  br label %while.cond, !dbg !2157, !llvm.loop !2165

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2167
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @power_supply_show_property(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2063 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ret = alloca i64, align 8
  %psy = alloca %struct.power_supply*, align 8
  %ps_attr = alloca %struct.power_supply_attr*, align 8
  %psp = alloca i32, align 4
  %value = alloca %union.power_supply_propval, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2168, metadata !DIExpression()), !dbg !2169
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2170, metadata !DIExpression()), !dbg !2171
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2172, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !2174, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !2176, metadata !DIExpression()), !dbg !2250
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2251
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !2252
  %1 = bitcast i8* %call to %struct.power_supply*, !dbg !2252
  store %struct.power_supply* %1, %struct.power_supply** %psy, align 8, !dbg !2250
  call void @llvm.dbg.declare(metadata %struct.power_supply_attr** %ps_attr, metadata !2253, metadata !DIExpression()), !dbg !2254
  %2 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !2255
  %call1 = call %struct.power_supply_attr* @to_ps_attr(%struct.device_attribute* %2) #5, !dbg !2256
  store %struct.power_supply_attr* %call1, %struct.power_supply_attr** %ps_attr, align 8, !dbg !2254
  call void @llvm.dbg.declare(metadata i32* %psp, metadata !2257, metadata !DIExpression()), !dbg !2258
  %3 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !2259
  %call2 = call i32 @dev_attr_psp(%struct.device_attribute* %3) #5, !dbg !2260
  store i32 %call2, i32* %psp, align 4, !dbg !2258
  call void @llvm.dbg.declare(metadata %union.power_supply_propval* %value, metadata !2261, metadata !DIExpression()), !dbg !2262
  %4 = load i32, i32* %psp, align 4, !dbg !2263
  %cmp = icmp eq i32 %4, 63, !dbg !2265
  br i1 %cmp, label %if.then, label %if.else, !dbg !2266

if.then:                                          ; preds = %entry
  %5 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2267
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %5, i32 0, i32 0, !dbg !2269
  %6 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8, !dbg !2269
  %type = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %6, i32 0, i32 1, !dbg !2270
  %7 = load i32, i32* %type, align 8, !dbg !2270
  %intval = bitcast %union.power_supply_propval* %value to i32*, !dbg !2271
  store i32 %7, i32* %intval, align 8, !dbg !2272
  br label %if.end22, !dbg !2273

if.else:                                          ; preds = %entry
  %8 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2274
  %9 = load i32, i32* %psp, align 4, !dbg !2276
  %call3 = call i32 @power_supply_get_property(%struct.power_supply* %8, i32 %9, %union.power_supply_propval* %value) #5, !dbg !2277
  %conv = sext i32 %call3 to i64, !dbg !2277
  store i64 %conv, i64* %ret, align 8, !dbg !2278
  %10 = load i64, i64* %ret, align 8, !dbg !2279
  %cmp4 = icmp slt i64 %10, 0, !dbg !2281
  br i1 %cmp4, label %if.then6, label %if.end21, !dbg !2282

if.then6:                                         ; preds = %if.else
  %11 = load i64, i64* %ret, align 8, !dbg !2283
  %cmp7 = icmp eq i64 %11, -61, !dbg !2286
  br i1 %cmp7, label %if.then9, label %if.else10, !dbg !2287

if.then9:                                         ; preds = %if.then6
  br label %if.end20, !dbg !2288

if.else10:                                        ; preds = %if.then6
  %12 = load i64, i64* %ret, align 8, !dbg !2289
  %cmp11 = icmp ne i64 %12, -19, !dbg !2291
  br i1 %cmp11, label %land.lhs.true, label %if.end19, !dbg !2292

land.lhs.true:                                    ; preds = %if.else10
  %13 = load i64, i64* %ret, align 8, !dbg !2293
  %cmp13 = icmp ne i64 %13, -11, !dbg !2294
  br i1 %cmp13, label %if.then15, label %if.end19, !dbg !2295

if.then15:                                        ; preds = %land.lhs.true
  br label %do.body, !dbg !2296

do.body:                                          ; preds = %if.then15
  %call16 = call i32 @___ratelimit(%struct.ratelimit_state* @power_supply_show_property._rs, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.power_supply_show_property, i64 0, i64 0)) #5, !dbg !2297
  %tobool = icmp ne i32 %call16, 0, !dbg !2297
  br i1 %tobool, label %if.then17, label %if.end, !dbg !2300

if.then17:                                        ; preds = %do.body
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2297
  %15 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !2297
  %attr18 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %15, i32 0, i32 0, !dbg !2297
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %attr18, i32 0, i32 0, !dbg !2297
  %16 = load i8*, i8** %name, align 8, !dbg !2297
  %17 = load i64, i64* %ret, align 8, !dbg !2297
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.127, i64 0, i64 0), i8* %16, i64 %17) #4, !dbg !2297
  br label %if.end, !dbg !2297

if.end:                                           ; preds = %if.then17, %do.body
  br label %do.end, !dbg !2300

do.end:                                           ; preds = %if.end
  br label %if.end19, !dbg !2300

if.end19:                                         ; preds = %do.end, %land.lhs.true, %if.else10
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then9
  %18 = load i64, i64* %ret, align 8, !dbg !2301
  store i64 %18, i64* %retval, align 8, !dbg !2302
  br label %return, !dbg !2302

if.end21:                                         ; preds = %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then
  %19 = load %struct.power_supply_attr*, %struct.power_supply_attr** %ps_attr, align 8, !dbg !2303
  %text_values_len = getelementptr inbounds %struct.power_supply_attr, %struct.power_supply_attr* %19, i32 0, i32 4, !dbg !2305
  %20 = load i32, i32* %text_values_len, align 8, !dbg !2305
  %cmp23 = icmp sgt i32 %20, 0, !dbg !2306
  br i1 %cmp23, label %land.lhs.true25, label %if.end38, !dbg !2307

land.lhs.true25:                                  ; preds = %if.end22
  %intval26 = bitcast %union.power_supply_propval* %value to i32*, !dbg !2308
  %21 = load i32, i32* %intval26, align 8, !dbg !2308
  %22 = load %struct.power_supply_attr*, %struct.power_supply_attr** %ps_attr, align 8, !dbg !2309
  %text_values_len27 = getelementptr inbounds %struct.power_supply_attr, %struct.power_supply_attr* %22, i32 0, i32 4, !dbg !2310
  %23 = load i32, i32* %text_values_len27, align 8, !dbg !2310
  %cmp28 = icmp slt i32 %21, %23, !dbg !2311
  br i1 %cmp28, label %land.lhs.true30, label %if.end38, !dbg !2312

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %intval31 = bitcast %union.power_supply_propval* %value to i32*, !dbg !2313
  %24 = load i32, i32* %intval31, align 8, !dbg !2313
  %cmp32 = icmp sge i32 %24, 0, !dbg !2314
  br i1 %cmp32, label %if.then34, label %if.end38, !dbg !2315

if.then34:                                        ; preds = %land.lhs.true30
  %25 = load i8*, i8** %buf.addr, align 8, !dbg !2316
  %26 = load %struct.power_supply_attr*, %struct.power_supply_attr** %ps_attr, align 8, !dbg !2318
  %text_values = getelementptr inbounds %struct.power_supply_attr, %struct.power_supply_attr* %26, i32 0, i32 3, !dbg !2319
  %27 = load i8**, i8*** %text_values, align 8, !dbg !2319
  %intval35 = bitcast %union.power_supply_propval* %value to i32*, !dbg !2320
  %28 = load i32, i32* %intval35, align 8, !dbg !2320
  %idxprom = sext i32 %28 to i64, !dbg !2318
  %arrayidx = getelementptr i8*, i8** %27, i64 %idxprom, !dbg !2318
  %29 = load i8*, i8** %arrayidx, align 8, !dbg !2318
  %call36 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i64 0, i64 0), i8* %29) #5, !dbg !2321
  %conv37 = sext i32 %call36 to i64, !dbg !2321
  store i64 %conv37, i64* %retval, align 8, !dbg !2322
  br label %return, !dbg !2322

if.end38:                                         ; preds = %land.lhs.true30, %land.lhs.true25, %if.end22
  %30 = load i32, i32* %psp, align 4, !dbg !2323
  switch i32 %30, label %sw.default [
    i32 64, label %sw.bb
    i32 72, label %sw.bb41
    i32 73, label %sw.bb41
    i32 74, label %sw.bb41
  ], !dbg !2324

sw.bb:                                            ; preds = %if.end38
  %31 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2325
  %32 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2327
  %desc39 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %32, i32 0, i32 0, !dbg !2328
  %33 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc39, align 8, !dbg !2328
  %34 = load i8*, i8** %buf.addr, align 8, !dbg !2329
  %call40 = call i64 @power_supply_show_usb_type(%struct.device* %31, %struct.power_supply_desc* %33, %union.power_supply_propval* %value, i8* %34) #5, !dbg !2330
  store i64 %call40, i64* %ret, align 8, !dbg !2331
  br label %sw.epilog, !dbg !2332

sw.bb41:                                          ; preds = %if.end38, %if.end38, %if.end38
  %35 = load i8*, i8** %buf.addr, align 8, !dbg !2333
  %strval = bitcast %union.power_supply_propval* %value to i8**, !dbg !2334
  %36 = load i8*, i8** %strval, align 8, !dbg !2334
  %call42 = call i32 (i8*, i8*, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i64 0, i64 0), i8* %36) #5, !dbg !2335
  %conv43 = sext i32 %call42 to i64, !dbg !2335
  store i64 %conv43, i64* %ret, align 8, !dbg !2336
  br label %sw.epilog, !dbg !2337

sw.default:                                       ; preds = %if.end38
  %37 = load i8*, i8** %buf.addr, align 8, !dbg !2338
  %intval44 = bitcast %union.power_supply_propval* %value to i32*, !dbg !2339
  %38 = load i32, i32* %intval44, align 8, !dbg !2339
  %call45 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0), i32 %38) #5, !dbg !2340
  %conv46 = sext i32 %call45 to i64, !dbg !2340
  store i64 %conv46, i64* %ret, align 8, !dbg !2341
  br label %sw.epilog, !dbg !2342

sw.epilog:                                        ; preds = %sw.default, %sw.bb41, %sw.bb
  %39 = load i64, i64* %ret, align 8, !dbg !2343
  store i64 %39, i64* %retval, align 8, !dbg !2344
  br label %return, !dbg !2344

return:                                           ; preds = %sw.epilog, %if.then34, %if.end20
  %40 = load i64, i64* %retval, align 8, !dbg !2345
  ret i64 %40, !dbg !2345
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @power_supply_store_property(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !2346 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  %psy = alloca %struct.power_supply*, align 8
  %ps_attr = alloca %struct.power_supply_attr*, align 8
  %psp = alloca i32, align 4
  %value = alloca %union.power_supply_propval, align 8
  %long_val = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2347, metadata !DIExpression()), !dbg !2348
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2349, metadata !DIExpression()), !dbg !2350
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2351, metadata !DIExpression()), !dbg !2352
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !2353, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !2355, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !2357, metadata !DIExpression()), !dbg !2358
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2359
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !2360
  %1 = bitcast i8* %call to %struct.power_supply*, !dbg !2360
  store %struct.power_supply* %1, %struct.power_supply** %psy, align 8, !dbg !2358
  call void @llvm.dbg.declare(metadata %struct.power_supply_attr** %ps_attr, metadata !2361, metadata !DIExpression()), !dbg !2362
  %2 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !2363
  %call1 = call %struct.power_supply_attr* @to_ps_attr(%struct.device_attribute* %2) #5, !dbg !2364
  store %struct.power_supply_attr* %call1, %struct.power_supply_attr** %ps_attr, align 8, !dbg !2362
  call void @llvm.dbg.declare(metadata i32* %psp, metadata !2365, metadata !DIExpression()), !dbg !2366
  %3 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !2367
  %call2 = call i32 @dev_attr_psp(%struct.device_attribute* %3) #5, !dbg !2368
  store i32 %call2, i32* %psp, align 4, !dbg !2366
  call void @llvm.dbg.declare(metadata %union.power_supply_propval* %value, metadata !2369, metadata !DIExpression()), !dbg !2370
  store i64 -22, i64* %ret, align 8, !dbg !2371
  %4 = load %struct.power_supply_attr*, %struct.power_supply_attr** %ps_attr, align 8, !dbg !2372
  %text_values_len = getelementptr inbounds %struct.power_supply_attr, %struct.power_supply_attr* %4, i32 0, i32 4, !dbg !2374
  %5 = load i32, i32* %text_values_len, align 8, !dbg !2374
  %cmp = icmp sgt i32 %5, 0, !dbg !2375
  br i1 %cmp, label %if.then, label %if.end, !dbg !2376

if.then:                                          ; preds = %entry
  %6 = load %struct.power_supply_attr*, %struct.power_supply_attr** %ps_attr, align 8, !dbg !2377
  %text_values = getelementptr inbounds %struct.power_supply_attr, %struct.power_supply_attr* %6, i32 0, i32 3, !dbg !2379
  %7 = load i8**, i8*** %text_values, align 8, !dbg !2379
  %8 = load %struct.power_supply_attr*, %struct.power_supply_attr** %ps_attr, align 8, !dbg !2380
  %text_values_len3 = getelementptr inbounds %struct.power_supply_attr, %struct.power_supply_attr* %8, i32 0, i32 4, !dbg !2381
  %9 = load i32, i32* %text_values_len3, align 8, !dbg !2381
  %conv = sext i32 %9 to i64, !dbg !2380
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !2382
  %call4 = call i32 @__sysfs_match_string(i8** %7, i64 %conv, i8* %10) #5, !dbg !2383
  %conv5 = sext i32 %call4 to i64, !dbg !2383
  store i64 %conv5, i64* %ret, align 8, !dbg !2384
  br label %if.end, !dbg !2385

if.end:                                           ; preds = %if.then, %entry
  %11 = load i64, i64* %ret, align 8, !dbg !2386
  %cmp6 = icmp slt i64 %11, 0, !dbg !2388
  br i1 %cmp6, label %if.then8, label %if.end15, !dbg !2389

if.then8:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %long_val, metadata !2390, metadata !DIExpression()), !dbg !2392
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !2393
  %call9 = call i32 @kstrtol(i8* %12, i32 10, i64* %long_val) #5, !dbg !2394
  %conv10 = sext i32 %call9 to i64, !dbg !2394
  store i64 %conv10, i64* %ret, align 8, !dbg !2395
  %13 = load i64, i64* %ret, align 8, !dbg !2396
  %cmp11 = icmp slt i64 %13, 0, !dbg !2398
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !2399

if.then13:                                        ; preds = %if.then8
  %14 = load i64, i64* %ret, align 8, !dbg !2400
  store i64 %14, i64* %retval, align 8, !dbg !2401
  br label %return, !dbg !2401

if.end14:                                         ; preds = %if.then8
  %15 = load i64, i64* %long_val, align 8, !dbg !2402
  store i64 %15, i64* %ret, align 8, !dbg !2403
  br label %if.end15, !dbg !2404

if.end15:                                         ; preds = %if.end14, %if.end
  %16 = load i64, i64* %ret, align 8, !dbg !2405
  %conv16 = trunc i64 %16 to i32, !dbg !2405
  %intval = bitcast %union.power_supply_propval* %value to i32*, !dbg !2406
  store i32 %conv16, i32* %intval, align 8, !dbg !2407
  %17 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2408
  %18 = load i32, i32* %psp, align 4, !dbg !2409
  %call17 = call i32 @power_supply_set_property(%struct.power_supply* %17, i32 %18, %union.power_supply_propval* %value) #5, !dbg !2410
  %conv18 = sext i32 %call17 to i64, !dbg !2410
  store i64 %conv18, i64* %ret, align 8, !dbg !2411
  %19 = load i64, i64* %ret, align 8, !dbg !2412
  %cmp19 = icmp slt i64 %19, 0, !dbg !2414
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !2415

if.then21:                                        ; preds = %if.end15
  %20 = load i64, i64* %ret, align 8, !dbg !2416
  store i64 %20, i64* %retval, align 8, !dbg !2417
  br label %return, !dbg !2417

if.end22:                                         ; preds = %if.end15
  %21 = load i64, i64* %count.addr, align 8, !dbg !2418
  store i64 %21, i64* %retval, align 8, !dbg !2419
  br label %return, !dbg !2419

return:                                           ; preds = %if.end22, %if.then21, %if.then13
  %22 = load i64, i64* %retval, align 8, !dbg !2420
  ret i64 %22, !dbg !2420
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @power_supply_uevent(%struct.device* %dev, %struct.kobj_uevent_env* %env) #0 !dbg !2421 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %env.addr = alloca %struct.kobj_uevent_env*, align 8
  %psy = alloca %struct.power_supply*, align 8
  %ret = alloca i32, align 4
  %j = alloca i32, align 4
  %prop_buf = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2422, metadata !DIExpression()), !dbg !2423
  store %struct.kobj_uevent_env* %env, %struct.kobj_uevent_env** %env.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_uevent_env** %env.addr, metadata !2424, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !2426, metadata !DIExpression()), !dbg !2427
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2428
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !2429
  %1 = bitcast i8* %call to %struct.power_supply*, !dbg !2429
  store %struct.power_supply* %1, %struct.power_supply** %psy, align 8, !dbg !2427
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2430, metadata !DIExpression()), !dbg !2431
  store i32 0, i32* %ret, align 4, !dbg !2431
  call void @llvm.dbg.declare(metadata i32* %j, metadata !2432, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.declare(metadata i8** %prop_buf, metadata !2434, metadata !DIExpression()), !dbg !2435
  %2 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2436
  %tobool = icmp ne %struct.power_supply* %2, null, !dbg !2436
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2438

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2439
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %3, i32 0, i32 0, !dbg !2440
  %4 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8, !dbg !2440
  %tobool1 = icmp ne %struct.power_supply_desc* %4, null, !dbg !2439
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2441

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load i32, i32* %ret, align 4, !dbg !2442
  store i32 %5, i32* %retval, align 4, !dbg !2444
  br label %return, !dbg !2444

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !2445
  %7 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2446
  %desc2 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %7, i32 0, i32 0, !dbg !2447
  %8 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc2, align 8, !dbg !2447
  %name = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %8, i32 0, i32 0, !dbg !2448
  %9 = load i8*, i8** %name, align 8, !dbg !2448
  %call3 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %9) #5, !dbg !2449
  store i32 %call3, i32* %ret, align 4, !dbg !2450
  %10 = load i32, i32* %ret, align 4, !dbg !2451
  %tobool4 = icmp ne i32 %10, 0, !dbg !2451
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2453

if.then5:                                         ; preds = %if.end
  %11 = load i32, i32* %ret, align 4, !dbg !2454
  store i32 %11, i32* %retval, align 4, !dbg !2455
  br label %return, !dbg !2455

if.end6:                                          ; preds = %if.end
  %call7 = call i64 @get_zeroed_page(i32 3264) #5, !dbg !2456
  %12 = inttoptr i64 %call7 to i8*, !dbg !2457
  store i8* %12, i8** %prop_buf, align 8, !dbg !2458
  %13 = load i8*, i8** %prop_buf, align 8, !dbg !2459
  %tobool8 = icmp ne i8* %13, null, !dbg !2459
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !2461

if.then9:                                         ; preds = %if.end6
  store i32 -12, i32* %retval, align 4, !dbg !2462
  br label %return, !dbg !2462

if.end10:                                         ; preds = %if.end6
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2463
  %15 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !2464
  %16 = load i8*, i8** %prop_buf, align 8, !dbg !2465
  %call11 = call i32 @add_prop_uevent(%struct.device* %14, %struct.kobj_uevent_env* %15, i32 63, i8* %16) #5, !dbg !2466
  store i32 %call11, i32* %ret, align 4, !dbg !2467
  %17 = load i32, i32* %ret, align 4, !dbg !2468
  %tobool12 = icmp ne i32 %17, 0, !dbg !2468
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !2470

if.then13:                                        ; preds = %if.end10
  br label %out, !dbg !2471

if.end14:                                         ; preds = %if.end10
  store i32 0, i32* %j, align 4, !dbg !2472
  br label %for.cond, !dbg !2474

for.cond:                                         ; preds = %for.inc, %if.end14
  %18 = load i32, i32* %j, align 4, !dbg !2475
  %conv = sext i32 %18 to i64, !dbg !2475
  %19 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2477
  %desc15 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %19, i32 0, i32 0, !dbg !2478
  %20 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc15, align 8, !dbg !2478
  %num_properties = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %20, i32 0, i32 5, !dbg !2479
  %21 = load i64, i64* %num_properties, align 8, !dbg !2479
  %cmp = icmp ult i64 %conv, %21, !dbg !2480
  br i1 %cmp, label %for.body, label %for.end, !dbg !2481

for.body:                                         ; preds = %for.cond
  %22 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2482
  %23 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !2484
  %24 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2485
  %desc17 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %24, i32 0, i32 0, !dbg !2486
  %25 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc17, align 8, !dbg !2486
  %properties = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %25, i32 0, i32 4, !dbg !2487
  %26 = load i32*, i32** %properties, align 8, !dbg !2487
  %27 = load i32, i32* %j, align 4, !dbg !2488
  %idxprom = sext i32 %27 to i64, !dbg !2485
  %arrayidx = getelementptr i32, i32* %26, i64 %idxprom, !dbg !2485
  %28 = load i32, i32* %arrayidx, align 4, !dbg !2485
  %29 = load i8*, i8** %prop_buf, align 8, !dbg !2489
  %call18 = call i32 @add_prop_uevent(%struct.device* %22, %struct.kobj_uevent_env* %23, i32 %28, i8* %29) #5, !dbg !2490
  store i32 %call18, i32* %ret, align 4, !dbg !2491
  %30 = load i32, i32* %ret, align 4, !dbg !2492
  %tobool19 = icmp ne i32 %30, 0, !dbg !2492
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !2494

if.then20:                                        ; preds = %for.body
  br label %out, !dbg !2495

if.end21:                                         ; preds = %for.body
  br label %for.inc, !dbg !2496

for.inc:                                          ; preds = %if.end21
  %31 = load i32, i32* %j, align 4, !dbg !2497
  %inc = add i32 %31, 1, !dbg !2497
  store i32 %inc, i32* %j, align 4, !dbg !2497
  br label %for.cond, !dbg !2498, !llvm.loop !2499

for.end:                                          ; preds = %for.cond
  br label %out, !dbg !2500

out:                                              ; preds = %for.end, %if.then20, %if.then13
  call void @llvm.dbg.label(metadata !2501), !dbg !2502
  %32 = load i8*, i8** %prop_buf, align 8, !dbg !2503
  %33 = ptrtoint i8* %32 to i64, !dbg !2503
  call void @free_pages(i64 %33, i32 0) #5, !dbg !2503
  %34 = load i32, i32* %ret, align 4, !dbg !2504
  store i32 %34, i32* %retval, align 4, !dbg !2505
  br label %return, !dbg !2505

return:                                           ; preds = %out, %if.then9, %if.then5, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !2506
  ret i32 %35, !dbg !2506
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !2507 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2512, metadata !DIExpression()), !dbg !2513
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2514
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !2515
  %1 = load i8*, i8** %driver_data, align 8, !dbg !2515
  ret i8* %1, !dbg !2516
}

; Function Attrs: noredzone
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i64 @get_zeroed_page(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @add_prop_uevent(%struct.device* %dev, %struct.kobj_uevent_env* %env, i32 %prop, i8* %prop_buf) #0 !dbg !2517 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %env.addr = alloca %struct.kobj_uevent_env*, align 8
  %prop.addr = alloca i32, align 4
  %prop_buf.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %pwr_attr = alloca %struct.power_supply_attr*, align 8
  %dev_attr = alloca %struct.device_attribute*, align 8
  %line = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2520, metadata !DIExpression()), !dbg !2521
  store %struct.kobj_uevent_env* %env, %struct.kobj_uevent_env** %env.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_uevent_env** %env.addr, metadata !2522, metadata !DIExpression()), !dbg !2523
  store i32 %prop, i32* %prop.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %prop.addr, metadata !2524, metadata !DIExpression()), !dbg !2525
  store i8* %prop_buf, i8** %prop_buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_buf.addr, metadata !2526, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2528, metadata !DIExpression()), !dbg !2529
  store i32 0, i32* %ret, align 4, !dbg !2529
  call void @llvm.dbg.declare(metadata %struct.power_supply_attr** %pwr_attr, metadata !2530, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %dev_attr, metadata !2532, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.declare(metadata i8** %line, metadata !2534, metadata !DIExpression()), !dbg !2535
  %0 = load i32, i32* %prop.addr, align 4, !dbg !2536
  %idxprom = zext i32 %0 to i64, !dbg !2537
  %arrayidx = getelementptr [75 x %struct.power_supply_attr], [75 x %struct.power_supply_attr]* @power_supply_attrs, i64 0, i64 %idxprom, !dbg !2537
  store %struct.power_supply_attr* %arrayidx, %struct.power_supply_attr** %pwr_attr, align 8, !dbg !2538
  %1 = load %struct.power_supply_attr*, %struct.power_supply_attr** %pwr_attr, align 8, !dbg !2539
  %dev_attr1 = getelementptr inbounds %struct.power_supply_attr, %struct.power_supply_attr* %1, i32 0, i32 2, !dbg !2540
  store %struct.device_attribute* %dev_attr1, %struct.device_attribute** %dev_attr, align 8, !dbg !2541
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2542
  %3 = load %struct.device_attribute*, %struct.device_attribute** %dev_attr, align 8, !dbg !2543
  %4 = load i8*, i8** %prop_buf.addr, align 8, !dbg !2544
  %call = call i64 @power_supply_show_property(%struct.device* %2, %struct.device_attribute* %3, i8* %4) #5, !dbg !2545
  %conv = trunc i64 %call to i32, !dbg !2545
  store i32 %conv, i32* %ret, align 4, !dbg !2546
  %5 = load i32, i32* %ret, align 4, !dbg !2547
  %cmp = icmp eq i32 %5, -19, !dbg !2549
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2550

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %ret, align 4, !dbg !2551
  %cmp3 = icmp eq i32 %6, -61, !dbg !2552
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2553

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !2554
  br label %return, !dbg !2554

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i32, i32* %ret, align 4, !dbg !2556
  %cmp5 = icmp slt i32 %7, 0, !dbg !2558
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !2559

if.then7:                                         ; preds = %if.end
  %8 = load i32, i32* %ret, align 4, !dbg !2560
  store i32 %8, i32* %retval, align 4, !dbg !2561
  br label %return, !dbg !2561

if.end8:                                          ; preds = %if.end
  %9 = load i8*, i8** %prop_buf.addr, align 8, !dbg !2562
  %call9 = call i8* @strchr(i8* %9, i32 10) #5, !dbg !2563
  store i8* %call9, i8** %line, align 8, !dbg !2564
  %10 = load i8*, i8** %line, align 8, !dbg !2565
  %tobool = icmp ne i8* %10, null, !dbg !2565
  br i1 %tobool, label %if.then10, label %if.end11, !dbg !2567

if.then10:                                        ; preds = %if.end8
  %11 = load i8*, i8** %line, align 8, !dbg !2568
  store i8 0, i8* %11, align 1, !dbg !2569
  br label %if.end11, !dbg !2570

if.end11:                                         ; preds = %if.then10, %if.end8
  %12 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !2571
  %13 = load %struct.power_supply_attr*, %struct.power_supply_attr** %pwr_attr, align 8, !dbg !2572
  %prop_name = getelementptr inbounds %struct.power_supply_attr, %struct.power_supply_attr* %13, i32 0, i32 0, !dbg !2573
  %14 = load i8*, i8** %prop_name, align 8, !dbg !2573
  %15 = load i8*, i8** %prop_buf.addr, align 8, !dbg !2574
  %call12 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.141, i64 0, i64 0), i8* %14, i8* %15) #5, !dbg !2575
  store i32 %call12, i32* %retval, align 4, !dbg !2576
  br label %return, !dbg !2576

return:                                           ; preds = %if.end11, %if.then7, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !2577
  ret i32 %16, !dbg !2577
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @free_pages(i64, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @power_supply_attr_is_visible(%struct.kobject* %kobj, %struct.attribute* %attr, i32 %attrno) #0 !dbg !2578 {
entry:
  %retval = alloca i16, align 2
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  %attrno.addr = alloca i32, align 4
  %dev = alloca %struct.device*, align 8
  %psy = alloca %struct.power_supply*, align 8
  %mode = alloca i16, align 2
  %i = alloca i32, align 4
  %property = alloca i32, align 4
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !2579, metadata !DIExpression()), !dbg !2580
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !2581, metadata !DIExpression()), !dbg !2582
  store i32 %attrno, i32* %attrno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %attrno.addr, metadata !2583, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2585, metadata !DIExpression()), !dbg !2586
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !2587
  %call = call %struct.device* @kobj_to_dev(%struct.kobject* %0) #5, !dbg !2588
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !2586
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !2589, metadata !DIExpression()), !dbg !2590
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2591
  %call1 = call i8* @dev_get_drvdata(%struct.device* %1) #5, !dbg !2592
  %2 = bitcast i8* %call1 to %struct.power_supply*, !dbg !2592
  store %struct.power_supply* %2, %struct.power_supply** %psy, align 8, !dbg !2590
  call void @llvm.dbg.declare(metadata i16* %mode, metadata !2593, metadata !DIExpression()), !dbg !2594
  store i16 292, i16* %mode, align 2, !dbg !2594
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2595, metadata !DIExpression()), !dbg !2596
  %3 = load i32, i32* %attrno.addr, align 4, !dbg !2597
  %idxprom = sext i32 %3 to i64, !dbg !2599
  %arrayidx = getelementptr [75 x %struct.power_supply_attr], [75 x %struct.power_supply_attr]* @power_supply_attrs, i64 0, i64 %idxprom, !dbg !2599
  %prop_name = getelementptr inbounds %struct.power_supply_attr, %struct.power_supply_attr* %arrayidx, i32 0, i32 0, !dbg !2600
  %4 = load i8*, i8** %prop_name, align 8, !dbg !2600
  %tobool = icmp ne i8* %4, null, !dbg !2599
  br i1 %tobool, label %if.end, label %if.then, !dbg !2601

if.then:                                          ; preds = %entry
  store i16 0, i16* %retval, align 2, !dbg !2602
  br label %return, !dbg !2602

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %attrno.addr, align 4, !dbg !2603
  %cmp = icmp eq i32 %5, 63, !dbg !2605
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2606

if.then2:                                         ; preds = %if.end
  %6 = load i16, i16* %mode, align 2, !dbg !2607
  store i16 %6, i16* %retval, align 2, !dbg !2608
  br label %return, !dbg !2608

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !2609
  br label %for.cond, !dbg !2611

for.cond:                                         ; preds = %for.inc, %if.end3
  %7 = load i32, i32* %i, align 4, !dbg !2612
  %conv = sext i32 %7 to i64, !dbg !2612
  %8 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2614
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %8, i32 0, i32 0, !dbg !2615
  %9 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8, !dbg !2615
  %num_properties = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %9, i32 0, i32 5, !dbg !2616
  %10 = load i64, i64* %num_properties, align 8, !dbg !2616
  %cmp4 = icmp ult i64 %conv, %10, !dbg !2617
  br i1 %cmp4, label %for.body, label %for.end, !dbg !2618

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %property, metadata !2619, metadata !DIExpression()), !dbg !2621
  %11 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2622
  %desc6 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %11, i32 0, i32 0, !dbg !2623
  %12 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc6, align 8, !dbg !2623
  %properties = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %12, i32 0, i32 4, !dbg !2624
  %13 = load i32*, i32** %properties, align 8, !dbg !2624
  %14 = load i32, i32* %i, align 4, !dbg !2625
  %idxprom7 = sext i32 %14 to i64, !dbg !2622
  %arrayidx8 = getelementptr i32, i32* %13, i64 %idxprom7, !dbg !2622
  %15 = load i32, i32* %arrayidx8, align 4, !dbg !2622
  store i32 %15, i32* %property, align 4, !dbg !2621
  %16 = load i32, i32* %property, align 4, !dbg !2626
  %17 = load i32, i32* %attrno.addr, align 4, !dbg !2628
  %cmp9 = icmp eq i32 %16, %17, !dbg !2629
  br i1 %cmp9, label %if.then11, label %if.end23, !dbg !2630

if.then11:                                        ; preds = %for.body
  %18 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2631
  %desc12 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %18, i32 0, i32 0, !dbg !2634
  %19 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc12, align 8, !dbg !2634
  %property_is_writeable = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %19, i32 0, i32 8, !dbg !2635
  %20 = load i32 (%struct.power_supply*, i32)*, i32 (%struct.power_supply*, i32)** %property_is_writeable, align 8, !dbg !2635
  %tobool13 = icmp ne i32 (%struct.power_supply*, i32)* %20, null, !dbg !2631
  br i1 %tobool13, label %land.lhs.true, label %if.end22, !dbg !2636

land.lhs.true:                                    ; preds = %if.then11
  %21 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2637
  %desc14 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %21, i32 0, i32 0, !dbg !2638
  %22 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc14, align 8, !dbg !2638
  %property_is_writeable15 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %22, i32 0, i32 8, !dbg !2639
  %23 = load i32 (%struct.power_supply*, i32)*, i32 (%struct.power_supply*, i32)** %property_is_writeable15, align 8, !dbg !2639
  %24 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2640
  %25 = load i32, i32* %property, align 4, !dbg !2641
  %call16 = call i32 %23(%struct.power_supply* %24, i32 %25) #5, !dbg !2637
  %cmp17 = icmp sgt i32 %call16, 0, !dbg !2642
  br i1 %cmp17, label %if.then19, label %if.end22, !dbg !2643

if.then19:                                        ; preds = %land.lhs.true
  %26 = load i16, i16* %mode, align 2, !dbg !2644
  %conv20 = zext i16 %26 to i32, !dbg !2644
  %or = or i32 %conv20, 128, !dbg !2644
  %conv21 = trunc i32 %or to i16, !dbg !2644
  store i16 %conv21, i16* %mode, align 2, !dbg !2644
  br label %if.end22, !dbg !2645

if.end22:                                         ; preds = %if.then19, %land.lhs.true, %if.then11
  %27 = load i16, i16* %mode, align 2, !dbg !2646
  store i16 %27, i16* %retval, align 2, !dbg !2647
  br label %return, !dbg !2647

if.end23:                                         ; preds = %for.body
  br label %for.inc, !dbg !2648

for.inc:                                          ; preds = %if.end23
  %28 = load i32, i32* %i, align 4, !dbg !2649
  %inc = add i32 %28, 1, !dbg !2649
  store i32 %inc, i32* %i, align 4, !dbg !2649
  br label %for.cond, !dbg !2650, !llvm.loop !2651

for.end:                                          ; preds = %for.cond
  store i16 0, i16* %retval, align 2, !dbg !2653
  br label %return, !dbg !2653

return:                                           ; preds = %for.end, %if.end22, %if.then2, %if.then
  %29 = load i16, i16* %retval, align 2, !dbg !2654
  ret i16 %29, !dbg !2654
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @kobj_to_dev(%struct.kobject* %kobj) #0 !dbg !2655 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.device*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !2658, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2660, metadata !DIExpression()), !dbg !2662
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !2662
  %1 = bitcast %struct.kobject* %0 to i8*, !dbg !2662
  store i8* %1, i8** %__mptr, align 8, !dbg !2662
  br label %do.body, !dbg !2662

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2663

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2662
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2662
  %3 = bitcast i8* %add.ptr to %struct.device*, !dbg !2662
  store %struct.device* %3, %struct.device** %tmp, align 8, !dbg !2663
  %4 = load %struct.device*, %struct.device** %tmp, align 8, !dbg !2662
  ret %struct.device* %4, !dbg !2665
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @__tolower(i8 zeroext %c) #0 !dbg !2666 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !2670, metadata !DIExpression()), !dbg !2671
  %0 = load i8, i8* %c.addr, align 1, !dbg !2672
  %conv = zext i8 %0 to i32, !dbg !2672
  %idxprom = sext i32 %conv to i64, !dbg !2672
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom, !dbg !2672
  %1 = load i8, i8* %arrayidx, align 1, !dbg !2672
  %conv1 = zext i8 %1 to i32, !dbg !2672
  %and = and i32 %conv1, 1, !dbg !2672
  %cmp = icmp ne i32 %and, 0, !dbg !2672
  br i1 %cmp, label %if.then, label %if.end, !dbg !2674

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %c.addr, align 1, !dbg !2675
  %conv3 = zext i8 %2 to i32, !dbg !2675
  %sub = sub i32 %conv3, -32, !dbg !2675
  %conv4 = trunc i32 %sub to i8, !dbg !2675
  store i8 %conv4, i8* %c.addr, align 1, !dbg !2675
  br label %if.end, !dbg !2676

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, i8* %c.addr, align 1, !dbg !2677
  ret i8 %3, !dbg !2678
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.power_supply_attr* @to_ps_attr(%struct.device_attribute* %attr) #0 !dbg !2679 {
entry:
  %attr.addr = alloca %struct.device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.power_supply_attr*, align 8
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2682, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2684, metadata !DIExpression()), !dbg !2686
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !2686
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !2686
  store i8* %1, i8** %__mptr, align 8, !dbg !2686
  br label %do.body, !dbg !2686

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2687

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2686
  %add.ptr = getelementptr i8, i8* %2, i64 -40, !dbg !2686
  %3 = bitcast i8* %add.ptr to %struct.power_supply_attr*, !dbg !2686
  store %struct.power_supply_attr* %3, %struct.power_supply_attr** %tmp, align 8, !dbg !2687
  %4 = load %struct.power_supply_attr*, %struct.power_supply_attr** %tmp, align 8, !dbg !2686
  ret %struct.power_supply_attr* %4, !dbg !2689
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dev_attr_psp(%struct.device_attribute* %attr) #0 !dbg !2690 {
entry:
  %attr.addr = alloca %struct.device_attribute*, align 8
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2693, metadata !DIExpression()), !dbg !2694
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !2695
  %call = call %struct.power_supply_attr* @to_ps_attr(%struct.device_attribute* %0) #5, !dbg !2696
  %sub.ptr.lhs.cast = ptrtoint %struct.power_supply_attr* %call to i64, !dbg !2697
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([75 x %struct.power_supply_attr]* @power_supply_attrs to i64), !dbg !2697
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 88, !dbg !2697
  %conv = trunc i64 %sub.ptr.div to i32, !dbg !2696
  ret i32 %conv, !dbg !2698
}

; Function Attrs: noredzone
declare dso_local i32 @power_supply_get_property(%struct.power_supply*, i32, %union.power_supply_propval*) #3

; Function Attrs: noredzone
declare dso_local i32 @___ratelimit(%struct.ratelimit_state*, i8*) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @power_supply_show_usb_type(%struct.device* %dev, %struct.power_supply_desc* %desc, %union.power_supply_propval* %value, i8* %buf) #0 !dbg !2699 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %desc.addr = alloca %struct.power_supply_desc*, align 8
  %value.addr = alloca %union.power_supply_propval*, align 8
  %buf.addr = alloca i8*, align 8
  %usb_type = alloca i32, align 4
  %count = alloca i64, align 8
  %match = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2702, metadata !DIExpression()), !dbg !2703
  store %struct.power_supply_desc* %desc, %struct.power_supply_desc** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply_desc** %desc.addr, metadata !2704, metadata !DIExpression()), !dbg !2705
  store %union.power_supply_propval* %value, %union.power_supply_propval** %value.addr, align 8
  call void @llvm.dbg.declare(metadata %union.power_supply_propval** %value.addr, metadata !2706, metadata !DIExpression()), !dbg !2707
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2708, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.declare(metadata i32* %usb_type, metadata !2710, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.declare(metadata i64* %count, metadata !2712, metadata !DIExpression()), !dbg !2713
  store i64 0, i64* %count, align 8, !dbg !2713
  call void @llvm.dbg.declare(metadata i8* %match, metadata !2714, metadata !DIExpression()), !dbg !2715
  store i8 0, i8* %match, align 1, !dbg !2715
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2716, metadata !DIExpression()), !dbg !2717
  store i32 0, i32* %i, align 4, !dbg !2718
  br label %for.cond, !dbg !2720

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !2721
  %conv = sext i32 %0 to i64, !dbg !2721
  %1 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc.addr, align 8, !dbg !2723
  %num_usb_types = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %1, i32 0, i32 3, !dbg !2724
  %2 = load i64, i64* %num_usb_types, align 8, !dbg !2724
  %cmp = icmp ult i64 %conv, %2, !dbg !2725
  br i1 %cmp, label %for.body, label %for.end, !dbg !2726

for.body:                                         ; preds = %for.cond
  %3 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc.addr, align 8, !dbg !2727
  %usb_types = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %3, i32 0, i32 2, !dbg !2729
  %4 = load i32*, i32** %usb_types, align 8, !dbg !2729
  %5 = load i32, i32* %i, align 4, !dbg !2730
  %idxprom = sext i32 %5 to i64, !dbg !2727
  %arrayidx = getelementptr i32, i32* %4, i64 %idxprom, !dbg !2727
  %6 = load i32, i32* %arrayidx, align 4, !dbg !2727
  store i32 %6, i32* %usb_type, align 4, !dbg !2731
  %7 = load %union.power_supply_propval*, %union.power_supply_propval** %value.addr, align 8, !dbg !2732
  %intval = bitcast %union.power_supply_propval* %7 to i32*, !dbg !2734
  %8 = load i32, i32* %intval, align 8, !dbg !2734
  %9 = load i32, i32* %usb_type, align 4, !dbg !2735
  %cmp2 = icmp eq i32 %8, %9, !dbg !2736
  br i1 %cmp2, label %if.then, label %if.else, !dbg !2737

if.then:                                          ; preds = %for.body
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !2738
  %11 = load i64, i64* %count, align 8, !dbg !2740
  %add.ptr = getelementptr i8, i8* %10, i64 %11, !dbg !2741
  %12 = load i32, i32* %usb_type, align 4, !dbg !2742
  %idxprom4 = zext i32 %12 to i64, !dbg !2743
  %arrayidx5 = getelementptr [10 x i8*], [10 x i8*]* @POWER_SUPPLY_USB_TYPE_TEXT, i64 0, i64 %idxprom4, !dbg !2743
  %13 = load i8*, i8** %arrayidx5, align 8, !dbg !2743
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i64 0, i64 0), i8* %13) #5, !dbg !2744
  %conv6 = sext i32 %call to i64, !dbg !2744
  %14 = load i64, i64* %count, align 8, !dbg !2745
  %add = add i64 %14, %conv6, !dbg !2745
  store i64 %add, i64* %count, align 8, !dbg !2745
  store i8 1, i8* %match, align 1, !dbg !2746
  br label %if.end, !dbg !2747

if.else:                                          ; preds = %for.body
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !2748
  %16 = load i64, i64* %count, align 8, !dbg !2750
  %add.ptr7 = getelementptr i8, i8* %15, i64 %16, !dbg !2751
  %17 = load i32, i32* %usb_type, align 4, !dbg !2752
  %idxprom8 = zext i32 %17 to i64, !dbg !2753
  %arrayidx9 = getelementptr [10 x i8*], [10 x i8*]* @POWER_SUPPLY_USB_TYPE_TEXT, i64 0, i64 %idxprom8, !dbg !2753
  %18 = load i8*, i8** %arrayidx9, align 8, !dbg !2753
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i64 0, i64 0), i8* %18) #5, !dbg !2754
  %conv11 = sext i32 %call10 to i64, !dbg !2754
  %19 = load i64, i64* %count, align 8, !dbg !2755
  %add12 = add i64 %19, %conv11, !dbg !2755
  store i64 %add12, i64* %count, align 8, !dbg !2755
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc, !dbg !2756

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4, !dbg !2757
  %inc = add i32 %20, 1, !dbg !2757
  store i32 %inc, i32* %i, align 4, !dbg !2757
  br label %for.cond, !dbg !2758, !llvm.loop !2759

for.end:                                          ; preds = %for.cond
  %21 = load i8, i8* %match, align 1, !dbg !2761
  %tobool = trunc i8 %21 to i1, !dbg !2761
  br i1 %tobool, label %if.end14, label %if.then13, !dbg !2763

if.then13:                                        ; preds = %for.end
  %22 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2764
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.132, i64 0, i64 0)) #4, !dbg !2764
  store i64 -22, i64* %retval, align 8, !dbg !2766
  br label %return, !dbg !2766

if.end14:                                         ; preds = %for.end
  %23 = load i64, i64* %count, align 8, !dbg !2767
  %tobool15 = icmp ne i64 %23, 0, !dbg !2767
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !2769

if.then16:                                        ; preds = %if.end14
  %24 = load i8*, i8** %buf.addr, align 8, !dbg !2770
  %25 = load i64, i64* %count, align 8, !dbg !2771
  %sub = sub i64 %25, 1, !dbg !2772
  %arrayidx17 = getelementptr i8, i8* %24, i64 %sub, !dbg !2770
  store i8 10, i8* %arrayidx17, align 1, !dbg !2773
  br label %if.end18, !dbg !2770

if.end18:                                         ; preds = %if.then16, %if.end14
  %26 = load i64, i64* %count, align 8, !dbg !2774
  store i64 %26, i64* %retval, align 8, !dbg !2775
  br label %return, !dbg !2775

return:                                           ; preds = %if.end18, %if.then13
  %27 = load i64, i64* %retval, align 8, !dbg !2776
  ret i64 %27, !dbg !2776
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @__sysfs_match_string(i8**, i64, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtol(i8* %s, i32 %base, i64* %res) #0 !dbg !2777 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i64*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !2782, metadata !DIExpression()), !dbg !2783
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !2784, metadata !DIExpression()), !dbg !2785
  store i64* %res, i64** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %res.addr, metadata !2786, metadata !DIExpression()), !dbg !2787
  %0 = load i8*, i8** %s.addr, align 8, !dbg !2788
  %1 = load i32, i32* %base.addr, align 4, !dbg !2790
  %2 = load i64*, i64** %res.addr, align 8, !dbg !2791
  %call = call i32 @kstrtoll(i8* %0, i32 %1, i64* %2) #5, !dbg !2792
  ret i32 %call, !dbg !2793
}

; Function Attrs: noredzone
declare dso_local i32 @power_supply_set_property(%struct.power_supply*, i32, %union.power_supply_propval*) #3

; Function Attrs: noredzone
declare dso_local i32 @kstrtoll(i8*, i32, i64*) #3

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2080, !2081, !2082, !2083}
!llvm.ident = !{!2084}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "power_supply_attr_groups", scope: !2, file: !3, line: 382, type: !2079, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !160, globals: !2019, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/power/supply/power_supply_sysfs.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !17, !23, !29, !36, !44, !50, !66, !78, !155}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_type", file: !51, line: 176, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/power_supply.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!53 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_UNKNOWN", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_BATTERY", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_UPS", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_MAINS", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB", value: 4, isUnsigned: true)
!58 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_DCP", value: 5, isUnsigned: true)
!59 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_CDP", value: 6, isUnsigned: true)
!60 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_ACA", value: 7, isUnsigned: true)
!61 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_TYPE_C", value: 8, isUnsigned: true)
!62 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_PD", value: 9, isUnsigned: true)
!63 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_PD_DRP", value: 10, isUnsigned: true)
!64 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_APPLE_BRICK_ID", value: 11, isUnsigned: true)
!65 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_WIRELESS", value: 12, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_usb_type", file: !51, line: 192, baseType: !7, size: 32, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77}
!68 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_UNKNOWN", value: 0, isUnsigned: true)
!69 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_SDP", value: 1, isUnsigned: true)
!70 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_DCP", value: 2, isUnsigned: true)
!71 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_CDP", value: 3, isUnsigned: true)
!72 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_ACA", value: 4, isUnsigned: true)
!73 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_C", value: 5, isUnsigned: true)
!74 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_PD", value: 6, isUnsigned: true)
!75 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_PD_DRP", value: 7, isUnsigned: true)
!76 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_PD_PPS", value: 8, isUnsigned: true)
!77 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_APPLE_BRICK_ID", value: 9, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_property", file: !51, line: 96, baseType: !7, size: 32, elements: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154}
!80 = !DIEnumerator(name: "POWER_SUPPLY_PROP_STATUS", value: 0, isUnsigned: true)
!81 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_TYPE", value: 1, isUnsigned: true)
!82 = !DIEnumerator(name: "POWER_SUPPLY_PROP_HEALTH", value: 2, isUnsigned: true)
!83 = !DIEnumerator(name: "POWER_SUPPLY_PROP_PRESENT", value: 3, isUnsigned: true)
!84 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ONLINE", value: 4, isUnsigned: true)
!85 = !DIEnumerator(name: "POWER_SUPPLY_PROP_AUTHENTIC", value: 5, isUnsigned: true)
!86 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TECHNOLOGY", value: 6, isUnsigned: true)
!87 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CYCLE_COUNT", value: 7, isUnsigned: true)
!88 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MAX", value: 8, isUnsigned: true)
!89 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MIN", value: 9, isUnsigned: true)
!90 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MAX_DESIGN", value: 10, isUnsigned: true)
!91 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN", value: 11, isUnsigned: true)
!92 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_NOW", value: 12, isUnsigned: true)
!93 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_AVG", value: 13, isUnsigned: true)
!94 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_OCV", value: 14, isUnsigned: true)
!95 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_BOOT", value: 15, isUnsigned: true)
!96 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_MAX", value: 16, isUnsigned: true)
!97 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_NOW", value: 17, isUnsigned: true)
!98 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_AVG", value: 18, isUnsigned: true)
!99 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_BOOT", value: 19, isUnsigned: true)
!100 = !DIEnumerator(name: "POWER_SUPPLY_PROP_POWER_NOW", value: 20, isUnsigned: true)
!101 = !DIEnumerator(name: "POWER_SUPPLY_PROP_POWER_AVG", value: 21, isUnsigned: true)
!102 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN", value: 22, isUnsigned: true)
!103 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_EMPTY_DESIGN", value: 23, isUnsigned: true)
!104 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_FULL", value: 24, isUnsigned: true)
!105 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_EMPTY", value: 25, isUnsigned: true)
!106 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_NOW", value: 26, isUnsigned: true)
!107 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_AVG", value: 27, isUnsigned: true)
!108 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_COUNTER", value: 28, isUnsigned: true)
!109 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT", value: 29, isUnsigned: true)
!110 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX", value: 30, isUnsigned: true)
!111 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE", value: 31, isUnsigned: true)
!112 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX", value: 32, isUnsigned: true)
!113 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT", value: 33, isUnsigned: true)
!114 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT_MAX", value: 34, isUnsigned: true)
!115 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_START_THRESHOLD", value: 35, isUnsigned: true)
!116 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_END_THRESHOLD", value: 36, isUnsigned: true)
!117 = !DIEnumerator(name: "POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT", value: 37, isUnsigned: true)
!118 = !DIEnumerator(name: "POWER_SUPPLY_PROP_INPUT_VOLTAGE_LIMIT", value: 38, isUnsigned: true)
!119 = !DIEnumerator(name: "POWER_SUPPLY_PROP_INPUT_POWER_LIMIT", value: 39, isUnsigned: true)
!120 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN", value: 40, isUnsigned: true)
!121 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_EMPTY_DESIGN", value: 41, isUnsigned: true)
!122 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_FULL", value: 42, isUnsigned: true)
!123 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_EMPTY", value: 43, isUnsigned: true)
!124 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_NOW", value: 44, isUnsigned: true)
!125 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_AVG", value: 45, isUnsigned: true)
!126 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY", value: 46, isUnsigned: true)
!127 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_ALERT_MIN", value: 47, isUnsigned: true)
!128 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_ALERT_MAX", value: 48, isUnsigned: true)
!129 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_ERROR_MARGIN", value: 49, isUnsigned: true)
!130 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_LEVEL", value: 50, isUnsigned: true)
!131 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP", value: 51, isUnsigned: true)
!132 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_MAX", value: 52, isUnsigned: true)
!133 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_MIN", value: 53, isUnsigned: true)
!134 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_ALERT_MIN", value: 54, isUnsigned: true)
!135 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_ALERT_MAX", value: 55, isUnsigned: true)
!136 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_AMBIENT", value: 56, isUnsigned: true)
!137 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MIN", value: 57, isUnsigned: true)
!138 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MAX", value: 58, isUnsigned: true)
!139 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_EMPTY_NOW", value: 59, isUnsigned: true)
!140 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_EMPTY_AVG", value: 60, isUnsigned: true)
!141 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_FULL_NOW", value: 61, isUnsigned: true)
!142 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_FULL_AVG", value: 62, isUnsigned: true)
!143 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TYPE", value: 63, isUnsigned: true)
!144 = !DIEnumerator(name: "POWER_SUPPLY_PROP_USB_TYPE", value: 64, isUnsigned: true)
!145 = !DIEnumerator(name: "POWER_SUPPLY_PROP_SCOPE", value: 65, isUnsigned: true)
!146 = !DIEnumerator(name: "POWER_SUPPLY_PROP_PRECHARGE_CURRENT", value: 66, isUnsigned: true)
!147 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT", value: 67, isUnsigned: true)
!148 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CALIBRATE", value: 68, isUnsigned: true)
!149 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURE_YEAR", value: 69, isUnsigned: true)
!150 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURE_MONTH", value: 70, isUnsigned: true)
!151 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURE_DAY", value: 71, isUnsigned: true)
!152 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MODEL_NAME", value: 72, isUnsigned: true)
!153 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURER", value: 73, isUnsigned: true)
!154 = !DIEnumerator(name: "POWER_SUPPLY_PROP_SERIAL_NUMBER", value: 74, isUnsigned: true)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !156, line: 10, baseType: !7, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!157 = !{!158, !159}
!158 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!159 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!160 = !{!161, !162, !164, !166, !167, !168, !627, !1993, !2018}
!161 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !165, line: 148, baseType: !7)
!165 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!166 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !170)
!170 = !{!171, !1645, !1646, !1649, !1650, !1701, !1779, !1780, !1781, !1782, !1783, !1792, !1897, !1910, !1913, !1914, !1918, !1920, !1921, !1922, !1926, !1932, !1933, !1936, !1940, !1943, !1946, !1947, !1948, !1949, !1981, !1982, !1983, !1986, !1989, !1990, !1991, !1992}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !169, file: !30, line: 462, baseType: !172, size: 512)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !173, line: 64, size: 512, elements: !174)
!173 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!174 = !{!175, !178, !184, !186, !245, !1482, !1635, !1640, !1641, !1642, !1643, !1644}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !172, file: !173, line: 65, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !172, file: !173, line: 66, baseType: !179, size: 128, offset: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !165, line: 178, size: 128, elements: !180)
!180 = !{!181, !183}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !179, file: !165, line: 179, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !179, file: !165, line: 179, baseType: !182, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !172, file: !173, line: 67, baseType: !185, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !172, file: !173, line: 68, baseType: !187, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !173, line: 192, size: 704, elements: !189)
!189 = !{!190, !191, !207, !208}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !188, file: !173, line: 193, baseType: !179, size: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !188, file: !173, line: 194, baseType: !192, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !193, line: 83, baseType: !194)
!193 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !193, line: 71, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, scope: !194, file: !193, line: 72, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !194, file: !193, line: 72, elements: !198)
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !197, file: !193, line: 73, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !193, line: 20, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !200, file: !193, line: 21, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !204, line: 25, baseType: !205)
!204 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 25, elements: !206)
!206 = !{}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !188, file: !173, line: 195, baseType: !172, size: 512, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !188, file: !173, line: 196, baseType: !209, size: 64, offset: 640)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !173, line: 156, size: 192, elements: !212)
!212 = !{!213, !218, !223}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !211, file: !173, line: 157, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!161, !187, !185}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !211, file: !173, line: 158, baseType: !219, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!176, !187, !185}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !211, file: !173, line: 159, baseType: !224, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!161, !187, !185, !228}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !173, line: 148, size: 20736, elements: !230)
!230 = !{!231, !235, !239, !240, !244}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !229, file: !173, line: 149, baseType: !232, size: 192)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 192, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 3)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !229, file: !173, line: 150, baseType: !236, size: 4096, offset: 192)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 4096, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !229, file: !173, line: 151, baseType: !161, size: 32, offset: 4288)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !229, file: !173, line: 152, baseType: !241, size: 16384, offset: 4320)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 16384, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 2048)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !229, file: !173, line: 153, baseType: !161, size: 32, offset: 20704)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !172, file: !173, line: 69, baseType: !246, size: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !173, line: 138, size: 448, elements: !248)
!248 = !{!249, !253, !282, !284, !1428, !1461, !1465}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !247, file: !173, line: 139, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !185}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !247, file: !173, line: 140, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !257, line: 230, size: 128, elements: !258)
!257 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!258 = !{!259, !275}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !256, file: !257, line: 231, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!263, !185, !268, !162}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !165, line: 60, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !265, line: 73, baseType: !266)
!265 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !265, line: 15, baseType: !267)
!267 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !257, line: 30, size: 128, elements: !270)
!270 = !{!271, !272}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !269, file: !257, line: 31, baseType: !176, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !269, file: !257, line: 32, baseType: !273, size: 16, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !165, line: 19, baseType: !274)
!274 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !256, file: !257, line: 232, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!263, !185, !268, !176, !279}
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !165, line: 55, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !265, line: 72, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !265, line: 16, baseType: !166)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !247, file: !173, line: 141, baseType: !283, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !247, file: !173, line: 142, baseType: !285, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !257, line: 84, size: 320, elements: !289)
!289 = !{!290, !291, !295, !1425, !1426}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !288, file: !257, line: 85, baseType: !176, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !288, file: !257, line: 86, baseType: !292, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!273, !185, !268, !161}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !288, file: !257, line: 88, baseType: !296, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!273, !185, !299, !161}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !257, line: 168, size: 448, elements: !301)
!301 = !{!302, !303, !304, !305, !315, !316}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !300, file: !257, line: 169, baseType: !269, size: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !300, file: !257, line: 170, baseType: !279, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !300, file: !257, line: 171, baseType: !167, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !300, file: !257, line: 172, baseType: !306, size: 64, offset: 256)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!263, !309, !185, !299, !162, !312, !279}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !311, line: 526, flags: DIFlagFwdDecl)
!311 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !165, line: 46, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !265, line: 88, baseType: !314)
!314 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !300, file: !257, line: 174, baseType: !306, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !300, file: !257, line: 176, baseType: !317, size: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!161, !309, !185, !299, !320}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !322, line: 305, size: 1472, elements: !323)
!322 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!323 = !{!324, !325, !326, !327, !328, !336, !337, !1399, !1405, !1406, !1411, !1412, !1415, !1419, !1420, !1421, !1422, !1423}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !321, file: !322, line: 308, baseType: !166, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !321, file: !322, line: 309, baseType: !166, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !321, file: !322, line: 313, baseType: !320, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !321, file: !322, line: 313, baseType: !320, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !321, file: !322, line: 315, baseType: !329, size: 192, align: 64, offset: 256)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !330, line: 24, size: 192, align: 64, elements: !331)
!330 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!331 = !{!332, !333, !335}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !329, file: !330, line: 25, baseType: !166, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !329, file: !330, line: 26, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !329, file: !330, line: 27, baseType: !334, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !321, file: !322, line: 323, baseType: !166, size: 64, offset: 448)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !321, file: !322, line: 327, baseType: !338, size: 64, offset: 512)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !322, line: 388, size: 7296, elements: !340)
!340 = !{!341, !1395}
!341 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !322, line: 389, baseType: !342, size: 7296)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !339, file: !322, line: 389, size: 7296, elements: !343)
!343 = !{!344, !345, !349, !355, !359, !360, !361, !362, !363, !371, !376, !377, !378, !379, !388, !389, !390, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !425, !433, !436, !468, !469, !1365, !1366, !1369, !1373, !1374, !1377, !1378, !1379, !1382, !1394}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !342, file: !322, line: 390, baseType: !320, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !342, file: !322, line: 391, baseType: !346, size: 64, offset: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !330, line: 31, size: 64, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !346, file: !330, line: 32, baseType: !334, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !342, file: !322, line: 392, baseType: !350, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !351, line: 23, baseType: !352)
!351 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !353, line: 31, baseType: !354)
!353 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!354 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !342, file: !322, line: 394, baseType: !356, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!166, !309, !166, !166, !166, !166}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !342, file: !322, line: 398, baseType: !166, size: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !342, file: !322, line: 399, baseType: !166, size: 64, offset: 320)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !342, file: !322, line: 405, baseType: !166, size: 64, offset: 384)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !342, file: !322, line: 406, baseType: !166, size: 64, offset: 448)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !342, file: !322, line: 407, baseType: !364, size: 64, offset: 512)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !311, line: 286, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !311, line: 286, size: 64, elements: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !366, file: !311, line: 286, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !370, line: 18, baseType: !166)
!370 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!371 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !342, file: !322, line: 416, baseType: !372, size: 32, offset: 576)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !165, line: 168, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !165, line: 166, size: 32, elements: !374)
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !373, file: !165, line: 167, baseType: !161, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !342, file: !322, line: 428, baseType: !372, size: 32, offset: 608)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !342, file: !322, line: 437, baseType: !372, size: 32, offset: 640)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !342, file: !322, line: 447, baseType: !372, size: 32, offset: 672)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !342, file: !322, line: 450, baseType: !380, size: 64, offset: 704)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !381, line: 13, baseType: !382)
!381 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !165, line: 175, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !165, line: 173, size: 64, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !383, file: !165, line: 174, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !351, line: 22, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !353, line: 30, baseType: !314)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !342, file: !322, line: 452, baseType: !161, size: 32, offset: 768)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !342, file: !322, line: 454, baseType: !192, offset: 800)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !342, file: !322, line: 457, baseType: !391, size: 256, offset: 832)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !392, line: 35, size: 256, elements: !393)
!392 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!393 = !{!394, !395, !396, !398}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !391, file: !392, line: 36, baseType: !380, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !391, file: !392, line: 42, baseType: !380, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !391, file: !392, line: 46, baseType: !397, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !193, line: 29, baseType: !200)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !391, file: !392, line: 47, baseType: !179, size: 128, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !342, file: !322, line: 459, baseType: !179, size: 128, offset: 1088)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !342, file: !322, line: 466, baseType: !166, size: 64, offset: 1216)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !342, file: !322, line: 467, baseType: !166, size: 64, offset: 1280)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !342, file: !322, line: 469, baseType: !166, size: 64, offset: 1344)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !342, file: !322, line: 470, baseType: !166, size: 64, offset: 1408)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !342, file: !322, line: 471, baseType: !382, size: 64, offset: 1472)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !342, file: !322, line: 472, baseType: !166, size: 64, offset: 1536)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !342, file: !322, line: 473, baseType: !166, size: 64, offset: 1600)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !342, file: !322, line: 474, baseType: !166, size: 64, offset: 1664)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !342, file: !322, line: 475, baseType: !166, size: 64, offset: 1728)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !342, file: !322, line: 477, baseType: !192, offset: 1792)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !342, file: !322, line: 478, baseType: !166, size: 64, offset: 1792)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !342, file: !322, line: 478, baseType: !166, size: 64, offset: 1856)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !342, file: !322, line: 478, baseType: !166, size: 64, offset: 1920)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !342, file: !322, line: 478, baseType: !166, size: 64, offset: 1984)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !342, file: !322, line: 479, baseType: !166, size: 64, offset: 2048)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !342, file: !322, line: 479, baseType: !166, size: 64, offset: 2112)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !342, file: !322, line: 479, baseType: !166, size: 64, offset: 2176)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !342, file: !322, line: 480, baseType: !166, size: 64, offset: 2240)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !342, file: !322, line: 480, baseType: !166, size: 64, offset: 2304)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !342, file: !322, line: 480, baseType: !166, size: 64, offset: 2368)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !342, file: !322, line: 480, baseType: !166, size: 64, offset: 2432)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !342, file: !322, line: 482, baseType: !422, size: 2816, offset: 2496)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 2816, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 44)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !342, file: !322, line: 488, baseType: !426, size: 256, offset: 5312)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !427, line: 60, size: 256, elements: !428)
!427 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !426, file: !427, line: 61, baseType: !430, size: 256)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 256, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 4)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !342, file: !322, line: 490, baseType: !434, size: 64, offset: 5568)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !322, line: 490, flags: DIFlagFwdDecl)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !342, file: !322, line: 493, baseType: !437, size: 896, offset: 5632)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !438, line: 53, baseType: !439)
!438 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !438, line: 13, size: 896, elements: !440)
!440 = !{!441, !442, !443, !444, !447, !448, !455, !456, !460, !461, !464}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !439, file: !438, line: 18, baseType: !350, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !439, file: !438, line: 28, baseType: !382, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !439, file: !438, line: 31, baseType: !391, size: 256, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !439, file: !438, line: 32, baseType: !445, size: 64, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !438, line: 32, flags: DIFlagFwdDecl)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !439, file: !438, line: 37, baseType: !274, size: 16, offset: 448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !439, file: !438, line: 40, baseType: !449, size: 192, offset: 512)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !450, line: 53, size: 192, elements: !451)
!450 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!451 = !{!452, !453, !454}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !449, file: !450, line: 54, baseType: !380, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !449, file: !450, line: 55, baseType: !192, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !449, file: !450, line: 59, baseType: !179, size: 128, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !439, file: !438, line: 41, baseType: !167, size: 64, offset: 704)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !439, file: !438, line: 42, baseType: !457, size: 64, offset: 768)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!459 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !438, line: 42, flags: DIFlagFwdDecl)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !439, file: !438, line: 44, baseType: !372, size: 32, offset: 832)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !439, file: !438, line: 50, baseType: !462, size: 16, offset: 864)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !351, line: 19, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !353, line: 24, baseType: !274)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !439, file: !438, line: 51, baseType: !465, size: 16, offset: 880)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !351, line: 18, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !353, line: 23, baseType: !467)
!467 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !342, file: !322, line: 495, baseType: !166, size: 64, offset: 6528)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !342, file: !322, line: 497, baseType: !470, size: 64, offset: 6592)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !322, line: 381, size: 384, elements: !472)
!472 = !{!473, !474, !1364}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !471, file: !322, line: 382, baseType: !372, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !471, file: !322, line: 383, baseType: !475, size: 128, offset: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !322, line: 376, size: 128, elements: !476)
!476 = !{!477, !1362}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !475, file: !322, line: 377, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !480, line: 640, size: 48640, elements: !481)
!480 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!481 = !{!482, !490, !492, !493, !499, !500, !501, !502, !503, !504, !505, !506, !510, !528, !539, !634, !635, !636, !647, !648, !650, !651, !652, !653, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !732, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !788, !790, !791, !792, !804, !806, !807, !808, !809, !810, !816, !817, !818, !819, !820, !821, !822, !834, !839, !843, !844, !845, !848, !852, !855, !858, !861, !864, !867, !870, !873, !879, !880, !881, !887, !888, !889, !890, !891, !900, !901, !902, !903, !904, !909, !910, !911, !914, !915, !918, !921, !924, !927, !930, !933, !934, !1014, !1017, !1020, !1021, !1024, !1025, !1026, !1032, !1033, !1034, !1047, !1048, !1049, !1061, !1066, !1069, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !479, file: !480, line: 646, baseType: !483, size: 128)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !484, line: 56, size: 128, elements: !485)
!484 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !483, file: !484, line: 57, baseType: !166, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !483, file: !484, line: 58, baseType: !488, size: 32, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !351, line: 21, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !353, line: 27, baseType: !7)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !479, file: !480, line: 649, baseType: !491, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !267)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !479, file: !480, line: 657, baseType: !167, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !479, file: !480, line: 658, baseType: !494, size: 32, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !495, line: 113, baseType: !496)
!495 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !495, line: 111, size: 32, elements: !497)
!497 = !{!498}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !496, file: !495, line: 112, baseType: !372, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !479, file: !480, line: 660, baseType: !7, size: 32, offset: 288)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !479, file: !480, line: 661, baseType: !7, size: 32, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !479, file: !480, line: 684, baseType: !161, size: 32, offset: 352)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !479, file: !480, line: 686, baseType: !161, size: 32, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !479, file: !480, line: 687, baseType: !161, size: 32, offset: 416)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !479, file: !480, line: 688, baseType: !161, size: 32, offset: 448)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !479, file: !480, line: 689, baseType: !7, size: 32, offset: 480)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !479, file: !480, line: 691, baseType: !507, size: 64, offset: 512)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!509 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !480, line: 691, flags: DIFlagFwdDecl)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !479, file: !480, line: 692, baseType: !511, size: 832, offset: 576)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !480, line: 451, size: 832, elements: !512)
!512 = !{!513, !518, !519, !520, !521, !522, !523, !524, !525, !526}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !511, file: !480, line: 453, baseType: !514, size: 128)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !480, line: 325, size: 128, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !514, file: !480, line: 326, baseType: !166, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !514, file: !480, line: 327, baseType: !488, size: 32, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !511, file: !480, line: 454, baseType: !329, size: 192, align: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !511, file: !480, line: 455, baseType: !179, size: 128, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !511, file: !480, line: 456, baseType: !7, size: 32, offset: 448)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !511, file: !480, line: 458, baseType: !350, size: 64, offset: 512)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !511, file: !480, line: 459, baseType: !350, size: 64, offset: 576)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !511, file: !480, line: 460, baseType: !350, size: 64, offset: 640)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !511, file: !480, line: 461, baseType: !350, size: 64, offset: 704)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !511, file: !480, line: 463, baseType: !350, size: 64, offset: 768)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !511, file: !480, line: 465, baseType: !527, offset: 832)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !480, line: 415, elements: !206)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !479, file: !480, line: 693, baseType: !529, size: 384, offset: 1408)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !480, line: 489, size: 384, elements: !530)
!530 = !{!531, !532, !533, !534, !535, !536, !537}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !529, file: !480, line: 490, baseType: !179, size: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !529, file: !480, line: 491, baseType: !166, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !529, file: !480, line: 492, baseType: !166, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !529, file: !480, line: 493, baseType: !7, size: 32, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !529, file: !480, line: 494, baseType: !274, size: 16, offset: 288)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !529, file: !480, line: 495, baseType: !274, size: 16, offset: 304)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !529, file: !480, line: 497, baseType: !538, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !479, file: !480, line: 697, baseType: !540, size: 1792, offset: 1792)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !480, line: 507, size: 1792, elements: !541)
!541 = !{!542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !631, !632}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !540, file: !480, line: 508, baseType: !329, size: 192, align: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !540, file: !480, line: 515, baseType: !350, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !540, file: !480, line: 516, baseType: !350, size: 64, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !540, file: !480, line: 517, baseType: !350, size: 64, offset: 320)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !540, file: !480, line: 518, baseType: !350, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !540, file: !480, line: 519, baseType: !350, size: 64, offset: 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !540, file: !480, line: 526, baseType: !386, size: 64, offset: 512)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !540, file: !480, line: 527, baseType: !350, size: 64, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !540, file: !480, line: 528, baseType: !7, size: 32, offset: 640)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !540, file: !480, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !540, file: !480, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !540, file: !480, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !540, file: !480, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !540, file: !480, line: 563, baseType: !556, size: 512, offset: 704)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !13, line: 118, size: 512, elements: !557)
!557 = !{!558, !566, !567, !572, !624, !628, !629, !630}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !556, file: !13, line: 119, baseType: !559, size: 256)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !560, line: 9, size: 256, elements: !561)
!560 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !559, file: !560, line: 10, baseType: !329, size: 192, align: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !559, file: !560, line: 11, baseType: !564, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !565, line: 29, baseType: !386)
!565 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !556, file: !13, line: 120, baseType: !564, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !556, file: !13, line: 121, baseType: !568, size: 64, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!12, !571}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !556, file: !13, line: 122, baseType: !573, size: 64, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !13, line: 159, size: 512, align: 512, elements: !575)
!575 = !{!576, !596, !597, !600, !610, !611, !619, !623}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !574, file: !13, line: 160, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !13, line: 214, size: 4608, align: 512, elements: !579)
!579 = !{!580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !578, file: !13, line: 215, baseType: !397)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !578, file: !13, line: 216, baseType: !7, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !578, file: !13, line: 217, baseType: !7, size: 32, offset: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !578, file: !13, line: 218, baseType: !7, size: 32, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !578, file: !13, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !578, file: !13, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !578, file: !13, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !578, file: !13, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !578, file: !13, line: 233, baseType: !564, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !578, file: !13, line: 234, baseType: !571, size: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !578, file: !13, line: 235, baseType: !564, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !578, file: !13, line: 236, baseType: !571, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !578, file: !13, line: 237, baseType: !593, size: 4096, offset: 512)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 4096, elements: !594)
!594 = !{!595}
!595 = !DISubrange(count: 8)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !574, file: !13, line: 161, baseType: !7, size: 32, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !574, file: !13, line: 162, baseType: !598, size: 32, offset: 96)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !165, line: 27, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !265, line: 96, baseType: !161)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !574, file: !13, line: 163, baseType: !601, size: 32, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !602, line: 276, baseType: !603)
!602 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !602, line: 276, size: 32, elements: !604)
!604 = !{!605}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !603, file: !602, line: 276, baseType: !606, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !602, line: 70, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !602, line: 65, size: 32, elements: !608)
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !607, file: !602, line: 66, baseType: !7, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !574, file: !13, line: 164, baseType: !571, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !574, file: !13, line: 165, baseType: !612, size: 128, offset: 256)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !560, line: 14, size: 128, elements: !613)
!613 = !{!614}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !612, file: !560, line: 15, baseType: !615, size: 128)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !330, line: 125, size: 128, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !615, file: !330, line: 126, baseType: !346, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !615, file: !330, line: 127, baseType: !334, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !574, file: !13, line: 166, baseType: !620, size: 64, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!564}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !574, file: !13, line: 167, baseType: !564, size: 64, offset: 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !556, file: !13, line: 123, baseType: !625, size: 8, offset: 448)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !351, line: 17, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !353, line: 21, baseType: !627)
!627 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !556, file: !13, line: 124, baseType: !625, size: 8, offset: 456)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !556, file: !13, line: 125, baseType: !625, size: 8, offset: 464)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !556, file: !13, line: 126, baseType: !625, size: 8, offset: 472)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !540, file: !480, line: 572, baseType: !556, size: 512, offset: 1216)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !540, file: !480, line: 580, baseType: !633, size: 64, offset: 1728)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !479, file: !480, line: 721, baseType: !7, size: 32, offset: 3584)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !479, file: !480, line: 722, baseType: !161, size: 32, offset: 3616)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !479, file: !480, line: 723, baseType: !637, size: 64, offset: 3648)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !640, line: 17, baseType: !641)
!640 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !640, line: 17, size: 64, elements: !642)
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !641, file: !640, line: 17, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 64, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 1)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !479, file: !480, line: 724, baseType: !639, size: 64, offset: 3712)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !479, file: !480, line: 749, baseType: !649, offset: 3776)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !480, line: 290, elements: !206)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !479, file: !480, line: 751, baseType: !179, size: 128, offset: 3776)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !479, file: !480, line: 757, baseType: !338, size: 64, offset: 3904)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !479, file: !480, line: 758, baseType: !338, size: 64, offset: 3968)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !479, file: !480, line: 761, baseType: !654, size: 320, offset: 4032)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !427, line: 34, size: 320, elements: !655)
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !654, file: !427, line: 35, baseType: !350, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !654, file: !427, line: 36, baseType: !658, size: 256, offset: 64)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 256, elements: !431)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !479, file: !480, line: 766, baseType: !161, size: 32, offset: 4352)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !479, file: !480, line: 767, baseType: !161, size: 32, offset: 4384)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !479, file: !480, line: 768, baseType: !161, size: 32, offset: 4416)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !479, file: !480, line: 770, baseType: !161, size: 32, offset: 4448)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !479, file: !480, line: 772, baseType: !166, size: 64, offset: 4480)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !479, file: !480, line: 775, baseType: !7, size: 32, offset: 4544)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !479, file: !480, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !479, file: !480, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !479, file: !480, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !479, file: !480, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !479, file: !480, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !479, file: !480, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !479, file: !480, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !479, file: !480, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !479, file: !480, line: 831, baseType: !166, size: 64, offset: 4672)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !479, file: !480, line: 833, baseType: !675, size: 384, offset: 4736)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !18, line: 25, size: 384, elements: !676)
!676 = !{!677, !682}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !675, file: !18, line: 26, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!267, !681}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, scope: !675, file: !18, line: 27, baseType: !683, size: 320, offset: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !675, file: !18, line: 27, size: 320, elements: !684)
!684 = !{!685, !695, !722}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !683, file: !18, line: 36, baseType: !686, size: 320)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !683, file: !18, line: 29, size: 320, elements: !687)
!687 = !{!688, !690, !691, !692, !693, !694}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !686, file: !18, line: 30, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !686, file: !18, line: 31, baseType: !488, size: 32, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !18, line: 32, baseType: !488, size: 32, offset: 96)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !686, file: !18, line: 33, baseType: !488, size: 32, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !686, file: !18, line: 34, baseType: !350, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !686, file: !18, line: 35, baseType: !689, size: 64, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !683, file: !18, line: 46, baseType: !696, size: 192)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !683, file: !18, line: 38, size: 192, elements: !697)
!697 = !{!698, !699, !700, !721}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !696, file: !18, line: 39, baseType: !598, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !696, file: !18, line: 40, baseType: !17, size: 32, offset: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !18, line: 41, baseType: !701, size: 64, offset: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !696, file: !18, line: 41, size: 64, elements: !702)
!702 = !{!703, !711}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !701, file: !18, line: 42, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !706, line: 7, size: 128, elements: !707)
!706 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!707 = !{!708, !710}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !705, file: !706, line: 8, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !265, line: 93, baseType: !314)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !705, file: !706, line: 9, baseType: !314, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !701, file: !18, line: 43, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !714, line: 7, size: 64, elements: !715)
!714 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!715 = !{!716, !720}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !713, file: !714, line: 8, baseType: !717, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !714, line: 5, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !351, line: 20, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !353, line: 26, baseType: !161)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !713, file: !714, line: 9, baseType: !718, size: 32, offset: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !696, file: !18, line: 45, baseType: !350, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !683, file: !18, line: 54, baseType: !723, size: 256)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !683, file: !18, line: 48, size: 256, elements: !724)
!724 = !{!725, !728, !729, !730, !731}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !723, file: !18, line: 49, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !18, line: 14, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !723, file: !18, line: 50, baseType: !161, size: 32, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !723, file: !18, line: 51, baseType: !161, size: 32, offset: 96)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !723, file: !18, line: 52, baseType: !166, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !723, file: !18, line: 53, baseType: !166, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !479, file: !480, line: 835, baseType: !733, size: 32, offset: 5120)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !165, line: 22, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !265, line: 28, baseType: !161)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !479, file: !480, line: 836, baseType: !733, size: 32, offset: 5152)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !479, file: !480, line: 840, baseType: !166, size: 64, offset: 5184)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !479, file: !480, line: 849, baseType: !478, size: 64, offset: 5248)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !479, file: !480, line: 852, baseType: !478, size: 64, offset: 5312)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !479, file: !480, line: 857, baseType: !179, size: 128, offset: 5376)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !479, file: !480, line: 858, baseType: !179, size: 128, offset: 5504)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !479, file: !480, line: 859, baseType: !478, size: 64, offset: 5632)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !479, file: !480, line: 867, baseType: !179, size: 128, offset: 5696)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !479, file: !480, line: 868, baseType: !179, size: 128, offset: 5824)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !479, file: !480, line: 871, baseType: !745, size: 64, offset: 5952)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !747, line: 59, size: 768, elements: !748)
!747 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!748 = !{!749, !750, !751, !752, !763, !764, !771, !780}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !746, file: !747, line: 61, baseType: !494, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !746, file: !747, line: 62, baseType: !7, size: 32, offset: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !746, file: !747, line: 63, baseType: !192, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !746, file: !747, line: 65, baseType: !753, size: 256, offset: 64)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !754, size: 256, elements: !431)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !165, line: 182, size: 64, elements: !755)
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !754, file: !165, line: 183, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !165, line: 186, size: 128, elements: !759)
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !758, file: !165, line: 187, baseType: !757, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !758, file: !165, line: 187, baseType: !762, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !746, file: !747, line: 66, baseType: !754, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !746, file: !747, line: 68, baseType: !765, size: 128, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !766, line: 40, baseType: !767)
!766 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !766, line: 36, size: 128, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !767, file: !766, line: 37, baseType: !192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !767, file: !766, line: 38, baseType: !179, size: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !746, file: !747, line: 69, baseType: !772, size: 128, align: 64, offset: 512)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !165, line: 216, size: 128, align: 64, elements: !773)
!773 = !{!774, !776}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !772, file: !165, line: 217, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !772, file: !165, line: 218, baseType: !777, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !775}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !746, file: !747, line: 70, baseType: !781, size: 128, offset: 640)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !782, size: 128, elements: !645)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !747, line: 54, size: 128, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !782, file: !747, line: 55, baseType: !161, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !782, file: !747, line: 56, baseType: !786, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !747, line: 56, flags: DIFlagFwdDecl)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !479, file: !480, line: 872, baseType: !789, size: 512, offset: 6016)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !758, size: 512, elements: !431)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !479, file: !480, line: 873, baseType: !179, size: 128, offset: 6528)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !479, file: !480, line: 874, baseType: !179, size: 128, offset: 6656)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !479, file: !480, line: 876, baseType: !793, size: 64, offset: 6784)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !795, line: 26, size: 192, elements: !796)
!795 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !794, file: !795, line: 27, baseType: !7, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !794, file: !795, line: 28, baseType: !799, size: 128, offset: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !800, line: 43, size: 128, elements: !801)
!800 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!801 = !{!802, !803}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !799, file: !800, line: 44, baseType: !397)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !799, file: !800, line: 45, baseType: !179, size: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !479, file: !480, line: 879, baseType: !805, size: 64, offset: 6848)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !479, file: !480, line: 882, baseType: !805, size: 64, offset: 6912)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !479, file: !480, line: 884, baseType: !350, size: 64, offset: 6976)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !479, file: !480, line: 885, baseType: !350, size: 64, offset: 7040)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !479, file: !480, line: 890, baseType: !350, size: 64, offset: 7104)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !479, file: !480, line: 891, baseType: !811, size: 128, offset: 7168)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !480, line: 242, size: 128, elements: !812)
!812 = !{!813, !814, !815}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !811, file: !480, line: 244, baseType: !350, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !811, file: !480, line: 245, baseType: !350, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !811, file: !480, line: 246, baseType: !397, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !479, file: !480, line: 900, baseType: !166, size: 64, offset: 7296)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !479, file: !480, line: 901, baseType: !166, size: 64, offset: 7360)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !479, file: !480, line: 904, baseType: !350, size: 64, offset: 7424)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !479, file: !480, line: 907, baseType: !350, size: 64, offset: 7488)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !479, file: !480, line: 910, baseType: !166, size: 64, offset: 7552)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !479, file: !480, line: 911, baseType: !166, size: 64, offset: 7616)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !479, file: !480, line: 914, baseType: !823, size: 640, offset: 7680)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !824, line: 123, size: 640, elements: !825)
!824 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!825 = !{!826, !832, !833}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !823, file: !824, line: 124, baseType: !827, size: 576)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !828, size: 576, elements: !233)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !824, line: 108, size: 192, elements: !829)
!829 = !{!830, !831}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !828, file: !824, line: 109, baseType: !350, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !828, file: !824, line: 110, baseType: !612, size: 128, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !823, file: !824, line: 125, baseType: !7, size: 32, offset: 576)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !823, file: !824, line: 126, baseType: !7, size: 32, offset: 608)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !479, file: !480, line: 917, baseType: !835, size: 192, offset: 8320)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !824, line: 134, size: 192, elements: !836)
!836 = !{!837, !838}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !835, file: !824, line: 135, baseType: !772, size: 128, align: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !835, file: !824, line: 136, baseType: !7, size: 32, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !479, file: !480, line: 923, baseType: !840, size: 64, offset: 8512)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !480, line: 923, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !479, file: !480, line: 926, baseType: !840, size: 64, offset: 8576)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !479, file: !480, line: 929, baseType: !840, size: 64, offset: 8640)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !479, file: !480, line: 933, baseType: !846, size: 64, offset: 8704)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !480, line: 933, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !479, file: !480, line: 943, baseType: !849, size: 128, offset: 8768)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 128, elements: !850)
!850 = !{!851}
!851 = !DISubrange(count: 16)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !479, file: !480, line: 945, baseType: !853, size: 64, offset: 8896)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !480, line: 49, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !479, file: !480, line: 956, baseType: !856, size: 64, offset: 8960)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !480, line: 45, flags: DIFlagFwdDecl)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !479, file: !480, line: 959, baseType: !859, size: 64, offset: 9024)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !480, line: 959, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !479, file: !480, line: 962, baseType: !862, size: 64, offset: 9088)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !480, line: 66, flags: DIFlagFwdDecl)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !479, file: !480, line: 966, baseType: !865, size: 64, offset: 9152)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !480, line: 50, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !479, file: !480, line: 969, baseType: !868, size: 64, offset: 9216)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !824, line: 223, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !479, file: !480, line: 970, baseType: !871, size: 64, offset: 9280)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !480, line: 62, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !479, file: !480, line: 971, baseType: !874, size: 64, offset: 9344)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !875, line: 25, baseType: !876)
!875 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !875, line: 23, size: 64, elements: !877)
!877 = !{!878}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !876, file: !875, line: 24, baseType: !644, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !479, file: !480, line: 972, baseType: !874, size: 64, offset: 9408)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !479, file: !480, line: 974, baseType: !874, size: 64, offset: 9472)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !479, file: !480, line: 975, baseType: !882, size: 192, offset: 9536)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !883, line: 30, size: 192, elements: !884)
!883 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !882, file: !883, line: 31, baseType: !179, size: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !882, file: !883, line: 32, baseType: !874, size: 64, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !479, file: !480, line: 976, baseType: !166, size: 64, offset: 9728)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !479, file: !480, line: 977, baseType: !279, size: 64, offset: 9792)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !479, file: !480, line: 978, baseType: !7, size: 32, offset: 9856)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !479, file: !480, line: 980, baseType: !775, size: 64, offset: 9920)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !479, file: !480, line: 989, baseType: !892, size: 128, offset: 9984)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !893, line: 35, size: 128, elements: !894)
!893 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!894 = !{!895, !896, !897}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !892, file: !893, line: 36, baseType: !161, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !892, file: !893, line: 37, baseType: !372, size: 32, offset: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !892, file: !893, line: 38, baseType: !898, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !893, line: 23, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !479, file: !480, line: 992, baseType: !350, size: 64, offset: 10112)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !479, file: !480, line: 993, baseType: !350, size: 64, offset: 10176)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !479, file: !480, line: 996, baseType: !192, offset: 10240)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !479, file: !480, line: 999, baseType: !397, offset: 10240)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !479, file: !480, line: 1001, baseType: !905, size: 64, offset: 10240)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !480, line: 636, size: 64, elements: !906)
!906 = !{!907}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !905, file: !480, line: 637, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !479, file: !480, line: 1005, baseType: !615, size: 128, offset: 10304)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !479, file: !480, line: 1007, baseType: !478, size: 64, offset: 10432)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !479, file: !480, line: 1009, baseType: !912, size: 64, offset: 10496)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !480, line: 1009, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !479, file: !480, line: 1043, baseType: !167, size: 64, offset: 10560)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !479, file: !480, line: 1046, baseType: !916, size: 64, offset: 10624)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !480, line: 41, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !479, file: !480, line: 1050, baseType: !919, size: 64, offset: 10688)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !480, line: 42, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !479, file: !480, line: 1054, baseType: !922, size: 64, offset: 10752)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !480, line: 55, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !479, file: !480, line: 1056, baseType: !925, size: 64, offset: 10816)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !480, line: 40, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !479, file: !480, line: 1058, baseType: !928, size: 64, offset: 10880)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !480, line: 47, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !479, file: !480, line: 1061, baseType: !931, size: 64, offset: 10944)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !480, line: 43, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !479, file: !480, line: 1064, baseType: !166, size: 64, offset: 11008)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !479, file: !480, line: 1065, baseType: !935, size: 64, offset: 11072)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !883, line: 14, baseType: !937)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !883, line: 12, size: 384, elements: !938)
!938 = !{!939}
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !937, file: !883, line: 13, baseType: !940, size: 384)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !937, file: !883, line: 13, size: 384, elements: !941)
!941 = !{!942, !943, !944, !945}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !940, file: !883, line: 13, baseType: !161, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !940, file: !883, line: 13, baseType: !161, size: 32, offset: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !940, file: !883, line: 13, baseType: !161, size: 32, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !940, file: !883, line: 13, baseType: !946, size: 256, offset: 128)
!946 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !947, line: 32, size: 256, elements: !948)
!947 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!948 = !{!949, !955, !968, !974, !983, !1003, !1008}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !946, file: !947, line: 37, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !946, file: !947, line: 34, size: 64, elements: !951)
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !950, file: !947, line: 35, baseType: !734, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !950, file: !947, line: 36, baseType: !954, size: 32, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !265, line: 49, baseType: !7)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !946, file: !947, line: 45, baseType: !956, size: 192)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !946, file: !947, line: 40, size: 192, elements: !957)
!957 = !{!958, !960, !961, !967}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !956, file: !947, line: 41, baseType: !959, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !265, line: 95, baseType: !161)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !956, file: !947, line: 42, baseType: !161, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !956, file: !947, line: 43, baseType: !962, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !947, line: 11, baseType: !963)
!963 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !947, line: 8, size: 64, elements: !964)
!964 = !{!965, !966}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !963, file: !947, line: 9, baseType: !161, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !963, file: !947, line: 10, baseType: !167, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !956, file: !947, line: 44, baseType: !161, size: 32, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !946, file: !947, line: 52, baseType: !969, size: 128)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !946, file: !947, line: 48, size: 128, elements: !970)
!970 = !{!971, !972, !973}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !969, file: !947, line: 49, baseType: !734, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !969, file: !947, line: 50, baseType: !954, size: 32, offset: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !969, file: !947, line: 51, baseType: !962, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !946, file: !947, line: 61, baseType: !975, size: 256)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !946, file: !947, line: 55, size: 256, elements: !976)
!976 = !{!977, !978, !979, !980, !982}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !975, file: !947, line: 56, baseType: !734, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !975, file: !947, line: 57, baseType: !954, size: 32, offset: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !975, file: !947, line: 58, baseType: !161, size: 32, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !975, file: !947, line: 59, baseType: !981, size: 64, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !265, line: 94, baseType: !266)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !975, file: !947, line: 60, baseType: !981, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !946, file: !947, line: 95, baseType: !984, size: 256)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !946, file: !947, line: 64, size: 256, elements: !985)
!985 = !{!986, !987}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !984, file: !947, line: 65, baseType: !167, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !984, file: !947, line: 77, baseType: !988, size: 192, offset: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !984, file: !947, line: 77, size: 192, elements: !989)
!989 = !{!990, !991, !998}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !988, file: !947, line: 82, baseType: !467, size: 16)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !988, file: !947, line: 88, baseType: !992, size: 192)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !988, file: !947, line: 84, size: 192, elements: !993)
!993 = !{!994, !996, !997}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !992, file: !947, line: 85, baseType: !995, size: 64)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 64, elements: !594)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !992, file: !947, line: 86, baseType: !167, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !992, file: !947, line: 87, baseType: !167, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !988, file: !947, line: 93, baseType: !999, size: 96)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !988, file: !947, line: 90, size: 96, elements: !1000)
!1000 = !{!1001, !1002}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !999, file: !947, line: 91, baseType: !995, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !999, file: !947, line: 92, baseType: !489, size: 32, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !946, file: !947, line: 101, baseType: !1004, size: 128)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !946, file: !947, line: 98, size: 128, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1004, file: !947, line: 99, baseType: !267, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1004, file: !947, line: 100, baseType: !161, size: 32, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !946, file: !947, line: 108, baseType: !1009, size: 128)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !946, file: !947, line: 104, size: 128, elements: !1010)
!1010 = !{!1011, !1012, !1013}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1009, file: !947, line: 105, baseType: !167, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1009, file: !947, line: 106, baseType: !161, size: 32, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1009, file: !947, line: 107, baseType: !7, size: 32, offset: 96)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !479, file: !480, line: 1067, baseType: !1015, offset: 11136)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1016, line: 12, elements: !206)
!1016 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !479, file: !480, line: 1099, baseType: !1018, size: 64, offset: 11136)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !480, line: 56, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !479, file: !480, line: 1103, baseType: !179, size: 128, offset: 11200)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !479, file: !480, line: 1104, baseType: !1022, size: 64, offset: 11328)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !480, line: 46, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !479, file: !480, line: 1105, baseType: !449, size: 192, offset: 11392)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !479, file: !480, line: 1106, baseType: !7, size: 32, offset: 11584)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !479, file: !480, line: 1109, baseType: !1027, size: 128, offset: 11648)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1028, size: 128, elements: !1030)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !480, line: 51, flags: DIFlagFwdDecl)
!1030 = !{!1031}
!1031 = !DISubrange(count: 2)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !479, file: !480, line: 1110, baseType: !449, size: 192, offset: 11776)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !479, file: !480, line: 1111, baseType: !179, size: 128, offset: 11968)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !479, file: !480, line: 1173, baseType: !1035, size: 64, offset: 12096)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1037, line: 62, size: 256, align: 256, elements: !1038)
!1037 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1038 = !{!1039, !1040, !1041, !1046}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1036, file: !1037, line: 75, baseType: !489, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1036, file: !1037, line: 90, baseType: !489, size: 32, offset: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1036, file: !1037, line: 124, baseType: !1042, size: 64, offset: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1036, file: !1037, line: 109, size: 64, elements: !1043)
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1042, file: !1037, line: 110, baseType: !352, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1042, file: !1037, line: 112, baseType: !352, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1036, file: !1037, line: 144, baseType: !489, size: 32, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !479, file: !480, line: 1174, baseType: !488, size: 32, offset: 12160)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !479, file: !480, line: 1179, baseType: !166, size: 64, offset: 12224)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !479, file: !480, line: 1182, baseType: !1050, size: 128, offset: 12288)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !427, line: 76, size: 128, elements: !1051)
!1051 = !{!1052, !1057, !1060}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1050, file: !427, line: 85, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1054, line: 7, size: 64, elements: !1055)
!1054 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1055 = !{!1056}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1053, file: !1054, line: 12, baseType: !641, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1050, file: !427, line: 88, baseType: !1058, size: 8, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !165, line: 30, baseType: !1059)
!1059 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1050, file: !427, line: 95, baseType: !1058, size: 8, offset: 72)
!1061 = !DIDerivedType(tag: DW_TAG_member, scope: !479, file: !480, line: 1184, baseType: !1062, size: 128, offset: 12416)
!1062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !479, file: !480, line: 1184, size: 128, elements: !1063)
!1063 = !{!1064, !1065}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1062, file: !480, line: 1185, baseType: !494, size: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1062, file: !480, line: 1186, baseType: !772, size: 128, align: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !479, file: !480, line: 1190, baseType: !1067, size: 64, offset: 12544)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !480, line: 53, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !479, file: !480, line: 1192, baseType: !1070, size: 128, offset: 12608)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !427, line: 64, size: 128, elements: !1071)
!1071 = !{!1072, !1165, !1166}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1070, file: !427, line: 65, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !322, line: 68, size: 512, align: 128, elements: !1075)
!1075 = !{!1076, !1077, !1157, !1164}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1074, file: !322, line: 69, baseType: !166, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !322, line: 77, baseType: !1078, size: 320, offset: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1074, file: !322, line: 77, size: 320, elements: !1079)
!1079 = !{!1080, !1089, !1094, !1122, !1130, !1136, !1149, !1156}
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1078, file: !322, line: 78, baseType: !1081, size: 320)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1078, file: !322, line: 78, size: 320, elements: !1082)
!1082 = !{!1083, !1084, !1087, !1088}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1081, file: !322, line: 84, baseType: !179, size: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1081, file: !322, line: 86, baseType: !1085, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !322, line: 26, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1081, file: !322, line: 87, baseType: !166, size: 64, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1081, file: !322, line: 94, baseType: !166, size: 64, offset: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, scope: !1078, file: !322, line: 96, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1078, file: !322, line: 96, size: 64, elements: !1091)
!1091 = !{!1092}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1090, file: !322, line: 101, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !165, line: 143, baseType: !350)
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1078, file: !322, line: 103, baseType: !1095, size: 320)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1078, file: !322, line: 103, size: 320, elements: !1096)
!1096 = !{!1097, !1107, !1110, !1111}
!1097 = !DIDerivedType(tag: DW_TAG_member, scope: !1095, file: !322, line: 104, baseType: !1098, size: 128)
!1098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1095, file: !322, line: 104, size: 128, elements: !1099)
!1099 = !{!1100, !1101}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1098, file: !322, line: 105, baseType: !179, size: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, scope: !1098, file: !322, line: 106, baseType: !1102, size: 128)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1098, file: !322, line: 106, size: 128, elements: !1103)
!1103 = !{!1104, !1105, !1106}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1102, file: !322, line: 107, baseType: !1073, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1102, file: !322, line: 109, baseType: !161, size: 32, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1102, file: !322, line: 110, baseType: !161, size: 32, offset: 96)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1095, file: !322, line: 117, baseType: !1108, size: 64, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !322, line: 117, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1095, file: !322, line: 119, baseType: !167, size: 64, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_member, scope: !1095, file: !322, line: 120, baseType: !1112, size: 64, offset: 256)
!1112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1095, file: !322, line: 120, size: 64, elements: !1113)
!1113 = !{!1114, !1115, !1116}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1112, file: !322, line: 121, baseType: !167, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1112, file: !322, line: 122, baseType: !166, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, scope: !1112, file: !322, line: 123, baseType: !1117, size: 32)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1112, file: !322, line: 123, size: 32, elements: !1118)
!1118 = !{!1119, !1120, !1121}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1117, file: !322, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1117, file: !322, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1117, file: !322, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1122 = !DIDerivedType(tag: DW_TAG_member, scope: !1078, file: !322, line: 130, baseType: !1123, size: 192)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1078, file: !322, line: 130, size: 192, elements: !1124)
!1124 = !{!1125, !1126, !1127, !1128, !1129}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1123, file: !322, line: 131, baseType: !166, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1123, file: !322, line: 134, baseType: !627, size: 8, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1123, file: !322, line: 135, baseType: !627, size: 8, offset: 72)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1123, file: !322, line: 136, baseType: !372, size: 32, offset: 96)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1123, file: !322, line: 137, baseType: !7, size: 32, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1078, file: !322, line: 139, baseType: !1131, size: 256)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1078, file: !322, line: 139, size: 256, elements: !1132)
!1132 = !{!1133, !1134, !1135}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1131, file: !322, line: 140, baseType: !166, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1131, file: !322, line: 141, baseType: !372, size: 32, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1131, file: !322, line: 143, baseType: !179, size: 128, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, scope: !1078, file: !322, line: 145, baseType: !1137, size: 256)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1078, file: !322, line: 145, size: 256, elements: !1138)
!1138 = !{!1139, !1140, !1142, !1143, !1148}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1137, file: !322, line: 146, baseType: !166, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1137, file: !322, line: 147, baseType: !1141, size: 64, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !311, line: 509, baseType: !1073)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1137, file: !322, line: 148, baseType: !166, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !322, line: 149, baseType: !1144, size: 64, offset: 192)
!1144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1137, file: !322, line: 149, size: 64, elements: !1145)
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1144, file: !322, line: 150, baseType: !338, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1144, file: !322, line: 151, baseType: !372, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1137, file: !322, line: 156, baseType: !192, offset: 256)
!1149 = !DIDerivedType(tag: DW_TAG_member, scope: !1078, file: !322, line: 159, baseType: !1150, size: 128)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1078, file: !322, line: 159, size: 128, elements: !1151)
!1151 = !{!1152, !1155}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1150, file: !322, line: 161, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !322, line: 161, flags: DIFlagFwdDecl)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1150, file: !322, line: 162, baseType: !167, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1078, file: !322, line: 176, baseType: !772, size: 128, align: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !322, line: 179, baseType: !1158, size: 32, offset: 384)
!1158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1074, file: !322, line: 179, size: 32, elements: !1159)
!1159 = !{!1160, !1161, !1162, !1163}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1158, file: !322, line: 184, baseType: !372, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1158, file: !322, line: 192, baseType: !7, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1158, file: !322, line: 194, baseType: !7, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1158, file: !322, line: 195, baseType: !161, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1074, file: !322, line: 199, baseType: !372, size: 32, offset: 416)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1070, file: !427, line: 67, baseType: !489, size: 32, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1070, file: !427, line: 68, baseType: !489, size: 32, offset: 96)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !479, file: !480, line: 1206, baseType: !161, size: 32, offset: 12736)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !479, file: !480, line: 1207, baseType: !161, size: 32, offset: 12768)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !479, file: !480, line: 1209, baseType: !166, size: 64, offset: 12800)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !479, file: !480, line: 1219, baseType: !350, size: 64, offset: 12864)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !479, file: !480, line: 1220, baseType: !350, size: 64, offset: 12928)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !479, file: !480, line: 1317, baseType: !161, size: 32, offset: 12992)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !479, file: !480, line: 1319, baseType: !478, size: 64, offset: 13056)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !479, file: !480, line: 1322, baseType: !1175, size: 64, offset: 13120)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !480, line: 1322, flags: DIFlagFwdDecl)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !479, file: !480, line: 1326, baseType: !494, size: 32, offset: 13184)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !479, file: !480, line: 1342, baseType: !167, size: 64, offset: 13248)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !479, file: !480, line: 1343, baseType: !352, size: 64, offset: 13312)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !479, file: !480, line: 1344, baseType: !350, size: 64, offset: 13376)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !479, file: !480, line: 1345, baseType: !352, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !479, file: !480, line: 1346, baseType: !352, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !479, file: !480, line: 1347, baseType: !352, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !479, file: !480, line: 1348, baseType: !772, size: 128, align: 64, offset: 13504)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !479, file: !480, line: 1358, baseType: !1186, size: 34816, offset: 13824)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1187, line: 485, size: 34816, elements: !1188)
!1187 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1188 = !{!1189, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1218, !1219, !1220, !1221, !1222, !1223, !1226, !1227, !1228}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1186, file: !1187, line: 487, baseType: !1190, size: 192)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1191, size: 192, elements: !233)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1192, line: 16, size: 64, elements: !1193)
!1192 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1191, file: !1192, line: 17, baseType: !462, size: 16)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1191, file: !1192, line: 18, baseType: !462, size: 16, offset: 16)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1191, file: !1192, line: 19, baseType: !462, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1191, file: !1192, line: 19, baseType: !462, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1191, file: !1192, line: 19, baseType: !462, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1191, file: !1192, line: 19, baseType: !462, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1191, file: !1192, line: 19, baseType: !462, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1191, file: !1192, line: 20, baseType: !462, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1191, file: !1192, line: 20, baseType: !462, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1191, file: !1192, line: 20, baseType: !462, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1191, file: !1192, line: 20, baseType: !462, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1191, file: !1192, line: 20, baseType: !462, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1191, file: !1192, line: 20, baseType: !462, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1186, file: !1187, line: 491, baseType: !166, size: 64, offset: 192)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1186, file: !1187, line: 495, baseType: !274, size: 16, offset: 256)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1186, file: !1187, line: 496, baseType: !274, size: 16, offset: 272)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1186, file: !1187, line: 497, baseType: !274, size: 16, offset: 288)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1186, file: !1187, line: 498, baseType: !274, size: 16, offset: 304)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1186, file: !1187, line: 502, baseType: !166, size: 64, offset: 320)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1186, file: !1187, line: 503, baseType: !166, size: 64, offset: 384)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1186, file: !1187, line: 514, baseType: !1215, size: 256, offset: 448)
!1215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1216, size: 256, elements: !431)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1187, line: 483, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1186, file: !1187, line: 516, baseType: !166, size: 64, offset: 704)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1186, file: !1187, line: 518, baseType: !166, size: 64, offset: 768)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1186, file: !1187, line: 520, baseType: !166, size: 64, offset: 832)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1186, file: !1187, line: 521, baseType: !166, size: 64, offset: 896)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1186, file: !1187, line: 522, baseType: !166, size: 64, offset: 960)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1186, file: !1187, line: 528, baseType: !1224, size: 64, offset: 1024)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1187, line: 10, flags: DIFlagFwdDecl)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1186, file: !1187, line: 535, baseType: !166, size: 64, offset: 1088)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1186, file: !1187, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1186, file: !1187, line: 540, baseType: !1229, size: 33280, offset: 1536)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1230, line: 317, size: 33280, elements: !1231)
!1230 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1231 = !{!1232, !1233, !1234}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1229, file: !1230, line: 330, baseType: !7, size: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1229, file: !1230, line: 337, baseType: !166, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1229, file: !1230, line: 348, baseType: !1235, size: 32768, offset: 512)
!1235 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1230, line: 304, size: 32768, elements: !1236)
!1236 = !{!1237, !1252, !1291, !1341, !1358}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1235, file: !1230, line: 305, baseType: !1238, size: 896)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1230, line: 12, size: 896, elements: !1239)
!1239 = !{!1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1251}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1238, file: !1230, line: 13, baseType: !488, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1238, file: !1230, line: 14, baseType: !488, size: 32, offset: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1238, file: !1230, line: 15, baseType: !488, size: 32, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1238, file: !1230, line: 16, baseType: !488, size: 32, offset: 96)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1238, file: !1230, line: 17, baseType: !488, size: 32, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1238, file: !1230, line: 18, baseType: !488, size: 32, offset: 160)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1238, file: !1230, line: 19, baseType: !488, size: 32, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1238, file: !1230, line: 22, baseType: !1248, size: 640, offset: 224)
!1248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 640, elements: !1249)
!1249 = !{!1250}
!1250 = !DISubrange(count: 20)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1238, file: !1230, line: 25, baseType: !488, size: 32, offset: 864)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1235, file: !1230, line: 306, baseType: !1253, size: 4096, align: 128)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1230, line: 34, size: 4096, align: 128, elements: !1254)
!1254 = !{!1255, !1256, !1257, !1258, !1259, !1274, !1275, !1276, !1280, !1282, !1286}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1253, file: !1230, line: 35, baseType: !462, size: 16)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1253, file: !1230, line: 36, baseType: !462, size: 16, offset: 16)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1253, file: !1230, line: 37, baseType: !462, size: 16, offset: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1253, file: !1230, line: 38, baseType: !462, size: 16, offset: 48)
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1253, file: !1230, line: 39, baseType: !1260, size: 128, offset: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1253, file: !1230, line: 39, size: 128, elements: !1261)
!1261 = !{!1262, !1267}
!1262 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !1230, line: 40, baseType: !1263, size: 128)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1260, file: !1230, line: 40, size: 128, elements: !1264)
!1264 = !{!1265, !1266}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1263, file: !1230, line: 41, baseType: !350, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1263, file: !1230, line: 42, baseType: !350, size: 64, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !1230, line: 44, baseType: !1268, size: 128)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1260, file: !1230, line: 44, size: 128, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1273}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1268, file: !1230, line: 45, baseType: !488, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1268, file: !1230, line: 46, baseType: !488, size: 32, offset: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1268, file: !1230, line: 47, baseType: !488, size: 32, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1268, file: !1230, line: 48, baseType: !488, size: 32, offset: 96)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1253, file: !1230, line: 51, baseType: !488, size: 32, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1253, file: !1230, line: 52, baseType: !488, size: 32, offset: 224)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1253, file: !1230, line: 55, baseType: !1277, size: 1024, offset: 256)
!1277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 1024, elements: !1278)
!1278 = !{!1279}
!1279 = !DISubrange(count: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1253, file: !1230, line: 58, baseType: !1281, size: 2048, offset: 1280)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 2048, elements: !237)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1253, file: !1230, line: 60, baseType: !1283, size: 384, offset: 3328)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 384, elements: !1284)
!1284 = !{!1285}
!1285 = !DISubrange(count: 12)
!1286 = !DIDerivedType(tag: DW_TAG_member, scope: !1253, file: !1230, line: 62, baseType: !1287, size: 384, offset: 3712)
!1287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1253, file: !1230, line: 62, size: 384, elements: !1288)
!1288 = !{!1289, !1290}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1287, file: !1230, line: 63, baseType: !1283, size: 384)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1287, file: !1230, line: 64, baseType: !1283, size: 384)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1235, file: !1230, line: 307, baseType: !1292, size: 1088)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1230, line: 79, size: 1088, elements: !1293)
!1293 = !{!1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1340}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1292, file: !1230, line: 80, baseType: !488, size: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1292, file: !1230, line: 81, baseType: !488, size: 32, offset: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1292, file: !1230, line: 82, baseType: !488, size: 32, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1292, file: !1230, line: 83, baseType: !488, size: 32, offset: 96)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1292, file: !1230, line: 84, baseType: !488, size: 32, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1292, file: !1230, line: 85, baseType: !488, size: 32, offset: 160)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1292, file: !1230, line: 86, baseType: !488, size: 32, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1292, file: !1230, line: 88, baseType: !1248, size: 640, offset: 224)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1292, file: !1230, line: 89, baseType: !625, size: 8, offset: 864)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1292, file: !1230, line: 90, baseType: !625, size: 8, offset: 872)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1292, file: !1230, line: 91, baseType: !625, size: 8, offset: 880)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1292, file: !1230, line: 92, baseType: !625, size: 8, offset: 888)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1292, file: !1230, line: 93, baseType: !625, size: 8, offset: 896)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1292, file: !1230, line: 94, baseType: !625, size: 8, offset: 904)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1292, file: !1230, line: 95, baseType: !1309, size: 64, offset: 960)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1311, line: 11, size: 128, elements: !1312)
!1311 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1312 = !{!1313, !1314}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1310, file: !1311, line: 12, baseType: !267, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1310, file: !1311, line: 13, baseType: !1315, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1317, line: 56, size: 1344, elements: !1318)
!1317 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1318 = !{!1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1316, file: !1317, line: 61, baseType: !166, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1316, file: !1317, line: 62, baseType: !166, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1316, file: !1317, line: 63, baseType: !166, size: 64, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1316, file: !1317, line: 64, baseType: !166, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1316, file: !1317, line: 65, baseType: !166, size: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1316, file: !1317, line: 66, baseType: !166, size: 64, offset: 320)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1316, file: !1317, line: 68, baseType: !166, size: 64, offset: 384)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1316, file: !1317, line: 69, baseType: !166, size: 64, offset: 448)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1316, file: !1317, line: 70, baseType: !166, size: 64, offset: 512)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1316, file: !1317, line: 71, baseType: !166, size: 64, offset: 576)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1316, file: !1317, line: 72, baseType: !166, size: 64, offset: 640)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1316, file: !1317, line: 73, baseType: !166, size: 64, offset: 704)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1316, file: !1317, line: 74, baseType: !166, size: 64, offset: 768)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1316, file: !1317, line: 75, baseType: !166, size: 64, offset: 832)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1316, file: !1317, line: 76, baseType: !166, size: 64, offset: 896)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1316, file: !1317, line: 81, baseType: !166, size: 64, offset: 960)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1316, file: !1317, line: 83, baseType: !166, size: 64, offset: 1024)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1316, file: !1317, line: 84, baseType: !166, size: 64, offset: 1088)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1316, file: !1317, line: 85, baseType: !166, size: 64, offset: 1152)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1316, file: !1317, line: 86, baseType: !166, size: 64, offset: 1216)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1316, file: !1317, line: 87, baseType: !166, size: 64, offset: 1280)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1292, file: !1230, line: 96, baseType: !488, size: 32, offset: 1024)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1235, file: !1230, line: 308, baseType: !1342, size: 4608, align: 512)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1230, line: 289, size: 4608, align: 512, elements: !1343)
!1343 = !{!1344, !1345, !1354}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1342, file: !1230, line: 290, baseType: !1253, size: 4096, align: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1342, file: !1230, line: 291, baseType: !1346, size: 512, offset: 4096)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1230, line: 268, size: 512, elements: !1347)
!1347 = !{!1348, !1349, !1350}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1346, file: !1230, line: 269, baseType: !350, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1346, file: !1230, line: 270, baseType: !350, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1346, file: !1230, line: 271, baseType: !1351, size: 384, offset: 128)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 384, elements: !1352)
!1352 = !{!1353}
!1353 = !DISubrange(count: 6)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1342, file: !1230, line: 292, baseType: !1355, offset: 4608)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !625, elements: !1356)
!1356 = !{!1357}
!1357 = !DISubrange(count: 0)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1235, file: !1230, line: 309, baseType: !1359, size: 32768)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !625, size: 32768, elements: !1360)
!1360 = !{!1361}
!1361 = !DISubrange(count: 4096)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !475, file: !322, line: 378, baseType: !1363, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !471, file: !322, line: 384, baseType: !794, size: 192, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !342, file: !322, line: 500, baseType: !192, offset: 6656)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !342, file: !322, line: 501, baseType: !1367, size: 64, offset: 6656)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !322, line: 387, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !342, file: !322, line: 516, baseType: !1370, size: 64, offset: 6720)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1372, line: 18, flags: DIFlagFwdDecl)
!1372 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !342, file: !322, line: 519, baseType: !309, size: 64, offset: 6784)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !342, file: !322, line: 521, baseType: !1375, size: 64, offset: 6848)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !322, line: 521, flags: DIFlagFwdDecl)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !342, file: !322, line: 545, baseType: !372, size: 32, offset: 6912)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !342, file: !322, line: 548, baseType: !1058, size: 8, offset: 6944)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !342, file: !322, line: 550, baseType: !1380, offset: 6952)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1381, line: 142, elements: !206)
!1381 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !342, file: !322, line: 554, baseType: !1383, size: 256, offset: 6976)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1384, line: 102, size: 256, elements: !1385)
!1384 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1385 = !{!1386, !1387, !1388}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1383, file: !1384, line: 103, baseType: !380, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1383, file: !1384, line: 104, baseType: !179, size: 128, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1383, file: !1384, line: 105, baseType: !1389, size: 64, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1384, line: 21, baseType: !1390)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{null, !1393}
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !342, file: !322, line: 557, baseType: !488, size: 32, offset: 7232)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !339, file: !322, line: 565, baseType: !1396, offset: 7296)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, elements: !1397)
!1397 = !{!1398}
!1398 = !DISubrange(count: -1)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !321, file: !322, line: 333, baseType: !1400, size: 64, offset: 576)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !311, line: 284, baseType: !1401)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !311, line: 284, size: 64, elements: !1402)
!1402 = !{!1403}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1401, file: !311, line: 284, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !370, line: 19, baseType: !166)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !321, file: !322, line: 334, baseType: !166, size: 64, offset: 640)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !321, file: !322, line: 343, baseType: !1407, size: 256, offset: 704)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !321, file: !322, line: 340, size: 256, elements: !1408)
!1408 = !{!1409, !1410}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1407, file: !322, line: 341, baseType: !329, size: 192, align: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1407, file: !322, line: 342, baseType: !166, size: 64, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !321, file: !322, line: 351, baseType: !179, size: 128, offset: 960)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !321, file: !322, line: 353, baseType: !1413, size: 64, offset: 1088)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !322, line: 353, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !321, file: !322, line: 356, baseType: !1416, size: 64, offset: 1152)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1418)
!1418 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !322, line: 356, flags: DIFlagFwdDecl)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !321, file: !322, line: 359, baseType: !166, size: 64, offset: 1216)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !321, file: !322, line: 361, baseType: !309, size: 64, offset: 1280)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !321, file: !322, line: 362, baseType: !167, size: 64, offset: 1344)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !321, file: !322, line: 365, baseType: !380, size: 64, offset: 1408)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !321, file: !322, line: 373, baseType: !1424, offset: 1472)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !322, line: 296, elements: !206)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !288, file: !257, line: 90, baseType: !283, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !288, file: !257, line: 91, baseType: !1427, size: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !247, file: !173, line: 143, baseType: !1429, size: 64, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!1432, !185}
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1434)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !1435)
!1435 = !{!1436, !1437, !1441, !1445, !1453, !1457}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1434, file: !6, line: 40, baseType: !5, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1434, file: !6, line: 41, baseType: !1438, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!1058}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1434, file: !6, line: 42, baseType: !1442, size: 64, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!167}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1434, file: !6, line: 43, baseType: !1446, size: 64, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!1449, !1451}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1434, file: !6, line: 44, baseType: !1454, size: 64, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!1449}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1434, file: !6, line: 45, baseType: !1458, size: 64, offset: 320)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{null, !167}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !247, file: !173, line: 144, baseType: !1462, size: 64, offset: 320)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!1449, !185}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !247, file: !173, line: 145, baseType: !1466, size: 64, offset: 384)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{null, !185, !1469, !1475}
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1372, line: 23, baseType: !1471)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1372, line: 21, size: 32, elements: !1472)
!1472 = !{!1473}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1471, file: !1372, line: 22, baseType: !1474, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !165, line: 32, baseType: !954)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1372, line: 28, baseType: !1477)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1372, line: 26, size: 32, elements: !1478)
!1478 = !{!1479}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1477, file: !1372, line: 27, baseType: !1480, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !165, line: 33, baseType: !1481)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !265, line: 50, baseType: !7)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !172, file: !173, line: 70, baseType: !1483, size: 64, offset: 384)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1485, line: 123, size: 1024, elements: !1486)
!1485 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1486 = !{!1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1628, !1629, !1630, !1631, !1632}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1484, file: !1485, line: 124, baseType: !372, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1484, file: !1485, line: 125, baseType: !372, size: 32, offset: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1484, file: !1485, line: 135, baseType: !1483, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1484, file: !1485, line: 136, baseType: !176, size: 64, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1484, file: !1485, line: 138, baseType: !329, size: 192, align: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1484, file: !1485, line: 140, baseType: !1449, size: 64, offset: 384)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1484, file: !1485, line: 141, baseType: !7, size: 32, offset: 448)
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1484, file: !1485, line: 142, baseType: !1495, size: 256, offset: 512)
!1495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1484, file: !1485, line: 142, size: 256, elements: !1496)
!1496 = !{!1497, !1551, !1555}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1495, file: !1485, line: 143, baseType: !1498, size: 192)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1485, line: 91, size: 192, elements: !1499)
!1499 = !{!1500, !1501, !1502}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1498, file: !1485, line: 92, baseType: !166, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1498, file: !1485, line: 94, baseType: !346, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1498, file: !1485, line: 100, baseType: !1503, size: 64, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1485, line: 180, size: 704, elements: !1505)
!1505 = !{!1506, !1507, !1508, !1521, !1522, !1523, !1549, !1550}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1504, file: !1485, line: 182, baseType: !1483, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1504, file: !1485, line: 183, baseType: !7, size: 32, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1504, file: !1485, line: 186, baseType: !1509, size: 192, offset: 128)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1510, line: 19, size: 192, elements: !1511)
!1510 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1511 = !{!1512, !1519, !1520}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1509, file: !1510, line: 20, baseType: !1513, size: 128)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1514, line: 292, size: 128, elements: !1515)
!1514 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1515 = !{!1516, !1517, !1518}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1513, file: !1514, line: 293, baseType: !192)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1513, file: !1514, line: 295, baseType: !164, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1513, file: !1514, line: 296, baseType: !167, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1509, file: !1510, line: 21, baseType: !7, size: 32, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1509, file: !1510, line: 22, baseType: !7, size: 32, offset: 160)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1504, file: !1485, line: 187, baseType: !488, size: 32, offset: 320)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1504, file: !1485, line: 188, baseType: !488, size: 32, offset: 352)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1504, file: !1485, line: 189, baseType: !1524, size: 64, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1485, line: 168, size: 320, elements: !1526)
!1526 = !{!1527, !1533, !1537, !1541, !1545}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1525, file: !1485, line: 169, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!161, !1531, !1503}
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !311, line: 539, flags: DIFlagFwdDecl)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1525, file: !1485, line: 171, baseType: !1534, size: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!161, !1483, !176, !273}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1525, file: !1485, line: 173, baseType: !1538, size: 64, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!161, !1483}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1525, file: !1485, line: 174, baseType: !1542, size: 64, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!161, !1483, !1483, !176}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1525, file: !1485, line: 176, baseType: !1546, size: 64, offset: 256)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!161, !1531, !1483, !1503}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1504, file: !1485, line: 192, baseType: !179, size: 128, offset: 448)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1504, file: !1485, line: 194, baseType: !765, size: 128, offset: 576)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1495, file: !1485, line: 144, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1485, line: 103, size: 64, elements: !1553)
!1553 = !{!1554}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1552, file: !1485, line: 104, baseType: !1483, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1495, file: !1485, line: 145, baseType: !1556, size: 256)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1485, line: 107, size: 256, elements: !1557)
!1557 = !{!1558, !1623, !1626, !1627}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1556, file: !1485, line: 108, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1561)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1485, line: 217, size: 768, elements: !1562)
!1562 = !{!1563, !1583, !1587, !1591, !1596, !1600, !1604, !1608, !1609, !1610, !1611, !1619}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1561, file: !1485, line: 222, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!161, !1567}
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1485, line: 197, size: 1088, elements: !1569)
!1569 = !{!1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1568, file: !1485, line: 199, baseType: !1483, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1568, file: !1485, line: 200, baseType: !309, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1568, file: !1485, line: 201, baseType: !1531, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1568, file: !1485, line: 202, baseType: !167, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1568, file: !1485, line: 205, baseType: !449, size: 192, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1568, file: !1485, line: 206, baseType: !449, size: 192, offset: 448)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1568, file: !1485, line: 207, baseType: !161, size: 32, offset: 640)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1568, file: !1485, line: 208, baseType: !179, size: 128, offset: 704)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1568, file: !1485, line: 209, baseType: !162, size: 64, offset: 832)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1568, file: !1485, line: 211, baseType: !279, size: 64, offset: 896)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1568, file: !1485, line: 212, baseType: !1058, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1568, file: !1485, line: 213, baseType: !1058, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1568, file: !1485, line: 214, baseType: !1416, size: 64, offset: 1024)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1561, file: !1485, line: 223, baseType: !1584, size: 64, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{null, !1567}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1561, file: !1485, line: 236, baseType: !1588, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!161, !1531, !167}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1561, file: !1485, line: 238, baseType: !1592, size: 64, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!167, !1531, !1595}
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1561, file: !1485, line: 239, baseType: !1597, size: 64, offset: 256)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!167, !1531, !167, !1595}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1561, file: !1485, line: 240, baseType: !1601, size: 64, offset: 320)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{null, !1531, !167}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1561, file: !1485, line: 242, baseType: !1605, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!263, !1567, !162, !279, !312}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1561, file: !1485, line: 252, baseType: !279, size: 64, offset: 448)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1561, file: !1485, line: 259, baseType: !1058, size: 8, offset: 512)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1561, file: !1485, line: 260, baseType: !1605, size: 64, offset: 576)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1561, file: !1485, line: 263, baseType: !1612, size: 64, offset: 640)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!1615, !1567, !1617}
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1616, line: 52, baseType: !7)
!1616 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1485, line: 27, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1561, file: !1485, line: 266, baseType: !1620, size: 64, offset: 704)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!161, !1567, !320}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1556, file: !1485, line: 109, baseType: !1624, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1485, line: 31, flags: DIFlagFwdDecl)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1556, file: !1485, line: 110, baseType: !312, size: 64, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1556, file: !1485, line: 111, baseType: !1483, size: 64, offset: 192)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1484, file: !1485, line: 148, baseType: !167, size: 64, offset: 768)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1484, file: !1485, line: 154, baseType: !350, size: 64, offset: 832)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1484, file: !1485, line: 156, baseType: !274, size: 16, offset: 896)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1484, file: !1485, line: 157, baseType: !273, size: 16, offset: 912)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1484, file: !1485, line: 158, baseType: !1633, size: 64, offset: 960)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1485, line: 32, flags: DIFlagFwdDecl)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !172, file: !173, line: 71, baseType: !1636, size: 32, offset: 448)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1637, line: 19, size: 32, elements: !1638)
!1637 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1638 = !{!1639}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1636, file: !1637, line: 20, baseType: !494, size: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !172, file: !173, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !172, file: !173, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !172, file: !173, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !172, file: !173, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !172, file: !173, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !169, file: !30, line: 463, baseType: !168, size: 64, offset: 512)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !169, file: !30, line: 465, baseType: !1647, size: 64, offset: 576)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !169, file: !30, line: 467, baseType: !176, size: 64, offset: 640)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !169, file: !30, line: 468, baseType: !1651, size: 64, offset: 704)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1653)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1654)
!1654 = !{!1655, !1656, !1657, !1661, !1666, !1670}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1653, file: !30, line: 88, baseType: !176, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1653, file: !30, line: 89, baseType: !285, size: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1653, file: !30, line: 90, baseType: !1658, size: 64, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!161, !168, !228}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1653, file: !30, line: 91, baseType: !1662, size: 64, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!162, !168, !1665, !1469, !1475}
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1653, file: !30, line: 93, baseType: !1667, size: 64, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{null, !168}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1653, file: !30, line: 95, baseType: !1671, size: 64, offset: 320)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1673)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1674)
!1674 = !{!1675, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1673, file: !37, line: 279, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!161, !168}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1673, file: !37, line: 280, baseType: !1667, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1673, file: !37, line: 281, baseType: !1676, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1673, file: !37, line: 282, baseType: !1676, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1673, file: !37, line: 283, baseType: !1676, size: 64, offset: 256)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1673, file: !37, line: 284, baseType: !1676, size: 64, offset: 320)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1673, file: !37, line: 285, baseType: !1676, size: 64, offset: 384)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1673, file: !37, line: 286, baseType: !1676, size: 64, offset: 448)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1673, file: !37, line: 287, baseType: !1676, size: 64, offset: 512)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1673, file: !37, line: 288, baseType: !1676, size: 64, offset: 576)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1673, file: !37, line: 289, baseType: !1676, size: 64, offset: 640)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1673, file: !37, line: 290, baseType: !1676, size: 64, offset: 704)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1673, file: !37, line: 291, baseType: !1676, size: 64, offset: 768)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1673, file: !37, line: 292, baseType: !1676, size: 64, offset: 832)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1673, file: !37, line: 293, baseType: !1676, size: 64, offset: 896)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1673, file: !37, line: 294, baseType: !1676, size: 64, offset: 960)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1673, file: !37, line: 295, baseType: !1676, size: 64, offset: 1024)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1673, file: !37, line: 296, baseType: !1676, size: 64, offset: 1088)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1673, file: !37, line: 297, baseType: !1676, size: 64, offset: 1152)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1673, file: !37, line: 298, baseType: !1676, size: 64, offset: 1216)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1673, file: !37, line: 299, baseType: !1676, size: 64, offset: 1280)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1673, file: !37, line: 300, baseType: !1676, size: 64, offset: 1344)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1673, file: !37, line: 301, baseType: !1676, size: 64, offset: 1408)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !169, file: !30, line: 470, baseType: !1702, size: 64, offset: 768)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1704, line: 82, size: 1408, elements: !1705)
!1704 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1705 = !{!1706, !1707, !1708, !1709, !1710, !1711, !1712, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1772, !1775, !1778}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1703, file: !1704, line: 83, baseType: !176, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1703, file: !1704, line: 84, baseType: !176, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1703, file: !1704, line: 85, baseType: !168, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1703, file: !1704, line: 86, baseType: !285, size: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1703, file: !1704, line: 87, baseType: !285, size: 64, offset: 256)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1703, file: !1704, line: 88, baseType: !285, size: 64, offset: 320)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1703, file: !1704, line: 90, baseType: !1713, size: 64, offset: 384)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!161, !168, !1716}
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1718)
!1718 = !{!1719, !1720, !1721, !1725, !1726, !1727, !1728, !1732, !1736, !1737, !1738, !1739, !1740, !1748, !1749, !1750, !1751, !1752, !1753}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1717, file: !24, line: 96, baseType: !176, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1717, file: !24, line: 97, baseType: !1702, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1717, file: !24, line: 99, baseType: !1722, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1724, line: 76, flags: DIFlagFwdDecl)
!1724 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1717, file: !24, line: 100, baseType: !176, size: 64, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1717, file: !24, line: 102, baseType: !1058, size: 8, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1717, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1717, file: !24, line: 105, baseType: !1729, size: 64, offset: 320)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1731)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !24, line: 105, flags: DIFlagFwdDecl)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1717, file: !24, line: 106, baseType: !1733, size: 64, offset: 384)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1735)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !24, line: 106, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1717, file: !24, line: 108, baseType: !1676, size: 64, offset: 448)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1717, file: !24, line: 109, baseType: !1667, size: 64, offset: 512)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1717, file: !24, line: 110, baseType: !1676, size: 64, offset: 576)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1717, file: !24, line: 111, baseType: !1667, size: 64, offset: 640)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1717, file: !24, line: 112, baseType: !1741, size: 64, offset: 704)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!161, !168, !1744}
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1745)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1746)
!1746 = !{!1747}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1745, file: !37, line: 51, baseType: !161, size: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1717, file: !24, line: 113, baseType: !1676, size: 64, offset: 768)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1717, file: !24, line: 114, baseType: !285, size: 64, offset: 832)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1717, file: !24, line: 115, baseType: !285, size: 64, offset: 896)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1717, file: !24, line: 117, baseType: !1671, size: 64, offset: 960)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1717, file: !24, line: 118, baseType: !1667, size: 64, offset: 1024)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1717, file: !24, line: 120, baseType: !1754, size: 64, offset: 1088)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1703, file: !1704, line: 91, baseType: !1658, size: 64, offset: 448)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1703, file: !1704, line: 92, baseType: !1676, size: 64, offset: 512)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1703, file: !1704, line: 93, baseType: !1667, size: 64, offset: 576)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1703, file: !1704, line: 94, baseType: !1676, size: 64, offset: 640)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1703, file: !1704, line: 95, baseType: !1667, size: 64, offset: 704)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1703, file: !1704, line: 97, baseType: !1676, size: 64, offset: 768)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1703, file: !1704, line: 98, baseType: !1676, size: 64, offset: 832)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1703, file: !1704, line: 100, baseType: !1741, size: 64, offset: 896)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1703, file: !1704, line: 101, baseType: !1676, size: 64, offset: 960)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1703, file: !1704, line: 103, baseType: !1676, size: 64, offset: 1024)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1703, file: !1704, line: 105, baseType: !1676, size: 64, offset: 1088)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1703, file: !1704, line: 107, baseType: !1671, size: 64, offset: 1152)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1703, file: !1704, line: 109, baseType: !1769, size: 64, offset: 1216)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1771)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1704, line: 109, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1703, file: !1704, line: 111, baseType: !1773, size: 64, offset: 1280)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1704, line: 111, flags: DIFlagFwdDecl)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1703, file: !1704, line: 112, baseType: !1776, offset: 1344)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1777, line: 187, elements: !206)
!1777 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1703, file: !1704, line: 114, baseType: !1058, size: 8, offset: 1344)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !169, file: !30, line: 471, baseType: !1716, size: 64, offset: 832)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !169, file: !30, line: 473, baseType: !167, size: 64, offset: 896)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !169, file: !30, line: 475, baseType: !167, size: 64, offset: 960)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !169, file: !30, line: 480, baseType: !449, size: 192, offset: 1024)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !169, file: !30, line: 484, baseType: !1784, size: 576, offset: 1216)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1785)
!1785 = !{!1786, !1787, !1788, !1789, !1790, !1791}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1784, file: !30, line: 362, baseType: !179, size: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1784, file: !30, line: 363, baseType: !179, size: 128, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1784, file: !30, line: 364, baseType: !179, size: 128, offset: 256)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1784, file: !30, line: 365, baseType: !179, size: 128, offset: 384)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1784, file: !30, line: 366, baseType: !1058, size: 8, offset: 512)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1784, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !169, file: !30, line: 485, baseType: !1793, size: 2304, offset: 1792)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1794)
!1794 = !{!1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1890, !1894}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1793, file: !37, line: 566, baseType: !1744, size: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1793, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1793, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1793, file: !37, line: 569, baseType: !1058, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1793, file: !37, line: 570, baseType: !1058, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1793, file: !37, line: 571, baseType: !1058, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1793, file: !37, line: 572, baseType: !1058, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1793, file: !37, line: 573, baseType: !1058, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1793, file: !37, line: 574, baseType: !1058, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1793, file: !37, line: 575, baseType: !1058, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1793, file: !37, line: 576, baseType: !1058, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1793, file: !37, line: 577, baseType: !488, size: 32, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1793, file: !37, line: 578, baseType: !192, offset: 96)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1793, file: !37, line: 580, baseType: !179, size: 128, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1793, file: !37, line: 581, baseType: !794, size: 192, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1793, file: !37, line: 582, baseType: !1811, size: 64, offset: 448)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1813, line: 43, size: 1472, elements: !1814)
!1813 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1814 = !{!1815, !1816, !1817, !1818, !1819, !1822, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1812, file: !1813, line: 44, baseType: !176, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1812, file: !1813, line: 45, baseType: !161, size: 32, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1812, file: !1813, line: 46, baseType: !179, size: 128, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1812, file: !1813, line: 47, baseType: !192, offset: 256)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1812, file: !1813, line: 48, baseType: !1820, size: 64, offset: 256)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1812, file: !1813, line: 49, baseType: !1823, size: 320, offset: 320)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1824, line: 11, size: 320, elements: !1825)
!1824 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1825 = !{!1826, !1827, !1828, !1833}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1823, file: !1824, line: 16, baseType: !758, size: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1823, file: !1824, line: 17, baseType: !166, size: 64, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1823, file: !1824, line: 18, baseType: !1829, size: 64, offset: 192)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{null, !1832}
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1823, file: !1824, line: 19, baseType: !488, size: 32, offset: 256)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1812, file: !1813, line: 50, baseType: !166, size: 64, offset: 640)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1812, file: !1813, line: 51, baseType: !564, size: 64, offset: 704)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1812, file: !1813, line: 52, baseType: !564, size: 64, offset: 768)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1812, file: !1813, line: 53, baseType: !564, size: 64, offset: 832)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1812, file: !1813, line: 54, baseType: !564, size: 64, offset: 896)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1812, file: !1813, line: 55, baseType: !564, size: 64, offset: 960)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1812, file: !1813, line: 56, baseType: !166, size: 64, offset: 1024)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1812, file: !1813, line: 57, baseType: !166, size: 64, offset: 1088)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1812, file: !1813, line: 58, baseType: !166, size: 64, offset: 1152)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1812, file: !1813, line: 59, baseType: !166, size: 64, offset: 1216)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1812, file: !1813, line: 60, baseType: !166, size: 64, offset: 1280)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1812, file: !1813, line: 61, baseType: !168, size: 64, offset: 1344)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1812, file: !1813, line: 62, baseType: !1058, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1812, file: !1813, line: 63, baseType: !1058, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1793, file: !37, line: 583, baseType: !1058, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1793, file: !37, line: 584, baseType: !1058, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1793, file: !37, line: 585, baseType: !1058, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1793, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1793, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1793, file: !37, line: 592, baseType: !556, size: 512, offset: 576)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1793, file: !37, line: 593, baseType: !350, size: 64, offset: 1088)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1793, file: !37, line: 594, baseType: !1383, size: 256, offset: 1152)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1793, file: !37, line: 595, baseType: !765, size: 128, offset: 1408)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1793, file: !37, line: 596, baseType: !1820, size: 64, offset: 1536)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1793, file: !37, line: 597, baseType: !372, size: 32, offset: 1600)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1793, file: !37, line: 598, baseType: !372, size: 32, offset: 1632)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1793, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1793, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1793, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1793, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1793, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1793, file: !37, line: 604, baseType: !1058, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1793, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1793, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1793, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1793, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1793, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1793, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1793, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1793, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1793, file: !37, line: 613, baseType: !161, size: 32, offset: 1792)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1793, file: !37, line: 614, baseType: !161, size: 32, offset: 1824)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1793, file: !37, line: 615, baseType: !350, size: 64, offset: 1856)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1793, file: !37, line: 616, baseType: !350, size: 64, offset: 1920)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1793, file: !37, line: 617, baseType: !350, size: 64, offset: 1984)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1793, file: !37, line: 618, baseType: !350, size: 64, offset: 2048)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1793, file: !37, line: 620, baseType: !1881, size: 64, offset: 2112)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1883)
!1883 = !{!1884, !1885, !1886, !1887}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1882, file: !37, line: 537, baseType: !192)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1882, file: !37, line: 538, baseType: !7, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1882, file: !37, line: 540, baseType: !179, size: 128, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1882, file: !37, line: 543, baseType: !1888, size: 64, offset: 192)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1793, file: !37, line: 621, baseType: !1891, size: 64, offset: 2176)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{null, !168, !718}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1793, file: !37, line: 622, baseType: !1895, size: 64, offset: 2240)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !169, file: !30, line: 486, baseType: !1898, size: 64, offset: 4096)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1900)
!1900 = !{!1901, !1902, !1903, !1907, !1908, !1909}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1899, file: !37, line: 643, baseType: !1673, size: 1472)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1899, file: !37, line: 644, baseType: !1676, size: 64, offset: 1472)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1899, file: !37, line: 645, baseType: !1904, size: 64, offset: 1536)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !168, !1058}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1899, file: !37, line: 646, baseType: !1676, size: 64, offset: 1600)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1899, file: !37, line: 647, baseType: !1667, size: 64, offset: 1664)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1899, file: !37, line: 648, baseType: !1667, size: 64, offset: 1728)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !169, file: !30, line: 493, baseType: !1911, size: 64, offset: 4160)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !169, file: !30, line: 499, baseType: !179, size: 128, offset: 4224)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !169, file: !30, line: 502, baseType: !1915, size: 64, offset: 4352)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1917)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !169, file: !30, line: 504, baseType: !1919, size: 64, offset: 4416)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !169, file: !30, line: 505, baseType: !350, size: 64, offset: 4480)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !169, file: !30, line: 510, baseType: !350, size: 64, offset: 4544)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !169, file: !30, line: 511, baseType: !1923, size: 64, offset: 4608)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1925)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !169, file: !30, line: 513, baseType: !1927, size: 64, offset: 4672)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1929)
!1929 = !{!1930, !1931}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1928, file: !30, line: 293, baseType: !7, size: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1928, file: !30, line: 294, baseType: !166, size: 64, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !169, file: !30, line: 515, baseType: !179, size: 128, offset: 4736)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !169, file: !30, line: 526, baseType: !1934, offset: 4864)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1935, line: 5, elements: !206)
!1935 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !169, file: !30, line: 528, baseType: !1937, size: 64, offset: 4864)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1939, line: 14, flags: DIFlagFwdDecl)
!1939 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !169, file: !30, line: 529, baseType: !1941, size: 64, offset: 4928)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1704, line: 22, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !169, file: !30, line: 534, baseType: !1944, size: 32, offset: 4992)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !165, line: 16, baseType: !1945)
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !165, line: 13, baseType: !488)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !169, file: !30, line: 535, baseType: !488, size: 32, offset: 5024)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !169, file: !30, line: 537, baseType: !192, offset: 5056)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !169, file: !30, line: 538, baseType: !179, size: 128, offset: 5056)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !169, file: !30, line: 540, baseType: !1950, size: 64, offset: 5184)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1952, line: 54, size: 960, elements: !1953)
!1952 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1953 = !{!1954, !1955, !1956, !1957, !1958, !1959, !1960, !1964, !1968, !1969, !1970, !1971, !1975, !1979, !1980}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1951, file: !1952, line: 55, baseType: !176, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1951, file: !1952, line: 56, baseType: !1722, size: 64, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1951, file: !1952, line: 58, baseType: !285, size: 64, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1951, file: !1952, line: 59, baseType: !285, size: 64, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1951, file: !1952, line: 60, baseType: !185, size: 64, offset: 256)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1951, file: !1952, line: 62, baseType: !1658, size: 64, offset: 320)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1951, file: !1952, line: 63, baseType: !1961, size: 64, offset: 384)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!162, !168, !1665}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1951, file: !1952, line: 65, baseType: !1965, size: 64, offset: 448)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{null, !1950}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1951, file: !1952, line: 66, baseType: !1667, size: 64, offset: 512)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1951, file: !1952, line: 68, baseType: !1676, size: 64, offset: 576)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1951, file: !1952, line: 70, baseType: !1432, size: 64, offset: 640)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1951, file: !1952, line: 71, baseType: !1972, size: 64, offset: 704)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!1449, !168}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1951, file: !1952, line: 73, baseType: !1976, size: 64, offset: 768)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{null, !168, !1469, !1475}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1951, file: !1952, line: 75, baseType: !1671, size: 64, offset: 832)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1951, file: !1952, line: 77, baseType: !1773, size: 64, offset: 896)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !169, file: !30, line: 541, baseType: !285, size: 64, offset: 5248)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !169, file: !30, line: 543, baseType: !1667, size: 64, offset: 5312)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !169, file: !30, line: 544, baseType: !1984, size: 64, offset: 5376)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !169, file: !30, line: 545, baseType: !1987, size: 64, offset: 5440)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !169, file: !30, line: 547, baseType: !1058, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !169, file: !30, line: 548, baseType: !1058, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !169, file: !30, line: 549, baseType: !1058, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !169, file: !30, line: 550, baseType: !1058, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_attr", file: !3, line: 23, size: 704, elements: !1995)
!1995 = !{!1996, !1997, !2001, !2014, !2017}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "prop_name", scope: !1994, file: !3, line: 24, baseType: !176, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "attr_name", scope: !1994, file: !3, line: 25, baseType: !1998, size: 248, offset: 64)
!1998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 248, elements: !1999)
!1999 = !{!2000}
!2000 = !DISubrange(count: 31)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "dev_attr", scope: !1994, file: !3, line: 26, baseType: !2002, size: 256, offset: 320)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2003)
!2003 = !{!2004, !2005, !2010}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2002, file: !30, line: 100, baseType: !269, size: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2002, file: !30, line: 101, baseType: !2006, size: 64, offset: 128)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!263, !168, !2009, !162}
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2002, file: !30, line: 103, baseType: !2011, size: 64, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!263, !168, !2009, !176, !279}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "text_values", scope: !1994, file: !3, line: 27, baseType: !2015, size: 64, offset: 576)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "text_values_len", scope: !1994, file: !3, line: 28, baseType: !161, size: 32, offset: 640)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!2019 = !{!2020, !0, !2025, !2027, !2032, !2037, !2040, !2045, !2050, !2053, !2058, !2061, !2074}
!2020 = !DIGlobalVariableExpression(var: !2021, expr: !DIExpression())
!2021 = distinct !DIGlobalVariable(name: "__power_supply_attrs", scope: !2, file: !3, line: 217, type: !2022, isLocal: true, isDefinition: true)
!2022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 4864, elements: !2023)
!2023 = !{!2024}
!2024 = !DISubrange(count: 76)
!2025 = !DIGlobalVariableExpression(var: !2026, expr: !DIExpression())
!2026 = distinct !DIGlobalVariable(name: "power_supply_attr_group", scope: !2, file: !3, line: 377, type: !288, isLocal: true, isDefinition: true)
!2027 = !DIGlobalVariableExpression(var: !2028, expr: !DIExpression())
!2028 = distinct !DIGlobalVariable(name: "power_supply_attrs", scope: !2, file: !3, line: 136, type: !2029, isLocal: true, isDefinition: true)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1994, size: 52800, elements: !2030)
!2030 = !{!2031}
!2031 = !DISubrange(count: 75)
!2032 = !DIGlobalVariableExpression(var: !2033, expr: !DIExpression())
!2033 = distinct !DIGlobalVariable(name: "POWER_SUPPLY_STATUS_TEXT", scope: !2, file: !3, line: 75, type: !2034, isLocal: true, isDefinition: true)
!2034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2016, size: 320, elements: !2035)
!2035 = !{!2036}
!2036 = !DISubrange(count: 5)
!2037 = !DIGlobalVariableExpression(var: !2038, expr: !DIExpression())
!2038 = distinct !DIGlobalVariable(name: "POWER_SUPPLY_CHARGE_TYPE_TEXT", scope: !2, file: !3, line: 83, type: !2039, isLocal: true, isDefinition: true)
!2039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2016, size: 512, elements: !594)
!2040 = !DIGlobalVariableExpression(var: !2041, expr: !DIExpression())
!2041 = distinct !DIGlobalVariable(name: "POWER_SUPPLY_HEALTH_TEXT", scope: !2, file: !3, line: 94, type: !2042, isLocal: true, isDefinition: true)
!2042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2016, size: 896, elements: !2043)
!2043 = !{!2044}
!2044 = !DISubrange(count: 14)
!2045 = !DIGlobalVariableExpression(var: !2046, expr: !DIExpression())
!2046 = distinct !DIGlobalVariable(name: "POWER_SUPPLY_TECHNOLOGY_TEXT", scope: !2, file: !3, line: 111, type: !2047, isLocal: true, isDefinition: true)
!2047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2016, size: 448, elements: !2048)
!2048 = !{!2049}
!2049 = !DISubrange(count: 7)
!2050 = !DIGlobalVariableExpression(var: !2051, expr: !DIExpression())
!2051 = distinct !DIGlobalVariable(name: "POWER_SUPPLY_CAPACITY_LEVEL_TEXT", scope: !2, file: !3, line: 121, type: !2052, isLocal: true, isDefinition: true)
!2052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2016, size: 384, elements: !1352)
!2053 = !DIGlobalVariableExpression(var: !2054, expr: !DIExpression())
!2054 = distinct !DIGlobalVariable(name: "POWER_SUPPLY_TYPE_TEXT", scope: !2, file: !3, line: 46, type: !2055, isLocal: true, isDefinition: true)
!2055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2016, size: 832, elements: !2056)
!2056 = !{!2057}
!2057 = !DISubrange(count: 13)
!2058 = !DIGlobalVariableExpression(var: !2059, expr: !DIExpression())
!2059 = distinct !DIGlobalVariable(name: "POWER_SUPPLY_SCOPE_TEXT", scope: !2, file: !3, line: 130, type: !2060, isLocal: true, isDefinition: true)
!2060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2016, size: 192, elements: !233)
!2061 = !DIGlobalVariableExpression(var: !2062, expr: !DIExpression())
!2062 = distinct !DIGlobalVariable(name: "_rs", scope: !2063, file: !3, line: 282, type: !2064, isLocal: true, isDefinition: true)
!2063 = distinct !DISubprogram(name: "power_supply_show_property", scope: !3, file: !3, line: 263, type: !2007, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2065, line: 15, size: 256, elements: !2066)
!2065 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2066 = !{!2067, !2068, !2069, !2070, !2071, !2072, !2073}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2064, file: !2065, line: 16, baseType: !397)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2064, file: !2065, line: 18, baseType: !161, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2064, file: !2065, line: 19, baseType: !161, size: 32, offset: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2064, file: !2065, line: 20, baseType: !161, size: 32, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2064, file: !2065, line: 21, baseType: !161, size: 32, offset: 96)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2064, file: !2065, line: 22, baseType: !166, size: 64, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2064, file: !2065, line: 23, baseType: !166, size: 64, offset: 192)
!2074 = !DIGlobalVariableExpression(var: !2075, expr: !DIExpression())
!2075 = distinct !DIGlobalVariable(name: "POWER_SUPPLY_USB_TYPE_TEXT", scope: !2, file: !3, line: 62, type: !2076, isLocal: true, isDefinition: true)
!2076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2016, size: 640, elements: !2077)
!2077 = !{!2078}
!2078 = !DISubrange(count: 10)
!2079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 128, elements: !1030)
!2080 = !{i32 7, !"Dwarf Version", i32 4}
!2081 = !{i32 2, !"Debug Info Version", i32 3}
!2082 = !{i32 1, !"wchar_size", i32 2}
!2083 = !{i32 1, !"Code Model", i32 2}
!2084 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2085 = distinct !DISubprogram(name: "power_supply_init_attrs", scope: !3, file: !3, line: 395, type: !2086, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !206)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{null, !2088}
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!2089 = !DILocalVariable(name: "dev_type", arg: 1, scope: !2085, file: !3, line: 395, type: !2088)
!2090 = !DILocation(line: 395, column: 50, scope: !2085)
!2091 = !DILocalVariable(name: "i", scope: !2085, file: !3, line: 397, type: !161)
!2092 = !DILocation(line: 397, column: 6, scope: !2085)
!2093 = !DILocation(line: 399, column: 2, scope: !2085)
!2094 = !DILocation(line: 399, column: 12, scope: !2085)
!2095 = !DILocation(line: 399, column: 19, scope: !2085)
!2096 = !DILocation(line: 401, column: 9, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2085, file: !3, line: 401, column: 2)
!2098 = !DILocation(line: 401, column: 7, scope: !2097)
!2099 = !DILocation(line: 401, column: 14, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 401, column: 2)
!2101 = !DILocation(line: 401, column: 16, scope: !2100)
!2102 = !DILocation(line: 401, column: 2, scope: !2097)
!2103 = !DILocalVariable(name: "attr", scope: !2104, file: !3, line: 402, type: !2009)
!2104 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 401, column: 55)
!2105 = !DILocation(line: 402, column: 28, scope: !2104)
!2106 = !DILocation(line: 404, column: 27, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2104, file: !3, line: 404, column: 7)
!2108 = !DILocation(line: 404, column: 8, scope: !2107)
!2109 = !DILocation(line: 404, column: 30, scope: !2107)
!2110 = !DILocation(line: 404, column: 7, scope: !2104)
!2111 = !DILocation(line: 405, column: 4, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 404, column: 41)
!2113 = !DILocation(line: 407, column: 31, scope: !2112)
!2114 = !DILocation(line: 407, column: 12, scope: !2112)
!2115 = !DILocation(line: 407, column: 34, scope: !2112)
!2116 = !DILocation(line: 407, column: 56, scope: !2112)
!2117 = !DILocation(line: 407, column: 4, scope: !2112)
!2118 = !DILocation(line: 408, column: 3, scope: !2112)
!2119 = !DILocation(line: 409, column: 36, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 408, column: 10)
!2121 = !DILocation(line: 409, column: 17, scope: !2120)
!2122 = !DILocation(line: 409, column: 39, scope: !2120)
!2123 = !DILocation(line: 409, column: 4, scope: !2120)
!2124 = !DILocation(line: 412, column: 30, scope: !2104)
!2125 = !DILocation(line: 412, column: 11, scope: !2104)
!2126 = !DILocation(line: 412, column: 33, scope: !2104)
!2127 = !DILocation(line: 412, column: 8, scope: !2104)
!2128 = !DILocation(line: 414, column: 40, scope: !2104)
!2129 = !DILocation(line: 414, column: 21, scope: !2104)
!2130 = !DILocation(line: 414, column: 43, scope: !2104)
!2131 = !DILocation(line: 414, column: 3, scope: !2104)
!2132 = !DILocation(line: 414, column: 9, scope: !2104)
!2133 = !DILocation(line: 414, column: 14, scope: !2104)
!2134 = !DILocation(line: 414, column: 19, scope: !2104)
!2135 = !DILocation(line: 415, column: 3, scope: !2104)
!2136 = !DILocation(line: 415, column: 9, scope: !2104)
!2137 = !DILocation(line: 415, column: 14, scope: !2104)
!2138 = !DILocation(line: 416, column: 3, scope: !2104)
!2139 = !DILocation(line: 416, column: 9, scope: !2104)
!2140 = !DILocation(line: 416, column: 15, scope: !2104)
!2141 = !DILocation(line: 417, column: 30, scope: !2104)
!2142 = !DILocation(line: 417, column: 36, scope: !2104)
!2143 = !DILocation(line: 417, column: 24, scope: !2104)
!2144 = !DILocation(line: 417, column: 3, scope: !2104)
!2145 = !DILocation(line: 417, column: 27, scope: !2104)
!2146 = !DILocation(line: 418, column: 2, scope: !2104)
!2147 = !DILocation(line: 401, column: 51, scope: !2100)
!2148 = !DILocation(line: 401, column: 2, scope: !2100)
!2149 = distinct !{!2149, !2102, !2150}
!2150 = !DILocation(line: 418, column: 2, scope: !2097)
!2151 = !DILocation(line: 419, column: 1, scope: !2085)
!2152 = distinct !DISubprogram(name: "str_to_lower", scope: !3, file: !3, line: 387, type: !2153, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{null, !162}
!2155 = !DILocalVariable(name: "str", arg: 1, scope: !2152, file: !3, line: 387, type: !162)
!2156 = !DILocation(line: 387, column: 32, scope: !2152)
!2157 = !DILocation(line: 389, column: 2, scope: !2152)
!2158 = !DILocation(line: 389, column: 10, scope: !2152)
!2159 = !DILocation(line: 389, column: 9, scope: !2152)
!2160 = !DILocation(line: 390, column: 10, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 389, column: 15)
!2162 = !DILocation(line: 390, column: 4, scope: !2161)
!2163 = !DILocation(line: 390, column: 8, scope: !2161)
!2164 = !DILocation(line: 391, column: 6, scope: !2161)
!2165 = distinct !{!2165, !2157, !2166}
!2166 = !DILocation(line: 392, column: 2, scope: !2152)
!2167 = !DILocation(line: 393, column: 1, scope: !2152)
!2168 = !DILocalVariable(name: "dev", arg: 1, scope: !2063, file: !3, line: 263, type: !168)
!2169 = !DILocation(line: 263, column: 58, scope: !2063)
!2170 = !DILocalVariable(name: "attr", arg: 2, scope: !2063, file: !3, line: 264, type: !2009)
!2171 = !DILocation(line: 264, column: 33, scope: !2063)
!2172 = !DILocalVariable(name: "buf", arg: 3, scope: !2063, file: !3, line: 265, type: !162)
!2173 = !DILocation(line: 265, column: 14, scope: !2063)
!2174 = !DILocalVariable(name: "ret", scope: !2063, file: !3, line: 266, type: !263)
!2175 = !DILocation(line: 266, column: 10, scope: !2063)
!2176 = !DILocalVariable(name: "psy", scope: !2063, file: !3, line: 267, type: !2177)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply", file: !51, line: 273, size: 7168, elements: !2179)
!2179 = !{!2180, !2221, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2239, !2240, !2241, !2242, !2243, !2244, !2247}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2178, file: !51, line: 274, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2183)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_desc", file: !51, line: 233, size: 768, elements: !2184)
!2184 = !{!2185, !2186, !2187, !2190, !2191, !2194, !2195, !2204, !2210, !2214, !2218, !2219, !2220}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2183, file: !51, line: 234, baseType: !176, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2183, file: !51, line: 235, baseType: !50, size: 32, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "usb_types", scope: !2183, file: !51, line: 236, baseType: !2188, size: 64, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "num_usb_types", scope: !2183, file: !51, line: 237, baseType: !279, size: 64, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2183, file: !51, line: 238, baseType: !2192, size: 64, offset: 256)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "num_properties", scope: !2183, file: !51, line: 239, baseType: !279, size: 64, offset: 320)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "get_property", scope: !2183, file: !51, line: 247, baseType: !2196, size: 64, offset: 384)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!161, !2177, !78, !2199}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "power_supply_propval", file: !51, line: 209, size: 64, elements: !2201)
!2201 = !{!2202, !2203}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "intval", scope: !2200, file: !51, line: 210, baseType: !161, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "strval", scope: !2200, file: !51, line: 211, baseType: !176, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !2183, file: !51, line: 250, baseType: !2205, size: 64, offset: 448)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!161, !2177, !78, !2208}
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2200)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "property_is_writeable", scope: !2183, file: !51, line: 258, baseType: !2211, size: 64, offset: 512)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!161, !2177, !78}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "external_power_changed", scope: !2183, file: !51, line: 260, baseType: !2215, size: 64, offset: 576)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{null, !2177}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "set_charged", scope: !2183, file: !51, line: 261, baseType: !2215, size: 64, offset: 640)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "no_thermal", scope: !2183, file: !51, line: 268, baseType: !1058, size: 8, offset: 704)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "use_for_apm", scope: !2183, file: !51, line: 270, baseType: !161, size: 32, offset: 736)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "supplied_to", scope: !2178, file: !51, line: 276, baseType: !2222, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "num_supplicants", scope: !2178, file: !51, line: 277, baseType: !279, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "supplied_from", scope: !2178, file: !51, line: 279, baseType: !2222, size: 64, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "num_supplies", scope: !2178, file: !51, line: 280, baseType: !279, size: 64, offset: 256)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2178, file: !51, line: 281, baseType: !1937, size: 64, offset: 320)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "drv_data", scope: !2178, file: !51, line: 284, baseType: !167, size: 64, offset: 384)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2178, file: !51, line: 287, baseType: !169, size: 5568, offset: 448)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "changed_work", scope: !2178, file: !51, line: 288, baseType: !1383, size: 256, offset: 6016)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_register_work", scope: !2178, file: !51, line: 289, baseType: !2231, size: 704, offset: 6272)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1384, line: 115, size: 704, elements: !2232)
!2232 = !{!2233, !2234, !2235, !2238}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2231, file: !1384, line: 116, baseType: !1383, size: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2231, file: !1384, line: 117, baseType: !1823, size: 320, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2231, file: !1384, line: 120, baseType: !2236, size: 64, offset: 576)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1384, line: 18, flags: DIFlagFwdDecl)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2231, file: !1384, line: 121, baseType: !161, size: 32, offset: 640)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "changed_lock", scope: !2178, file: !51, line: 290, baseType: !192, offset: 6976)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2178, file: !51, line: 291, baseType: !1058, size: 8, offset: 6976)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2178, file: !51, line: 292, baseType: !1058, size: 8, offset: 6984)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "removing", scope: !2178, file: !51, line: 293, baseType: !1058, size: 8, offset: 6992)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "use_cnt", scope: !2178, file: !51, line: 294, baseType: !372, size: 32, offset: 7008)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "tzd", scope: !2178, file: !51, line: 296, baseType: !2245, size: 64, offset: 7040)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !51, line: 296, flags: DIFlagFwdDecl)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "tcd", scope: !2178, file: !51, line: 297, baseType: !2248, size: 64, offset: 7104)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !51, line: 297, flags: DIFlagFwdDecl)
!2250 = !DILocation(line: 267, column: 23, scope: !2063)
!2251 = !DILocation(line: 267, column: 45, scope: !2063)
!2252 = !DILocation(line: 267, column: 29, scope: !2063)
!2253 = !DILocalVariable(name: "ps_attr", scope: !2063, file: !3, line: 268, type: !1993)
!2254 = !DILocation(line: 268, column: 28, scope: !2063)
!2255 = !DILocation(line: 268, column: 49, scope: !2063)
!2256 = !DILocation(line: 268, column: 38, scope: !2063)
!2257 = !DILocalVariable(name: "psp", scope: !2063, file: !3, line: 269, type: !78)
!2258 = !DILocation(line: 269, column: 29, scope: !2063)
!2259 = !DILocation(line: 269, column: 48, scope: !2063)
!2260 = !DILocation(line: 269, column: 35, scope: !2063)
!2261 = !DILocalVariable(name: "value", scope: !2063, file: !3, line: 270, type: !2200)
!2262 = !DILocation(line: 270, column: 29, scope: !2063)
!2263 = !DILocation(line: 272, column: 6, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 272, column: 6)
!2265 = !DILocation(line: 272, column: 10, scope: !2264)
!2266 = !DILocation(line: 272, column: 6, scope: !2063)
!2267 = !DILocation(line: 273, column: 18, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 272, column: 37)
!2269 = !DILocation(line: 273, column: 23, scope: !2268)
!2270 = !DILocation(line: 273, column: 29, scope: !2268)
!2271 = !DILocation(line: 273, column: 9, scope: !2268)
!2272 = !DILocation(line: 273, column: 16, scope: !2268)
!2273 = !DILocation(line: 274, column: 2, scope: !2268)
!2274 = !DILocation(line: 275, column: 35, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 274, column: 9)
!2276 = !DILocation(line: 275, column: 40, scope: !2275)
!2277 = !DILocation(line: 275, column: 9, scope: !2275)
!2278 = !DILocation(line: 275, column: 7, scope: !2275)
!2279 = !DILocation(line: 277, column: 7, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 277, column: 7)
!2281 = !DILocation(line: 277, column: 11, scope: !2280)
!2282 = !DILocation(line: 277, column: 7, scope: !2275)
!2283 = !DILocation(line: 278, column: 8, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 278, column: 8)
!2285 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 277, column: 16)
!2286 = !DILocation(line: 278, column: 12, scope: !2284)
!2287 = !DILocation(line: 278, column: 8, scope: !2285)
!2288 = !DILocation(line: 279, column: 5, scope: !2284)
!2289 = !DILocation(line: 281, column: 13, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 281, column: 13)
!2291 = !DILocation(line: 281, column: 17, scope: !2290)
!2292 = !DILocation(line: 281, column: 28, scope: !2290)
!2293 = !DILocation(line: 281, column: 31, scope: !2290)
!2294 = !DILocation(line: 281, column: 35, scope: !2290)
!2295 = !DILocation(line: 281, column: 13, scope: !2284)
!2296 = !DILocation(line: 282, column: 5, scope: !2290)
!2297 = !DILocation(line: 282, column: 5, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 282, column: 5)
!2299 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 282, column: 5)
!2300 = !DILocation(line: 282, column: 5, scope: !2299)
!2301 = !DILocation(line: 285, column: 11, scope: !2285)
!2302 = !DILocation(line: 285, column: 4, scope: !2285)
!2303 = !DILocation(line: 289, column: 6, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 289, column: 6)
!2305 = !DILocation(line: 289, column: 15, scope: !2304)
!2306 = !DILocation(line: 289, column: 31, scope: !2304)
!2307 = !DILocation(line: 289, column: 35, scope: !2304)
!2308 = !DILocation(line: 290, column: 12, scope: !2304)
!2309 = !DILocation(line: 290, column: 21, scope: !2304)
!2310 = !DILocation(line: 290, column: 30, scope: !2304)
!2311 = !DILocation(line: 290, column: 19, scope: !2304)
!2312 = !DILocation(line: 290, column: 46, scope: !2304)
!2313 = !DILocation(line: 290, column: 55, scope: !2304)
!2314 = !DILocation(line: 290, column: 62, scope: !2304)
!2315 = !DILocation(line: 289, column: 6, scope: !2063)
!2316 = !DILocation(line: 291, column: 18, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 290, column: 68)
!2318 = !DILocation(line: 291, column: 31, scope: !2317)
!2319 = !DILocation(line: 291, column: 40, scope: !2317)
!2320 = !DILocation(line: 291, column: 58, scope: !2317)
!2321 = !DILocation(line: 291, column: 10, scope: !2317)
!2322 = !DILocation(line: 291, column: 3, scope: !2317)
!2323 = !DILocation(line: 294, column: 10, scope: !2063)
!2324 = !DILocation(line: 294, column: 2, scope: !2063)
!2325 = !DILocation(line: 296, column: 36, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 294, column: 15)
!2327 = !DILocation(line: 296, column: 41, scope: !2326)
!2328 = !DILocation(line: 296, column: 46, scope: !2326)
!2329 = !DILocation(line: 297, column: 15, scope: !2326)
!2330 = !DILocation(line: 296, column: 9, scope: !2326)
!2331 = !DILocation(line: 296, column: 7, scope: !2326)
!2332 = !DILocation(line: 298, column: 3, scope: !2326)
!2333 = !DILocation(line: 300, column: 17, scope: !2326)
!2334 = !DILocation(line: 300, column: 36, scope: !2326)
!2335 = !DILocation(line: 300, column: 9, scope: !2326)
!2336 = !DILocation(line: 300, column: 7, scope: !2326)
!2337 = !DILocation(line: 301, column: 3, scope: !2326)
!2338 = !DILocation(line: 303, column: 17, scope: !2326)
!2339 = !DILocation(line: 303, column: 36, scope: !2326)
!2340 = !DILocation(line: 303, column: 9, scope: !2326)
!2341 = !DILocation(line: 303, column: 7, scope: !2326)
!2342 = !DILocation(line: 304, column: 2, scope: !2326)
!2343 = !DILocation(line: 306, column: 9, scope: !2063)
!2344 = !DILocation(line: 306, column: 2, scope: !2063)
!2345 = !DILocation(line: 307, column: 1, scope: !2063)
!2346 = distinct !DISubprogram(name: "power_supply_store_property", scope: !3, file: !3, line: 309, type: !2012, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!2347 = !DILocalVariable(name: "dev", arg: 1, scope: !2346, file: !3, line: 309, type: !168)
!2348 = !DILocation(line: 309, column: 59, scope: !2346)
!2349 = !DILocalVariable(name: "attr", arg: 2, scope: !2346, file: !3, line: 310, type: !2009)
!2350 = !DILocation(line: 310, column: 34, scope: !2346)
!2351 = !DILocalVariable(name: "buf", arg: 3, scope: !2346, file: !3, line: 311, type: !176)
!2352 = !DILocation(line: 311, column: 21, scope: !2346)
!2353 = !DILocalVariable(name: "count", arg: 4, scope: !2346, file: !3, line: 311, type: !279)
!2354 = !DILocation(line: 311, column: 33, scope: !2346)
!2355 = !DILocalVariable(name: "ret", scope: !2346, file: !3, line: 312, type: !263)
!2356 = !DILocation(line: 312, column: 10, scope: !2346)
!2357 = !DILocalVariable(name: "psy", scope: !2346, file: !3, line: 313, type: !2177)
!2358 = !DILocation(line: 313, column: 23, scope: !2346)
!2359 = !DILocation(line: 313, column: 45, scope: !2346)
!2360 = !DILocation(line: 313, column: 29, scope: !2346)
!2361 = !DILocalVariable(name: "ps_attr", scope: !2346, file: !3, line: 314, type: !1993)
!2362 = !DILocation(line: 314, column: 28, scope: !2346)
!2363 = !DILocation(line: 314, column: 49, scope: !2346)
!2364 = !DILocation(line: 314, column: 38, scope: !2346)
!2365 = !DILocalVariable(name: "psp", scope: !2346, file: !3, line: 315, type: !78)
!2366 = !DILocation(line: 315, column: 29, scope: !2346)
!2367 = !DILocation(line: 315, column: 48, scope: !2346)
!2368 = !DILocation(line: 315, column: 35, scope: !2346)
!2369 = !DILocalVariable(name: "value", scope: !2346, file: !3, line: 316, type: !2200)
!2370 = !DILocation(line: 316, column: 29, scope: !2346)
!2371 = !DILocation(line: 318, column: 6, scope: !2346)
!2372 = !DILocation(line: 319, column: 6, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 319, column: 6)
!2374 = !DILocation(line: 319, column: 15, scope: !2373)
!2375 = !DILocation(line: 319, column: 31, scope: !2373)
!2376 = !DILocation(line: 319, column: 6, scope: !2346)
!2377 = !DILocation(line: 320, column: 30, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 319, column: 36)
!2379 = !DILocation(line: 320, column: 39, scope: !2378)
!2380 = !DILocation(line: 321, column: 9, scope: !2378)
!2381 = !DILocation(line: 321, column: 18, scope: !2378)
!2382 = !DILocation(line: 321, column: 35, scope: !2378)
!2383 = !DILocation(line: 320, column: 9, scope: !2378)
!2384 = !DILocation(line: 320, column: 7, scope: !2378)
!2385 = !DILocation(line: 322, column: 2, scope: !2378)
!2386 = !DILocation(line: 328, column: 6, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 328, column: 6)
!2388 = !DILocation(line: 328, column: 10, scope: !2387)
!2389 = !DILocation(line: 328, column: 6, scope: !2346)
!2390 = !DILocalVariable(name: "long_val", scope: !2391, file: !3, line: 329, type: !267)
!2391 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 328, column: 15)
!2392 = !DILocation(line: 329, column: 8, scope: !2391)
!2393 = !DILocation(line: 331, column: 17, scope: !2391)
!2394 = !DILocation(line: 331, column: 9, scope: !2391)
!2395 = !DILocation(line: 331, column: 7, scope: !2391)
!2396 = !DILocation(line: 332, column: 7, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 332, column: 7)
!2398 = !DILocation(line: 332, column: 11, scope: !2397)
!2399 = !DILocation(line: 332, column: 7, scope: !2391)
!2400 = !DILocation(line: 333, column: 11, scope: !2397)
!2401 = !DILocation(line: 333, column: 4, scope: !2397)
!2402 = !DILocation(line: 335, column: 9, scope: !2391)
!2403 = !DILocation(line: 335, column: 7, scope: !2391)
!2404 = !DILocation(line: 336, column: 2, scope: !2391)
!2405 = !DILocation(line: 338, column: 17, scope: !2346)
!2406 = !DILocation(line: 338, column: 8, scope: !2346)
!2407 = !DILocation(line: 338, column: 15, scope: !2346)
!2408 = !DILocation(line: 340, column: 34, scope: !2346)
!2409 = !DILocation(line: 340, column: 39, scope: !2346)
!2410 = !DILocation(line: 340, column: 8, scope: !2346)
!2411 = !DILocation(line: 340, column: 6, scope: !2346)
!2412 = !DILocation(line: 341, column: 6, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 341, column: 6)
!2414 = !DILocation(line: 341, column: 10, scope: !2413)
!2415 = !DILocation(line: 341, column: 6, scope: !2346)
!2416 = !DILocation(line: 342, column: 10, scope: !2413)
!2417 = !DILocation(line: 342, column: 3, scope: !2413)
!2418 = !DILocation(line: 344, column: 9, scope: !2346)
!2419 = !DILocation(line: 344, column: 2, scope: !2346)
!2420 = !DILocation(line: 345, column: 1, scope: !2346)
!2421 = distinct !DISubprogram(name: "power_supply_uevent", scope: !3, file: !3, line: 452, type: !1659, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !206)
!2422 = !DILocalVariable(name: "dev", arg: 1, scope: !2421, file: !3, line: 452, type: !168)
!2423 = !DILocation(line: 452, column: 40, scope: !2421)
!2424 = !DILocalVariable(name: "env", arg: 2, scope: !2421, file: !3, line: 452, type: !228)
!2425 = !DILocation(line: 452, column: 69, scope: !2421)
!2426 = !DILocalVariable(name: "psy", scope: !2421, file: !3, line: 454, type: !2177)
!2427 = !DILocation(line: 454, column: 23, scope: !2421)
!2428 = !DILocation(line: 454, column: 45, scope: !2421)
!2429 = !DILocation(line: 454, column: 29, scope: !2421)
!2430 = !DILocalVariable(name: "ret", scope: !2421, file: !3, line: 455, type: !161)
!2431 = !DILocation(line: 455, column: 6, scope: !2421)
!2432 = !DILocalVariable(name: "j", scope: !2421, file: !3, line: 455, type: !161)
!2433 = !DILocation(line: 455, column: 15, scope: !2421)
!2434 = !DILocalVariable(name: "prop_buf", scope: !2421, file: !3, line: 456, type: !162)
!2435 = !DILocation(line: 456, column: 8, scope: !2421)
!2436 = !DILocation(line: 458, column: 7, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 458, column: 6)
!2438 = !DILocation(line: 458, column: 11, scope: !2437)
!2439 = !DILocation(line: 458, column: 15, scope: !2437)
!2440 = !DILocation(line: 458, column: 20, scope: !2437)
!2441 = !DILocation(line: 458, column: 6, scope: !2421)
!2442 = !DILocation(line: 460, column: 10, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 458, column: 26)
!2444 = !DILocation(line: 460, column: 3, scope: !2443)
!2445 = !DILocation(line: 463, column: 23, scope: !2421)
!2446 = !DILocation(line: 463, column: 52, scope: !2421)
!2447 = !DILocation(line: 463, column: 57, scope: !2421)
!2448 = !DILocation(line: 463, column: 63, scope: !2421)
!2449 = !DILocation(line: 463, column: 8, scope: !2421)
!2450 = !DILocation(line: 463, column: 6, scope: !2421)
!2451 = !DILocation(line: 464, column: 6, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 464, column: 6)
!2453 = !DILocation(line: 464, column: 6, scope: !2421)
!2454 = !DILocation(line: 465, column: 10, scope: !2452)
!2455 = !DILocation(line: 465, column: 3, scope: !2452)
!2456 = !DILocation(line: 467, column: 21, scope: !2421)
!2457 = !DILocation(line: 467, column: 13, scope: !2421)
!2458 = !DILocation(line: 467, column: 11, scope: !2421)
!2459 = !DILocation(line: 468, column: 7, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 468, column: 6)
!2461 = !DILocation(line: 468, column: 6, scope: !2421)
!2462 = !DILocation(line: 469, column: 3, scope: !2460)
!2463 = !DILocation(line: 471, column: 24, scope: !2421)
!2464 = !DILocation(line: 471, column: 29, scope: !2421)
!2465 = !DILocation(line: 471, column: 58, scope: !2421)
!2466 = !DILocation(line: 471, column: 8, scope: !2421)
!2467 = !DILocation(line: 471, column: 6, scope: !2421)
!2468 = !DILocation(line: 472, column: 6, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 472, column: 6)
!2470 = !DILocation(line: 472, column: 6, scope: !2421)
!2471 = !DILocation(line: 473, column: 3, scope: !2469)
!2472 = !DILocation(line: 475, column: 9, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 475, column: 2)
!2474 = !DILocation(line: 475, column: 7, scope: !2473)
!2475 = !DILocation(line: 475, column: 14, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 475, column: 2)
!2477 = !DILocation(line: 475, column: 18, scope: !2476)
!2478 = !DILocation(line: 475, column: 23, scope: !2476)
!2479 = !DILocation(line: 475, column: 29, scope: !2476)
!2480 = !DILocation(line: 475, column: 16, scope: !2476)
!2481 = !DILocation(line: 475, column: 2, scope: !2473)
!2482 = !DILocation(line: 476, column: 25, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 475, column: 50)
!2484 = !DILocation(line: 476, column: 30, scope: !2483)
!2485 = !DILocation(line: 476, column: 35, scope: !2483)
!2486 = !DILocation(line: 476, column: 40, scope: !2483)
!2487 = !DILocation(line: 476, column: 46, scope: !2483)
!2488 = !DILocation(line: 476, column: 57, scope: !2483)
!2489 = !DILocation(line: 477, column: 11, scope: !2483)
!2490 = !DILocation(line: 476, column: 9, scope: !2483)
!2491 = !DILocation(line: 476, column: 7, scope: !2483)
!2492 = !DILocation(line: 478, column: 7, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 478, column: 7)
!2494 = !DILocation(line: 478, column: 7, scope: !2483)
!2495 = !DILocation(line: 479, column: 4, scope: !2493)
!2496 = !DILocation(line: 480, column: 2, scope: !2483)
!2497 = !DILocation(line: 475, column: 46, scope: !2476)
!2498 = !DILocation(line: 475, column: 2, scope: !2476)
!2499 = distinct !{!2499, !2481, !2500}
!2500 = !DILocation(line: 480, column: 2, scope: !2473)
!2501 = !DILabel(scope: !2421, name: "out", file: !3, line: 482)
!2502 = !DILocation(line: 482, column: 1, scope: !2421)
!2503 = !DILocation(line: 483, column: 2, scope: !2421)
!2504 = !DILocation(line: 485, column: 9, scope: !2421)
!2505 = !DILocation(line: 485, column: 2, scope: !2421)
!2506 = !DILocation(line: 486, column: 1, scope: !2421)
!2507 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !2508, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!167, !2510}
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!2512 = !DILocalVariable(name: "dev", arg: 1, scope: !2507, file: !30, line: 655, type: !2510)
!2513 = !DILocation(line: 655, column: 58, scope: !2507)
!2514 = !DILocation(line: 657, column: 9, scope: !2507)
!2515 = !DILocation(line: 657, column: 14, scope: !2507)
!2516 = !DILocation(line: 657, column: 2, scope: !2507)
!2517 = distinct !DISubprogram(name: "add_prop_uevent", scope: !3, file: !3, line: 421, type: !2518, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!161, !168, !228, !78, !162}
!2520 = !DILocalVariable(name: "dev", arg: 1, scope: !2517, file: !3, line: 421, type: !168)
!2521 = !DILocation(line: 421, column: 43, scope: !2517)
!2522 = !DILocalVariable(name: "env", arg: 2, scope: !2517, file: !3, line: 421, type: !228)
!2523 = !DILocation(line: 421, column: 72, scope: !2517)
!2524 = !DILocalVariable(name: "prop", arg: 3, scope: !2517, file: !3, line: 422, type: !78)
!2525 = !DILocation(line: 422, column: 34, scope: !2517)
!2526 = !DILocalVariable(name: "prop_buf", arg: 4, scope: !2517, file: !3, line: 422, type: !162)
!2527 = !DILocation(line: 422, column: 46, scope: !2517)
!2528 = !DILocalVariable(name: "ret", scope: !2517, file: !3, line: 424, type: !161)
!2529 = !DILocation(line: 424, column: 6, scope: !2517)
!2530 = !DILocalVariable(name: "pwr_attr", scope: !2517, file: !3, line: 425, type: !1993)
!2531 = !DILocation(line: 425, column: 28, scope: !2517)
!2532 = !DILocalVariable(name: "dev_attr", scope: !2517, file: !3, line: 426, type: !2009)
!2533 = !DILocation(line: 426, column: 27, scope: !2517)
!2534 = !DILocalVariable(name: "line", scope: !2517, file: !3, line: 427, type: !162)
!2535 = !DILocation(line: 427, column: 8, scope: !2517)
!2536 = !DILocation(line: 429, column: 33, scope: !2517)
!2537 = !DILocation(line: 429, column: 14, scope: !2517)
!2538 = !DILocation(line: 429, column: 11, scope: !2517)
!2539 = !DILocation(line: 430, column: 14, scope: !2517)
!2540 = !DILocation(line: 430, column: 24, scope: !2517)
!2541 = !DILocation(line: 430, column: 11, scope: !2517)
!2542 = !DILocation(line: 432, column: 35, scope: !2517)
!2543 = !DILocation(line: 432, column: 40, scope: !2517)
!2544 = !DILocation(line: 432, column: 50, scope: !2517)
!2545 = !DILocation(line: 432, column: 8, scope: !2517)
!2546 = !DILocation(line: 432, column: 6, scope: !2517)
!2547 = !DILocation(line: 433, column: 6, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 433, column: 6)
!2549 = !DILocation(line: 433, column: 10, scope: !2548)
!2550 = !DILocation(line: 433, column: 21, scope: !2548)
!2551 = !DILocation(line: 433, column: 24, scope: !2548)
!2552 = !DILocation(line: 433, column: 28, scope: !2548)
!2553 = !DILocation(line: 433, column: 6, scope: !2517)
!2554 = !DILocation(line: 438, column: 3, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 433, column: 41)
!2556 = !DILocation(line: 441, column: 6, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 441, column: 6)
!2558 = !DILocation(line: 441, column: 10, scope: !2557)
!2559 = !DILocation(line: 441, column: 6, scope: !2517)
!2560 = !DILocation(line: 442, column: 10, scope: !2557)
!2561 = !DILocation(line: 442, column: 3, scope: !2557)
!2562 = !DILocation(line: 444, column: 16, scope: !2517)
!2563 = !DILocation(line: 444, column: 9, scope: !2517)
!2564 = !DILocation(line: 444, column: 7, scope: !2517)
!2565 = !DILocation(line: 445, column: 6, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 445, column: 6)
!2567 = !DILocation(line: 445, column: 6, scope: !2517)
!2568 = !DILocation(line: 446, column: 4, scope: !2566)
!2569 = !DILocation(line: 446, column: 9, scope: !2566)
!2570 = !DILocation(line: 446, column: 3, scope: !2566)
!2571 = !DILocation(line: 448, column: 24, scope: !2517)
!2572 = !DILocation(line: 449, column: 10, scope: !2517)
!2573 = !DILocation(line: 449, column: 20, scope: !2517)
!2574 = !DILocation(line: 449, column: 31, scope: !2517)
!2575 = !DILocation(line: 448, column: 9, scope: !2517)
!2576 = !DILocation(line: 448, column: 2, scope: !2517)
!2577 = !DILocation(line: 450, column: 1, scope: !2517)
!2578 = distinct !DISubprogram(name: "power_supply_attr_is_visible", scope: !3, file: !3, line: 347, type: !293, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!2579 = !DILocalVariable(name: "kobj", arg: 1, scope: !2578, file: !3, line: 347, type: !185)
!2580 = !DILocation(line: 347, column: 61, scope: !2578)
!2581 = !DILocalVariable(name: "attr", arg: 2, scope: !2578, file: !3, line: 348, type: !268)
!2582 = !DILocation(line: 348, column: 27, scope: !2578)
!2583 = !DILocalVariable(name: "attrno", arg: 3, scope: !2578, file: !3, line: 349, type: !161)
!2584 = !DILocation(line: 349, column: 13, scope: !2578)
!2585 = !DILocalVariable(name: "dev", scope: !2578, file: !3, line: 351, type: !168)
!2586 = !DILocation(line: 351, column: 17, scope: !2578)
!2587 = !DILocation(line: 351, column: 35, scope: !2578)
!2588 = !DILocation(line: 351, column: 23, scope: !2578)
!2589 = !DILocalVariable(name: "psy", scope: !2578, file: !3, line: 352, type: !2177)
!2590 = !DILocation(line: 352, column: 23, scope: !2578)
!2591 = !DILocation(line: 352, column: 45, scope: !2578)
!2592 = !DILocation(line: 352, column: 29, scope: !2578)
!2593 = !DILocalVariable(name: "mode", scope: !2578, file: !3, line: 353, type: !273)
!2594 = !DILocation(line: 353, column: 10, scope: !2578)
!2595 = !DILocalVariable(name: "i", scope: !2578, file: !3, line: 354, type: !161)
!2596 = !DILocation(line: 354, column: 6, scope: !2578)
!2597 = !DILocation(line: 356, column: 26, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 356, column: 6)
!2599 = !DILocation(line: 356, column: 7, scope: !2598)
!2600 = !DILocation(line: 356, column: 34, scope: !2598)
!2601 = !DILocation(line: 356, column: 6, scope: !2578)
!2602 = !DILocation(line: 357, column: 3, scope: !2598)
!2603 = !DILocation(line: 359, column: 6, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 359, column: 6)
!2605 = !DILocation(line: 359, column: 13, scope: !2604)
!2606 = !DILocation(line: 359, column: 6, scope: !2578)
!2607 = !DILocation(line: 360, column: 10, scope: !2604)
!2608 = !DILocation(line: 360, column: 3, scope: !2604)
!2609 = !DILocation(line: 362, column: 9, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 362, column: 2)
!2611 = !DILocation(line: 362, column: 7, scope: !2610)
!2612 = !DILocation(line: 362, column: 14, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2610, file: !3, line: 362, column: 2)
!2614 = !DILocation(line: 362, column: 18, scope: !2613)
!2615 = !DILocation(line: 362, column: 23, scope: !2613)
!2616 = !DILocation(line: 362, column: 29, scope: !2613)
!2617 = !DILocation(line: 362, column: 16, scope: !2613)
!2618 = !DILocation(line: 362, column: 2, scope: !2610)
!2619 = !DILocalVariable(name: "property", scope: !2620, file: !3, line: 363, type: !161)
!2620 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 362, column: 50)
!2621 = !DILocation(line: 363, column: 7, scope: !2620)
!2622 = !DILocation(line: 363, column: 18, scope: !2620)
!2623 = !DILocation(line: 363, column: 23, scope: !2620)
!2624 = !DILocation(line: 363, column: 29, scope: !2620)
!2625 = !DILocation(line: 363, column: 40, scope: !2620)
!2626 = !DILocation(line: 365, column: 7, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 365, column: 7)
!2628 = !DILocation(line: 365, column: 19, scope: !2627)
!2629 = !DILocation(line: 365, column: 16, scope: !2627)
!2630 = !DILocation(line: 365, column: 7, scope: !2620)
!2631 = !DILocation(line: 366, column: 8, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 366, column: 8)
!2633 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 365, column: 27)
!2634 = !DILocation(line: 366, column: 13, scope: !2632)
!2635 = !DILocation(line: 366, column: 19, scope: !2632)
!2636 = !DILocation(line: 366, column: 41, scope: !2632)
!2637 = !DILocation(line: 367, column: 8, scope: !2632)
!2638 = !DILocation(line: 367, column: 13, scope: !2632)
!2639 = !DILocation(line: 367, column: 19, scope: !2632)
!2640 = !DILocation(line: 367, column: 41, scope: !2632)
!2641 = !DILocation(line: 367, column: 46, scope: !2632)
!2642 = !DILocation(line: 367, column: 56, scope: !2632)
!2643 = !DILocation(line: 366, column: 8, scope: !2633)
!2644 = !DILocation(line: 368, column: 10, scope: !2632)
!2645 = !DILocation(line: 368, column: 5, scope: !2632)
!2646 = !DILocation(line: 370, column: 11, scope: !2633)
!2647 = !DILocation(line: 370, column: 4, scope: !2633)
!2648 = !DILocation(line: 372, column: 2, scope: !2620)
!2649 = !DILocation(line: 362, column: 46, scope: !2613)
!2650 = !DILocation(line: 362, column: 2, scope: !2613)
!2651 = distinct !{!2651, !2618, !2652}
!2652 = !DILocation(line: 372, column: 2, scope: !2610)
!2653 = !DILocation(line: 374, column: 2, scope: !2578)
!2654 = !DILocation(line: 375, column: 1, scope: !2578)
!2655 = distinct !DISubprogram(name: "kobj_to_dev", scope: !30, file: !30, line: 591, type: !2656, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!168, !185}
!2658 = !DILocalVariable(name: "kobj", arg: 1, scope: !2655, file: !30, line: 591, type: !185)
!2659 = !DILocation(line: 591, column: 58, scope: !2655)
!2660 = !DILocalVariable(name: "__mptr", scope: !2661, file: !30, line: 593, type: !167)
!2661 = distinct !DILexicalBlock(scope: !2655, file: !30, line: 593, column: 9)
!2662 = !DILocation(line: 593, column: 9, scope: !2661)
!2663 = !DILocation(line: 593, column: 9, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2661, file: !30, line: 593, column: 9)
!2665 = !DILocation(line: 593, column: 2, scope: !2655)
!2666 = distinct !DISubprogram(name: "__tolower", scope: !2667, file: !2667, line: 42, type: !2668, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!2667 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/lizy2001/genbc/linux")
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!627, !627}
!2670 = !DILocalVariable(name: "c", arg: 1, scope: !2666, file: !2667, line: 42, type: !627)
!2671 = !DILocation(line: 42, column: 53, scope: !2666)
!2672 = !DILocation(line: 44, column: 6, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2666, file: !2667, line: 44, column: 6)
!2674 = !DILocation(line: 44, column: 6, scope: !2666)
!2675 = !DILocation(line: 45, column: 5, scope: !2673)
!2676 = !DILocation(line: 45, column: 3, scope: !2673)
!2677 = !DILocation(line: 46, column: 9, scope: !2666)
!2678 = !DILocation(line: 46, column: 2, scope: !2666)
!2679 = distinct !DISubprogram(name: "to_ps_attr", scope: !3, file: !3, line: 219, type: !2680, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!1993, !2009}
!2682 = !DILocalVariable(name: "attr", arg: 1, scope: !2679, file: !3, line: 219, type: !2009)
!2683 = !DILocation(line: 219, column: 70, scope: !2679)
!2684 = !DILocalVariable(name: "__mptr", scope: !2685, file: !3, line: 221, type: !167)
!2685 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 221, column: 9)
!2686 = !DILocation(line: 221, column: 9, scope: !2685)
!2687 = !DILocation(line: 221, column: 9, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 221, column: 9)
!2689 = !DILocation(line: 221, column: 2, scope: !2679)
!2690 = distinct !DISubprogram(name: "dev_attr_psp", scope: !3, file: !3, line: 224, type: !2691, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!78, !2009}
!2693 = !DILocalVariable(name: "attr", arg: 1, scope: !2690, file: !3, line: 224, type: !2009)
!2694 = !DILocation(line: 224, column: 73, scope: !2690)
!2695 = !DILocation(line: 226, column: 21, scope: !2690)
!2696 = !DILocation(line: 226, column: 10, scope: !2690)
!2697 = !DILocation(line: 226, column: 27, scope: !2690)
!2698 = !DILocation(line: 226, column: 2, scope: !2690)
!2699 = distinct !DISubprogram(name: "power_supply_show_usb_type", scope: !3, file: !3, line: 229, type: !2700, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!263, !168, !2181, !2199, !162}
!2702 = !DILocalVariable(name: "dev", arg: 1, scope: !2699, file: !3, line: 229, type: !168)
!2703 = !DILocation(line: 229, column: 58, scope: !2699)
!2704 = !DILocalVariable(name: "desc", arg: 2, scope: !2699, file: !3, line: 230, type: !2181)
!2705 = !DILocation(line: 230, column: 40, scope: !2699)
!2706 = !DILocalVariable(name: "value", arg: 3, scope: !2699, file: !3, line: 231, type: !2199)
!2707 = !DILocation(line: 231, column: 36, scope: !2699)
!2708 = !DILocalVariable(name: "buf", arg: 4, scope: !2699, file: !3, line: 232, type: !162)
!2709 = !DILocation(line: 232, column: 14, scope: !2699)
!2710 = !DILocalVariable(name: "usb_type", scope: !2699, file: !3, line: 234, type: !66)
!2711 = !DILocation(line: 234, column: 29, scope: !2699)
!2712 = !DILocalVariable(name: "count", scope: !2699, file: !3, line: 235, type: !263)
!2713 = !DILocation(line: 235, column: 10, scope: !2699)
!2714 = !DILocalVariable(name: "match", scope: !2699, file: !3, line: 236, type: !1058)
!2715 = !DILocation(line: 236, column: 7, scope: !2699)
!2716 = !DILocalVariable(name: "i", scope: !2699, file: !3, line: 237, type: !161)
!2717 = !DILocation(line: 237, column: 6, scope: !2699)
!2718 = !DILocation(line: 239, column: 9, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 239, column: 2)
!2720 = !DILocation(line: 239, column: 7, scope: !2719)
!2721 = !DILocation(line: 239, column: 14, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 239, column: 2)
!2723 = !DILocation(line: 239, column: 18, scope: !2722)
!2724 = !DILocation(line: 239, column: 24, scope: !2722)
!2725 = !DILocation(line: 239, column: 16, scope: !2722)
!2726 = !DILocation(line: 239, column: 2, scope: !2719)
!2727 = !DILocation(line: 240, column: 14, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 239, column: 44)
!2729 = !DILocation(line: 240, column: 20, scope: !2728)
!2730 = !DILocation(line: 240, column: 30, scope: !2728)
!2731 = !DILocation(line: 240, column: 12, scope: !2728)
!2732 = !DILocation(line: 242, column: 7, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 242, column: 7)
!2734 = !DILocation(line: 242, column: 14, scope: !2733)
!2735 = !DILocation(line: 242, column: 24, scope: !2733)
!2736 = !DILocation(line: 242, column: 21, scope: !2733)
!2737 = !DILocation(line: 242, column: 7, scope: !2728)
!2738 = !DILocation(line: 243, column: 21, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 242, column: 34)
!2740 = !DILocation(line: 243, column: 27, scope: !2739)
!2741 = !DILocation(line: 243, column: 25, scope: !2739)
!2742 = !DILocation(line: 244, column: 34, scope: !2739)
!2743 = !DILocation(line: 244, column: 7, scope: !2739)
!2744 = !DILocation(line: 243, column: 13, scope: !2739)
!2745 = !DILocation(line: 243, column: 10, scope: !2739)
!2746 = !DILocation(line: 245, column: 10, scope: !2739)
!2747 = !DILocation(line: 246, column: 3, scope: !2739)
!2748 = !DILocation(line: 247, column: 21, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 246, column: 10)
!2750 = !DILocation(line: 247, column: 27, scope: !2749)
!2751 = !DILocation(line: 247, column: 25, scope: !2749)
!2752 = !DILocation(line: 248, column: 34, scope: !2749)
!2753 = !DILocation(line: 248, column: 7, scope: !2749)
!2754 = !DILocation(line: 247, column: 13, scope: !2749)
!2755 = !DILocation(line: 247, column: 10, scope: !2749)
!2756 = !DILocation(line: 250, column: 2, scope: !2728)
!2757 = !DILocation(line: 239, column: 39, scope: !2722)
!2758 = !DILocation(line: 239, column: 2, scope: !2722)
!2759 = distinct !{!2759, !2726, !2760}
!2760 = !DILocation(line: 250, column: 2, scope: !2719)
!2761 = !DILocation(line: 252, column: 7, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 252, column: 6)
!2763 = !DILocation(line: 252, column: 6, scope: !2699)
!2764 = !DILocation(line: 253, column: 3, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 252, column: 14)
!2766 = !DILocation(line: 254, column: 3, scope: !2765)
!2767 = !DILocation(line: 257, column: 6, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 257, column: 6)
!2769 = !DILocation(line: 257, column: 6, scope: !2699)
!2770 = !DILocation(line: 258, column: 3, scope: !2768)
!2771 = !DILocation(line: 258, column: 7, scope: !2768)
!2772 = !DILocation(line: 258, column: 13, scope: !2768)
!2773 = !DILocation(line: 258, column: 18, scope: !2768)
!2774 = !DILocation(line: 260, column: 9, scope: !2699)
!2775 = !DILocation(line: 260, column: 2, scope: !2699)
!2776 = !DILocation(line: 261, column: 1, scope: !2699)
!2777 = distinct !DISubprogram(name: "kstrtol", scope: !2778, file: !2778, line: 379, type: !2779, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!2778 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!161, !176, !7, !2781}
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!2782 = !DILocalVariable(name: "s", arg: 1, scope: !2777, file: !2778, line: 379, type: !176)
!2783 = !DILocation(line: 379, column: 52, scope: !2777)
!2784 = !DILocalVariable(name: "base", arg: 2, scope: !2777, file: !2778, line: 379, type: !7)
!2785 = !DILocation(line: 379, column: 68, scope: !2777)
!2786 = !DILocalVariable(name: "res", arg: 3, scope: !2777, file: !2778, line: 379, type: !2781)
!2787 = !DILocation(line: 379, column: 80, scope: !2777)
!2788 = !DILocation(line: 387, column: 19, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2777, file: !2778, line: 385, column: 6)
!2790 = !DILocation(line: 387, column: 22, scope: !2789)
!2791 = !DILocation(line: 387, column: 41, scope: !2789)
!2792 = !DILocation(line: 387, column: 10, scope: !2789)
!2793 = !DILocation(line: 387, column: 3, scope: !2789)
