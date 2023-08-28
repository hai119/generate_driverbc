; ModuleID = '../bcout/drivers/power/supply/power_supply_hwmon.llvm.bc'
source_filename = "drivers/power/supply/power_supply_hwmon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.hwmon_chip_info = type { %struct.hwmon_ops*, %struct.hwmon_channel_info** }
%struct.hwmon_ops = type { i16 (i8*, i32, i32, i32)*, i32 (%struct.device*, i32, i32, i32, i64*)*, i32 (%struct.device*, i32, i32, i32, i8**)*, i32 (%struct.device*, i32, i32, i32, i64)* }
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
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.hwmon_channel_info = type { i32, i32* }
%struct.hwmon_type_attr_list = type { i32*, i64 }
%struct.power_supply = type { %struct.power_supply_desc*, i8**, i64, i8**, i64, %struct.device_node*, i8*, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, %struct.thermal_zone_device*, %struct.thermal_cooling_device* }
%struct.power_supply_desc = type { i8*, i32, i32*, i64, i32*, i64, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32)*, void (%struct.power_supply*)*, void (%struct.power_supply*)*, i8, i32 }
%union.power_supply_propval = type { i8* }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type opaque
%struct.thermal_zone_device = type opaque
%struct.thermal_cooling_device = type opaque
%struct.power_supply_hwmon = type { %struct.power_supply*, i64* }

@power_supply_hwmon_chip_info = internal constant %struct.hwmon_chip_info { %struct.hwmon_ops* @power_supply_hwmon_ops, %struct.hwmon_channel_info** getelementptr inbounds ([4 x %struct.hwmon_channel_info*], [4 x %struct.hwmon_channel_info*]* @power_supply_hwmon_info, i32 0, i32 0) }, align 8, !dbg !0
@power_supply_hwmon_ops = internal constant %struct.hwmon_ops { i16 (i8*, i32, i32, i32)* @power_supply_hwmon_is_visible, i32 (%struct.device*, i32, i32, i32, i64*)* @power_supply_hwmon_read, i32 (%struct.device*, i32, i32, i32, i8**)* @power_supply_hwmon_read_string, i32 (%struct.device*, i32, i32, i32, i64)* @power_supply_hwmon_write }, align 8, !dbg !256
@power_supply_hwmon_info = internal global [4 x %struct.hwmon_channel_info*] [%struct.hwmon_channel_info* @.compoundliteral.3, %struct.hwmon_channel_info* @.compoundliteral.5, %struct.hwmon_channel_info* @.compoundliteral.7, %struct.hwmon_channel_info* null], align 16, !dbg !2125
@ps_temp_attrs = internal constant [5 x i32] [i32 1, i32 5, i32 7, i32 15, i32 16], align 16, !dbg !2116
@ps_type_attrs = internal constant <{ %struct.hwmon_type_attr_list, %struct.hwmon_type_attr_list, [8 x %struct.hwmon_type_attr_list] }> <{ %struct.hwmon_type_attr_list zeroinitializer, %struct.hwmon_type_attr_list { i32* getelementptr inbounds ([5 x i32], [5 x i32]* @ps_temp_attrs, i32 0, i32 0), i64 5 }, [8 x %struct.hwmon_type_attr_list] zeroinitializer }>, align 16, !dbg !2104
@ps_temp_label = internal constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)], align 16, !dbg !2121
@.str = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ambient temp\00", align 1
@.compoundliteral = internal global [3 x i32] [i32 2130082, i32 2195458, i32 0], align 4
@.compoundliteral.3 = internal global %struct.hwmon_channel_info { i32 1, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.compoundliteral, i32 0, i32 0) }, align 8
@.compoundliteral.4 = internal global [2 x i32] [i32 74, i32 0], align 4
@.compoundliteral.5 = internal global %struct.hwmon_channel_info { i32 3, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.compoundliteral.4, i32 0, i32 0) }, align 8
@.compoundliteral.6 = internal global [2 x i32] [i32 78, i32 0], align 4
@.compoundliteral.7 = internal global %struct.hwmon_channel_info { i32 2, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.compoundliteral.6, i32 0, i32 0) }, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @power_supply_add_hwmon_sysfs(%struct.power_supply* %psy) #0 !dbg !2146 {
entry:
  %retval = alloca i32, align 4
  %psy.addr = alloca %struct.power_supply*, align 8
  %desc = alloca %struct.power_supply_desc*, align 8
  %psyhw = alloca %struct.power_supply_hwmon*, align 8
  %dev = alloca %struct.device*, align 8
  %hwmon = alloca %struct.device*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %name = alloca i8*, align 8
  %prop = alloca i32, align 4
  %new_name = alloca i8*, align 8
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !2222, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.declare(metadata %struct.power_supply_desc** %desc, metadata !2224, metadata !DIExpression()), !dbg !2225
  %0 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2226
  %desc1 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %0, i32 0, i32 0, !dbg !2227
  %1 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc1, align 8, !dbg !2227
  store %struct.power_supply_desc* %1, %struct.power_supply_desc** %desc, align 8, !dbg !2225
  call void @llvm.dbg.declare(metadata %struct.power_supply_hwmon** %psyhw, metadata !2228, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2235, metadata !DIExpression()), !dbg !2236
  %2 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2237
  %dev2 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %2, i32 0, i32 7, !dbg !2238
  store %struct.device* %dev2, %struct.device** %dev, align 8, !dbg !2236
  call void @llvm.dbg.declare(metadata %struct.device** %hwmon, metadata !2239, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2241, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2243, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.declare(metadata i8** %name, metadata !2245, metadata !DIExpression()), !dbg !2246
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2247
  %call = call i8* @devres_open_group(%struct.device* %3, i8* bitcast (i32 (%struct.power_supply*)* @power_supply_add_hwmon_sysfs to i8*), i32 3264) #4, !dbg !2249
  %tobool = icmp ne i8* %call, null, !dbg !2249
  br i1 %tobool, label %if.end, label %if.then, !dbg !2250

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2251
  br label %return, !dbg !2251

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2252
  %call3 = call i8* @devm_kzalloc(%struct.device* %4, i64 16, i32 3264) #4, !dbg !2253
  %5 = bitcast i8* %call3 to %struct.power_supply_hwmon*, !dbg !2253
  store %struct.power_supply_hwmon* %5, %struct.power_supply_hwmon** %psyhw, align 8, !dbg !2254
  %6 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %psyhw, align 8, !dbg !2255
  %tobool4 = icmp ne %struct.power_supply_hwmon* %6, null, !dbg !2255
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2257

if.then5:                                         ; preds = %if.end
  store i32 -12, i32* %ret, align 4, !dbg !2258
  br label %error, !dbg !2260

if.end6:                                          ; preds = %if.end
  %7 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2261
  %8 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %psyhw, align 8, !dbg !2262
  %psy7 = getelementptr inbounds %struct.power_supply_hwmon, %struct.power_supply_hwmon* %8, i32 0, i32 0, !dbg !2263
  store %struct.power_supply* %7, %struct.power_supply** %psy7, align 8, !dbg !2264
  %call8 = call i64* @bitmap_zalloc(i32 63, i32 3264) #4, !dbg !2265
  %9 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %psyhw, align 8, !dbg !2266
  %props = getelementptr inbounds %struct.power_supply_hwmon, %struct.power_supply_hwmon* %9, i32 0, i32 1, !dbg !2267
  store i64* %call8, i64** %props, align 8, !dbg !2268
  %10 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %psyhw, align 8, !dbg !2269
  %props9 = getelementptr inbounds %struct.power_supply_hwmon, %struct.power_supply_hwmon* %10, i32 0, i32 1, !dbg !2271
  %11 = load i64*, i64** %props9, align 8, !dbg !2271
  %tobool10 = icmp ne i64* %11, null, !dbg !2269
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !2272

if.then11:                                        ; preds = %if.end6
  store i32 -12, i32* %ret, align 4, !dbg !2273
  br label %error, !dbg !2275

if.end12:                                         ; preds = %if.end6
  %12 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2276
  %13 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %psyhw, align 8, !dbg !2277
  %props13 = getelementptr inbounds %struct.power_supply_hwmon, %struct.power_supply_hwmon* %13, i32 0, i32 1, !dbg !2278
  %14 = load i64*, i64** %props13, align 8, !dbg !2278
  %15 = bitcast i64* %14 to i8*, !dbg !2277
  %call14 = call i32 @devm_add_action_or_reset(%struct.device* %12, void (i8*)* @power_supply_hwmon_bitmap_free, i8* %15) #4, !dbg !2279
  store i32 %call14, i32* %ret, align 4, !dbg !2280
  %16 = load i32, i32* %ret, align 4, !dbg !2281
  %tobool15 = icmp ne i32 %16, 0, !dbg !2281
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !2283

if.then16:                                        ; preds = %if.end12
  br label %error, !dbg !2284

if.end17:                                         ; preds = %if.end12
  store i32 0, i32* %i, align 4, !dbg !2285
  br label %for.cond, !dbg !2287

for.cond:                                         ; preds = %for.inc, %if.end17
  %17 = load i32, i32* %i, align 4, !dbg !2288
  %conv = sext i32 %17 to i64, !dbg !2288
  %18 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8, !dbg !2290
  %num_properties = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %18, i32 0, i32 5, !dbg !2291
  %19 = load i64, i64* %num_properties, align 8, !dbg !2291
  %cmp = icmp ult i64 %conv, %19, !dbg !2292
  br i1 %cmp, label %for.body, label %for.end, !dbg !2293

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %prop, metadata !2294, metadata !DIExpression()), !dbg !2296
  %20 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8, !dbg !2297
  %properties = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %20, i32 0, i32 4, !dbg !2298
  %21 = load i32*, i32** %properties, align 8, !dbg !2298
  %22 = load i32, i32* %i, align 4, !dbg !2299
  %idxprom = sext i32 %22 to i64, !dbg !2297
  %arrayidx = getelementptr i32, i32* %21, i64 %idxprom, !dbg !2297
  %23 = load i32, i32* %arrayidx, align 4, !dbg !2297
  store i32 %23, i32* %prop, align 4, !dbg !2296
  %24 = load i32, i32* %prop, align 4, !dbg !2300
  switch i32 %24, label %sw.default [
    i32 18, label %sw.bb
    i32 16, label %sw.bb
    i32 17, label %sw.bb
    i32 51, label %sw.bb
    i32 52, label %sw.bb
    i32 53, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 57, label %sw.bb
    i32 58, label %sw.bb
    i32 13, label %sw.bb
    i32 9, label %sw.bb
    i32 8, label %sw.bb
    i32 12, label %sw.bb
  ], !dbg !2301

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %25 = load i32, i32* %prop, align 4, !dbg !2302
  %conv19 = zext i32 %25 to i64, !dbg !2302
  %26 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %psyhw, align 8, !dbg !2304
  %props20 = getelementptr inbounds %struct.power_supply_hwmon, %struct.power_supply_hwmon* %26, i32 0, i32 1, !dbg !2305
  %27 = load i64*, i64** %props20, align 8, !dbg !2305
  call void @set_bit(i64 %conv19, i64* %27) #4, !dbg !2306
  br label %sw.epilog, !dbg !2307

sw.default:                                       ; preds = %for.body
  br label %sw.epilog, !dbg !2308

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %for.inc, !dbg !2309

for.inc:                                          ; preds = %sw.epilog
  %28 = load i32, i32* %i, align 4, !dbg !2310
  %inc = add i32 %28, 1, !dbg !2310
  store i32 %inc, i32* %i, align 4, !dbg !2310
  br label %for.cond, !dbg !2311, !llvm.loop !2312

for.end:                                          ; preds = %for.cond
  %29 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2314
  %desc21 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %29, i32 0, i32 0, !dbg !2315
  %30 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc21, align 8, !dbg !2315
  %name22 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %30, i32 0, i32 0, !dbg !2316
  %31 = load i8*, i8** %name22, align 8, !dbg !2316
  store i8* %31, i8** %name, align 8, !dbg !2317
  %32 = load i8*, i8** %name, align 8, !dbg !2318
  %call23 = call i8* @strchr(i8* %32, i32 45) #4, !dbg !2320
  %tobool24 = icmp ne i8* %call23, null, !dbg !2320
  br i1 %tobool24, label %if.then25, label %if.end31, !dbg !2321

if.then25:                                        ; preds = %for.end
  call void @llvm.dbg.declare(metadata i8** %new_name, metadata !2322, metadata !DIExpression()), !dbg !2324
  %33 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2325
  %34 = load i8*, i8** %name, align 8, !dbg !2326
  %call26 = call noalias i8* @devm_kstrdup(%struct.device* %33, i8* %34, i32 3264) #4, !dbg !2327
  store i8* %call26, i8** %new_name, align 8, !dbg !2328
  %35 = load i8*, i8** %new_name, align 8, !dbg !2329
  %tobool27 = icmp ne i8* %35, null, !dbg !2329
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !2331

if.then28:                                        ; preds = %if.then25
  store i32 -12, i32* %ret, align 4, !dbg !2332
  br label %error, !dbg !2334

if.end29:                                         ; preds = %if.then25
  %36 = load i8*, i8** %new_name, align 8, !dbg !2335
  %call30 = call i8* @strreplace(i8* %36, i8 signext 45, i8 signext 95) #4, !dbg !2336
  %37 = load i8*, i8** %new_name, align 8, !dbg !2337
  store i8* %37, i8** %name, align 8, !dbg !2338
  br label %if.end31, !dbg !2339

if.end31:                                         ; preds = %if.end29, %for.end
  %38 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2340
  %39 = load i8*, i8** %name, align 8, !dbg !2341
  %40 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %psyhw, align 8, !dbg !2342
  %41 = bitcast %struct.power_supply_hwmon* %40 to i8*, !dbg !2342
  %call32 = call %struct.device* @devm_hwmon_device_register_with_info(%struct.device* %38, i8* %39, i8* %41, %struct.hwmon_chip_info* @power_supply_hwmon_chip_info, %struct.attribute_group** null) #4, !dbg !2343
  store %struct.device* %call32, %struct.device** %hwmon, align 8, !dbg !2344
  %42 = load %struct.device*, %struct.device** %hwmon, align 8, !dbg !2345
  %43 = bitcast %struct.device* %42 to i8*, !dbg !2345
  %call33 = call i32 @PTR_ERR_OR_ZERO(i8* %43) #4, !dbg !2346
  store i32 %call33, i32* %ret, align 4, !dbg !2347
  %44 = load i32, i32* %ret, align 4, !dbg !2348
  %tobool34 = icmp ne i32 %44, 0, !dbg !2348
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !2350

if.then35:                                        ; preds = %if.end31
  br label %error, !dbg !2351

if.end36:                                         ; preds = %if.end31
  %45 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2352
  call void @devres_close_group(%struct.device* %45, i8* bitcast (i32 (%struct.power_supply*)* @power_supply_add_hwmon_sysfs to i8*)) #4, !dbg !2353
  store i32 0, i32* %retval, align 4, !dbg !2354
  br label %return, !dbg !2354

error:                                            ; preds = %if.then35, %if.then28, %if.then16, %if.then11, %if.then5
  call void @llvm.dbg.label(metadata !2355), !dbg !2356
  %46 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2357
  %call37 = call i32 @devres_release_group(%struct.device* %46, i8* null) #4, !dbg !2358
  %47 = load i32, i32* %ret, align 4, !dbg !2359
  store i32 %47, i32* %retval, align 4, !dbg !2360
  br label %return, !dbg !2360

return:                                           ; preds = %error, %if.end36, %if.then
  %48 = load i32, i32* %retval, align 4, !dbg !2361
  ret i32 %48, !dbg !2361
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i8* @devres_open_group(%struct.device*, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #0 !dbg !2362 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2365, metadata !DIExpression()), !dbg !2366
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2367, metadata !DIExpression()), !dbg !2368
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2369, metadata !DIExpression()), !dbg !2370
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2371
  %1 = load i64, i64* %size.addr, align 8, !dbg !2372
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2373
  %or = or i32 %2, 256, !dbg !2374
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #4, !dbg !2375
  ret i8* %call, !dbg !2376
}

; Function Attrs: noredzone
declare dso_local i64* @bitmap_zalloc(i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_add_action_or_reset(%struct.device* %dev, void (i8*)* %action, i8* %data) #0 !dbg !2377 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %action.addr = alloca void (i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2380, metadata !DIExpression()), !dbg !2381
  store void (i8*)* %action, void (i8*)** %action.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %action.addr, metadata !2382, metadata !DIExpression()), !dbg !2383
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2384, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2386, metadata !DIExpression()), !dbg !2387
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2388
  %1 = load void (i8*)*, void (i8*)** %action.addr, align 8, !dbg !2389
  %2 = load i8*, i8** %data.addr, align 8, !dbg !2390
  %call = call i32 @devm_add_action(%struct.device* %0, void (i8*)* %1, i8* %2) #4, !dbg !2391
  store i32 %call, i32* %ret, align 4, !dbg !2392
  %3 = load i32, i32* %ret, align 4, !dbg !2393
  %tobool = icmp ne i32 %3, 0, !dbg !2393
  br i1 %tobool, label %if.then, label %if.end, !dbg !2395

if.then:                                          ; preds = %entry
  %4 = load void (i8*)*, void (i8*)** %action.addr, align 8, !dbg !2396
  %5 = load i8*, i8** %data.addr, align 8, !dbg !2397
  call void %4(i8* %5) #4, !dbg !2396
  br label %if.end, !dbg !2396

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %ret, align 4, !dbg !2398
  ret i32 %6, !dbg !2399
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @power_supply_hwmon_bitmap_free(i8* %data) #0 !dbg !2400 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2401, metadata !DIExpression()), !dbg !2402
  %0 = load i8*, i8** %data.addr, align 8, !dbg !2403
  %1 = bitcast i8* %0 to i64*, !dbg !2403
  call void @bitmap_free(i64* %1) #4, !dbg !2404
  ret void, !dbg !2405
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !2406 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !2412, metadata !DIExpression()), !dbg !2415
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !2417, metadata !DIExpression()), !dbg !2418
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !2419, metadata !DIExpression()), !dbg !2427
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2429, metadata !DIExpression()), !dbg !2430
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !2431, metadata !DIExpression()), !dbg !2432
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !2433, metadata !DIExpression()), !dbg !2434
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !2435
  %1 = load i64, i64* %nr.addr, align 8, !dbg !2436
  %div = sdiv i64 %1, 64, !dbg !2436
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !2437
  %2 = bitcast i64* %add.ptr to i8*, !dbg !2435
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !2438
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2439
  %conv.i = trunc i64 %4 to i32, !dbg !2439
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #5, !dbg !2440
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !2441
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !2441
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #5, !dbg !2441
  %7 = load i64, i64* %nr.addr, align 8, !dbg !2442
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !2443
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !2444
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #6, !dbg !2446
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !2447

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !2448
  %12 = bitcast i64* %11 to i8*, !dbg !2448
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !2448
  %shr.i = ashr i64 %13, 3, !dbg !2448
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !2448
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !2450
  %and.i = and i64 %14, 7, !dbg !2450
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !2450
  %shl.i = shl i32 1, %sh_prom.i, !dbg !2450
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #6, !dbg !2451, !srcloc !2452
  br label %arch_set_bit.exit, !dbg !2453

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !2454
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !2456
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #6, !dbg !2457, !srcloc !2458
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !2459
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kstrdup(%struct.device*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i8* @strreplace(i8*, i8 signext, i8 signext) #2

; Function Attrs: noredzone
declare dso_local %struct.device* @devm_hwmon_device_register_with_info(%struct.device*, i8*, i8*, %struct.hwmon_chip_info*, %struct.attribute_group**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @PTR_ERR_OR_ZERO(i8* %ptr) #0 !dbg !2460 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2464, metadata !DIExpression()), !dbg !2465
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2466
  %call = call zeroext i1 @IS_ERR(i8* %0) #4, !dbg !2468
  br i1 %call, label %if.then, label %if.else, !dbg !2469

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !2470
  %call1 = call i64 @PTR_ERR(i8* %1) #4, !dbg !2471
  %conv = trunc i64 %call1 to i32, !dbg !2471
  store i32 %conv, i32* %retval, align 4, !dbg !2472
  br label %return, !dbg !2472

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2473
  br label %return, !dbg !2473

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !2474
  ret i32 %2, !dbg !2474
}

; Function Attrs: noredzone
declare dso_local void @devres_close_group(%struct.device*, i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @devres_release_group(%struct.device*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @power_supply_remove_hwmon_sysfs(%struct.power_supply* %psy) #0 !dbg !2475 {
entry:
  %psy.addr = alloca %struct.power_supply*, align 8
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !2476, metadata !DIExpression()), !dbg !2477
  %0 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2478
  %dev = getelementptr inbounds %struct.power_supply, %struct.power_supply* %0, i32 0, i32 7, !dbg !2479
  %call = call i32 @devres_release_group(%struct.device* %dev, i8* bitcast (i32 (%struct.power_supply*)* @power_supply_add_hwmon_sysfs to i8*)) #4, !dbg !2480
  ret void, !dbg !2481
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @devm_add_action(%struct.device*, void (i8*)*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @bitmap_free(i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !2482 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2486, metadata !DIExpression()), !dbg !2487
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2488, metadata !DIExpression()), !dbg !2489
  ret i1 true, !dbg !2490
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !2491 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2495, metadata !DIExpression()), !dbg !2496
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2497, metadata !DIExpression()), !dbg !2498
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2499, metadata !DIExpression()), !dbg !2500
  ret void, !dbg !2501
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @power_supply_hwmon_is_visible(i8* %data, i32 %type, i32 %attr, i32 %channel) #0 !dbg !2502 {
entry:
  %retval = alloca i16, align 2
  %data.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %psyhw = alloca %struct.power_supply_hwmon*, align 8
  %prop = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2503, metadata !DIExpression()), !dbg !2504
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2505, metadata !DIExpression()), !dbg !2506
  store i32 %attr, i32* %attr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %attr.addr, metadata !2507, metadata !DIExpression()), !dbg !2508
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !2509, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.declare(metadata %struct.power_supply_hwmon** %psyhw, metadata !2511, metadata !DIExpression()), !dbg !2514
  %0 = load i8*, i8** %data.addr, align 8, !dbg !2515
  %1 = bitcast i8* %0 to %struct.power_supply_hwmon*, !dbg !2515
  store %struct.power_supply_hwmon* %1, %struct.power_supply_hwmon** %psyhw, align 8, !dbg !2514
  call void @llvm.dbg.declare(metadata i32* %prop, metadata !2516, metadata !DIExpression()), !dbg !2517
  %2 = load i32, i32* %type.addr, align 4, !dbg !2518
  %3 = load i32, i32* %attr.addr, align 4, !dbg !2520
  %call = call zeroext i1 @power_supply_hwmon_is_a_label(i32 %2, i32 %3) #4, !dbg !2521
  br i1 %call, label %if.then, label %if.end, !dbg !2522

if.then:                                          ; preds = %entry
  %4 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %psyhw, align 8, !dbg !2523
  %5 = load i32, i32* %type.addr, align 4, !dbg !2526
  %6 = load i32, i32* %channel.addr, align 4, !dbg !2527
  %call1 = call zeroext i1 @power_supply_hwmon_has_input(%struct.power_supply_hwmon* %4, i32 %5, i32 %6) #4, !dbg !2528
  br i1 %call1, label %if.then2, label %if.else, !dbg !2529

if.then2:                                         ; preds = %if.then
  store i16 292, i16* %retval, align 2, !dbg !2530
  br label %return, !dbg !2530

if.else:                                          ; preds = %if.then
  store i16 0, i16* %retval, align 2, !dbg !2531
  br label %return, !dbg !2531

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %type.addr, align 4, !dbg !2532
  %8 = load i32, i32* %attr.addr, align 4, !dbg !2533
  %9 = load i32, i32* %channel.addr, align 4, !dbg !2534
  %call3 = call i32 @power_supply_hwmon_to_property(i32 %7, i32 %8, i32 %9) #4, !dbg !2535
  store i32 %call3, i32* %prop, align 4, !dbg !2536
  %10 = load i32, i32* %prop, align 4, !dbg !2537
  %cmp = icmp slt i32 %10, 0, !dbg !2539
  br i1 %cmp, label %if.then5, label %lor.lhs.false, !dbg !2540

lor.lhs.false:                                    ; preds = %if.end
  %11 = load i32, i32* %prop, align 4, !dbg !2541
  %conv = sext i32 %11 to i64, !dbg !2541
  %12 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %psyhw, align 8, !dbg !2542
  %props = getelementptr inbounds %struct.power_supply_hwmon, %struct.power_supply_hwmon* %12, i32 0, i32 1, !dbg !2543
  %13 = load i64*, i64** %props, align 8, !dbg !2543
  %call4 = call zeroext i1 @test_bit(i64 %conv, i64* %13) #4, !dbg !2544
  br i1 %call4, label %if.end6, label %if.then5, !dbg !2545

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  store i16 0, i16* %retval, align 2, !dbg !2546
  br label %return, !dbg !2546

if.end6:                                          ; preds = %lor.lhs.false
  %14 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %psyhw, align 8, !dbg !2547
  %psy = getelementptr inbounds %struct.power_supply_hwmon, %struct.power_supply_hwmon* %14, i32 0, i32 0, !dbg !2549
  %15 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2549
  %16 = load i32, i32* %prop, align 4, !dbg !2550
  %call7 = call i32 @power_supply_property_is_writeable(%struct.power_supply* %15, i32 %16) #4, !dbg !2551
  %cmp8 = icmp sgt i32 %call7, 0, !dbg !2552
  br i1 %cmp8, label %land.lhs.true, label %if.end13, !dbg !2553

land.lhs.true:                                    ; preds = %if.end6
  %17 = load i32, i32* %type.addr, align 4, !dbg !2554
  %18 = load i32, i32* %attr.addr, align 4, !dbg !2555
  %call10 = call zeroext i1 @power_supply_hwmon_is_writable(i32 %17, i32 %18) #4, !dbg !2556
  br i1 %call10, label %if.then12, label %if.end13, !dbg !2557

if.then12:                                        ; preds = %land.lhs.true
  store i16 420, i16* %retval, align 2, !dbg !2558
  br label %return, !dbg !2558

if.end13:                                         ; preds = %land.lhs.true, %if.end6
  store i16 292, i16* %retval, align 2, !dbg !2559
  br label %return, !dbg !2559

return:                                           ; preds = %if.end13, %if.then12, %if.then5, %if.else, %if.then2
  %19 = load i16, i16* %retval, align 2, !dbg !2560
  ret i16 %19, !dbg !2560
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @power_supply_hwmon_read(%struct.device* %dev, i32 %type, i32 %attr, i32 %channel, i64* %val) #0 !dbg !2561 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %type.addr = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %val.addr = alloca i64*, align 8
  %psyhw = alloca %struct.power_supply_hwmon*, align 8
  %psy = alloca %struct.power_supply*, align 8
  %pspval = alloca %union.power_supply_propval, align 8
  %ret = alloca i32, align 4
  %prop = alloca i32, align 4
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__a = alloca i32, align 4
  %__b = alloca i32, align 4
  %__d17 = alloca i32*, align 8
  %tmp23 = alloca i8, align 1
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2562, metadata !DIExpression()), !dbg !2563
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2564, metadata !DIExpression()), !dbg !2565
  store i32 %attr, i32* %attr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %attr.addr, metadata !2566, metadata !DIExpression()), !dbg !2567
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !2568, metadata !DIExpression()), !dbg !2569
  store i64* %val, i64** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %val.addr, metadata !2570, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.declare(metadata %struct.power_supply_hwmon** %psyhw, metadata !2572, metadata !DIExpression()), !dbg !2573
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2574
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #4, !dbg !2575
  %1 = bitcast i8* %call to %struct.power_supply_hwmon*, !dbg !2575
  store %struct.power_supply_hwmon* %1, %struct.power_supply_hwmon** %psyhw, align 8, !dbg !2573
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !2576, metadata !DIExpression()), !dbg !2577
  %2 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %psyhw, align 8, !dbg !2578
  %psy1 = getelementptr inbounds %struct.power_supply_hwmon, %struct.power_supply_hwmon* %2, i32 0, i32 0, !dbg !2579
  %3 = load %struct.power_supply*, %struct.power_supply** %psy1, align 8, !dbg !2579
  store %struct.power_supply* %3, %struct.power_supply** %psy, align 8, !dbg !2577
  call void @llvm.dbg.declare(metadata %union.power_supply_propval* %pspval, metadata !2580, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2582, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.declare(metadata i32* %prop, metadata !2584, metadata !DIExpression()), !dbg !2585
  %4 = load i32, i32* %type.addr, align 4, !dbg !2586
  %5 = load i32, i32* %attr.addr, align 4, !dbg !2587
  %6 = load i32, i32* %channel.addr, align 4, !dbg !2588
  %call2 = call i32 @power_supply_hwmon_to_property(i32 %4, i32 %5, i32 %6) #4, !dbg !2589
  store i32 %call2, i32* %prop, align 4, !dbg !2590
  %7 = load i32, i32* %prop, align 4, !dbg !2591
  %cmp = icmp slt i32 %7, 0, !dbg !2593
  br i1 %cmp, label %if.then, label %if.end, !dbg !2594

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %prop, align 4, !dbg !2595
  store i32 %8, i32* %retval, align 4, !dbg !2596
  br label %return, !dbg !2596

if.end:                                           ; preds = %entry
  %9 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2597
  %10 = load i32, i32* %prop, align 4, !dbg !2598
  %call3 = call i32 @power_supply_get_property(%struct.power_supply* %9, i32 %10, %union.power_supply_propval* %pspval) #4, !dbg !2599
  store i32 %call3, i32* %ret, align 4, !dbg !2600
  %11 = load i32, i32* %ret, align 4, !dbg !2601
  %tobool = icmp ne i32 %11, 0, !dbg !2601
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !2603

if.then4:                                         ; preds = %if.end
  %12 = load i32, i32* %ret, align 4, !dbg !2604
  store i32 %12, i32* %retval, align 4, !dbg !2605
  br label %return, !dbg !2605

if.end5:                                          ; preds = %if.end
  %13 = load i32, i32* %type.addr, align 4, !dbg !2606
  switch i32 %13, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb15
  ], !dbg !2607

sw.bb:                                            ; preds = %if.end5, %if.end5
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !2608, metadata !DIExpression()), !dbg !2611
  %intval = bitcast %union.power_supply_propval* %pspval to i32*, !dbg !2611
  %14 = load i32, i32* %intval, align 8, !dbg !2611
  store i32 %14, i32* %__x, align 4, !dbg !2611
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !2612, metadata !DIExpression()), !dbg !2611
  store i32 1000, i32* %__d, align 4, !dbg !2611
  %15 = load i32, i32* %__x, align 4, !dbg !2611
  %cmp6 = icmp sgt i32 %15, 0, !dbg !2611
  %conv = zext i1 %cmp6 to i32, !dbg !2611
  %16 = load i32, i32* %__d, align 4, !dbg !2611
  %cmp7 = icmp sgt i32 %16, 0, !dbg !2611
  %conv8 = zext i1 %cmp7 to i32, !dbg !2611
  %cmp9 = icmp eq i32 %conv, %conv8, !dbg !2611
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !2611

cond.true:                                        ; preds = %sw.bb
  %17 = load i32, i32* %__x, align 4, !dbg !2611
  %18 = load i32, i32* %__d, align 4, !dbg !2611
  %div = sdiv i32 %18, 2, !dbg !2611
  %add = add i32 %17, %div, !dbg !2611
  %19 = load i32, i32* %__d, align 4, !dbg !2611
  %div11 = sdiv i32 %add, %19, !dbg !2611
  br label %cond.end, !dbg !2611

cond.false:                                       ; preds = %sw.bb
  %20 = load i32, i32* %__x, align 4, !dbg !2611
  %21 = load i32, i32* %__d, align 4, !dbg !2611
  %div12 = sdiv i32 %21, 2, !dbg !2611
  %sub = sub i32 %20, %div12, !dbg !2611
  %22 = load i32, i32* %__d, align 4, !dbg !2611
  %div13 = sdiv i32 %sub, %22, !dbg !2611
  br label %cond.end, !dbg !2611

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div11, %cond.true ], [ %div13, %cond.false ], !dbg !2611
  store i32 %cond, i32* %tmp, align 4, !dbg !2611
  %23 = load i32, i32* %tmp, align 4, !dbg !2611
  %intval14 = bitcast %union.power_supply_propval* %pspval to i32*, !dbg !2613
  store i32 %23, i32* %intval14, align 8, !dbg !2614
  br label %sw.epilog, !dbg !2615

sw.bb15:                                          ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %__a, metadata !2616, metadata !DIExpression()), !dbg !2619
  %intval16 = bitcast %union.power_supply_propval* %pspval to i32*, !dbg !2619
  %24 = load i32, i32* %intval16, align 8, !dbg !2619
  store i32 %24, i32* %__a, align 4, !dbg !2619
  call void @llvm.dbg.declare(metadata i32* %__b, metadata !2620, metadata !DIExpression()), !dbg !2619
  store i32 100, i32* %__b, align 4, !dbg !2619
  call void @llvm.dbg.declare(metadata i32** %__d17, metadata !2621, metadata !DIExpression()), !dbg !2619
  %intval18 = bitcast %union.power_supply_propval* %pspval to i32*, !dbg !2619
  store i32* %intval18, i32** %__d17, align 8, !dbg !2619
  %cmp19 = icmp eq i32* %__a, %__b, !dbg !2619
  %conv20 = zext i1 %cmp19 to i32, !dbg !2619
  %25 = load i32*, i32** %__d17, align 8, !dbg !2619
  %cmp21 = icmp eq i32* %__a, %25, !dbg !2619
  %conv22 = zext i1 %cmp21 to i32, !dbg !2619
  %26 = load i32, i32* %__a, align 4, !dbg !2619
  %27 = load i32, i32* %__b, align 4, !dbg !2619
  %28 = load i32*, i32** %__d17, align 8, !dbg !2619
  %29 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %26, i32 %27), !dbg !2619
  %30 = extractvalue { i32, i1 } %29, 1, !dbg !2619
  %31 = extractvalue { i32, i1 } %29, 0, !dbg !2619
  store i32 %31, i32* %28, align 4, !dbg !2619
  %frombool = zext i1 %30 to i8, !dbg !2619
  store i8 %frombool, i8* %tmp23, align 1, !dbg !2619
  %32 = load i8, i8* %tmp23, align 1, !dbg !2619
  %tobool24 = trunc i8 %32 to i1, !dbg !2619
  %call25 = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool24) #4, !dbg !2622
  br i1 %call25, label %if.then26, label %if.end27, !dbg !2623

if.then26:                                        ; preds = %sw.bb15
  store i32 -75, i32* %retval, align 4, !dbg !2624
  br label %return, !dbg !2624

if.end27:                                         ; preds = %sw.bb15
  br label %sw.epilog, !dbg !2625

sw.default:                                       ; preds = %if.end5
  store i32 -22, i32* %retval, align 4, !dbg !2626
  br label %return, !dbg !2626

sw.epilog:                                        ; preds = %if.end27, %cond.end
  %intval28 = bitcast %union.power_supply_propval* %pspval to i32*, !dbg !2627
  %33 = load i32, i32* %intval28, align 8, !dbg !2627
  %conv29 = sext i32 %33 to i64, !dbg !2628
  %34 = load i64*, i64** %val.addr, align 8, !dbg !2629
  store i64 %conv29, i64* %34, align 8, !dbg !2630
  store i32 0, i32* %retval, align 4, !dbg !2631
  br label %return, !dbg !2631

return:                                           ; preds = %sw.epilog, %sw.default, %if.then26, %if.then4, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !2632
  ret i32 %35, !dbg !2632
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @power_supply_hwmon_read_string(%struct.device* %dev, i32 %type, i32 %attr, i32 %channel, i8** %str) #0 !dbg !2633 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %type.addr = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %str.addr = alloca i8**, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2634, metadata !DIExpression()), !dbg !2635
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2636, metadata !DIExpression()), !dbg !2637
  store i32 %attr, i32* %attr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %attr.addr, metadata !2638, metadata !DIExpression()), !dbg !2639
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !2640, metadata !DIExpression()), !dbg !2641
  store i8** %str, i8*** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %str.addr, metadata !2642, metadata !DIExpression()), !dbg !2643
  %0 = load i32, i32* %type.addr, align 4, !dbg !2644
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
  ], !dbg !2645

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %channel.addr, align 4, !dbg !2646
  %idxprom = sext i32 %1 to i64, !dbg !2648
  %arrayidx = getelementptr [2 x i8*], [2 x i8*]* @ps_temp_label, i64 0, i64 %idxprom, !dbg !2648
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !2648
  %3 = load i8**, i8*** %str.addr, align 8, !dbg !2649
  store i8* %2, i8** %3, align 8, !dbg !2650
  br label %sw.epilog, !dbg !2651

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !2652

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret i32 0, !dbg !2653
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @power_supply_hwmon_write(%struct.device* %dev, i32 %type, i32 %attr, i32 %channel, i64 %val) #0 !dbg !2654 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %type.addr = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %psyhw = alloca %struct.power_supply_hwmon*, align 8
  %psy = alloca %struct.power_supply*, align 8
  %pspval = alloca %union.power_supply_propval, align 8
  %prop = alloca i32, align 4
  %__a = alloca i32, align 4
  %__b = alloca i32, align 4
  %__d = alloca i32*, align 8
  %tmp = alloca i8, align 1
  %__x = alloca i32, align 4
  %__d14 = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2655, metadata !DIExpression()), !dbg !2656
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2657, metadata !DIExpression()), !dbg !2658
  store i32 %attr, i32* %attr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %attr.addr, metadata !2659, metadata !DIExpression()), !dbg !2660
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !2661, metadata !DIExpression()), !dbg !2662
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !2663, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.declare(metadata %struct.power_supply_hwmon** %psyhw, metadata !2665, metadata !DIExpression()), !dbg !2666
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2667
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #4, !dbg !2668
  %1 = bitcast i8* %call to %struct.power_supply_hwmon*, !dbg !2668
  store %struct.power_supply_hwmon* %1, %struct.power_supply_hwmon** %psyhw, align 8, !dbg !2666
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !2669, metadata !DIExpression()), !dbg !2670
  %2 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %psyhw, align 8, !dbg !2671
  %psy1 = getelementptr inbounds %struct.power_supply_hwmon, %struct.power_supply_hwmon* %2, i32 0, i32 0, !dbg !2672
  %3 = load %struct.power_supply*, %struct.power_supply** %psy1, align 8, !dbg !2672
  store %struct.power_supply* %3, %struct.power_supply** %psy, align 8, !dbg !2670
  call void @llvm.dbg.declare(metadata %union.power_supply_propval* %pspval, metadata !2673, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.declare(metadata i32* %prop, metadata !2675, metadata !DIExpression()), !dbg !2676
  %4 = load i32, i32* %type.addr, align 4, !dbg !2677
  %5 = load i32, i32* %attr.addr, align 4, !dbg !2678
  %6 = load i32, i32* %channel.addr, align 4, !dbg !2679
  %call2 = call i32 @power_supply_hwmon_to_property(i32 %4, i32 %5, i32 %6) #4, !dbg !2680
  store i32 %call2, i32* %prop, align 4, !dbg !2681
  %7 = load i32, i32* %prop, align 4, !dbg !2682
  %cmp = icmp slt i32 %7, 0, !dbg !2684
  br i1 %cmp, label %if.then, label %if.end, !dbg !2685

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %prop, align 4, !dbg !2686
  store i32 %8, i32* %retval, align 4, !dbg !2687
  br label %return, !dbg !2687

if.end:                                           ; preds = %entry
  %9 = load i64, i64* %val.addr, align 8, !dbg !2688
  %conv = trunc i64 %9 to i32, !dbg !2688
  %intval = bitcast %union.power_supply_propval* %pspval to i32*, !dbg !2689
  store i32 %conv, i32* %intval, align 8, !dbg !2690
  %10 = load i32, i32* %type.addr, align 4, !dbg !2691
  switch i32 %10, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb12
  ], !dbg !2692

sw.bb:                                            ; preds = %if.end, %if.end
  call void @llvm.dbg.declare(metadata i32* %__a, metadata !2693, metadata !DIExpression()), !dbg !2697
  %intval3 = bitcast %union.power_supply_propval* %pspval to i32*, !dbg !2697
  %11 = load i32, i32* %intval3, align 8, !dbg !2697
  store i32 %11, i32* %__a, align 4, !dbg !2697
  call void @llvm.dbg.declare(metadata i32* %__b, metadata !2698, metadata !DIExpression()), !dbg !2697
  store i32 1000, i32* %__b, align 4, !dbg !2697
  call void @llvm.dbg.declare(metadata i32** %__d, metadata !2699, metadata !DIExpression()), !dbg !2697
  %intval4 = bitcast %union.power_supply_propval* %pspval to i32*, !dbg !2697
  store i32* %intval4, i32** %__d, align 8, !dbg !2697
  %cmp5 = icmp eq i32* %__a, %__b, !dbg !2697
  %conv6 = zext i1 %cmp5 to i32, !dbg !2697
  %12 = load i32*, i32** %__d, align 8, !dbg !2697
  %cmp7 = icmp eq i32* %__a, %12, !dbg !2697
  %conv8 = zext i1 %cmp7 to i32, !dbg !2697
  %13 = load i32, i32* %__a, align 4, !dbg !2697
  %14 = load i32, i32* %__b, align 4, !dbg !2697
  %15 = load i32*, i32** %__d, align 8, !dbg !2697
  %16 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %13, i32 %14), !dbg !2697
  %17 = extractvalue { i32, i1 } %16, 1, !dbg !2697
  %18 = extractvalue { i32, i1 } %16, 0, !dbg !2697
  store i32 %18, i32* %15, align 4, !dbg !2697
  %frombool = zext i1 %17 to i8, !dbg !2697
  store i8 %frombool, i8* %tmp, align 1, !dbg !2697
  %19 = load i8, i8* %tmp, align 1, !dbg !2697
  %tobool = trunc i8 %19 to i1, !dbg !2697
  %call9 = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #4, !dbg !2700
  br i1 %call9, label %if.then10, label %if.end11, !dbg !2701

if.then10:                                        ; preds = %sw.bb
  store i32 -75, i32* %retval, align 4, !dbg !2702
  br label %return, !dbg !2702

if.end11:                                         ; preds = %sw.bb
  br label %sw.epilog, !dbg !2703

sw.bb12:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !2704, metadata !DIExpression()), !dbg !2706
  %intval13 = bitcast %union.power_supply_propval* %pspval to i32*, !dbg !2706
  %20 = load i32, i32* %intval13, align 8, !dbg !2706
  store i32 %20, i32* %__x, align 4, !dbg !2706
  call void @llvm.dbg.declare(metadata i32* %__d14, metadata !2707, metadata !DIExpression()), !dbg !2706
  store i32 100, i32* %__d14, align 4, !dbg !2706
  %21 = load i32, i32* %__x, align 4, !dbg !2706
  %cmp16 = icmp sgt i32 %21, 0, !dbg !2706
  %conv17 = zext i1 %cmp16 to i32, !dbg !2706
  %22 = load i32, i32* %__d14, align 4, !dbg !2706
  %cmp18 = icmp sgt i32 %22, 0, !dbg !2706
  %conv19 = zext i1 %cmp18 to i32, !dbg !2706
  %cmp20 = icmp eq i32 %conv17, %conv19, !dbg !2706
  br i1 %cmp20, label %cond.true, label %cond.false, !dbg !2706

cond.true:                                        ; preds = %sw.bb12
  %23 = load i32, i32* %__x, align 4, !dbg !2706
  %24 = load i32, i32* %__d14, align 4, !dbg !2706
  %div = sdiv i32 %24, 2, !dbg !2706
  %add = add i32 %23, %div, !dbg !2706
  %25 = load i32, i32* %__d14, align 4, !dbg !2706
  %div22 = sdiv i32 %add, %25, !dbg !2706
  br label %cond.end, !dbg !2706

cond.false:                                       ; preds = %sw.bb12
  %26 = load i32, i32* %__x, align 4, !dbg !2706
  %27 = load i32, i32* %__d14, align 4, !dbg !2706
  %div23 = sdiv i32 %27, 2, !dbg !2706
  %sub = sub i32 %26, %div23, !dbg !2706
  %28 = load i32, i32* %__d14, align 4, !dbg !2706
  %div24 = sdiv i32 %sub, %28, !dbg !2706
  br label %cond.end, !dbg !2706

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div22, %cond.true ], [ %div24, %cond.false ], !dbg !2706
  store i32 %cond, i32* %tmp15, align 4, !dbg !2706
  %29 = load i32, i32* %tmp15, align 4, !dbg !2706
  %intval25 = bitcast %union.power_supply_propval* %pspval to i32*, !dbg !2708
  store i32 %29, i32* %intval25, align 8, !dbg !2709
  br label %sw.epilog, !dbg !2710

sw.default:                                       ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !2711
  br label %return, !dbg !2711

sw.epilog:                                        ; preds = %cond.end, %if.end11
  %30 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2712
  %31 = load i32, i32* %prop, align 4, !dbg !2713
  %call26 = call i32 @power_supply_set_property(%struct.power_supply* %30, i32 %31, %union.power_supply_propval* %pspval) #4, !dbg !2714
  store i32 %call26, i32* %retval, align 4, !dbg !2715
  br label %return, !dbg !2715

return:                                           ; preds = %sw.epilog, %sw.default, %if.then10, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !2716
  ret i32 %32, !dbg !2716
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @power_supply_hwmon_is_a_label(i32 %type, i32 %attr) #0 !dbg !2717 {
entry:
  %type.addr = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2720, metadata !DIExpression()), !dbg !2721
  store i32 %attr, i32* %attr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %attr.addr, metadata !2722, metadata !DIExpression()), !dbg !2723
  %0 = load i32, i32* %type.addr, align 4, !dbg !2724
  %cmp = icmp eq i32 %0, 1, !dbg !2725
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2726

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %attr.addr, align 4, !dbg !2727
  %cmp1 = icmp eq i32 %1, 21, !dbg !2728
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !2729
  ret i1 %2, !dbg !2730
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @power_supply_hwmon_has_input(%struct.power_supply_hwmon* %psyhw, i32 %type, i32 %channel) #0 !dbg !2731 {
entry:
  %retval = alloca i1, align 1
  %psyhw.addr = alloca %struct.power_supply_hwmon*, align 8
  %type.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %attr_list = alloca %struct.hwmon_type_attr_list*, align 8
  %i = alloca i64, align 8
  %prop = alloca i32, align 4
  store %struct.power_supply_hwmon* %psyhw, %struct.power_supply_hwmon** %psyhw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply_hwmon** %psyhw.addr, metadata !2734, metadata !DIExpression()), !dbg !2735
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2736, metadata !DIExpression()), !dbg !2737
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !2738, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.declare(metadata %struct.hwmon_type_attr_list** %attr_list, metadata !2740, metadata !DIExpression()), !dbg !2742
  %0 = load i32, i32* %type.addr, align 4, !dbg !2743
  %idxprom = zext i32 %0 to i64, !dbg !2744
  %arrayidx = getelementptr [10 x %struct.hwmon_type_attr_list], [10 x %struct.hwmon_type_attr_list]* bitcast (<{ %struct.hwmon_type_attr_list, %struct.hwmon_type_attr_list, [8 x %struct.hwmon_type_attr_list] }>* @ps_type_attrs to [10 x %struct.hwmon_type_attr_list]*), i64 0, i64 %idxprom, !dbg !2744
  store %struct.hwmon_type_attr_list* %arrayidx, %struct.hwmon_type_attr_list** %attr_list, align 8, !dbg !2742
  call void @llvm.dbg.declare(metadata i64* %i, metadata !2745, metadata !DIExpression()), !dbg !2746
  store i64 0, i64* %i, align 8, !dbg !2747
  br label %for.cond, !dbg !2749

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8, !dbg !2750
  %2 = load %struct.hwmon_type_attr_list*, %struct.hwmon_type_attr_list** %attr_list, align 8, !dbg !2752
  %n_attrs = getelementptr inbounds %struct.hwmon_type_attr_list, %struct.hwmon_type_attr_list* %2, i32 0, i32 1, !dbg !2753
  %3 = load i64, i64* %n_attrs, align 8, !dbg !2753
  %cmp = icmp ult i64 %1, %3, !dbg !2754
  br i1 %cmp, label %for.body, label %for.end, !dbg !2755

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %prop, metadata !2756, metadata !DIExpression()), !dbg !2758
  %4 = load i32, i32* %type.addr, align 4, !dbg !2759
  %5 = load %struct.hwmon_type_attr_list*, %struct.hwmon_type_attr_list** %attr_list, align 8, !dbg !2760
  %attrs = getelementptr inbounds %struct.hwmon_type_attr_list, %struct.hwmon_type_attr_list* %5, i32 0, i32 0, !dbg !2761
  %6 = load i32*, i32** %attrs, align 8, !dbg !2761
  %7 = load i64, i64* %i, align 8, !dbg !2762
  %arrayidx1 = getelementptr i32, i32* %6, i64 %7, !dbg !2760
  %8 = load i32, i32* %arrayidx1, align 4, !dbg !2760
  %9 = load i32, i32* %channel.addr, align 4, !dbg !2763
  %call = call i32 @power_supply_hwmon_to_property(i32 %4, i32 %8, i32 %9) #4, !dbg !2764
  store i32 %call, i32* %prop, align 4, !dbg !2758
  %10 = load i32, i32* %prop, align 4, !dbg !2765
  %cmp2 = icmp sge i32 %10, 0, !dbg !2767
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !2768

land.lhs.true:                                    ; preds = %for.body
  %11 = load i32, i32* %prop, align 4, !dbg !2769
  %conv = sext i32 %11 to i64, !dbg !2769
  %12 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %psyhw.addr, align 8, !dbg !2770
  %props = getelementptr inbounds %struct.power_supply_hwmon, %struct.power_supply_hwmon* %12, i32 0, i32 1, !dbg !2771
  %13 = load i64*, i64** %props, align 8, !dbg !2771
  %call3 = call zeroext i1 @test_bit(i64 %conv, i64* %13) #4, !dbg !2772
  br i1 %call3, label %if.then, label %if.end, !dbg !2773

if.then:                                          ; preds = %land.lhs.true
  store i1 true, i1* %retval, align 1, !dbg !2774
  br label %return, !dbg !2774

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !2775

for.inc:                                          ; preds = %if.end
  %14 = load i64, i64* %i, align 8, !dbg !2776
  %inc = add i64 %14, 1, !dbg !2776
  store i64 %inc, i64* %i, align 8, !dbg !2776
  br label %for.cond, !dbg !2777, !llvm.loop !2778

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1, !dbg !2780
  br label %return, !dbg !2780

return:                                           ; preds = %for.end, %if.then
  %15 = load i1, i1* %retval, align 1, !dbg !2781
  ret i1 %15, !dbg !2781
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @power_supply_hwmon_to_property(i32 %type, i32 %attr, i32 %channel) #0 !dbg !2782 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2785, metadata !DIExpression()), !dbg !2786
  store i32 %attr, i32* %attr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %attr.addr, metadata !2787, metadata !DIExpression()), !dbg !2788
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !2789, metadata !DIExpression()), !dbg !2790
  %0 = load i32, i32* %type.addr, align 4, !dbg !2791
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 1, label %sw.bb3
  ], !dbg !2792

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %attr.addr, align 4, !dbg !2793
  %call = call i32 @power_supply_hwmon_in_to_property(i32 %1) #4, !dbg !2795
  store i32 %call, i32* %retval, align 4, !dbg !2796
  br label %return, !dbg !2796

sw.bb1:                                           ; preds = %entry
  %2 = load i32, i32* %attr.addr, align 4, !dbg !2797
  %call2 = call i32 @power_supply_hwmon_curr_to_property(i32 %2) #4, !dbg !2798
  store i32 %call2, i32* %retval, align 4, !dbg !2799
  br label %return, !dbg !2799

sw.bb3:                                           ; preds = %entry
  %3 = load i32, i32* %attr.addr, align 4, !dbg !2800
  %4 = load i32, i32* %channel.addr, align 4, !dbg !2801
  %call4 = call i32 @power_supply_hwmon_temp_to_property(i32 %3, i32 %4) #4, !dbg !2802
  store i32 %call4, i32* %retval, align 4, !dbg !2803
  br label %return, !dbg !2803

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2804
  br label %return, !dbg !2804

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb1, %sw.bb
  %5 = load i32, i32* %retval, align 4, !dbg !2805
  ret i32 %5, !dbg !2805
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !2806 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !2812, metadata !DIExpression()), !dbg !2814
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !2816, metadata !DIExpression()), !dbg !2817
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !2818, metadata !DIExpression()), !dbg !2819
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !2820, metadata !DIExpression()), !dbg !2822
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !2824, metadata !DIExpression()), !dbg !2825
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !2826, metadata !DIExpression()), !dbg !2828
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2830, metadata !DIExpression()), !dbg !2831
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !2832, metadata !DIExpression()), !dbg !2833
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !2834, metadata !DIExpression()), !dbg !2835
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !2836
  %1 = load i64, i64* %nr.addr, align 8, !dbg !2837
  %div = sdiv i64 %1, 64, !dbg !2837
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !2838
  %2 = bitcast i64* %add.ptr to i8*, !dbg !2836
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !2839
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2840
  %conv.i = trunc i64 %4 to i32, !dbg !2840
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #5, !dbg !2841
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !2842
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !2842
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #5, !dbg !2842
  %7 = load i64, i64* %nr.addr, align 8, !dbg !2843
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !2843
  br i1 %8, label %cond.true, label %cond.false, !dbg !2843

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !2843
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !2843
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !2844
  %and.i = and i64 %11, 63, !dbg !2845
  %shl.i = shl i64 1, %and.i, !dbg !2846
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !2847
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !2848
  %shr.i = ashr i64 %13, 6, !dbg !2849
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !2847
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !2847
  %and1.i = and i64 %shl.i, %14, !dbg !2850
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !2851
  %conv = zext i1 %cmp.i to i32, !dbg !2843
  br label %cond.end, !dbg !2843

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !2843
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !2843
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !2852
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !2853
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #6, !dbg !2854, !srcloc !2855
  store i8 %19, i8* %oldbit.i, align 1, !dbg !2854
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !2856
  %tobool.i = trunc i8 %20 to i1, !dbg !2856
  %conv2 = zext i1 %tobool.i to i32, !dbg !2843
  br label %cond.end, !dbg !2843

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2843
  %tobool = icmp ne i32 %cond, 0, !dbg !2843
  ret i1 %tobool, !dbg !2857
}

; Function Attrs: noredzone
declare dso_local i32 @power_supply_property_is_writeable(%struct.power_supply*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @power_supply_hwmon_is_writable(i32 %type, i32 %attr) #0 !dbg !2858 {
entry:
  %retval = alloca i1, align 1
  %type.addr = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2859, metadata !DIExpression()), !dbg !2860
  store i32 %attr, i32* %attr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %attr.addr, metadata !2861, metadata !DIExpression()), !dbg !2862
  %0 = load i32, i32* %type.addr, align 4, !dbg !2863
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
    i32 1, label %sw.bb4
  ], !dbg !2864

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %attr.addr, align 4, !dbg !2865
  %cmp = icmp eq i32 %1, 2, !dbg !2867
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !2868

lor.rhs:                                          ; preds = %sw.bb
  %2 = load i32, i32* %attr.addr, align 4, !dbg !2869
  %cmp1 = icmp eq i32 %2, 3, !dbg !2870
  br label %lor.end, !dbg !2868

lor.end:                                          ; preds = %lor.rhs, %sw.bb
  %3 = phi i1 [ true, %sw.bb ], [ %cmp1, %lor.rhs ]
  store i1 %3, i1* %retval, align 1, !dbg !2871
  br label %return, !dbg !2871

sw.bb2:                                           ; preds = %entry
  %4 = load i32, i32* %attr.addr, align 4, !dbg !2872
  %cmp3 = icmp eq i32 %4, 3, !dbg !2873
  store i1 %cmp3, i1* %retval, align 1, !dbg !2874
  br label %return, !dbg !2874

sw.bb4:                                           ; preds = %entry
  %5 = load i32, i32* %attr.addr, align 4, !dbg !2875
  %cmp5 = icmp eq i32 %5, 7, !dbg !2876
  br i1 %cmp5, label %lor.end11, label %lor.lhs.false, !dbg !2877

lor.lhs.false:                                    ; preds = %sw.bb4
  %6 = load i32, i32* %attr.addr, align 4, !dbg !2878
  %cmp6 = icmp eq i32 %6, 5, !dbg !2879
  br i1 %cmp6, label %lor.end11, label %lor.lhs.false7, !dbg !2880

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %7 = load i32, i32* %attr.addr, align 4, !dbg !2881
  %cmp8 = icmp eq i32 %7, 15, !dbg !2882
  br i1 %cmp8, label %lor.end11, label %lor.rhs9, !dbg !2883

lor.rhs9:                                         ; preds = %lor.lhs.false7
  %8 = load i32, i32* %attr.addr, align 4, !dbg !2884
  %cmp10 = icmp eq i32 %8, 16, !dbg !2885
  br label %lor.end11, !dbg !2883

lor.end11:                                        ; preds = %lor.rhs9, %lor.lhs.false7, %lor.lhs.false, %sw.bb4
  %9 = phi i1 [ true, %lor.lhs.false7 ], [ true, %lor.lhs.false ], [ true, %sw.bb4 ], [ %cmp10, %lor.rhs9 ]
  store i1 %9, i1* %retval, align 1, !dbg !2886
  br label %return, !dbg !2886

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !2887
  br label %return, !dbg !2887

return:                                           ; preds = %sw.default, %lor.end11, %sw.bb2, %lor.end
  %10 = load i1, i1* %retval, align 1, !dbg !2888
  ret i1 %10, !dbg !2888
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @power_supply_hwmon_in_to_property(i32 %attr) #0 !dbg !2889 {
entry:
  %retval = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  store i32 %attr, i32* %attr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %attr.addr, metadata !2892, metadata !DIExpression()), !dbg !2893
  %0 = load i32, i32* %attr.addr, align 4, !dbg !2894
  switch i32 %0, label %sw.default [
    i32 6, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 1, label %sw.bb3
  ], !dbg !2895

sw.bb:                                            ; preds = %entry
  store i32 13, i32* %retval, align 4, !dbg !2896
  br label %return, !dbg !2896

sw.bb1:                                           ; preds = %entry
  store i32 9, i32* %retval, align 4, !dbg !2898
  br label %return, !dbg !2898

sw.bb2:                                           ; preds = %entry
  store i32 8, i32* %retval, align 4, !dbg !2899
  br label %return, !dbg !2899

sw.bb3:                                           ; preds = %entry
  store i32 12, i32* %retval, align 4, !dbg !2900
  br label %return, !dbg !2900

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2901
  br label %return, !dbg !2901

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4, !dbg !2902
  ret i32 %1, !dbg !2902
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @power_supply_hwmon_curr_to_property(i32 %attr) #0 !dbg !2903 {
entry:
  %retval = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  store i32 %attr, i32* %attr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %attr.addr, metadata !2904, metadata !DIExpression()), !dbg !2905
  %0 = load i32, i32* %attr.addr, align 4, !dbg !2906
  switch i32 %0, label %sw.default [
    i32 6, label %sw.bb
    i32 3, label %sw.bb1
    i32 1, label %sw.bb2
  ], !dbg !2907

sw.bb:                                            ; preds = %entry
  store i32 18, i32* %retval, align 4, !dbg !2908
  br label %return, !dbg !2908

sw.bb1:                                           ; preds = %entry
  store i32 16, i32* %retval, align 4, !dbg !2910
  br label %return, !dbg !2910

sw.bb2:                                           ; preds = %entry
  store i32 17, i32* %retval, align 4, !dbg !2911
  br label %return, !dbg !2911

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2912
  br label %return, !dbg !2912

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4, !dbg !2913
  ret i32 %1, !dbg !2913
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @power_supply_hwmon_temp_to_property(i32 %attr, i32 %channel) #0 !dbg !2914 {
entry:
  %retval = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  store i32 %attr, i32* %attr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %attr.addr, metadata !2917, metadata !DIExpression()), !dbg !2918
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !2919, metadata !DIExpression()), !dbg !2920
  %0 = load i32, i32* %channel.addr, align 4, !dbg !2921
  %tobool = icmp ne i32 %0, 0, !dbg !2921
  br i1 %tobool, label %if.then, label %if.else, !dbg !2923

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %attr.addr, align 4, !dbg !2924
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 15, label %sw.bb1
    i32 16, label %sw.bb2
  ], !dbg !2926

sw.bb:                                            ; preds = %if.then
  store i32 56, i32* %retval, align 4, !dbg !2927
  br label %return, !dbg !2927

sw.bb1:                                           ; preds = %if.then
  store i32 57, i32* %retval, align 4, !dbg !2929
  br label %return, !dbg !2929

sw.bb2:                                           ; preds = %if.then
  store i32 58, i32* %retval, align 4, !dbg !2930
  br label %return, !dbg !2930

sw.default:                                       ; preds = %if.then
  br label %sw.epilog, !dbg !2931

sw.epilog:                                        ; preds = %sw.default
  br label %if.end, !dbg !2932

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %attr.addr, align 4, !dbg !2933
  switch i32 %2, label %sw.default8 [
    i32 1, label %sw.bb3
    i32 7, label %sw.bb4
    i32 5, label %sw.bb5
    i32 15, label %sw.bb6
    i32 16, label %sw.bb7
  ], !dbg !2935

sw.bb3:                                           ; preds = %if.else
  store i32 51, i32* %retval, align 4, !dbg !2936
  br label %return, !dbg !2936

sw.bb4:                                           ; preds = %if.else
  store i32 52, i32* %retval, align 4, !dbg !2938
  br label %return, !dbg !2938

sw.bb5:                                           ; preds = %if.else
  store i32 53, i32* %retval, align 4, !dbg !2939
  br label %return, !dbg !2939

sw.bb6:                                           ; preds = %if.else
  store i32 54, i32* %retval, align 4, !dbg !2940
  br label %return, !dbg !2940

sw.bb7:                                           ; preds = %if.else
  store i32 55, i32* %retval, align 4, !dbg !2941
  br label %return, !dbg !2941

sw.default8:                                      ; preds = %if.else
  br label %sw.epilog9, !dbg !2942

sw.epilog9:                                       ; preds = %sw.default8
  br label %if.end

if.end:                                           ; preds = %sw.epilog9, %sw.epilog
  store i32 -22, i32* %retval, align 4, !dbg !2943
  br label %return, !dbg !2943

return:                                           ; preds = %if.end, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %3 = load i32, i32* %retval, align 4, !dbg !2944
  ret i32 %3, !dbg !2944
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !2945 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2946, metadata !DIExpression()), !dbg !2947
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2948, metadata !DIExpression()), !dbg !2949
  ret i1 true, !dbg !2950
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !2951 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2956, metadata !DIExpression()), !dbg !2957
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2958
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !2959
  %1 = load i8*, i8** %driver_data, align 8, !dbg !2959
  ret i8* %1, !dbg !2960
}

; Function Attrs: noredzone
declare dso_local i32 @power_supply_get_property(%struct.power_supply*, i32, %union.power_supply_propval*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !2961 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !2965, metadata !DIExpression()), !dbg !2966
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !2967
  %tobool = trunc i8 %0 to i1, !dbg !2967
  %lnot = xor i1 %tobool, true, !dbg !2967
  %lnot1 = xor i1 %lnot, true, !dbg !2967
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2967
  %conv = sext i32 %lnot.ext to i64, !dbg !2967
  %tobool2 = icmp ne i64 %conv, 0, !dbg !2967
  ret i1 %tobool2, !dbg !2968
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @power_supply_set_property(%struct.power_supply*, i32, %union.power_supply_propval*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2969 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2972, metadata !DIExpression()), !dbg !2973
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2974
  %1 = ptrtoint i8* %0 to i64, !dbg !2974
  %2 = inttoptr i64 %1 to i8*, !dbg !2974
  %3 = ptrtoint i8* %2 to i64, !dbg !2974
  %cmp = icmp uge i64 %3, -4095, !dbg !2974
  %lnot = xor i1 %cmp, true, !dbg !2974
  %lnot1 = xor i1 %lnot, true, !dbg !2974
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2974
  %conv = sext i32 %lnot.ext to i64, !dbg !2974
  %tobool = icmp ne i64 %conv, 0, !dbg !2974
  ret i1 %tobool, !dbg !2975
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !2976 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2979, metadata !DIExpression()), !dbg !2980
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2981
  %1 = ptrtoint i8* %0 to i64, !dbg !2982
  ret i64 %1, !dbg !2983
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { noredzone }
attributes #5 = { noredzone nounwind }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2141, !2142, !2143, !2144}
!llvm.ident = !{!2145}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "power_supply_hwmon_chip_info", scope: !2, file: !3, line: 324, type: !2134, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !243, globals: !255, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/power/supply/power_supply_hwmon.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !22, !34, !111, !116, !122, !128, !134, !141, !149, !155, !160, !174, !203, !223}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_type", file: !6, line: 176, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/power_supply.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21}
!9 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_UNKNOWN", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_BATTERY", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_UPS", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_MAINS", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_DCP", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_CDP", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_ACA", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_TYPE_C", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_PD", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_PD_DRP", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_APPLE_BRICK_ID", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_WIRELESS", value: 12, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_usb_type", file: !6, line: 192, baseType: !7, size: 32, elements: !23)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!24 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_UNKNOWN", value: 0, isUnsigned: true)
!25 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_SDP", value: 1, isUnsigned: true)
!26 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_DCP", value: 2, isUnsigned: true)
!27 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_CDP", value: 3, isUnsigned: true)
!28 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_ACA", value: 4, isUnsigned: true)
!29 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_C", value: 5, isUnsigned: true)
!30 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_PD", value: 6, isUnsigned: true)
!31 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_PD_DRP", value: 7, isUnsigned: true)
!32 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_PD_PPS", value: 8, isUnsigned: true)
!33 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_APPLE_BRICK_ID", value: 9, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_property", file: !6, line: 96, baseType: !7, size: 32, elements: !35)
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110}
!36 = !DIEnumerator(name: "POWER_SUPPLY_PROP_STATUS", value: 0, isUnsigned: true)
!37 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_TYPE", value: 1, isUnsigned: true)
!38 = !DIEnumerator(name: "POWER_SUPPLY_PROP_HEALTH", value: 2, isUnsigned: true)
!39 = !DIEnumerator(name: "POWER_SUPPLY_PROP_PRESENT", value: 3, isUnsigned: true)
!40 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ONLINE", value: 4, isUnsigned: true)
!41 = !DIEnumerator(name: "POWER_SUPPLY_PROP_AUTHENTIC", value: 5, isUnsigned: true)
!42 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TECHNOLOGY", value: 6, isUnsigned: true)
!43 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CYCLE_COUNT", value: 7, isUnsigned: true)
!44 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MAX", value: 8, isUnsigned: true)
!45 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MIN", value: 9, isUnsigned: true)
!46 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MAX_DESIGN", value: 10, isUnsigned: true)
!47 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN", value: 11, isUnsigned: true)
!48 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_NOW", value: 12, isUnsigned: true)
!49 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_AVG", value: 13, isUnsigned: true)
!50 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_OCV", value: 14, isUnsigned: true)
!51 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_BOOT", value: 15, isUnsigned: true)
!52 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_MAX", value: 16, isUnsigned: true)
!53 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_NOW", value: 17, isUnsigned: true)
!54 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_AVG", value: 18, isUnsigned: true)
!55 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_BOOT", value: 19, isUnsigned: true)
!56 = !DIEnumerator(name: "POWER_SUPPLY_PROP_POWER_NOW", value: 20, isUnsigned: true)
!57 = !DIEnumerator(name: "POWER_SUPPLY_PROP_POWER_AVG", value: 21, isUnsigned: true)
!58 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN", value: 22, isUnsigned: true)
!59 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_EMPTY_DESIGN", value: 23, isUnsigned: true)
!60 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_FULL", value: 24, isUnsigned: true)
!61 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_EMPTY", value: 25, isUnsigned: true)
!62 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_NOW", value: 26, isUnsigned: true)
!63 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_AVG", value: 27, isUnsigned: true)
!64 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_COUNTER", value: 28, isUnsigned: true)
!65 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT", value: 29, isUnsigned: true)
!66 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX", value: 30, isUnsigned: true)
!67 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE", value: 31, isUnsigned: true)
!68 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX", value: 32, isUnsigned: true)
!69 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT", value: 33, isUnsigned: true)
!70 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT_MAX", value: 34, isUnsigned: true)
!71 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_START_THRESHOLD", value: 35, isUnsigned: true)
!72 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_END_THRESHOLD", value: 36, isUnsigned: true)
!73 = !DIEnumerator(name: "POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT", value: 37, isUnsigned: true)
!74 = !DIEnumerator(name: "POWER_SUPPLY_PROP_INPUT_VOLTAGE_LIMIT", value: 38, isUnsigned: true)
!75 = !DIEnumerator(name: "POWER_SUPPLY_PROP_INPUT_POWER_LIMIT", value: 39, isUnsigned: true)
!76 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN", value: 40, isUnsigned: true)
!77 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_EMPTY_DESIGN", value: 41, isUnsigned: true)
!78 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_FULL", value: 42, isUnsigned: true)
!79 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_EMPTY", value: 43, isUnsigned: true)
!80 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_NOW", value: 44, isUnsigned: true)
!81 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_AVG", value: 45, isUnsigned: true)
!82 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY", value: 46, isUnsigned: true)
!83 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_ALERT_MIN", value: 47, isUnsigned: true)
!84 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_ALERT_MAX", value: 48, isUnsigned: true)
!85 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_ERROR_MARGIN", value: 49, isUnsigned: true)
!86 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_LEVEL", value: 50, isUnsigned: true)
!87 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP", value: 51, isUnsigned: true)
!88 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_MAX", value: 52, isUnsigned: true)
!89 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_MIN", value: 53, isUnsigned: true)
!90 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_ALERT_MIN", value: 54, isUnsigned: true)
!91 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_ALERT_MAX", value: 55, isUnsigned: true)
!92 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_AMBIENT", value: 56, isUnsigned: true)
!93 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MIN", value: 57, isUnsigned: true)
!94 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MAX", value: 58, isUnsigned: true)
!95 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_EMPTY_NOW", value: 59, isUnsigned: true)
!96 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_EMPTY_AVG", value: 60, isUnsigned: true)
!97 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_FULL_NOW", value: 61, isUnsigned: true)
!98 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_FULL_AVG", value: 62, isUnsigned: true)
!99 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TYPE", value: 63, isUnsigned: true)
!100 = !DIEnumerator(name: "POWER_SUPPLY_PROP_USB_TYPE", value: 64, isUnsigned: true)
!101 = !DIEnumerator(name: "POWER_SUPPLY_PROP_SCOPE", value: 65, isUnsigned: true)
!102 = !DIEnumerator(name: "POWER_SUPPLY_PROP_PRECHARGE_CURRENT", value: 66, isUnsigned: true)
!103 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT", value: 67, isUnsigned: true)
!104 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CALIBRATE", value: 68, isUnsigned: true)
!105 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURE_YEAR", value: 69, isUnsigned: true)
!106 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURE_MONTH", value: 70, isUnsigned: true)
!107 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURE_DAY", value: 71, isUnsigned: true)
!108 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MODEL_NAME", value: 72, isUnsigned: true)
!109 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURER", value: 73, isUnsigned: true)
!110 = !DIEnumerator(name: "POWER_SUPPLY_PROP_SERIAL_NUMBER", value: 74, isUnsigned: true)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !112, line: 65, baseType: !7, size: 32, elements: !113)
!112 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!113 = !{!114, !115}
!114 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!115 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !117, line: 16, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!120 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!121 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !123, line: 26, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!127 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !129, line: 44, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !132, !133}
!131 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !135, line: 343, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !142, line: 524, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!143 = !{!144, !145, !146, !147, !148}
!144 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!145 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!146 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!147 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!148 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !142, line: 502, baseType: !7, size: 32, elements: !150)
!150 = !{!151, !152, !153, !154}
!151 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!152 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!153 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!154 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !156, line: 10, baseType: !7, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!157 = !{!158, !159}
!158 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!159 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hwmon_sensor_types", file: !161, line: 20, baseType: !7, size: 32, elements: !162)
!161 = !DIFile(filename: "./include/linux/hwmon.h", directory: "/home/lizy2001/genbc/linux")
!162 = !{!163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173}
!163 = !DIEnumerator(name: "hwmon_chip", value: 0, isUnsigned: true)
!164 = !DIEnumerator(name: "hwmon_temp", value: 1, isUnsigned: true)
!165 = !DIEnumerator(name: "hwmon_in", value: 2, isUnsigned: true)
!166 = !DIEnumerator(name: "hwmon_curr", value: 3, isUnsigned: true)
!167 = !DIEnumerator(name: "hwmon_power", value: 4, isUnsigned: true)
!168 = !DIEnumerator(name: "hwmon_energy", value: 5, isUnsigned: true)
!169 = !DIEnumerator(name: "hwmon_humidity", value: 6, isUnsigned: true)
!170 = !DIEnumerator(name: "hwmon_fan", value: 7, isUnsigned: true)
!171 = !DIEnumerator(name: "hwmon_pwm", value: 8, isUnsigned: true)
!172 = !DIEnumerator(name: "hwmon_intrusion", value: 9, isUnsigned: true)
!173 = !DIEnumerator(name: "hwmon_max", value: 10, isUnsigned: true)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hwmon_temp_attributes", file: !161, line: 62, baseType: !7, size: 32, elements: !175)
!175 = !{!176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202}
!176 = !DIEnumerator(name: "hwmon_temp_enable", value: 0, isUnsigned: true)
!177 = !DIEnumerator(name: "hwmon_temp_input", value: 1, isUnsigned: true)
!178 = !DIEnumerator(name: "hwmon_temp_type", value: 2, isUnsigned: true)
!179 = !DIEnumerator(name: "hwmon_temp_lcrit", value: 3, isUnsigned: true)
!180 = !DIEnumerator(name: "hwmon_temp_lcrit_hyst", value: 4, isUnsigned: true)
!181 = !DIEnumerator(name: "hwmon_temp_min", value: 5, isUnsigned: true)
!182 = !DIEnumerator(name: "hwmon_temp_min_hyst", value: 6, isUnsigned: true)
!183 = !DIEnumerator(name: "hwmon_temp_max", value: 7, isUnsigned: true)
!184 = !DIEnumerator(name: "hwmon_temp_max_hyst", value: 8, isUnsigned: true)
!185 = !DIEnumerator(name: "hwmon_temp_crit", value: 9, isUnsigned: true)
!186 = !DIEnumerator(name: "hwmon_temp_crit_hyst", value: 10, isUnsigned: true)
!187 = !DIEnumerator(name: "hwmon_temp_emergency", value: 11, isUnsigned: true)
!188 = !DIEnumerator(name: "hwmon_temp_emergency_hyst", value: 12, isUnsigned: true)
!189 = !DIEnumerator(name: "hwmon_temp_alarm", value: 13, isUnsigned: true)
!190 = !DIEnumerator(name: "hwmon_temp_lcrit_alarm", value: 14, isUnsigned: true)
!191 = !DIEnumerator(name: "hwmon_temp_min_alarm", value: 15, isUnsigned: true)
!192 = !DIEnumerator(name: "hwmon_temp_max_alarm", value: 16, isUnsigned: true)
!193 = !DIEnumerator(name: "hwmon_temp_crit_alarm", value: 17, isUnsigned: true)
!194 = !DIEnumerator(name: "hwmon_temp_emergency_alarm", value: 18, isUnsigned: true)
!195 = !DIEnumerator(name: "hwmon_temp_fault", value: 19, isUnsigned: true)
!196 = !DIEnumerator(name: "hwmon_temp_offset", value: 20, isUnsigned: true)
!197 = !DIEnumerator(name: "hwmon_temp_label", value: 21, isUnsigned: true)
!198 = !DIEnumerator(name: "hwmon_temp_lowest", value: 22, isUnsigned: true)
!199 = !DIEnumerator(name: "hwmon_temp_highest", value: 23, isUnsigned: true)
!200 = !DIEnumerator(name: "hwmon_temp_reset_history", value: 24, isUnsigned: true)
!201 = !DIEnumerator(name: "hwmon_temp_rated_min", value: 25, isUnsigned: true)
!202 = !DIEnumerator(name: "hwmon_temp_rated_max", value: 26, isUnsigned: true)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hwmon_in_attributes", file: !161, line: 120, baseType: !7, size: 32, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222}
!205 = !DIEnumerator(name: "hwmon_in_enable", value: 0, isUnsigned: true)
!206 = !DIEnumerator(name: "hwmon_in_input", value: 1, isUnsigned: true)
!207 = !DIEnumerator(name: "hwmon_in_min", value: 2, isUnsigned: true)
!208 = !DIEnumerator(name: "hwmon_in_max", value: 3, isUnsigned: true)
!209 = !DIEnumerator(name: "hwmon_in_lcrit", value: 4, isUnsigned: true)
!210 = !DIEnumerator(name: "hwmon_in_crit", value: 5, isUnsigned: true)
!211 = !DIEnumerator(name: "hwmon_in_average", value: 6, isUnsigned: true)
!212 = !DIEnumerator(name: "hwmon_in_lowest", value: 7, isUnsigned: true)
!213 = !DIEnumerator(name: "hwmon_in_highest", value: 8, isUnsigned: true)
!214 = !DIEnumerator(name: "hwmon_in_reset_history", value: 9, isUnsigned: true)
!215 = !DIEnumerator(name: "hwmon_in_label", value: 10, isUnsigned: true)
!216 = !DIEnumerator(name: "hwmon_in_alarm", value: 11, isUnsigned: true)
!217 = !DIEnumerator(name: "hwmon_in_min_alarm", value: 12, isUnsigned: true)
!218 = !DIEnumerator(name: "hwmon_in_max_alarm", value: 13, isUnsigned: true)
!219 = !DIEnumerator(name: "hwmon_in_lcrit_alarm", value: 14, isUnsigned: true)
!220 = !DIEnumerator(name: "hwmon_in_crit_alarm", value: 15, isUnsigned: true)
!221 = !DIEnumerator(name: "hwmon_in_rated_min", value: 16, isUnsigned: true)
!222 = !DIEnumerator(name: "hwmon_in_rated_max", value: 17, isUnsigned: true)
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hwmon_curr_attributes", file: !161, line: 160, baseType: !7, size: 32, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242}
!225 = !DIEnumerator(name: "hwmon_curr_enable", value: 0, isUnsigned: true)
!226 = !DIEnumerator(name: "hwmon_curr_input", value: 1, isUnsigned: true)
!227 = !DIEnumerator(name: "hwmon_curr_min", value: 2, isUnsigned: true)
!228 = !DIEnumerator(name: "hwmon_curr_max", value: 3, isUnsigned: true)
!229 = !DIEnumerator(name: "hwmon_curr_lcrit", value: 4, isUnsigned: true)
!230 = !DIEnumerator(name: "hwmon_curr_crit", value: 5, isUnsigned: true)
!231 = !DIEnumerator(name: "hwmon_curr_average", value: 6, isUnsigned: true)
!232 = !DIEnumerator(name: "hwmon_curr_lowest", value: 7, isUnsigned: true)
!233 = !DIEnumerator(name: "hwmon_curr_highest", value: 8, isUnsigned: true)
!234 = !DIEnumerator(name: "hwmon_curr_reset_history", value: 9, isUnsigned: true)
!235 = !DIEnumerator(name: "hwmon_curr_label", value: 10, isUnsigned: true)
!236 = !DIEnumerator(name: "hwmon_curr_alarm", value: 11, isUnsigned: true)
!237 = !DIEnumerator(name: "hwmon_curr_min_alarm", value: 12, isUnsigned: true)
!238 = !DIEnumerator(name: "hwmon_curr_max_alarm", value: 13, isUnsigned: true)
!239 = !DIEnumerator(name: "hwmon_curr_lcrit_alarm", value: 14, isUnsigned: true)
!240 = !DIEnumerator(name: "hwmon_curr_crit_alarm", value: 15, isUnsigned: true)
!241 = !DIEnumerator(name: "hwmon_curr_rated_min", value: 16, isUnsigned: true)
!242 = !DIEnumerator(name: "hwmon_curr_rated_max", value: 17, isUnsigned: true)
!243 = !{!244, !246, !247, !250, !253, !254, !252}
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !245, line: 148, baseType: !7)
!245 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !249)
!249 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !252)
!252 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!255 = !{!0, !256, !2104, !2116, !2121, !2125}
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "power_supply_hwmon_ops", scope: !2, file: !3, line: 289, type: !258, isLocal: true, isDefinition: true)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwmon_ops", file: !161, line: 394, size: 256, elements: !260)
!260 = !{!261, !274, !2095, !2100}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !259, file: !161, line: 395, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!265, !267, !160, !269, !273}
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !245, line: 19, baseType: !266)
!266 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !270, line: 21, baseType: !271)
!270 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !272, line: 27, baseType: !7)
!272 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!273 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !259, file: !161, line: 397, baseType: !275, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!273, !278, !160, !269, !273, !2094}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !135, line: 461, size: 5568, elements: !280)
!280 = !{!281, !1746, !1747, !1750, !1751, !1802, !1880, !1881, !1882, !1883, !1884, !1893, !1998, !2011, !2014, !2015, !2019, !2021, !2022, !2023, !2027, !2033, !2034, !2037, !2041, !2044, !2047, !2048, !2049, !2050, !2082, !2083, !2084, !2087, !2090, !2091, !2092, !2093}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !279, file: !135, line: 462, baseType: !282, size: 512)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !283, line: 64, size: 512, elements: !284)
!283 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!284 = !{!285, !288, !294, !296, !356, !1583, !1736, !1741, !1742, !1743, !1744, !1745}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !282, file: !283, line: 65, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !282, file: !283, line: 66, baseType: !289, size: 128, offset: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !245, line: 178, size: 128, elements: !290)
!290 = !{!291, !293}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !245, line: 179, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !289, file: !245, line: 179, baseType: !292, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !282, file: !283, line: 67, baseType: !295, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !282, file: !283, line: 68, baseType: !297, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !283, line: 192, size: 704, elements: !299)
!299 = !{!300, !301, !317, !318}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !298, file: !283, line: 193, baseType: !289, size: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !298, file: !283, line: 194, baseType: !302, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !303, line: 83, baseType: !304)
!303 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !303, line: 71, elements: !305)
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, scope: !304, file: !303, line: 72, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !304, file: !303, line: 72, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !307, file: !303, line: 73, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !303, line: 20, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !310, file: !303, line: 21, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !314, line: 25, baseType: !315)
!314 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !314, line: 25, elements: !316)
!316 = !{}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !298, file: !283, line: 195, baseType: !282, size: 512, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !298, file: !283, line: 196, baseType: !319, size: 64, offset: 640)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !283, line: 156, size: 192, elements: !322)
!322 = !{!323, !328, !333}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !321, file: !283, line: 157, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!273, !297, !295}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !321, file: !283, line: 158, baseType: !329, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!286, !297, !295}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !321, file: !283, line: 159, baseType: !334, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!273, !297, !295, !338}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !283, line: 148, size: 20736, elements: !340)
!340 = !{!341, !346, !350, !351, !355}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !339, file: !283, line: 149, baseType: !342, size: 192)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 192, elements: !344)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!344 = !{!345}
!345 = !DISubrange(count: 3)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !339, file: !283, line: 150, baseType: !347, size: 4096, offset: 192)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 4096, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !339, file: !283, line: 151, baseType: !273, size: 32, offset: 4288)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !339, file: !283, line: 152, baseType: !352, size: 16384, offset: 4320)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 16384, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 2048)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !339, file: !283, line: 153, baseType: !273, size: 32, offset: 20704)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !282, file: !283, line: 69, baseType: !357, size: 64, offset: 320)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !283, line: 138, size: 448, elements: !359)
!359 = !{!360, !364, !390, !392, !1531, !1562, !1566}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !358, file: !283, line: 139, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !295}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !358, file: !283, line: 140, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !368, line: 230, size: 128, elements: !369)
!368 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!369 = !{!370, !383}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !367, file: !368, line: 231, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!374, !295, !378, !343}
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !245, line: 60, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !376, line: 73, baseType: !377)
!376 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !376, line: 15, baseType: !252)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !368, line: 30, size: 128, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !379, file: !368, line: 31, baseType: !286, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !379, file: !368, line: 32, baseType: !265, size: 16, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !367, file: !368, line: 232, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!374, !295, !378, !286, !387}
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !245, line: 55, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !376, line: 72, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !376, line: 16, baseType: !254)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !358, file: !283, line: 141, baseType: !391, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !358, file: !283, line: 142, baseType: !393, size: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !368, line: 84, size: 320, elements: !397)
!397 = !{!398, !399, !403, !1528, !1529}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !396, file: !368, line: 85, baseType: !286, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !396, file: !368, line: 86, baseType: !400, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!265, !295, !378, !273}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !396, file: !368, line: 88, baseType: !404, size: 64, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!265, !295, !407, !273}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !368, line: 168, size: 448, elements: !409)
!409 = !{!410, !411, !412, !413, !423, !424}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !408, file: !368, line: 169, baseType: !379, size: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !408, file: !368, line: 170, baseType: !387, size: 64, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !408, file: !368, line: 171, baseType: !246, size: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !408, file: !368, line: 172, baseType: !414, size: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!374, !417, !295, !407, !343, !420, !387}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !419, line: 526, flags: DIFlagFwdDecl)
!419 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !245, line: 46, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !376, line: 88, baseType: !422)
!422 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !408, file: !368, line: 174, baseType: !414, size: 64, offset: 320)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !408, file: !368, line: 176, baseType: !425, size: 64, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!273, !417, !295, !407, !428}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !430, line: 305, size: 1472, elements: !431)
!430 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!431 = !{!432, !433, !434, !435, !436, !444, !445, !1502, !1508, !1509, !1514, !1515, !1518, !1522, !1523, !1524, !1525, !1526}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !429, file: !430, line: 308, baseType: !254, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !429, file: !430, line: 309, baseType: !254, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !429, file: !430, line: 313, baseType: !428, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !429, file: !430, line: 313, baseType: !428, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !429, file: !430, line: 315, baseType: !437, size: 192, align: 64, offset: 256)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !438, line: 24, size: 192, align: 64, elements: !439)
!438 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!439 = !{!440, !441, !443}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !437, file: !438, line: 25, baseType: !254, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !437, file: !438, line: 26, baseType: !442, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !437, file: !438, line: 27, baseType: !442, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !429, file: !430, line: 323, baseType: !254, size: 64, offset: 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !429, file: !430, line: 327, baseType: !446, size: 64, offset: 512)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !430, line: 388, size: 7296, elements: !448)
!448 = !{!449, !1498}
!449 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !430, line: 389, baseType: !450, size: 7296)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !447, file: !430, line: 389, size: 7296, elements: !451)
!451 = !{!452, !453, !457, !461, !465, !466, !467, !468, !469, !477, !482, !483, !484, !485, !494, !495, !496, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !531, !539, !542, !574, !575, !1468, !1469, !1472, !1476, !1477, !1480, !1481, !1482, !1485, !1497}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !450, file: !430, line: 390, baseType: !428, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !450, file: !430, line: 391, baseType: !454, size: 64, offset: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !438, line: 31, size: 64, elements: !455)
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !454, file: !438, line: 32, baseType: !442, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !450, file: !430, line: 392, baseType: !458, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !270, line: 23, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !272, line: 31, baseType: !460)
!460 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !450, file: !430, line: 394, baseType: !462, size: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!254, !417, !254, !254, !254, !254}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !450, file: !430, line: 398, baseType: !254, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !450, file: !430, line: 399, baseType: !254, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !450, file: !430, line: 405, baseType: !254, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !450, file: !430, line: 406, baseType: !254, size: 64, offset: 448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !450, file: !430, line: 407, baseType: !470, size: 64, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !419, line: 286, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !419, line: 286, size: 64, elements: !473)
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !472, file: !419, line: 286, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !476, line: 18, baseType: !254)
!476 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!477 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !450, file: !430, line: 416, baseType: !478, size: 32, offset: 576)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !245, line: 168, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !245, line: 166, size: 32, elements: !480)
!480 = !{!481}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !479, file: !245, line: 167, baseType: !273, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !450, file: !430, line: 428, baseType: !478, size: 32, offset: 608)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !450, file: !430, line: 437, baseType: !478, size: 32, offset: 640)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !450, file: !430, line: 447, baseType: !478, size: 32, offset: 672)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !450, file: !430, line: 450, baseType: !486, size: 64, offset: 704)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !487, line: 13, baseType: !488)
!487 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !245, line: 175, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !245, line: 173, size: 64, elements: !490)
!490 = !{!491}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !489, file: !245, line: 174, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !270, line: 22, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !272, line: 30, baseType: !422)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !450, file: !430, line: 452, baseType: !273, size: 32, offset: 768)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !450, file: !430, line: 454, baseType: !302, offset: 800)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !450, file: !430, line: 457, baseType: !497, size: 256, offset: 832)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !498, line: 35, size: 256, elements: !499)
!498 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!499 = !{!500, !501, !502, !504}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !497, file: !498, line: 36, baseType: !486, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !497, file: !498, line: 42, baseType: !486, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !497, file: !498, line: 46, baseType: !503, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !303, line: 29, baseType: !310)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !497, file: !498, line: 47, baseType: !289, size: 128, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !450, file: !430, line: 459, baseType: !289, size: 128, offset: 1088)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !450, file: !430, line: 466, baseType: !254, size: 64, offset: 1216)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !450, file: !430, line: 467, baseType: !254, size: 64, offset: 1280)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !450, file: !430, line: 469, baseType: !254, size: 64, offset: 1344)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !450, file: !430, line: 470, baseType: !254, size: 64, offset: 1408)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !450, file: !430, line: 471, baseType: !488, size: 64, offset: 1472)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !450, file: !430, line: 472, baseType: !254, size: 64, offset: 1536)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !450, file: !430, line: 473, baseType: !254, size: 64, offset: 1600)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !450, file: !430, line: 474, baseType: !254, size: 64, offset: 1664)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !450, file: !430, line: 475, baseType: !254, size: 64, offset: 1728)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !450, file: !430, line: 477, baseType: !302, offset: 1792)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !450, file: !430, line: 478, baseType: !254, size: 64, offset: 1792)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !450, file: !430, line: 478, baseType: !254, size: 64, offset: 1856)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !450, file: !430, line: 478, baseType: !254, size: 64, offset: 1920)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !450, file: !430, line: 478, baseType: !254, size: 64, offset: 1984)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !450, file: !430, line: 479, baseType: !254, size: 64, offset: 2048)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !450, file: !430, line: 479, baseType: !254, size: 64, offset: 2112)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !450, file: !430, line: 479, baseType: !254, size: 64, offset: 2176)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !450, file: !430, line: 480, baseType: !254, size: 64, offset: 2240)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !450, file: !430, line: 480, baseType: !254, size: 64, offset: 2304)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !450, file: !430, line: 480, baseType: !254, size: 64, offset: 2368)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !450, file: !430, line: 480, baseType: !254, size: 64, offset: 2432)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !450, file: !430, line: 482, baseType: !528, size: 2816, offset: 2496)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 2816, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 44)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !450, file: !430, line: 488, baseType: !532, size: 256, offset: 5312)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !533, line: 60, size: 256, elements: !534)
!533 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !532, file: !533, line: 61, baseType: !536, size: 256)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 256, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 4)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !450, file: !430, line: 490, baseType: !540, size: 64, offset: 5568)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !430, line: 490, flags: DIFlagFwdDecl)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !450, file: !430, line: 493, baseType: !543, size: 896, offset: 5632)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !544, line: 53, baseType: !545)
!544 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !544, line: 13, size: 896, elements: !546)
!546 = !{!547, !548, !549, !550, !553, !554, !561, !562, !566, !567, !570}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !545, file: !544, line: 18, baseType: !458, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !545, file: !544, line: 28, baseType: !488, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !545, file: !544, line: 31, baseType: !497, size: 256, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !545, file: !544, line: 32, baseType: !551, size: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !544, line: 32, flags: DIFlagFwdDecl)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !545, file: !544, line: 37, baseType: !266, size: 16, offset: 448)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !545, file: !544, line: 40, baseType: !555, size: 192, offset: 512)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !556, line: 53, size: 192, elements: !557)
!556 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!557 = !{!558, !559, !560}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !555, file: !556, line: 54, baseType: !486, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !555, file: !556, line: 55, baseType: !302, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !555, file: !556, line: 59, baseType: !289, size: 128, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !545, file: !544, line: 41, baseType: !246, size: 64, offset: 704)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !545, file: !544, line: 42, baseType: !563, size: 64, offset: 768)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !544, line: 42, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !545, file: !544, line: 44, baseType: !478, size: 32, offset: 832)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !545, file: !544, line: 50, baseType: !568, size: 16, offset: 864)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !270, line: 19, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !272, line: 24, baseType: !266)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !545, file: !544, line: 51, baseType: !571, size: 16, offset: 880)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !270, line: 18, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !272, line: 23, baseType: !573)
!573 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !450, file: !430, line: 495, baseType: !254, size: 64, offset: 6528)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !450, file: !430, line: 497, baseType: !576, size: 64, offset: 6592)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !430, line: 381, size: 384, elements: !578)
!578 = !{!579, !580, !1467}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !577, file: !430, line: 382, baseType: !478, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !577, file: !430, line: 383, baseType: !581, size: 128, offset: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !430, line: 376, size: 128, elements: !582)
!582 = !{!583, !1465}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !581, file: !430, line: 377, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !586, line: 640, size: 48640, elements: !587)
!586 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!587 = !{!588, !594, !595, !596, !602, !603, !604, !605, !606, !607, !608, !609, !613, !631, !642, !737, !738, !739, !750, !751, !753, !754, !755, !756, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !835, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !891, !893, !894, !895, !907, !909, !910, !911, !912, !913, !919, !920, !921, !922, !923, !924, !925, !937, !942, !946, !947, !948, !951, !955, !958, !961, !964, !967, !970, !973, !976, !982, !983, !984, !990, !991, !992, !993, !994, !1003, !1004, !1005, !1006, !1007, !1012, !1013, !1014, !1017, !1018, !1021, !1024, !1027, !1030, !1033, !1036, !1037, !1117, !1120, !1123, !1124, !1127, !1128, !1129, !1135, !1136, !1137, !1150, !1151, !1152, !1164, !1169, !1172, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !585, file: !586, line: 646, baseType: !589, size: 128)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !590, line: 56, size: 128, elements: !591)
!590 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!591 = !{!592, !593}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !589, file: !590, line: 57, baseType: !254, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !589, file: !590, line: 58, baseType: !269, size: 32, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !585, file: !586, line: 649, baseType: !251, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !585, file: !586, line: 657, baseType: !246, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !585, file: !586, line: 658, baseType: !597, size: 32, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !598, line: 113, baseType: !599)
!598 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !598, line: 111, size: 32, elements: !600)
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !599, file: !598, line: 112, baseType: !478, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !585, file: !586, line: 660, baseType: !7, size: 32, offset: 288)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !585, file: !586, line: 661, baseType: !7, size: 32, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !585, file: !586, line: 684, baseType: !273, size: 32, offset: 352)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !585, file: !586, line: 686, baseType: !273, size: 32, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !585, file: !586, line: 687, baseType: !273, size: 32, offset: 416)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !585, file: !586, line: 688, baseType: !273, size: 32, offset: 448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !585, file: !586, line: 689, baseType: !7, size: 32, offset: 480)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !585, file: !586, line: 691, baseType: !610, size: 64, offset: 512)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!612 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !586, line: 691, flags: DIFlagFwdDecl)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !585, file: !586, line: 692, baseType: !614, size: 832, offset: 576)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !586, line: 451, size: 832, elements: !615)
!615 = !{!616, !621, !622, !623, !624, !625, !626, !627, !628, !629}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !614, file: !586, line: 453, baseType: !617, size: 128)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !586, line: 325, size: 128, elements: !618)
!618 = !{!619, !620}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !617, file: !586, line: 326, baseType: !254, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !617, file: !586, line: 327, baseType: !269, size: 32, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !614, file: !586, line: 454, baseType: !437, size: 192, align: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !614, file: !586, line: 455, baseType: !289, size: 128, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !614, file: !586, line: 456, baseType: !7, size: 32, offset: 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !614, file: !586, line: 458, baseType: !458, size: 64, offset: 512)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !614, file: !586, line: 459, baseType: !458, size: 64, offset: 576)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !614, file: !586, line: 460, baseType: !458, size: 64, offset: 640)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !614, file: !586, line: 461, baseType: !458, size: 64, offset: 704)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !614, file: !586, line: 463, baseType: !458, size: 64, offset: 768)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !614, file: !586, line: 465, baseType: !630, offset: 832)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !586, line: 415, elements: !316)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !585, file: !586, line: 693, baseType: !632, size: 384, offset: 1408)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !586, line: 489, size: 384, elements: !633)
!633 = !{!634, !635, !636, !637, !638, !639, !640}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !632, file: !586, line: 490, baseType: !289, size: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !632, file: !586, line: 491, baseType: !254, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !632, file: !586, line: 492, baseType: !254, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !632, file: !586, line: 493, baseType: !7, size: 32, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !632, file: !586, line: 494, baseType: !266, size: 16, offset: 288)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !632, file: !586, line: 495, baseType: !266, size: 16, offset: 304)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !632, file: !586, line: 497, baseType: !641, size: 64, offset: 320)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !585, file: !586, line: 697, baseType: !643, size: 1792, offset: 1792)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !586, line: 507, size: 1792, elements: !644)
!644 = !{!645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !734, !735}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !643, file: !586, line: 508, baseType: !437, size: 192, align: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !643, file: !586, line: 515, baseType: !458, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !643, file: !586, line: 516, baseType: !458, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !643, file: !586, line: 517, baseType: !458, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !643, file: !586, line: 518, baseType: !458, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !643, file: !586, line: 519, baseType: !458, size: 64, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !643, file: !586, line: 526, baseType: !492, size: 64, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !643, file: !586, line: 527, baseType: !458, size: 64, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !643, file: !586, line: 528, baseType: !7, size: 32, offset: 640)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !643, file: !586, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !643, file: !586, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !643, file: !586, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !643, file: !586, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !643, file: !586, line: 563, baseType: !659, size: 512, offset: 704)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !112, line: 118, size: 512, elements: !660)
!660 = !{!661, !669, !670, !675, !727, !731, !732, !733}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !659, file: !112, line: 119, baseType: !662, size: 256)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !663, line: 9, size: 256, elements: !664)
!663 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !662, file: !663, line: 10, baseType: !437, size: 192, align: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !662, file: !663, line: 11, baseType: !667, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !668, line: 29, baseType: !492)
!668 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !659, file: !112, line: 120, baseType: !667, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !659, file: !112, line: 121, baseType: !671, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!111, !674}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !659, file: !112, line: 122, baseType: !676, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !112, line: 159, size: 512, align: 512, elements: !678)
!678 = !{!679, !699, !700, !703, !713, !714, !722, !726}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !677, file: !112, line: 160, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !112, line: 214, size: 4608, align: 512, elements: !682)
!682 = !{!683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !681, file: !112, line: 215, baseType: !503)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !681, file: !112, line: 216, baseType: !7, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !681, file: !112, line: 217, baseType: !7, size: 32, offset: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !681, file: !112, line: 218, baseType: !7, size: 32, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !681, file: !112, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !681, file: !112, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !681, file: !112, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !681, file: !112, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !681, file: !112, line: 233, baseType: !667, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !681, file: !112, line: 234, baseType: !674, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !681, file: !112, line: 235, baseType: !667, size: 64, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !681, file: !112, line: 236, baseType: !674, size: 64, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !681, file: !112, line: 237, baseType: !696, size: 4096, offset: 512)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !677, size: 4096, elements: !697)
!697 = !{!698}
!698 = !DISubrange(count: 8)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !677, file: !112, line: 161, baseType: !7, size: 32, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !677, file: !112, line: 162, baseType: !701, size: 32, offset: 96)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !245, line: 27, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !376, line: 96, baseType: !273)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !677, file: !112, line: 163, baseType: !704, size: 32, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !705, line: 276, baseType: !706)
!705 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !705, line: 276, size: 32, elements: !707)
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !706, file: !705, line: 276, baseType: !709, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !705, line: 70, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !705, line: 65, size: 32, elements: !711)
!711 = !{!712}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !710, file: !705, line: 66, baseType: !7, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !677, file: !112, line: 164, baseType: !674, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !677, file: !112, line: 165, baseType: !715, size: 128, offset: 256)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !663, line: 14, size: 128, elements: !716)
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !715, file: !663, line: 15, baseType: !718, size: 128)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !438, line: 125, size: 128, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !718, file: !438, line: 126, baseType: !454, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !718, file: !438, line: 127, baseType: !442, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !677, file: !112, line: 166, baseType: !723, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!667}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !677, file: !112, line: 167, baseType: !667, size: 64, offset: 448)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !659, file: !112, line: 123, baseType: !728, size: 8, offset: 448)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !270, line: 17, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !272, line: 21, baseType: !730)
!730 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !659, file: !112, line: 124, baseType: !728, size: 8, offset: 456)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !659, file: !112, line: 125, baseType: !728, size: 8, offset: 464)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !659, file: !112, line: 126, baseType: !728, size: 8, offset: 472)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !643, file: !586, line: 572, baseType: !659, size: 512, offset: 1216)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !643, file: !586, line: 580, baseType: !736, size: 64, offset: 1728)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !585, file: !586, line: 721, baseType: !7, size: 32, offset: 3584)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !585, file: !586, line: 722, baseType: !273, size: 32, offset: 3616)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !585, file: !586, line: 723, baseType: !740, size: 64, offset: 3648)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !743, line: 17, baseType: !744)
!743 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !743, line: 17, size: 64, elements: !745)
!745 = !{!746}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !744, file: !743, line: 17, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 64, elements: !748)
!748 = !{!749}
!749 = !DISubrange(count: 1)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !585, file: !586, line: 724, baseType: !742, size: 64, offset: 3712)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !585, file: !586, line: 749, baseType: !752, offset: 3776)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !586, line: 290, elements: !316)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !585, file: !586, line: 751, baseType: !289, size: 128, offset: 3776)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !585, file: !586, line: 757, baseType: !446, size: 64, offset: 3904)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !585, file: !586, line: 758, baseType: !446, size: 64, offset: 3968)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !585, file: !586, line: 761, baseType: !757, size: 320, offset: 4032)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !533, line: 34, size: 320, elements: !758)
!758 = !{!759, !760}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !757, file: !533, line: 35, baseType: !458, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !757, file: !533, line: 36, baseType: !761, size: 256, offset: 64)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 256, elements: !537)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !585, file: !586, line: 766, baseType: !273, size: 32, offset: 4352)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !585, file: !586, line: 767, baseType: !273, size: 32, offset: 4384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !585, file: !586, line: 768, baseType: !273, size: 32, offset: 4416)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !585, file: !586, line: 770, baseType: !273, size: 32, offset: 4448)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !585, file: !586, line: 772, baseType: !254, size: 64, offset: 4480)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !585, file: !586, line: 775, baseType: !7, size: 32, offset: 4544)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !585, file: !586, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !585, file: !586, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !585, file: !586, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !585, file: !586, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !585, file: !586, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !585, file: !586, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !585, file: !586, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !585, file: !586, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !585, file: !586, line: 831, baseType: !254, size: 64, offset: 4672)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !585, file: !586, line: 833, baseType: !778, size: 384, offset: 4736)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !117, line: 25, size: 384, elements: !779)
!779 = !{!780, !785}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !778, file: !117, line: 26, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!252, !784}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, scope: !778, file: !117, line: 27, baseType: !786, size: 320, offset: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !778, file: !117, line: 27, size: 320, elements: !787)
!787 = !{!788, !798, !825}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !786, file: !117, line: 36, baseType: !789, size: 320)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !786, file: !117, line: 29, size: 320, elements: !790)
!790 = !{!791, !793, !794, !795, !796, !797}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !789, file: !117, line: 30, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !789, file: !117, line: 31, baseType: !269, size: 32, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !789, file: !117, line: 32, baseType: !269, size: 32, offset: 96)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !789, file: !117, line: 33, baseType: !269, size: 32, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !789, file: !117, line: 34, baseType: !458, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !789, file: !117, line: 35, baseType: !792, size: 64, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !786, file: !117, line: 46, baseType: !799, size: 192)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !786, file: !117, line: 38, size: 192, elements: !800)
!800 = !{!801, !802, !803, !824}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !799, file: !117, line: 39, baseType: !701, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !799, file: !117, line: 40, baseType: !116, size: 32, offset: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, scope: !799, file: !117, line: 41, baseType: !804, size: 64, offset: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !799, file: !117, line: 41, size: 64, elements: !805)
!805 = !{!806, !814}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !804, file: !117, line: 42, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !809, line: 7, size: 128, elements: !810)
!809 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!810 = !{!811, !813}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !808, file: !809, line: 8, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !376, line: 93, baseType: !422)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !808, file: !809, line: 9, baseType: !422, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !804, file: !117, line: 43, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !817, line: 7, size: 64, elements: !818)
!817 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!818 = !{!819, !823}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !816, file: !817, line: 8, baseType: !820, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !817, line: 5, baseType: !821)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !270, line: 20, baseType: !822)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !272, line: 26, baseType: !273)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !816, file: !817, line: 9, baseType: !821, size: 32, offset: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !799, file: !117, line: 45, baseType: !458, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !786, file: !117, line: 54, baseType: !826, size: 256)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !786, file: !117, line: 48, size: 256, elements: !827)
!827 = !{!828, !831, !832, !833, !834}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !826, file: !117, line: 49, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !117, line: 14, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !826, file: !117, line: 50, baseType: !273, size: 32, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !826, file: !117, line: 51, baseType: !273, size: 32, offset: 96)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !826, file: !117, line: 52, baseType: !254, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !826, file: !117, line: 53, baseType: !254, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !585, file: !586, line: 835, baseType: !836, size: 32, offset: 5120)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !245, line: 22, baseType: !837)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !376, line: 28, baseType: !273)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !585, file: !586, line: 836, baseType: !836, size: 32, offset: 5152)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !585, file: !586, line: 840, baseType: !254, size: 64, offset: 5184)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !585, file: !586, line: 849, baseType: !584, size: 64, offset: 5248)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !585, file: !586, line: 852, baseType: !584, size: 64, offset: 5312)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !585, file: !586, line: 857, baseType: !289, size: 128, offset: 5376)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !585, file: !586, line: 858, baseType: !289, size: 128, offset: 5504)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !585, file: !586, line: 859, baseType: !584, size: 64, offset: 5632)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !585, file: !586, line: 867, baseType: !289, size: 128, offset: 5696)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !585, file: !586, line: 868, baseType: !289, size: 128, offset: 5824)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !585, file: !586, line: 871, baseType: !848, size: 64, offset: 5952)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !850, line: 59, size: 768, elements: !851)
!850 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!851 = !{!852, !853, !854, !855, !866, !867, !874, !883}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !849, file: !850, line: 61, baseType: !597, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !849, file: !850, line: 62, baseType: !7, size: 32, offset: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !849, file: !850, line: 63, baseType: !302, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !849, file: !850, line: 65, baseType: !856, size: 256, offset: 64)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !857, size: 256, elements: !537)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !245, line: 182, size: 64, elements: !858)
!858 = !{!859}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !857, file: !245, line: 183, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !245, line: 186, size: 128, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !861, file: !245, line: 187, baseType: !860, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !861, file: !245, line: 187, baseType: !865, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !849, file: !850, line: 66, baseType: !857, size: 64, offset: 320)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !849, file: !850, line: 68, baseType: !868, size: 128, offset: 384)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !869, line: 40, baseType: !870)
!869 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !869, line: 36, size: 128, elements: !871)
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !870, file: !869, line: 37, baseType: !302)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !870, file: !869, line: 38, baseType: !289, size: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !849, file: !850, line: 69, baseType: !875, size: 128, align: 64, offset: 512)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !245, line: 216, size: 128, align: 64, elements: !876)
!876 = !{!877, !879}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !875, file: !245, line: 217, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !875, file: !245, line: 218, baseType: !880, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !878}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !849, file: !850, line: 70, baseType: !884, size: 128, offset: 640)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !885, size: 128, elements: !748)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !850, line: 54, size: 128, elements: !886)
!886 = !{!887, !888}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !885, file: !850, line: 55, baseType: !273, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !885, file: !850, line: 56, baseType: !889, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !850, line: 56, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !585, file: !586, line: 872, baseType: !892, size: 512, offset: 6016)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, size: 512, elements: !537)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !585, file: !586, line: 873, baseType: !289, size: 128, offset: 6528)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !585, file: !586, line: 874, baseType: !289, size: 128, offset: 6656)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !585, file: !586, line: 876, baseType: !896, size: 64, offset: 6784)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !898, line: 26, size: 192, elements: !899)
!898 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !897, file: !898, line: 27, baseType: !7, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !897, file: !898, line: 28, baseType: !902, size: 128, offset: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !903, line: 43, size: 128, elements: !904)
!903 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !902, file: !903, line: 44, baseType: !503)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !902, file: !903, line: 45, baseType: !289, size: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !585, file: !586, line: 879, baseType: !908, size: 64, offset: 6848)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !585, file: !586, line: 882, baseType: !908, size: 64, offset: 6912)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !585, file: !586, line: 884, baseType: !458, size: 64, offset: 6976)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !585, file: !586, line: 885, baseType: !458, size: 64, offset: 7040)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !585, file: !586, line: 890, baseType: !458, size: 64, offset: 7104)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !585, file: !586, line: 891, baseType: !914, size: 128, offset: 7168)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !586, line: 242, size: 128, elements: !915)
!915 = !{!916, !917, !918}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !914, file: !586, line: 244, baseType: !458, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !914, file: !586, line: 245, baseType: !458, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !914, file: !586, line: 246, baseType: !503, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !585, file: !586, line: 900, baseType: !254, size: 64, offset: 7296)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !585, file: !586, line: 901, baseType: !254, size: 64, offset: 7360)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !585, file: !586, line: 904, baseType: !458, size: 64, offset: 7424)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !585, file: !586, line: 907, baseType: !458, size: 64, offset: 7488)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !585, file: !586, line: 910, baseType: !254, size: 64, offset: 7552)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !585, file: !586, line: 911, baseType: !254, size: 64, offset: 7616)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !585, file: !586, line: 914, baseType: !926, size: 640, offset: 7680)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !927, line: 123, size: 640, elements: !928)
!927 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!928 = !{!929, !935, !936}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !926, file: !927, line: 124, baseType: !930, size: 576)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !931, size: 576, elements: !344)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !927, line: 108, size: 192, elements: !932)
!932 = !{!933, !934}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !931, file: !927, line: 109, baseType: !458, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !931, file: !927, line: 110, baseType: !715, size: 128, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !926, file: !927, line: 125, baseType: !7, size: 32, offset: 576)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !926, file: !927, line: 126, baseType: !7, size: 32, offset: 608)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !585, file: !586, line: 917, baseType: !938, size: 192, offset: 8320)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !927, line: 134, size: 192, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !938, file: !927, line: 135, baseType: !875, size: 128, align: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !938, file: !927, line: 136, baseType: !7, size: 32, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !585, file: !586, line: 923, baseType: !943, size: 64, offset: 8512)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !945)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !586, line: 923, flags: DIFlagFwdDecl)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !585, file: !586, line: 926, baseType: !943, size: 64, offset: 8576)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !585, file: !586, line: 929, baseType: !943, size: 64, offset: 8640)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !585, file: !586, line: 933, baseType: !949, size: 64, offset: 8704)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !586, line: 933, flags: DIFlagFwdDecl)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !585, file: !586, line: 943, baseType: !952, size: 128, offset: 8768)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 128, elements: !953)
!953 = !{!954}
!954 = !DISubrange(count: 16)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !585, file: !586, line: 945, baseType: !956, size: 64, offset: 8896)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !586, line: 49, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !585, file: !586, line: 956, baseType: !959, size: 64, offset: 8960)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !586, line: 45, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !585, file: !586, line: 959, baseType: !962, size: 64, offset: 9024)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !586, line: 959, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !585, file: !586, line: 962, baseType: !965, size: 64, offset: 9088)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !586, line: 66, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !585, file: !586, line: 966, baseType: !968, size: 64, offset: 9152)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !586, line: 50, flags: DIFlagFwdDecl)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !585, file: !586, line: 969, baseType: !971, size: 64, offset: 9216)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !927, line: 223, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !585, file: !586, line: 970, baseType: !974, size: 64, offset: 9280)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !586, line: 62, flags: DIFlagFwdDecl)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !585, file: !586, line: 971, baseType: !977, size: 64, offset: 9344)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !978, line: 25, baseType: !979)
!978 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !978, line: 23, size: 64, elements: !980)
!980 = !{!981}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !979, file: !978, line: 24, baseType: !747, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !585, file: !586, line: 972, baseType: !977, size: 64, offset: 9408)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !585, file: !586, line: 974, baseType: !977, size: 64, offset: 9472)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !585, file: !586, line: 975, baseType: !985, size: 192, offset: 9536)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !986, line: 30, size: 192, elements: !987)
!986 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !985, file: !986, line: 31, baseType: !289, size: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !985, file: !986, line: 32, baseType: !977, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !585, file: !586, line: 976, baseType: !254, size: 64, offset: 9728)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !585, file: !586, line: 977, baseType: !387, size: 64, offset: 9792)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !585, file: !586, line: 978, baseType: !7, size: 32, offset: 9856)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !585, file: !586, line: 980, baseType: !878, size: 64, offset: 9920)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !585, file: !586, line: 989, baseType: !995, size: 128, offset: 9984)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !996, line: 35, size: 128, elements: !997)
!996 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!997 = !{!998, !999, !1000}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !995, file: !996, line: 36, baseType: !273, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !995, file: !996, line: 37, baseType: !478, size: 32, offset: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !995, file: !996, line: 38, baseType: !1001, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !996, line: 23, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !585, file: !586, line: 992, baseType: !458, size: 64, offset: 10112)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !585, file: !586, line: 993, baseType: !458, size: 64, offset: 10176)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !585, file: !586, line: 996, baseType: !302, offset: 10240)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !585, file: !586, line: 999, baseType: !503, offset: 10240)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !585, file: !586, line: 1001, baseType: !1008, size: 64, offset: 10240)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !586, line: 636, size: 64, elements: !1009)
!1009 = !{!1010}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1008, file: !586, line: 637, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !585, file: !586, line: 1005, baseType: !718, size: 128, offset: 10304)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !585, file: !586, line: 1007, baseType: !584, size: 64, offset: 10432)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !585, file: !586, line: 1009, baseType: !1015, size: 64, offset: 10496)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !586, line: 1009, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !585, file: !586, line: 1043, baseType: !246, size: 64, offset: 10560)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !585, file: !586, line: 1046, baseType: !1019, size: 64, offset: 10624)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !586, line: 41, flags: DIFlagFwdDecl)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !585, file: !586, line: 1050, baseType: !1022, size: 64, offset: 10688)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !586, line: 42, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !585, file: !586, line: 1054, baseType: !1025, size: 64, offset: 10752)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !586, line: 55, flags: DIFlagFwdDecl)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !585, file: !586, line: 1056, baseType: !1028, size: 64, offset: 10816)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !586, line: 40, flags: DIFlagFwdDecl)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !585, file: !586, line: 1058, baseType: !1031, size: 64, offset: 10880)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !586, line: 47, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !585, file: !586, line: 1061, baseType: !1034, size: 64, offset: 10944)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !586, line: 43, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !585, file: !586, line: 1064, baseType: !254, size: 64, offset: 11008)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !585, file: !586, line: 1065, baseType: !1038, size: 64, offset: 11072)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !986, line: 14, baseType: !1040)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !986, line: 12, size: 384, elements: !1041)
!1041 = !{!1042}
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !1040, file: !986, line: 13, baseType: !1043, size: 384)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1040, file: !986, line: 13, size: 384, elements: !1044)
!1044 = !{!1045, !1046, !1047, !1048}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1043, file: !986, line: 13, baseType: !273, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1043, file: !986, line: 13, baseType: !273, size: 32, offset: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1043, file: !986, line: 13, baseType: !273, size: 32, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1043, file: !986, line: 13, baseType: !1049, size: 256, offset: 128)
!1049 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1050, line: 32, size: 256, elements: !1051)
!1050 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1051 = !{!1052, !1058, !1071, !1077, !1086, !1106, !1111}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1049, file: !1050, line: 37, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1049, file: !1050, line: 34, size: 64, elements: !1054)
!1054 = !{!1055, !1056}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1053, file: !1050, line: 35, baseType: !837, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1053, file: !1050, line: 36, baseType: !1057, size: 32, offset: 32)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !376, line: 49, baseType: !7)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1049, file: !1050, line: 45, baseType: !1059, size: 192)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1049, file: !1050, line: 40, size: 192, elements: !1060)
!1060 = !{!1061, !1063, !1064, !1070}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1059, file: !1050, line: 41, baseType: !1062, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !376, line: 95, baseType: !273)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1059, file: !1050, line: 42, baseType: !273, size: 32, offset: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1059, file: !1050, line: 43, baseType: !1065, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1050, line: 11, baseType: !1066)
!1066 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1050, line: 8, size: 64, elements: !1067)
!1067 = !{!1068, !1069}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1066, file: !1050, line: 9, baseType: !273, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1066, file: !1050, line: 10, baseType: !246, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1059, file: !1050, line: 44, baseType: !273, size: 32, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1049, file: !1050, line: 52, baseType: !1072, size: 128)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1049, file: !1050, line: 48, size: 128, elements: !1073)
!1073 = !{!1074, !1075, !1076}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1072, file: !1050, line: 49, baseType: !837, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1072, file: !1050, line: 50, baseType: !1057, size: 32, offset: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1072, file: !1050, line: 51, baseType: !1065, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1049, file: !1050, line: 61, baseType: !1078, size: 256)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1049, file: !1050, line: 55, size: 256, elements: !1079)
!1079 = !{!1080, !1081, !1082, !1083, !1085}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1078, file: !1050, line: 56, baseType: !837, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1078, file: !1050, line: 57, baseType: !1057, size: 32, offset: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1078, file: !1050, line: 58, baseType: !273, size: 32, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1078, file: !1050, line: 59, baseType: !1084, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !376, line: 94, baseType: !377)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1078, file: !1050, line: 60, baseType: !1084, size: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1049, file: !1050, line: 95, baseType: !1087, size: 256)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1049, file: !1050, line: 64, size: 256, elements: !1088)
!1088 = !{!1089, !1090}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1087, file: !1050, line: 65, baseType: !246, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1087, file: !1050, line: 77, baseType: !1091, size: 192, offset: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1087, file: !1050, line: 77, size: 192, elements: !1092)
!1092 = !{!1093, !1094, !1101}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1091, file: !1050, line: 82, baseType: !573, size: 16)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1091, file: !1050, line: 88, baseType: !1095, size: 192)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1091, file: !1050, line: 84, size: 192, elements: !1096)
!1096 = !{!1097, !1099, !1100}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1095, file: !1050, line: 85, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 64, elements: !697)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1095, file: !1050, line: 86, baseType: !246, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1095, file: !1050, line: 87, baseType: !246, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1091, file: !1050, line: 93, baseType: !1102, size: 96)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1091, file: !1050, line: 90, size: 96, elements: !1103)
!1103 = !{!1104, !1105}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1102, file: !1050, line: 91, baseType: !1098, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1102, file: !1050, line: 92, baseType: !271, size: 32, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1049, file: !1050, line: 101, baseType: !1107, size: 128)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1049, file: !1050, line: 98, size: 128, elements: !1108)
!1108 = !{!1109, !1110}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1107, file: !1050, line: 99, baseType: !252, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1107, file: !1050, line: 100, baseType: !273, size: 32, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1049, file: !1050, line: 108, baseType: !1112, size: 128)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1049, file: !1050, line: 104, size: 128, elements: !1113)
!1113 = !{!1114, !1115, !1116}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1112, file: !1050, line: 105, baseType: !246, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1112, file: !1050, line: 106, baseType: !273, size: 32, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1112, file: !1050, line: 107, baseType: !7, size: 32, offset: 96)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !585, file: !586, line: 1067, baseType: !1118, offset: 11136)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1119, line: 12, elements: !316)
!1119 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !585, file: !586, line: 1099, baseType: !1121, size: 64, offset: 11136)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !586, line: 56, flags: DIFlagFwdDecl)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !585, file: !586, line: 1103, baseType: !289, size: 128, offset: 11200)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !585, file: !586, line: 1104, baseType: !1125, size: 64, offset: 11328)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !586, line: 46, flags: DIFlagFwdDecl)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !585, file: !586, line: 1105, baseType: !555, size: 192, offset: 11392)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !585, file: !586, line: 1106, baseType: !7, size: 32, offset: 11584)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !585, file: !586, line: 1109, baseType: !1130, size: 128, offset: 11648)
!1130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1131, size: 128, elements: !1133)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !586, line: 51, flags: DIFlagFwdDecl)
!1133 = !{!1134}
!1134 = !DISubrange(count: 2)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !585, file: !586, line: 1110, baseType: !555, size: 192, offset: 11776)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !585, file: !586, line: 1111, baseType: !289, size: 128, offset: 11968)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !585, file: !586, line: 1173, baseType: !1138, size: 64, offset: 12096)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1140, line: 62, size: 256, align: 256, elements: !1141)
!1140 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1141 = !{!1142, !1143, !1144, !1149}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1139, file: !1140, line: 75, baseType: !271, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1139, file: !1140, line: 90, baseType: !271, size: 32, offset: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1139, file: !1140, line: 124, baseType: !1145, size: 64, offset: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1139, file: !1140, line: 109, size: 64, elements: !1146)
!1146 = !{!1147, !1148}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1145, file: !1140, line: 110, baseType: !459, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1145, file: !1140, line: 112, baseType: !459, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1139, file: !1140, line: 144, baseType: !271, size: 32, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !585, file: !586, line: 1174, baseType: !269, size: 32, offset: 12160)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !585, file: !586, line: 1179, baseType: !254, size: 64, offset: 12224)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !585, file: !586, line: 1182, baseType: !1153, size: 128, offset: 12288)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !533, line: 76, size: 128, elements: !1154)
!1154 = !{!1155, !1160, !1163}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1153, file: !533, line: 85, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1157, line: 7, size: 64, elements: !1158)
!1157 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1158 = !{!1159}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1156, file: !1157, line: 12, baseType: !744, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1153, file: !533, line: 88, baseType: !1161, size: 8, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !245, line: 30, baseType: !1162)
!1162 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1153, file: !533, line: 95, baseType: !1161, size: 8, offset: 72)
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !585, file: !586, line: 1184, baseType: !1165, size: 128, offset: 12416)
!1165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !585, file: !586, line: 1184, size: 128, elements: !1166)
!1166 = !{!1167, !1168}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1165, file: !586, line: 1185, baseType: !597, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1165, file: !586, line: 1186, baseType: !875, size: 128, align: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !585, file: !586, line: 1190, baseType: !1170, size: 64, offset: 12544)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !586, line: 53, flags: DIFlagFwdDecl)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !585, file: !586, line: 1192, baseType: !1173, size: 128, offset: 12608)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !533, line: 64, size: 128, elements: !1174)
!1174 = !{!1175, !1268, !1269}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1173, file: !533, line: 65, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !430, line: 68, size: 512, align: 128, elements: !1178)
!1178 = !{!1179, !1180, !1260, !1267}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1177, file: !430, line: 69, baseType: !254, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !430, line: 77, baseType: !1181, size: 320, offset: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1177, file: !430, line: 77, size: 320, elements: !1182)
!1182 = !{!1183, !1192, !1197, !1225, !1233, !1239, !1252, !1259}
!1183 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !430, line: 78, baseType: !1184, size: 320)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1181, file: !430, line: 78, size: 320, elements: !1185)
!1185 = !{!1186, !1187, !1190, !1191}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1184, file: !430, line: 84, baseType: !289, size: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1184, file: !430, line: 86, baseType: !1188, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !430, line: 26, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1184, file: !430, line: 87, baseType: !254, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1184, file: !430, line: 94, baseType: !254, size: 64, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !430, line: 96, baseType: !1193, size: 64)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1181, file: !430, line: 96, size: 64, elements: !1194)
!1194 = !{!1195}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1193, file: !430, line: 101, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !245, line: 143, baseType: !458)
!1197 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !430, line: 103, baseType: !1198, size: 320)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1181, file: !430, line: 103, size: 320, elements: !1199)
!1199 = !{!1200, !1210, !1213, !1214}
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !430, line: 104, baseType: !1201, size: 128)
!1201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1198, file: !430, line: 104, size: 128, elements: !1202)
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1201, file: !430, line: 105, baseType: !289, size: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !430, line: 106, baseType: !1205, size: 128)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !430, line: 106, size: 128, elements: !1206)
!1206 = !{!1207, !1208, !1209}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1205, file: !430, line: 107, baseType: !1176, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1205, file: !430, line: 109, baseType: !273, size: 32, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1205, file: !430, line: 110, baseType: !273, size: 32, offset: 96)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1198, file: !430, line: 117, baseType: !1211, size: 64, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !430, line: 117, flags: DIFlagFwdDecl)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1198, file: !430, line: 119, baseType: !246, size: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !430, line: 120, baseType: !1215, size: 64, offset: 256)
!1215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1198, file: !430, line: 120, size: 64, elements: !1216)
!1216 = !{!1217, !1218, !1219}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1215, file: !430, line: 121, baseType: !246, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1215, file: !430, line: 122, baseType: !254, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !430, line: 123, baseType: !1220, size: 32)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1215, file: !430, line: 123, size: 32, elements: !1221)
!1221 = !{!1222, !1223, !1224}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1220, file: !430, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1220, file: !430, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1220, file: !430, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !430, line: 130, baseType: !1226, size: 192)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1181, file: !430, line: 130, size: 192, elements: !1227)
!1227 = !{!1228, !1229, !1230, !1231, !1232}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1226, file: !430, line: 131, baseType: !254, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1226, file: !430, line: 134, baseType: !730, size: 8, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1226, file: !430, line: 135, baseType: !730, size: 8, offset: 72)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1226, file: !430, line: 136, baseType: !478, size: 32, offset: 96)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1226, file: !430, line: 137, baseType: !7, size: 32, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !430, line: 139, baseType: !1234, size: 256)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1181, file: !430, line: 139, size: 256, elements: !1235)
!1235 = !{!1236, !1237, !1238}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1234, file: !430, line: 140, baseType: !254, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1234, file: !430, line: 141, baseType: !478, size: 32, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1234, file: !430, line: 143, baseType: !289, size: 128, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !430, line: 145, baseType: !1240, size: 256)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1181, file: !430, line: 145, size: 256, elements: !1241)
!1241 = !{!1242, !1243, !1245, !1246, !1251}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1240, file: !430, line: 146, baseType: !254, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1240, file: !430, line: 147, baseType: !1244, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !419, line: 509, baseType: !1176)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1240, file: !430, line: 148, baseType: !254, size: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !430, line: 149, baseType: !1247, size: 64, offset: 192)
!1247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1240, file: !430, line: 149, size: 64, elements: !1248)
!1248 = !{!1249, !1250}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1247, file: !430, line: 150, baseType: !446, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1247, file: !430, line: 151, baseType: !478, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1240, file: !430, line: 156, baseType: !302, offset: 256)
!1252 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !430, line: 159, baseType: !1253, size: 128)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1181, file: !430, line: 159, size: 128, elements: !1254)
!1254 = !{!1255, !1258}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1253, file: !430, line: 161, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !430, line: 161, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1253, file: !430, line: 162, baseType: !246, size: 64, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1181, file: !430, line: 176, baseType: !875, size: 128, align: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !430, line: 179, baseType: !1261, size: 32, offset: 384)
!1261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1177, file: !430, line: 179, size: 32, elements: !1262)
!1262 = !{!1263, !1264, !1265, !1266}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1261, file: !430, line: 184, baseType: !478, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1261, file: !430, line: 192, baseType: !7, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1261, file: !430, line: 194, baseType: !7, size: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1261, file: !430, line: 195, baseType: !273, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1177, file: !430, line: 199, baseType: !478, size: 32, offset: 416)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1173, file: !533, line: 67, baseType: !271, size: 32, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1173, file: !533, line: 68, baseType: !271, size: 32, offset: 96)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !585, file: !586, line: 1206, baseType: !273, size: 32, offset: 12736)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !585, file: !586, line: 1207, baseType: !273, size: 32, offset: 12768)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !585, file: !586, line: 1209, baseType: !254, size: 64, offset: 12800)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !585, file: !586, line: 1219, baseType: !458, size: 64, offset: 12864)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !585, file: !586, line: 1220, baseType: !458, size: 64, offset: 12928)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !585, file: !586, line: 1317, baseType: !273, size: 32, offset: 12992)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !585, file: !586, line: 1319, baseType: !584, size: 64, offset: 13056)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !585, file: !586, line: 1322, baseType: !1278, size: 64, offset: 13120)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !586, line: 1322, flags: DIFlagFwdDecl)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !585, file: !586, line: 1326, baseType: !597, size: 32, offset: 13184)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !585, file: !586, line: 1342, baseType: !246, size: 64, offset: 13248)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !585, file: !586, line: 1343, baseType: !459, size: 64, offset: 13312)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !585, file: !586, line: 1344, baseType: !458, size: 64, offset: 13376)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !585, file: !586, line: 1345, baseType: !459, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !585, file: !586, line: 1346, baseType: !459, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !585, file: !586, line: 1347, baseType: !459, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !585, file: !586, line: 1348, baseType: !875, size: 128, align: 64, offset: 13504)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !585, file: !586, line: 1358, baseType: !1289, size: 34816, offset: 13824)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1290, line: 485, size: 34816, elements: !1291)
!1290 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1291 = !{!1292, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1321, !1322, !1323, !1324, !1325, !1326, !1329, !1330, !1331}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1289, file: !1290, line: 487, baseType: !1293, size: 192)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 192, elements: !344)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1295, line: 16, size: 64, elements: !1296)
!1295 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1296 = !{!1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1294, file: !1295, line: 17, baseType: !568, size: 16)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1294, file: !1295, line: 18, baseType: !568, size: 16, offset: 16)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1294, file: !1295, line: 19, baseType: !568, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1294, file: !1295, line: 19, baseType: !568, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1294, file: !1295, line: 19, baseType: !568, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1294, file: !1295, line: 19, baseType: !568, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1294, file: !1295, line: 19, baseType: !568, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1294, file: !1295, line: 20, baseType: !568, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1294, file: !1295, line: 20, baseType: !568, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1294, file: !1295, line: 20, baseType: !568, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1294, file: !1295, line: 20, baseType: !568, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1294, file: !1295, line: 20, baseType: !568, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1294, file: !1295, line: 20, baseType: !568, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1289, file: !1290, line: 491, baseType: !254, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1289, file: !1290, line: 495, baseType: !266, size: 16, offset: 256)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1289, file: !1290, line: 496, baseType: !266, size: 16, offset: 272)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1289, file: !1290, line: 497, baseType: !266, size: 16, offset: 288)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1289, file: !1290, line: 498, baseType: !266, size: 16, offset: 304)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1289, file: !1290, line: 502, baseType: !254, size: 64, offset: 320)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1289, file: !1290, line: 503, baseType: !254, size: 64, offset: 384)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1289, file: !1290, line: 514, baseType: !1318, size: 256, offset: 448)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1319, size: 256, elements: !537)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1290, line: 483, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1289, file: !1290, line: 516, baseType: !254, size: 64, offset: 704)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1289, file: !1290, line: 518, baseType: !254, size: 64, offset: 768)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1289, file: !1290, line: 520, baseType: !254, size: 64, offset: 832)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1289, file: !1290, line: 521, baseType: !254, size: 64, offset: 896)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1289, file: !1290, line: 522, baseType: !254, size: 64, offset: 960)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1289, file: !1290, line: 528, baseType: !1327, size: 64, offset: 1024)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1290, line: 10, flags: DIFlagFwdDecl)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1289, file: !1290, line: 535, baseType: !254, size: 64, offset: 1088)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1289, file: !1290, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1289, file: !1290, line: 540, baseType: !1332, size: 33280, offset: 1536)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1333, line: 317, size: 33280, elements: !1334)
!1333 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1334 = !{!1335, !1336, !1337}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1332, file: !1333, line: 330, baseType: !7, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1332, file: !1333, line: 337, baseType: !254, size: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1332, file: !1333, line: 348, baseType: !1338, size: 32768, offset: 512)
!1338 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1333, line: 304, size: 32768, elements: !1339)
!1339 = !{!1340, !1355, !1394, !1444, !1461}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1338, file: !1333, line: 305, baseType: !1341, size: 896)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1333, line: 12, size: 896, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1354}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1341, file: !1333, line: 13, baseType: !269, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1341, file: !1333, line: 14, baseType: !269, size: 32, offset: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1341, file: !1333, line: 15, baseType: !269, size: 32, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1341, file: !1333, line: 16, baseType: !269, size: 32, offset: 96)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1341, file: !1333, line: 17, baseType: !269, size: 32, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1341, file: !1333, line: 18, baseType: !269, size: 32, offset: 160)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1341, file: !1333, line: 19, baseType: !269, size: 32, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1341, file: !1333, line: 22, baseType: !1351, size: 640, offset: 224)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 640, elements: !1352)
!1352 = !{!1353}
!1353 = !DISubrange(count: 20)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1341, file: !1333, line: 25, baseType: !269, size: 32, offset: 864)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1338, file: !1333, line: 306, baseType: !1356, size: 4096, align: 128)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1333, line: 34, size: 4096, align: 128, elements: !1357)
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1377, !1378, !1379, !1383, !1385, !1389}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1356, file: !1333, line: 35, baseType: !568, size: 16)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1356, file: !1333, line: 36, baseType: !568, size: 16, offset: 16)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1356, file: !1333, line: 37, baseType: !568, size: 16, offset: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1356, file: !1333, line: 38, baseType: !568, size: 16, offset: 48)
!1362 = !DIDerivedType(tag: DW_TAG_member, scope: !1356, file: !1333, line: 39, baseType: !1363, size: 128, offset: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1356, file: !1333, line: 39, size: 128, elements: !1364)
!1364 = !{!1365, !1370}
!1365 = !DIDerivedType(tag: DW_TAG_member, scope: !1363, file: !1333, line: 40, baseType: !1366, size: 128)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1363, file: !1333, line: 40, size: 128, elements: !1367)
!1367 = !{!1368, !1369}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1366, file: !1333, line: 41, baseType: !458, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1366, file: !1333, line: 42, baseType: !458, size: 64, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, scope: !1363, file: !1333, line: 44, baseType: !1371, size: 128)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1363, file: !1333, line: 44, size: 128, elements: !1372)
!1372 = !{!1373, !1374, !1375, !1376}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1371, file: !1333, line: 45, baseType: !269, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1371, file: !1333, line: 46, baseType: !269, size: 32, offset: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1371, file: !1333, line: 47, baseType: !269, size: 32, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1371, file: !1333, line: 48, baseType: !269, size: 32, offset: 96)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1356, file: !1333, line: 51, baseType: !269, size: 32, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1356, file: !1333, line: 52, baseType: !269, size: 32, offset: 224)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1356, file: !1333, line: 55, baseType: !1380, size: 1024, offset: 256)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 1024, elements: !1381)
!1381 = !{!1382}
!1382 = !DISubrange(count: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1356, file: !1333, line: 58, baseType: !1384, size: 2048, offset: 1280)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 2048, elements: !348)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1356, file: !1333, line: 60, baseType: !1386, size: 384, offset: 3328)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 384, elements: !1387)
!1387 = !{!1388}
!1388 = !DISubrange(count: 12)
!1389 = !DIDerivedType(tag: DW_TAG_member, scope: !1356, file: !1333, line: 62, baseType: !1390, size: 384, offset: 3712)
!1390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1356, file: !1333, line: 62, size: 384, elements: !1391)
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1390, file: !1333, line: 63, baseType: !1386, size: 384)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1390, file: !1333, line: 64, baseType: !1386, size: 384)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1338, file: !1333, line: 307, baseType: !1395, size: 1088)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1333, line: 79, size: 1088, elements: !1396)
!1396 = !{!1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1443}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1395, file: !1333, line: 80, baseType: !269, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1395, file: !1333, line: 81, baseType: !269, size: 32, offset: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1395, file: !1333, line: 82, baseType: !269, size: 32, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1395, file: !1333, line: 83, baseType: !269, size: 32, offset: 96)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1395, file: !1333, line: 84, baseType: !269, size: 32, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1395, file: !1333, line: 85, baseType: !269, size: 32, offset: 160)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1395, file: !1333, line: 86, baseType: !269, size: 32, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1395, file: !1333, line: 88, baseType: !1351, size: 640, offset: 224)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1395, file: !1333, line: 89, baseType: !728, size: 8, offset: 864)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1395, file: !1333, line: 90, baseType: !728, size: 8, offset: 872)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1395, file: !1333, line: 91, baseType: !728, size: 8, offset: 880)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1395, file: !1333, line: 92, baseType: !728, size: 8, offset: 888)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1395, file: !1333, line: 93, baseType: !728, size: 8, offset: 896)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1395, file: !1333, line: 94, baseType: !728, size: 8, offset: 904)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1395, file: !1333, line: 95, baseType: !1412, size: 64, offset: 960)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1414, line: 11, size: 128, elements: !1415)
!1414 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1413, file: !1414, line: 12, baseType: !252, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1413, file: !1414, line: 13, baseType: !1418, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1420, line: 56, size: 1344, elements: !1421)
!1420 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1419, file: !1420, line: 61, baseType: !254, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1419, file: !1420, line: 62, baseType: !254, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1419, file: !1420, line: 63, baseType: !254, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1419, file: !1420, line: 64, baseType: !254, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1419, file: !1420, line: 65, baseType: !254, size: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1419, file: !1420, line: 66, baseType: !254, size: 64, offset: 320)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1419, file: !1420, line: 68, baseType: !254, size: 64, offset: 384)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1419, file: !1420, line: 69, baseType: !254, size: 64, offset: 448)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1419, file: !1420, line: 70, baseType: !254, size: 64, offset: 512)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1419, file: !1420, line: 71, baseType: !254, size: 64, offset: 576)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1419, file: !1420, line: 72, baseType: !254, size: 64, offset: 640)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1419, file: !1420, line: 73, baseType: !254, size: 64, offset: 704)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1419, file: !1420, line: 74, baseType: !254, size: 64, offset: 768)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1419, file: !1420, line: 75, baseType: !254, size: 64, offset: 832)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1419, file: !1420, line: 76, baseType: !254, size: 64, offset: 896)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1419, file: !1420, line: 81, baseType: !254, size: 64, offset: 960)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1419, file: !1420, line: 83, baseType: !254, size: 64, offset: 1024)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1419, file: !1420, line: 84, baseType: !254, size: 64, offset: 1088)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1419, file: !1420, line: 85, baseType: !254, size: 64, offset: 1152)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1419, file: !1420, line: 86, baseType: !254, size: 64, offset: 1216)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1419, file: !1420, line: 87, baseType: !254, size: 64, offset: 1280)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1395, file: !1333, line: 96, baseType: !269, size: 32, offset: 1024)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1338, file: !1333, line: 308, baseType: !1445, size: 4608, align: 512)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1333, line: 289, size: 4608, align: 512, elements: !1446)
!1446 = !{!1447, !1448, !1457}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1445, file: !1333, line: 290, baseType: !1356, size: 4096, align: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1445, file: !1333, line: 291, baseType: !1449, size: 512, offset: 4096)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1333, line: 268, size: 512, elements: !1450)
!1450 = !{!1451, !1452, !1453}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1449, file: !1333, line: 269, baseType: !458, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1449, file: !1333, line: 270, baseType: !458, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1449, file: !1333, line: 271, baseType: !1454, size: 384, offset: 128)
!1454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 384, elements: !1455)
!1455 = !{!1456}
!1456 = !DISubrange(count: 6)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1445, file: !1333, line: 292, baseType: !1458, offset: 4608)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, elements: !1459)
!1459 = !{!1460}
!1460 = !DISubrange(count: 0)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1338, file: !1333, line: 309, baseType: !1462, size: 32768)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 32768, elements: !1463)
!1463 = !{!1464}
!1464 = !DISubrange(count: 4096)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !581, file: !430, line: 378, baseType: !1466, size: 64, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !577, file: !430, line: 384, baseType: !897, size: 192, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !450, file: !430, line: 500, baseType: !302, offset: 6656)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !450, file: !430, line: 501, baseType: !1470, size: 64, offset: 6656)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !430, line: 387, flags: DIFlagFwdDecl)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !450, file: !430, line: 516, baseType: !1473, size: 64, offset: 6720)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1475, line: 18, flags: DIFlagFwdDecl)
!1475 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !450, file: !430, line: 519, baseType: !417, size: 64, offset: 6784)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !450, file: !430, line: 521, baseType: !1478, size: 64, offset: 6848)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !430, line: 521, flags: DIFlagFwdDecl)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !450, file: !430, line: 545, baseType: !478, size: 32, offset: 6912)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !450, file: !430, line: 548, baseType: !1161, size: 8, offset: 6944)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !450, file: !430, line: 550, baseType: !1483, offset: 6952)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1484, line: 142, elements: !316)
!1484 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !450, file: !430, line: 554, baseType: !1486, size: 256, offset: 6976)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1487, line: 102, size: 256, elements: !1488)
!1487 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1488 = !{!1489, !1490, !1491}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1486, file: !1487, line: 103, baseType: !486, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1486, file: !1487, line: 104, baseType: !289, size: 128, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1486, file: !1487, line: 105, baseType: !1492, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1487, line: 21, baseType: !1493)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{null, !1496}
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !450, file: !430, line: 557, baseType: !269, size: 32, offset: 7232)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !447, file: !430, line: 565, baseType: !1499, offset: 7296)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, elements: !1500)
!1500 = !{!1501}
!1501 = !DISubrange(count: -1)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !429, file: !430, line: 333, baseType: !1503, size: 64, offset: 576)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !419, line: 284, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !419, line: 284, size: 64, elements: !1505)
!1505 = !{!1506}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1504, file: !419, line: 284, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !476, line: 19, baseType: !254)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !429, file: !430, line: 334, baseType: !254, size: 64, offset: 640)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !429, file: !430, line: 343, baseType: !1510, size: 256, offset: 704)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !429, file: !430, line: 340, size: 256, elements: !1511)
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1510, file: !430, line: 341, baseType: !437, size: 192, align: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1510, file: !430, line: 342, baseType: !254, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !429, file: !430, line: 351, baseType: !289, size: 128, offset: 960)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !429, file: !430, line: 353, baseType: !1516, size: 64, offset: 1088)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !430, line: 353, flags: DIFlagFwdDecl)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !429, file: !430, line: 356, baseType: !1519, size: 64, offset: 1152)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1521)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !430, line: 356, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !429, file: !430, line: 359, baseType: !254, size: 64, offset: 1216)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !429, file: !430, line: 361, baseType: !417, size: 64, offset: 1280)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !429, file: !430, line: 362, baseType: !246, size: 64, offset: 1344)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !429, file: !430, line: 365, baseType: !486, size: 64, offset: 1408)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !429, file: !430, line: 373, baseType: !1527, offset: 1472)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !430, line: 296, elements: !316)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !396, file: !368, line: 90, baseType: !391, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !396, file: !368, line: 91, baseType: !1530, size: 64, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !358, file: !283, line: 143, baseType: !1532, size: 64, offset: 256)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!1535, !295}
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1537)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !123, line: 39, size: 384, elements: !1538)
!1538 = !{!1539, !1540, !1544, !1548, !1554, !1558}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1537, file: !123, line: 40, baseType: !122, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1537, file: !123, line: 41, baseType: !1541, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!1161}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1537, file: !123, line: 42, baseType: !1545, size: 64, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!246}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1537, file: !123, line: 43, baseType: !1549, size: 64, offset: 192)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!267, !1552}
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !123, line: 19, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1537, file: !123, line: 44, baseType: !1555, size: 64, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!267}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1537, file: !123, line: 45, baseType: !1559, size: 64, offset: 320)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{null, !246}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !358, file: !283, line: 144, baseType: !1563, size: 64, offset: 320)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!267, !295}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !358, file: !283, line: 145, baseType: !1567, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{null, !295, !1570, !1576}
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1475, line: 23, baseType: !1572)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1475, line: 21, size: 32, elements: !1573)
!1573 = !{!1574}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1572, file: !1475, line: 22, baseType: !1575, size: 32)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !245, line: 32, baseType: !1057)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1475, line: 28, baseType: !1578)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1475, line: 26, size: 32, elements: !1579)
!1579 = !{!1580}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1578, file: !1475, line: 27, baseType: !1581, size: 32)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !245, line: 33, baseType: !1582)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !376, line: 50, baseType: !7)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !282, file: !283, line: 70, baseType: !1584, size: 64, offset: 384)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1586, line: 123, size: 1024, elements: !1587)
!1586 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1587 = !{!1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1729, !1730, !1731, !1732, !1733}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1585, file: !1586, line: 124, baseType: !478, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1585, file: !1586, line: 125, baseType: !478, size: 32, offset: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1585, file: !1586, line: 135, baseType: !1584, size: 64, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1585, file: !1586, line: 136, baseType: !286, size: 64, offset: 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1585, file: !1586, line: 138, baseType: !437, size: 192, align: 64, offset: 192)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1585, file: !1586, line: 140, baseType: !267, size: 64, offset: 384)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1585, file: !1586, line: 141, baseType: !7, size: 32, offset: 448)
!1595 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !1586, line: 142, baseType: !1596, size: 256, offset: 512)
!1596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1585, file: !1586, line: 142, size: 256, elements: !1597)
!1597 = !{!1598, !1652, !1656}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1596, file: !1586, line: 143, baseType: !1599, size: 192)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1586, line: 91, size: 192, elements: !1600)
!1600 = !{!1601, !1602, !1603}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1599, file: !1586, line: 92, baseType: !254, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1599, file: !1586, line: 94, baseType: !454, size: 64, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1599, file: !1586, line: 100, baseType: !1604, size: 64, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1586, line: 180, size: 704, elements: !1606)
!1606 = !{!1607, !1608, !1609, !1622, !1623, !1624, !1650, !1651}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1605, file: !1586, line: 182, baseType: !1584, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1605, file: !1586, line: 183, baseType: !7, size: 32, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1605, file: !1586, line: 186, baseType: !1610, size: 192, offset: 128)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1611, line: 19, size: 192, elements: !1612)
!1611 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1612 = !{!1613, !1620, !1621}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1610, file: !1611, line: 20, baseType: !1614, size: 128)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1615, line: 292, size: 128, elements: !1616)
!1615 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1616 = !{!1617, !1618, !1619}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1614, file: !1615, line: 293, baseType: !302)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1614, file: !1615, line: 295, baseType: !244, size: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1614, file: !1615, line: 296, baseType: !246, size: 64, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1610, file: !1611, line: 21, baseType: !7, size: 32, offset: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1610, file: !1611, line: 22, baseType: !7, size: 32, offset: 160)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1605, file: !1586, line: 187, baseType: !269, size: 32, offset: 320)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1605, file: !1586, line: 188, baseType: !269, size: 32, offset: 352)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1605, file: !1586, line: 189, baseType: !1625, size: 64, offset: 384)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1586, line: 168, size: 320, elements: !1627)
!1627 = !{!1628, !1634, !1638, !1642, !1646}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1626, file: !1586, line: 169, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!273, !1632, !1604}
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !419, line: 539, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1626, file: !1586, line: 171, baseType: !1635, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!273, !1584, !286, !265}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1626, file: !1586, line: 173, baseType: !1639, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!273, !1584}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1626, file: !1586, line: 174, baseType: !1643, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!273, !1584, !1584, !286}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1626, file: !1586, line: 176, baseType: !1647, size: 64, offset: 256)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!273, !1632, !1584, !1604}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1605, file: !1586, line: 192, baseType: !289, size: 128, offset: 448)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1605, file: !1586, line: 194, baseType: !868, size: 128, offset: 576)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1596, file: !1586, line: 144, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1586, line: 103, size: 64, elements: !1654)
!1654 = !{!1655}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1653, file: !1586, line: 104, baseType: !1584, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1596, file: !1586, line: 145, baseType: !1657, size: 256)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1586, line: 107, size: 256, elements: !1658)
!1658 = !{!1659, !1724, !1727, !1728}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1657, file: !1586, line: 108, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1662)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1586, line: 217, size: 768, elements: !1663)
!1663 = !{!1664, !1684, !1688, !1692, !1697, !1701, !1705, !1709, !1710, !1711, !1712, !1720}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1662, file: !1586, line: 222, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!273, !1668}
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1586, line: 197, size: 1088, elements: !1670)
!1670 = !{!1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1669, file: !1586, line: 199, baseType: !1584, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1669, file: !1586, line: 200, baseType: !417, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1669, file: !1586, line: 201, baseType: !1632, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1669, file: !1586, line: 202, baseType: !246, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1669, file: !1586, line: 205, baseType: !555, size: 192, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1669, file: !1586, line: 206, baseType: !555, size: 192, offset: 448)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1669, file: !1586, line: 207, baseType: !273, size: 32, offset: 640)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1669, file: !1586, line: 208, baseType: !289, size: 128, offset: 704)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1669, file: !1586, line: 209, baseType: !343, size: 64, offset: 832)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1669, file: !1586, line: 211, baseType: !387, size: 64, offset: 896)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1669, file: !1586, line: 212, baseType: !1161, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1669, file: !1586, line: 213, baseType: !1161, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1669, file: !1586, line: 214, baseType: !1519, size: 64, offset: 1024)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1662, file: !1586, line: 223, baseType: !1685, size: 64, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{null, !1668}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1662, file: !1586, line: 236, baseType: !1689, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!273, !1632, !246}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1662, file: !1586, line: 238, baseType: !1693, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!246, !1632, !1696}
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1662, file: !1586, line: 239, baseType: !1698, size: 64, offset: 256)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!246, !1632, !246, !1696}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1662, file: !1586, line: 240, baseType: !1702, size: 64, offset: 320)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{null, !1632, !246}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1662, file: !1586, line: 242, baseType: !1706, size: 64, offset: 384)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!374, !1668, !343, !387, !420}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1662, file: !1586, line: 252, baseType: !387, size: 64, offset: 448)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1662, file: !1586, line: 259, baseType: !1161, size: 8, offset: 512)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1662, file: !1586, line: 260, baseType: !1706, size: 64, offset: 576)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1662, file: !1586, line: 263, baseType: !1713, size: 64, offset: 640)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!1716, !1668, !1718}
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1717, line: 52, baseType: !7)
!1717 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1586, line: 27, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1662, file: !1586, line: 266, baseType: !1721, size: 64, offset: 704)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!273, !1668, !428}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1657, file: !1586, line: 109, baseType: !1725, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1586, line: 31, flags: DIFlagFwdDecl)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1657, file: !1586, line: 110, baseType: !420, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1657, file: !1586, line: 111, baseType: !1584, size: 64, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1585, file: !1586, line: 148, baseType: !246, size: 64, offset: 768)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1585, file: !1586, line: 154, baseType: !458, size: 64, offset: 832)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1585, file: !1586, line: 156, baseType: !266, size: 16, offset: 896)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1585, file: !1586, line: 157, baseType: !265, size: 16, offset: 912)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1585, file: !1586, line: 158, baseType: !1734, size: 64, offset: 960)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1586, line: 32, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !282, file: !283, line: 71, baseType: !1737, size: 32, offset: 448)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1738, line: 19, size: 32, elements: !1739)
!1738 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1739 = !{!1740}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1737, file: !1738, line: 20, baseType: !597, size: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !282, file: !283, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !282, file: !283, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !282, file: !283, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !282, file: !283, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !282, file: !283, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !279, file: !135, line: 463, baseType: !278, size: 64, offset: 512)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !279, file: !135, line: 465, baseType: !1748, size: 64, offset: 576)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !135, line: 36, flags: DIFlagFwdDecl)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !279, file: !135, line: 467, baseType: !286, size: 64, offset: 640)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !279, file: !135, line: 468, baseType: !1752, size: 64, offset: 704)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1754)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !135, line: 87, size: 384, elements: !1755)
!1755 = !{!1756, !1757, !1758, !1762, !1767, !1771}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1754, file: !135, line: 88, baseType: !286, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1754, file: !135, line: 89, baseType: !393, size: 64, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1754, file: !135, line: 90, baseType: !1759, size: 64, offset: 128)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!273, !278, !338}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1754, file: !135, line: 91, baseType: !1763, size: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!343, !278, !1766, !1570, !1576}
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1754, file: !135, line: 93, baseType: !1768, size: 64, offset: 256)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{null, !278}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1754, file: !135, line: 95, baseType: !1772, size: 64, offset: 320)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1774)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !142, line: 278, size: 1472, elements: !1775)
!1775 = !{!1776, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1774, file: !142, line: 279, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!273, !278}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1774, file: !142, line: 280, baseType: !1768, size: 64, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1774, file: !142, line: 281, baseType: !1777, size: 64, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1774, file: !142, line: 282, baseType: !1777, size: 64, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1774, file: !142, line: 283, baseType: !1777, size: 64, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1774, file: !142, line: 284, baseType: !1777, size: 64, offset: 320)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1774, file: !142, line: 285, baseType: !1777, size: 64, offset: 384)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1774, file: !142, line: 286, baseType: !1777, size: 64, offset: 448)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1774, file: !142, line: 287, baseType: !1777, size: 64, offset: 512)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1774, file: !142, line: 288, baseType: !1777, size: 64, offset: 576)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1774, file: !142, line: 289, baseType: !1777, size: 64, offset: 640)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1774, file: !142, line: 290, baseType: !1777, size: 64, offset: 704)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1774, file: !142, line: 291, baseType: !1777, size: 64, offset: 768)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1774, file: !142, line: 292, baseType: !1777, size: 64, offset: 832)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1774, file: !142, line: 293, baseType: !1777, size: 64, offset: 896)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1774, file: !142, line: 294, baseType: !1777, size: 64, offset: 960)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1774, file: !142, line: 295, baseType: !1777, size: 64, offset: 1024)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1774, file: !142, line: 296, baseType: !1777, size: 64, offset: 1088)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1774, file: !142, line: 297, baseType: !1777, size: 64, offset: 1152)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1774, file: !142, line: 298, baseType: !1777, size: 64, offset: 1216)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1774, file: !142, line: 299, baseType: !1777, size: 64, offset: 1280)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1774, file: !142, line: 300, baseType: !1777, size: 64, offset: 1344)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1774, file: !142, line: 301, baseType: !1777, size: 64, offset: 1408)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !279, file: !135, line: 470, baseType: !1803, size: 64, offset: 768)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1805, line: 82, size: 1408, elements: !1806)
!1805 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1806 = !{!1807, !1808, !1809, !1810, !1811, !1812, !1813, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1873, !1876, !1879}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1804, file: !1805, line: 83, baseType: !286, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1804, file: !1805, line: 84, baseType: !286, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1804, file: !1805, line: 85, baseType: !278, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1804, file: !1805, line: 86, baseType: !393, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1804, file: !1805, line: 87, baseType: !393, size: 64, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1804, file: !1805, line: 88, baseType: !393, size: 64, offset: 320)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1804, file: !1805, line: 90, baseType: !1814, size: 64, offset: 384)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!273, !278, !1817}
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !129, line: 95, size: 1152, elements: !1819)
!1819 = !{!1820, !1821, !1822, !1826, !1827, !1828, !1829, !1833, !1837, !1838, !1839, !1840, !1841, !1849, !1850, !1851, !1852, !1853, !1854}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1818, file: !129, line: 96, baseType: !286, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1818, file: !129, line: 97, baseType: !1803, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1818, file: !129, line: 99, baseType: !1823, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1825, line: 76, flags: DIFlagFwdDecl)
!1825 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1818, file: !129, line: 100, baseType: !286, size: 64, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1818, file: !129, line: 102, baseType: !1161, size: 8, offset: 256)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1818, file: !129, line: 103, baseType: !128, size: 32, offset: 288)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1818, file: !129, line: 105, baseType: !1830, size: 64, offset: 320)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1832)
!1832 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !129, line: 105, flags: DIFlagFwdDecl)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1818, file: !129, line: 106, baseType: !1834, size: 64, offset: 384)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1836)
!1836 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !129, line: 106, flags: DIFlagFwdDecl)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1818, file: !129, line: 108, baseType: !1777, size: 64, offset: 448)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1818, file: !129, line: 109, baseType: !1768, size: 64, offset: 512)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1818, file: !129, line: 110, baseType: !1777, size: 64, offset: 576)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1818, file: !129, line: 111, baseType: !1768, size: 64, offset: 640)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1818, file: !129, line: 112, baseType: !1842, size: 64, offset: 704)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!273, !278, !1845}
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !142, line: 52, baseType: !1846)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !142, line: 50, size: 32, elements: !1847)
!1847 = !{!1848}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1846, file: !142, line: 51, baseType: !273, size: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1818, file: !129, line: 113, baseType: !1777, size: 64, offset: 768)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1818, file: !129, line: 114, baseType: !393, size: 64, offset: 832)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1818, file: !129, line: 115, baseType: !393, size: 64, offset: 896)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1818, file: !129, line: 117, baseType: !1772, size: 64, offset: 960)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1818, file: !129, line: 118, baseType: !1768, size: 64, offset: 1024)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1818, file: !129, line: 120, baseType: !1855, size: 64, offset: 1088)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !129, line: 120, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1804, file: !1805, line: 91, baseType: !1759, size: 64, offset: 448)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1804, file: !1805, line: 92, baseType: !1777, size: 64, offset: 512)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1804, file: !1805, line: 93, baseType: !1768, size: 64, offset: 576)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1804, file: !1805, line: 94, baseType: !1777, size: 64, offset: 640)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1804, file: !1805, line: 95, baseType: !1768, size: 64, offset: 704)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1804, file: !1805, line: 97, baseType: !1777, size: 64, offset: 768)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1804, file: !1805, line: 98, baseType: !1777, size: 64, offset: 832)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1804, file: !1805, line: 100, baseType: !1842, size: 64, offset: 896)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1804, file: !1805, line: 101, baseType: !1777, size: 64, offset: 960)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1804, file: !1805, line: 103, baseType: !1777, size: 64, offset: 1024)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1804, file: !1805, line: 105, baseType: !1777, size: 64, offset: 1088)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1804, file: !1805, line: 107, baseType: !1772, size: 64, offset: 1152)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1804, file: !1805, line: 109, baseType: !1870, size: 64, offset: 1216)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1872)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1805, line: 109, flags: DIFlagFwdDecl)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1804, file: !1805, line: 111, baseType: !1874, size: 64, offset: 1280)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1805, line: 111, flags: DIFlagFwdDecl)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1804, file: !1805, line: 112, baseType: !1877, offset: 1344)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1878, line: 187, elements: !316)
!1878 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1804, file: !1805, line: 114, baseType: !1161, size: 8, offset: 1344)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !279, file: !135, line: 471, baseType: !1817, size: 64, offset: 832)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !279, file: !135, line: 473, baseType: !246, size: 64, offset: 896)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !279, file: !135, line: 475, baseType: !246, size: 64, offset: 960)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !279, file: !135, line: 480, baseType: !555, size: 192, offset: 1024)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !279, file: !135, line: 484, baseType: !1885, size: 576, offset: 1216)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !135, line: 361, size: 576, elements: !1886)
!1886 = !{!1887, !1888, !1889, !1890, !1891, !1892}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1885, file: !135, line: 362, baseType: !289, size: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1885, file: !135, line: 363, baseType: !289, size: 128, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1885, file: !135, line: 364, baseType: !289, size: 128, offset: 256)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1885, file: !135, line: 365, baseType: !289, size: 128, offset: 384)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1885, file: !135, line: 366, baseType: !1161, size: 8, offset: 512)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1885, file: !135, line: 367, baseType: !134, size: 32, offset: 544)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !279, file: !135, line: 485, baseType: !1894, size: 2304, offset: 1792)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !142, line: 565, size: 2304, elements: !1895)
!1895 = !{!1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1991, !1995}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1894, file: !142, line: 566, baseType: !1845, size: 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1894, file: !142, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1894, file: !142, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1894, file: !142, line: 569, baseType: !1161, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1894, file: !142, line: 570, baseType: !1161, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1894, file: !142, line: 571, baseType: !1161, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1894, file: !142, line: 572, baseType: !1161, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1894, file: !142, line: 573, baseType: !1161, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1894, file: !142, line: 574, baseType: !1161, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1894, file: !142, line: 575, baseType: !1161, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1894, file: !142, line: 576, baseType: !1161, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1894, file: !142, line: 577, baseType: !269, size: 32, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1894, file: !142, line: 578, baseType: !302, offset: 96)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1894, file: !142, line: 580, baseType: !289, size: 128, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1894, file: !142, line: 581, baseType: !897, size: 192, offset: 256)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1894, file: !142, line: 582, baseType: !1912, size: 64, offset: 448)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1914, line: 43, size: 1472, elements: !1915)
!1914 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1915 = !{!1916, !1917, !1918, !1919, !1920, !1923, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1913, file: !1914, line: 44, baseType: !286, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1913, file: !1914, line: 45, baseType: !273, size: 32, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1913, file: !1914, line: 46, baseType: !289, size: 128, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1913, file: !1914, line: 47, baseType: !302, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1913, file: !1914, line: 48, baseType: !1921, size: 64, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !142, line: 533, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1913, file: !1914, line: 49, baseType: !1924, size: 320, offset: 320)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1925, line: 11, size: 320, elements: !1926)
!1925 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1926 = !{!1927, !1928, !1929, !1934}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1924, file: !1925, line: 16, baseType: !861, size: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1924, file: !1925, line: 17, baseType: !254, size: 64, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1924, file: !1925, line: 18, baseType: !1930, size: 64, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{null, !1933}
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1924, file: !1925, line: 19, baseType: !269, size: 32, offset: 256)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1913, file: !1914, line: 50, baseType: !254, size: 64, offset: 640)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1913, file: !1914, line: 51, baseType: !667, size: 64, offset: 704)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1913, file: !1914, line: 52, baseType: !667, size: 64, offset: 768)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1913, file: !1914, line: 53, baseType: !667, size: 64, offset: 832)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1913, file: !1914, line: 54, baseType: !667, size: 64, offset: 896)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1913, file: !1914, line: 55, baseType: !667, size: 64, offset: 960)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1913, file: !1914, line: 56, baseType: !254, size: 64, offset: 1024)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1913, file: !1914, line: 57, baseType: !254, size: 64, offset: 1088)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1913, file: !1914, line: 58, baseType: !254, size: 64, offset: 1152)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1913, file: !1914, line: 59, baseType: !254, size: 64, offset: 1216)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1913, file: !1914, line: 60, baseType: !254, size: 64, offset: 1280)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1913, file: !1914, line: 61, baseType: !278, size: 64, offset: 1344)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1913, file: !1914, line: 62, baseType: !1161, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1913, file: !1914, line: 63, baseType: !1161, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1894, file: !142, line: 583, baseType: !1161, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1894, file: !142, line: 584, baseType: !1161, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1894, file: !142, line: 585, baseType: !1161, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1894, file: !142, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1894, file: !142, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1894, file: !142, line: 592, baseType: !659, size: 512, offset: 576)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1894, file: !142, line: 593, baseType: !458, size: 64, offset: 1088)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1894, file: !142, line: 594, baseType: !1486, size: 256, offset: 1152)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1894, file: !142, line: 595, baseType: !868, size: 128, offset: 1408)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1894, file: !142, line: 596, baseType: !1921, size: 64, offset: 1536)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1894, file: !142, line: 597, baseType: !478, size: 32, offset: 1600)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1894, file: !142, line: 598, baseType: !478, size: 32, offset: 1632)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1894, file: !142, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1894, file: !142, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1894, file: !142, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1894, file: !142, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1894, file: !142, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1894, file: !142, line: 604, baseType: !1161, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1894, file: !142, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1894, file: !142, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1894, file: !142, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1894, file: !142, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1894, file: !142, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1894, file: !142, line: 610, baseType: !7, size: 32, offset: 1696)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1894, file: !142, line: 611, baseType: !141, size: 32, offset: 1728)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1894, file: !142, line: 612, baseType: !149, size: 32, offset: 1760)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1894, file: !142, line: 613, baseType: !273, size: 32, offset: 1792)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1894, file: !142, line: 614, baseType: !273, size: 32, offset: 1824)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1894, file: !142, line: 615, baseType: !458, size: 64, offset: 1856)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1894, file: !142, line: 616, baseType: !458, size: 64, offset: 1920)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1894, file: !142, line: 617, baseType: !458, size: 64, offset: 1984)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1894, file: !142, line: 618, baseType: !458, size: 64, offset: 2048)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1894, file: !142, line: 620, baseType: !1982, size: 64, offset: 2112)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !142, line: 536, size: 256, elements: !1984)
!1984 = !{!1985, !1986, !1987, !1988}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1983, file: !142, line: 537, baseType: !302)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1983, file: !142, line: 538, baseType: !7, size: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1983, file: !142, line: 540, baseType: !289, size: 128, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1983, file: !142, line: 543, baseType: !1989, size: 64, offset: 192)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !142, line: 534, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1894, file: !142, line: 621, baseType: !1992, size: 64, offset: 2176)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{null, !278, !821}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1894, file: !142, line: 622, baseType: !1996, size: 64, offset: 2240)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !142, line: 622, flags: DIFlagFwdDecl)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !279, file: !135, line: 486, baseType: !1999, size: 64, offset: 4096)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !142, line: 642, size: 1792, elements: !2001)
!2001 = !{!2002, !2003, !2004, !2008, !2009, !2010}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2000, file: !142, line: 643, baseType: !1774, size: 1472)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2000, file: !142, line: 644, baseType: !1777, size: 64, offset: 1472)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2000, file: !142, line: 645, baseType: !2005, size: 64, offset: 1536)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !278, !1161}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2000, file: !142, line: 646, baseType: !1777, size: 64, offset: 1600)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2000, file: !142, line: 647, baseType: !1768, size: 64, offset: 1664)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2000, file: !142, line: 648, baseType: !1768, size: 64, offset: 1728)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !279, file: !135, line: 493, baseType: !2012, size: 64, offset: 4160)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !135, line: 493, flags: DIFlagFwdDecl)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !279, file: !135, line: 499, baseType: !289, size: 128, offset: 4224)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !279, file: !135, line: 502, baseType: !2016, size: 64, offset: 4352)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2018)
!2018 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !135, line: 502, flags: DIFlagFwdDecl)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !279, file: !135, line: 504, baseType: !2020, size: 64, offset: 4416)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !279, file: !135, line: 505, baseType: !458, size: 64, offset: 4480)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !279, file: !135, line: 510, baseType: !458, size: 64, offset: 4544)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !279, file: !135, line: 511, baseType: !2024, size: 64, offset: 4608)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2026)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !135, line: 511, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !279, file: !135, line: 513, baseType: !2028, size: 64, offset: 4672)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !135, line: 288, size: 128, elements: !2030)
!2030 = !{!2031, !2032}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2029, file: !135, line: 293, baseType: !7, size: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2029, file: !135, line: 294, baseType: !254, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !279, file: !135, line: 515, baseType: !289, size: 128, offset: 4736)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !279, file: !135, line: 526, baseType: !2035, offset: 4864)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2036, line: 5, elements: !316)
!2036 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !279, file: !135, line: 528, baseType: !2038, size: 64, offset: 4864)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2040, line: 14, flags: DIFlagFwdDecl)
!2040 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !279, file: !135, line: 529, baseType: !2042, size: 64, offset: 4928)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1805, line: 22, flags: DIFlagFwdDecl)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !279, file: !135, line: 534, baseType: !2045, size: 32, offset: 4992)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !245, line: 16, baseType: !2046)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !245, line: 13, baseType: !269)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !279, file: !135, line: 535, baseType: !269, size: 32, offset: 5024)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !279, file: !135, line: 537, baseType: !302, offset: 5056)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !279, file: !135, line: 538, baseType: !289, size: 128, offset: 5056)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !279, file: !135, line: 540, baseType: !2051, size: 64, offset: 5184)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2053, line: 54, size: 960, elements: !2054)
!2053 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2054 = !{!2055, !2056, !2057, !2058, !2059, !2060, !2061, !2065, !2069, !2070, !2071, !2072, !2076, !2080, !2081}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2052, file: !2053, line: 55, baseType: !286, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2052, file: !2053, line: 56, baseType: !1823, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2052, file: !2053, line: 58, baseType: !393, size: 64, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2052, file: !2053, line: 59, baseType: !393, size: 64, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2052, file: !2053, line: 60, baseType: !295, size: 64, offset: 256)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2052, file: !2053, line: 62, baseType: !1759, size: 64, offset: 320)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2052, file: !2053, line: 63, baseType: !2062, size: 64, offset: 384)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!343, !278, !1766}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2052, file: !2053, line: 65, baseType: !2066, size: 64, offset: 448)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{null, !2051}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2052, file: !2053, line: 66, baseType: !1768, size: 64, offset: 512)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2052, file: !2053, line: 68, baseType: !1777, size: 64, offset: 576)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2052, file: !2053, line: 70, baseType: !1535, size: 64, offset: 640)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2052, file: !2053, line: 71, baseType: !2073, size: 64, offset: 704)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!267, !278}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2052, file: !2053, line: 73, baseType: !2077, size: 64, offset: 768)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{null, !278, !1570, !1576}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2052, file: !2053, line: 75, baseType: !1772, size: 64, offset: 832)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2052, file: !2053, line: 77, baseType: !1874, size: 64, offset: 896)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !279, file: !135, line: 541, baseType: !393, size: 64, offset: 5248)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !279, file: !135, line: 543, baseType: !1768, size: 64, offset: 5312)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !279, file: !135, line: 544, baseType: !2085, size: 64, offset: 5376)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !135, line: 45, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !279, file: !135, line: 545, baseType: !2088, size: 64, offset: 5440)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !135, line: 47, flags: DIFlagFwdDecl)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !279, file: !135, line: 547, baseType: !1161, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !279, file: !135, line: 548, baseType: !1161, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !279, file: !135, line: 549, baseType: !1161, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !279, file: !135, line: 550, baseType: !1161, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "read_string", scope: !259, file: !161, line: 399, baseType: !2096, size: 64, offset: 128)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!273, !278, !160, !269, !273, !2099}
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !259, file: !161, line: 401, baseType: !2101, size: 64, offset: 192)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!273, !278, !160, !269, !273, !252}
!2104 = !DIGlobalVariableExpression(var: !2105, expr: !DIExpression())
!2105 = distinct !DIGlobalVariable(name: "ps_type_attrs", scope: !2, file: !3, line: 117, type: !2106, isLocal: true, isDefinition: true)
!2106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2107, size: 1280, elements: !2114)
!2107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2108)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwmon_type_attr_list", file: !3, line: 106, size: 128, elements: !2109)
!2109 = !{!2110, !2113}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2108, file: !3, line: 107, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "n_attrs", scope: !2108, file: !3, line: 108, baseType: !387, size: 64, offset: 64)
!2114 = !{!2115}
!2115 = !DISubrange(count: 10)
!2116 = !DIGlobalVariableExpression(var: !2117, expr: !DIExpression())
!2117 = distinct !DIGlobalVariable(name: "ps_temp_attrs", scope: !2, file: !3, line: 111, type: !2118, isLocal: true, isDefinition: true)
!2118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2112, size: 160, elements: !2119)
!2119 = !{!2120}
!2120 = !DISubrange(count: 5)
!2121 = !DIGlobalVariableExpression(var: !2122, expr: !DIExpression())
!2122 = distinct !DIGlobalVariable(name: "ps_temp_label", scope: !2, file: !3, line: 16, type: !2123, isLocal: true, isDefinition: true)
!2123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2124, size: 128, elements: !1133)
!2124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!2125 = !DIGlobalVariableExpression(var: !2126, expr: !DIExpression())
!2126 = distinct !DIGlobalVariable(name: "power_supply_hwmon_info", scope: !2, file: !3, line: 296, type: !2127, isLocal: true, isDefinition: true)
!2127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2128, size: 256, elements: !537)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2130)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwmon_channel_info", file: !161, line: 411, size: 128, elements: !2131)
!2131 = !{!2132, !2133}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2130, file: !161, line: 412, baseType: !160, size: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !2130, file: !161, line: 413, baseType: !2111, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2135)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwmon_chip_info", file: !161, line: 429, size: 128, elements: !2136)
!2136 = !{!2137, !2139}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2135, file: !161, line: 430, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2135, file: !161, line: 431, baseType: !2140, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2141 = !{i32 7, !"Dwarf Version", i32 4}
!2142 = !{i32 2, !"Debug Info Version", i32 3}
!2143 = !{i32 1, !"wchar_size", i32 2}
!2144 = !{i32 1, !"Code Model", i32 2}
!2145 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2146 = distinct !DISubprogram(name: "power_supply_add_hwmon_sysfs", scope: !3, file: !3, line: 334, type: !2147, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!273, !2149}
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply", file: !6, line: 273, size: 7168, elements: !2151)
!2151 = !{!2152, !2193, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2211, !2212, !2213, !2214, !2215, !2216, !2219}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2150, file: !6, line: 274, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2155)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_desc", file: !6, line: 233, size: 768, elements: !2156)
!2156 = !{!2157, !2158, !2159, !2162, !2163, !2166, !2167, !2176, !2182, !2186, !2190, !2191, !2192}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2155, file: !6, line: 234, baseType: !286, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2155, file: !6, line: 235, baseType: !5, size: 32, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "usb_types", scope: !2155, file: !6, line: 236, baseType: !2160, size: 64, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "num_usb_types", scope: !2155, file: !6, line: 237, baseType: !387, size: 64, offset: 192)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2155, file: !6, line: 238, baseType: !2164, size: 64, offset: 256)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "num_properties", scope: !2155, file: !6, line: 239, baseType: !387, size: 64, offset: 320)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "get_property", scope: !2155, file: !6, line: 247, baseType: !2168, size: 64, offset: 384)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!273, !2149, !34, !2171}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "power_supply_propval", file: !6, line: 209, size: 64, elements: !2173)
!2173 = !{!2174, !2175}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "intval", scope: !2172, file: !6, line: 210, baseType: !273, size: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "strval", scope: !2172, file: !6, line: 211, baseType: !286, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !2155, file: !6, line: 250, baseType: !2177, size: 64, offset: 448)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!273, !2149, !34, !2180}
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2172)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "property_is_writeable", scope: !2155, file: !6, line: 258, baseType: !2183, size: 64, offset: 512)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!273, !2149, !34}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "external_power_changed", scope: !2155, file: !6, line: 260, baseType: !2187, size: 64, offset: 576)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{null, !2149}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "set_charged", scope: !2155, file: !6, line: 261, baseType: !2187, size: 64, offset: 640)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "no_thermal", scope: !2155, file: !6, line: 268, baseType: !1161, size: 8, offset: 704)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "use_for_apm", scope: !2155, file: !6, line: 270, baseType: !273, size: 32, offset: 736)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "supplied_to", scope: !2150, file: !6, line: 276, baseType: !2194, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "num_supplicants", scope: !2150, file: !6, line: 277, baseType: !387, size: 64, offset: 128)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "supplied_from", scope: !2150, file: !6, line: 279, baseType: !2194, size: 64, offset: 192)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "num_supplies", scope: !2150, file: !6, line: 280, baseType: !387, size: 64, offset: 256)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2150, file: !6, line: 281, baseType: !2038, size: 64, offset: 320)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "drv_data", scope: !2150, file: !6, line: 284, baseType: !246, size: 64, offset: 384)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2150, file: !6, line: 287, baseType: !279, size: 5568, offset: 448)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "changed_work", scope: !2150, file: !6, line: 288, baseType: !1486, size: 256, offset: 6016)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_register_work", scope: !2150, file: !6, line: 289, baseType: !2203, size: 704, offset: 6272)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1487, line: 115, size: 704, elements: !2204)
!2204 = !{!2205, !2206, !2207, !2210}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2203, file: !1487, line: 116, baseType: !1486, size: 256)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2203, file: !1487, line: 117, baseType: !1924, size: 320, offset: 256)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2203, file: !1487, line: 120, baseType: !2208, size: 64, offset: 576)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1487, line: 18, flags: DIFlagFwdDecl)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2203, file: !1487, line: 121, baseType: !273, size: 32, offset: 640)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "changed_lock", scope: !2150, file: !6, line: 290, baseType: !302, offset: 6976)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2150, file: !6, line: 291, baseType: !1161, size: 8, offset: 6976)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2150, file: !6, line: 292, baseType: !1161, size: 8, offset: 6984)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "removing", scope: !2150, file: !6, line: 293, baseType: !1161, size: 8, offset: 6992)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "use_cnt", scope: !2150, file: !6, line: 294, baseType: !478, size: 32, offset: 7008)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "tzd", scope: !2150, file: !6, line: 296, baseType: !2217, size: 64, offset: 7040)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !6, line: 296, flags: DIFlagFwdDecl)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "tcd", scope: !2150, file: !6, line: 297, baseType: !2220, size: 64, offset: 7104)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !6, line: 297, flags: DIFlagFwdDecl)
!2222 = !DILocalVariable(name: "psy", arg: 1, scope: !2146, file: !3, line: 334, type: !2149)
!2223 = !DILocation(line: 334, column: 55, scope: !2146)
!2224 = !DILocalVariable(name: "desc", scope: !2146, file: !3, line: 336, type: !2153)
!2225 = !DILocation(line: 336, column: 34, scope: !2146)
!2226 = !DILocation(line: 336, column: 41, scope: !2146)
!2227 = !DILocation(line: 336, column: 46, scope: !2146)
!2228 = !DILocalVariable(name: "psyhw", scope: !2146, file: !3, line: 337, type: !2229)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_hwmon", file: !3, line: 11, size: 128, elements: !2231)
!2231 = !{!2232, !2233}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "psy", scope: !2230, file: !3, line: 12, baseType: !2149, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "props", scope: !2230, file: !3, line: 13, baseType: !253, size: 64, offset: 64)
!2234 = !DILocation(line: 337, column: 29, scope: !2146)
!2235 = !DILocalVariable(name: "dev", scope: !2146, file: !3, line: 338, type: !278)
!2236 = !DILocation(line: 338, column: 17, scope: !2146)
!2237 = !DILocation(line: 338, column: 24, scope: !2146)
!2238 = !DILocation(line: 338, column: 29, scope: !2146)
!2239 = !DILocalVariable(name: "hwmon", scope: !2146, file: !3, line: 339, type: !278)
!2240 = !DILocation(line: 339, column: 17, scope: !2146)
!2241 = !DILocalVariable(name: "ret", scope: !2146, file: !3, line: 340, type: !273)
!2242 = !DILocation(line: 340, column: 6, scope: !2146)
!2243 = !DILocalVariable(name: "i", scope: !2146, file: !3, line: 340, type: !273)
!2244 = !DILocation(line: 340, column: 11, scope: !2146)
!2245 = !DILocalVariable(name: "name", scope: !2146, file: !3, line: 341, type: !286)
!2246 = !DILocation(line: 341, column: 14, scope: !2146)
!2247 = !DILocation(line: 343, column: 25, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 343, column: 6)
!2249 = !DILocation(line: 343, column: 7, scope: !2248)
!2250 = !DILocation(line: 343, column: 6, scope: !2146)
!2251 = !DILocation(line: 345, column: 3, scope: !2248)
!2252 = !DILocation(line: 347, column: 23, scope: !2146)
!2253 = !DILocation(line: 347, column: 10, scope: !2146)
!2254 = !DILocation(line: 347, column: 8, scope: !2146)
!2255 = !DILocation(line: 348, column: 7, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 348, column: 6)
!2257 = !DILocation(line: 348, column: 6, scope: !2146)
!2258 = !DILocation(line: 349, column: 7, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 348, column: 14)
!2260 = !DILocation(line: 350, column: 3, scope: !2259)
!2261 = !DILocation(line: 353, column: 15, scope: !2146)
!2262 = !DILocation(line: 353, column: 2, scope: !2146)
!2263 = !DILocation(line: 353, column: 9, scope: !2146)
!2264 = !DILocation(line: 353, column: 13, scope: !2146)
!2265 = !DILocation(line: 354, column: 17, scope: !2146)
!2266 = !DILocation(line: 354, column: 2, scope: !2146)
!2267 = !DILocation(line: 354, column: 9, scope: !2146)
!2268 = !DILocation(line: 354, column: 15, scope: !2146)
!2269 = !DILocation(line: 356, column: 7, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 356, column: 6)
!2271 = !DILocation(line: 356, column: 14, scope: !2270)
!2272 = !DILocation(line: 356, column: 6, scope: !2146)
!2273 = !DILocation(line: 357, column: 7, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 356, column: 21)
!2275 = !DILocation(line: 358, column: 3, scope: !2274)
!2276 = !DILocation(line: 361, column: 33, scope: !2146)
!2277 = !DILocation(line: 362, column: 10, scope: !2146)
!2278 = !DILocation(line: 362, column: 17, scope: !2146)
!2279 = !DILocation(line: 361, column: 8, scope: !2146)
!2280 = !DILocation(line: 361, column: 6, scope: !2146)
!2281 = !DILocation(line: 363, column: 6, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 363, column: 6)
!2283 = !DILocation(line: 363, column: 6, scope: !2146)
!2284 = !DILocation(line: 364, column: 3, scope: !2282)
!2285 = !DILocation(line: 366, column: 9, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 366, column: 2)
!2287 = !DILocation(line: 366, column: 7, scope: !2286)
!2288 = !DILocation(line: 366, column: 14, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 366, column: 2)
!2290 = !DILocation(line: 366, column: 18, scope: !2289)
!2291 = !DILocation(line: 366, column: 24, scope: !2289)
!2292 = !DILocation(line: 366, column: 16, scope: !2289)
!2293 = !DILocation(line: 366, column: 2, scope: !2286)
!2294 = !DILocalVariable(name: "prop", scope: !2295, file: !3, line: 367, type: !2165)
!2295 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 366, column: 45)
!2296 = !DILocation(line: 367, column: 36, scope: !2295)
!2297 = !DILocation(line: 367, column: 43, scope: !2295)
!2298 = !DILocation(line: 367, column: 49, scope: !2295)
!2299 = !DILocation(line: 367, column: 60, scope: !2295)
!2300 = !DILocation(line: 369, column: 11, scope: !2295)
!2301 = !DILocation(line: 369, column: 3, scope: !2295)
!2302 = !DILocation(line: 385, column: 12, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 369, column: 17)
!2304 = !DILocation(line: 385, column: 18, scope: !2303)
!2305 = !DILocation(line: 385, column: 25, scope: !2303)
!2306 = !DILocation(line: 385, column: 4, scope: !2303)
!2307 = !DILocation(line: 386, column: 4, scope: !2303)
!2308 = !DILocation(line: 388, column: 4, scope: !2303)
!2309 = !DILocation(line: 390, column: 2, scope: !2295)
!2310 = !DILocation(line: 366, column: 41, scope: !2289)
!2311 = !DILocation(line: 366, column: 2, scope: !2289)
!2312 = distinct !{!2312, !2293, !2313}
!2313 = !DILocation(line: 390, column: 2, scope: !2286)
!2314 = !DILocation(line: 392, column: 9, scope: !2146)
!2315 = !DILocation(line: 392, column: 14, scope: !2146)
!2316 = !DILocation(line: 392, column: 20, scope: !2146)
!2317 = !DILocation(line: 392, column: 7, scope: !2146)
!2318 = !DILocation(line: 393, column: 13, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 393, column: 6)
!2320 = !DILocation(line: 393, column: 6, scope: !2319)
!2321 = !DILocation(line: 393, column: 6, scope: !2146)
!2322 = !DILocalVariable(name: "new_name", scope: !2323, file: !3, line: 394, type: !343)
!2323 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 393, column: 25)
!2324 = !DILocation(line: 394, column: 9, scope: !2323)
!2325 = !DILocation(line: 396, column: 27, scope: !2323)
!2326 = !DILocation(line: 396, column: 32, scope: !2323)
!2327 = !DILocation(line: 396, column: 14, scope: !2323)
!2328 = !DILocation(line: 396, column: 12, scope: !2323)
!2329 = !DILocation(line: 397, column: 8, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 397, column: 7)
!2331 = !DILocation(line: 397, column: 7, scope: !2323)
!2332 = !DILocation(line: 398, column: 8, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 397, column: 18)
!2334 = !DILocation(line: 399, column: 4, scope: !2333)
!2335 = !DILocation(line: 401, column: 14, scope: !2323)
!2336 = !DILocation(line: 401, column: 3, scope: !2323)
!2337 = !DILocation(line: 402, column: 10, scope: !2323)
!2338 = !DILocation(line: 402, column: 8, scope: !2323)
!2339 = !DILocation(line: 403, column: 2, scope: !2323)
!2340 = !DILocation(line: 404, column: 47, scope: !2146)
!2341 = !DILocation(line: 404, column: 52, scope: !2146)
!2342 = !DILocation(line: 405, column: 7, scope: !2146)
!2343 = !DILocation(line: 404, column: 10, scope: !2146)
!2344 = !DILocation(line: 404, column: 8, scope: !2146)
!2345 = !DILocation(line: 408, column: 24, scope: !2146)
!2346 = !DILocation(line: 408, column: 8, scope: !2146)
!2347 = !DILocation(line: 408, column: 6, scope: !2146)
!2348 = !DILocation(line: 409, column: 6, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 409, column: 6)
!2350 = !DILocation(line: 409, column: 6, scope: !2146)
!2351 = !DILocation(line: 410, column: 3, scope: !2349)
!2352 = !DILocation(line: 412, column: 21, scope: !2146)
!2353 = !DILocation(line: 412, column: 2, scope: !2146)
!2354 = !DILocation(line: 413, column: 2, scope: !2146)
!2355 = !DILabel(scope: !2146, name: "error", file: !3, line: 414)
!2356 = !DILocation(line: 414, column: 1, scope: !2146)
!2357 = !DILocation(line: 415, column: 23, scope: !2146)
!2358 = !DILocation(line: 415, column: 2, scope: !2146)
!2359 = !DILocation(line: 416, column: 9, scope: !2146)
!2360 = !DILocation(line: 416, column: 2, scope: !2146)
!2361 = !DILocation(line: 417, column: 1, scope: !2146)
!2362 = distinct !DISubprogram(name: "devm_kzalloc", scope: !135, file: !135, line: 215, type: !2363, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!246, !278, !387, !244}
!2365 = !DILocalVariable(name: "dev", arg: 1, scope: !2362, file: !135, line: 215, type: !278)
!2366 = !DILocation(line: 215, column: 49, scope: !2362)
!2367 = !DILocalVariable(name: "size", arg: 2, scope: !2362, file: !135, line: 215, type: !387)
!2368 = !DILocation(line: 215, column: 61, scope: !2362)
!2369 = !DILocalVariable(name: "gfp", arg: 3, scope: !2362, file: !135, line: 215, type: !244)
!2370 = !DILocation(line: 215, column: 73, scope: !2362)
!2371 = !DILocation(line: 217, column: 22, scope: !2362)
!2372 = !DILocation(line: 217, column: 27, scope: !2362)
!2373 = !DILocation(line: 217, column: 33, scope: !2362)
!2374 = !DILocation(line: 217, column: 37, scope: !2362)
!2375 = !DILocation(line: 217, column: 9, scope: !2362)
!2376 = !DILocation(line: 217, column: 2, scope: !2362)
!2377 = distinct !DISubprogram(name: "devm_add_action_or_reset", scope: !135, file: !135, line: 257, type: !2378, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!273, !278, !1559, !246}
!2380 = !DILocalVariable(name: "dev", arg: 1, scope: !2377, file: !135, line: 257, type: !278)
!2381 = !DILocation(line: 257, column: 59, scope: !2377)
!2382 = !DILocalVariable(name: "action", arg: 2, scope: !2377, file: !135, line: 258, type: !1559)
!2383 = !DILocation(line: 258, column: 16, scope: !2377)
!2384 = !DILocalVariable(name: "data", arg: 3, scope: !2377, file: !135, line: 258, type: !246)
!2385 = !DILocation(line: 258, column: 39, scope: !2377)
!2386 = !DILocalVariable(name: "ret", scope: !2377, file: !135, line: 260, type: !273)
!2387 = !DILocation(line: 260, column: 6, scope: !2377)
!2388 = !DILocation(line: 262, column: 24, scope: !2377)
!2389 = !DILocation(line: 262, column: 29, scope: !2377)
!2390 = !DILocation(line: 262, column: 37, scope: !2377)
!2391 = !DILocation(line: 262, column: 8, scope: !2377)
!2392 = !DILocation(line: 262, column: 6, scope: !2377)
!2393 = !DILocation(line: 263, column: 6, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2377, file: !135, line: 263, column: 6)
!2395 = !DILocation(line: 263, column: 6, scope: !2377)
!2396 = !DILocation(line: 264, column: 3, scope: !2394)
!2397 = !DILocation(line: 264, column: 10, scope: !2394)
!2398 = !DILocation(line: 266, column: 9, scope: !2377)
!2399 = !DILocation(line: 266, column: 2, scope: !2377)
!2400 = distinct !DISubprogram(name: "power_supply_hwmon_bitmap_free", scope: !3, file: !3, line: 329, type: !1560, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2401 = !DILocalVariable(name: "data", arg: 1, scope: !2400, file: !3, line: 329, type: !246)
!2402 = !DILocation(line: 329, column: 50, scope: !2400)
!2403 = !DILocation(line: 331, column: 14, scope: !2400)
!2404 = !DILocation(line: 331, column: 2, scope: !2400)
!2405 = !DILocation(line: 332, column: 1, scope: !2400)
!2406 = distinct !DISubprogram(name: "set_bit", scope: !2407, file: !2407, line: 26, type: !2408, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2407 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!2408 = !DISubroutineType(types: !2409)
!2409 = !{null, !252, !2410}
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !254)
!2412 = !DILocalVariable(name: "nr", arg: 1, scope: !2413, file: !2414, line: 52, type: !252)
!2413 = distinct !DISubprogram(name: "arch_set_bit", scope: !2414, file: !2414, line: 52, type: !2408, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2414 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2415 = !DILocation(line: 52, column: 19, scope: !2413, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 29, column: 2, scope: !2406)
!2417 = !DILocalVariable(name: "addr", arg: 2, scope: !2413, file: !2414, line: 52, type: !2410)
!2418 = !DILocation(line: 52, column: 47, scope: !2413, inlinedAt: !2416)
!2419 = !DILocalVariable(name: "v", arg: 1, scope: !2420, file: !2421, line: 84, type: !2424)
!2420 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !2421, file: !2421, line: 84, type: !2422, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2421 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2422 = !DISubroutineType(types: !2423)
!2423 = !{null, !2424, !387}
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2426)
!2426 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2427 = !DILocation(line: 84, column: 74, scope: !2420, inlinedAt: !2428)
!2428 = distinct !DILocation(line: 28, column: 2, scope: !2406)
!2429 = !DILocalVariable(name: "size", arg: 2, scope: !2420, file: !2421, line: 84, type: !387)
!2430 = !DILocation(line: 84, column: 84, scope: !2420, inlinedAt: !2428)
!2431 = !DILocalVariable(name: "nr", arg: 1, scope: !2406, file: !2407, line: 26, type: !252)
!2432 = !DILocation(line: 26, column: 33, scope: !2406)
!2433 = !DILocalVariable(name: "addr", arg: 2, scope: !2406, file: !2407, line: 26, type: !2410)
!2434 = !DILocation(line: 26, column: 61, scope: !2406)
!2435 = !DILocation(line: 28, column: 26, scope: !2406)
!2436 = !DILocation(line: 28, column: 33, scope: !2406)
!2437 = !DILocation(line: 28, column: 31, scope: !2406)
!2438 = !DILocation(line: 86, column: 20, scope: !2420, inlinedAt: !2428)
!2439 = !DILocation(line: 86, column: 23, scope: !2420, inlinedAt: !2428)
!2440 = !DILocation(line: 86, column: 2, scope: !2420, inlinedAt: !2428)
!2441 = !DILocation(line: 87, column: 2, scope: !2420, inlinedAt: !2428)
!2442 = !DILocation(line: 29, column: 15, scope: !2406)
!2443 = !DILocation(line: 29, column: 19, scope: !2406)
!2444 = !DILocation(line: 54, column: 27, scope: !2445, inlinedAt: !2416)
!2445 = distinct !DILexicalBlock(scope: !2413, file: !2414, line: 54, column: 6)
!2446 = !DILocation(line: 54, column: 6, scope: !2445, inlinedAt: !2416)
!2447 = !DILocation(line: 54, column: 6, scope: !2413, inlinedAt: !2416)
!2448 = !DILocation(line: 56, column: 6, scope: !2449, inlinedAt: !2416)
!2449 = distinct !DILexicalBlock(scope: !2445, file: !2414, line: 54, column: 32)
!2450 = !DILocation(line: 57, column: 12, scope: !2449, inlinedAt: !2416)
!2451 = !DILocation(line: 55, column: 3, scope: !2449, inlinedAt: !2416)
!2452 = !{i32 -2147230845}
!2453 = !DILocation(line: 59, column: 2, scope: !2449, inlinedAt: !2416)
!2454 = !DILocation(line: 61, column: 8, scope: !2455, inlinedAt: !2416)
!2455 = distinct !DILexicalBlock(scope: !2445, file: !2414, line: 59, column: 9)
!2456 = !DILocation(line: 61, column: 32, scope: !2455, inlinedAt: !2416)
!2457 = !DILocation(line: 60, column: 3, scope: !2455, inlinedAt: !2416)
!2458 = !{i32 -2147230713}
!2459 = !DILocation(line: 30, column: 1, scope: !2406)
!2460 = distinct !DISubprogram(name: "PTR_ERR_OR_ZERO", scope: !2461, file: !2461, line: 57, type: !2462, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2461 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!273, !267}
!2464 = !DILocalVariable(name: "ptr", arg: 1, scope: !2460, file: !2461, line: 57, type: !267)
!2465 = !DILocation(line: 57, column: 68, scope: !2460)
!2466 = !DILocation(line: 59, column: 13, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2460, file: !2461, line: 59, column: 6)
!2468 = !DILocation(line: 59, column: 6, scope: !2467)
!2469 = !DILocation(line: 59, column: 6, scope: !2460)
!2470 = !DILocation(line: 60, column: 18, scope: !2467)
!2471 = !DILocation(line: 60, column: 10, scope: !2467)
!2472 = !DILocation(line: 60, column: 3, scope: !2467)
!2473 = !DILocation(line: 62, column: 3, scope: !2467)
!2474 = !DILocation(line: 63, column: 1, scope: !2460)
!2475 = distinct !DISubprogram(name: "power_supply_remove_hwmon_sysfs", scope: !3, file: !3, line: 419, type: !2188, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2476 = !DILocalVariable(name: "psy", arg: 1, scope: !2475, file: !3, line: 419, type: !2149)
!2477 = !DILocation(line: 419, column: 59, scope: !2475)
!2478 = !DILocation(line: 421, column: 24, scope: !2475)
!2479 = !DILocation(line: 421, column: 29, scope: !2475)
!2480 = !DILocation(line: 421, column: 2, scope: !2475)
!2481 = !DILocation(line: 422, column: 1, scope: !2475)
!2482 = distinct !DISubprogram(name: "kasan_check_write", scope: !2483, file: !2483, line: 38, type: !2484, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2483 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!1161, !2424, !7}
!2486 = !DILocalVariable(name: "p", arg: 1, scope: !2482, file: !2483, line: 38, type: !2424)
!2487 = !DILocation(line: 38, column: 59, scope: !2482)
!2488 = !DILocalVariable(name: "size", arg: 2, scope: !2482, file: !2483, line: 38, type: !7)
!2489 = !DILocation(line: 38, column: 75, scope: !2482)
!2490 = !DILocation(line: 40, column: 2, scope: !2482)
!2491 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2492, file: !2492, line: 178, type: !2493, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2492 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2493 = !DISubroutineType(types: !2494)
!2494 = !{null, !2424, !387, !273}
!2495 = !DILocalVariable(name: "ptr", arg: 1, scope: !2491, file: !2492, line: 178, type: !2424)
!2496 = !DILocation(line: 178, column: 60, scope: !2491)
!2497 = !DILocalVariable(name: "size", arg: 2, scope: !2491, file: !2492, line: 178, type: !387)
!2498 = !DILocation(line: 178, column: 72, scope: !2491)
!2499 = !DILocalVariable(name: "type", arg: 3, scope: !2491, file: !2492, line: 179, type: !273)
!2500 = !DILocation(line: 179, column: 15, scope: !2491)
!2501 = !DILocation(line: 179, column: 23, scope: !2491)
!2502 = distinct !DISubprogram(name: "power_supply_hwmon_is_visible", scope: !3, file: !3, line: 158, type: !263, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2503 = !DILocalVariable(name: "data", arg: 1, scope: !2502, file: !3, line: 158, type: !267)
!2504 = !DILocation(line: 158, column: 58, scope: !2502)
!2505 = !DILocalVariable(name: "type", arg: 2, scope: !2502, file: !3, line: 159, type: !160)
!2506 = !DILocation(line: 159, column: 35, scope: !2502)
!2507 = !DILocalVariable(name: "attr", arg: 3, scope: !2502, file: !3, line: 160, type: !269)
!2508 = !DILocation(line: 160, column: 15, scope: !2502)
!2509 = !DILocalVariable(name: "channel", arg: 4, scope: !2502, file: !3, line: 160, type: !273)
!2510 = !DILocation(line: 160, column: 25, scope: !2502)
!2511 = !DILocalVariable(name: "psyhw", scope: !2502, file: !3, line: 162, type: !2512)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2230)
!2514 = !DILocation(line: 162, column: 35, scope: !2502)
!2515 = !DILocation(line: 162, column: 43, scope: !2502)
!2516 = !DILocalVariable(name: "prop", scope: !2502, file: !3, line: 163, type: !273)
!2517 = !DILocation(line: 163, column: 6, scope: !2502)
!2518 = !DILocation(line: 165, column: 36, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 165, column: 6)
!2520 = !DILocation(line: 165, column: 42, scope: !2519)
!2521 = !DILocation(line: 165, column: 6, scope: !2519)
!2522 = !DILocation(line: 165, column: 6, scope: !2502)
!2523 = !DILocation(line: 166, column: 36, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 166, column: 7)
!2525 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 165, column: 49)
!2526 = !DILocation(line: 166, column: 43, scope: !2524)
!2527 = !DILocation(line: 166, column: 49, scope: !2524)
!2528 = !DILocation(line: 166, column: 7, scope: !2524)
!2529 = !DILocation(line: 166, column: 7, scope: !2525)
!2530 = !DILocation(line: 167, column: 4, scope: !2524)
!2531 = !DILocation(line: 169, column: 4, scope: !2524)
!2532 = !DILocation(line: 172, column: 40, scope: !2502)
!2533 = !DILocation(line: 172, column: 46, scope: !2502)
!2534 = !DILocation(line: 172, column: 52, scope: !2502)
!2535 = !DILocation(line: 172, column: 9, scope: !2502)
!2536 = !DILocation(line: 172, column: 7, scope: !2502)
!2537 = !DILocation(line: 173, column: 6, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 173, column: 6)
!2539 = !DILocation(line: 173, column: 11, scope: !2538)
!2540 = !DILocation(line: 173, column: 15, scope: !2538)
!2541 = !DILocation(line: 173, column: 28, scope: !2538)
!2542 = !DILocation(line: 173, column: 34, scope: !2538)
!2543 = !DILocation(line: 173, column: 41, scope: !2538)
!2544 = !DILocation(line: 173, column: 19, scope: !2538)
!2545 = !DILocation(line: 173, column: 6, scope: !2502)
!2546 = !DILocation(line: 174, column: 3, scope: !2538)
!2547 = !DILocation(line: 176, column: 41, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 176, column: 6)
!2549 = !DILocation(line: 176, column: 48, scope: !2548)
!2550 = !DILocation(line: 176, column: 53, scope: !2548)
!2551 = !DILocation(line: 176, column: 6, scope: !2548)
!2552 = !DILocation(line: 176, column: 59, scope: !2548)
!2553 = !DILocation(line: 176, column: 63, scope: !2548)
!2554 = !DILocation(line: 177, column: 37, scope: !2548)
!2555 = !DILocation(line: 177, column: 43, scope: !2548)
!2556 = !DILocation(line: 177, column: 6, scope: !2548)
!2557 = !DILocation(line: 176, column: 6, scope: !2502)
!2558 = !DILocation(line: 178, column: 3, scope: !2548)
!2559 = !DILocation(line: 180, column: 2, scope: !2502)
!2560 = !DILocation(line: 181, column: 1, scope: !2502)
!2561 = distinct !DISubprogram(name: "power_supply_hwmon_read", scope: !3, file: !3, line: 206, type: !276, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2562 = !DILocalVariable(name: "dev", arg: 1, scope: !2561, file: !3, line: 206, type: !278)
!2563 = !DILocation(line: 206, column: 40, scope: !2561)
!2564 = !DILocalVariable(name: "type", arg: 2, scope: !2561, file: !3, line: 206, type: !160)
!2565 = !DILocation(line: 206, column: 69, scope: !2561)
!2566 = !DILocalVariable(name: "attr", arg: 3, scope: !2561, file: !3, line: 207, type: !269)
!2567 = !DILocation(line: 207, column: 8, scope: !2561)
!2568 = !DILocalVariable(name: "channel", arg: 4, scope: !2561, file: !3, line: 207, type: !273)
!2569 = !DILocation(line: 207, column: 18, scope: !2561)
!2570 = !DILocalVariable(name: "val", arg: 5, scope: !2561, file: !3, line: 207, type: !2094)
!2571 = !DILocation(line: 207, column: 33, scope: !2561)
!2572 = !DILocalVariable(name: "psyhw", scope: !2561, file: !3, line: 209, type: !2229)
!2573 = !DILocation(line: 209, column: 29, scope: !2561)
!2574 = !DILocation(line: 209, column: 53, scope: !2561)
!2575 = !DILocation(line: 209, column: 37, scope: !2561)
!2576 = !DILocalVariable(name: "psy", scope: !2561, file: !3, line: 210, type: !2149)
!2577 = !DILocation(line: 210, column: 23, scope: !2561)
!2578 = !DILocation(line: 210, column: 29, scope: !2561)
!2579 = !DILocation(line: 210, column: 36, scope: !2561)
!2580 = !DILocalVariable(name: "pspval", scope: !2561, file: !3, line: 211, type: !2172)
!2581 = !DILocation(line: 211, column: 29, scope: !2561)
!2582 = !DILocalVariable(name: "ret", scope: !2561, file: !3, line: 212, type: !273)
!2583 = !DILocation(line: 212, column: 6, scope: !2561)
!2584 = !DILocalVariable(name: "prop", scope: !2561, file: !3, line: 212, type: !273)
!2585 = !DILocation(line: 212, column: 11, scope: !2561)
!2586 = !DILocation(line: 214, column: 40, scope: !2561)
!2587 = !DILocation(line: 214, column: 46, scope: !2561)
!2588 = !DILocation(line: 214, column: 52, scope: !2561)
!2589 = !DILocation(line: 214, column: 9, scope: !2561)
!2590 = !DILocation(line: 214, column: 7, scope: !2561)
!2591 = !DILocation(line: 215, column: 6, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 215, column: 6)
!2593 = !DILocation(line: 215, column: 11, scope: !2592)
!2594 = !DILocation(line: 215, column: 6, scope: !2561)
!2595 = !DILocation(line: 216, column: 10, scope: !2592)
!2596 = !DILocation(line: 216, column: 3, scope: !2592)
!2597 = !DILocation(line: 218, column: 35, scope: !2561)
!2598 = !DILocation(line: 218, column: 40, scope: !2561)
!2599 = !DILocation(line: 218, column: 9, scope: !2561)
!2600 = !DILocation(line: 218, column: 7, scope: !2561)
!2601 = !DILocation(line: 219, column: 6, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 219, column: 6)
!2603 = !DILocation(line: 219, column: 6, scope: !2561)
!2604 = !DILocation(line: 220, column: 10, scope: !2602)
!2605 = !DILocation(line: 220, column: 3, scope: !2602)
!2606 = !DILocation(line: 222, column: 10, scope: !2561)
!2607 = !DILocation(line: 222, column: 2, scope: !2561)
!2608 = !DILocalVariable(name: "__x", scope: !2609, file: !3, line: 230, type: !273)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !3, line: 230, column: 19)
!2610 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 222, column: 16)
!2611 = !DILocation(line: 230, column: 19, scope: !2609)
!2612 = !DILocalVariable(name: "__d", scope: !2609, file: !3, line: 230, type: !273)
!2613 = !DILocation(line: 230, column: 10, scope: !2610)
!2614 = !DILocation(line: 230, column: 17, scope: !2610)
!2615 = !DILocation(line: 231, column: 3, scope: !2610)
!2616 = !DILocalVariable(name: "__a", scope: !2617, file: !3, line: 236, type: !273)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 236, column: 7)
!2618 = distinct !DILexicalBlock(scope: !2610, file: !3, line: 236, column: 7)
!2619 = !DILocation(line: 236, column: 7, scope: !2617)
!2620 = !DILocalVariable(name: "__b", scope: !2617, file: !3, line: 236, type: !273)
!2621 = !DILocalVariable(name: "__d", scope: !2617, file: !3, line: 236, type: !908)
!2622 = !DILocation(line: 236, column: 7, scope: !2618)
!2623 = !DILocation(line: 236, column: 7, scope: !2610)
!2624 = !DILocation(line: 238, column: 4, scope: !2618)
!2625 = !DILocation(line: 239, column: 3, scope: !2610)
!2626 = !DILocation(line: 241, column: 3, scope: !2610)
!2627 = !DILocation(line: 244, column: 16, scope: !2561)
!2628 = !DILocation(line: 244, column: 9, scope: !2561)
!2629 = !DILocation(line: 244, column: 3, scope: !2561)
!2630 = !DILocation(line: 244, column: 7, scope: !2561)
!2631 = !DILocation(line: 246, column: 2, scope: !2561)
!2632 = !DILocation(line: 247, column: 1, scope: !2561)
!2633 = distinct !DISubprogram(name: "power_supply_hwmon_read_string", scope: !3, file: !3, line: 183, type: !2097, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2634 = !DILocalVariable(name: "dev", arg: 1, scope: !2633, file: !3, line: 183, type: !278)
!2635 = !DILocation(line: 183, column: 58, scope: !2633)
!2636 = !DILocalVariable(name: "type", arg: 2, scope: !2633, file: !3, line: 184, type: !160)
!2637 = !DILocation(line: 184, column: 32, scope: !2633)
!2638 = !DILocalVariable(name: "attr", arg: 3, scope: !2633, file: !3, line: 185, type: !269)
!2639 = !DILocation(line: 185, column: 12, scope: !2633)
!2640 = !DILocalVariable(name: "channel", arg: 4, scope: !2633, file: !3, line: 185, type: !273)
!2641 = !DILocation(line: 185, column: 22, scope: !2633)
!2642 = !DILocalVariable(name: "str", arg: 5, scope: !2633, file: !3, line: 186, type: !2099)
!2643 = !DILocation(line: 186, column: 21, scope: !2633)
!2644 = !DILocation(line: 188, column: 10, scope: !2633)
!2645 = !DILocation(line: 188, column: 2, scope: !2633)
!2646 = !DILocation(line: 190, column: 24, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 188, column: 16)
!2648 = !DILocation(line: 190, column: 10, scope: !2647)
!2649 = !DILocation(line: 190, column: 4, scope: !2647)
!2650 = !DILocation(line: 190, column: 8, scope: !2647)
!2651 = !DILocation(line: 191, column: 3, scope: !2647)
!2652 = !DILocation(line: 199, column: 3, scope: !2647)
!2653 = !DILocation(line: 202, column: 2, scope: !2633)
!2654 = distinct !DISubprogram(name: "power_supply_hwmon_write", scope: !3, file: !3, line: 250, type: !2102, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2655 = !DILocalVariable(name: "dev", arg: 1, scope: !2654, file: !3, line: 250, type: !278)
!2656 = !DILocation(line: 250, column: 41, scope: !2654)
!2657 = !DILocalVariable(name: "type", arg: 2, scope: !2654, file: !3, line: 250, type: !160)
!2658 = !DILocation(line: 250, column: 70, scope: !2654)
!2659 = !DILocalVariable(name: "attr", arg: 3, scope: !2654, file: !3, line: 251, type: !269)
!2660 = !DILocation(line: 251, column: 9, scope: !2654)
!2661 = !DILocalVariable(name: "channel", arg: 4, scope: !2654, file: !3, line: 251, type: !273)
!2662 = !DILocation(line: 251, column: 19, scope: !2654)
!2663 = !DILocalVariable(name: "val", arg: 5, scope: !2654, file: !3, line: 251, type: !252)
!2664 = !DILocation(line: 251, column: 33, scope: !2654)
!2665 = !DILocalVariable(name: "psyhw", scope: !2654, file: !3, line: 253, type: !2229)
!2666 = !DILocation(line: 253, column: 29, scope: !2654)
!2667 = !DILocation(line: 253, column: 53, scope: !2654)
!2668 = !DILocation(line: 253, column: 37, scope: !2654)
!2669 = !DILocalVariable(name: "psy", scope: !2654, file: !3, line: 254, type: !2149)
!2670 = !DILocation(line: 254, column: 23, scope: !2654)
!2671 = !DILocation(line: 254, column: 29, scope: !2654)
!2672 = !DILocation(line: 254, column: 36, scope: !2654)
!2673 = !DILocalVariable(name: "pspval", scope: !2654, file: !3, line: 255, type: !2172)
!2674 = !DILocation(line: 255, column: 29, scope: !2654)
!2675 = !DILocalVariable(name: "prop", scope: !2654, file: !3, line: 256, type: !273)
!2676 = !DILocation(line: 256, column: 6, scope: !2654)
!2677 = !DILocation(line: 258, column: 40, scope: !2654)
!2678 = !DILocation(line: 258, column: 46, scope: !2654)
!2679 = !DILocation(line: 258, column: 52, scope: !2654)
!2680 = !DILocation(line: 258, column: 9, scope: !2654)
!2681 = !DILocation(line: 258, column: 7, scope: !2654)
!2682 = !DILocation(line: 259, column: 6, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 259, column: 6)
!2684 = !DILocation(line: 259, column: 11, scope: !2683)
!2685 = !DILocation(line: 259, column: 6, scope: !2654)
!2686 = !DILocation(line: 260, column: 10, scope: !2683)
!2687 = !DILocation(line: 260, column: 3, scope: !2683)
!2688 = !DILocation(line: 262, column: 18, scope: !2654)
!2689 = !DILocation(line: 262, column: 9, scope: !2654)
!2690 = !DILocation(line: 262, column: 16, scope: !2654)
!2691 = !DILocation(line: 264, column: 10, scope: !2654)
!2692 = !DILocation(line: 264, column: 2, scope: !2654)
!2693 = !DILocalVariable(name: "__a", scope: !2694, file: !3, line: 272, type: !273)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 272, column: 7)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 272, column: 7)
!2696 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 264, column: 16)
!2697 = !DILocation(line: 272, column: 7, scope: !2694)
!2698 = !DILocalVariable(name: "__b", scope: !2694, file: !3, line: 272, type: !273)
!2699 = !DILocalVariable(name: "__d", scope: !2694, file: !3, line: 272, type: !908)
!2700 = !DILocation(line: 272, column: 7, scope: !2695)
!2701 = !DILocation(line: 272, column: 7, scope: !2696)
!2702 = !DILocation(line: 274, column: 4, scope: !2695)
!2703 = !DILocation(line: 275, column: 3, scope: !2696)
!2704 = !DILocalVariable(name: "__x", scope: !2705, file: !3, line: 280, type: !273)
!2705 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 280, column: 19)
!2706 = !DILocation(line: 280, column: 19, scope: !2705)
!2707 = !DILocalVariable(name: "__d", scope: !2705, file: !3, line: 280, type: !273)
!2708 = !DILocation(line: 280, column: 10, scope: !2696)
!2709 = !DILocation(line: 280, column: 17, scope: !2696)
!2710 = !DILocation(line: 281, column: 3, scope: !2696)
!2711 = !DILocation(line: 283, column: 3, scope: !2696)
!2712 = !DILocation(line: 286, column: 35, scope: !2654)
!2713 = !DILocation(line: 286, column: 40, scope: !2654)
!2714 = !DILocation(line: 286, column: 9, scope: !2654)
!2715 = !DILocation(line: 286, column: 2, scope: !2654)
!2716 = !DILocation(line: 287, column: 1, scope: !2654)
!2717 = distinct !DISubprogram(name: "power_supply_hwmon_is_a_label", scope: !3, file: !3, line: 100, type: !2718, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!1161, !160, !269}
!2720 = !DILocalVariable(name: "type", arg: 1, scope: !2717, file: !3, line: 100, type: !160)
!2721 = !DILocation(line: 100, column: 67, scope: !2717)
!2722 = !DILocalVariable(name: "attr", arg: 2, scope: !2717, file: !3, line: 101, type: !269)
!2723 = !DILocation(line: 101, column: 13, scope: !2717)
!2724 = !DILocation(line: 103, column: 9, scope: !2717)
!2725 = !DILocation(line: 103, column: 14, scope: !2717)
!2726 = !DILocation(line: 103, column: 28, scope: !2717)
!2727 = !DILocation(line: 103, column: 31, scope: !2717)
!2728 = !DILocation(line: 103, column: 36, scope: !2717)
!2729 = !DILocation(line: 0, scope: !2717)
!2730 = !DILocation(line: 103, column: 2, scope: !2717)
!2731 = distinct !DISubprogram(name: "power_supply_hwmon_has_input", scope: !3, file: !3, line: 121, type: !2732, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!1161, !2512, !160, !273}
!2734 = !DILocalVariable(name: "psyhw", arg: 1, scope: !2731, file: !3, line: 122, type: !2512)
!2735 = !DILocation(line: 122, column: 35, scope: !2731)
!2736 = !DILocalVariable(name: "type", arg: 2, scope: !2731, file: !3, line: 123, type: !160)
!2737 = !DILocation(line: 123, column: 26, scope: !2731)
!2738 = !DILocalVariable(name: "channel", arg: 3, scope: !2731, file: !3, line: 123, type: !273)
!2739 = !DILocation(line: 123, column: 36, scope: !2731)
!2740 = !DILocalVariable(name: "attr_list", scope: !2731, file: !3, line: 125, type: !2741)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2742 = !DILocation(line: 125, column: 37, scope: !2731)
!2743 = !DILocation(line: 125, column: 64, scope: !2731)
!2744 = !DILocation(line: 125, column: 50, scope: !2731)
!2745 = !DILocalVariable(name: "i", scope: !2731, file: !3, line: 126, type: !387)
!2746 = !DILocation(line: 126, column: 9, scope: !2731)
!2747 = !DILocation(line: 128, column: 9, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 128, column: 2)
!2749 = !DILocation(line: 128, column: 7, scope: !2748)
!2750 = !DILocation(line: 128, column: 14, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 128, column: 2)
!2752 = !DILocation(line: 128, column: 18, scope: !2751)
!2753 = !DILocation(line: 128, column: 29, scope: !2751)
!2754 = !DILocation(line: 128, column: 16, scope: !2751)
!2755 = !DILocation(line: 128, column: 2, scope: !2748)
!2756 = !DILocalVariable(name: "prop", scope: !2757, file: !3, line: 129, type: !273)
!2757 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 128, column: 43)
!2758 = !DILocation(line: 129, column: 7, scope: !2757)
!2759 = !DILocation(line: 129, column: 45, scope: !2757)
!2760 = !DILocation(line: 130, column: 4, scope: !2757)
!2761 = !DILocation(line: 130, column: 15, scope: !2757)
!2762 = !DILocation(line: 130, column: 21, scope: !2757)
!2763 = !DILocation(line: 130, column: 25, scope: !2757)
!2764 = !DILocation(line: 129, column: 14, scope: !2757)
!2765 = !DILocation(line: 132, column: 7, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 132, column: 7)
!2767 = !DILocation(line: 132, column: 12, scope: !2766)
!2768 = !DILocation(line: 132, column: 17, scope: !2766)
!2769 = !DILocation(line: 132, column: 29, scope: !2766)
!2770 = !DILocation(line: 132, column: 35, scope: !2766)
!2771 = !DILocation(line: 132, column: 42, scope: !2766)
!2772 = !DILocation(line: 132, column: 20, scope: !2766)
!2773 = !DILocation(line: 132, column: 7, scope: !2757)
!2774 = !DILocation(line: 133, column: 4, scope: !2766)
!2775 = !DILocation(line: 134, column: 2, scope: !2757)
!2776 = !DILocation(line: 128, column: 38, scope: !2751)
!2777 = !DILocation(line: 128, column: 2, scope: !2751)
!2778 = distinct !{!2778, !2755, !2779}
!2779 = !DILocation(line: 134, column: 2, scope: !2748)
!2780 = !DILocation(line: 136, column: 2, scope: !2731)
!2781 = !DILocation(line: 137, column: 1, scope: !2731)
!2782 = distinct !DISubprogram(name: "power_supply_hwmon_to_property", scope: !3, file: !3, line: 85, type: !2783, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!273, !160, !269, !273}
!2785 = !DILocalVariable(name: "type", arg: 1, scope: !2782, file: !3, line: 85, type: !160)
!2786 = !DILocation(line: 85, column: 56, scope: !2782)
!2787 = !DILocalVariable(name: "attr", arg: 2, scope: !2782, file: !3, line: 86, type: !269)
!2788 = !DILocation(line: 86, column: 15, scope: !2782)
!2789 = !DILocalVariable(name: "channel", arg: 3, scope: !2782, file: !3, line: 86, type: !273)
!2790 = !DILocation(line: 86, column: 25, scope: !2782)
!2791 = !DILocation(line: 88, column: 10, scope: !2782)
!2792 = !DILocation(line: 88, column: 2, scope: !2782)
!2793 = !DILocation(line: 90, column: 44, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 88, column: 16)
!2795 = !DILocation(line: 90, column: 10, scope: !2794)
!2796 = !DILocation(line: 90, column: 3, scope: !2794)
!2797 = !DILocation(line: 92, column: 46, scope: !2794)
!2798 = !DILocation(line: 92, column: 10, scope: !2794)
!2799 = !DILocation(line: 92, column: 3, scope: !2794)
!2800 = !DILocation(line: 94, column: 46, scope: !2794)
!2801 = !DILocation(line: 94, column: 52, scope: !2794)
!2802 = !DILocation(line: 94, column: 10, scope: !2794)
!2803 = !DILocation(line: 94, column: 3, scope: !2794)
!2804 = !DILocation(line: 96, column: 3, scope: !2794)
!2805 = !DILocation(line: 98, column: 1, scope: !2782)
!2806 = distinct !DISubprogram(name: "test_bit", scope: !2807, file: !2807, line: 132, type: !2808, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2807 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!1161, !252, !2810}
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2411)
!2812 = !DILocalVariable(name: "nr", arg: 1, scope: !2813, file: !2414, line: 210, type: !252)
!2813 = distinct !DISubprogram(name: "variable_test_bit", scope: !2414, file: !2414, line: 210, type: !2808, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2814 = !DILocation(line: 210, column: 52, scope: !2813, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 135, column: 9, scope: !2806)
!2816 = !DILocalVariable(name: "addr", arg: 2, scope: !2813, file: !2414, line: 210, type: !2810)
!2817 = !DILocation(line: 210, column: 86, scope: !2813, inlinedAt: !2815)
!2818 = !DILocalVariable(name: "oldbit", scope: !2813, file: !2414, line: 212, type: !1161)
!2819 = !DILocation(line: 212, column: 7, scope: !2813, inlinedAt: !2815)
!2820 = !DILocalVariable(name: "nr", arg: 1, scope: !2821, file: !2414, line: 204, type: !252)
!2821 = distinct !DISubprogram(name: "constant_test_bit", scope: !2414, file: !2414, line: 204, type: !2808, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2822 = !DILocation(line: 204, column: 52, scope: !2821, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 135, column: 9, scope: !2806)
!2824 = !DILocalVariable(name: "addr", arg: 2, scope: !2821, file: !2414, line: 204, type: !2810)
!2825 = !DILocation(line: 204, column: 86, scope: !2821, inlinedAt: !2823)
!2826 = !DILocalVariable(name: "v", arg: 1, scope: !2827, file: !2421, line: 69, type: !2424)
!2827 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2421, file: !2421, line: 69, type: !2422, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2828 = !DILocation(line: 69, column: 73, scope: !2827, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 134, column: 2, scope: !2806)
!2830 = !DILocalVariable(name: "size", arg: 2, scope: !2827, file: !2421, line: 69, type: !387)
!2831 = !DILocation(line: 69, column: 83, scope: !2827, inlinedAt: !2829)
!2832 = !DILocalVariable(name: "nr", arg: 1, scope: !2806, file: !2807, line: 132, type: !252)
!2833 = !DILocation(line: 132, column: 34, scope: !2806)
!2834 = !DILocalVariable(name: "addr", arg: 2, scope: !2806, file: !2807, line: 132, type: !2810)
!2835 = !DILocation(line: 132, column: 68, scope: !2806)
!2836 = !DILocation(line: 134, column: 25, scope: !2806)
!2837 = !DILocation(line: 134, column: 32, scope: !2806)
!2838 = !DILocation(line: 134, column: 30, scope: !2806)
!2839 = !DILocation(line: 71, column: 19, scope: !2827, inlinedAt: !2829)
!2840 = !DILocation(line: 71, column: 22, scope: !2827, inlinedAt: !2829)
!2841 = !DILocation(line: 71, column: 2, scope: !2827, inlinedAt: !2829)
!2842 = !DILocation(line: 72, column: 2, scope: !2827, inlinedAt: !2829)
!2843 = !DILocation(line: 135, column: 9, scope: !2806)
!2844 = !DILocation(line: 206, column: 19, scope: !2821, inlinedAt: !2823)
!2845 = !DILocation(line: 206, column: 22, scope: !2821, inlinedAt: !2823)
!2846 = !DILocation(line: 206, column: 15, scope: !2821, inlinedAt: !2823)
!2847 = !DILocation(line: 207, column: 4, scope: !2821, inlinedAt: !2823)
!2848 = !DILocation(line: 207, column: 9, scope: !2821, inlinedAt: !2823)
!2849 = !DILocation(line: 207, column: 12, scope: !2821, inlinedAt: !2823)
!2850 = !DILocation(line: 206, column: 44, scope: !2821, inlinedAt: !2823)
!2851 = !DILocation(line: 207, column: 37, scope: !2821, inlinedAt: !2823)
!2852 = !DILocation(line: 217, column: 33, scope: !2813, inlinedAt: !2815)
!2853 = !DILocation(line: 217, column: 46, scope: !2813, inlinedAt: !2815)
!2854 = !DILocation(line: 214, column: 2, scope: !2813, inlinedAt: !2815)
!2855 = !{i32 -2147221529, i32 -2147221469}
!2856 = !DILocation(line: 219, column: 9, scope: !2813, inlinedAt: !2815)
!2857 = !DILocation(line: 135, column: 2, scope: !2806)
!2858 = distinct !DISubprogram(name: "power_supply_hwmon_is_writable", scope: !3, file: !3, line: 139, type: !2718, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2859 = !DILocalVariable(name: "type", arg: 1, scope: !2858, file: !3, line: 139, type: !160)
!2860 = !DILocation(line: 139, column: 68, scope: !2858)
!2861 = !DILocalVariable(name: "attr", arg: 2, scope: !2858, file: !3, line: 140, type: !269)
!2862 = !DILocation(line: 140, column: 13, scope: !2858)
!2863 = !DILocation(line: 142, column: 10, scope: !2858)
!2864 = !DILocation(line: 142, column: 2, scope: !2858)
!2865 = !DILocation(line: 144, column: 10, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 142, column: 16)
!2867 = !DILocation(line: 144, column: 15, scope: !2866)
!2868 = !DILocation(line: 144, column: 31, scope: !2866)
!2869 = !DILocation(line: 145, column: 10, scope: !2866)
!2870 = !DILocation(line: 145, column: 15, scope: !2866)
!2871 = !DILocation(line: 144, column: 3, scope: !2866)
!2872 = !DILocation(line: 147, column: 10, scope: !2866)
!2873 = !DILocation(line: 147, column: 15, scope: !2866)
!2874 = !DILocation(line: 147, column: 3, scope: !2866)
!2875 = !DILocation(line: 149, column: 10, scope: !2866)
!2876 = !DILocation(line: 149, column: 15, scope: !2866)
!2877 = !DILocation(line: 149, column: 33, scope: !2866)
!2878 = !DILocation(line: 150, column: 10, scope: !2866)
!2879 = !DILocation(line: 150, column: 15, scope: !2866)
!2880 = !DILocation(line: 150, column: 33, scope: !2866)
!2881 = !DILocation(line: 151, column: 10, scope: !2866)
!2882 = !DILocation(line: 151, column: 15, scope: !2866)
!2883 = !DILocation(line: 151, column: 39, scope: !2866)
!2884 = !DILocation(line: 152, column: 10, scope: !2866)
!2885 = !DILocation(line: 152, column: 15, scope: !2866)
!2886 = !DILocation(line: 149, column: 3, scope: !2866)
!2887 = !DILocation(line: 154, column: 3, scope: !2866)
!2888 = !DILocation(line: 156, column: 1, scope: !2858)
!2889 = distinct !DISubprogram(name: "power_supply_hwmon_in_to_property", scope: !3, file: !3, line: 21, type: !2890, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!273, !269}
!2892 = !DILocalVariable(name: "attr", arg: 1, scope: !2889, file: !3, line: 21, type: !269)
!2893 = !DILocation(line: 21, column: 50, scope: !2889)
!2894 = !DILocation(line: 23, column: 10, scope: !2889)
!2895 = !DILocation(line: 23, column: 2, scope: !2889)
!2896 = !DILocation(line: 25, column: 3, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 23, column: 16)
!2898 = !DILocation(line: 27, column: 3, scope: !2897)
!2899 = !DILocation(line: 29, column: 3, scope: !2897)
!2900 = !DILocation(line: 31, column: 3, scope: !2897)
!2901 = !DILocation(line: 33, column: 3, scope: !2897)
!2902 = !DILocation(line: 35, column: 1, scope: !2889)
!2903 = distinct !DISubprogram(name: "power_supply_hwmon_curr_to_property", scope: !3, file: !3, line: 37, type: !2890, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2904 = !DILocalVariable(name: "attr", arg: 1, scope: !2903, file: !3, line: 37, type: !269)
!2905 = !DILocation(line: 37, column: 52, scope: !2903)
!2906 = !DILocation(line: 39, column: 10, scope: !2903)
!2907 = !DILocation(line: 39, column: 2, scope: !2903)
!2908 = !DILocation(line: 41, column: 3, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2903, file: !3, line: 39, column: 16)
!2910 = !DILocation(line: 43, column: 3, scope: !2909)
!2911 = !DILocation(line: 45, column: 3, scope: !2909)
!2912 = !DILocation(line: 47, column: 3, scope: !2909)
!2913 = !DILocation(line: 49, column: 1, scope: !2903)
!2914 = distinct !DISubprogram(name: "power_supply_hwmon_temp_to_property", scope: !3, file: !3, line: 51, type: !2915, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!273, !269, !273}
!2917 = !DILocalVariable(name: "attr", arg: 1, scope: !2914, file: !3, line: 51, type: !269)
!2918 = !DILocation(line: 51, column: 52, scope: !2914)
!2919 = !DILocalVariable(name: "channel", arg: 2, scope: !2914, file: !3, line: 51, type: !273)
!2920 = !DILocation(line: 51, column: 62, scope: !2914)
!2921 = !DILocation(line: 53, column: 6, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 53, column: 6)
!2923 = !DILocation(line: 53, column: 6, scope: !2914)
!2924 = !DILocation(line: 54, column: 11, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 53, column: 15)
!2926 = !DILocation(line: 54, column: 3, scope: !2925)
!2927 = !DILocation(line: 56, column: 4, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 54, column: 17)
!2929 = !DILocation(line: 58, column: 4, scope: !2928)
!2930 = !DILocation(line: 60, column: 4, scope: !2928)
!2931 = !DILocation(line: 62, column: 4, scope: !2928)
!2932 = !DILocation(line: 64, column: 2, scope: !2925)
!2933 = !DILocation(line: 65, column: 11, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 64, column: 9)
!2935 = !DILocation(line: 65, column: 3, scope: !2934)
!2936 = !DILocation(line: 67, column: 4, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 65, column: 17)
!2938 = !DILocation(line: 69, column: 4, scope: !2937)
!2939 = !DILocation(line: 71, column: 4, scope: !2937)
!2940 = !DILocation(line: 73, column: 4, scope: !2937)
!2941 = !DILocation(line: 75, column: 4, scope: !2937)
!2942 = !DILocation(line: 77, column: 4, scope: !2937)
!2943 = !DILocation(line: 81, column: 2, scope: !2914)
!2944 = !DILocation(line: 82, column: 1, scope: !2914)
!2945 = distinct !DISubprogram(name: "kasan_check_read", scope: !2483, file: !2483, line: 34, type: !2484, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2946 = !DILocalVariable(name: "p", arg: 1, scope: !2945, file: !2483, line: 34, type: !2424)
!2947 = !DILocation(line: 34, column: 58, scope: !2945)
!2948 = !DILocalVariable(name: "size", arg: 2, scope: !2945, file: !2483, line: 34, type: !7)
!2949 = !DILocation(line: 34, column: 74, scope: !2945)
!2950 = !DILocation(line: 36, column: 2, scope: !2945)
!2951 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !135, file: !135, line: 655, type: !2952, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!246, !2954}
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!2956 = !DILocalVariable(name: "dev", arg: 1, scope: !2951, file: !135, line: 655, type: !2954)
!2957 = !DILocation(line: 655, column: 58, scope: !2951)
!2958 = !DILocation(line: 657, column: 9, scope: !2951)
!2959 = !DILocation(line: 657, column: 14, scope: !2951)
!2960 = !DILocation(line: 657, column: 2, scope: !2951)
!2961 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2962, file: !2962, line: 52, type: !2963, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2962 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!1161, !1161}
!2965 = !DILocalVariable(name: "overflow", arg: 1, scope: !2961, file: !2962, line: 52, type: !1161)
!2966 = !DILocation(line: 52, column: 60, scope: !2961)
!2967 = !DILocation(line: 54, column: 9, scope: !2961)
!2968 = !DILocation(line: 54, column: 2, scope: !2961)
!2969 = distinct !DISubprogram(name: "IS_ERR", scope: !2461, file: !2461, line: 34, type: !2970, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!1161, !267}
!2972 = !DILocalVariable(name: "ptr", arg: 1, scope: !2969, file: !2461, line: 34, type: !267)
!2973 = !DILocation(line: 34, column: 60, scope: !2969)
!2974 = !DILocation(line: 36, column: 9, scope: !2969)
!2975 = !DILocation(line: 36, column: 2, scope: !2969)
!2976 = distinct !DISubprogram(name: "PTR_ERR", scope: !2461, file: !2461, line: 29, type: !2977, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !316)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!252, !267}
!2979 = !DILocalVariable(name: "ptr", arg: 1, scope: !2976, file: !2461, line: 29, type: !267)
!2980 = !DILocation(line: 29, column: 61, scope: !2976)
!2981 = !DILocation(line: 31, column: 16, scope: !2976)
!2982 = !DILocation(line: 31, column: 9, scope: !2976)
!2983 = !DILocation(line: 31, column: 2, scope: !2976)
