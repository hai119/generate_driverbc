; ModuleID = '../bcout/drivers/acpi/acpi_processor.llvm.bc'
source_filename = "drivers/acpi/acpi_processor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.cpuinfo_x86 = type { i8, i8, i8, i8, i32, [3 x i32], i8, i8, i8, i8, i32, i32, %union.anon, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8 }
%union.anon = type { i64, [72 x i8] }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%union.acpi_object = type { %struct.anon.72 }
%struct.anon.72 = type { i32, i32, i64, i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.74, i32, i32, %struct.list_head }
%struct.anon.74 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.wake_irq = type opaque
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.75, i8, i8, i32 }
%struct.anon.75 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.proc_dir_entry = type opaque
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.65, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.65 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.page = type { i64, %union.anon.2, %union.anon.53, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.53 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.54, i32 }
%union.anon.54 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.block_device = type opaque
%struct.backing_dev_info = type opaque
%struct.mtd_info = type opaque
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.46, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.23, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.24, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.25, %union.anon.29, %struct.key_restriction* }
%union.anon.23 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.24 = type { i64 }
%union.anon.25 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.26, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.26 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.29 = type { %union.key_payload }
%union.key_payload = type { [4 x i8*] }
%struct.key_restriction = type { i32 (%struct.key*, %struct.key_type*, %union.key_payload*, %struct.key*)*, %struct.key*, %struct.key_type* }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.mutex }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i64, i64 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
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
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.32, %union.anon.33, i32 }
%struct.request_queue = type opaque
%union.anon.32 = type { %struct.list_head }
%union.anon.33 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.34 }
%struct.anon.34 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.38 }
%struct.anon.38 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.45, i32, [12 x i8] }
%union.anon.45 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.46 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.47, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.50 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i64, i64 }
%union.anon.50 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.fsnotify_mark_connector = type opaque
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.user_namespace = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%union.anon.63 = type { %struct.list_head }
%union.anon.64 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.55, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.56, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.57, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.60, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.55 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.56 = type { %struct.callback_head }
%union.anon.57 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.60 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.58 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.58 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.seq_file = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.driver_private = type opaque
%struct.module = type opaque
%struct.acpi_gpio_mapping = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32, %struct.list_head, %struct.pm_domain_data* }
%struct.pm_domain_data = type opaque
%struct.dev_pm_qos = type { %struct.pm_qos_constraints, %struct.pm_qos_constraints, %struct.freq_constraints, %struct.pm_qos_flags, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request* }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, %struct.blocking_notifier_head* }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.dev_pm_qos_request = type { i32, %union.anon.66, %struct.device* }
%union.anon.66 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, %struct.freq_constraints* }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.acpi_buffer = type { i64, i8* }
%struct.acpi_processor = type { i8*, i32, i32, i32, i32, i32, i32, %struct.acpi_processor_flags, %struct.acpi_processor_power, %struct.acpi_processor_performance*, %struct.acpi_processor_throttling, %struct.acpi_processor_limit, %struct.thermal_cooling_device*, %struct.device*, %struct.freq_qos_request, %struct.freq_qos_request }
%struct.acpi_processor_flags = type { i16 }
%struct.acpi_processor_power = type { i32, %union.anon.76, i32 }
%union.anon.76 = type { [8 x %struct.acpi_lpi_state] }
%struct.acpi_lpi_state = type { i32, i32, i32, i32, i32, i32, i64, i8, i8, [32 x i8] }
%struct.acpi_processor_performance = type { i32, i32, %struct.acpi_pct_register, %struct.acpi_pct_register, i32, %struct.acpi_processor_px*, %struct.acpi_psd_package, [1 x %struct.cpumask], i32 }
%struct.acpi_pct_register = type <{ i8, i16, i8, i8, i8, i8, i64 }>
%struct.acpi_processor_px = type { i64, i64, i64, i64, i64, i64 }
%struct.acpi_psd_package = type { i64, i64, i64, i64, i64 }
%struct.acpi_processor_throttling = type { i32, i32, %struct.acpi_pct_register, %struct.acpi_pct_register, i32, %struct.acpi_processor_tx_tss*, %struct.acpi_tsd_package, [1 x %struct.cpumask], i32 (%struct.acpi_processor*)*, i32 (%struct.acpi_processor*, i32, i1)*, i32, i8, i8, i8, i32, [16 x %struct.acpi_processor_tx] }
%struct.acpi_processor_tx_tss = type { i64, i64, i64, i64, i64 }
%struct.acpi_tsd_package = type { i64, i64, i64, i64, i64 }
%struct.acpi_processor_tx = type { i16, i16 }
%struct.acpi_processor_limit = type { %struct.acpi_processor_lx, %struct.acpi_processor_lx, %struct.acpi_processor_lx }
%struct.acpi_processor_lx = type { i32, i32 }
%struct.thermal_cooling_device = type { i32, [20 x i8], %struct.device, %struct.device_node*, i8*, i8*, %struct.thermal_cooling_device_ops*, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thermal_cooling_device_ops = type { i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64)*, i32 (%struct.thermal_cooling_device*, i32*)*, i32 (%struct.thermal_cooling_device*, i64, i32*)*, i32 (%struct.thermal_cooling_device*, i32, i64*)* }
%struct.acpi_processor_errata = type { i8, %struct.anon.77 }
%struct.anon.77 = type { i8, i32 }
%struct.kmem_cache = type opaque
%struct.acpi_osc_context = type { i8*, i32, %struct.acpi_buffer, %struct.acpi_buffer }
%struct.acpi_power_register = type <{ i8, i16, i8, i8, i8, i8, i64 }>
%struct.acpi_processor_cx = type { i8, i8, i32, i8, i8, i32, i8, [32 x i8] }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.anon.70 = type { i32, i32, %union.acpi_object* }
%struct.anon.67 = type { i32, i64 }
%struct.anon.69 = type { i32, i32, i8* }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.78, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.pcie_link_state = type opaque
%struct.pci_vpd = type opaque
%union.anon.78 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque

@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str = private unnamed_addr constant [9 x i8] c"ACPI0007\00", align 1
@nr_duplicate_ids = internal global i32 0, align 4, !dbg !0
@duplicate_processor_ids = internal global [1 x i32] [i32 -1], align 4, !dbg !4170
@processor_handler = internal global %struct.acpi_scan_handler { %struct.acpi_device_id* getelementptr inbounds ([3 x %struct.acpi_device_id], [3 x %struct.acpi_device_id]* @processor_device_ids, i32 0, i32 0), %struct.list_head zeroinitializer, i1 (i8*, %struct.acpi_device_id**)* null, i32 (%struct.acpi_device*, %struct.acpi_device_id*)* @acpi_processor_add, void (%struct.acpi_device*)* null, void (%struct.device*)* null, void (%struct.device*)* null, %struct.acpi_hotplug_profile { %struct.kobject zeroinitializer, i32 (%struct.acpi_device*)* null, void (%struct.acpi_device*)* null, i8 1 } }, align 8, !dbg !4177
@.str.1 = private unnamed_addr constant [10 x i8] c"processor\00", align 1
@processor_container_handler = internal global %struct.acpi_scan_handler { %struct.acpi_device_id* getelementptr inbounds ([2 x %struct.acpi_device_id], [2 x %struct.acpi_device_id]* @processor_container_ids, i32 0, i32 0), %struct.list_head zeroinitializer, i1 (i8*, %struct.acpi_device_id**)* null, i32 (%struct.acpi_device*, %struct.acpi_device_id*)* @acpi_processor_container_attach, void (%struct.acpi_device*)* null, void (%struct.device*)* null, void (%struct.device*)* null, %struct.acpi_hotplug_profile zeroinitializer }, align 8, !dbg !4468
@acpi_processor_claim_cst_control.cst_control_claimed = internal global i8 0, align 1, !dbg !4151
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"\014ACPI: Failed to claim processor _CST control\0A\00", align 1
@__const.acpi_processor_evaluate_cst.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"_CST\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Invalid _CST output\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Inconsistent _CST data\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"No room for more idle states (limit: %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"_CST C%d type(%x) is not package, skip...\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"_CST C%d package count(%d) is not 4, skip...\0A\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"_CST C%d package element[0] type(%x) is not buffer, skip...\0A\00", align 1
@.str.12 = private unnamed_addr constant [64 x i8] c"_CST C[%d] package element[1] type(%x) is not integer, skip...\0A\00", align 1
@boot_option_idle_override = external dso_local global i64, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"ACPI HLT\00", align 1
@.str.14 = private unnamed_addr constant [81 x i8] c"_CST C%d declares FIXED_HARDWARE C-state but not supported in hardware, skip...\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"ACPI IOPORT 0x%x\00", align 1
@.str.16 = private unnamed_addr constant [69 x i8] c"_CST C%d space_id(%x) neither FIXED_HARDWARE nor SYSTEM_IO, skip...\0A\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"_CST C%d package element[2] type(%x) not integer, skip...\0A\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"_CST C%d package element[3] type(%x) not integer, skip...\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Found %d idle states\0A\00", align 1
@processors = dso_local global %struct.acpi_processor* null, section ".data", align 8, !dbg !4154
@errata = dso_local global %struct.acpi_processor_errata zeroinitializer, section ".data..read_mostly", align 4, !dbg !4156
@__const.acpi_hwp_native_thermal_lvt_osc.sb_uuid_str = private unnamed_addr constant [37 x i8] c"4077A616-290C-47BE-9EBD-D87058713953\00", align 16
@acpi_hwp_native_thermal_lvt_set = internal global i8 0, align 1, !dbg !4168
@.str.20 = private unnamed_addr constant [31 x i8] c"_OSC native thermal LVT Acked\0A\00", align 1
@__const.acpi_processor_ids_walk.object = private unnamed_addr constant { i32, [20 x i8] } { i32 0, [20 x i8] undef }, align 8
@.str.21 = private unnamed_addr constant [5 x i8] c"_UID\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"Invalid processor object\0A\00", align 1
@nr_unique_ids = internal global i32 0, section ".init.data", align 4, !dbg !4173
@unique_processor_ids = internal global [1 x i32] [i32 -1], section ".init.data", align 4, !dbg !4175
@processor_device_ids = internal constant [3 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"LNXCPU\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ACPI0007\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !4458
@.str.23 = private unnamed_addr constant [10 x i8] c"Processor\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"drivers/acpi/acpi_processor.c\00", align 1
@processor_device_array = internal global i8* null, section ".data", align 8, !dbg !4466
@.str.25 = private unnamed_addr constant [50 x i8] c"BIOS reported wrong ACPI id %d for the processor\0A\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"Processor driver could not be attached\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.27 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@__const.acpi_processor_get_info.object = private unnamed_addr constant { i32, [20 x i8] } { i32 0, [20 x i8] undef }, align 8
@acpi_processor_get_info.cpu0_initialized = internal global i32 0, align 4, !dbg !4461
@.str.28 = private unnamed_addr constant [7 x i8] c"LNXCPU\00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"Failed to evaluate processor object (0x%x)\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"Failed to evaluate processor _UID (0x%x)\0A\00", align 1
@acpi_processor_get_info.__print_once = internal global i8 0, section ".data..read_mostly", align 1, !dbg !4464
@.str.31 = private unnamed_addr constant [48 x i8] c"Entry not well-defined, consider updating BIOS\0A\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"Failed to get unique processor _UID (0x%x)\0A\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"CPU%X\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"Invalid PBLK length [%d]\0A\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"_SUN\00", align 1
@acpi_lapic = external dso_local global i32, align 4
@processor_container_ids = internal constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"ACPI0010\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !4470

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_early_processor_osc() #0 section ".init.text" !dbg !4478 {
entry:
  br i1 false, label %cond.true, label %cond.false, !dbg !4479

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %if.end, !dbg !4480

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @test_bit(i64 455, i64* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12, i32 0)) #9, !dbg !4480
  br i1 %call, label %if.then, label %if.end, !dbg !4479

if.then:                                          ; preds = %cond.false, %cond.true
  %call1 = call i32 @acpi_walk_namespace(i32 12, i8* inttoptr (i64 -1 to i8*), i32 -1, i32 (i8*, i32, i8*, i8**)* @acpi_hwp_native_thermal_lvt_osc, i32 (i8*, i32, i8*, i8**)* null, i8* null, i8** null) #9, !dbg !4482
  %call2 = call i32 @acpi_get_devices(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 (i8*, i32, i8*, i8**)* @acpi_hwp_native_thermal_lvt_osc, i8* null, i8** null) #9, !dbg !4484
  br label %if.end, !dbg !4485

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  ret void, !dbg !4486
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #1 !dbg !4487 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !4494, metadata !DIExpression()), !dbg !4497
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !4499, metadata !DIExpression()), !dbg !4500
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !4501, metadata !DIExpression()), !dbg !4502
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4503, metadata !DIExpression()), !dbg !4505
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4507, metadata !DIExpression()), !dbg !4508
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4509, metadata !DIExpression()), !dbg !4517
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4519, metadata !DIExpression()), !dbg !4520
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4521, metadata !DIExpression()), !dbg !4522
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4523, metadata !DIExpression()), !dbg !4524
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4525
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4526
  %div = sdiv i64 %1, 64, !dbg !4526
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4527
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4525
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4528
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4529
  %conv.i = trunc i64 %4 to i32, !dbg !4529
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #10, !dbg !4530
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4531
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4531
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #10, !dbg !4531
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4532
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !4532
  br i1 %8, label %cond.true, label %cond.false, !dbg !4532

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !4532
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !4532
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !4533
  %and.i = and i64 %11, 63, !dbg !4534
  %shl.i = shl i64 1, %and.i, !dbg !4535
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !4536
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4537
  %shr.i = ashr i64 %13, 6, !dbg !4538
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !4536
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !4536
  %and1.i = and i64 %shl.i, %14, !dbg !4539
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !4540
  %conv = zext i1 %cmp.i to i32, !dbg !4532
  br label %cond.end, !dbg !4532

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !4532
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !4532
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !4541
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !4542
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #11, !dbg !4543, !srcloc !4544
  store i8 %19, i8* %oldbit.i, align 1, !dbg !4543
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !4545
  %tobool.i = trunc i8 %20 to i1, !dbg !4545
  %conv2 = zext i1 %tobool.i to i32, !dbg !4532
  br label %cond.end, !dbg !4532

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4532
  %tobool = icmp ne i32 %cond, 0, !dbg !4532
  ret i1 %tobool, !dbg !4546
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_walk_namespace(i32, i8*, i32, i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)*, i8*, i8**) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_hwp_native_thermal_lvt_osc(i8* %handle, i32 %lvl, i8* %context, i8** %rv) #0 section ".init.text" !dbg !4547 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %lvl.addr = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %rv.addr = alloca i8**, align 8
  %sb_uuid_str = alloca [37 x i8], align 16
  %capbuf = alloca [2 x i32], align 4
  %osc_context = alloca %struct.acpi_osc_context, align 8
  %capbuf_ret = alloca i32*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !4550, metadata !DIExpression()), !dbg !4551
  store i32 %lvl, i32* %lvl.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %lvl.addr, metadata !4552, metadata !DIExpression()), !dbg !4553
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !4554, metadata !DIExpression()), !dbg !4555
  store i8** %rv, i8*** %rv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %rv.addr, metadata !4556, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.declare(metadata [37 x i8]* %sb_uuid_str, metadata !4558, metadata !DIExpression()), !dbg !4562
  %0 = bitcast [37 x i8]* %sb_uuid_str to i8*, !dbg !4562
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([37 x i8], [37 x i8]* @__const.acpi_hwp_native_thermal_lvt_osc.sb_uuid_str, i32 0, i32 0), i64 37, i1 false), !dbg !4562
  call void @llvm.dbg.declare(metadata [2 x i32]* %capbuf, metadata !4563, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.declare(metadata %struct.acpi_osc_context* %osc_context, metadata !4566, metadata !DIExpression()), !dbg !4577
  %uuid_str = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %osc_context, i32 0, i32 0, !dbg !4578
  %arraydecay = getelementptr inbounds [37 x i8], [37 x i8]* %sb_uuid_str, i64 0, i64 0, !dbg !4579
  store i8* %arraydecay, i8** %uuid_str, align 8, !dbg !4578
  %rev = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %osc_context, i32 0, i32 1, !dbg !4578
  store i32 1, i32* %rev, align 8, !dbg !4578
  %cap = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %osc_context, i32 0, i32 2, !dbg !4578
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %cap, i32 0, i32 0, !dbg !4580
  store i64 8, i64* %length, align 8, !dbg !4580
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %cap, i32 0, i32 1, !dbg !4580
  %arraydecay1 = getelementptr inbounds [2 x i32], [2 x i32]* %capbuf, i64 0, i64 0, !dbg !4581
  %1 = bitcast i32* %arraydecay1 to i8*, !dbg !4581
  store i8* %1, i8** %pointer, align 8, !dbg !4580
  %ret = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %osc_context, i32 0, i32 3, !dbg !4578
  %2 = bitcast %struct.acpi_buffer* %ret to i8*, !dbg !4578
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 16, i1 false), !dbg !4578
  %3 = load i8, i8* @acpi_hwp_native_thermal_lvt_set, align 1, !dbg !4582
  %tobool = trunc i8 %3 to i1, !dbg !4582
  br i1 %tobool, label %if.then, label %if.end, !dbg !4584

if.then:                                          ; preds = %entry
  store i32 16387, i32* %retval, align 4, !dbg !4585
  br label %return, !dbg !4585

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %capbuf, i64 0, i64 0, !dbg !4586
  store i32 0, i32* %arrayidx, align 4, !dbg !4587
  %arrayidx2 = getelementptr [2 x i32], [2 x i32]* %capbuf, i64 0, i64 1, !dbg !4588
  store i32 4096, i32* %arrayidx2, align 4, !dbg !4589
  %4 = load i8*, i8** %handle.addr, align 8, !dbg !4590
  %call = call i32 @acpi_run_osc(i8* %4, %struct.acpi_osc_context* %osc_context) #9, !dbg !4590
  %tobool3 = icmp ne i32 %call, 0, !dbg !4590
  br i1 %tobool3, label %if.end20, label %if.then4, !dbg !4592

if.then4:                                         ; preds = %if.end
  %ret5 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %osc_context, i32 0, i32 3, !dbg !4593
  %pointer6 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %ret5, i32 0, i32 1, !dbg !4596
  %5 = load i8*, i8** %pointer6, align 8, !dbg !4596
  %tobool7 = icmp ne i8* %5, null, !dbg !4597
  br i1 %tobool7, label %land.lhs.true, label %if.end17, !dbg !4598

land.lhs.true:                                    ; preds = %if.then4
  %ret8 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %osc_context, i32 0, i32 3, !dbg !4599
  %length9 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %ret8, i32 0, i32 0, !dbg !4600
  %6 = load i64, i64* %length9, align 8, !dbg !4600
  %cmp = icmp ugt i64 %6, 1, !dbg !4601
  br i1 %cmp, label %if.then10, label %if.end17, !dbg !4602

if.then10:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i32** %capbuf_ret, metadata !4603, metadata !DIExpression()), !dbg !4605
  %ret11 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %osc_context, i32 0, i32 3, !dbg !4606
  %pointer12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %ret11, i32 0, i32 1, !dbg !4607
  %7 = load i8*, i8** %pointer12, align 8, !dbg !4607
  %8 = bitcast i8* %7 to i32*, !dbg !4608
  store i32* %8, i32** %capbuf_ret, align 8, !dbg !4605
  %9 = load i32*, i32** %capbuf_ret, align 8, !dbg !4609
  %arrayidx13 = getelementptr i32, i32* %9, i64 1, !dbg !4609
  %10 = load i32, i32* %arrayidx13, align 4, !dbg !4609
  %and = and i32 %10, 4096, !dbg !4611
  %tobool14 = icmp ne i32 %and, 0, !dbg !4611
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !4612

if.then15:                                        ; preds = %if.then10
  %11 = load i8*, i8** %handle.addr, align 8, !dbg !4613
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0)) #9, !dbg !4613
  store i8 1, i8* @acpi_hwp_native_thermal_lvt_set, align 1, !dbg !4615
  br label %if.end16, !dbg !4616

if.end16:                                         ; preds = %if.then15, %if.then10
  br label %if.end17, !dbg !4617

if.end17:                                         ; preds = %if.end16, %land.lhs.true, %if.then4
  %ret18 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %osc_context, i32 0, i32 3, !dbg !4618
  %pointer19 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %ret18, i32 0, i32 1, !dbg !4619
  %12 = load i8*, i8** %pointer19, align 8, !dbg !4619
  call void @kfree(i8* %12) #9, !dbg !4620
  br label %if.end20, !dbg !4621

if.end20:                                         ; preds = %if.end17, %if.end
  store i32 0, i32* %retval, align 4, !dbg !4622
  br label %return, !dbg !4622

return:                                           ; preds = %if.end20, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !4623
  ret i32 %13, !dbg !4623
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_devices(i8*, i32 (i8*, i32, i8*, i8**)*, i8*, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @acpi_duplicate_processor_id(i32 %proc_id) #1 !dbg !4624 {
entry:
  %retval = alloca i1, align 1
  %proc_id.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %proc_id, i32* %proc_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %proc_id.addr, metadata !4627, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4629, metadata !DIExpression()), !dbg !4630
  store i32 0, i32* %i, align 4, !dbg !4631
  br label %for.cond, !dbg !4633

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4634
  %1 = load i32, i32* @nr_duplicate_ids, align 4, !dbg !4636
  %cmp = icmp slt i32 %0, %1, !dbg !4637
  br i1 %cmp, label %for.body, label %for.end, !dbg !4638

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !4639
  %idxprom = sext i32 %2 to i64, !dbg !4642
  %arrayidx = getelementptr [1 x i32], [1 x i32]* @duplicate_processor_ids, i64 0, i64 %idxprom, !dbg !4642
  %3 = load i32, i32* %arrayidx, align 4, !dbg !4642
  %4 = load i32, i32* %proc_id.addr, align 4, !dbg !4643
  %cmp1 = icmp eq i32 %3, %4, !dbg !4644
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4645

if.then:                                          ; preds = %for.body
  store i1 true, i1* %retval, align 1, !dbg !4646
  br label %return, !dbg !4646

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4647

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4, !dbg !4648
  %inc = add i32 %5, 1, !dbg !4648
  store i32 %inc, i32* %i, align 4, !dbg !4648
  br label %for.cond, !dbg !4649, !llvm.loop !4650

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1, !dbg !4652
  br label %return, !dbg !4652

return:                                           ; preds = %for.end, %if.then
  %6 = load i1, i1* %retval, align 1, !dbg !4653
  ret i1 %6, !dbg !4653
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_processor_init() #0 section ".init.text" !dbg !4654 {
entry:
  call void @acpi_processor_check_duplicates() #12, !dbg !4655
  %call = call i32 @acpi_scan_add_handler_with_hotplug(%struct.acpi_scan_handler* @processor_handler, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !4656
  %call1 = call i32 @acpi_scan_add_handler(%struct.acpi_scan_handler* @processor_container_handler) #9, !dbg !4657
  ret void, !dbg !4658
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @acpi_processor_check_duplicates() #0 section ".init.text" !dbg !4659 {
entry:
  %call = call i32 @acpi_walk_namespace(i32 12, i8* inttoptr (i64 -1 to i8*), i32 -1, i32 (i8*, i32, i8*, i8**)* @acpi_processor_ids_walk, i32 (i8*, i32, i8*, i8**)* null, i8* null, i8** null) #9, !dbg !4660
  %call1 = call i32 @acpi_get_devices(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 (i8*, i32, i8*, i8**)* @acpi_processor_ids_walk, i8* null, i8** null) #9, !dbg !4661
  ret void, !dbg !4662
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_scan_add_handler_with_hotplug(%struct.acpi_scan_handler*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_scan_add_handler(%struct.acpi_scan_handler*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @acpi_processor_claim_cst_control() #1 !dbg !4153 {
entry:
  %retval = alloca i1, align 1
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4663, metadata !DIExpression()), !dbg !4664
  %0 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 26), align 1, !dbg !4665
  %tobool = icmp ne i8 %0, 0, !dbg !4667
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4668

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* @acpi_processor_claim_cst_control.cst_control_claimed, align 1, !dbg !4669
  %tobool1 = trunc i8 %1 to i1, !dbg !4669
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4670

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 true, i1* %retval, align 1, !dbg !4671
  br label %return, !dbg !4671

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 6), align 1, !dbg !4672
  %conv = zext i32 %2 to i64, !dbg !4673
  %3 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 26), align 1, !dbg !4674
  %conv2 = zext i8 %3 to i32, !dbg !4675
  %call = call i32 @acpi_os_write_port(i64 %conv, i32 %conv2, i32 8) #9, !dbg !4676
  store i32 %call, i32* %status, align 4, !dbg !4677
  %4 = load i32, i32* %status, align 4, !dbg !4678
  %tobool3 = icmp ne i32 %4, 0, !dbg !4678
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !4680

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0)) #12, !dbg !4681
  store i1 false, i1* %retval, align 1, !dbg !4683
  br label %return, !dbg !4683

if.end6:                                          ; preds = %if.end
  store i8 1, i8* @acpi_processor_claim_cst_control.cst_control_claimed, align 1, !dbg !4684
  store i1 true, i1* %retval, align 1, !dbg !4685
  br label %return, !dbg !4685

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %5 = load i1, i1* %retval, align 1, !dbg !4686
  ret i1 %5, !dbg !4686
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_write_port(i64, i32, i32) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_processor_evaluate_cst(i8* %handle, i32 %cpu, %struct.acpi_processor_power* %info) #1 !dbg !4687 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %cpu.addr = alloca i32, align 4
  %info.addr = alloca %struct.acpi_processor_power*, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %cst = alloca %union.acpi_object*, align 8
  %status = alloca i32, align 4
  %count = alloca i64, align 8
  %last_index = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %element = alloca %union.acpi_object*, align 8
  %obj = alloca %union.acpi_object*, align 8
  %reg = alloca %struct.acpi_power_register*, align 8
  %cx = alloca %struct.acpi_processor_cx, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !4691, metadata !DIExpression()), !dbg !4692
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !4693, metadata !DIExpression()), !dbg !4694
  store %struct.acpi_processor_power* %info, %struct.acpi_processor_power** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_power** %info.addr, metadata !4695, metadata !DIExpression()), !dbg !4696
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !4697, metadata !DIExpression()), !dbg !4698
  %0 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !4698
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_processor_evaluate_cst.buffer to i8*), i64 16, i1 false), !dbg !4698
  call void @llvm.dbg.declare(metadata %union.acpi_object** %cst, metadata !4699, metadata !DIExpression()), !dbg !4700
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4701, metadata !DIExpression()), !dbg !4702
  call void @llvm.dbg.declare(metadata i64* %count, metadata !4703, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.declare(metadata i32* %last_index, metadata !4705, metadata !DIExpression()), !dbg !4706
  store i32 0, i32* %last_index, align 4, !dbg !4706
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4707, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4709, metadata !DIExpression()), !dbg !4710
  store i32 0, i32* %ret, align 4, !dbg !4710
  %1 = load i8*, i8** %handle.addr, align 8, !dbg !4711
  %call = call i32 @acpi_evaluate_object(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* %buffer) #9, !dbg !4712
  store i32 %call, i32* %status, align 4, !dbg !4713
  %2 = load i32, i32* %status, align 4, !dbg !4714
  %tobool = icmp ne i32 %2, 0, !dbg !4714
  br i1 %tobool, label %if.then, label %if.end, !dbg !4716

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !4717
  %3 = load i32, i32* %tmp, align 4, !dbg !4721
  store i32 -19, i32* %retval, align 4, !dbg !4722
  br label %return, !dbg !4722

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !4723
  %4 = load i8*, i8** %pointer, align 8, !dbg !4723
  %5 = bitcast i8* %4 to %union.acpi_object*, !dbg !4724
  store %union.acpi_object* %5, %union.acpi_object** %cst, align 8, !dbg !4725
  %6 = load %union.acpi_object*, %union.acpi_object** %cst, align 8, !dbg !4726
  %tobool1 = icmp ne %union.acpi_object* %6, null, !dbg !4726
  br i1 %tobool1, label %lor.lhs.false, label %if.then5, !dbg !4728

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %union.acpi_object*, %union.acpi_object** %cst, align 8, !dbg !4729
  %type = bitcast %union.acpi_object* %7 to i32*, !dbg !4730
  %8 = load i32, i32* %type, align 8, !dbg !4730
  %cmp = icmp ne i32 %8, 4, !dbg !4731
  br i1 %cmp, label %if.then5, label %lor.lhs.false2, !dbg !4732

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %9 = load %union.acpi_object*, %union.acpi_object** %cst, align 8, !dbg !4733
  %package = bitcast %union.acpi_object* %9 to %struct.anon.70*, !dbg !4734
  %count3 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %package, i32 0, i32 1, !dbg !4735
  %10 = load i32, i32* %count3, align 4, !dbg !4735
  %cmp4 = icmp ult i32 %10, 2, !dbg !4736
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4737

if.then5:                                         ; preds = %lor.lhs.false2, %lor.lhs.false, %if.end
  %11 = load i8*, i8** %handle.addr, align 8, !dbg !4738
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !4738
  store i32 -14, i32* %ret, align 4, !dbg !4740
  br label %end, !dbg !4741

if.end6:                                          ; preds = %lor.lhs.false2
  %12 = load %union.acpi_object*, %union.acpi_object** %cst, align 8, !dbg !4742
  %package7 = bitcast %union.acpi_object* %12 to %struct.anon.70*, !dbg !4743
  %elements = getelementptr inbounds %struct.anon.70, %struct.anon.70* %package7, i32 0, i32 2, !dbg !4744
  %13 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !4744
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %13, i64 0, !dbg !4742
  %integer = bitcast %union.acpi_object* %arrayidx to %struct.anon.67*, !dbg !4745
  %value = getelementptr inbounds %struct.anon.67, %struct.anon.67* %integer, i32 0, i32 1, !dbg !4746
  %14 = load i64, i64* %value, align 8, !dbg !4746
  store i64 %14, i64* %count, align 8, !dbg !4747
  %15 = load i64, i64* %count, align 8, !dbg !4748
  %cmp8 = icmp ult i64 %15, 1, !dbg !4750
  br i1 %cmp8, label %if.then14, label %lor.lhs.false9, !dbg !4751

lor.lhs.false9:                                   ; preds = %if.end6
  %16 = load i64, i64* %count, align 8, !dbg !4752
  %17 = load %union.acpi_object*, %union.acpi_object** %cst, align 8, !dbg !4753
  %package10 = bitcast %union.acpi_object* %17 to %struct.anon.70*, !dbg !4754
  %count11 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %package10, i32 0, i32 1, !dbg !4755
  %18 = load i32, i32* %count11, align 4, !dbg !4755
  %sub = sub i32 %18, 1, !dbg !4756
  %conv = zext i32 %sub to i64, !dbg !4753
  %cmp12 = icmp ne i64 %16, %conv, !dbg !4757
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !4758

if.then14:                                        ; preds = %lor.lhs.false9, %if.end6
  %19 = load i8*, i8** %handle.addr, align 8, !dbg !4759
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !4759
  store i32 -14, i32* %ret, align 4, !dbg !4761
  br label %end, !dbg !4762

if.end15:                                         ; preds = %lor.lhs.false9
  store i32 1, i32* %i, align 4, !dbg !4763
  br label %for.cond, !dbg !4765

for.cond:                                         ; preds = %for.inc, %if.end15
  %20 = load i32, i32* %i, align 4, !dbg !4766
  %conv16 = sext i32 %20 to i64, !dbg !4766
  %21 = load i64, i64* %count, align 8, !dbg !4768
  %cmp17 = icmp ule i64 %conv16, %21, !dbg !4769
  br i1 %cmp17, label %for.body, label %for.end, !dbg !4770

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %union.acpi_object** %element, metadata !4771, metadata !DIExpression()), !dbg !4773
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj, metadata !4774, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.declare(metadata %struct.acpi_power_register** %reg, metadata !4776, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.declare(metadata %struct.acpi_processor_cx* %cx, metadata !4778, metadata !DIExpression()), !dbg !4779
  %22 = load i32, i32* %last_index, align 4, !dbg !4780
  %cmp19 = icmp sge i32 %22, 7, !dbg !4782
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !4783

if.then21:                                        ; preds = %for.body
  %23 = load i8*, i8** %handle.addr, align 8, !dbg !4784
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 7) #9, !dbg !4784
  br label %for.end, !dbg !4786

if.end22:                                         ; preds = %for.body
  %24 = bitcast %struct.acpi_processor_cx* %cx to i8*, !dbg !4787
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 52, i1 false), !dbg !4787
  %25 = load %union.acpi_object*, %union.acpi_object** %cst, align 8, !dbg !4788
  %package23 = bitcast %union.acpi_object* %25 to %struct.anon.70*, !dbg !4789
  %elements24 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %package23, i32 0, i32 2, !dbg !4790
  %26 = load %union.acpi_object*, %union.acpi_object** %elements24, align 8, !dbg !4790
  %27 = load i32, i32* %i, align 4, !dbg !4791
  %idxprom = sext i32 %27 to i64, !dbg !4788
  %arrayidx25 = getelementptr %union.acpi_object, %union.acpi_object* %26, i64 %idxprom, !dbg !4788
  store %union.acpi_object* %arrayidx25, %union.acpi_object** %element, align 8, !dbg !4792
  %28 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !4793
  %type26 = bitcast %union.acpi_object* %28 to i32*, !dbg !4795
  %29 = load i32, i32* %type26, align 8, !dbg !4795
  %cmp27 = icmp ne i32 %29, 4, !dbg !4796
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !4797

if.then29:                                        ; preds = %if.end22
  %30 = load i8*, i8** %handle.addr, align 8, !dbg !4798
  %31 = load i32, i32* %i, align 4, !dbg !4798
  %32 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !4798
  %type30 = bitcast %union.acpi_object* %32 to i32*, !dbg !4798
  %33 = load i32, i32* %type30, align 8, !dbg !4798
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %31, i32 %33) #9, !dbg !4798
  br label %for.inc, !dbg !4800

if.end31:                                         ; preds = %if.end22
  %34 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !4801
  %package32 = bitcast %union.acpi_object* %34 to %struct.anon.70*, !dbg !4803
  %count33 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %package32, i32 0, i32 1, !dbg !4804
  %35 = load i32, i32* %count33, align 4, !dbg !4804
  %cmp34 = icmp ne i32 %35, 4, !dbg !4805
  br i1 %cmp34, label %if.then36, label %if.end39, !dbg !4806

if.then36:                                        ; preds = %if.end31
  %36 = load i8*, i8** %handle.addr, align 8, !dbg !4807
  %37 = load i32, i32* %i, align 4, !dbg !4807
  %38 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !4807
  %package37 = bitcast %union.acpi_object* %38 to %struct.anon.70*, !dbg !4807
  %count38 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %package37, i32 0, i32 1, !dbg !4807
  %39 = load i32, i32* %count38, align 4, !dbg !4807
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %37, i32 %39) #9, !dbg !4807
  br label %for.inc, !dbg !4809

if.end39:                                         ; preds = %if.end31
  %40 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !4810
  %package40 = bitcast %union.acpi_object* %40 to %struct.anon.70*, !dbg !4811
  %elements41 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %package40, i32 0, i32 2, !dbg !4812
  %41 = load %union.acpi_object*, %union.acpi_object** %elements41, align 8, !dbg !4812
  %arrayidx42 = getelementptr %union.acpi_object, %union.acpi_object* %41, i64 0, !dbg !4810
  store %union.acpi_object* %arrayidx42, %union.acpi_object** %obj, align 8, !dbg !4813
  %42 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !4814
  %type43 = bitcast %union.acpi_object* %42 to i32*, !dbg !4816
  %43 = load i32, i32* %type43, align 8, !dbg !4816
  %cmp44 = icmp ne i32 %43, 3, !dbg !4817
  br i1 %cmp44, label %if.then46, label %if.end48, !dbg !4818

if.then46:                                        ; preds = %if.end39
  %44 = load i8*, i8** %handle.addr, align 8, !dbg !4819
  %45 = load i32, i32* %i, align 4, !dbg !4819
  %46 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !4819
  %type47 = bitcast %union.acpi_object* %46 to i32*, !dbg !4819
  %47 = load i32, i32* %type47, align 8, !dbg !4819
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %44, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0), i32 %45, i32 %47) #9, !dbg !4819
  br label %for.inc, !dbg !4821

if.end48:                                         ; preds = %if.end39
  %48 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !4822
  %buffer49 = bitcast %union.acpi_object* %48 to %struct.anon.69*, !dbg !4823
  %pointer50 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %buffer49, i32 0, i32 2, !dbg !4824
  %49 = load i8*, i8** %pointer50, align 8, !dbg !4824
  %50 = bitcast i8* %49 to %struct.acpi_power_register*, !dbg !4825
  store %struct.acpi_power_register* %50, %struct.acpi_power_register** %reg, align 8, !dbg !4826
  %51 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !4827
  %package51 = bitcast %union.acpi_object* %51 to %struct.anon.70*, !dbg !4828
  %elements52 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %package51, i32 0, i32 2, !dbg !4829
  %52 = load %union.acpi_object*, %union.acpi_object** %elements52, align 8, !dbg !4829
  %arrayidx53 = getelementptr %union.acpi_object, %union.acpi_object* %52, i64 1, !dbg !4827
  store %union.acpi_object* %arrayidx53, %union.acpi_object** %obj, align 8, !dbg !4830
  %53 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !4831
  %type54 = bitcast %union.acpi_object* %53 to i32*, !dbg !4833
  %54 = load i32, i32* %type54, align 8, !dbg !4833
  %cmp55 = icmp ne i32 %54, 1, !dbg !4834
  br i1 %cmp55, label %if.then57, label %if.end59, !dbg !4835

if.then57:                                        ; preds = %if.end48
  %55 = load i8*, i8** %handle.addr, align 8, !dbg !4836
  %56 = load i32, i32* %i, align 4, !dbg !4836
  %57 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !4836
  %type58 = bitcast %union.acpi_object* %57 to i32*, !dbg !4836
  %58 = load i32, i32* %type58, align 8, !dbg !4836
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %55, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.12, i64 0, i64 0), i32 %56, i32 %58) #9, !dbg !4836
  br label %for.inc, !dbg !4838

if.end59:                                         ; preds = %if.end48
  %59 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !4839
  %integer60 = bitcast %union.acpi_object* %59 to %struct.anon.67*, !dbg !4840
  %value61 = getelementptr inbounds %struct.anon.67, %struct.anon.67* %integer60, i32 0, i32 1, !dbg !4841
  %60 = load i64, i64* %value61, align 8, !dbg !4841
  %conv62 = trunc i64 %60 to i8, !dbg !4839
  %type63 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %cx, i32 0, i32 1, !dbg !4842
  store i8 %conv62, i8* %type63, align 1, !dbg !4843
  %61 = load i32, i32* %i, align 4, !dbg !4844
  %cmp64 = icmp eq i32 %61, 1, !dbg !4846
  br i1 %cmp64, label %land.lhs.true, label %if.end71, !dbg !4847

land.lhs.true:                                    ; preds = %if.end59
  %type66 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %cx, i32 0, i32 1, !dbg !4848
  %62 = load i8, i8* %type66, align 1, !dbg !4848
  %conv67 = zext i8 %62 to i32, !dbg !4849
  %cmp68 = icmp ne i32 %conv67, 1, !dbg !4850
  br i1 %cmp68, label %if.then70, label %if.end71, !dbg !4851

if.then70:                                        ; preds = %land.lhs.true
  store i32 1, i32* %last_index, align 4, !dbg !4852
  br label %if.end71, !dbg !4853

if.end71:                                         ; preds = %if.then70, %land.lhs.true, %if.end59
  %63 = load %struct.acpi_power_register*, %struct.acpi_power_register** %reg, align 8, !dbg !4854
  %address = getelementptr inbounds %struct.acpi_power_register, %struct.acpi_power_register* %63, i32 0, i32 6, !dbg !4855
  %64 = load i64, i64* %address, align 1, !dbg !4855
  %conv72 = trunc i64 %64 to i32, !dbg !4854
  %address73 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %cx, i32 0, i32 2, !dbg !4856
  store i32 %conv72, i32* %address73, align 4, !dbg !4857
  %65 = load i32, i32* %last_index, align 4, !dbg !4858
  %add = add i32 %65, 1, !dbg !4859
  %conv74 = trunc i32 %add to i8, !dbg !4858
  %index = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %cx, i32 0, i32 4, !dbg !4860
  store i8 %conv74, i8* %index, align 1, !dbg !4861
  %66 = load %struct.acpi_power_register*, %struct.acpi_power_register** %reg, align 8, !dbg !4862
  %space_id = getelementptr inbounds %struct.acpi_power_register, %struct.acpi_power_register* %66, i32 0, i32 2, !dbg !4864
  %67 = load i8, i8* %space_id, align 1, !dbg !4864
  %conv75 = zext i8 %67 to i32, !dbg !4862
  %cmp76 = icmp eq i32 %conv75, 127, !dbg !4865
  br i1 %cmp76, label %if.then78, label %if.else106, !dbg !4866

if.then78:                                        ; preds = %if.end71
  %68 = load i32, i32* %cpu.addr, align 4, !dbg !4867
  %69 = load %struct.acpi_power_register*, %struct.acpi_power_register** %reg, align 8, !dbg !4870
  %call79 = call i32 @acpi_processor_ffh_cstate_probe(i32 %68, %struct.acpi_processor_cx* %cx, %struct.acpi_power_register* %69) #9, !dbg !4871
  %tobool80 = icmp ne i32 %call79, 0, !dbg !4871
  br i1 %tobool80, label %if.else93, label %if.then81, !dbg !4872

if.then81:                                        ; preds = %if.then78
  %type82 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %cx, i32 0, i32 1, !dbg !4873
  %70 = load i8, i8* %type82, align 1, !dbg !4873
  %conv83 = zext i8 %70 to i32, !dbg !4876
  %cmp84 = icmp eq i32 %conv83, 1, !dbg !4877
  br i1 %cmp84, label %land.lhs.true86, label %if.else, !dbg !4878

land.lhs.true86:                                  ; preds = %if.then81
  %71 = load i64, i64* @boot_option_idle_override, align 8, !dbg !4879
  %cmp87 = icmp eq i64 %71, 2, !dbg !4880
  br i1 %cmp87, label %if.then89, label %if.else, !dbg !4881

if.then89:                                        ; preds = %land.lhs.true86
  %entry_method = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %cx, i32 0, i32 3, !dbg !4882
  store i8 2, i8* %entry_method, align 4, !dbg !4884
  %desc = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %cx, i32 0, i32 7, !dbg !4885
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %desc, i64 0, i64 0, !dbg !4886
  %call90 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !4887
  br label %if.end92, !dbg !4888

if.else:                                          ; preds = %land.lhs.true86, %if.then81
  %entry_method91 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %cx, i32 0, i32 3, !dbg !4889
  store i8 1, i8* %entry_method91, align 4, !dbg !4891
  br label %if.end92

if.end92:                                         ; preds = %if.else, %if.then89
  br label %if.end105, !dbg !4892

if.else93:                                        ; preds = %if.then78
  %type94 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %cx, i32 0, i32 1, !dbg !4893
  %72 = load i8, i8* %type94, align 1, !dbg !4893
  %conv95 = zext i8 %72 to i32, !dbg !4895
  %cmp96 = icmp eq i32 %conv95, 1, !dbg !4896
  br i1 %cmp96, label %if.then98, label %if.else103, !dbg !4897

if.then98:                                        ; preds = %if.else93
  %entry_method99 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %cx, i32 0, i32 3, !dbg !4898
  store i8 2, i8* %entry_method99, align 4, !dbg !4900
  %desc100 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %cx, i32 0, i32 7, !dbg !4901
  %arraydecay101 = getelementptr inbounds [32 x i8], [32 x i8]* %desc100, i64 0, i64 0, !dbg !4902
  %call102 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay101, i64 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !4903
  br label %if.end104, !dbg !4904

if.else103:                                       ; preds = %if.else93
  %73 = load i8*, i8** %handle.addr, align 8, !dbg !4905
  %74 = load i32, i32* %i, align 4, !dbg !4905
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %73, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.14, i64 0, i64 0), i32 %74) #9, !dbg !4905
  br label %for.inc, !dbg !4907

if.end104:                                        ; preds = %if.then98
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.end92
  br label %if.end121, !dbg !4908

if.else106:                                       ; preds = %if.end71
  %75 = load %struct.acpi_power_register*, %struct.acpi_power_register** %reg, align 8, !dbg !4909
  %space_id107 = getelementptr inbounds %struct.acpi_power_register, %struct.acpi_power_register* %75, i32 0, i32 2, !dbg !4911
  %76 = load i8, i8* %space_id107, align 1, !dbg !4911
  %conv108 = zext i8 %76 to i32, !dbg !4909
  %cmp109 = icmp eq i32 %conv108, 1, !dbg !4912
  br i1 %cmp109, label %if.then111, label %if.else117, !dbg !4913

if.then111:                                       ; preds = %if.else106
  %entry_method112 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %cx, i32 0, i32 3, !dbg !4914
  store i8 0, i8* %entry_method112, align 4, !dbg !4916
  %desc113 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %cx, i32 0, i32 7, !dbg !4917
  %arraydecay114 = getelementptr inbounds [32 x i8], [32 x i8]* %desc113, i64 0, i64 0, !dbg !4918
  %address115 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %cx, i32 0, i32 2, !dbg !4919
  %77 = load i32, i32* %address115, align 4, !dbg !4919
  %call116 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay114, i64 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 %77) #9, !dbg !4920
  br label %if.end120, !dbg !4921

if.else117:                                       ; preds = %if.else106
  %78 = load i8*, i8** %handle.addr, align 8, !dbg !4922
  %79 = load i32, i32* %i, align 4, !dbg !4922
  %80 = load %struct.acpi_power_register*, %struct.acpi_power_register** %reg, align 8, !dbg !4922
  %space_id118 = getelementptr inbounds %struct.acpi_power_register, %struct.acpi_power_register* %80, i32 0, i32 2, !dbg !4922
  %81 = load i8, i8* %space_id118, align 1, !dbg !4922
  %conv119 = zext i8 %81 to i32, !dbg !4922
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %78, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.16, i64 0, i64 0), i32 %79, i32 %conv119) #9, !dbg !4922
  br label %for.inc, !dbg !4924

if.end120:                                        ; preds = %if.then111
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.end105
  %type122 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %cx, i32 0, i32 1, !dbg !4925
  %82 = load i8, i8* %type122, align 1, !dbg !4925
  %conv123 = zext i8 %82 to i32, !dbg !4927
  %cmp124 = icmp eq i32 %conv123, 1, !dbg !4928
  br i1 %cmp124, label %if.then126, label %if.end127, !dbg !4929

if.then126:                                       ; preds = %if.end121
  %valid = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %cx, i32 0, i32 0, !dbg !4930
  store i8 1, i8* %valid, align 4, !dbg !4931
  br label %if.end127, !dbg !4932

if.end127:                                        ; preds = %if.then126, %if.end121
  %83 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !4933
  %package128 = bitcast %union.acpi_object* %83 to %struct.anon.70*, !dbg !4934
  %elements129 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %package128, i32 0, i32 2, !dbg !4935
  %84 = load %union.acpi_object*, %union.acpi_object** %elements129, align 8, !dbg !4935
  %arrayidx130 = getelementptr %union.acpi_object, %union.acpi_object* %84, i64 2, !dbg !4933
  store %union.acpi_object* %arrayidx130, %union.acpi_object** %obj, align 8, !dbg !4936
  %85 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !4937
  %type131 = bitcast %union.acpi_object* %85 to i32*, !dbg !4939
  %86 = load i32, i32* %type131, align 8, !dbg !4939
  %cmp132 = icmp ne i32 %86, 1, !dbg !4940
  br i1 %cmp132, label %if.then134, label %if.end136, !dbg !4941

if.then134:                                       ; preds = %if.end127
  %87 = load i8*, i8** %handle.addr, align 8, !dbg !4942
  %88 = load i32, i32* %i, align 4, !dbg !4942
  %89 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !4942
  %type135 = bitcast %union.acpi_object* %89 to i32*, !dbg !4942
  %90 = load i32, i32* %type135, align 8, !dbg !4942
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %87, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.17, i64 0, i64 0), i32 %88, i32 %90) #9, !dbg !4942
  br label %for.inc, !dbg !4944

if.end136:                                        ; preds = %if.end127
  %91 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !4945
  %integer137 = bitcast %union.acpi_object* %91 to %struct.anon.67*, !dbg !4946
  %value138 = getelementptr inbounds %struct.anon.67, %struct.anon.67* %integer137, i32 0, i32 1, !dbg !4947
  %92 = load i64, i64* %value138, align 8, !dbg !4947
  %conv139 = trunc i64 %92 to i32, !dbg !4945
  %latency = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %cx, i32 0, i32 5, !dbg !4948
  store i32 %conv139, i32* %latency, align 4, !dbg !4949
  %93 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !4950
  %package140 = bitcast %union.acpi_object* %93 to %struct.anon.70*, !dbg !4951
  %elements141 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %package140, i32 0, i32 2, !dbg !4952
  %94 = load %union.acpi_object*, %union.acpi_object** %elements141, align 8, !dbg !4952
  %arrayidx142 = getelementptr %union.acpi_object, %union.acpi_object* %94, i64 3, !dbg !4950
  store %union.acpi_object* %arrayidx142, %union.acpi_object** %obj, align 8, !dbg !4953
  %95 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !4954
  %type143 = bitcast %union.acpi_object* %95 to i32*, !dbg !4956
  %96 = load i32, i32* %type143, align 8, !dbg !4956
  %cmp144 = icmp ne i32 %96, 1, !dbg !4957
  br i1 %cmp144, label %if.then146, label %if.end148, !dbg !4958

if.then146:                                       ; preds = %if.end136
  %97 = load i8*, i8** %handle.addr, align 8, !dbg !4959
  %98 = load i32, i32* %i, align 4, !dbg !4959
  %99 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !4959
  %type147 = bitcast %union.acpi_object* %99 to i32*, !dbg !4959
  %100 = load i32, i32* %type147, align 8, !dbg !4959
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %97, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i64 0, i64 0), i32 %98, i32 %100) #9, !dbg !4959
  br label %for.inc, !dbg !4961

if.end148:                                        ; preds = %if.end136
  %101 = load %struct.acpi_processor_power*, %struct.acpi_processor_power** %info.addr, align 8, !dbg !4962
  %102 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %101, i32 0, i32 1, !dbg !4963
  %states = bitcast %union.anon.76* %102 to [8 x %struct.acpi_processor_cx]*, !dbg !4963
  %103 = load i32, i32* %last_index, align 4, !dbg !4964
  %inc = add i32 %103, 1, !dbg !4964
  store i32 %inc, i32* %last_index, align 4, !dbg !4964
  %idxprom149 = sext i32 %inc to i64, !dbg !4962
  %arrayidx150 = getelementptr [8 x %struct.acpi_processor_cx], [8 x %struct.acpi_processor_cx]* %states, i64 0, i64 %idxprom149, !dbg !4962
  %104 = bitcast %struct.acpi_processor_cx* %arrayidx150 to i8*, !dbg !4965
  %105 = bitcast %struct.acpi_processor_cx* %cx to i8*, !dbg !4965
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %104, i8* align 4 %105, i64 52, i1 false), !dbg !4965
  br label %for.inc, !dbg !4966

for.inc:                                          ; preds = %if.end148, %if.then146, %if.then134, %if.else117, %if.else103, %if.then57, %if.then46, %if.then36, %if.then29
  %106 = load i32, i32* %i, align 4, !dbg !4967
  %inc151 = add i32 %106, 1, !dbg !4967
  store i32 %inc151, i32* %i, align 4, !dbg !4967
  br label %for.cond, !dbg !4968, !llvm.loop !4969

for.end:                                          ; preds = %if.then21, %for.cond
  %107 = load i8*, i8** %handle.addr, align 8, !dbg !4971
  %108 = load i32, i32* %last_index, align 4, !dbg !4971
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 %108) #9, !dbg !4971
  %109 = load i32, i32* %last_index, align 4, !dbg !4972
  %110 = load %struct.acpi_processor_power*, %struct.acpi_processor_power** %info.addr, align 8, !dbg !4973
  %count152 = getelementptr inbounds %struct.acpi_processor_power, %struct.acpi_processor_power* %110, i32 0, i32 0, !dbg !4974
  store i32 %109, i32* %count152, align 8, !dbg !4975
  br label %end, !dbg !4973

end:                                              ; preds = %for.end, %if.then14, %if.then5
  call void @llvm.dbg.label(metadata !4976), !dbg !4977
  %pointer153 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !4978
  %111 = load i8*, i8** %pointer153, align 8, !dbg !4978
  call void @kfree(i8* %111) #9, !dbg !4979
  %112 = load i32, i32* %ret, align 4, !dbg !4980
  store i32 %112, i32* %retval, align 4, !dbg !4981
  br label %return, !dbg !4981

return:                                           ; preds = %end, %if.then
  %113 = load i32, i32* %retval, align 4, !dbg !4982
  ret i32 %113, !dbg !4982
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_handle_printk(i8*, i8*, i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noredzone
declare dso_local i32 @acpi_processor_ffh_cstate_probe(i32, %struct.acpi_processor_cx*, %struct.acpi_power_register*) #2

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #1 !dbg !4983 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4987, metadata !DIExpression()), !dbg !4988
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4989, metadata !DIExpression()), !dbg !4990
  ret i1 true, !dbg !4991
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #1 !dbg !4992 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4996, metadata !DIExpression()), !dbg !4997
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4998, metadata !DIExpression()), !dbg !4999
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5000, metadata !DIExpression()), !dbg !5001
  ret void, !dbg !5002
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_run_osc(i8*, %struct.acpi_osc_context*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_ids_walk(i8* %handle, i32 %lvl, i8* %context, i8** %rv) #0 section ".init.text" !dbg !5003 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %lvl.addr = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %rv.addr = alloca i8**, align 8
  %status = alloca i32, align 4
  %acpi_type = alloca i32, align 4
  %uid = alloca i64, align 8
  %object = alloca %union.acpi_object, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !5004, metadata !DIExpression()), !dbg !5005
  store i32 %lvl, i32* %lvl.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %lvl.addr, metadata !5006, metadata !DIExpression()), !dbg !5007
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !5008, metadata !DIExpression()), !dbg !5009
  store i8** %rv, i8*** %rv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %rv.addr, metadata !5010, metadata !DIExpression()), !dbg !5011
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5012, metadata !DIExpression()), !dbg !5013
  call void @llvm.dbg.declare(metadata i32* %acpi_type, metadata !5014, metadata !DIExpression()), !dbg !5015
  call void @llvm.dbg.declare(metadata i64* %uid, metadata !5016, metadata !DIExpression()), !dbg !5017
  call void @llvm.dbg.declare(metadata %union.acpi_object* %object, metadata !5018, metadata !DIExpression()), !dbg !5019
  %0 = bitcast %union.acpi_object* %object to i8*, !dbg !5019
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast ({ i32, [20 x i8] }* @__const.acpi_processor_ids_walk.object to i8*), i64 24, i1 false), !dbg !5019
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !5020, metadata !DIExpression()), !dbg !5021
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 0, !dbg !5022
  store i64 24, i64* %length, align 8, !dbg !5022
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !5022
  %1 = bitcast %union.acpi_object* %object to i8*, !dbg !5023
  store i8* %1, i8** %pointer, align 8, !dbg !5022
  %2 = load i8*, i8** %handle.addr, align 8, !dbg !5024
  %call = call i32 @acpi_get_type(i8* %2, i32* %acpi_type) #9, !dbg !5025
  store i32 %call, i32* %status, align 4, !dbg !5026
  %3 = load i32, i32* %status, align 4, !dbg !5027
  %tobool = icmp ne i32 %3, 0, !dbg !5027
  br i1 %tobool, label %if.then, label %if.end, !dbg !5029

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %status, align 4, !dbg !5030
  store i32 %4, i32* %retval, align 4, !dbg !5031
  br label %return, !dbg !5031

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %acpi_type, align 4, !dbg !5032
  switch i32 %5, label %sw.default [
    i32 12, label %sw.bb
    i32 6, label %sw.bb5
  ], !dbg !5033

sw.bb:                                            ; preds = %if.end
  %6 = load i8*, i8** %handle.addr, align 8, !dbg !5034
  %call1 = call i32 @acpi_evaluate_object(i8* %6, i8* null, %struct.acpi_object_list* null, %struct.acpi_buffer* %buffer) #9, !dbg !5036
  store i32 %call1, i32* %status, align 4, !dbg !5037
  %7 = load i32, i32* %status, align 4, !dbg !5038
  %tobool2 = icmp ne i32 %7, 0, !dbg !5038
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5040

if.then3:                                         ; preds = %sw.bb
  br label %err, !dbg !5041

if.end4:                                          ; preds = %sw.bb
  %processor = bitcast %union.acpi_object* %object to %struct.anon.72*, !dbg !5042
  %proc_id = getelementptr inbounds %struct.anon.72, %struct.anon.72* %processor, i32 0, i32 1, !dbg !5043
  %8 = load i32, i32* %proc_id, align 4, !dbg !5043
  %conv = zext i32 %8 to i64, !dbg !5044
  store i64 %conv, i64* %uid, align 8, !dbg !5045
  br label %sw.epilog, !dbg !5046

sw.bb5:                                           ; preds = %if.end
  %9 = load i8*, i8** %handle.addr, align 8, !dbg !5047
  %call6 = call i32 @acpi_evaluate_integer(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %struct.acpi_object_list* null, i64* %uid) #9, !dbg !5048
  store i32 %call6, i32* %status, align 4, !dbg !5049
  %10 = load i32, i32* %status, align 4, !dbg !5050
  %tobool7 = icmp ne i32 %10, 0, !dbg !5050
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5052

if.then8:                                         ; preds = %sw.bb5
  br label %err, !dbg !5053

if.end9:                                          ; preds = %sw.bb5
  br label %sw.epilog, !dbg !5054

sw.default:                                       ; preds = %if.end
  br label %err, !dbg !5055

sw.epilog:                                        ; preds = %if.end9, %if.end4
  %11 = load i64, i64* %uid, align 8, !dbg !5056
  %conv10 = trunc i64 %11 to i32, !dbg !5056
  call void @processor_validated_ids_update(i32 %conv10) #12, !dbg !5057
  store i32 0, i32* %retval, align 4, !dbg !5058
  br label %return, !dbg !5058

err:                                              ; preds = %sw.default, %if.then8, %if.then3
  call void @llvm.dbg.label(metadata !5059), !dbg !5060
  %12 = load i8*, i8** %handle.addr, align 8, !dbg !5061
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0)) #9, !dbg !5061
  store i32 0, i32* %retval, align 4, !dbg !5062
  br label %return, !dbg !5062

return:                                           ; preds = %err, %sw.epilog, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !5063
  ret i32 %13, !dbg !5063
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_type(i8*, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_integer(i8*, i8*, %struct.acpi_object_list*, i64*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @processor_validated_ids_update(i32 %proc_id) #0 section ".init.text" !dbg !5064 {
entry:
  %proc_id.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %proc_id, i32* %proc_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %proc_id.addr, metadata !5065, metadata !DIExpression()), !dbg !5066
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5067, metadata !DIExpression()), !dbg !5068
  %0 = load i32, i32* @nr_unique_ids, align 4, !dbg !5069
  %cmp = icmp eq i32 %0, 1, !dbg !5071
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5072

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @nr_duplicate_ids, align 4, !dbg !5073
  %cmp1 = icmp eq i32 %1, 1, !dbg !5074
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5075

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !5076

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !dbg !5077
  br label %for.cond, !dbg !5079

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !5080
  %3 = load i32, i32* @nr_duplicate_ids, align 4, !dbg !5082
  %cmp2 = icmp slt i32 %2, %3, !dbg !5083
  br i1 %cmp2, label %for.body, label %for.end, !dbg !5084

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !5085
  %idxprom = sext i32 %4 to i64, !dbg !5088
  %arrayidx = getelementptr [1 x i32], [1 x i32]* @duplicate_processor_ids, i64 0, i64 %idxprom, !dbg !5088
  %5 = load i32, i32* %arrayidx, align 4, !dbg !5088
  %6 = load i32, i32* %proc_id.addr, align 4, !dbg !5089
  %cmp3 = icmp eq i32 %5, %6, !dbg !5090
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !5091

if.then4:                                         ; preds = %for.body
  br label %return, !dbg !5092

if.end5:                                          ; preds = %for.body
  br label %for.inc, !dbg !5093

for.inc:                                          ; preds = %if.end5
  %7 = load i32, i32* %i, align 4, !dbg !5094
  %inc = add i32 %7, 1, !dbg !5094
  store i32 %inc, i32* %i, align 4, !dbg !5094
  br label %for.cond, !dbg !5095, !llvm.loop !5096

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !5098
  br label %for.cond6, !dbg !5100

for.cond6:                                        ; preds = %for.inc17, %for.end
  %8 = load i32, i32* %i, align 4, !dbg !5101
  %9 = load i32, i32* @nr_unique_ids, align 4, !dbg !5103
  %cmp7 = icmp slt i32 %8, %9, !dbg !5104
  br i1 %cmp7, label %for.body8, label %for.end19, !dbg !5105

for.body8:                                        ; preds = %for.cond6
  %10 = load i32, i32* %i, align 4, !dbg !5106
  %idxprom9 = sext i32 %10 to i64, !dbg !5109
  %arrayidx10 = getelementptr [1 x i32], [1 x i32]* @unique_processor_ids, i64 0, i64 %idxprom9, !dbg !5109
  %11 = load i32, i32* %arrayidx10, align 4, !dbg !5109
  %12 = load i32, i32* %proc_id.addr, align 4, !dbg !5110
  %cmp11 = icmp eq i32 %11, %12, !dbg !5111
  br i1 %cmp11, label %if.then12, label %if.end16, !dbg !5112

if.then12:                                        ; preds = %for.body8
  %13 = load i32, i32* %proc_id.addr, align 4, !dbg !5113
  %14 = load i32, i32* @nr_duplicate_ids, align 4, !dbg !5115
  %idxprom13 = sext i32 %14 to i64, !dbg !5116
  %arrayidx14 = getelementptr [1 x i32], [1 x i32]* @duplicate_processor_ids, i64 0, i64 %idxprom13, !dbg !5116
  store i32 %13, i32* %arrayidx14, align 4, !dbg !5117
  %15 = load i32, i32* @nr_duplicate_ids, align 4, !dbg !5118
  %inc15 = add i32 %15, 1, !dbg !5118
  store i32 %inc15, i32* @nr_duplicate_ids, align 4, !dbg !5118
  br label %return, !dbg !5119

if.end16:                                         ; preds = %for.body8
  br label %for.inc17, !dbg !5120

for.inc17:                                        ; preds = %if.end16
  %16 = load i32, i32* %i, align 4, !dbg !5121
  %inc18 = add i32 %16, 1, !dbg !5121
  store i32 %inc18, i32* %i, align 4, !dbg !5121
  br label %for.cond6, !dbg !5122, !llvm.loop !5123

for.end19:                                        ; preds = %for.cond6
  %17 = load i32, i32* %proc_id.addr, align 4, !dbg !5125
  %18 = load i32, i32* @nr_unique_ids, align 4, !dbg !5126
  %idxprom20 = sext i32 %18 to i64, !dbg !5127
  %arrayidx21 = getelementptr [1 x i32], [1 x i32]* @unique_processor_ids, i64 0, i64 %idxprom20, !dbg !5127
  store i32 %17, i32* %arrayidx21, align 4, !dbg !5128
  %19 = load i32, i32* @nr_unique_ids, align 4, !dbg !5129
  %inc22 = add i32 %19, 1, !dbg !5129
  store i32 %inc22, i32* @nr_unique_ids, align 4, !dbg !5129
  br label %return, !dbg !5130

return:                                           ; preds = %for.end19, %if.then12, %if.then4, %if.then
  ret void, !dbg !5130
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_add(%struct.acpi_device* %device, %struct.acpi_device_id* %id) #1 !dbg !5131 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %id.addr = alloca %struct.acpi_device_id*, align 8
  %pr = alloca %struct.acpi_processor*, align 8
  %dev = alloca %struct.device*, align 8
  %result = alloca i32, align 4
  %tmp = alloca i8**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp29 = alloca i8**, align 8
  %tmp33 = alloca i8**, align 8
  %__vpp_verify35 = alloca i8*, align 8
  %tmp37 = alloca i8**, align 8
  %tmp45 = alloca i8**, align 8
  %__vpp_verify47 = alloca i8*, align 8
  %tmp49 = alloca i8**, align 8
  %tmp51 = alloca %struct.acpi_processor**, align 8
  %__vpp_verify53 = alloca i8*, align 8
  %tmp55 = alloca %struct.acpi_processor**, align 8
  %tmp77 = alloca %struct.acpi_processor**, align 8
  %__vpp_verify79 = alloca i8*, align 8
  %tmp81 = alloca %struct.acpi_processor**, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !5132, metadata !DIExpression()), !dbg !5133
  store %struct.acpi_device_id* %id, %struct.acpi_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device_id** %id.addr, metadata !5134, metadata !DIExpression()), !dbg !5135
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr, metadata !5136, metadata !DIExpression()), !dbg !5137
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !5138, metadata !DIExpression()), !dbg !5139
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5140, metadata !DIExpression()), !dbg !5141
  store i32 0, i32* %result, align 4, !dbg !5141
  %call = call i8* @kzalloc(i64 992, i32 3264) #9, !dbg !5142
  %0 = bitcast i8* %call to %struct.acpi_processor*, !dbg !5142
  store %struct.acpi_processor* %0, %struct.acpi_processor** %pr, align 8, !dbg !5143
  %1 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5144
  %tobool = icmp ne %struct.acpi_processor* %1, null, !dbg !5144
  br i1 %tobool, label %if.end, label %if.then, !dbg !5146

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5147
  br label %return, !dbg !5147

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5148
  %throttling = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %2, i32 0, i32 10, !dbg !5150
  %shared_cpu_map = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling, i32 0, i32 7, !dbg !5151
  %call1 = call zeroext i1 @zalloc_cpumask_var([1 x %struct.cpumask]* %shared_cpu_map, i32 3264) #9, !dbg !5152
  br i1 %call1, label %if.end3, label %if.then2, !dbg !5153

if.then2:                                         ; preds = %if.end
  store i32 -12, i32* %result, align 4, !dbg !5154
  br label %err_free_pr, !dbg !5156

if.end3:                                          ; preds = %if.end
  %3 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5157
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 1, !dbg !5158
  %4 = load i8*, i8** %handle, align 8, !dbg !5158
  %5 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5159
  %handle4 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %5, i32 0, i32 0, !dbg !5160
  store i8* %4, i8** %handle4, align 8, !dbg !5161
  %6 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5162
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 10, !dbg !5162
  %device_name = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 5, !dbg !5162
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %device_name, i64 0, i64 0, !dbg !5162
  %call5 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0)) #9, !dbg !5163
  %7 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5164
  %pnp6 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 10, !dbg !5164
  %device_class = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp6, i32 0, i32 6, !dbg !5164
  %arraydecay7 = getelementptr inbounds [20 x i8], [20 x i8]* %device_class, i64 0, i64 0, !dbg !5164
  %call8 = call i8* @strcpy(i8* %arraydecay7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !5165
  %8 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5166
  %9 = bitcast %struct.acpi_processor* %8 to i8*, !dbg !5166
  %10 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5167
  %driver_data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 20, !dbg !5168
  store i8* %9, i8** %driver_data, align 8, !dbg !5169
  %11 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5170
  %call9 = call i32 @acpi_processor_get_info(%struct.acpi_device* %11) #9, !dbg !5171
  store i32 %call9, i32* %result, align 4, !dbg !5172
  %12 = load i32, i32* %result, align 4, !dbg !5173
  %tobool10 = icmp ne i32 %12, 0, !dbg !5173
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5175

if.then11:                                        ; preds = %if.end3
  store i32 0, i32* %retval, align 4, !dbg !5176
  br label %return, !dbg !5176

if.end12:                                         ; preds = %if.end3
  br label %do.body, !dbg !5177

do.body:                                          ; preds = %if.end12
  %13 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5178
  %id13 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %13, i32 0, i32 3, !dbg !5178
  %14 = load i32, i32* %id13, align 8, !dbg !5178
  %cmp = icmp uge i32 %14, 1, !dbg !5178
  %lnot = xor i1 %cmp, true, !dbg !5178
  %lnot14 = xor i1 %lnot, true, !dbg !5178
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !5178
  %conv = sext i32 %lnot.ext to i64, !dbg !5178
  %tobool15 = icmp ne i64 %conv, 0, !dbg !5178
  br i1 %tobool15, label %if.then16, label %if.end24, !dbg !5181

if.then16:                                        ; preds = %do.body
  br label %do.body17, !dbg !5178

do.body17:                                        ; preds = %if.then16
  br label %do.body18, !dbg !5182

do.body18:                                        ; preds = %do.body17
  br label %do.end, !dbg !5184

do.end:                                           ; preds = %do.body18
  br label %do.body19, !dbg !5182

do.body19:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0), i32 392, i32 0, i64 12) #11, !dbg !5186, !srcloc !5188
  br label %do.end20, !dbg !5186

do.end20:                                         ; preds = %do.body19
  br label %do.body21, !dbg !5182

do.body21:                                        ; preds = %do.end20
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 238) #11, !dbg !5189, !srcloc !5192
  unreachable, !dbg !5193

do.end22:                                         ; No predecessors!
  br label %do.end23, !dbg !5182

do.end23:                                         ; preds = %do.end22
  br label %if.end24, !dbg !5182

if.end24:                                         ; preds = %do.end23, %do.body
  br label %do.end25, !dbg !5181

do.end25:                                         ; preds = %if.end24
  %15 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5194
  %id26 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %15, i32 0, i32 3, !dbg !5194
  %16 = load i32, i32* %id26, align 8, !dbg !5194
  br label %do.body27, !dbg !5197

do.body27:                                        ; preds = %do.end25
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !5199, metadata !DIExpression()), !dbg !5201
  store i8* null, i8** %__vpp_verify, align 8, !dbg !5201
  %17 = load i8*, i8** %__vpp_verify, align 8, !dbg !5201
  br label %do.end28, !dbg !5201

do.end28:                                         ; preds = %do.body27
  store i8** @processor_device_array, i8*** %tmp29, align 8, !dbg !5201
  %18 = load i8**, i8*** %tmp29, align 8, !dbg !5197
  store i8** %18, i8*** %tmp, align 8, !dbg !5194
  %19 = load i8**, i8*** %tmp, align 8, !dbg !5194
  %20 = load i8*, i8** %19, align 8, !dbg !5202
  %cmp30 = icmp ne i8* %20, null, !dbg !5203
  br i1 %cmp30, label %land.lhs.true, label %if.end43, !dbg !5204

land.lhs.true:                                    ; preds = %do.end28
  %21 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5205
  %id32 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %21, i32 0, i32 3, !dbg !5205
  %22 = load i32, i32* %id32, align 8, !dbg !5205
  br label %do.body34, !dbg !5207

do.body34:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify35, metadata !5209, metadata !DIExpression()), !dbg !5211
  store i8* null, i8** %__vpp_verify35, align 8, !dbg !5211
  %23 = load i8*, i8** %__vpp_verify35, align 8, !dbg !5211
  br label %do.end36, !dbg !5211

do.end36:                                         ; preds = %do.body34
  store i8** @processor_device_array, i8*** %tmp37, align 8, !dbg !5211
  %24 = load i8**, i8*** %tmp37, align 8, !dbg !5207
  store i8** %24, i8*** %tmp33, align 8, !dbg !5205
  %25 = load i8**, i8*** %tmp33, align 8, !dbg !5205
  %26 = load i8*, i8** %25, align 8, !dbg !5212
  %27 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5213
  %28 = bitcast %struct.acpi_device* %27 to i8*, !dbg !5213
  %cmp38 = icmp ne i8* %26, %28, !dbg !5214
  br i1 %cmp38, label %if.then40, label %if.end43, !dbg !5215

if.then40:                                        ; preds = %do.end36
  %29 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5216
  %dev41 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %29, i32 0, i32 21, !dbg !5216
  %30 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5216
  %id42 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %30, i32 0, i32 3, !dbg !5216
  %31 = load i32, i32* %id42, align 8, !dbg !5216
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev41, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0), i32 %31) #12, !dbg !5216
  br label %err, !dbg !5218

if.end43:                                         ; preds = %do.end36, %do.end28
  %32 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5219
  %33 = bitcast %struct.acpi_device* %32 to i8*, !dbg !5219
  %34 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5220
  %id44 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %34, i32 0, i32 3, !dbg !5220
  %35 = load i32, i32* %id44, align 8, !dbg !5220
  br label %do.body46, !dbg !5222

do.body46:                                        ; preds = %if.end43
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify47, metadata !5224, metadata !DIExpression()), !dbg !5226
  store i8* null, i8** %__vpp_verify47, align 8, !dbg !5226
  %36 = load i8*, i8** %__vpp_verify47, align 8, !dbg !5226
  br label %do.end48, !dbg !5226

do.end48:                                         ; preds = %do.body46
  store i8** @processor_device_array, i8*** %tmp49, align 8, !dbg !5226
  %37 = load i8**, i8*** %tmp49, align 8, !dbg !5222
  store i8** %37, i8*** %tmp45, align 8, !dbg !5220
  %38 = load i8**, i8*** %tmp45, align 8, !dbg !5220
  store i8* %33, i8** %38, align 8, !dbg !5227
  %39 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5228
  %40 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5229
  %id50 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %40, i32 0, i32 3, !dbg !5229
  %41 = load i32, i32* %id50, align 8, !dbg !5229
  br label %do.body52, !dbg !5231

do.body52:                                        ; preds = %do.end48
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify53, metadata !5233, metadata !DIExpression()), !dbg !5235
  store i8* null, i8** %__vpp_verify53, align 8, !dbg !5235
  %42 = load i8*, i8** %__vpp_verify53, align 8, !dbg !5235
  br label %do.end54, !dbg !5235

do.end54:                                         ; preds = %do.body52
  store %struct.acpi_processor** @processors, %struct.acpi_processor*** %tmp55, align 8, !dbg !5235
  %43 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp55, align 8, !dbg !5231
  store %struct.acpi_processor** %43, %struct.acpi_processor*** %tmp51, align 8, !dbg !5229
  %44 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp51, align 8, !dbg !5229
  store %struct.acpi_processor* %39, %struct.acpi_processor** %44, align 8, !dbg !5236
  %45 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5237
  %id56 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %45, i32 0, i32 3, !dbg !5238
  %46 = load i32, i32* %id56, align 8, !dbg !5238
  %call57 = call %struct.device* @get_cpu_device(i32 %46) #9, !dbg !5239
  store %struct.device* %call57, %struct.device** %dev, align 8, !dbg !5240
  %47 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5241
  %tobool58 = icmp ne %struct.device* %47, null, !dbg !5241
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !5243

if.then59:                                        ; preds = %do.end54
  store i32 -19, i32* %result, align 4, !dbg !5244
  br label %err, !dbg !5246

if.end60:                                         ; preds = %do.end54
  %48 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5247
  %49 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5248
  %call61 = call i32 @acpi_bind_one(%struct.device* %48, %struct.acpi_device* %49) #9, !dbg !5249
  store i32 %call61, i32* %result, align 4, !dbg !5250
  %50 = load i32, i32* %result, align 4, !dbg !5251
  %tobool62 = icmp ne i32 %50, 0, !dbg !5251
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !5253

if.then63:                                        ; preds = %if.end60
  br label %err, !dbg !5254

if.end64:                                         ; preds = %if.end60
  %51 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5255
  %52 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5256
  %dev65 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %52, i32 0, i32 13, !dbg !5257
  store %struct.device* %51, %struct.device** %dev65, align 8, !dbg !5258
  %53 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5259
  %call66 = call i32 @device_attach(%struct.device* %53) #9, !dbg !5261
  %cmp67 = icmp sge i32 %call66, 0, !dbg !5262
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !5263

if.then69:                                        ; preds = %if.end64
  store i32 1, i32* %retval, align 4, !dbg !5264
  br label %return, !dbg !5264

if.end70:                                         ; preds = %if.end64
  %54 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5265
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !5265
  %55 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5266
  %call71 = call i32 @acpi_unbind_one(%struct.device* %55) #9, !dbg !5267
  br label %err, !dbg !5267

err:                                              ; preds = %if.end70, %if.then63, %if.then59, %if.then40
  call void @llvm.dbg.label(metadata !5268), !dbg !5269
  %56 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5270
  %throttling72 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %56, i32 0, i32 10, !dbg !5271
  %shared_cpu_map73 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling72, i32 0, i32 7, !dbg !5272
  %arraydecay74 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %shared_cpu_map73, i64 0, i64 0, !dbg !5270
  call void @free_cpumask_var(%struct.cpumask* %arraydecay74) #9, !dbg !5273
  %57 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5274
  %driver_data75 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %57, i32 0, i32 20, !dbg !5275
  store i8* null, i8** %driver_data75, align 8, !dbg !5276
  %58 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5277
  %id76 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %58, i32 0, i32 3, !dbg !5277
  %59 = load i32, i32* %id76, align 8, !dbg !5277
  br label %do.body78, !dbg !5279

do.body78:                                        ; preds = %err
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify79, metadata !5281, metadata !DIExpression()), !dbg !5283
  store i8* null, i8** %__vpp_verify79, align 8, !dbg !5283
  %60 = load i8*, i8** %__vpp_verify79, align 8, !dbg !5283
  br label %do.end80, !dbg !5283

do.end80:                                         ; preds = %do.body78
  store %struct.acpi_processor** @processors, %struct.acpi_processor*** %tmp81, align 8, !dbg !5283
  %61 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp81, align 8, !dbg !5279
  store %struct.acpi_processor** %61, %struct.acpi_processor*** %tmp77, align 8, !dbg !5277
  %62 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp77, align 8, !dbg !5277
  store %struct.acpi_processor* null, %struct.acpi_processor** %62, align 8, !dbg !5284
  br label %err_free_pr, !dbg !5285

err_free_pr:                                      ; preds = %do.end80, %if.then2
  call void @llvm.dbg.label(metadata !5286), !dbg !5287
  %63 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5288
  %64 = bitcast %struct.acpi_processor* %63 to i8*, !dbg !5288
  call void @kfree(i8* %64) #9, !dbg !5289
  %65 = load i32, i32* %result, align 4, !dbg !5290
  store i32 %65, i32* %retval, align 4, !dbg !5291
  br label %return, !dbg !5291

return:                                           ; preds = %err_free_pr, %if.then69, %if.then11, %if.then
  %66 = load i32, i32* %retval, align 4, !dbg !5292
  ret i32 %66, !dbg !5292
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #1 !dbg !5293 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5296, metadata !DIExpression()), !dbg !5300
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5306, metadata !DIExpression()), !dbg !5307
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5308, metadata !DIExpression()), !dbg !5309
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5310, metadata !DIExpression()), !dbg !5311
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5312, metadata !DIExpression()), !dbg !5316
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5318, metadata !DIExpression()), !dbg !5322
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5324, metadata !DIExpression()), !dbg !5328
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5333, metadata !DIExpression()), !dbg !5334
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5335, metadata !DIExpression()), !dbg !5336
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5337, metadata !DIExpression()), !dbg !5338
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5339, metadata !DIExpression()), !dbg !5340
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5341, metadata !DIExpression()), !dbg !5342
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5343, metadata !DIExpression()), !dbg !5344
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5345, metadata !DIExpression()), !dbg !5346
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5347, metadata !DIExpression()), !dbg !5348
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5349, metadata !DIExpression()), !dbg !5350
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5351, metadata !DIExpression()), !dbg !5352
  %0 = load i64, i64* %size.addr, align 8, !dbg !5353
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5354
  %or = or i32 %1, 256, !dbg !5355
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5356
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !5357
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5358

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5359
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5360
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5361

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5362
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5363
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5364
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !5365
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5342
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5366
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5367
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5368
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5369
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5370
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5371
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !5372
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5372
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5372
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5372
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !5372
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5373
  br label %kmalloc.exit, !dbg !5373

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5374
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5375
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5375
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5377

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5378
  br label %kmalloc_index.exit.i, !dbg !5378

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5379
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5381
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5382

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5383
  br label %kmalloc_index.exit.i, !dbg !5383

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5384
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5386
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5387

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5388
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5389
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5390

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5391
  br label %kmalloc_index.exit.i, !dbg !5391

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5392
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5394
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5395

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5396
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5397
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5398

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5399
  br label %kmalloc_index.exit.i, !dbg !5399

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5400
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5402
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5403

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5404
  br label %kmalloc_index.exit.i, !dbg !5404

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5405
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5407
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5408

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5409
  br label %kmalloc_index.exit.i, !dbg !5409

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5410
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5412
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5413

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5414
  br label %kmalloc_index.exit.i, !dbg !5414

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5415
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5417
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5418

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5419
  br label %kmalloc_index.exit.i, !dbg !5419

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5420
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5422
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5423

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5424
  br label %kmalloc_index.exit.i, !dbg !5424

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5425
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5427
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5428

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5429
  br label %kmalloc_index.exit.i, !dbg !5429

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5430
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5432
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5433

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5434
  br label %kmalloc_index.exit.i, !dbg !5434

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5435
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5437
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5438

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5439
  br label %kmalloc_index.exit.i, !dbg !5439

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5440
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5442
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5443

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5444
  br label %kmalloc_index.exit.i, !dbg !5444

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5445
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5447
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5448

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5449
  br label %kmalloc_index.exit.i, !dbg !5449

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5450
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5452
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5453

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5454
  br label %kmalloc_index.exit.i, !dbg !5454

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5455
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5457
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5458

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5459
  br label %kmalloc_index.exit.i, !dbg !5459

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5460
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5462
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5463

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5464
  br label %kmalloc_index.exit.i, !dbg !5464

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5465
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5467
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5468

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5469
  br label %kmalloc_index.exit.i, !dbg !5469

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5470
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5472
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5473

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5474
  br label %kmalloc_index.exit.i, !dbg !5474

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5475
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5477
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5478

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5479
  br label %kmalloc_index.exit.i, !dbg !5479

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5480
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5482
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5483

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5484
  br label %kmalloc_index.exit.i, !dbg !5484

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5485
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5487
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5488

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5489
  br label %kmalloc_index.exit.i, !dbg !5489

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5490
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5492
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5493

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5494
  br label %kmalloc_index.exit.i, !dbg !5494

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5495
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5497
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5498

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5499
  br label %kmalloc_index.exit.i, !dbg !5499

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5500
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5502
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5503

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5504
  br label %kmalloc_index.exit.i, !dbg !5504

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5505
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5507
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5508

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5509
  br label %kmalloc_index.exit.i, !dbg !5509

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5510
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5512
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5513

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5514
  br label %kmalloc_index.exit.i, !dbg !5514

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5515
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5517
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5518

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5519
  br label %kmalloc_index.exit.i, !dbg !5519

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5520, !srcloc !5523
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 102) #11, !dbg !5524, !srcloc !5527
  unreachable, !dbg !5528

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5529
  store i32 %45, i32* %index.i, align 4, !dbg !5530
  %46 = load i32, i32* %index.i, align 4, !dbg !5531
  %tobool.i = icmp ne i32 %46, 0, !dbg !5531
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5533

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5534
  br label %kmalloc.exit, !dbg !5534

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5535
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5536
  %and.i.i = and i32 %48, 17, !dbg !5536
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5536
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5536
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5536
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5536
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5538

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5539
  br label %kmalloc_type.exit.i, !dbg !5539

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5540
  %and2.i.i = and i32 %49, 1, !dbg !5541
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5540
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5540
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5540
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5542
  br label %kmalloc_type.exit.i, !dbg !5542

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5543
  %idxprom.i = zext i32 %51 to i64, !dbg !5544
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5544
  %52 = load i32, i32* %index.i, align 4, !dbg !5545
  %idxprom6.i = zext i32 %52 to i64, !dbg !5544
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5544
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5544
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5546
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5547
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5548
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5549
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !5550
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5550
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5550
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5550
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5550
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5311
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5551
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5552
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5553
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5554
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !5555
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5556
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5557
  store i8* %62, i8** %retval.i, align 8, !dbg !5558
  br label %kmalloc.exit, !dbg !5558

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5559
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5560
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !5561
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5561
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5561
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5561
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5561
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5562
  br label %kmalloc.exit, !dbg !5562

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5563
  ret i8* %65, !dbg !5564
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @zalloc_cpumask_var([1 x %struct.cpumask]* %mask, i32 %flags) #1 !dbg !5565 {
entry:
  %mask.addr = alloca [1 x %struct.cpumask]*, align 8
  %flags.addr = alloca i32, align 4
  store [1 x %struct.cpumask]* %mask, [1 x %struct.cpumask]** %mask.addr, align 8
  call void @llvm.dbg.declare(metadata [1 x %struct.cpumask]** %mask.addr, metadata !5569, metadata !DIExpression()), !dbg !5570
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5571, metadata !DIExpression()), !dbg !5572
  %0 = load [1 x %struct.cpumask]*, [1 x %struct.cpumask]** %mask.addr, align 8, !dbg !5573
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %0, i64 0, i64 0, !dbg !5574
  call void @cpumask_clear(%struct.cpumask* %arraydecay) #9, !dbg !5575
  ret i1 true, !dbg !5576
}

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_get_info(%struct.acpi_device* %device) #1 !dbg !4463 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %object = alloca %union.acpi_object, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %pr = alloca %struct.acpi_processor*, align 8
  %device_declaration = alloca i32, align 4
  %status = alloca i32, align 4
  %value = alloca i64, align 8
  %tmp = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !5577, metadata !DIExpression()), !dbg !5578
  call void @llvm.dbg.declare(metadata %union.acpi_object* %object, metadata !5579, metadata !DIExpression()), !dbg !5580
  %0 = bitcast %union.acpi_object* %object to i8*, !dbg !5580
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast ({ i32, [20 x i8] }* @__const.acpi_processor_get_info.object to i8*), i64 24, i1 false), !dbg !5580
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !5581, metadata !DIExpression()), !dbg !5582
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 0, !dbg !5583
  store i64 24, i64* %length, align 8, !dbg !5583
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !5583
  %1 = bitcast %union.acpi_object* %object to i8*, !dbg !5584
  store i8* %1, i8** %pointer, align 8, !dbg !5583
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr, metadata !5585, metadata !DIExpression()), !dbg !5586
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5587
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %2) #9, !dbg !5588
  %3 = bitcast i8* %call to %struct.acpi_processor*, !dbg !5588
  store %struct.acpi_processor* %3, %struct.acpi_processor** %pr, align 8, !dbg !5586
  call void @llvm.dbg.declare(metadata i32* %device_declaration, metadata !5589, metadata !DIExpression()), !dbg !5590
  store i32 0, i32* %device_declaration, align 4, !dbg !5590
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5591, metadata !DIExpression()), !dbg !5592
  store i32 0, i32* %status, align 4, !dbg !5592
  call void @llvm.dbg.declare(metadata i64* %value, metadata !5593, metadata !DIExpression()), !dbg !5594
  %call1 = call i32 @acpi_processor_errata() #9, !dbg !5595
  %4 = load i32, i32* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 15), align 1, !dbg !5596
  %tobool = icmp ne i32 %4, 0, !dbg !5598
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !5599

land.lhs.true:                                    ; preds = %entry
  %5 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 21), align 1, !dbg !5600
  %conv = zext i8 %5 to i32, !dbg !5601
  %tobool2 = icmp ne i32 %conv, 0, !dbg !5601
  br i1 %tobool2, label %if.then, label %if.else, !dbg !5602

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5603
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %6, i32 0, i32 7, !dbg !5605
  %7 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !5606
  %bf.load = load i16, i16* %7, align 8, !dbg !5607
  %bf.clear = and i16 %bf.load, -17, !dbg !5607
  %bf.set = or i16 %bf.clear, 16, !dbg !5607
  store i16 %bf.set, i16* %7, align 8, !dbg !5607
  br label %if.end, !dbg !5608

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5609
  %call3 = call i8* @acpi_device_hid(%struct.acpi_device* %8) #9, !dbg !5611
  %call4 = call i32 @strcmp(i8* %call3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0)) #9, !dbg !5612
  %tobool5 = icmp ne i32 %call4, 0, !dbg !5612
  br i1 %tobool5, label %if.else11, label %if.then6, !dbg !5613

if.then6:                                         ; preds = %if.end
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5614
  %handle = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %9, i32 0, i32 0, !dbg !5616
  %10 = load i8*, i8** %handle, align 8, !dbg !5616
  %call7 = call i32 @acpi_evaluate_object(i8* %10, i8* null, %struct.acpi_object_list* null, %struct.acpi_buffer* %buffer) #9, !dbg !5617
  store i32 %call7, i32* %status, align 4, !dbg !5618
  %11 = load i32, i32* %status, align 4, !dbg !5619
  %tobool8 = icmp ne i32 %11, 0, !dbg !5619
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5621

if.then9:                                         ; preds = %if.then6
  %12 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5622
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 21, !dbg !5622
  %13 = load i32, i32* %status, align 4, !dbg !5622
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.29, i64 0, i64 0), i32 %13) #12, !dbg !5622
  store i32 -19, i32* %retval, align 4, !dbg !5624
  br label %return, !dbg !5624

if.end10:                                         ; preds = %if.then6
  %processor = bitcast %union.acpi_object* %object to %struct.anon.72*, !dbg !5625
  %proc_id = getelementptr inbounds %struct.anon.72, %struct.anon.72* %processor, i32 0, i32 1, !dbg !5626
  %14 = load i32, i32* %proc_id, align 4, !dbg !5626
  %15 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5627
  %acpi_id = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %15, i32 0, i32 1, !dbg !5628
  store i32 %14, i32* %acpi_id, align 8, !dbg !5629
  br label %if.end20, !dbg !5630

if.else11:                                        ; preds = %if.end
  %16 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5631
  %handle12 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %16, i32 0, i32 0, !dbg !5633
  %17 = load i8*, i8** %handle12, align 8, !dbg !5633
  %call13 = call i32 @acpi_evaluate_integer(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %struct.acpi_object_list* null, i64* %value) #9, !dbg !5634
  store i32 %call13, i32* %status, align 4, !dbg !5635
  %18 = load i32, i32* %status, align 4, !dbg !5636
  %tobool14 = icmp ne i32 %18, 0, !dbg !5636
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !5638

if.then15:                                        ; preds = %if.else11
  %19 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5639
  %dev16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 21, !dbg !5639
  %20 = load i32, i32* %status, align 4, !dbg !5639
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i64 0, i64 0), i32 %20) #12, !dbg !5639
  store i32 -19, i32* %retval, align 4, !dbg !5641
  br label %return, !dbg !5641

if.end17:                                         ; preds = %if.else11
  store i32 1, i32* %device_declaration, align 4, !dbg !5642
  %21 = load i64, i64* %value, align 8, !dbg !5643
  %conv18 = trunc i64 %21 to i32, !dbg !5643
  %22 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5644
  %acpi_id19 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %22, i32 0, i32 1, !dbg !5645
  store i32 %conv18, i32* %acpi_id19, align 8, !dbg !5646
  br label %if.end20

if.end20:                                         ; preds = %if.end17, %if.end10
  %23 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5647
  %acpi_id21 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %23, i32 0, i32 1, !dbg !5649
  %24 = load i32, i32* %acpi_id21, align 8, !dbg !5649
  %call22 = call zeroext i1 @acpi_duplicate_processor_id(i32 %24) #9, !dbg !5650
  br i1 %call22, label %if.then23, label %if.end35, !dbg !5651

if.then23:                                        ; preds = %if.end20
  %25 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5652
  %acpi_id24 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %25, i32 0, i32 1, !dbg !5655
  %26 = load i32, i32* %acpi_id24, align 8, !dbg !5655
  %cmp = icmp eq i32 %26, 255, !dbg !5656
  br i1 %cmp, label %if.then26, label %if.else31, !dbg !5657

if.then26:                                        ; preds = %if.then23
  br label %do.body, !dbg !5658

do.body:                                          ; preds = %if.then26
  %27 = load i8, i8* @acpi_processor_get_info.__print_once, align 1, !dbg !5659
  %tobool27 = trunc i8 %27 to i1, !dbg !5659
  br i1 %tobool27, label %if.end30, label %if.then28, !dbg !5662

if.then28:                                        ; preds = %do.body
  store i8 1, i8* @acpi_processor_get_info.__print_once, align 1, !dbg !5663
  %28 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5663
  %dev29 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %28, i32 0, i32 21, !dbg !5663
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.31, i64 0, i64 0)) #12, !dbg !5663
  br label %if.end30, !dbg !5663

if.end30:                                         ; preds = %if.then28, %do.body
  br label %do.end, !dbg !5662

do.end:                                           ; preds = %if.end30
  br label %if.end34, !dbg !5662

if.else31:                                        ; preds = %if.then23
  %29 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5665
  %dev32 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %29, i32 0, i32 21, !dbg !5665
  %30 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5665
  %acpi_id33 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %30, i32 0, i32 1, !dbg !5665
  %31 = load i32, i32* %acpi_id33, align 8, !dbg !5665
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.32, i64 0, i64 0), i32 %31) #12, !dbg !5665
  br label %if.end34

if.end34:                                         ; preds = %if.else31, %do.end
  store i32 -19, i32* %retval, align 4, !dbg !5666
  br label %return, !dbg !5666

if.end35:                                         ; preds = %if.end20
  %32 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5667
  %handle36 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %32, i32 0, i32 0, !dbg !5668
  %33 = load i8*, i8** %handle36, align 8, !dbg !5668
  %34 = load i32, i32* %device_declaration, align 4, !dbg !5669
  %35 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5670
  %acpi_id37 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %35, i32 0, i32 1, !dbg !5671
  %36 = load i32, i32* %acpi_id37, align 8, !dbg !5671
  %call38 = call i32 @acpi_get_phys_id(i8* %33, i32 %34, i32 %36) #9, !dbg !5672
  %37 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5673
  %phys_id = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %37, i32 0, i32 2, !dbg !5674
  store i32 %call38, i32* %phys_id, align 4, !dbg !5675
  %38 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5676
  %phys_id39 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %38, i32 0, i32 2, !dbg !5678
  %39 = load i32, i32* %phys_id39, align 4, !dbg !5678
  %call40 = call zeroext i1 @invalid_phys_cpuid(i32 %39) #9, !dbg !5679
  br i1 %call40, label %if.then41, label %if.end42, !dbg !5680

if.then41:                                        ; preds = %if.end35
  store i32 0, i32* %tmp, align 4, !dbg !5681
  %40 = load i32, i32* %tmp, align 4, !dbg !5684
  br label %if.end42, !dbg !5685

if.end42:                                         ; preds = %if.then41, %if.end35
  %41 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5686
  %phys_id43 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %41, i32 0, i32 2, !dbg !5687
  %42 = load i32, i32* %phys_id43, align 4, !dbg !5687
  %43 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5688
  %acpi_id44 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %43, i32 0, i32 1, !dbg !5689
  %44 = load i32, i32* %acpi_id44, align 8, !dbg !5689
  %call45 = call i32 @acpi_map_cpuid(i32 %42, i32 %44) #9, !dbg !5690
  %45 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5691
  %id = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %45, i32 0, i32 3, !dbg !5692
  store i32 %call45, i32* %id, align 8, !dbg !5693
  %46 = load i32, i32* @acpi_processor_get_info.cpu0_initialized, align 4, !dbg !5694
  %tobool46 = icmp ne i32 %46, 0, !dbg !5694
  br i1 %tobool46, label %if.end56, label %land.lhs.true47, !dbg !5696

land.lhs.true47:                                  ; preds = %if.end42
  %call48 = call zeroext i1 @acpi_has_cpu_in_madt() #9, !dbg !5697
  br i1 %call48, label %if.end56, label %if.then49, !dbg !5698

if.then49:                                        ; preds = %land.lhs.true47
  store i32 1, i32* @acpi_processor_get_info.cpu0_initialized, align 4, !dbg !5699
  %47 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5701
  %id50 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %47, i32 0, i32 3, !dbg !5703
  %48 = load i32, i32* %id50, align 8, !dbg !5703
  %call51 = call zeroext i1 @invalid_logical_cpuid(i32 %48) #9, !dbg !5704
  br i1 %call51, label %if.then53, label %if.end55, !dbg !5705

if.then53:                                        ; preds = %if.then49
  %49 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5706
  %id54 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %49, i32 0, i32 3, !dbg !5707
  store i32 0, i32* %id54, align 8, !dbg !5708
  br label %if.end55, !dbg !5706

if.end55:                                         ; preds = %if.then53, %if.then49
  br label %if.end56, !dbg !5709

if.end56:                                         ; preds = %if.end55, %land.lhs.true47, %if.end42
  %50 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5710
  %id57 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %50, i32 0, i32 3, !dbg !5712
  %51 = load i32, i32* %id57, align 8, !dbg !5712
  %call58 = call zeroext i1 @invalid_logical_cpuid(i32 %51) #9, !dbg !5713
  br i1 %call58, label %if.then63, label %lor.lhs.false, !dbg !5714

lor.lhs.false:                                    ; preds = %if.end56
  %52 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5715
  %id60 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %52, i32 0, i32 3, !dbg !5715
  %53 = load i32, i32* %id60, align 8, !dbg !5715
  %cmp61 = icmp eq i32 %53, 0, !dbg !5715
  br i1 %cmp61, label %if.end68, label %if.then63, !dbg !5716

if.then63:                                        ; preds = %lor.lhs.false, %if.end56
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5717, metadata !DIExpression()), !dbg !5719
  %54 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5720
  %call64 = call i32 @acpi_processor_hotadd_init(%struct.acpi_processor* %54) #9, !dbg !5721
  store i32 %call64, i32* %ret, align 4, !dbg !5719
  %55 = load i32, i32* %ret, align 4, !dbg !5722
  %tobool65 = icmp ne i32 %55, 0, !dbg !5722
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !5724

if.then66:                                        ; preds = %if.then63
  %56 = load i32, i32* %ret, align 4, !dbg !5725
  store i32 %56, i32* %retval, align 4, !dbg !5726
  br label %return, !dbg !5726

if.end67:                                         ; preds = %if.then63
  br label %if.end68, !dbg !5727

if.end68:                                         ; preds = %if.end67, %lor.lhs.false
  %57 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5728
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %57, i32 0, i32 10, !dbg !5728
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 0, !dbg !5728
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id, i64 0, i64 0, !dbg !5728
  %58 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5729
  %id69 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %58, i32 0, i32 3, !dbg !5730
  %59 = load i32, i32* %id69, align 8, !dbg !5730
  %call70 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), i32 %59) #9, !dbg !5731
  %processor71 = bitcast %union.acpi_object* %object to %struct.anon.72*, !dbg !5732
  %pblk_address = getelementptr inbounds %struct.anon.72, %struct.anon.72* %processor71, i32 0, i32 2, !dbg !5734
  %60 = load i64, i64* %pblk_address, align 8, !dbg !5734
  %tobool72 = icmp ne i64 %60, 0, !dbg !5735
  br i1 %tobool72, label %if.else74, label %if.then73, !dbg !5736

if.then73:                                        ; preds = %if.end68
  br label %if.end92, !dbg !5736

if.else74:                                        ; preds = %if.end68
  %processor75 = bitcast %union.acpi_object* %object to %struct.anon.72*, !dbg !5737
  %pblk_length = getelementptr inbounds %struct.anon.72, %struct.anon.72* %processor75, i32 0, i32 3, !dbg !5739
  %61 = load i32, i32* %pblk_length, align 8, !dbg !5739
  %cmp76 = icmp ne i32 %61, 6, !dbg !5740
  br i1 %cmp76, label %if.then78, label %if.else82, !dbg !5741

if.then78:                                        ; preds = %if.else74
  %62 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5742
  %dev79 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %62, i32 0, i32 21, !dbg !5742
  %processor80 = bitcast %union.acpi_object* %object to %struct.anon.72*, !dbg !5742
  %pblk_length81 = getelementptr inbounds %struct.anon.72, %struct.anon.72* %processor80, i32 0, i32 3, !dbg !5742
  %63 = load i32, i32* %pblk_length81, align 8, !dbg !5742
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i64 0, i64 0), i32 %63) #12, !dbg !5742
  br label %if.end91, !dbg !5742

if.else82:                                        ; preds = %if.else74
  %processor83 = bitcast %union.acpi_object* %object to %struct.anon.72*, !dbg !5743
  %pblk_address84 = getelementptr inbounds %struct.anon.72, %struct.anon.72* %processor83, i32 0, i32 2, !dbg !5745
  %64 = load i64, i64* %pblk_address84, align 8, !dbg !5745
  %conv85 = trunc i64 %64 to i32, !dbg !5746
  %65 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5747
  %throttling = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %65, i32 0, i32 10, !dbg !5748
  %address = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling, i32 0, i32 10, !dbg !5749
  store i32 %conv85, i32* %address, align 8, !dbg !5750
  %66 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 31), align 1, !dbg !5751
  %67 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5752
  %throttling86 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %67, i32 0, i32 10, !dbg !5753
  %duty_offset = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling86, i32 0, i32 11, !dbg !5754
  store i8 %66, i8* %duty_offset, align 4, !dbg !5755
  %68 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 32), align 1, !dbg !5756
  %69 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5757
  %throttling87 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %69, i32 0, i32 10, !dbg !5758
  %duty_width = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %throttling87, i32 0, i32 12, !dbg !5759
  store i8 %68, i8* %duty_width, align 1, !dbg !5760
  %processor88 = bitcast %union.acpi_object* %object to %struct.anon.72*, !dbg !5761
  %pblk_address89 = getelementptr inbounds %struct.anon.72, %struct.anon.72* %processor88, i32 0, i32 2, !dbg !5762
  %70 = load i64, i64* %pblk_address89, align 8, !dbg !5762
  %conv90 = trunc i64 %70 to i32, !dbg !5763
  %71 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5764
  %pblk = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %71, i32 0, i32 4, !dbg !5765
  store i32 %conv90, i32* %pblk, align 4, !dbg !5766
  br label %if.end91

if.end91:                                         ; preds = %if.else82, %if.then78
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.then73
  %72 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5767
  %handle93 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %72, i32 0, i32 0, !dbg !5768
  %73 = load i8*, i8** %handle93, align 8, !dbg !5768
  %call94 = call i32 @acpi_evaluate_integer(i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), %struct.acpi_object_list* null, i64* %value) #9, !dbg !5769
  store i32 %call94, i32* %status, align 4, !dbg !5770
  %74 = load i32, i32* %status, align 4, !dbg !5771
  %tobool95 = icmp ne i32 %74, 0, !dbg !5771
  br i1 %tobool95, label %if.end99, label %if.then96, !dbg !5773

if.then96:                                        ; preds = %if.end92
  %75 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !5774
  %id97 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %75, i32 0, i32 3, !dbg !5775
  %76 = load i32, i32* %id97, align 8, !dbg !5775
  %77 = load i64, i64* %value, align 8, !dbg !5776
  %conv98 = trunc i64 %77 to i32, !dbg !5776
  call void @arch_fix_phys_package_id(i32 %76, i32 %conv98) #9, !dbg !5777
  br label %if.end99, !dbg !5777

if.end99:                                         ; preds = %if.then96, %if.end92
  store i32 0, i32* %retval, align 4, !dbg !5778
  br label %return, !dbg !5778

return:                                           ; preds = %if.end99, %if.then66, %if.end34, %if.then15, %if.then9
  %78 = load i32, i32* %retval, align 4, !dbg !5779
  ret i32 %78, !dbg !5779
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local %struct.device* @get_cpu_device(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_bind_one(%struct.device*, %struct.acpi_device*) #2

; Function Attrs: noredzone
declare dso_local i32 @device_attach(%struct.device*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @acpi_unbind_one(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @free_cpumask_var(%struct.cpumask* %mask) #1 !dbg !5780 {
entry:
  %mask.addr = alloca %struct.cpumask*, align 8
  store %struct.cpumask* %mask, %struct.cpumask** %mask.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %mask.addr, metadata !5784, metadata !DIExpression()), !dbg !5785
  ret void, !dbg !5786
}

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !5787 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5791, metadata !DIExpression()), !dbg !5795
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5797, metadata !DIExpression()), !dbg !5798
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5799, metadata !DIExpression()), !dbg !5800
  %0 = load i64, i64* %size.addr, align 8, !dbg !5801
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5803
  br i1 %1, label %if.then, label %if.end447, !dbg !5804

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5805
  %tobool = icmp ne i64 %2, 0, !dbg !5805
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5808

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5809
  br label %return, !dbg !5809

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5810
  %cmp = icmp ult i64 %3, 4096, !dbg !5812
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5813

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5814
  br label %return, !dbg !5814

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub = sub i64 %4, 1, !dbg !5815
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5815
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5815

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub4 = sub i64 %6, 1, !dbg !5815
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5815
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5815

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub6 = sub i64 %8, 1, !dbg !5815
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5815
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5815

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5815

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub9 = sub i64 %9, 1, !dbg !5815
  %and = and i64 %sub9, -9223372036854775808, !dbg !5815
  %tobool10 = icmp ne i64 %and, 0, !dbg !5815
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5815

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5815

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub13 = sub i64 %10, 1, !dbg !5815
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5815
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5815
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5815

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5815

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub18 = sub i64 %11, 1, !dbg !5815
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5815
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5815
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5815

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5815

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub23 = sub i64 %12, 1, !dbg !5815
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5815
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5815
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5815

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5815

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub28 = sub i64 %13, 1, !dbg !5815
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5815
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5815
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5815

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5815

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub33 = sub i64 %14, 1, !dbg !5815
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5815
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5815
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5815

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5815

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub38 = sub i64 %15, 1, !dbg !5815
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5815
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5815
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5815

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5815

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub43 = sub i64 %16, 1, !dbg !5815
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5815
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5815
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5815

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5815

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub48 = sub i64 %17, 1, !dbg !5815
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5815
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5815
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5815

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5815

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub53 = sub i64 %18, 1, !dbg !5815
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5815
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5815
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5815

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5815

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub58 = sub i64 %19, 1, !dbg !5815
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5815
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5815
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5815

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5815

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub63 = sub i64 %20, 1, !dbg !5815
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5815
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5815
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5815

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5815

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub68 = sub i64 %21, 1, !dbg !5815
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5815
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5815
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5815

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5815

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub73 = sub i64 %22, 1, !dbg !5815
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5815
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5815
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5815

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5815

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub78 = sub i64 %23, 1, !dbg !5815
  %and79 = and i64 %sub78, 562949953421312, !dbg !5815
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5815
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5815

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5815

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub83 = sub i64 %24, 1, !dbg !5815
  %and84 = and i64 %sub83, 281474976710656, !dbg !5815
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5815
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5815

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5815

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub88 = sub i64 %25, 1, !dbg !5815
  %and89 = and i64 %sub88, 140737488355328, !dbg !5815
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5815
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5815

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5815

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub93 = sub i64 %26, 1, !dbg !5815
  %and94 = and i64 %sub93, 70368744177664, !dbg !5815
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5815
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5815

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5815

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub98 = sub i64 %27, 1, !dbg !5815
  %and99 = and i64 %sub98, 35184372088832, !dbg !5815
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5815
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5815

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5815

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub103 = sub i64 %28, 1, !dbg !5815
  %and104 = and i64 %sub103, 17592186044416, !dbg !5815
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5815
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5815

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5815

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub108 = sub i64 %29, 1, !dbg !5815
  %and109 = and i64 %sub108, 8796093022208, !dbg !5815
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5815
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5815

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5815

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub113 = sub i64 %30, 1, !dbg !5815
  %and114 = and i64 %sub113, 4398046511104, !dbg !5815
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5815
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5815

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5815

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub118 = sub i64 %31, 1, !dbg !5815
  %and119 = and i64 %sub118, 2199023255552, !dbg !5815
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5815
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5815

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5815

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub123 = sub i64 %32, 1, !dbg !5815
  %and124 = and i64 %sub123, 1099511627776, !dbg !5815
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5815
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5815

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5815

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub128 = sub i64 %33, 1, !dbg !5815
  %and129 = and i64 %sub128, 549755813888, !dbg !5815
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5815
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5815

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5815

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub133 = sub i64 %34, 1, !dbg !5815
  %and134 = and i64 %sub133, 274877906944, !dbg !5815
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5815
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5815

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5815

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub138 = sub i64 %35, 1, !dbg !5815
  %and139 = and i64 %sub138, 137438953472, !dbg !5815
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5815
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5815

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5815

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub143 = sub i64 %36, 1, !dbg !5815
  %and144 = and i64 %sub143, 68719476736, !dbg !5815
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5815
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5815

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5815

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub148 = sub i64 %37, 1, !dbg !5815
  %and149 = and i64 %sub148, 34359738368, !dbg !5815
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5815
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5815

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5815

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub153 = sub i64 %38, 1, !dbg !5815
  %and154 = and i64 %sub153, 17179869184, !dbg !5815
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5815
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5815

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5815

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub158 = sub i64 %39, 1, !dbg !5815
  %and159 = and i64 %sub158, 8589934592, !dbg !5815
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5815
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5815

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5815

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub163 = sub i64 %40, 1, !dbg !5815
  %and164 = and i64 %sub163, 4294967296, !dbg !5815
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5815
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5815

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5815

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub168 = sub i64 %41, 1, !dbg !5815
  %and169 = and i64 %sub168, 2147483648, !dbg !5815
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5815
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5815

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5815

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub173 = sub i64 %42, 1, !dbg !5815
  %and174 = and i64 %sub173, 1073741824, !dbg !5815
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5815
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5815

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5815

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub178 = sub i64 %43, 1, !dbg !5815
  %and179 = and i64 %sub178, 536870912, !dbg !5815
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5815
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5815

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5815

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub183 = sub i64 %44, 1, !dbg !5815
  %and184 = and i64 %sub183, 268435456, !dbg !5815
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5815
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5815

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5815

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub188 = sub i64 %45, 1, !dbg !5815
  %and189 = and i64 %sub188, 134217728, !dbg !5815
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5815
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5815

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5815

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub193 = sub i64 %46, 1, !dbg !5815
  %and194 = and i64 %sub193, 67108864, !dbg !5815
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5815
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5815

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5815

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub198 = sub i64 %47, 1, !dbg !5815
  %and199 = and i64 %sub198, 33554432, !dbg !5815
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5815
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5815

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5815

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub203 = sub i64 %48, 1, !dbg !5815
  %and204 = and i64 %sub203, 16777216, !dbg !5815
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5815
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5815

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5815

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub208 = sub i64 %49, 1, !dbg !5815
  %and209 = and i64 %sub208, 8388608, !dbg !5815
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5815
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5815

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5815

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub213 = sub i64 %50, 1, !dbg !5815
  %and214 = and i64 %sub213, 4194304, !dbg !5815
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5815
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5815

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5815

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub218 = sub i64 %51, 1, !dbg !5815
  %and219 = and i64 %sub218, 2097152, !dbg !5815
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5815
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5815

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5815

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub223 = sub i64 %52, 1, !dbg !5815
  %and224 = and i64 %sub223, 1048576, !dbg !5815
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5815
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5815

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5815

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub228 = sub i64 %53, 1, !dbg !5815
  %and229 = and i64 %sub228, 524288, !dbg !5815
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5815
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5815

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5815

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub233 = sub i64 %54, 1, !dbg !5815
  %and234 = and i64 %sub233, 262144, !dbg !5815
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5815
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5815

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5815

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub238 = sub i64 %55, 1, !dbg !5815
  %and239 = and i64 %sub238, 131072, !dbg !5815
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5815
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5815

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5815

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub243 = sub i64 %56, 1, !dbg !5815
  %and244 = and i64 %sub243, 65536, !dbg !5815
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5815
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5815

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5815

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub248 = sub i64 %57, 1, !dbg !5815
  %and249 = and i64 %sub248, 32768, !dbg !5815
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5815
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5815

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5815

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub253 = sub i64 %58, 1, !dbg !5815
  %and254 = and i64 %sub253, 16384, !dbg !5815
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5815
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5815

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5815

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub258 = sub i64 %59, 1, !dbg !5815
  %and259 = and i64 %sub258, 8192, !dbg !5815
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5815
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5815

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5815

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub263 = sub i64 %60, 1, !dbg !5815
  %and264 = and i64 %sub263, 4096, !dbg !5815
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5815
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5815

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5815

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub268 = sub i64 %61, 1, !dbg !5815
  %and269 = and i64 %sub268, 2048, !dbg !5815
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5815
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5815

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5815

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub273 = sub i64 %62, 1, !dbg !5815
  %and274 = and i64 %sub273, 1024, !dbg !5815
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5815
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5815

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5815

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub278 = sub i64 %63, 1, !dbg !5815
  %and279 = and i64 %sub278, 512, !dbg !5815
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5815
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5815

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5815

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub283 = sub i64 %64, 1, !dbg !5815
  %and284 = and i64 %sub283, 256, !dbg !5815
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5815
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5815

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5815

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub288 = sub i64 %65, 1, !dbg !5815
  %and289 = and i64 %sub288, 128, !dbg !5815
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5815
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5815

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5815

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub293 = sub i64 %66, 1, !dbg !5815
  %and294 = and i64 %sub293, 64, !dbg !5815
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5815
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5815

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5815

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub298 = sub i64 %67, 1, !dbg !5815
  %and299 = and i64 %sub298, 32, !dbg !5815
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5815
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5815

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5815

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub303 = sub i64 %68, 1, !dbg !5815
  %and304 = and i64 %sub303, 16, !dbg !5815
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5815
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5815

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5815

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub308 = sub i64 %69, 1, !dbg !5815
  %and309 = and i64 %sub308, 8, !dbg !5815
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5815
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5815

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5815

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub313 = sub i64 %70, 1, !dbg !5815
  %and314 = and i64 %sub313, 4, !dbg !5815
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5815
  %71 = zext i1 %tobool315 to i64, !dbg !5815
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5815
  br label %cond.end, !dbg !5815

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5815
  br label %cond.end317, !dbg !5815

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5815
  br label %cond.end319, !dbg !5815

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5815
  br label %cond.end321, !dbg !5815

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5815
  br label %cond.end323, !dbg !5815

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5815
  br label %cond.end325, !dbg !5815

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5815
  br label %cond.end327, !dbg !5815

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5815
  br label %cond.end329, !dbg !5815

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5815
  br label %cond.end331, !dbg !5815

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5815
  br label %cond.end333, !dbg !5815

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5815
  br label %cond.end335, !dbg !5815

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5815
  br label %cond.end337, !dbg !5815

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5815
  br label %cond.end339, !dbg !5815

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5815
  br label %cond.end341, !dbg !5815

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5815
  br label %cond.end343, !dbg !5815

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5815
  br label %cond.end345, !dbg !5815

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5815
  br label %cond.end347, !dbg !5815

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5815
  br label %cond.end349, !dbg !5815

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5815
  br label %cond.end351, !dbg !5815

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5815
  br label %cond.end353, !dbg !5815

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5815
  br label %cond.end355, !dbg !5815

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5815
  br label %cond.end357, !dbg !5815

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5815
  br label %cond.end359, !dbg !5815

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5815
  br label %cond.end361, !dbg !5815

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5815
  br label %cond.end363, !dbg !5815

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5815
  br label %cond.end365, !dbg !5815

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5815
  br label %cond.end367, !dbg !5815

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5815
  br label %cond.end369, !dbg !5815

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5815
  br label %cond.end371, !dbg !5815

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5815
  br label %cond.end373, !dbg !5815

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5815
  br label %cond.end375, !dbg !5815

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5815
  br label %cond.end377, !dbg !5815

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5815
  br label %cond.end379, !dbg !5815

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5815
  br label %cond.end381, !dbg !5815

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5815
  br label %cond.end383, !dbg !5815

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5815
  br label %cond.end385, !dbg !5815

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5815
  br label %cond.end387, !dbg !5815

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5815
  br label %cond.end389, !dbg !5815

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5815
  br label %cond.end391, !dbg !5815

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5815
  br label %cond.end393, !dbg !5815

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5815
  br label %cond.end395, !dbg !5815

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5815
  br label %cond.end397, !dbg !5815

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5815
  br label %cond.end399, !dbg !5815

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5815
  br label %cond.end401, !dbg !5815

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5815
  br label %cond.end403, !dbg !5815

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5815
  br label %cond.end405, !dbg !5815

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5815
  br label %cond.end407, !dbg !5815

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5815
  br label %cond.end409, !dbg !5815

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5815
  br label %cond.end411, !dbg !5815

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5815
  br label %cond.end413, !dbg !5815

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5815
  br label %cond.end415, !dbg !5815

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5815
  br label %cond.end417, !dbg !5815

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5815
  br label %cond.end419, !dbg !5815

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5815
  br label %cond.end421, !dbg !5815

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5815
  br label %cond.end423, !dbg !5815

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5815
  br label %cond.end425, !dbg !5815

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5815
  br label %cond.end427, !dbg !5815

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5815
  br label %cond.end429, !dbg !5815

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5815
  br label %cond.end431, !dbg !5815

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5815
  br label %cond.end433, !dbg !5815

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5815
  br label %cond.end435, !dbg !5815

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5815
  br label %cond.end437, !dbg !5815

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5815
  br label %cond.end440, !dbg !5815

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5815

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5815
  br label %cond.end444, !dbg !5815

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5815
  %sub443 = sub i64 %72, 1, !dbg !5815
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !5815
  br label %cond.end444, !dbg !5815

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5815
  %sub446 = sub i32 %cond445, 12, !dbg !5816
  %add = add i32 %sub446, 1, !dbg !5817
  store i32 %add, i32* %retval, align 4, !dbg !5818
  br label %return, !dbg !5818

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5819
  %dec = add i64 %73, -1, !dbg !5819
  store i64 %dec, i64* %size.addr, align 8, !dbg !5819
  %74 = load i64, i64* %size.addr, align 8, !dbg !5820
  %shr = lshr i64 %74, 12, !dbg !5820
  store i64 %shr, i64* %size.addr, align 8, !dbg !5820
  %75 = load i64, i64* %size.addr, align 8, !dbg !5821
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5798
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5822
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5823
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5822, !srcloc !5824
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5822
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5825
  %add.i = add i32 %79, 1, !dbg !5826
  store i32 %add.i, i32* %retval, align 4, !dbg !5827
  br label %return, !dbg !5827

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5828
  ret i32 %80, !dbg !5828
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !5829 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5791, metadata !DIExpression()), !dbg !5833
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5797, metadata !DIExpression()), !dbg !5835
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5836, metadata !DIExpression()), !dbg !5837
  %0 = load i64, i64* %n.addr, align 8, !dbg !5838
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5835
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5839
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5840
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5839, !srcloc !5824
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5839
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5841
  %add.i = add i32 %4, 1, !dbg !5842
  %sub = sub i32 %add.i, 1, !dbg !5843
  ret i32 %sub, !dbg !5844
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #1 !dbg !5845 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5849, metadata !DIExpression()), !dbg !5850
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5851, metadata !DIExpression()), !dbg !5852
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5853, metadata !DIExpression()), !dbg !5854
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5855, metadata !DIExpression()), !dbg !5856
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5857
  ret i8* %0, !dbg !5858
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpumask_clear(%struct.cpumask* %dstp) #1 !dbg !5859 {
entry:
  %dstp.addr = alloca %struct.cpumask*, align 8
  store %struct.cpumask* %dstp, %struct.cpumask** %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %dstp.addr, metadata !5860, metadata !DIExpression()), !dbg !5861
  %0 = load %struct.cpumask*, %struct.cpumask** %dstp.addr, align 8, !dbg !5862
  %bits = getelementptr inbounds %struct.cpumask, %struct.cpumask* %0, i32 0, i32 0, !dbg !5862
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %bits, i64 0, i64 0, !dbg !5862
  call void @bitmap_zero(i64* %arraydecay, i32 1) #9, !dbg !5863
  ret void, !dbg !5864
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bitmap_zero(i64* %dst, i32 %nbits) #1 !dbg !5865 {
entry:
  %dst.addr = alloca i64*, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store i64* %dst, i64** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dst.addr, metadata !5869, metadata !DIExpression()), !dbg !5870
  store i32 %nbits, i32* %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr, metadata !5871, metadata !DIExpression()), !dbg !5872
  call void @llvm.dbg.declare(metadata i32* %len, metadata !5873, metadata !DIExpression()), !dbg !5874
  %0 = load i32, i32* %nbits.addr, align 4, !dbg !5875
  %conv = zext i32 %0 to i64, !dbg !5875
  %add = add i64 %conv, 64, !dbg !5875
  %sub = sub i64 %add, 1, !dbg !5875
  %div = udiv i64 %sub, 64, !dbg !5875
  %mul = mul i64 %div, 8, !dbg !5876
  %conv1 = trunc i64 %mul to i32, !dbg !5875
  store i32 %conv1, i32* %len, align 4, !dbg !5874
  %1 = load i64*, i64** %dst.addr, align 8, !dbg !5877
  %2 = bitcast i64* %1 to i8*, !dbg !5878
  %3 = load i32, i32* %len, align 4, !dbg !5879
  %conv2 = zext i32 %3 to i64, !dbg !5879
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 %conv2, i1 false), !dbg !5878
  ret void, !dbg !5880
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_driver_data(%struct.acpi_device* %d) #1 !dbg !5881 {
entry:
  %d.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %d, %struct.acpi_device** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %d.addr, metadata !5884, metadata !DIExpression()), !dbg !5885
  %0 = load %struct.acpi_device*, %struct.acpi_device** %d.addr, align 8, !dbg !5886
  %driver_data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 20, !dbg !5887
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5887
  ret i8* %1, !dbg !5888
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_errata() #1 !dbg !5889 {
entry:
  %result = alloca i32, align 4
  %dev = alloca %struct.pci_dev*, align 8
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5892, metadata !DIExpression()), !dbg !5893
  store i32 0, i32* %result, align 4, !dbg !5893
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !5894, metadata !DIExpression()), !dbg !6169
  store %struct.pci_dev* null, %struct.pci_dev** %dev, align 8, !dbg !6169
  %call = call %struct.pci_dev* @pci_get_subsys(i32 32902, i32 28947, i32 -1, i32 -1, %struct.pci_dev* null) #9, !dbg !6170
  store %struct.pci_dev* %call, %struct.pci_dev** %dev, align 8, !dbg !6171
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !6172
  %tobool = icmp ne %struct.pci_dev* %0, null, !dbg !6172
  br i1 %tobool, label %if.then, label %if.end, !dbg !6174

if.then:                                          ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !6175
  %call1 = call i32 @acpi_processor_errata_piix4(%struct.pci_dev* %1) #9, !dbg !6177
  store i32 %call1, i32* %result, align 4, !dbg !6178
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !6179
  call void @pci_dev_put(%struct.pci_dev* %2) #9, !dbg !6180
  br label %if.end, !dbg !6181

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %result, align 4, !dbg !6182
  ret i32 %3, !dbg !6183
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_device_hid(%struct.acpi_device*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_phys_id(i8*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @invalid_phys_cpuid(i32 %phys_id) #1 !dbg !6184 {
entry:
  %phys_id.addr = alloca i32, align 4
  store i32 %phys_id, i32* %phys_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %phys_id.addr, metadata !6187, metadata !DIExpression()), !dbg !6188
  %0 = load i32, i32* %phys_id.addr, align 4, !dbg !6189
  %cmp = icmp eq i32 %0, -1, !dbg !6190
  ret i1 %cmp, !dbg !6191
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_map_cpuid(i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_has_cpu_in_madt() #1 !dbg !6192 {
entry:
  %0 = load i32, i32* @acpi_lapic, align 4, !dbg !6194
  %tobool = icmp ne i32 %0, 0, !dbg !6195
  %lnot = xor i1 %tobool, true, !dbg !6195
  %lnot1 = xor i1 %lnot, true, !dbg !6196
  ret i1 %lnot1, !dbg !6197
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @invalid_logical_cpuid(i32 %cpuid) #1 !dbg !6198 {
entry:
  %cpuid.addr = alloca i32, align 4
  store i32 %cpuid, i32* %cpuid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpuid.addr, metadata !6201, metadata !DIExpression()), !dbg !6202
  %0 = load i32, i32* %cpuid.addr, align 4, !dbg !6203
  %cmp = icmp slt i32 %0, 0, !dbg !6204
  ret i1 %cmp, !dbg !6205
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_hotadd_init(%struct.acpi_processor* %pr) #1 !dbg !6206 {
entry:
  %pr.addr = alloca %struct.acpi_processor*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !6207, metadata !DIExpression()), !dbg !6208
  ret i32 -19, !dbg !6209
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_fix_phys_package_id(i32 %num, i32 %slot) #1 !dbg !6210 {
entry:
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !6214, metadata !DIExpression()), !dbg !6215
  store i32 %slot, i32* %slot.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %slot.addr, metadata !6216, metadata !DIExpression()), !dbg !6217
  ret void, !dbg !6218
}

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @pci_get_subsys(i32, i32, i32, i32, %struct.pci_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_errata_piix4(%struct.pci_dev* %dev) #1 !dbg !6219 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %value1 = alloca i8, align 1
  %value2 = alloca i8, align 1
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !6220, metadata !DIExpression()), !dbg !6221
  call void @llvm.dbg.declare(metadata i8* %value1, metadata !6222, metadata !DIExpression()), !dbg !6223
  store i8 0, i8* %value1, align 1, !dbg !6223
  call void @llvm.dbg.declare(metadata i8* %value2, metadata !6224, metadata !DIExpression()), !dbg !6225
  store i8 0, i8* %value2, align 1, !dbg !6225
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6226
  %tobool = icmp ne %struct.pci_dev* %0, null, !dbg !6226
  br i1 %tobool, label %if.end, label %if.then, !dbg !6228

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6229
  br label %return, !dbg !6229

if.end:                                           ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6230
  %revision = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 12, !dbg !6231
  %2 = load i8, i8* %revision, align 8, !dbg !6231
  %conv = zext i8 %2 to i32, !dbg !6230
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ], !dbg !6232

sw.bb:                                            ; preds = %if.end
  br label %sw.epilog, !dbg !6233

sw.bb1:                                           ; preds = %if.end
  br label %sw.epilog, !dbg !6235

sw.bb2:                                           ; preds = %if.end
  br label %sw.epilog, !dbg !6236

sw.bb3:                                           ; preds = %if.end
  br label %sw.epilog, !dbg !6237

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !6238

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6239
  %revision4 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 12, !dbg !6240
  %4 = load i8, i8* %revision4, align 8, !dbg !6240
  %conv5 = zext i8 %4 to i32, !dbg !6239
  switch i32 %conv5, label %sw.epilog28 [
    i32 0, label %sw.bb6
    i32 1, label %sw.bb6
    i32 2, label %sw.bb7
    i32 3, label %sw.bb7
  ], !dbg !6241

sw.bb6:                                           ; preds = %sw.epilog, %sw.epilog
  %bf.load = load i8, i8* getelementptr inbounds (%struct.acpi_processor_errata, %struct.acpi_processor_errata* @errata, i32 0, i32 1, i32 0), align 4, !dbg !6242
  %bf.clear = and i8 %bf.load, -2, !dbg !6242
  %bf.set = or i8 %bf.clear, 1, !dbg !6242
  store i8 %bf.set, i8* getelementptr inbounds (%struct.acpi_processor_errata, %struct.acpi_processor_errata* @errata, i32 0, i32 1, i32 0), align 4, !dbg !6242
  br label %sw.bb7, !dbg !6244

sw.bb7:                                           ; preds = %sw.epilog, %sw.epilog, %sw.bb6
  %call = call %struct.pci_dev* @pci_get_subsys(i32 32902, i32 28945, i32 -1, i32 -1, %struct.pci_dev* null) #9, !dbg !6245
  store %struct.pci_dev* %call, %struct.pci_dev** %dev.addr, align 8, !dbg !6246
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6247
  %tobool8 = icmp ne %struct.pci_dev* %5, null, !dbg !6247
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !6249

if.then9:                                         ; preds = %sw.bb7
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6250
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 44, !dbg !6250
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 4, !dbg !6250
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !6250
  %7 = load i64, i64* %start, align 8, !dbg !6250
  %conv10 = trunc i64 %7 to i32, !dbg !6250
  store i32 %conv10, i32* getelementptr inbounds (%struct.acpi_processor_errata, %struct.acpi_processor_errata* @errata, i32 0, i32 1, i32 1), align 4, !dbg !6252
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6253
  call void @pci_dev_put(%struct.pci_dev* %8) #9, !dbg !6254
  br label %if.end11, !dbg !6255

if.end11:                                         ; preds = %if.then9, %sw.bb7
  %call12 = call %struct.pci_dev* @pci_get_subsys(i32 32902, i32 28944, i32 -1, i32 -1, %struct.pci_dev* null) #9, !dbg !6256
  store %struct.pci_dev* %call12, %struct.pci_dev** %dev.addr, align 8, !dbg !6257
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6258
  %tobool13 = icmp ne %struct.pci_dev* %9, null, !dbg !6258
  br i1 %tobool13, label %if.then14, label %if.end27, !dbg !6260

if.then14:                                        ; preds = %if.end11
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6261
  %call15 = call i32 @pci_read_config_byte(%struct.pci_dev* %10, i32 118, i8* %value1) #9, !dbg !6263
  %11 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6264
  %call16 = call i32 @pci_read_config_byte(%struct.pci_dev* %11, i32 119, i8* %value2) #9, !dbg !6265
  %12 = load i8, i8* %value1, align 1, !dbg !6266
  %conv17 = zext i8 %12 to i32, !dbg !6266
  %and = and i32 %conv17, 128, !dbg !6268
  %tobool18 = icmp ne i32 %and, 0, !dbg !6268
  br i1 %tobool18, label %if.then22, label %lor.lhs.false, !dbg !6269

lor.lhs.false:                                    ; preds = %if.then14
  %13 = load i8, i8* %value2, align 1, !dbg !6270
  %conv19 = zext i8 %13 to i32, !dbg !6270
  %and20 = and i32 %conv19, 128, !dbg !6271
  %tobool21 = icmp ne i32 %and20, 0, !dbg !6271
  br i1 %tobool21, label %if.then22, label %if.end26, !dbg !6272

if.then22:                                        ; preds = %lor.lhs.false, %if.then14
  %bf.load23 = load i8, i8* getelementptr inbounds (%struct.acpi_processor_errata, %struct.acpi_processor_errata* @errata, i32 0, i32 1, i32 0), align 4, !dbg !6273
  %bf.clear24 = and i8 %bf.load23, -3, !dbg !6273
  %bf.set25 = or i8 %bf.clear24, 2, !dbg !6273
  store i8 %bf.set25, i8* getelementptr inbounds (%struct.acpi_processor_errata, %struct.acpi_processor_errata* @errata, i32 0, i32 1, i32 0), align 4, !dbg !6273
  br label %if.end26, !dbg !6274

if.end26:                                         ; preds = %if.then22, %lor.lhs.false
  %14 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6275
  call void @pci_dev_put(%struct.pci_dev* %14) #9, !dbg !6276
  br label %if.end27, !dbg !6277

if.end27:                                         ; preds = %if.end26, %if.end11
  br label %sw.epilog28, !dbg !6278

sw.epilog28:                                      ; preds = %sw.epilog, %if.end27
  %15 = load i32, i32* getelementptr inbounds (%struct.acpi_processor_errata, %struct.acpi_processor_errata* @errata, i32 0, i32 1, i32 1), align 4, !dbg !6279
  %tobool29 = icmp ne i32 %15, 0, !dbg !6281
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !6282

if.then30:                                        ; preds = %sw.epilog28
  br label %if.end31, !dbg !6282

if.end31:                                         ; preds = %if.then30, %sw.epilog28
  %bf.load32 = load i8, i8* getelementptr inbounds (%struct.acpi_processor_errata, %struct.acpi_processor_errata* @errata, i32 0, i32 1, i32 0), align 4, !dbg !6283
  %bf.lshr = lshr i8 %bf.load32, 1, !dbg !6283
  %bf.clear33 = and i8 %bf.lshr, 1, !dbg !6283
  %tobool34 = icmp ne i8 %bf.clear33, 0, !dbg !6285
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !6286

if.then35:                                        ; preds = %if.end31
  br label %if.end36, !dbg !6286

if.end36:                                         ; preds = %if.then35, %if.end31
  store i32 0, i32* %retval, align 4, !dbg !6287
  br label %return, !dbg !6287

return:                                           ; preds = %if.end36, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !6288
  ret i32 %16, !dbg !6288
}

; Function Attrs: noredzone
declare dso_local void @pci_dev_put(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_container_attach(%struct.acpi_device* %dev, %struct.acpi_device_id* %id) #1 !dbg !6289 {
entry:
  %dev.addr = alloca %struct.acpi_device*, align 8
  %id.addr = alloca %struct.acpi_device_id*, align 8
  store %struct.acpi_device* %dev, %struct.acpi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %dev.addr, metadata !6290, metadata !DIExpression()), !dbg !6291
  store %struct.acpi_device_id* %id, %struct.acpi_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device_id** %id.addr, metadata !6292, metadata !DIExpression()), !dbg !6293
  ret i32 1, !dbg !6294
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone }
attributes #10 = { noredzone nounwind }
attributes #11 = { nounwind }
attributes #12 = { cold noredzone }
attributes #13 = { noredzone nounwind readnone }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4473, !4474, !4475, !4476}
!llvm.ident = !{!4477}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nr_duplicate_ids", scope: !2, file: !3, line: 586, type: !144, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !143, globals: !4150, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpi_processor.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !18, !25, !31, !36, !42, !49, !55, !64, !72, !78, !84, !91, !99, !105, !111, !118, !122, !136}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "idle_boot_override", file: !12, line: 678, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "IDLE_NO_OVERRIDE", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "IDLE_HALT", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "IDLE_NOMWAIT", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "IDLE_POLL", value: 3, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !19, line: 15, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!24 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !26, line: 546, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!27 = !{!28, !29, !30}
!28 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!30 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !32, line: 65, baseType: !7, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!33 = !{!34, !35}
!34 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!35 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !37, line: 16, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !40, !41}
!39 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !43, line: 59, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!44 = !{!45, !46, !47, !48}
!45 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !50, line: 54, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!51 = !{!52, !53, !54}
!52 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !56, line: 296, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!57 = !{!58, !59, !60, !61, !62, !63}
!58 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!61 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!62 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!63 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !65, line: 9, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69, !70, !71}
!67 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!70 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!71 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !73, line: 26, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !79, line: 44, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!82 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!83 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !85, line: 343, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!86 = !{!87, !88, !89, !90}
!87 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !92, line: 524, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96, !97, !98}
!94 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!98 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !92, line: 502, baseType: !7, size: 32, elements: !100)
!100 = !{!101, !102, !103, !104}
!101 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !106, line: 41, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "PM_QOS_MAX", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "PM_QOS_MIN", value: 2, isUnsigned: true)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !106, line: 99, baseType: !7, size: 32, elements: !112)
!112 = !{!113, !114, !115, !116, !117}
!113 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1, isUnsigned: true)
!114 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2, isUnsigned: true)
!115 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3, isUnsigned: true)
!116 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4, isUnsigned: true)
!117 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5, isUnsigned: true)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !106, line: 80, baseType: !7, size: 32, elements: !119)
!119 = !{!120, !121}
!120 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1, isUnsigned: true)
!121 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2, isUnsigned: true)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !123, line: 76, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135}
!125 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!127 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!128 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!129 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!130 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!131 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!132 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!133 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!134 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!135 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !137, line: 305, baseType: !7, size: 32, elements: !138)
!137 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!138 = !{!139, !140, !141, !142}
!139 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!140 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!141 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!142 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!143 = !{!144, !145, !147, !149, !150, !151, !156, !158, !163, !175, !176, !177, !179, !180, !7, !187}
!144 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !148, line: 424, baseType: !149)
!148 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !148, line: 127, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !152, line: 23, baseType: !153)
!152 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !154, line: 31, baseType: !155)
!154 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!155 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !152, line: 21, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !154, line: 27, baseType: !7)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_power_register", file: !160, line: 53, size: 120, elements: !161)
!160 = !DIFile(filename: "./include/acpi/processor.h", directory: "/home/lizy2001/genbc/linux")
!161 = !{!162, !166, !170, !171, !172, !173, !174}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !159, file: !160, line: 54, baseType: !163, size: 8)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !152, line: 17, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !154, line: 21, baseType: !165)
!165 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !159, file: !160, line: 55, baseType: !167, size: 16, offset: 8)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !152, line: 19, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !154, line: 24, baseType: !169)
!169 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !159, file: !160, line: 56, baseType: !163, size: 8, offset: 24)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !159, file: !160, line: 57, baseType: !163, size: 8, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !159, file: !160, line: 58, baseType: !163, size: 8, offset: 40)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !159, file: !160, line: 59, baseType: !163, size: 8, offset: 48)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !159, file: !160, line: 60, baseType: !151, size: 64, offset: 56)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !148, line: 805, baseType: !163)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !148, line: 421, baseType: !156)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !178, line: 148, baseType: !7)
!178 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor", file: !160, line: 218, size: 7936, elements: !183)
!183 = !{!184, !185, !186, !189, !190, !191, !192, !193, !207, !247, !294, !343, !353, !4147, !4148, !4149}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !182, file: !160, line: 219, baseType: !147, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_id", scope: !182, file: !160, line: 220, baseType: !156, size: 32, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "phys_id", scope: !182, file: !160, line: 221, baseType: !187, size: 32, offset: 96)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_cpuid_t", file: !188, line: 266, baseType: !156)
!188 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!189 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !182, file: !160, line: 222, baseType: !156, size: 32, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "pblk", scope: !182, file: !160, line: 223, baseType: !156, size: 32, offset: 160)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "performance_platform_limit", scope: !182, file: !160, line: 224, baseType: !144, size: 32, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "throttling_platform_limit", scope: !182, file: !160, line: 225, baseType: !144, size: 32, offset: 224)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !182, file: !160, line: 228, baseType: !194, size: 16, offset: 256)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_flags", file: !160, line: 204, size: 16, elements: !195)
!195 = !{!196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !194, file: !160, line: 205, baseType: !163, size: 1, flags: DIFlagBitField, extraData: i64 0)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !194, file: !160, line: 206, baseType: !163, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "throttling", scope: !194, file: !160, line: 207, baseType: !163, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !194, file: !160, line: 208, baseType: !163, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "bm_control", scope: !194, file: !160, line: 209, baseType: !163, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "bm_check", scope: !194, file: !160, line: 210, baseType: !163, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "has_cst", scope: !194, file: !160, line: 211, baseType: !163, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "has_lpi", scope: !194, file: !160, line: 212, baseType: !163, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "power_setup_done", scope: !194, file: !160, line: 213, baseType: !163, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "bm_rld_set", scope: !194, file: !160, line: 214, baseType: !163, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "need_hotplug_init", scope: !194, file: !160, line: 215, baseType: !163, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !182, file: !160, line: 229, baseType: !208, size: 4736, offset: 320)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_power", file: !160, line: 87, size: 4736, elements: !209)
!209 = !{!210, !211, !246}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !208, file: !160, line: 88, baseType: !144, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, scope: !208, file: !160, line: 89, baseType: !212, size: 4608, offset: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !208, file: !160, line: 89, size: 4608, elements: !213)
!213 = !{!214, !232}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !212, file: !160, line: 90, baseType: !215, size: 3328)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 3328, elements: !230)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_cx", file: !160, line: 63, size: 416, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !216, file: !160, line: 64, baseType: !163, size: 8)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !216, file: !160, line: 65, baseType: !163, size: 8, offset: 8)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !216, file: !160, line: 66, baseType: !156, size: 32, offset: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "entry_method", scope: !216, file: !160, line: 67, baseType: !163, size: 8, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !216, file: !160, line: 68, baseType: !163, size: 8, offset: 72)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !216, file: !160, line: 69, baseType: !156, size: 32, offset: 96)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "bm_sts_skip", scope: !216, file: !160, line: 70, baseType: !163, size: 8, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !216, file: !160, line: 71, baseType: !226, size: 256, offset: 136)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 256, elements: !228)
!227 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!228 = !{!229}
!229 = !DISubrange(count: 32)
!230 = !{!231}
!231 = !DISubrange(count: 8)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "lpi_states", scope: !212, file: !160, line: 91, baseType: !233, size: 4608)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 4608, elements: !230)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_lpi_state", file: !160, line: 74, size: 576, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "min_residency", scope: !234, file: !160, line: 75, baseType: !156, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "wake_latency", scope: !234, file: !160, line: 76, baseType: !156, size: 32, offset: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !234, file: !160, line: 77, baseType: !156, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "arch_flags", scope: !234, file: !160, line: 78, baseType: !156, size: 32, offset: 96)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "res_cnt_freq", scope: !234, file: !160, line: 79, baseType: !156, size: 32, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "enable_parent_state", scope: !234, file: !160, line: 80, baseType: !156, size: 32, offset: 160)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !234, file: !160, line: 81, baseType: !151, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !234, file: !160, line: 82, baseType: !163, size: 8, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "entry_method", scope: !234, file: !160, line: 83, baseType: !163, size: 8, offset: 264)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !234, file: !160, line: 84, baseType: !226, size: 256, offset: 272)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "timer_broadcast_on_state", scope: !208, file: !160, line: 93, baseType: !144, size: 32, offset: 4672)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !182, file: !160, line: 230, baseType: !248, size: 64, offset: 5056)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_performance", file: !160, line: 125, size: 896, elements: !250)
!250 = !{!251, !252, !253, !263, !264, !265, !275, !283, !293}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !249, file: !160, line: 126, baseType: !7, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "platform_limit", scope: !249, file: !160, line: 127, baseType: !7, size: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "control_register", scope: !249, file: !160, line: 128, baseType: !254, size: 120, offset: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pct_register", file: !160, line: 106, size: 120, elements: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !262}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !254, file: !160, line: 107, baseType: !163, size: 8)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !254, file: !160, line: 108, baseType: !167, size: 16, offset: 8)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !254, file: !160, line: 109, baseType: !163, size: 8, offset: 24)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !254, file: !160, line: 110, baseType: !163, size: 8, offset: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !254, file: !160, line: 111, baseType: !163, size: 8, offset: 40)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !254, file: !160, line: 112, baseType: !163, size: 8, offset: 48)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !254, file: !160, line: 113, baseType: !151, size: 64, offset: 56)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "status_register", scope: !249, file: !160, line: 129, baseType: !254, size: 120, offset: 184)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !249, file: !160, line: 130, baseType: !7, size: 32, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !249, file: !160, line: 131, baseType: !266, size: 64, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_px", file: !160, line: 116, size: 384, elements: !268)
!268 = !{!269, !270, !271, !272, !273, !274}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "core_frequency", scope: !267, file: !160, line: 117, baseType: !151, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !267, file: !160, line: 118, baseType: !151, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !267, file: !160, line: 119, baseType: !151, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master_latency", scope: !267, file: !160, line: 120, baseType: !151, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !267, file: !160, line: 121, baseType: !151, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !267, file: !160, line: 122, baseType: !151, size: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "domain_info", scope: !249, file: !160, line: 132, baseType: !276, size: 320, offset: 448)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_psd_package", file: !160, line: 98, size: 320, elements: !277)
!277 = !{!278, !279, !280, !281, !282}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !276, file: !160, line: 99, baseType: !151, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !276, file: !160, line: 100, baseType: !151, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !276, file: !160, line: 101, baseType: !151, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "coord_type", scope: !276, file: !160, line: 102, baseType: !151, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "num_processors", scope: !276, file: !160, line: 103, baseType: !151, size: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "shared_cpu_map", scope: !249, file: !160, line: 133, baseType: !284, size: 64, offset: 768)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !285, line: 756, baseType: !286)
!285 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 64, elements: !291)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !285, line: 17, size: 64, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !287, file: !285, line: 17, baseType: !290, size: 64)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 64, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 1)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !249, file: !160, line: 134, baseType: !7, size: 32, offset: 832)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "throttling", scope: !182, file: !160, line: 231, baseType: !295, size: 1600, offset: 5120)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_throttling", file: !160, line: 170, size: 1600, elements: !296)
!296 = !{!297, !298, !299, !300, !301, !302, !311, !319, !320, !324, !330, !331, !332, !333, !334, !335}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !295, file: !160, line: 171, baseType: !7, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "platform_limit", scope: !295, file: !160, line: 172, baseType: !7, size: 32, offset: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "control_register", scope: !295, file: !160, line: 173, baseType: !254, size: 120, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "status_register", scope: !295, file: !160, line: 174, baseType: !254, size: 120, offset: 184)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !295, file: !160, line: 175, baseType: !7, size: 32, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "states_tss", scope: !295, file: !160, line: 176, baseType: !303, size: 64, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_tx_tss", file: !160, line: 157, size: 320, elements: !305)
!305 = !{!306, !307, !308, !309, !310}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "freqpercentage", scope: !304, file: !160, line: 158, baseType: !151, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !304, file: !160, line: 159, baseType: !151, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !304, file: !160, line: 160, baseType: !151, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !304, file: !160, line: 161, baseType: !151, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !304, file: !160, line: 162, baseType: !151, size: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "domain_info", scope: !295, file: !160, line: 177, baseType: !312, size: 320, offset: 448)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_tsd_package", file: !160, line: 139, size: 320, elements: !313)
!313 = !{!314, !315, !316, !317, !318}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !312, file: !160, line: 140, baseType: !151, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !312, file: !160, line: 141, baseType: !151, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !312, file: !160, line: 142, baseType: !151, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "coord_type", scope: !312, file: !160, line: 143, baseType: !151, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "num_processors", scope: !312, file: !160, line: 144, baseType: !151, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "shared_cpu_map", scope: !295, file: !160, line: 178, baseType: !284, size: 64, offset: 768)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_processor_get_throttling", scope: !295, file: !160, line: 179, baseType: !321, size: 64, offset: 832)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!144, !181}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_processor_set_throttling", scope: !295, file: !160, line: 180, baseType: !325, size: 64, offset: 896)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!144, !181, !144, !328}
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !178, line: 30, baseType: !329)
!329 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !295, file: !160, line: 183, baseType: !156, size: 32, offset: 960)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "duty_offset", scope: !295, file: !160, line: 184, baseType: !163, size: 8, offset: 992)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "duty_width", scope: !295, file: !160, line: 185, baseType: !163, size: 8, offset: 1000)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tsd_valid_flag", scope: !295, file: !160, line: 186, baseType: !163, size: 8, offset: 1008)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !295, file: !160, line: 187, baseType: !7, size: 32, offset: 1024)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !295, file: !160, line: 188, baseType: !336, size: 512, offset: 1056)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 512, elements: !341)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_tx", file: !160, line: 164, size: 32, elements: !338)
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !337, file: !160, line: 165, baseType: !167, size: 16)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !337, file: !160, line: 166, baseType: !167, size: 16, offset: 16)
!341 = !{!342}
!342 = !DISubrange(count: 16)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !182, file: !160, line: 232, baseType: !344, size: 192, offset: 6720)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_limit", file: !160, line: 198, size: 192, elements: !345)
!345 = !{!346, !351, !352}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !344, file: !160, line: 199, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_lx", file: !160, line: 193, size: 64, elements: !348)
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "px", scope: !347, file: !160, line: 194, baseType: !144, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !347, file: !160, line: 195, baseType: !144, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "thermal", scope: !344, file: !160, line: 200, baseType: !347, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !344, file: !160, line: 201, baseType: !347, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !182, file: !160, line: 233, baseType: !354, size: 64, offset: 6912)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !356, line: 93, size: 6528, elements: !357)
!356 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!357 = !{!358, !359, !363, !4114, !4115, !4116, !4117, !4143, !4144, !4145, !4146}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !355, file: !356, line: 94, baseType: !144, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !355, file: !356, line: 95, baseType: !360, size: 160, offset: 32)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 160, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 20)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !355, file: !356, line: 96, baseType: !364, size: 5568, offset: 192)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !85, line: 461, size: 5568, elements: !365)
!365 = !{!366, !3496, !3498, !3501, !3502, !3553, !3644, !3645, !3646, !3647, !3648, !3657, !3834, !3847, !4041, !4042, !4046, !4048, !4049, !4050, !4054, !4060, !4061, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4102, !4103, !4104, !4107, !4110, !4111, !4112, !4113}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !364, file: !85, line: 462, baseType: !367, size: 512)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !368, line: 64, size: 512, elements: !369)
!368 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!369 = !{!370, !373, !379, !381, !441, !3347, !3486, !3491, !3492, !3493, !3494, !3495}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !367, file: !368, line: 65, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !367, file: !368, line: 66, baseType: !374, size: 128, offset: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !178, line: 178, size: 128, elements: !375)
!375 = !{!376, !378}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !374, file: !178, line: 179, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !374, file: !178, line: 179, baseType: !377, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !367, file: !368, line: 67, baseType: !380, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !367, file: !368, line: 68, baseType: !382, size: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !368, line: 192, size: 704, elements: !384)
!384 = !{!385, !386, !402, !403}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !383, file: !368, line: 193, baseType: !374, size: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !383, file: !368, line: 194, baseType: !387, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !388, line: 83, baseType: !389)
!388 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !388, line: 71, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !388, line: 72, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !388, line: 72, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !392, file: !388, line: 73, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !388, line: 20, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !395, file: !388, line: 21, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !399, line: 25, baseType: !400)
!399 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !399, line: 25, elements: !401)
!401 = !{}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !383, file: !368, line: 195, baseType: !367, size: 512, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !383, file: !368, line: 196, baseType: !404, size: 64, offset: 640)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !368, line: 156, size: 192, elements: !407)
!407 = !{!408, !413, !418}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !406, file: !368, line: 157, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!144, !382, !380}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !406, file: !368, line: 158, baseType: !414, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!371, !382, !380}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !406, file: !368, line: 159, baseType: !419, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!144, !382, !380, !423}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !368, line: 148, size: 20736, elements: !425)
!425 = !{!426, !431, !435, !436, !440}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !424, file: !368, line: 149, baseType: !427, size: 192)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 192, elements: !429)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!429 = !{!430}
!430 = !DISubrange(count: 3)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !424, file: !368, line: 150, baseType: !432, size: 4096, offset: 192)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 4096, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !424, file: !368, line: 151, baseType: !144, size: 32, offset: 4288)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !424, file: !368, line: 152, baseType: !437, size: 16384, offset: 4320)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 16384, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 2048)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !424, file: !368, line: 153, baseType: !144, size: 32, offset: 20704)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !367, file: !368, line: 69, baseType: !442, size: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !368, line: 138, size: 448, elements: !444)
!444 = !{!445, !449, !477, !479, !3309, !3337, !3341}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !443, file: !368, line: 139, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !380}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !443, file: !368, line: 140, baseType: !450, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !453, line: 230, size: 128, elements: !454)
!453 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!454 = !{!455, !470}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !452, file: !453, line: 231, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!459, !380, !464, !428}
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !178, line: 60, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !461, line: 73, baseType: !462)
!461 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !461, line: 15, baseType: !463)
!463 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !453, line: 30, size: 128, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !465, file: !453, line: 31, baseType: !371, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !465, file: !453, line: 32, baseType: !469, size: 16, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !178, line: 19, baseType: !169)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !452, file: !453, line: 232, baseType: !471, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!459, !380, !464, !371, !474}
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !178, line: 55, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !461, line: 72, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !461, line: 16, baseType: !146)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !443, file: !368, line: 141, baseType: !478, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !443, file: !368, line: 142, baseType: !480, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !453, line: 84, size: 320, elements: !484)
!484 = !{!485, !486, !490, !3306, !3307}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !483, file: !453, line: 85, baseType: !371, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !483, file: !453, line: 86, baseType: !487, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!469, !380, !464, !144}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !483, file: !453, line: 88, baseType: !491, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!469, !380, !494, !144}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !453, line: 168, size: 448, elements: !496)
!496 = !{!497, !498, !499, !500, !3301, !3302}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !495, file: !453, line: 169, baseType: !465, size: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !495, file: !453, line: 170, baseType: !474, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !495, file: !453, line: 171, baseType: !149, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !495, file: !453, line: 172, baseType: !501, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!459, !504, !380, !494, !428, !673, !474}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !56, line: 916, size: 1856, align: 32, elements: !506)
!506 = !{!507, !525, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3284, !3285, !3294, !3295, !3296, !3297, !3298, !3299, !3300}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !505, file: !56, line: 920, baseType: !508, size: 128)
!508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !505, file: !56, line: 917, size: 128, elements: !509)
!509 = !{!510, !516}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !508, file: !56, line: 918, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !512, line: 58, size: 64, elements: !513)
!512 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!513 = !{!514}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !511, file: !512, line: 59, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !508, file: !56, line: 919, baseType: !517, size: 128, align: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !178, line: 216, size: 128, align: 64, elements: !518)
!518 = !{!519, !521}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !517, file: !178, line: 217, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !517, file: !178, line: 218, baseType: !522, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !520}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !505, file: !56, line: 921, baseType: !526, size: 128, offset: 128)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !527, line: 8, size: 128, elements: !528)
!527 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!528 = !{!529, !533}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !526, file: !527, line: 9, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !532, line: 18, flags: DIFlagFwdDecl)
!532 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!533 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !526, file: !527, line: 10, baseType: !534, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !532, line: 89, size: 1536, elements: !536)
!536 = !{!537, !538, !548, !556, !557, !572, !3234, !3236, !3248, !3249, !3250, !3251, !3252, !3258, !3259, !3260}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !535, file: !532, line: 91, baseType: !7, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !535, file: !532, line: 92, baseType: !539, size: 32, offset: 32)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !540, line: 277, baseType: !541)
!540 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !540, line: 277, size: 32, elements: !542)
!542 = !{!543}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !541, file: !540, line: 277, baseType: !544, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !540, line: 70, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !540, line: 65, size: 32, elements: !546)
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !545, file: !540, line: 66, baseType: !7, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !535, file: !532, line: 93, baseType: !549, size: 128, offset: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !550, line: 38, size: 128, elements: !551)
!550 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!551 = !{!552, !554}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !549, file: !550, line: 39, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !549, file: !550, line: 39, baseType: !555, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !535, file: !532, line: 94, baseType: !534, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !535, file: !532, line: 95, baseType: !558, size: 128, offset: 256)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !532, line: 47, size: 128, elements: !559)
!559 = !{!560, !569}
!560 = !DIDerivedType(tag: DW_TAG_member, scope: !558, file: !532, line: 48, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !558, file: !532, line: 48, size: 64, elements: !562)
!562 = !{!563, !568}
!563 = !DIDerivedType(tag: DW_TAG_member, scope: !561, file: !532, line: 49, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !561, file: !532, line: 49, size: 64, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !564, file: !532, line: 50, baseType: !156, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !564, file: !532, line: 50, baseType: !156, size: 32, offset: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !561, file: !532, line: 52, baseType: !151, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !558, file: !532, line: 54, baseType: !570, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !535, file: !532, line: 96, baseType: !573, size: 64, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !56, line: 610, size: 4224, elements: !575)
!575 = !{!576, !577, !578, !586, !593, !594, !740, !2945, !2946, !2947, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !3210, !3218, !3219, !3220, !3230, !3231, !3232, !3233}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !574, file: !56, line: 611, baseType: !469, size: 16)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !574, file: !56, line: 612, baseType: !169, size: 16, offset: 16)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !574, file: !56, line: 613, baseType: !579, size: 32, offset: 32)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !580, line: 23, baseType: !581)
!580 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !580, line: 21, size: 32, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !581, file: !580, line: 22, baseType: !584, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !178, line: 32, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !461, line: 49, baseType: !7)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !574, file: !56, line: 614, baseType: !587, size: 32, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !580, line: 28, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !580, line: 26, size: 32, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !588, file: !580, line: 27, baseType: !591, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !178, line: 33, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !461, line: 50, baseType: !7)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !574, file: !56, line: 615, baseType: !7, size: 32, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !574, file: !56, line: 622, baseType: !595, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !597)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !56, line: 1864, size: 1536, align: 512, elements: !598)
!598 = !{!599, !603, !616, !620, !626, !630, !634, !638, !642, !646, !650, !651, !657, !661, !687, !716, !720, !726, !731, !735, !736}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !597, file: !56, line: 1865, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!534, !573, !534, !7}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !597, file: !56, line: 1866, baseType: !604, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!371, !534, !573, !607}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !609, line: 10, size: 128, elements: !610)
!609 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!610 = !{!611, !615}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !608, file: !609, line: 11, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !149}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !608, file: !609, line: 12, baseType: !149, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !597, file: !56, line: 1867, baseType: !617, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!144, !573, !144}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !597, file: !56, line: 1868, baseType: !621, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!624, !573, !144}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !56, line: 581, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !597, file: !56, line: 1870, baseType: !627, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!144, !534, !428, !144}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !597, file: !56, line: 1872, baseType: !631, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!144, !573, !534, !469, !328}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !597, file: !56, line: 1873, baseType: !635, size: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!144, !534, !573, !534}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !597, file: !56, line: 1874, baseType: !639, size: 64, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!144, !573, !534}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !597, file: !56, line: 1875, baseType: !643, size: 64, offset: 512)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!144, !573, !534, !371}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !597, file: !56, line: 1876, baseType: !647, size: 64, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!144, !573, !534, !469}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !597, file: !56, line: 1877, baseType: !639, size: 64, offset: 640)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !597, file: !56, line: 1878, baseType: !652, size: 64, offset: 704)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!144, !573, !534, !469, !655}
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !178, line: 16, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !178, line: 13, baseType: !156)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !597, file: !56, line: 1879, baseType: !658, size: 64, offset: 768)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!144, !573, !534, !573, !534, !7}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !597, file: !56, line: 1881, baseType: !662, size: 64, offset: 832)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!144, !534, !665}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !56, line: 219, size: 640, elements: !667)
!667 = !{!668, !669, !670, !671, !672, !676, !684, !685, !686}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !666, file: !56, line: 220, baseType: !7, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !666, file: !56, line: 221, baseType: !469, size: 16, offset: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !666, file: !56, line: 222, baseType: !579, size: 32, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !666, file: !56, line: 223, baseType: !587, size: 32, offset: 96)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !666, file: !56, line: 224, baseType: !673, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !178, line: 46, baseType: !674)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !461, line: 88, baseType: !675)
!675 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !666, file: !56, line: 225, baseType: !677, size: 128, offset: 192)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !678, line: 13, size: 128, elements: !679)
!678 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!679 = !{!680, !683}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !677, file: !678, line: 14, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !678, line: 8, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !154, line: 30, baseType: !675)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !677, file: !678, line: 15, baseType: !463, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !666, file: !56, line: 226, baseType: !677, size: 128, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !666, file: !56, line: 227, baseType: !677, size: 128, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !666, file: !56, line: 234, baseType: !504, size: 64, offset: 576)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !597, file: !56, line: 1882, baseType: !688, size: 64, offset: 896)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!144, !691, !693, !156, !7}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !695, line: 22, size: 1152, elements: !696)
!695 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!696 = !{!697, !698, !699, !700, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !694, file: !695, line: 23, baseType: !156, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !694, file: !695, line: 24, baseType: !469, size: 16, offset: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !694, file: !695, line: 25, baseType: !7, size: 32, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !694, file: !695, line: 26, baseType: !701, size: 32, offset: 96)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !178, line: 104, baseType: !156)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !694, file: !695, line: 27, baseType: !151, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !694, file: !695, line: 28, baseType: !151, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !694, file: !695, line: 37, baseType: !151, size: 64, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !694, file: !695, line: 38, baseType: !655, size: 32, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !694, file: !695, line: 39, baseType: !655, size: 32, offset: 352)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !694, file: !695, line: 40, baseType: !579, size: 32, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !694, file: !695, line: 41, baseType: !587, size: 32, offset: 416)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !694, file: !695, line: 42, baseType: !673, size: 64, offset: 448)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !694, file: !695, line: 43, baseType: !677, size: 128, offset: 512)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !694, file: !695, line: 44, baseType: !677, size: 128, offset: 640)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !694, file: !695, line: 45, baseType: !677, size: 128, offset: 768)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !694, file: !695, line: 46, baseType: !677, size: 128, offset: 896)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !694, file: !695, line: 47, baseType: !151, size: 64, offset: 1024)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !694, file: !695, line: 48, baseType: !151, size: 64, offset: 1088)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !597, file: !56, line: 1883, baseType: !717, size: 64, offset: 960)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!459, !534, !428, !474}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !597, file: !56, line: 1884, baseType: !721, size: 64, offset: 1024)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!144, !573, !724, !151, !151}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !56, line: 50, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !597, file: !56, line: 1886, baseType: !727, size: 64, offset: 1088)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!144, !573, !730, !144}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !597, file: !56, line: 1887, baseType: !732, size: 64, offset: 1152)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!144, !573, !534, !504, !7, !469}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !597, file: !56, line: 1890, baseType: !647, size: 64, offset: 1216)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !597, file: !56, line: 1891, baseType: !737, size: 64, offset: 1280)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!144, !573, !624, !144}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !574, file: !56, line: 623, baseType: !741, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !56, line: 1416, size: 9472, elements: !743)
!743 = !{!744, !745, !746, !747, !748, !749, !799, !2553, !2635, !2718, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2734, !2738, !2739, !2742, !2743, !2746, !2747, !2748, !2789, !2816, !2817, !2818, !2819, !2820, !2821, !2824, !2825, !2832, !2833, !2835, !2836, !2837, !2896, !2897, !2912, !2913, !2914, !2915, !2916, !2919, !2920, !2921, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !742, file: !56, line: 1417, baseType: !374, size: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !742, file: !56, line: 1418, baseType: !655, size: 32, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !742, file: !56, line: 1419, baseType: !165, size: 8, offset: 160)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !742, file: !56, line: 1420, baseType: !146, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !742, file: !56, line: 1421, baseType: !673, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !742, file: !56, line: 1422, baseType: !750, size: 64, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !56, line: 2228, size: 576, elements: !752)
!752 = !{!753, !754, !755, !762, !766, !770, !774, !778, !779, !789, !792, !793, !794, !796, !797, !798}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !751, file: !56, line: 2229, baseType: !371, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !751, file: !56, line: 2230, baseType: !144, size: 32, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !751, file: !56, line: 2238, baseType: !756, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!144, !759}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !761, line: 28, flags: DIFlagFwdDecl)
!761 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!762 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !751, file: !56, line: 2239, baseType: !763, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !765)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !56, line: 70, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !751, file: !56, line: 2240, baseType: !767, size: 64, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!534, !750, !144, !371, !149}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !751, file: !56, line: 2242, baseType: !771, size: 64, offset: 320)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !741}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !751, file: !56, line: 2243, baseType: !775, size: 64, offset: 384)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !777, line: 76, flags: DIFlagFwdDecl)
!777 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !751, file: !56, line: 2244, baseType: !750, size: 64, offset: 448)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !751, file: !56, line: 2245, baseType: !780, size: 64, offset: 512)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !178, line: 182, size: 64, elements: !781)
!781 = !{!782}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !780, file: !178, line: 183, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !178, line: 186, size: 128, elements: !785)
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !784, file: !178, line: 187, baseType: !783, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !784, file: !178, line: 187, baseType: !788, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !751, file: !56, line: 2247, baseType: !790, offset: 576)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !791, line: 187, elements: !401)
!791 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!792 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !751, file: !56, line: 2248, baseType: !790, offset: 576)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !751, file: !56, line: 2249, baseType: !790, offset: 576)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !751, file: !56, line: 2250, baseType: !795, offset: 576)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !790, elements: !429)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !751, file: !56, line: 2252, baseType: !790, offset: 576)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !751, file: !56, line: 2253, baseType: !790, offset: 576)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !751, file: !56, line: 2254, baseType: !790, offset: 576)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !742, file: !56, line: 1423, baseType: !800, size: 64, offset: 384)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !802)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !56, line: 1935, size: 1472, elements: !803)
!803 = !{!804, !808, !812, !813, !817, !823, !827, !828, !829, !833, !837, !838, !839, !840, !846, !851, !852, !859, !860, !861, !862, !2537, !2552}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !802, file: !56, line: 1936, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!573, !741}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !802, file: !56, line: 1937, baseType: !809, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !573}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !802, file: !56, line: 1938, baseType: !809, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !802, file: !56, line: 1940, baseType: !814, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !573, !144}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !802, file: !56, line: 1941, baseType: !818, size: 64, offset: 256)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!144, !573, !821}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !26, line: 40, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !802, file: !56, line: 1942, baseType: !824, size: 64, offset: 320)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!144, !573}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !802, file: !56, line: 1943, baseType: !809, size: 64, offset: 384)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !802, file: !56, line: 1944, baseType: !771, size: 64, offset: 448)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !802, file: !56, line: 1945, baseType: !830, size: 64, offset: 512)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!144, !741, !144}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !802, file: !56, line: 1946, baseType: !834, size: 64, offset: 576)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!144, !741}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !802, file: !56, line: 1947, baseType: !834, size: 64, offset: 640)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !802, file: !56, line: 1948, baseType: !834, size: 64, offset: 704)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !802, file: !56, line: 1949, baseType: !834, size: 64, offset: 768)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !802, file: !56, line: 1950, baseType: !841, size: 64, offset: 832)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!144, !534, !844}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !56, line: 57, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !802, file: !56, line: 1951, baseType: !847, size: 64, offset: 896)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!144, !741, !850, !428}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !802, file: !56, line: 1952, baseType: !771, size: 64, offset: 960)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !802, file: !56, line: 1954, baseType: !853, size: 64, offset: 1024)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!144, !856, !534}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !858, line: 539, flags: DIFlagFwdDecl)
!858 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!859 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !802, file: !56, line: 1955, baseType: !853, size: 64, offset: 1088)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !802, file: !56, line: 1956, baseType: !853, size: 64, offset: 1152)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !802, file: !56, line: 1957, baseType: !853, size: 64, offset: 1216)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !802, file: !56, line: 1963, baseType: !863, size: 64, offset: 1280)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!144, !741, !866, !177}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !868, line: 68, size: 512, align: 128, elements: !869)
!868 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!869 = !{!870, !871, !2529, !2536}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !867, file: !868, line: 69, baseType: !146, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, scope: !867, file: !868, line: 77, baseType: !872, size: 320, offset: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !867, file: !868, line: 77, size: 320, elements: !873)
!873 = !{!874, !1058, !1063, !1091, !1099, !1105, !2460, !2528}
!874 = !DIDerivedType(tag: DW_TAG_member, scope: !872, file: !868, line: 78, baseType: !875, size: 320)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !868, line: 78, size: 320, elements: !876)
!876 = !{!877, !878, !1056, !1057}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !875, file: !868, line: 84, baseType: !374, size: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !875, file: !868, line: 86, baseType: !879, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !56, line: 451, size: 1216, align: 64, elements: !881)
!881 = !{!882, !883, !890, !891, !896, !911, !927, !928, !929, !930, !1049, !1050, !1053, !1054, !1055}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !880, file: !56, line: 452, baseType: !573, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !880, file: !56, line: 453, baseType: !884, size: 128, offset: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !885, line: 292, size: 128, elements: !886)
!885 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!886 = !{!887, !888, !889}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !884, file: !885, line: 293, baseType: !387)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !884, file: !885, line: 295, baseType: !177, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !884, file: !885, line: 296, baseType: !149, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !880, file: !56, line: 454, baseType: !177, size: 32, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !880, file: !56, line: 455, baseType: !892, size: 32, offset: 224)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !178, line: 168, baseType: !893)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 166, size: 32, elements: !894)
!894 = !{!895}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !893, file: !178, line: 167, baseType: !144, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !880, file: !56, line: 460, baseType: !897, size: 128, offset: 256)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !898, line: 125, size: 128, elements: !899)
!898 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!899 = !{!900, !910}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !897, file: !898, line: 126, baseType: !901, size: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !898, line: 31, size: 64, elements: !902)
!902 = !{!903}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !901, file: !898, line: 32, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !898, line: 24, size: 192, align: 64, elements: !906)
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !905, file: !898, line: 25, baseType: !146, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !905, file: !898, line: 26, baseType: !904, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !905, file: !898, line: 27, baseType: !904, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !897, file: !898, line: 127, baseType: !904, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !880, file: !56, line: 461, baseType: !912, size: 256, offset: 384)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !913, line: 35, size: 256, elements: !914)
!913 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!914 = !{!915, !923, !924, !926}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !912, file: !913, line: 36, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !917, line: 13, baseType: !918)
!917 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !178, line: 175, baseType: !919)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 173, size: 64, elements: !920)
!920 = !{!921}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !919, file: !178, line: 174, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !152, line: 22, baseType: !682)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !912, file: !913, line: 42, baseType: !916, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !912, file: !913, line: 46, baseType: !925, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !388, line: 29, baseType: !395)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !912, file: !913, line: 47, baseType: !374, size: 128, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !880, file: !56, line: 462, baseType: !146, size: 64, offset: 640)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !880, file: !56, line: 463, baseType: !146, size: 64, offset: 704)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !880, file: !56, line: 464, baseType: !146, size: 64, offset: 768)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !880, file: !56, line: 465, baseType: !931, size: 64, offset: 832)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !933)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !56, line: 367, size: 1408, elements: !934)
!934 = !{!935, !939, !943, !947, !951, !955, !961, !966, !970, !975, !979, !983, !987, !1013, !1017, !1023, !1024, !1025, !1029, !1034, !1038, !1045}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !933, file: !56, line: 368, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!144, !866, !821}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !933, file: !56, line: 369, baseType: !940, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!144, !504, !866}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !933, file: !56, line: 372, baseType: !944, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!144, !879, !821}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !933, file: !56, line: 375, baseType: !948, size: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!144, !866}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !933, file: !56, line: 381, baseType: !952, size: 64, offset: 256)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!144, !504, !879, !377, !7}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !933, file: !56, line: 383, baseType: !956, size: 64, offset: 320)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{null, !959}
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !56, line: 290, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !933, file: !56, line: 385, baseType: !962, size: 64, offset: 384)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!144, !504, !879, !673, !7, !7, !965, !179}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !933, file: !56, line: 388, baseType: !967, size: 64, offset: 448)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!144, !504, !879, !673, !7, !7, !866, !149}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !933, file: !56, line: 393, baseType: !971, size: 64, offset: 512)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!974, !879, !974}
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !178, line: 125, baseType: !151)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !933, file: !56, line: 394, baseType: !976, size: 64, offset: 576)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !866, !7, !7}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !933, file: !56, line: 395, baseType: !980, size: 64, offset: 640)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!144, !866, !177}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !933, file: !56, line: 396, baseType: !984, size: 64, offset: 704)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !866}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !933, file: !56, line: 397, baseType: !988, size: 64, offset: 768)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!459, !991, !1011}
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !56, line: 320, size: 384, elements: !993)
!993 = !{!994, !995, !996, !1000, !1001, !1002, !1003, !1004}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !992, file: !56, line: 321, baseType: !504, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !992, file: !56, line: 326, baseType: !673, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !992, file: !56, line: 327, baseType: !997, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{null, !991, !463, !463}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !992, file: !56, line: 328, baseType: !149, size: 64, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !992, file: !56, line: 329, baseType: !144, size: 32, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !992, file: !56, line: 330, baseType: !167, size: 16, offset: 288)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !992, file: !56, line: 331, baseType: !167, size: 16, offset: 304)
!1004 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !56, line: 332, baseType: !1005, size: 64, offset: 320)
!1005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !56, line: 332, size: 64, elements: !1006)
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1005, file: !56, line: 333, baseType: !7, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1005, file: !56, line: 334, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !56, line: 334, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !56, line: 64, flags: DIFlagFwdDecl)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !933, file: !56, line: 402, baseType: !1014, size: 64, offset: 832)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!144, !879, !866, !866, !18}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !933, file: !56, line: 404, baseType: !1018, size: 64, offset: 896)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!328, !866, !1021}
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1022, line: 305, baseType: !7)
!1022 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !933, file: !56, line: 405, baseType: !984, size: 64, offset: 960)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !933, file: !56, line: 406, baseType: !948, size: 64, offset: 1024)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !933, file: !56, line: 407, baseType: !1026, size: 64, offset: 1088)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!144, !866, !146, !146}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !933, file: !56, line: 409, baseType: !1030, size: 64, offset: 1152)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !866, !1033, !1033}
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !933, file: !56, line: 410, baseType: !1035, size: 64, offset: 1216)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!144, !879, !866}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !933, file: !56, line: 413, baseType: !1039, size: 64, offset: 1280)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!144, !1042, !504, !1044}
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !56, line: 61, flags: DIFlagFwdDecl)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !933, file: !56, line: 415, baseType: !1046, size: 64, offset: 1344)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !504}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !880, file: !56, line: 466, baseType: !146, size: 64, offset: 896)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !880, file: !56, line: 467, baseType: !1051, size: 32, offset: 960)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1052, line: 8, baseType: !156)
!1052 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !880, file: !56, line: 468, baseType: !387, offset: 992)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !880, file: !56, line: 469, baseType: !374, size: 128, offset: 1024)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !880, file: !56, line: 470, baseType: !149, size: 64, offset: 1152)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !875, file: !868, line: 87, baseType: !146, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !875, file: !868, line: 94, baseType: !146, size: 64, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !872, file: !868, line: 96, baseType: !1059, size: 64)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !868, line: 96, size: 64, elements: !1060)
!1060 = !{!1061}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1059, file: !868, line: 101, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !178, line: 143, baseType: !151)
!1063 = !DIDerivedType(tag: DW_TAG_member, scope: !872, file: !868, line: 103, baseType: !1064, size: 320)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !868, line: 103, size: 320, elements: !1065)
!1065 = !{!1066, !1076, !1079, !1080}
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1064, file: !868, line: 104, baseType: !1067, size: 128)
!1067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1064, file: !868, line: 104, size: 128, elements: !1068)
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1067, file: !868, line: 105, baseType: !374, size: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !1067, file: !868, line: 106, baseType: !1071, size: 128)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1067, file: !868, line: 106, size: 128, elements: !1072)
!1072 = !{!1073, !1074, !1075}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1071, file: !868, line: 107, baseType: !866, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1071, file: !868, line: 109, baseType: !144, size: 32, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1071, file: !868, line: 110, baseType: !144, size: 32, offset: 96)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1064, file: !868, line: 117, baseType: !1077, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !868, line: 117, flags: DIFlagFwdDecl)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1064, file: !868, line: 119, baseType: !149, size: 64, offset: 192)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1064, file: !868, line: 120, baseType: !1081, size: 64, offset: 256)
!1081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1064, file: !868, line: 120, size: 64, elements: !1082)
!1082 = !{!1083, !1084, !1085}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1081, file: !868, line: 121, baseType: !149, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1081, file: !868, line: 122, baseType: !146, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !868, line: 123, baseType: !1086, size: 32)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !868, line: 123, size: 32, elements: !1087)
!1087 = !{!1088, !1089, !1090}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1086, file: !868, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1086, file: !868, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1086, file: !868, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1091 = !DIDerivedType(tag: DW_TAG_member, scope: !872, file: !868, line: 130, baseType: !1092, size: 192)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !868, line: 130, size: 192, elements: !1093)
!1093 = !{!1094, !1095, !1096, !1097, !1098}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1092, file: !868, line: 131, baseType: !146, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1092, file: !868, line: 134, baseType: !165, size: 8, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1092, file: !868, line: 135, baseType: !165, size: 8, offset: 72)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1092, file: !868, line: 136, baseType: !892, size: 32, offset: 96)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1092, file: !868, line: 137, baseType: !7, size: 32, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !872, file: !868, line: 139, baseType: !1100, size: 256)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !868, line: 139, size: 256, elements: !1101)
!1101 = !{!1102, !1103, !1104}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1100, file: !868, line: 140, baseType: !146, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1100, file: !868, line: 141, baseType: !892, size: 32, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1100, file: !868, line: 143, baseType: !374, size: 128, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, scope: !872, file: !868, line: 145, baseType: !1106, size: 256)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !868, line: 145, size: 256, elements: !1107)
!1107 = !{!1108, !1109, !1111, !1112, !2459}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1106, file: !868, line: 146, baseType: !146, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1106, file: !868, line: 147, baseType: !1110, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !858, line: 509, baseType: !866)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1106, file: !868, line: 148, baseType: !146, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !1106, file: !868, line: 149, baseType: !1113, size: 64, offset: 192)
!1113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1106, file: !868, line: 149, size: 64, elements: !1114)
!1114 = !{!1115, !2458}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1113, file: !868, line: 150, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !868, line: 388, size: 7296, elements: !1118)
!1118 = !{!1119, !2454}
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !1117, file: !868, line: 389, baseType: !1120, size: 7296)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1117, file: !868, line: 389, size: 7296, elements: !1121)
!1121 = !{!1122, !1240, !1241, !1242, !1246, !1247, !1248, !1249, !1250, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1291, !1299, !1302, !1348, !1349, !2438, !2439, !2442, !2443, !2444, !2447, !2448, !2449, !2452, !2453}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1120, file: !868, line: 390, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !868, line: 305, size: 1472, elements: !1125)
!1125 = !{!1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1140, !1141, !1146, !1147, !1150, !1234, !1235, !1236, !1237, !1238}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1124, file: !868, line: 308, baseType: !146, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1124, file: !868, line: 309, baseType: !146, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1124, file: !868, line: 313, baseType: !1123, size: 64, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1124, file: !868, line: 313, baseType: !1123, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1124, file: !868, line: 315, baseType: !905, size: 192, align: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1124, file: !868, line: 323, baseType: !146, size: 64, offset: 448)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1124, file: !868, line: 327, baseType: !1116, size: 64, offset: 512)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1124, file: !868, line: 333, baseType: !1134, size: 64, offset: 576)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !858, line: 284, baseType: !1135)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !858, line: 284, size: 64, elements: !1136)
!1136 = !{!1137}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1135, file: !858, line: 284, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1139, line: 19, baseType: !146)
!1139 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1124, file: !868, line: 334, baseType: !146, size: 64, offset: 640)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1124, file: !868, line: 343, baseType: !1142, size: 256, offset: 704)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1124, file: !868, line: 340, size: 256, elements: !1143)
!1143 = !{!1144, !1145}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1142, file: !868, line: 341, baseType: !905, size: 192, align: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1142, file: !868, line: 342, baseType: !146, size: 64, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1124, file: !868, line: 351, baseType: !374, size: 128, offset: 960)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1124, file: !868, line: 353, baseType: !1148, size: 64, offset: 1088)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !868, line: 353, flags: DIFlagFwdDecl)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1124, file: !868, line: 356, baseType: !1151, size: 64, offset: 1152)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1153)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !26, line: 557, size: 832, elements: !1154)
!1154 = !{!1155, !1159, !1160, !1164, !1168, !1208, !1212, !1216, !1220, !1221, !1222, !1226, !1230}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1153, file: !26, line: 558, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !1123}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1153, file: !26, line: 559, baseType: !1156, size: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1153, file: !26, line: 560, baseType: !1161, size: 64, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!144, !1123, !146}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1153, file: !26, line: 561, baseType: !1165, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!144, !1123}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1153, file: !26, line: 562, baseType: !1169, size: 64, offset: 256)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!1172, !1173}
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !868, line: 682, baseType: !7)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !26, line: 508, size: 768, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1179, !1180, !1181, !1188, !1195, !1201, !1202, !1203, !1205, !1207}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1174, file: !26, line: 509, baseType: !1123, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1174, file: !26, line: 510, baseType: !7, size: 32, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1174, file: !26, line: 511, baseType: !177, size: 32, offset: 96)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1174, file: !26, line: 512, baseType: !146, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1174, file: !26, line: 513, baseType: !146, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1174, file: !26, line: 514, baseType: !1182, size: 64, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !858, line: 385, baseType: !1184)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !858, line: 385, size: 64, elements: !1185)
!1185 = !{!1186}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1184, file: !858, line: 385, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1139, line: 15, baseType: !146)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1174, file: !26, line: 516, baseType: !1189, size: 64, offset: 320)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !858, line: 359, baseType: !1191)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !858, line: 359, size: 64, elements: !1192)
!1192 = !{!1193}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1191, file: !858, line: 359, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1139, line: 16, baseType: !146)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1174, file: !26, line: 519, baseType: !1196, size: 64, offset: 384)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1139, line: 21, baseType: !1197)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1139, line: 21, size: 64, elements: !1198)
!1198 = !{!1199}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1197, file: !1139, line: 21, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1139, line: 14, baseType: !146)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1174, file: !26, line: 521, baseType: !866, size: 64, offset: 448)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1174, file: !26, line: 522, baseType: !866, size: 64, offset: 512)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1174, file: !26, line: 528, baseType: !1204, size: 64, offset: 576)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1174, file: !26, line: 532, baseType: !1206, size: 64, offset: 640)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1174, file: !26, line: 536, baseType: !1110, size: 64, offset: 704)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1153, file: !26, line: 563, baseType: !1209, size: 64, offset: 320)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!1172, !1173, !25}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1153, file: !26, line: 565, baseType: !1213, size: 64, offset: 384)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !1173, !146, !146}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1153, file: !26, line: 567, baseType: !1217, size: 64, offset: 448)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!146, !1123}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1153, file: !26, line: 571, baseType: !1169, size: 64, offset: 512)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1153, file: !26, line: 574, baseType: !1169, size: 64, offset: 576)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1153, file: !26, line: 579, baseType: !1223, size: 64, offset: 640)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!144, !1123, !146, !149, !144, !144}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1153, file: !26, line: 585, baseType: !1227, size: 64, offset: 704)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!371, !1123}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1153, file: !26, line: 615, baseType: !1231, size: 64, offset: 768)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!866, !1123, !146}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1124, file: !868, line: 359, baseType: !146, size: 64, offset: 1216)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1124, file: !868, line: 361, baseType: !504, size: 64, offset: 1280)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1124, file: !868, line: 362, baseType: !149, size: 64, offset: 1344)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1124, file: !868, line: 365, baseType: !916, size: 64, offset: 1408)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1124, file: !868, line: 373, baseType: !1239, offset: 1472)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !868, line: 296, elements: !401)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1120, file: !868, line: 391, baseType: !901, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1120, file: !868, line: 392, baseType: !151, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1120, file: !868, line: 394, baseType: !1243, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!146, !504, !146, !146, !146, !146}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1120, file: !868, line: 398, baseType: !146, size: 64, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1120, file: !868, line: 399, baseType: !146, size: 64, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1120, file: !868, line: 405, baseType: !146, size: 64, offset: 384)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1120, file: !868, line: 406, baseType: !146, size: 64, offset: 448)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1120, file: !868, line: 407, baseType: !1251, size: 64, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !858, line: 286, baseType: !1253)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !858, line: 286, size: 64, elements: !1254)
!1254 = !{!1255}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1253, file: !858, line: 286, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1139, line: 18, baseType: !146)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1120, file: !868, line: 416, baseType: !892, size: 32, offset: 576)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1120, file: !868, line: 428, baseType: !892, size: 32, offset: 608)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1120, file: !868, line: 437, baseType: !892, size: 32, offset: 640)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1120, file: !868, line: 447, baseType: !892, size: 32, offset: 672)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1120, file: !868, line: 450, baseType: !916, size: 64, offset: 704)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1120, file: !868, line: 452, baseType: !144, size: 32, offset: 768)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1120, file: !868, line: 454, baseType: !387, offset: 800)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1120, file: !868, line: 457, baseType: !912, size: 256, offset: 832)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1120, file: !868, line: 459, baseType: !374, size: 128, offset: 1088)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1120, file: !868, line: 466, baseType: !146, size: 64, offset: 1216)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1120, file: !868, line: 467, baseType: !146, size: 64, offset: 1280)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1120, file: !868, line: 469, baseType: !146, size: 64, offset: 1344)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1120, file: !868, line: 470, baseType: !146, size: 64, offset: 1408)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1120, file: !868, line: 471, baseType: !918, size: 64, offset: 1472)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1120, file: !868, line: 472, baseType: !146, size: 64, offset: 1536)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1120, file: !868, line: 473, baseType: !146, size: 64, offset: 1600)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1120, file: !868, line: 474, baseType: !146, size: 64, offset: 1664)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1120, file: !868, line: 475, baseType: !146, size: 64, offset: 1728)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1120, file: !868, line: 477, baseType: !387, offset: 1792)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1120, file: !868, line: 478, baseType: !146, size: 64, offset: 1792)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1120, file: !868, line: 478, baseType: !146, size: 64, offset: 1856)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1120, file: !868, line: 478, baseType: !146, size: 64, offset: 1920)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1120, file: !868, line: 478, baseType: !146, size: 64, offset: 1984)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1120, file: !868, line: 479, baseType: !146, size: 64, offset: 2048)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1120, file: !868, line: 479, baseType: !146, size: 64, offset: 2112)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1120, file: !868, line: 479, baseType: !146, size: 64, offset: 2176)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1120, file: !868, line: 480, baseType: !146, size: 64, offset: 2240)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1120, file: !868, line: 480, baseType: !146, size: 64, offset: 2304)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1120, file: !868, line: 480, baseType: !146, size: 64, offset: 2368)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1120, file: !868, line: 480, baseType: !146, size: 64, offset: 2432)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1120, file: !868, line: 482, baseType: !1288, size: 2816, offset: 2496)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 2816, elements: !1289)
!1289 = !{!1290}
!1290 = !DISubrange(count: 44)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1120, file: !868, line: 488, baseType: !1292, size: 256, offset: 5312)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1293, line: 60, size: 256, elements: !1294)
!1293 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1294 = !{!1295}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1292, file: !1293, line: 61, baseType: !1296, size: 256)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !916, size: 256, elements: !1297)
!1297 = !{!1298}
!1298 = !DISubrange(count: 4)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1120, file: !868, line: 490, baseType: !1300, size: 64, offset: 5568)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !868, line: 490, flags: DIFlagFwdDecl)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1120, file: !868, line: 493, baseType: !1303, size: 896, offset: 5632)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1304, line: 53, baseType: !1305)
!1304 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1304, line: 13, size: 896, elements: !1306)
!1306 = !{!1307, !1308, !1309, !1310, !1313, !1314, !1321, !1322, !1342, !1343, !1344}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1305, file: !1304, line: 18, baseType: !151, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1305, file: !1304, line: 28, baseType: !918, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1305, file: !1304, line: 31, baseType: !912, size: 256, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1305, file: !1304, line: 32, baseType: !1311, size: 64, offset: 384)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1304, line: 32, flags: DIFlagFwdDecl)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1305, file: !1304, line: 37, baseType: !169, size: 16, offset: 448)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1305, file: !1304, line: 40, baseType: !1315, size: 192, offset: 512)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1316, line: 53, size: 192, elements: !1317)
!1316 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1317 = !{!1318, !1319, !1320}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1315, file: !1316, line: 54, baseType: !916, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1315, file: !1316, line: 55, baseType: !387, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1315, file: !1316, line: 59, baseType: !374, size: 128, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1305, file: !1304, line: 41, baseType: !149, size: 64, offset: 704)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1305, file: !1304, line: 42, baseType: !1323, size: 64, offset: 768)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1326, line: 13, size: 896, elements: !1327)
!1326 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1327 = !{!1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1325, file: !1326, line: 14, baseType: !149, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1325, file: !1326, line: 15, baseType: !146, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1325, file: !1326, line: 17, baseType: !146, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1325, file: !1326, line: 17, baseType: !146, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1325, file: !1326, line: 19, baseType: !463, size: 64, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1325, file: !1326, line: 21, baseType: !463, size: 64, offset: 320)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1325, file: !1326, line: 22, baseType: !463, size: 64, offset: 384)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1325, file: !1326, line: 23, baseType: !463, size: 64, offset: 448)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1325, file: !1326, line: 24, baseType: !463, size: 64, offset: 512)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1325, file: !1326, line: 25, baseType: !463, size: 64, offset: 576)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1325, file: !1326, line: 26, baseType: !463, size: 64, offset: 640)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1325, file: !1326, line: 27, baseType: !463, size: 64, offset: 704)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1325, file: !1326, line: 28, baseType: !463, size: 64, offset: 768)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1325, file: !1326, line: 29, baseType: !463, size: 64, offset: 832)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1305, file: !1304, line: 44, baseType: !892, size: 32, offset: 832)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1305, file: !1304, line: 50, baseType: !167, size: 16, offset: 864)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1305, file: !1304, line: 51, baseType: !1345, size: 16, offset: 880)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !152, line: 18, baseType: !1346)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !154, line: 23, baseType: !1347)
!1347 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1120, file: !868, line: 495, baseType: !146, size: 64, offset: 6528)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1120, file: !868, line: 497, baseType: !1350, size: 64, offset: 6592)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !868, line: 381, size: 384, elements: !1352)
!1352 = !{!1353, !1354, !2437}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1351, file: !868, line: 382, baseType: !892, size: 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1351, file: !868, line: 383, baseType: !1355, size: 128, offset: 64)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !868, line: 376, size: 128, elements: !1356)
!1356 = !{!1357, !2435}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1355, file: !868, line: 377, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1360, line: 640, size: 48640, elements: !1361)
!1360 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1361 = !{!1362, !1368, !1370, !1371, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1388, !1406, !1417, !1498, !1499, !1500, !1504, !1505, !1507, !1508, !1509, !1510, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1589, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1627, !1629, !1630, !1631, !1643, !1644, !1645, !1646, !1647, !1648, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1672, !1677, !1861, !1862, !1863, !1864, !1866, !1869, !1872, !1875, !1878, !1881, !1982, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2028, !2029, !2030, !2031, !2032, !2037, !2038, !2039, !2042, !2043, !2046, !2049, !2052, !2055, !2098, !2101, !2102, !2181, !2182, !2185, !2186, !2189, !2190, !2191, !2195, !2196, !2197, !2210, !2211, !2212, !2222, !2227, !2230, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1359, file: !1360, line: 646, baseType: !1363, size: 128)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1364, line: 56, size: 128, elements: !1365)
!1364 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1363, file: !1364, line: 57, baseType: !146, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1363, file: !1364, line: 58, baseType: !156, size: 32, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1359, file: !1360, line: 649, baseType: !1369, size: 64, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !463)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1359, file: !1360, line: 657, baseType: !149, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1359, file: !1360, line: 658, baseType: !1372, size: 32, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1373, line: 113, baseType: !1374)
!1373 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1373, line: 111, size: 32, elements: !1375)
!1375 = !{!1376}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1374, file: !1373, line: 112, baseType: !892, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1359, file: !1360, line: 660, baseType: !7, size: 32, offset: 288)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1359, file: !1360, line: 661, baseType: !7, size: 32, offset: 320)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1359, file: !1360, line: 684, baseType: !144, size: 32, offset: 352)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1359, file: !1360, line: 686, baseType: !144, size: 32, offset: 384)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1359, file: !1360, line: 687, baseType: !144, size: 32, offset: 416)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1359, file: !1360, line: 688, baseType: !144, size: 32, offset: 448)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1359, file: !1360, line: 689, baseType: !7, size: 32, offset: 480)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1359, file: !1360, line: 691, baseType: !1385, size: 64, offset: 512)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1387)
!1387 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1360, line: 691, flags: DIFlagFwdDecl)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1359, file: !1360, line: 692, baseType: !1389, size: 832, offset: 576)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1360, line: 451, size: 832, elements: !1390)
!1390 = !{!1391, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1389, file: !1360, line: 453, baseType: !1392, size: 128)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1360, line: 325, size: 128, elements: !1393)
!1393 = !{!1394, !1395}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1392, file: !1360, line: 326, baseType: !146, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1392, file: !1360, line: 327, baseType: !156, size: 32, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1389, file: !1360, line: 454, baseType: !905, size: 192, align: 64, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1389, file: !1360, line: 455, baseType: !374, size: 128, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1389, file: !1360, line: 456, baseType: !7, size: 32, offset: 448)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1389, file: !1360, line: 458, baseType: !151, size: 64, offset: 512)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1389, file: !1360, line: 459, baseType: !151, size: 64, offset: 576)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1389, file: !1360, line: 460, baseType: !151, size: 64, offset: 640)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1389, file: !1360, line: 461, baseType: !151, size: 64, offset: 704)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1389, file: !1360, line: 463, baseType: !151, size: 64, offset: 768)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1389, file: !1360, line: 465, baseType: !1405, offset: 832)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1360, line: 415, elements: !401)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1359, file: !1360, line: 693, baseType: !1407, size: 384, offset: 1408)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1360, line: 489, size: 384, elements: !1408)
!1408 = !{!1409, !1410, !1411, !1412, !1413, !1414, !1415}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1407, file: !1360, line: 490, baseType: !374, size: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1407, file: !1360, line: 491, baseType: !146, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1407, file: !1360, line: 492, baseType: !146, size: 64, offset: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1407, file: !1360, line: 493, baseType: !7, size: 32, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1407, file: !1360, line: 494, baseType: !169, size: 16, offset: 288)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1407, file: !1360, line: 495, baseType: !169, size: 16, offset: 304)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1407, file: !1360, line: 497, baseType: !1416, size: 64, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1359, file: !1360, line: 697, baseType: !1418, size: 1792, offset: 1792)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1360, line: 507, size: 1792, elements: !1419)
!1419 = !{!1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1495, !1496}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1418, file: !1360, line: 508, baseType: !905, size: 192, align: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1418, file: !1360, line: 515, baseType: !151, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1418, file: !1360, line: 516, baseType: !151, size: 64, offset: 256)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1418, file: !1360, line: 517, baseType: !151, size: 64, offset: 320)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1418, file: !1360, line: 518, baseType: !151, size: 64, offset: 384)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1418, file: !1360, line: 519, baseType: !151, size: 64, offset: 448)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1418, file: !1360, line: 526, baseType: !922, size: 64, offset: 512)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1418, file: !1360, line: 527, baseType: !151, size: 64, offset: 576)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1418, file: !1360, line: 528, baseType: !7, size: 32, offset: 640)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1418, file: !1360, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1418, file: !1360, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1418, file: !1360, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1418, file: !1360, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1418, file: !1360, line: 563, baseType: !1434, size: 512, offset: 704)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !32, line: 118, size: 512, elements: !1435)
!1435 = !{!1436, !1444, !1445, !1450, !1491, !1492, !1493, !1494}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1434, file: !32, line: 119, baseType: !1437, size: 256)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1438, line: 9, size: 256, elements: !1439)
!1438 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1439 = !{!1440, !1441}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1437, file: !1438, line: 10, baseType: !905, size: 192, align: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1437, file: !1438, line: 11, baseType: !1442, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1443, line: 29, baseType: !922)
!1443 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1434, file: !32, line: 120, baseType: !1442, size: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1434, file: !32, line: 121, baseType: !1446, size: 64, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!31, !1449}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1434, file: !32, line: 122, baseType: !1451, size: 64, offset: 384)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !32, line: 159, size: 512, align: 512, elements: !1453)
!1453 = !{!1454, !1472, !1473, !1476, !1481, !1482, !1486, !1490}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1452, file: !32, line: 160, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !32, line: 214, size: 4608, align: 512, elements: !1457)
!1457 = !{!1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1456, file: !32, line: 215, baseType: !925)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1456, file: !32, line: 216, baseType: !7, size: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1456, file: !32, line: 217, baseType: !7, size: 32, offset: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1456, file: !32, line: 218, baseType: !7, size: 32, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1456, file: !32, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1456, file: !32, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1456, file: !32, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1456, file: !32, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1456, file: !32, line: 233, baseType: !1442, size: 64, offset: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1456, file: !32, line: 234, baseType: !1449, size: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1456, file: !32, line: 235, baseType: !1442, size: 64, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1456, file: !32, line: 236, baseType: !1449, size: 64, offset: 320)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1456, file: !32, line: 237, baseType: !1471, size: 4096, offset: 512)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1452, size: 4096, elements: !230)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1452, file: !32, line: 161, baseType: !7, size: 32, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1452, file: !32, line: 162, baseType: !1474, size: 32, offset: 96)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !178, line: 27, baseType: !1475)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !461, line: 96, baseType: !144)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1452, file: !32, line: 163, baseType: !1477, size: 32, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !540, line: 276, baseType: !1478)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !540, line: 276, size: 32, elements: !1479)
!1479 = !{!1480}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1478, file: !540, line: 276, baseType: !544, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1452, file: !32, line: 164, baseType: !1449, size: 64, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1452, file: !32, line: 165, baseType: !1483, size: 128, offset: 256)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1438, line: 14, size: 128, elements: !1484)
!1484 = !{!1485}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1483, file: !1438, line: 15, baseType: !897, size: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1452, file: !32, line: 166, baseType: !1487, size: 64, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!1442}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1452, file: !32, line: 167, baseType: !1442, size: 64, offset: 448)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1434, file: !32, line: 123, baseType: !163, size: 8, offset: 448)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1434, file: !32, line: 124, baseType: !163, size: 8, offset: 456)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1434, file: !32, line: 125, baseType: !163, size: 8, offset: 464)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1434, file: !32, line: 126, baseType: !163, size: 8, offset: 472)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1418, file: !1360, line: 572, baseType: !1434, size: 512, offset: 1216)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1418, file: !1360, line: 580, baseType: !1497, size: 64, offset: 1728)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1359, file: !1360, line: 721, baseType: !7, size: 32, offset: 3584)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1359, file: !1360, line: 722, baseType: !144, size: 32, offset: 3616)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1359, file: !1360, line: 723, baseType: !1501, size: 64, offset: 3648)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1503)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !285, line: 17, baseType: !287)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1359, file: !1360, line: 724, baseType: !1503, size: 64, offset: 3712)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1359, file: !1360, line: 749, baseType: !1506, offset: 3776)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1360, line: 290, elements: !401)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1359, file: !1360, line: 751, baseType: !374, size: 128, offset: 3776)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1359, file: !1360, line: 757, baseType: !1116, size: 64, offset: 3904)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1359, file: !1360, line: 758, baseType: !1116, size: 64, offset: 3968)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1359, file: !1360, line: 761, baseType: !1511, size: 320, offset: 4032)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1293, line: 34, size: 320, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1511, file: !1293, line: 35, baseType: !151, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1511, file: !1293, line: 36, baseType: !1515, size: 256, offset: 64)
!1515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1123, size: 256, elements: !1297)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1359, file: !1360, line: 766, baseType: !144, size: 32, offset: 4352)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1359, file: !1360, line: 767, baseType: !144, size: 32, offset: 4384)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1359, file: !1360, line: 768, baseType: !144, size: 32, offset: 4416)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1359, file: !1360, line: 770, baseType: !144, size: 32, offset: 4448)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1359, file: !1360, line: 772, baseType: !146, size: 64, offset: 4480)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1359, file: !1360, line: 775, baseType: !7, size: 32, offset: 4544)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1359, file: !1360, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1359, file: !1360, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1359, file: !1360, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1359, file: !1360, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1359, file: !1360, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1359, file: !1360, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1359, file: !1360, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1359, file: !1360, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1359, file: !1360, line: 831, baseType: !146, size: 64, offset: 4672)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1359, file: !1360, line: 833, baseType: !1532, size: 384, offset: 4736)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !37, line: 25, size: 384, elements: !1533)
!1533 = !{!1534, !1539}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1532, file: !37, line: 26, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!463, !1538}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, scope: !1532, file: !37, line: 27, baseType: !1540, size: 320, offset: 64)
!1540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1532, file: !37, line: 27, size: 320, elements: !1541)
!1541 = !{!1542, !1552, !1579}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1540, file: !37, line: 36, baseType: !1543, size: 320)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1540, file: !37, line: 29, size: 320, elements: !1544)
!1544 = !{!1545, !1547, !1548, !1549, !1550, !1551}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1543, file: !37, line: 30, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1543, file: !37, line: 31, baseType: !156, size: 32, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1543, file: !37, line: 32, baseType: !156, size: 32, offset: 96)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1543, file: !37, line: 33, baseType: !156, size: 32, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1543, file: !37, line: 34, baseType: !151, size: 64, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1543, file: !37, line: 35, baseType: !1546, size: 64, offset: 256)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1540, file: !37, line: 46, baseType: !1553, size: 192)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1540, file: !37, line: 38, size: 192, elements: !1554)
!1554 = !{!1555, !1556, !1557, !1578}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1553, file: !37, line: 39, baseType: !1474, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1553, file: !37, line: 40, baseType: !36, size: 32, offset: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, scope: !1553, file: !37, line: 41, baseType: !1558, size: 64, offset: 64)
!1558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1553, file: !37, line: 41, size: 64, elements: !1559)
!1559 = !{!1560, !1568}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1558, file: !37, line: 42, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1563, line: 7, size: 128, elements: !1564)
!1563 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1564 = !{!1565, !1567}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1562, file: !1563, line: 8, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !461, line: 93, baseType: !675)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1562, file: !1563, line: 9, baseType: !675, size: 64, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1558, file: !37, line: 43, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1571, line: 7, size: 64, elements: !1572)
!1571 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1572 = !{!1573, !1577}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1570, file: !1571, line: 8, baseType: !1574, size: 32)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1571, line: 5, baseType: !1575)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !152, line: 20, baseType: !1576)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !154, line: 26, baseType: !144)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1570, file: !1571, line: 9, baseType: !1575, size: 32, offset: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1553, file: !37, line: 45, baseType: !151, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1540, file: !37, line: 54, baseType: !1580, size: 256)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1540, file: !37, line: 48, size: 256, elements: !1581)
!1581 = !{!1582, !1585, !1586, !1587, !1588}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1580, file: !37, line: 49, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !37, line: 14, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1580, file: !37, line: 50, baseType: !144, size: 32, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1580, file: !37, line: 51, baseType: !144, size: 32, offset: 96)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1580, file: !37, line: 52, baseType: !146, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1580, file: !37, line: 53, baseType: !146, size: 64, offset: 192)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1359, file: !1360, line: 835, baseType: !1590, size: 32, offset: 5120)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !178, line: 22, baseType: !1591)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !461, line: 28, baseType: !144)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1359, file: !1360, line: 836, baseType: !1590, size: 32, offset: 5152)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1359, file: !1360, line: 840, baseType: !146, size: 64, offset: 5184)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1359, file: !1360, line: 849, baseType: !1358, size: 64, offset: 5248)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1359, file: !1360, line: 852, baseType: !1358, size: 64, offset: 5312)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1359, file: !1360, line: 857, baseType: !374, size: 128, offset: 5376)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1359, file: !1360, line: 858, baseType: !374, size: 128, offset: 5504)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1359, file: !1360, line: 859, baseType: !1358, size: 64, offset: 5632)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1359, file: !1360, line: 867, baseType: !374, size: 128, offset: 5696)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1359, file: !1360, line: 868, baseType: !374, size: 128, offset: 5824)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1359, file: !1360, line: 871, baseType: !1602, size: 64, offset: 5952)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !65, line: 59, size: 768, elements: !1604)
!1604 = !{!1605, !1606, !1607, !1608, !1610, !1611, !1618, !1619}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1603, file: !65, line: 61, baseType: !1372, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1603, file: !65, line: 62, baseType: !7, size: 32, offset: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1603, file: !65, line: 63, baseType: !387, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1603, file: !65, line: 65, baseType: !1609, size: 256, offset: 64)
!1609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !780, size: 256, elements: !1297)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1603, file: !65, line: 66, baseType: !780, size: 64, offset: 320)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1603, file: !65, line: 68, baseType: !1612, size: 128, offset: 384)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1613, line: 40, baseType: !1614)
!1613 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1613, line: 36, size: 128, elements: !1615)
!1615 = !{!1616, !1617}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1614, file: !1613, line: 37, baseType: !387)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1614, file: !1613, line: 38, baseType: !374, size: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1603, file: !65, line: 69, baseType: !517, size: 128, align: 64, offset: 512)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1603, file: !65, line: 70, baseType: !1620, size: 128, offset: 640)
!1620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1621, size: 128, elements: !291)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !65, line: 54, size: 128, elements: !1622)
!1622 = !{!1623, !1624}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1621, file: !65, line: 55, baseType: !144, size: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1621, file: !65, line: 56, baseType: !1625, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !65, line: 56, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1359, file: !1360, line: 872, baseType: !1628, size: 512, offset: 6016)
!1628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !784, size: 512, elements: !1297)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1359, file: !1360, line: 873, baseType: !374, size: 128, offset: 6528)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1359, file: !1360, line: 874, baseType: !374, size: 128, offset: 6656)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1359, file: !1360, line: 876, baseType: !1632, size: 64, offset: 6784)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1634, line: 26, size: 192, elements: !1635)
!1634 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1635 = !{!1636, !1637}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1633, file: !1634, line: 27, baseType: !7, size: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1633, file: !1634, line: 28, baseType: !1638, size: 128, offset: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1639, line: 43, size: 128, elements: !1640)
!1639 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1640 = !{!1641, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1638, file: !1639, line: 44, baseType: !925)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1638, file: !1639, line: 45, baseType: !374, size: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1359, file: !1360, line: 879, baseType: !850, size: 64, offset: 6848)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1359, file: !1360, line: 882, baseType: !850, size: 64, offset: 6912)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1359, file: !1360, line: 884, baseType: !151, size: 64, offset: 6976)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1359, file: !1360, line: 885, baseType: !151, size: 64, offset: 7040)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1359, file: !1360, line: 890, baseType: !151, size: 64, offset: 7104)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1359, file: !1360, line: 891, baseType: !1649, size: 128, offset: 7168)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1360, line: 242, size: 128, elements: !1650)
!1650 = !{!1651, !1652, !1653}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1649, file: !1360, line: 244, baseType: !151, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1649, file: !1360, line: 245, baseType: !151, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1649, file: !1360, line: 246, baseType: !925, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1359, file: !1360, line: 900, baseType: !146, size: 64, offset: 7296)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1359, file: !1360, line: 901, baseType: !146, size: 64, offset: 7360)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1359, file: !1360, line: 904, baseType: !151, size: 64, offset: 7424)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1359, file: !1360, line: 907, baseType: !151, size: 64, offset: 7488)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1359, file: !1360, line: 910, baseType: !146, size: 64, offset: 7552)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1359, file: !1360, line: 911, baseType: !146, size: 64, offset: 7616)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1359, file: !1360, line: 914, baseType: !1661, size: 640, offset: 7680)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1662, line: 123, size: 640, elements: !1663)
!1662 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1663 = !{!1664, !1670, !1671}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1661, file: !1662, line: 124, baseType: !1665, size: 576)
!1665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1666, size: 576, elements: !429)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1662, line: 108, size: 192, elements: !1667)
!1667 = !{!1668, !1669}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1666, file: !1662, line: 109, baseType: !151, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1666, file: !1662, line: 110, baseType: !1483, size: 128, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1661, file: !1662, line: 125, baseType: !7, size: 32, offset: 576)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1661, file: !1662, line: 126, baseType: !7, size: 32, offset: 608)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1359, file: !1360, line: 917, baseType: !1673, size: 192, offset: 8320)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1662, line: 134, size: 192, elements: !1674)
!1674 = !{!1675, !1676}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1673, file: !1662, line: 135, baseType: !517, size: 128, align: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1673, file: !1662, line: 136, baseType: !7, size: 32, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1359, file: !1360, line: 923, baseType: !1678, size: 64, offset: 8512)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1680)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1681, line: 111, size: 1280, elements: !1682)
!1681 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1682 = !{!1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1702, !1703, !1704, !1705, !1706, !1707, !1814, !1815, !1816, !1817, !1843, !1846, !1856}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1680, file: !1681, line: 112, baseType: !892, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1680, file: !1681, line: 120, baseType: !579, size: 32, offset: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1680, file: !1681, line: 121, baseType: !587, size: 32, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1680, file: !1681, line: 122, baseType: !579, size: 32, offset: 96)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1680, file: !1681, line: 123, baseType: !587, size: 32, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1680, file: !1681, line: 124, baseType: !579, size: 32, offset: 160)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1680, file: !1681, line: 125, baseType: !587, size: 32, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1680, file: !1681, line: 126, baseType: !579, size: 32, offset: 224)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1680, file: !1681, line: 127, baseType: !587, size: 32, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1680, file: !1681, line: 128, baseType: !7, size: 32, offset: 288)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1680, file: !1681, line: 129, baseType: !1694, size: 64, offset: 320)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1695, line: 26, baseType: !1696)
!1695 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1695, line: 24, size: 64, elements: !1697)
!1697 = !{!1698}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1696, file: !1695, line: 25, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 64, elements: !1700)
!1700 = !{!1701}
!1701 = !DISubrange(count: 2)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1680, file: !1681, line: 130, baseType: !1694, size: 64, offset: 384)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1680, file: !1681, line: 131, baseType: !1694, size: 64, offset: 448)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1680, file: !1681, line: 132, baseType: !1694, size: 64, offset: 512)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1680, file: !1681, line: 133, baseType: !1694, size: 64, offset: 576)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1680, file: !1681, line: 135, baseType: !165, size: 8, offset: 640)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1680, file: !1681, line: 137, baseType: !1708, size: 64, offset: 704)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1710, line: 189, size: 1664, elements: !1711)
!1710 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1711 = !{!1712, !1713, !1716, !1721, !1722, !1725, !1726, !1731, !1732, !1733, !1734, !1736, !1737, !1738, !1739, !1740, !1778, !1799}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1709, file: !1710, line: 190, baseType: !1372, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1709, file: !1710, line: 191, baseType: !1714, size: 32, offset: 32)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1710, line: 28, baseType: !1715)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !178, line: 98, baseType: !1575)
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1709, file: !1710, line: 192, baseType: !1717, size: 192, offset: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1709, file: !1710, line: 192, size: 192, elements: !1718)
!1718 = !{!1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1717, file: !1710, line: 193, baseType: !374, size: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1717, file: !1710, line: 194, baseType: !905, size: 192, align: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1709, file: !1710, line: 199, baseType: !912, size: 256, offset: 256)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1709, file: !1710, line: 200, baseType: !1723, size: 64, offset: 512)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1710, line: 200, flags: DIFlagFwdDecl)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1709, file: !1710, line: 201, baseType: !149, size: 64, offset: 576)
!1726 = !DIDerivedType(tag: DW_TAG_member, scope: !1709, file: !1710, line: 202, baseType: !1727, size: 64, offset: 640)
!1727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1709, file: !1710, line: 202, size: 64, elements: !1728)
!1728 = !{!1729, !1730}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1727, file: !1710, line: 203, baseType: !681, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1727, file: !1710, line: 204, baseType: !681, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1709, file: !1710, line: 206, baseType: !681, size: 64, offset: 704)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1709, file: !1710, line: 207, baseType: !579, size: 32, offset: 768)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1709, file: !1710, line: 208, baseType: !587, size: 32, offset: 800)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1709, file: !1710, line: 209, baseType: !1735, size: 32, offset: 832)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1710, line: 31, baseType: !701)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1709, file: !1710, line: 210, baseType: !169, size: 16, offset: 864)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1709, file: !1710, line: 211, baseType: !169, size: 16, offset: 880)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1709, file: !1710, line: 215, baseType: !1347, size: 16, offset: 896)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1709, file: !1710, line: 222, baseType: !146, size: 64, offset: 960)
!1740 = !DIDerivedType(tag: DW_TAG_member, scope: !1709, file: !1710, line: 239, baseType: !1741, size: 320, offset: 1024)
!1741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1709, file: !1710, line: 239, size: 320, elements: !1742)
!1742 = !{!1743, !1770}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1741, file: !1710, line: 240, baseType: !1744, size: 320)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1710, line: 108, size: 320, elements: !1745)
!1745 = !{!1746, !1747, !1759, !1762, !1769}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1744, file: !1710, line: 110, baseType: !146, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !1710, line: 111, baseType: !1748, size: 64, offset: 64)
!1748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1744, file: !1710, line: 111, size: 64, elements: !1749)
!1749 = !{!1750, !1758}
!1750 = !DIDerivedType(tag: DW_TAG_member, scope: !1748, file: !1710, line: 112, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1748, file: !1710, line: 112, size: 64, elements: !1752)
!1752 = !{!1753, !1754}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1751, file: !1710, line: 114, baseType: !167, size: 16)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1751, file: !1710, line: 115, baseType: !1755, size: 48, offset: 16)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 48, elements: !1756)
!1756 = !{!1757}
!1757 = !DISubrange(count: 6)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1748, file: !1710, line: 121, baseType: !146, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1744, file: !1710, line: 123, baseType: !1760, size: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1710, line: 96, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1744, file: !1710, line: 124, baseType: !1763, size: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1710, line: 102, size: 192, elements: !1765)
!1765 = !{!1766, !1767, !1768}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1764, file: !1710, line: 103, baseType: !517, size: 128, align: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1764, file: !1710, line: 104, baseType: !1372, size: 32, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1764, file: !1710, line: 105, baseType: !328, size: 8, offset: 160)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1744, file: !1710, line: 125, baseType: !371, size: 64, offset: 256)
!1770 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !1710, line: 241, baseType: !1771, size: 320)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1741, file: !1710, line: 241, size: 320, elements: !1772)
!1772 = !{!1773, !1774, !1775, !1776, !1777}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1771, file: !1710, line: 242, baseType: !146, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1771, file: !1710, line: 243, baseType: !146, size: 64, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1771, file: !1710, line: 244, baseType: !1760, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1771, file: !1710, line: 245, baseType: !1763, size: 64, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1771, file: !1710, line: 246, baseType: !428, size: 64, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, scope: !1709, file: !1710, line: 254, baseType: !1779, size: 256, offset: 1344)
!1779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1709, file: !1710, line: 254, size: 256, elements: !1780)
!1780 = !{!1781, !1787}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1779, file: !1710, line: 255, baseType: !1782, size: 256)
!1782 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1710, line: 128, size: 256, elements: !1783)
!1783 = !{!1784, !1785}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1782, file: !1710, line: 129, baseType: !149, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1782, file: !1710, line: 130, baseType: !1786, size: 256)
!1786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 256, elements: !1297)
!1787 = !DIDerivedType(tag: DW_TAG_member, scope: !1779, file: !1710, line: 256, baseType: !1788, size: 256)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1779, file: !1710, line: 256, size: 256, elements: !1789)
!1789 = !{!1790, !1791}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1788, file: !1710, line: 258, baseType: !374, size: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1788, file: !1710, line: 259, baseType: !1792, size: 128, offset: 128)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1793, line: 22, size: 128, elements: !1794)
!1793 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1794 = !{!1795, !1798}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1792, file: !1793, line: 23, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1793, line: 23, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1792, file: !1793, line: 24, baseType: !146, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1709, file: !1710, line: 274, baseType: !1800, size: 64, offset: 1600)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1710, line: 170, size: 192, elements: !1802)
!1802 = !{!1803, !1812, !1813}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1801, file: !1710, line: 171, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1710, line: 165, baseType: !1805)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!144, !1708, !1808, !1810, !1708}
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1761)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1782)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1801, file: !1710, line: 172, baseType: !1708, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1801, file: !1710, line: 173, baseType: !1760, size: 64, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1680, file: !1681, line: 138, baseType: !1708, size: 64, offset: 768)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1680, file: !1681, line: 139, baseType: !1708, size: 64, offset: 832)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1680, file: !1681, line: 140, baseType: !1708, size: 64, offset: 896)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1680, file: !1681, line: 145, baseType: !1818, size: 64, offset: 960)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1820, line: 13, size: 896, elements: !1821)
!1820 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1821 = !{!1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1819, file: !1820, line: 14, baseType: !1372, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1819, file: !1820, line: 15, baseType: !892, size: 32, offset: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1819, file: !1820, line: 16, baseType: !892, size: 32, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1819, file: !1820, line: 21, baseType: !916, size: 64, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1819, file: !1820, line: 27, baseType: !146, size: 64, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1819, file: !1820, line: 28, baseType: !146, size: 64, offset: 256)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1819, file: !1820, line: 29, baseType: !916, size: 64, offset: 320)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1819, file: !1820, line: 32, baseType: !784, size: 128, offset: 384)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1819, file: !1820, line: 33, baseType: !579, size: 32, offset: 512)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1819, file: !1820, line: 37, baseType: !916, size: 64, offset: 576)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1819, file: !1820, line: 44, baseType: !1833, size: 256, offset: 640)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1834, line: 15, size: 256, elements: !1835)
!1834 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1835 = !{!1836, !1837, !1838, !1839, !1840, !1841, !1842}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1833, file: !1834, line: 16, baseType: !925)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1833, file: !1834, line: 18, baseType: !144, size: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1833, file: !1834, line: 19, baseType: !144, size: 32, offset: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1833, file: !1834, line: 20, baseType: !144, size: 32, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1833, file: !1834, line: 21, baseType: !144, size: 32, offset: 96)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1833, file: !1834, line: 22, baseType: !146, size: 64, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1833, file: !1834, line: 23, baseType: !146, size: 64, offset: 192)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1680, file: !1681, line: 146, baseType: !1844, size: 64, offset: 1024)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !868, line: 516, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1680, file: !1681, line: 147, baseType: !1847, size: 64, offset: 1088)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1681, line: 25, size: 64, elements: !1849)
!1849 = !{!1850, !1851, !1852}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1848, file: !1681, line: 26, baseType: !892, size: 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1848, file: !1681, line: 27, baseType: !144, size: 32, offset: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1848, file: !1681, line: 28, baseType: !1853, offset: 64)
!1853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, elements: !1854)
!1854 = !{!1855}
!1855 = !DISubrange(count: 0)
!1856 = !DIDerivedType(tag: DW_TAG_member, scope: !1680, file: !1681, line: 149, baseType: !1857, size: 128, offset: 1152)
!1857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1680, file: !1681, line: 149, size: 128, elements: !1858)
!1858 = !{!1859, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1857, file: !1681, line: 150, baseType: !144, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1857, file: !1681, line: 151, baseType: !517, size: 128, align: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1359, file: !1360, line: 926, baseType: !1678, size: 64, offset: 8576)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1359, file: !1360, line: 929, baseType: !1678, size: 64, offset: 8640)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1359, file: !1360, line: 933, baseType: !1708, size: 64, offset: 8704)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1359, file: !1360, line: 943, baseType: !1865, size: 128, offset: 8768)
!1865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 128, elements: !341)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1359, file: !1360, line: 945, baseType: !1867, size: 64, offset: 8896)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1360, line: 49, flags: DIFlagFwdDecl)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1359, file: !1360, line: 956, baseType: !1870, size: 64, offset: 8960)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1360, line: 45, flags: DIFlagFwdDecl)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1359, file: !1360, line: 959, baseType: !1873, size: 64, offset: 9024)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1360, line: 959, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1359, file: !1360, line: 962, baseType: !1876, size: 64, offset: 9088)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1360, line: 66, flags: DIFlagFwdDecl)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1359, file: !1360, line: 966, baseType: !1879, size: 64, offset: 9152)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1360, line: 50, flags: DIFlagFwdDecl)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1359, file: !1360, line: 969, baseType: !1882, size: 64, offset: 9216)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1884, line: 82, size: 7296, elements: !1885)
!1884 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1885 = !{!1886, !1887, !1888, !1889, !1890, !1891, !1892, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1921, !1930, !1931, !1933, !1934, !1935, !1938, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1968, !1969, !1976, !1977, !1978, !1979, !1980, !1981}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1883, file: !1884, line: 83, baseType: !1372, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1883, file: !1884, line: 84, baseType: !892, size: 32, offset: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1883, file: !1884, line: 85, baseType: !144, size: 32, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1883, file: !1884, line: 86, baseType: !374, size: 128, offset: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1883, file: !1884, line: 88, baseType: !1612, size: 128, offset: 256)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1883, file: !1884, line: 91, baseType: !1358, size: 64, offset: 384)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1883, file: !1884, line: 94, baseType: !1893, size: 192, offset: 448)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1894, line: 30, size: 192, elements: !1895)
!1894 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1895 = !{!1896, !1897}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1893, file: !1894, line: 31, baseType: !374, size: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1893, file: !1894, line: 32, baseType: !1898, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1899, line: 25, baseType: !1900)
!1899 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1899, line: 23, size: 64, elements: !1901)
!1901 = !{!1902}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1900, file: !1899, line: 24, baseType: !290, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1883, file: !1884, line: 97, baseType: !780, size: 64, offset: 640)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1883, file: !1884, line: 100, baseType: !144, size: 32, offset: 704)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1883, file: !1884, line: 106, baseType: !144, size: 32, offset: 736)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1883, file: !1884, line: 107, baseType: !1358, size: 64, offset: 768)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1883, file: !1884, line: 110, baseType: !144, size: 32, offset: 832)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1883, file: !1884, line: 111, baseType: !7, size: 32, offset: 864)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1883, file: !1884, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1883, file: !1884, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1883, file: !1884, line: 128, baseType: !144, size: 32, offset: 928)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1883, file: !1884, line: 129, baseType: !374, size: 128, offset: 960)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1883, file: !1884, line: 132, baseType: !1434, size: 512, offset: 1088)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1883, file: !1884, line: 133, baseType: !1442, size: 64, offset: 1600)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1883, file: !1884, line: 140, baseType: !1916, size: 256, offset: 1664)
!1916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1917, size: 256, elements: !1700)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1884, line: 38, size: 128, elements: !1918)
!1918 = !{!1919, !1920}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1917, file: !1884, line: 39, baseType: !151, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1917, file: !1884, line: 40, baseType: !151, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1883, file: !1884, line: 146, baseType: !1922, size: 192, offset: 1920)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1884, line: 66, size: 192, elements: !1923)
!1923 = !{!1924}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1922, file: !1884, line: 67, baseType: !1925, size: 192)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1884, line: 47, size: 192, elements: !1926)
!1926 = !{!1927, !1928, !1929}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1925, file: !1884, line: 48, baseType: !918, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1925, file: !1884, line: 49, baseType: !918, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1925, file: !1884, line: 50, baseType: !918, size: 64, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1883, file: !1884, line: 150, baseType: !1661, size: 640, offset: 2112)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1883, file: !1884, line: 153, baseType: !1932, size: 256, offset: 2752)
!1932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1602, size: 256, elements: !1297)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1883, file: !1884, line: 159, baseType: !1602, size: 64, offset: 3008)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1883, file: !1884, line: 162, baseType: !144, size: 32, offset: 3072)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1883, file: !1884, line: 164, baseType: !1936, size: 64, offset: 3136)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1884, line: 164, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1883, file: !1884, line: 175, baseType: !1939, size: 32, offset: 3200)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !540, line: 805, baseType: !1940)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !540, line: 798, size: 32, elements: !1941)
!1941 = !{!1942, !1943}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1940, file: !540, line: 803, baseType: !539, size: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1940, file: !540, line: 804, baseType: !387, offset: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1883, file: !1884, line: 176, baseType: !151, size: 64, offset: 3264)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1883, file: !1884, line: 176, baseType: !151, size: 64, offset: 3328)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1883, file: !1884, line: 176, baseType: !151, size: 64, offset: 3392)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1883, file: !1884, line: 176, baseType: !151, size: 64, offset: 3456)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1883, file: !1884, line: 177, baseType: !151, size: 64, offset: 3520)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1883, file: !1884, line: 178, baseType: !151, size: 64, offset: 3584)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1883, file: !1884, line: 179, baseType: !1649, size: 128, offset: 3648)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1883, file: !1884, line: 180, baseType: !146, size: 64, offset: 3776)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1883, file: !1884, line: 180, baseType: !146, size: 64, offset: 3840)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1883, file: !1884, line: 180, baseType: !146, size: 64, offset: 3904)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1883, file: !1884, line: 180, baseType: !146, size: 64, offset: 3968)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1883, file: !1884, line: 181, baseType: !146, size: 64, offset: 4032)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1883, file: !1884, line: 181, baseType: !146, size: 64, offset: 4096)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1883, file: !1884, line: 181, baseType: !146, size: 64, offset: 4160)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1883, file: !1884, line: 181, baseType: !146, size: 64, offset: 4224)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1883, file: !1884, line: 182, baseType: !146, size: 64, offset: 4288)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1883, file: !1884, line: 182, baseType: !146, size: 64, offset: 4352)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1883, file: !1884, line: 182, baseType: !146, size: 64, offset: 4416)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1883, file: !1884, line: 182, baseType: !146, size: 64, offset: 4480)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1883, file: !1884, line: 183, baseType: !146, size: 64, offset: 4544)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1883, file: !1884, line: 183, baseType: !146, size: 64, offset: 4608)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1883, file: !1884, line: 184, baseType: !1966, offset: 4672)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1967, line: 12, elements: !401)
!1967 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1883, file: !1884, line: 192, baseType: !155, size: 64, offset: 4672)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1883, file: !1884, line: 203, baseType: !1970, size: 2048, offset: 4736)
!1970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1971, size: 2048, elements: !341)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1972, line: 43, size: 128, elements: !1973)
!1972 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1973 = !{!1974, !1975}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1971, file: !1972, line: 44, baseType: !476, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1971, file: !1972, line: 45, baseType: !476, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1883, file: !1884, line: 220, baseType: !328, size: 8, offset: 6784)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1883, file: !1884, line: 221, baseType: !1347, size: 16, offset: 6800)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1883, file: !1884, line: 222, baseType: !1347, size: 16, offset: 6816)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1883, file: !1884, line: 224, baseType: !1116, size: 64, offset: 6848)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1883, file: !1884, line: 227, baseType: !1315, size: 192, offset: 6912)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1883, file: !1884, line: 233, baseType: !1315, size: 192, offset: 7104)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1359, file: !1360, line: 970, baseType: !1983, size: 64, offset: 9280)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1884, line: 20, size: 16576, elements: !1985)
!1985 = !{!1986, !1987, !1988, !1989}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1984, file: !1884, line: 21, baseType: !387)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1984, file: !1884, line: 22, baseType: !1372, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1984, file: !1884, line: 23, baseType: !1612, size: 128, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1984, file: !1884, line: 24, baseType: !1990, size: 16384, offset: 192)
!1990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1991, size: 16384, elements: !433)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1894, line: 49, size: 256, elements: !1992)
!1992 = !{!1993}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1991, file: !1894, line: 50, baseType: !1994, size: 256)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1894, line: 35, size: 256, elements: !1995)
!1995 = !{!1996, !2003, !2004, !2010}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1994, file: !1894, line: 37, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1998, line: 19, baseType: !1999)
!1998 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1998, line: 18, baseType: !2001)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{null, !144}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1994, file: !1894, line: 38, baseType: !146, size: 64, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1994, file: !1894, line: 44, baseType: !2005, size: 64, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1998, line: 22, baseType: !2006)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1998, line: 21, baseType: !2008)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{null}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1994, file: !1894, line: 46, baseType: !1898, size: 64, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1359, file: !1360, line: 971, baseType: !1898, size: 64, offset: 9344)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1359, file: !1360, line: 972, baseType: !1898, size: 64, offset: 9408)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1359, file: !1360, line: 974, baseType: !1898, size: 64, offset: 9472)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1359, file: !1360, line: 975, baseType: !1893, size: 192, offset: 9536)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1359, file: !1360, line: 976, baseType: !146, size: 64, offset: 9728)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1359, file: !1360, line: 977, baseType: !474, size: 64, offset: 9792)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1359, file: !1360, line: 978, baseType: !7, size: 32, offset: 9856)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1359, file: !1360, line: 980, baseType: !520, size: 64, offset: 9920)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1359, file: !1360, line: 989, baseType: !2020, size: 128, offset: 9984)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2021, line: 35, size: 128, elements: !2022)
!2021 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2022 = !{!2023, !2024, !2025}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2020, file: !2021, line: 36, baseType: !144, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2020, file: !2021, line: 37, baseType: !892, size: 32, offset: 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2020, file: !2021, line: 38, baseType: !2026, size: 64, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2021, line: 23, flags: DIFlagFwdDecl)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1359, file: !1360, line: 992, baseType: !151, size: 64, offset: 10112)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1359, file: !1360, line: 993, baseType: !151, size: 64, offset: 10176)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1359, file: !1360, line: 996, baseType: !387, offset: 10240)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1359, file: !1360, line: 999, baseType: !925, offset: 10240)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1359, file: !1360, line: 1001, baseType: !2033, size: 64, offset: 10240)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1360, line: 636, size: 64, elements: !2034)
!2034 = !{!2035}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2033, file: !1360, line: 637, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1359, file: !1360, line: 1005, baseType: !897, size: 128, offset: 10304)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1359, file: !1360, line: 1007, baseType: !1358, size: 64, offset: 10432)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1359, file: !1360, line: 1009, baseType: !2040, size: 64, offset: 10496)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1360, line: 1009, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1359, file: !1360, line: 1043, baseType: !149, size: 64, offset: 10560)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1359, file: !1360, line: 1046, baseType: !2044, size: 64, offset: 10624)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1360, line: 41, flags: DIFlagFwdDecl)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1359, file: !1360, line: 1050, baseType: !2047, size: 64, offset: 10688)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1360, line: 42, flags: DIFlagFwdDecl)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1359, file: !1360, line: 1054, baseType: !2050, size: 64, offset: 10752)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1360, line: 55, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1359, file: !1360, line: 1056, baseType: !2053, size: 64, offset: 10816)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1360, line: 40, flags: DIFlagFwdDecl)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1359, file: !1360, line: 1058, baseType: !2056, size: 64, offset: 10880)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2058, line: 99, size: 704, elements: !2059)
!2058 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2059 = !{!2060, !2061, !2062, !2063, !2064, !2065, !2066, !2085, !2086}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2057, file: !2058, line: 100, baseType: !916, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2057, file: !2058, line: 101, baseType: !892, size: 32, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2057, file: !2058, line: 102, baseType: !892, size: 32, offset: 96)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2057, file: !2058, line: 105, baseType: !387, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2057, file: !2058, line: 107, baseType: !169, size: 16, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2057, file: !2058, line: 109, baseType: !884, size: 128, offset: 192)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2057, file: !2058, line: 110, baseType: !2067, size: 64, offset: 320)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2058, line: 73, size: 448, elements: !2069)
!2069 = !{!2070, !2073, !2074, !2079, !2084}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2068, file: !2058, line: 74, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2058, line: 74, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2068, file: !2058, line: 75, baseType: !2056, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, scope: !2068, file: !2058, line: 83, baseType: !2075, size: 128, offset: 128)
!2075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2068, file: !2058, line: 83, size: 128, elements: !2076)
!2076 = !{!2077, !2078}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2075, file: !2058, line: 84, baseType: !374, size: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2075, file: !2058, line: 85, baseType: !1077, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, scope: !2068, file: !2058, line: 87, baseType: !2080, size: 128, offset: 256)
!2080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2068, file: !2058, line: 87, size: 128, elements: !2081)
!2081 = !{!2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2080, file: !2058, line: 88, baseType: !784, size: 128)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2080, file: !2058, line: 89, baseType: !517, size: 128, align: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2068, file: !2058, line: 92, baseType: !7, size: 32, offset: 384)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2057, file: !2058, line: 111, baseType: !780, size: 64, offset: 384)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2057, file: !2058, line: 113, baseType: !2087, size: 256, offset: 448)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2088, line: 102, size: 256, elements: !2089)
!2088 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2089 = !{!2090, !2091, !2092}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2087, file: !2088, line: 103, baseType: !916, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2087, file: !2088, line: 104, baseType: !374, size: 128, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2087, file: !2088, line: 105, baseType: !2093, size: 64, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2088, line: 21, baseType: !2094)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{null, !2097}
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1359, file: !1360, line: 1061, baseType: !2099, size: 64, offset: 10944)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1360, line: 43, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1359, file: !1360, line: 1064, baseType: !146, size: 64, offset: 11008)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1359, file: !1360, line: 1065, baseType: !2103, size: 64, offset: 11072)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1894, line: 14, baseType: !2105)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1894, line: 12, size: 384, elements: !2106)
!2106 = !{!2107}
!2107 = !DIDerivedType(tag: DW_TAG_member, scope: !2105, file: !1894, line: 13, baseType: !2108, size: 384)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2105, file: !1894, line: 13, size: 384, elements: !2109)
!2109 = !{!2110, !2111, !2112, !2113}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2108, file: !1894, line: 13, baseType: !144, size: 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2108, file: !1894, line: 13, baseType: !144, size: 32, offset: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2108, file: !1894, line: 13, baseType: !144, size: 32, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2108, file: !1894, line: 13, baseType: !2114, size: 256, offset: 128)
!2114 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2115, line: 32, size: 256, elements: !2116)
!2115 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2116 = !{!2117, !2122, !2135, !2141, !2150, !2170, !2175}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2114, file: !2115, line: 37, baseType: !2118, size: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2114, file: !2115, line: 34, size: 64, elements: !2119)
!2119 = !{!2120, !2121}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2118, file: !2115, line: 35, baseType: !1591, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2118, file: !2115, line: 36, baseType: !585, size: 32, offset: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2114, file: !2115, line: 45, baseType: !2123, size: 192)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2114, file: !2115, line: 40, size: 192, elements: !2124)
!2124 = !{!2125, !2127, !2128, !2134}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2123, file: !2115, line: 41, baseType: !2126, size: 32)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !461, line: 95, baseType: !144)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2123, file: !2115, line: 42, baseType: !144, size: 32, offset: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2123, file: !2115, line: 43, baseType: !2129, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2115, line: 11, baseType: !2130)
!2130 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2115, line: 8, size: 64, elements: !2131)
!2131 = !{!2132, !2133}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2130, file: !2115, line: 9, baseType: !144, size: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2130, file: !2115, line: 10, baseType: !149, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2123, file: !2115, line: 44, baseType: !144, size: 32, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2114, file: !2115, line: 52, baseType: !2136, size: 128)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2114, file: !2115, line: 48, size: 128, elements: !2137)
!2137 = !{!2138, !2139, !2140}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2136, file: !2115, line: 49, baseType: !1591, size: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2136, file: !2115, line: 50, baseType: !585, size: 32, offset: 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2136, file: !2115, line: 51, baseType: !2129, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2114, file: !2115, line: 61, baseType: !2142, size: 256)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2114, file: !2115, line: 55, size: 256, elements: !2143)
!2143 = !{!2144, !2145, !2146, !2147, !2149}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2142, file: !2115, line: 56, baseType: !1591, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2142, file: !2115, line: 57, baseType: !585, size: 32, offset: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2142, file: !2115, line: 58, baseType: !144, size: 32, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2142, file: !2115, line: 59, baseType: !2148, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !461, line: 94, baseType: !462)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2142, file: !2115, line: 60, baseType: !2148, size: 64, offset: 192)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2114, file: !2115, line: 95, baseType: !2151, size: 256)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2114, file: !2115, line: 64, size: 256, elements: !2152)
!2152 = !{!2153, !2154}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2151, file: !2115, line: 65, baseType: !149, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, scope: !2151, file: !2115, line: 77, baseType: !2155, size: 192, offset: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2151, file: !2115, line: 77, size: 192, elements: !2156)
!2156 = !{!2157, !2158, !2165}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2155, file: !2115, line: 82, baseType: !1347, size: 16)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2155, file: !2115, line: 88, baseType: !2159, size: 192)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2155, file: !2115, line: 84, size: 192, elements: !2160)
!2160 = !{!2161, !2163, !2164}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2159, file: !2115, line: 85, baseType: !2162, size: 64)
!2162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 64, elements: !230)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2159, file: !2115, line: 86, baseType: !149, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2159, file: !2115, line: 87, baseType: !149, size: 64, offset: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2155, file: !2115, line: 93, baseType: !2166, size: 96)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2155, file: !2115, line: 90, size: 96, elements: !2167)
!2167 = !{!2168, !2169}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2166, file: !2115, line: 91, baseType: !2162, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2166, file: !2115, line: 92, baseType: !157, size: 32, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2114, file: !2115, line: 101, baseType: !2171, size: 128)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2114, file: !2115, line: 98, size: 128, elements: !2172)
!2172 = !{!2173, !2174}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2171, file: !2115, line: 99, baseType: !463, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2171, file: !2115, line: 100, baseType: !144, size: 32, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2114, file: !2115, line: 108, baseType: !2176, size: 128)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2114, file: !2115, line: 104, size: 128, elements: !2177)
!2177 = !{!2178, !2179, !2180}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2176, file: !2115, line: 105, baseType: !149, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2176, file: !2115, line: 106, baseType: !144, size: 32, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2176, file: !2115, line: 107, baseType: !7, size: 32, offset: 96)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1359, file: !1360, line: 1067, baseType: !1966, offset: 11136)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1359, file: !1360, line: 1099, baseType: !2183, size: 64, offset: 11136)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1360, line: 56, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1359, file: !1360, line: 1103, baseType: !374, size: 128, offset: 11200)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1359, file: !1360, line: 1104, baseType: !2187, size: 64, offset: 11328)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1360, line: 46, flags: DIFlagFwdDecl)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1359, file: !1360, line: 1105, baseType: !1315, size: 192, offset: 11392)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1359, file: !1360, line: 1106, baseType: !7, size: 32, offset: 11584)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1359, file: !1360, line: 1109, baseType: !2192, size: 128, offset: 11648)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2193, size: 128, elements: !1700)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1360, line: 51, flags: DIFlagFwdDecl)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1359, file: !1360, line: 1110, baseType: !1315, size: 192, offset: 11776)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1359, file: !1360, line: 1111, baseType: !374, size: 128, offset: 11968)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1359, file: !1360, line: 1173, baseType: !2198, size: 64, offset: 12096)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2200, line: 62, size: 256, align: 256, elements: !2201)
!2200 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2201 = !{!2202, !2203, !2204, !2209}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2199, file: !2200, line: 75, baseType: !157, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2199, file: !2200, line: 90, baseType: !157, size: 32, offset: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2199, file: !2200, line: 124, baseType: !2205, size: 64, offset: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2199, file: !2200, line: 109, size: 64, elements: !2206)
!2206 = !{!2207, !2208}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2205, file: !2200, line: 110, baseType: !153, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2205, file: !2200, line: 112, baseType: !153, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2199, file: !2200, line: 144, baseType: !157, size: 32, offset: 128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1359, file: !1360, line: 1174, baseType: !156, size: 32, offset: 12160)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1359, file: !1360, line: 1179, baseType: !146, size: 64, offset: 12224)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1359, file: !1360, line: 1182, baseType: !2213, size: 128, offset: 12288)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1293, line: 76, size: 128, elements: !2214)
!2214 = !{!2215, !2220, !2221}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2213, file: !1293, line: 85, baseType: !2216, size: 64)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2217, line: 7, size: 64, elements: !2218)
!2217 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2218 = !{!2219}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2216, file: !2217, line: 12, baseType: !287, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2213, file: !1293, line: 88, baseType: !328, size: 8, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2213, file: !1293, line: 95, baseType: !328, size: 8, offset: 72)
!2222 = !DIDerivedType(tag: DW_TAG_member, scope: !1359, file: !1360, line: 1184, baseType: !2223, size: 128, offset: 12416)
!2223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1359, file: !1360, line: 1184, size: 128, elements: !2224)
!2224 = !{!2225, !2226}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2223, file: !1360, line: 1185, baseType: !1372, size: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2223, file: !1360, line: 1186, baseType: !517, size: 128, align: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1359, file: !1360, line: 1190, baseType: !2228, size: 64, offset: 12544)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1360, line: 53, flags: DIFlagFwdDecl)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1359, file: !1360, line: 1192, baseType: !2231, size: 128, offset: 12608)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1293, line: 64, size: 128, elements: !2232)
!2232 = !{!2233, !2234, !2235}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2231, file: !1293, line: 65, baseType: !866, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2231, file: !1293, line: 67, baseType: !157, size: 32, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2231, file: !1293, line: 68, baseType: !157, size: 32, offset: 96)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1359, file: !1360, line: 1206, baseType: !144, size: 32, offset: 12736)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1359, file: !1360, line: 1207, baseType: !144, size: 32, offset: 12768)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1359, file: !1360, line: 1209, baseType: !146, size: 64, offset: 12800)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1359, file: !1360, line: 1219, baseType: !151, size: 64, offset: 12864)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1359, file: !1360, line: 1220, baseType: !151, size: 64, offset: 12928)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1359, file: !1360, line: 1317, baseType: !144, size: 32, offset: 12992)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1359, file: !1360, line: 1319, baseType: !1358, size: 64, offset: 13056)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1359, file: !1360, line: 1322, baseType: !2244, size: 64, offset: 13120)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2246, line: 56, size: 512, elements: !2247)
!2246 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2247 = !{!2248, !2249, !2250, !2251, !2252, !2253, !2254, !2256}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2245, file: !2246, line: 57, baseType: !2244, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2245, file: !2246, line: 58, baseType: !149, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2245, file: !2246, line: 59, baseType: !146, size: 64, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2245, file: !2246, line: 60, baseType: !146, size: 64, offset: 192)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2245, file: !2246, line: 61, baseType: !965, size: 64, offset: 256)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2245, file: !2246, line: 62, baseType: !7, size: 32, offset: 320)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2245, file: !2246, line: 63, baseType: !2255, size: 64, offset: 384)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !178, line: 153, baseType: !151)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2245, file: !2246, line: 64, baseType: !2257, size: 64, offset: 448)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1359, file: !1360, line: 1326, baseType: !1372, size: 32, offset: 13184)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1359, file: !1360, line: 1342, baseType: !149, size: 64, offset: 13248)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1359, file: !1360, line: 1343, baseType: !153, size: 64, offset: 13312)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1359, file: !1360, line: 1344, baseType: !151, size: 64, offset: 13376)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1359, file: !1360, line: 1345, baseType: !153, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1359, file: !1360, line: 1346, baseType: !153, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1359, file: !1360, line: 1347, baseType: !153, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1359, file: !1360, line: 1348, baseType: !517, size: 128, align: 64, offset: 13504)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1359, file: !1360, line: 1358, baseType: !2268, size: 34816, offset: 13824)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !12, line: 485, size: 34816, elements: !2269)
!2269 = !{!2270, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2299, !2300, !2301, !2302, !2303, !2304, !2307, !2308, !2309}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2268, file: !12, line: 487, baseType: !2271, size: 192)
!2271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2272, size: 192, elements: !429)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2273, line: 16, size: 64, elements: !2274)
!2273 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2274 = !{!2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2272, file: !2273, line: 17, baseType: !167, size: 16)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2272, file: !2273, line: 18, baseType: !167, size: 16, offset: 16)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2272, file: !2273, line: 19, baseType: !167, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2272, file: !2273, line: 19, baseType: !167, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2272, file: !2273, line: 19, baseType: !167, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2272, file: !2273, line: 19, baseType: !167, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2272, file: !2273, line: 19, baseType: !167, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2272, file: !2273, line: 20, baseType: !167, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2272, file: !2273, line: 20, baseType: !167, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2272, file: !2273, line: 20, baseType: !167, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2272, file: !2273, line: 20, baseType: !167, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2272, file: !2273, line: 20, baseType: !167, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2272, file: !2273, line: 20, baseType: !167, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2268, file: !12, line: 491, baseType: !146, size: 64, offset: 192)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2268, file: !12, line: 495, baseType: !169, size: 16, offset: 256)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2268, file: !12, line: 496, baseType: !169, size: 16, offset: 272)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2268, file: !12, line: 497, baseType: !169, size: 16, offset: 288)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2268, file: !12, line: 498, baseType: !169, size: 16, offset: 304)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2268, file: !12, line: 502, baseType: !146, size: 64, offset: 320)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2268, file: !12, line: 503, baseType: !146, size: 64, offset: 384)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2268, file: !12, line: 514, baseType: !2296, size: 256, offset: 448)
!2296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2297, size: 256, elements: !1297)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !12, line: 483, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2268, file: !12, line: 516, baseType: !146, size: 64, offset: 704)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2268, file: !12, line: 518, baseType: !146, size: 64, offset: 768)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2268, file: !12, line: 520, baseType: !146, size: 64, offset: 832)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2268, file: !12, line: 521, baseType: !146, size: 64, offset: 896)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2268, file: !12, line: 522, baseType: !146, size: 64, offset: 960)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2268, file: !12, line: 528, baseType: !2305, size: 64, offset: 1024)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !12, line: 10, flags: DIFlagFwdDecl)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2268, file: !12, line: 535, baseType: !146, size: 64, offset: 1088)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2268, file: !12, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2268, file: !12, line: 540, baseType: !2310, size: 33280, offset: 1536)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2311, line: 317, size: 33280, elements: !2312)
!2311 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2312 = !{!2313, !2314, !2315}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2310, file: !2311, line: 330, baseType: !7, size: 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2310, file: !2311, line: 337, baseType: !146, size: 64, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2310, file: !2311, line: 348, baseType: !2316, size: 32768, offset: 512)
!2316 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2311, line: 304, size: 32768, elements: !2317)
!2317 = !{!2318, !2331, !2368, !2418, !2431}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2316, file: !2311, line: 305, baseType: !2319, size: 896)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2311, line: 12, size: 896, elements: !2320)
!2320 = !{!2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2330}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2319, file: !2311, line: 13, baseType: !156, size: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2319, file: !2311, line: 14, baseType: !156, size: 32, offset: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2319, file: !2311, line: 15, baseType: !156, size: 32, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2319, file: !2311, line: 16, baseType: !156, size: 32, offset: 96)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2319, file: !2311, line: 17, baseType: !156, size: 32, offset: 128)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2319, file: !2311, line: 18, baseType: !156, size: 32, offset: 160)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2319, file: !2311, line: 19, baseType: !156, size: 32, offset: 192)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2319, file: !2311, line: 22, baseType: !2329, size: 640, offset: 224)
!2329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 640, elements: !361)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2319, file: !2311, line: 25, baseType: !156, size: 32, offset: 864)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2316, file: !2311, line: 306, baseType: !2332, size: 4096, align: 128)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2311, line: 34, size: 4096, align: 128, elements: !2333)
!2333 = !{!2334, !2335, !2336, !2337, !2338, !2353, !2354, !2355, !2357, !2359, !2363}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2332, file: !2311, line: 35, baseType: !167, size: 16)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2332, file: !2311, line: 36, baseType: !167, size: 16, offset: 16)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2332, file: !2311, line: 37, baseType: !167, size: 16, offset: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2332, file: !2311, line: 38, baseType: !167, size: 16, offset: 48)
!2338 = !DIDerivedType(tag: DW_TAG_member, scope: !2332, file: !2311, line: 39, baseType: !2339, size: 128, offset: 64)
!2339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2332, file: !2311, line: 39, size: 128, elements: !2340)
!2340 = !{!2341, !2346}
!2341 = !DIDerivedType(tag: DW_TAG_member, scope: !2339, file: !2311, line: 40, baseType: !2342, size: 128)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2339, file: !2311, line: 40, size: 128, elements: !2343)
!2343 = !{!2344, !2345}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2342, file: !2311, line: 41, baseType: !151, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2342, file: !2311, line: 42, baseType: !151, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, scope: !2339, file: !2311, line: 44, baseType: !2347, size: 128)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2339, file: !2311, line: 44, size: 128, elements: !2348)
!2348 = !{!2349, !2350, !2351, !2352}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2347, file: !2311, line: 45, baseType: !156, size: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2347, file: !2311, line: 46, baseType: !156, size: 32, offset: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2347, file: !2311, line: 47, baseType: !156, size: 32, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2347, file: !2311, line: 48, baseType: !156, size: 32, offset: 96)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2332, file: !2311, line: 51, baseType: !156, size: 32, offset: 192)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2332, file: !2311, line: 52, baseType: !156, size: 32, offset: 224)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2332, file: !2311, line: 55, baseType: !2356, size: 1024, offset: 256)
!2356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 1024, elements: !228)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2332, file: !2311, line: 58, baseType: !2358, size: 2048, offset: 1280)
!2358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 2048, elements: !433)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2332, file: !2311, line: 60, baseType: !2360, size: 384, offset: 3328)
!2360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 384, elements: !2361)
!2361 = !{!2362}
!2362 = !DISubrange(count: 12)
!2363 = !DIDerivedType(tag: DW_TAG_member, scope: !2332, file: !2311, line: 62, baseType: !2364, size: 384, offset: 3712)
!2364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2332, file: !2311, line: 62, size: 384, elements: !2365)
!2365 = !{!2366, !2367}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2364, file: !2311, line: 63, baseType: !2360, size: 384)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2364, file: !2311, line: 64, baseType: !2360, size: 384)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2316, file: !2311, line: 307, baseType: !2369, size: 1088)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2311, line: 79, size: 1088, elements: !2370)
!2370 = !{!2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2417}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2369, file: !2311, line: 80, baseType: !156, size: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2369, file: !2311, line: 81, baseType: !156, size: 32, offset: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2369, file: !2311, line: 82, baseType: !156, size: 32, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2369, file: !2311, line: 83, baseType: !156, size: 32, offset: 96)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2369, file: !2311, line: 84, baseType: !156, size: 32, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2369, file: !2311, line: 85, baseType: !156, size: 32, offset: 160)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2369, file: !2311, line: 86, baseType: !156, size: 32, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2369, file: !2311, line: 88, baseType: !2329, size: 640, offset: 224)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2369, file: !2311, line: 89, baseType: !163, size: 8, offset: 864)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2369, file: !2311, line: 90, baseType: !163, size: 8, offset: 872)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2369, file: !2311, line: 91, baseType: !163, size: 8, offset: 880)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2369, file: !2311, line: 92, baseType: !163, size: 8, offset: 888)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2369, file: !2311, line: 93, baseType: !163, size: 8, offset: 896)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2369, file: !2311, line: 94, baseType: !163, size: 8, offset: 904)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2369, file: !2311, line: 95, baseType: !2386, size: 64, offset: 960)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2388, line: 11, size: 128, elements: !2389)
!2388 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2389 = !{!2390, !2391}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2387, file: !2388, line: 12, baseType: !463, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2387, file: !2388, line: 13, baseType: !2392, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2394, line: 56, size: 1344, elements: !2395)
!2394 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2395 = !{!2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2393, file: !2394, line: 61, baseType: !146, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2393, file: !2394, line: 62, baseType: !146, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2393, file: !2394, line: 63, baseType: !146, size: 64, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2393, file: !2394, line: 64, baseType: !146, size: 64, offset: 192)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2393, file: !2394, line: 65, baseType: !146, size: 64, offset: 256)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2393, file: !2394, line: 66, baseType: !146, size: 64, offset: 320)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2393, file: !2394, line: 68, baseType: !146, size: 64, offset: 384)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2393, file: !2394, line: 69, baseType: !146, size: 64, offset: 448)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2393, file: !2394, line: 70, baseType: !146, size: 64, offset: 512)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2393, file: !2394, line: 71, baseType: !146, size: 64, offset: 576)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2393, file: !2394, line: 72, baseType: !146, size: 64, offset: 640)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2393, file: !2394, line: 73, baseType: !146, size: 64, offset: 704)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2393, file: !2394, line: 74, baseType: !146, size: 64, offset: 768)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2393, file: !2394, line: 75, baseType: !146, size: 64, offset: 832)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2393, file: !2394, line: 76, baseType: !146, size: 64, offset: 896)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2393, file: !2394, line: 81, baseType: !146, size: 64, offset: 960)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2393, file: !2394, line: 83, baseType: !146, size: 64, offset: 1024)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2393, file: !2394, line: 84, baseType: !146, size: 64, offset: 1088)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2393, file: !2394, line: 85, baseType: !146, size: 64, offset: 1152)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2393, file: !2394, line: 86, baseType: !146, size: 64, offset: 1216)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2393, file: !2394, line: 87, baseType: !146, size: 64, offset: 1280)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2369, file: !2311, line: 96, baseType: !156, size: 32, offset: 1024)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2316, file: !2311, line: 308, baseType: !2419, size: 4608, align: 512)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2311, line: 289, size: 4608, align: 512, elements: !2420)
!2420 = !{!2421, !2422, !2429}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2419, file: !2311, line: 290, baseType: !2332, size: 4096, align: 128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2419, file: !2311, line: 291, baseType: !2423, size: 512, offset: 4096)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2311, line: 268, size: 512, elements: !2424)
!2424 = !{!2425, !2426, !2427}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2423, file: !2311, line: 269, baseType: !151, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2423, file: !2311, line: 270, baseType: !151, size: 64, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2423, file: !2311, line: 271, baseType: !2428, size: 384, offset: 128)
!2428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 384, elements: !1756)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2419, file: !2311, line: 292, baseType: !2430, offset: 4608)
!2430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, elements: !1854)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2316, file: !2311, line: 309, baseType: !2432, size: 32768)
!2432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 32768, elements: !2433)
!2433 = !{!2434}
!2434 = !DISubrange(count: 4096)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1355, file: !868, line: 378, baseType: !2436, size: 64, offset: 64)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1351, file: !868, line: 384, baseType: !1633, size: 192, offset: 192)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1120, file: !868, line: 500, baseType: !387, offset: 6656)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1120, file: !868, line: 501, baseType: !2440, size: 64, offset: 6656)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !868, line: 387, flags: DIFlagFwdDecl)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1120, file: !868, line: 516, baseType: !1844, size: 64, offset: 6720)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1120, file: !868, line: 519, baseType: !504, size: 64, offset: 6784)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1120, file: !868, line: 521, baseType: !2445, size: 64, offset: 6848)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !868, line: 521, flags: DIFlagFwdDecl)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1120, file: !868, line: 545, baseType: !892, size: 32, offset: 6912)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1120, file: !868, line: 548, baseType: !328, size: 8, offset: 6944)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1120, file: !868, line: 550, baseType: !2450, offset: 6952)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2451, line: 142, elements: !401)
!2451 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1120, file: !868, line: 554, baseType: !2087, size: 256, offset: 6976)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1120, file: !868, line: 557, baseType: !156, size: 32, offset: 7232)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1117, file: !868, line: 565, baseType: !2455, offset: 7296)
!2455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, elements: !2456)
!2456 = !{!2457}
!2457 = !DISubrange(count: -1)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1113, file: !868, line: 151, baseType: !892, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1106, file: !868, line: 156, baseType: !387, offset: 256)
!2460 = !DIDerivedType(tag: DW_TAG_member, scope: !872, file: !868, line: 159, baseType: !2461, size: 128)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !868, line: 159, size: 128, elements: !2462)
!2462 = !{!2463, !2527}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2461, file: !868, line: 161, baseType: !2464, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !43, line: 110, size: 1152, elements: !2466)
!2466 = !{!2467, !2477, !2498, !2499, !2500, !2501, !2502, !2514, !2515, !2516}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2465, file: !43, line: 111, baseType: !2468, size: 384)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !43, line: 19, size: 384, elements: !2469)
!2469 = !{!2470, !2472, !2473, !2474, !2475, !2476}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2468, file: !43, line: 20, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2468, file: !43, line: 21, baseType: !2471, size: 64, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2468, file: !43, line: 22, baseType: !2471, size: 64, offset: 128)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2468, file: !43, line: 23, baseType: !146, size: 64, offset: 192)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2468, file: !43, line: 24, baseType: !146, size: 64, offset: 256)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2468, file: !43, line: 25, baseType: !146, size: 64, offset: 320)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2465, file: !43, line: 112, baseType: !2478, size: 64, offset: 384)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2480, line: 105, size: 128, elements: !2481)
!2480 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2481 = !{!2482, !2483}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2479, file: !2480, line: 110, baseType: !146, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2479, file: !2480, line: 118, baseType: !2484, size: 64, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2480, line: 95, size: 448, elements: !2486)
!2486 = !{!2487, !2488, !2493, !2494, !2495, !2496, !2497}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2485, file: !2480, line: 96, baseType: !916, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2485, file: !2480, line: 97, baseType: !2489, size: 64, offset: 64)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2480, line: 60, baseType: !2491)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{null, !2478}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2485, file: !2480, line: 98, baseType: !2489, size: 64, offset: 128)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2485, file: !2480, line: 99, baseType: !328, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2485, file: !2480, line: 100, baseType: !328, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2485, file: !2480, line: 101, baseType: !517, size: 128, align: 64, offset: 256)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2485, file: !2480, line: 102, baseType: !2478, size: 64, offset: 384)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2465, file: !43, line: 113, baseType: !2479, size: 128, offset: 448)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2465, file: !43, line: 114, baseType: !1633, size: 192, offset: 576)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2465, file: !43, line: 115, baseType: !42, size: 32, offset: 768)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2465, file: !43, line: 116, baseType: !7, size: 32, offset: 800)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2465, file: !43, line: 117, baseType: !2503, size: 64, offset: 832)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2505)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !43, line: 67, size: 256, elements: !2506)
!2506 = !{!2507, !2508, !2512, !2513}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2505, file: !43, line: 73, baseType: !984, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2505, file: !43, line: 78, baseType: !2509, size: 64, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{null, !2464}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2505, file: !43, line: 83, baseType: !2509, size: 64, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2505, file: !43, line: 89, baseType: !1169, size: 64, offset: 192)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2465, file: !43, line: 118, baseType: !149, size: 64, offset: 896)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2465, file: !43, line: 119, baseType: !144, size: 32, offset: 960)
!2516 = !DIDerivedType(tag: DW_TAG_member, scope: !2465, file: !43, line: 120, baseType: !2517, size: 128, offset: 1024)
!2517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2465, file: !43, line: 120, size: 128, elements: !2518)
!2518 = !{!2519, !2525}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2517, file: !43, line: 121, baseType: !2520, size: 128)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2521, line: 6, size: 128, elements: !2522)
!2521 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2522 = !{!2523, !2524}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2520, file: !2521, line: 7, baseType: !151, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2520, file: !2521, line: 8, baseType: !151, size: 64, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2517, file: !43, line: 122, baseType: !2526)
!2526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2520, elements: !1854)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2461, file: !868, line: 162, baseType: !149, size: 64, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !872, file: !868, line: 176, baseType: !517, size: 128, align: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, scope: !867, file: !868, line: 179, baseType: !2530, size: 32, offset: 384)
!2530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !867, file: !868, line: 179, size: 32, elements: !2531)
!2531 = !{!2532, !2533, !2534, !2535}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2530, file: !868, line: 184, baseType: !892, size: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2530, file: !868, line: 192, baseType: !7, size: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2530, file: !868, line: 194, baseType: !7, size: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2530, file: !868, line: 195, baseType: !144, size: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !867, file: !868, line: 199, baseType: !892, size: 32, offset: 416)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !802, file: !56, line: 1964, baseType: !2538, size: 64, offset: 1344)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!463, !741, !2541}
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2543, line: 12, size: 256, elements: !2544)
!2543 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2544 = !{!2545, !2546, !2547, !2548, !2549}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2542, file: !2543, line: 13, baseType: !177, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2542, file: !2543, line: 16, baseType: !144, size: 32, offset: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2542, file: !2543, line: 23, baseType: !146, size: 64, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2542, file: !2543, line: 30, baseType: !146, size: 64, offset: 128)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2542, file: !2543, line: 33, baseType: !2550, size: 64, offset: 192)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !868, line: 27, flags: DIFlagFwdDecl)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !802, file: !56, line: 1966, baseType: !2538, size: 64, offset: 1408)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !742, file: !56, line: 1424, baseType: !2554, size: 64, offset: 448)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2556)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !50, line: 322, size: 704, elements: !2557)
!2557 = !{!2558, !2604, !2608, !2612, !2613, !2614, !2615, !2616, !2621, !2626, !2630}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2556, file: !50, line: 323, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!144, !2562}
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !50, line: 294, size: 1600, elements: !2564)
!2564 = !{!2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2589, !2590, !2591}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2563, file: !50, line: 295, baseType: !784, size: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2563, file: !50, line: 296, baseType: !374, size: 128, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2563, file: !50, line: 297, baseType: !374, size: 128, offset: 256)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2563, file: !50, line: 298, baseType: !374, size: 128, offset: 384)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2563, file: !50, line: 299, baseType: !1315, size: 192, offset: 512)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2563, file: !50, line: 300, baseType: !387, offset: 704)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2563, file: !50, line: 301, baseType: !892, size: 32, offset: 704)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2563, file: !50, line: 302, baseType: !741, size: 64, offset: 768)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2563, file: !50, line: 303, baseType: !2574, size: 64, offset: 832)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !50, line: 68, size: 64, elements: !2575)
!2575 = !{!2576, !2588}
!2576 = !DIDerivedType(tag: DW_TAG_member, scope: !2574, file: !50, line: 69, baseType: !2577, size: 32)
!2577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2574, file: !50, line: 69, size: 32, elements: !2578)
!2578 = !{!2579, !2580, !2581}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2577, file: !50, line: 70, baseType: !579, size: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2577, file: !50, line: 71, baseType: !587, size: 32)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2577, file: !50, line: 72, baseType: !2582, size: 32)
!2582 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2583, line: 24, baseType: !2584)
!2583 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2583, line: 22, size: 32, elements: !2585)
!2585 = !{!2586}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2584, file: !2583, line: 23, baseType: !2587, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2583, line: 20, baseType: !585)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2574, file: !50, line: 74, baseType: !49, size: 32, offset: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2563, file: !50, line: 304, baseType: !673, size: 64, offset: 896)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2563, file: !50, line: 305, baseType: !146, size: 64, offset: 960)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2563, file: !50, line: 306, baseType: !2592, size: 576, offset: 1024)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !50, line: 205, size: 576, elements: !2593)
!2593 = !{!2594, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2592, file: !50, line: 206, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !50, line: 66, baseType: !675)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2592, file: !50, line: 207, baseType: !2595, size: 64, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2592, file: !50, line: 208, baseType: !2595, size: 64, offset: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2592, file: !50, line: 209, baseType: !2595, size: 64, offset: 192)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2592, file: !50, line: 210, baseType: !2595, size: 64, offset: 256)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2592, file: !50, line: 211, baseType: !2595, size: 64, offset: 320)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2592, file: !50, line: 212, baseType: !2595, size: 64, offset: 384)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2592, file: !50, line: 213, baseType: !681, size: 64, offset: 448)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2592, file: !50, line: 214, baseType: !681, size: 64, offset: 512)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2556, file: !50, line: 324, baseType: !2605, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!2562, !741, !144}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2556, file: !50, line: 325, baseType: !2609, size: 64, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{null, !2562}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2556, file: !50, line: 326, baseType: !2559, size: 64, offset: 192)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2556, file: !50, line: 327, baseType: !2559, size: 64, offset: 256)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2556, file: !50, line: 328, baseType: !2559, size: 64, offset: 320)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2556, file: !50, line: 329, baseType: !830, size: 64, offset: 384)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2556, file: !50, line: 332, baseType: !2617, size: 64, offset: 448)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!2620, !573}
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2556, file: !50, line: 333, baseType: !2622, size: 64, offset: 512)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!144, !573, !2625}
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2556, file: !50, line: 335, baseType: !2627, size: 64, offset: 576)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!144, !573, !2620}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2556, file: !50, line: 337, baseType: !2631, size: 64, offset: 640)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!144, !741, !2634}
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !742, file: !56, line: 1425, baseType: !2636, size: 64, offset: 512)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2638)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !50, line: 428, size: 704, elements: !2639)
!2639 = !{!2640, !2644, !2645, !2649, !2650, !2651, !2666, !2689, !2693, !2694, !2717}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2638, file: !50, line: 429, baseType: !2641, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!144, !741, !144, !144, !691}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2638, file: !50, line: 430, baseType: !830, size: 64, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2638, file: !50, line: 431, baseType: !2646, size: 64, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!144, !741, !7}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2638, file: !50, line: 432, baseType: !2646, size: 64, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2638, file: !50, line: 433, baseType: !830, size: 64, offset: 256)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2638, file: !50, line: 434, baseType: !2652, size: 64, offset: 320)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!144, !741, !144, !2655}
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !50, line: 415, size: 256, elements: !2657)
!2657 = !{!2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2656, file: !50, line: 416, baseType: !144, size: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2656, file: !50, line: 417, baseType: !7, size: 32, offset: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2656, file: !50, line: 418, baseType: !7, size: 32, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2656, file: !50, line: 420, baseType: !7, size: 32, offset: 96)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2656, file: !50, line: 421, baseType: !7, size: 32, offset: 128)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2656, file: !50, line: 422, baseType: !7, size: 32, offset: 160)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2656, file: !50, line: 423, baseType: !7, size: 32, offset: 192)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2656, file: !50, line: 424, baseType: !7, size: 32, offset: 224)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2638, file: !50, line: 435, baseType: !2667, size: 64, offset: 384)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!144, !741, !2574, !2670}
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !50, line: 343, size: 960, elements: !2672)
!2672 = !{!2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2671, file: !50, line: 344, baseType: !144, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2671, file: !50, line: 345, baseType: !151, size: 64, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2671, file: !50, line: 346, baseType: !151, size: 64, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2671, file: !50, line: 347, baseType: !151, size: 64, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2671, file: !50, line: 348, baseType: !151, size: 64, offset: 256)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2671, file: !50, line: 349, baseType: !151, size: 64, offset: 320)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2671, file: !50, line: 350, baseType: !151, size: 64, offset: 384)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2671, file: !50, line: 351, baseType: !922, size: 64, offset: 448)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2671, file: !50, line: 353, baseType: !922, size: 64, offset: 512)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2671, file: !50, line: 354, baseType: !144, size: 32, offset: 576)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2671, file: !50, line: 355, baseType: !144, size: 32, offset: 608)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2671, file: !50, line: 356, baseType: !151, size: 64, offset: 640)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2671, file: !50, line: 357, baseType: !151, size: 64, offset: 704)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2671, file: !50, line: 358, baseType: !151, size: 64, offset: 768)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2671, file: !50, line: 359, baseType: !922, size: 64, offset: 832)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2671, file: !50, line: 360, baseType: !144, size: 32, offset: 896)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2638, file: !50, line: 436, baseType: !2690, size: 64, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!144, !741, !2634, !2670}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2638, file: !50, line: 438, baseType: !2667, size: 64, offset: 512)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2638, file: !50, line: 439, baseType: !2695, size: 64, offset: 576)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!144, !741, !2698}
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !50, line: 409, size: 1408, elements: !2700)
!2700 = !{!2701, !2702}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2699, file: !50, line: 410, baseType: !7, size: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2699, file: !50, line: 411, baseType: !2703, size: 1344, offset: 64)
!2703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2704, size: 1344, elements: !429)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !50, line: 395, size: 448, elements: !2705)
!2705 = !{!2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2716}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2704, file: !50, line: 396, baseType: !7, size: 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2704, file: !50, line: 397, baseType: !7, size: 32, offset: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2704, file: !50, line: 399, baseType: !7, size: 32, offset: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2704, file: !50, line: 400, baseType: !7, size: 32, offset: 96)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2704, file: !50, line: 401, baseType: !7, size: 32, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2704, file: !50, line: 402, baseType: !7, size: 32, offset: 160)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2704, file: !50, line: 403, baseType: !7, size: 32, offset: 192)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2704, file: !50, line: 404, baseType: !155, size: 64, offset: 256)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2704, file: !50, line: 405, baseType: !2715, size: 64, offset: 320)
!2715 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !178, line: 126, baseType: !151)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2704, file: !50, line: 406, baseType: !2715, size: 64, offset: 384)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2638, file: !50, line: 440, baseType: !2646, size: 64, offset: 640)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !742, file: !56, line: 1426, baseType: !2719, size: 64, offset: 576)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2721)
!2721 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !56, line: 49, flags: DIFlagFwdDecl)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !742, file: !56, line: 1427, baseType: !146, size: 64, offset: 640)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !742, file: !56, line: 1428, baseType: !146, size: 64, offset: 704)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !742, file: !56, line: 1429, baseType: !146, size: 64, offset: 768)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !742, file: !56, line: 1430, baseType: !534, size: 64, offset: 832)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !742, file: !56, line: 1431, baseType: !912, size: 256, offset: 896)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !742, file: !56, line: 1432, baseType: !144, size: 32, offset: 1152)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !742, file: !56, line: 1433, baseType: !892, size: 32, offset: 1184)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !742, file: !56, line: 1437, baseType: !2730, size: 64, offset: 1216)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2733)
!2733 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !56, line: 1437, flags: DIFlagFwdDecl)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !742, file: !56, line: 1449, baseType: !2735, size: 64, offset: 1280)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !550, line: 34, size: 64, elements: !2736)
!2736 = !{!2737}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2735, file: !550, line: 35, baseType: !553, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !742, file: !56, line: 1450, baseType: !374, size: 128, offset: 1344)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !742, file: !56, line: 1451, baseType: !2740, size: 64, offset: 1472)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !56, line: 699, flags: DIFlagFwdDecl)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !742, file: !56, line: 1452, baseType: !2053, size: 64, offset: 1536)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !742, file: !56, line: 1453, baseType: !2744, size: 64, offset: 1600)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !56, line: 1453, flags: DIFlagFwdDecl)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !742, file: !56, line: 1454, baseType: !784, size: 128, offset: 1664)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !742, file: !56, line: 1455, baseType: !7, size: 32, offset: 1792)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !742, file: !56, line: 1456, baseType: !2749, size: 2432, offset: 1856)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !50, line: 518, size: 2432, elements: !2750)
!2750 = !{!2751, !2752, !2753, !2755, !2787}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2749, file: !50, line: 519, baseType: !7, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2749, file: !50, line: 520, baseType: !912, size: 256, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2749, file: !50, line: 521, baseType: !2754, size: 192, offset: 320)
!2754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 192, elements: !429)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2749, file: !50, line: 522, baseType: !2756, size: 1728, offset: 512)
!2756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2757, size: 1728, elements: !429)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !50, line: 222, size: 576, elements: !2758)
!2758 = !{!2759, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2757, file: !50, line: 223, baseType: !2760, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !50, line: 443, size: 256, elements: !2762)
!2762 = !{!2763, !2764, !2777, !2778}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2761, file: !50, line: 444, baseType: !144, size: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2761, file: !50, line: 445, baseType: !2765, size: 64, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2767)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !50, line: 310, size: 512, elements: !2768)
!2768 = !{!2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2767, file: !50, line: 311, baseType: !830, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2767, file: !50, line: 312, baseType: !830, size: 64, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2767, file: !50, line: 313, baseType: !830, size: 64, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2767, file: !50, line: 314, baseType: !830, size: 64, offset: 192)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2767, file: !50, line: 315, baseType: !2559, size: 64, offset: 256)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2767, file: !50, line: 316, baseType: !2559, size: 64, offset: 320)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2767, file: !50, line: 317, baseType: !2559, size: 64, offset: 384)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2767, file: !50, line: 318, baseType: !2631, size: 64, offset: 448)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2761, file: !50, line: 446, baseType: !775, size: 64, offset: 128)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2761, file: !50, line: 447, baseType: !2760, size: 64, offset: 192)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2757, file: !50, line: 224, baseType: !144, size: 32, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2757, file: !50, line: 226, baseType: !374, size: 128, offset: 128)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2757, file: !50, line: 227, baseType: !146, size: 64, offset: 256)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2757, file: !50, line: 228, baseType: !7, size: 32, offset: 320)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2757, file: !50, line: 229, baseType: !7, size: 32, offset: 352)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2757, file: !50, line: 230, baseType: !2595, size: 64, offset: 384)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2757, file: !50, line: 231, baseType: !2595, size: 64, offset: 448)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2757, file: !50, line: 232, baseType: !149, size: 64, offset: 512)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2749, file: !50, line: 523, baseType: !2788, size: 192, offset: 2240)
!2788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2765, size: 192, elements: !429)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !742, file: !56, line: 1458, baseType: !2790, size: 2112, offset: 4288)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !56, line: 1410, size: 2112, elements: !2791)
!2791 = !{!2792, !2793, !2794}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2790, file: !56, line: 1411, baseType: !144, size: 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2790, file: !56, line: 1412, baseType: !1612, size: 128, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2790, file: !56, line: 1413, baseType: !2795, size: 1920, offset: 192)
!2795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2796, size: 1920, elements: !429)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2797, line: 12, size: 640, elements: !2798)
!2797 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2798 = !{!2799, !2807, !2809, !2814, !2815}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2796, file: !2797, line: 13, baseType: !2800, size: 320)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2801, line: 17, size: 320, elements: !2802)
!2801 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2802 = !{!2803, !2804, !2805, !2806}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2800, file: !2801, line: 18, baseType: !144, size: 32)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2800, file: !2801, line: 19, baseType: !144, size: 32, offset: 32)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2800, file: !2801, line: 20, baseType: !1612, size: 128, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2800, file: !2801, line: 22, baseType: !517, size: 128, align: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2796, file: !2797, line: 14, baseType: !2808, size: 64, offset: 320)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2796, file: !2797, line: 15, baseType: !2810, size: 64, offset: 384)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2811, line: 16, size: 64, elements: !2812)
!2811 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2812 = !{!2813}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2810, file: !2811, line: 17, baseType: !1358, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2796, file: !2797, line: 16, baseType: !1612, size: 128, offset: 448)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2796, file: !2797, line: 17, baseType: !892, size: 32, offset: 576)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !742, file: !56, line: 1465, baseType: !149, size: 64, offset: 6400)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !742, file: !56, line: 1468, baseType: !156, size: 32, offset: 6464)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !742, file: !56, line: 1470, baseType: !681, size: 64, offset: 6528)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !742, file: !56, line: 1471, baseType: !681, size: 64, offset: 6592)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !742, file: !56, line: 1473, baseType: !157, size: 32, offset: 6656)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !742, file: !56, line: 1474, baseType: !2822, size: 64, offset: 6720)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !56, line: 603, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !742, file: !56, line: 1477, baseType: !226, size: 256, offset: 6784)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !742, file: !56, line: 1478, baseType: !2826, size: 128, offset: 7040)
!2826 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2827, line: 18, baseType: !2828)
!2827 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2827, line: 16, size: 128, elements: !2829)
!2829 = !{!2830}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2828, file: !2827, line: 17, baseType: !2831, size: 128)
!2831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 128, elements: !341)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !742, file: !56, line: 1480, baseType: !7, size: 32, offset: 7168)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !742, file: !56, line: 1481, baseType: !2834, size: 32, offset: 7200)
!2834 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !178, line: 150, baseType: !7)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !742, file: !56, line: 1487, baseType: !1315, size: 192, offset: 7232)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !742, file: !56, line: 1493, baseType: !371, size: 64, offset: 7424)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !742, file: !56, line: 1495, baseType: !2838, size: 64, offset: 7488)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2840)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !532, line: 135, size: 1024, align: 512, elements: !2841)
!2841 = !{!2842, !2846, !2847, !2854, !2860, !2864, !2868, !2872, !2873, !2877, !2881, !2886, !2890}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2840, file: !532, line: 136, baseType: !2843, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!144, !534, !7}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2840, file: !532, line: 137, baseType: !2843, size: 64, offset: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2840, file: !532, line: 138, baseType: !2848, size: 64, offset: 128)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!144, !2851, !2853}
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2840, file: !532, line: 139, baseType: !2855, size: 64, offset: 192)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!144, !2851, !7, !371, !2858}
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2840, file: !532, line: 141, baseType: !2861, size: 64, offset: 256)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!144, !2851}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2840, file: !532, line: 142, baseType: !2865, size: 64, offset: 320)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!144, !534}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2840, file: !532, line: 143, baseType: !2869, size: 64, offset: 384)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{null, !534}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2840, file: !532, line: 144, baseType: !2869, size: 64, offset: 448)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2840, file: !532, line: 145, baseType: !2874, size: 64, offset: 512)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{null, !534, !573}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2840, file: !532, line: 146, baseType: !2878, size: 64, offset: 576)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!428, !534, !428, !144}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2840, file: !532, line: 147, baseType: !2882, size: 64, offset: 640)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!530, !2885}
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2840, file: !532, line: 148, baseType: !2887, size: 64, offset: 704)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!144, !691, !328}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2840, file: !532, line: 149, baseType: !2891, size: 64, offset: 768)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!534, !534, !2894}
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !742, file: !56, line: 1500, baseType: !144, size: 32, offset: 7552)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !742, file: !56, line: 1502, baseType: !2898, size: 448, offset: 7616)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2543, line: 60, size: 448, elements: !2899)
!2899 = !{!2900, !2905, !2906, !2907, !2908, !2909, !2910}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2898, file: !2543, line: 61, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!146, !2904, !2541}
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2898, file: !2543, line: 63, baseType: !2901, size: 64, offset: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2898, file: !2543, line: 66, baseType: !463, size: 64, offset: 128)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2898, file: !2543, line: 67, baseType: !144, size: 32, offset: 192)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2898, file: !2543, line: 68, baseType: !7, size: 32, offset: 224)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2898, file: !2543, line: 71, baseType: !374, size: 128, offset: 256)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2898, file: !2543, line: 77, baseType: !2911, size: 64, offset: 384)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !742, file: !56, line: 1505, baseType: !916, size: 64, offset: 8064)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !742, file: !56, line: 1508, baseType: !916, size: 64, offset: 8128)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !742, file: !56, line: 1511, baseType: !144, size: 32, offset: 8192)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !742, file: !56, line: 1514, baseType: !1051, size: 32, offset: 8224)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !742, file: !56, line: 1517, baseType: !2917, size: 64, offset: 8256)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2088, line: 18, flags: DIFlagFwdDecl)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !742, file: !56, line: 1518, baseType: !780, size: 64, offset: 8320)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !742, file: !56, line: 1525, baseType: !1844, size: 64, offset: 8384)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !742, file: !56, line: 1532, baseType: !2922, size: 64, offset: 8448)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2923, line: 52, size: 64, elements: !2924)
!2923 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2924 = !{!2925}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2922, file: !2923, line: 53, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2923, line: 40, size: 256, elements: !2928)
!2928 = !{!2929, !2930, !2935}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2927, file: !2923, line: 42, baseType: !387)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2927, file: !2923, line: 44, baseType: !2931, size: 192)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2923, line: 28, size: 192, elements: !2932)
!2932 = !{!2933, !2934}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2931, file: !2923, line: 29, baseType: !374, size: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2931, file: !2923, line: 31, baseType: !463, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2927, file: !2923, line: 49, baseType: !463, size: 64, offset: 192)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !742, file: !56, line: 1533, baseType: !2922, size: 64, offset: 8512)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !742, file: !56, line: 1534, baseType: !517, size: 128, align: 64, offset: 8576)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !742, file: !56, line: 1535, baseType: !2087, size: 256, offset: 8704)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !742, file: !56, line: 1537, baseType: !1315, size: 192, offset: 8960)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !742, file: !56, line: 1542, baseType: !144, size: 32, offset: 9152)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !742, file: !56, line: 1545, baseType: !387, offset: 9184)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !742, file: !56, line: 1546, baseType: !374, size: 128, offset: 9216)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !742, file: !56, line: 1548, baseType: !387, offset: 9344)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !742, file: !56, line: 1549, baseType: !374, size: 128, offset: 9344)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !574, file: !56, line: 624, baseType: !879, size: 64, offset: 256)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !574, file: !56, line: 631, baseType: !146, size: 64, offset: 320)
!2947 = !DIDerivedType(tag: DW_TAG_member, scope: !574, file: !56, line: 639, baseType: !2948, size: 32, offset: 384)
!2948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !574, file: !56, line: 639, size: 32, elements: !2949)
!2949 = !{!2950, !2952}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2948, file: !56, line: 640, baseType: !2951, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2948, file: !56, line: 641, baseType: !7, size: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !574, file: !56, line: 643, baseType: !655, size: 32, offset: 416)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !574, file: !56, line: 644, baseType: !673, size: 64, offset: 448)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !574, file: !56, line: 645, baseType: !677, size: 128, offset: 512)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !574, file: !56, line: 646, baseType: !677, size: 128, offset: 640)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !574, file: !56, line: 647, baseType: !677, size: 128, offset: 768)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !574, file: !56, line: 648, baseType: !387, offset: 896)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !574, file: !56, line: 649, baseType: !169, size: 16, offset: 896)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !574, file: !56, line: 650, baseType: !163, size: 8, offset: 912)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !574, file: !56, line: 651, baseType: !163, size: 8, offset: 920)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !574, file: !56, line: 652, baseType: !2715, size: 64, offset: 960)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !574, file: !56, line: 659, baseType: !146, size: 64, offset: 1024)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !574, file: !56, line: 660, baseType: !912, size: 256, offset: 1088)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !574, file: !56, line: 662, baseType: !146, size: 64, offset: 1344)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !574, file: !56, line: 663, baseType: !146, size: 64, offset: 1408)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !574, file: !56, line: 665, baseType: !784, size: 128, offset: 1472)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !574, file: !56, line: 666, baseType: !374, size: 128, offset: 1600)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !574, file: !56, line: 675, baseType: !374, size: 128, offset: 1728)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !574, file: !56, line: 676, baseType: !374, size: 128, offset: 1856)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !574, file: !56, line: 677, baseType: !374, size: 128, offset: 1984)
!2972 = !DIDerivedType(tag: DW_TAG_member, scope: !574, file: !56, line: 678, baseType: !2973, size: 128, offset: 2112)
!2973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !574, file: !56, line: 678, size: 128, elements: !2974)
!2974 = !{!2975, !2976}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2973, file: !56, line: 679, baseType: !780, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2973, file: !56, line: 680, baseType: !517, size: 128, align: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !574, file: !56, line: 682, baseType: !918, size: 64, offset: 2240)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !574, file: !56, line: 683, baseType: !918, size: 64, offset: 2304)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !574, file: !56, line: 684, baseType: !892, size: 32, offset: 2368)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !574, file: !56, line: 685, baseType: !892, size: 32, offset: 2400)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !574, file: !56, line: 686, baseType: !892, size: 32, offset: 2432)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !574, file: !56, line: 688, baseType: !892, size: 32, offset: 2464)
!2983 = !DIDerivedType(tag: DW_TAG_member, scope: !574, file: !56, line: 690, baseType: !2984, size: 64, offset: 2496)
!2984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !574, file: !56, line: 690, size: 64, elements: !2985)
!2985 = !{!2986, !3209}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2984, file: !56, line: 691, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2989)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !56, line: 1822, size: 2048, elements: !2990)
!2990 = !{!2991, !2992, !2996, !3001, !3005, !3006, !3007, !3011, !3024, !3025, !3033, !3037, !3038, !3042, !3043, !3047, !3052, !3053, !3057, !3061, !3169, !3173, !3174, !3178, !3179, !3183, !3187, !3192, !3196, !3200, !3204, !3208}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2989, file: !56, line: 1823, baseType: !775, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2989, file: !56, line: 1824, baseType: !2993, size: 64, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!673, !504, !673, !144}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2989, file: !56, line: 1825, baseType: !2997, size: 64, offset: 128)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!459, !504, !428, !474, !3000}
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2989, file: !56, line: 1826, baseType: !3002, size: 64, offset: 192)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!459, !504, !371, !474, !3000}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2989, file: !56, line: 1827, baseType: !988, size: 64, offset: 256)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2989, file: !56, line: 1828, baseType: !988, size: 64, offset: 320)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2989, file: !56, line: 1829, baseType: !3008, size: 64, offset: 384)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!144, !991, !328}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2989, file: !56, line: 1830, baseType: !3012, size: 64, offset: 448)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!144, !504, !3015}
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !56, line: 1776, size: 128, elements: !3017)
!3017 = !{!3018, !3023}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3016, file: !56, line: 1777, baseType: !3019, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !56, line: 1773, baseType: !3020)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!144, !3015, !371, !144, !673, !151, !7}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3016, file: !56, line: 1778, baseType: !673, size: 64, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2989, file: !56, line: 1831, baseType: !3012, size: 64, offset: 512)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2989, file: !56, line: 1832, baseType: !3026, size: 64, offset: 576)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!3029, !504, !3031}
!3029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3030, line: 52, baseType: !7)
!3030 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !761, line: 27, flags: DIFlagFwdDecl)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2989, file: !56, line: 1833, baseType: !3034, size: 64, offset: 640)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!463, !504, !7, !146}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2989, file: !56, line: 1834, baseType: !3034, size: 64, offset: 704)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2989, file: !56, line: 1835, baseType: !3039, size: 64, offset: 768)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!144, !504, !1123}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2989, file: !56, line: 1836, baseType: !146, size: 64, offset: 832)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2989, file: !56, line: 1837, baseType: !3044, size: 64, offset: 896)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!144, !573, !504}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2989, file: !56, line: 1838, baseType: !3048, size: 64, offset: 960)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!144, !504, !3051}
!3051 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !56, line: 1007, baseType: !149)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2989, file: !56, line: 1839, baseType: !3044, size: 64, offset: 1024)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2989, file: !56, line: 1840, baseType: !3054, size: 64, offset: 1088)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!144, !504, !673, !673, !144}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2989, file: !56, line: 1841, baseType: !3058, size: 64, offset: 1152)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!144, !144, !504, !144}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2989, file: !56, line: 1842, baseType: !3062, size: 64, offset: 1216)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!144, !504, !144, !3065}
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !56, line: 1062, size: 1664, elements: !3067)
!3067 = !{!3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3099, !3100, !3101, !3114, !3145}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3066, file: !56, line: 1063, baseType: !3065, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3066, file: !56, line: 1064, baseType: !374, size: 128, offset: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3066, file: !56, line: 1065, baseType: !784, size: 128, offset: 192)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3066, file: !56, line: 1066, baseType: !374, size: 128, offset: 320)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3066, file: !56, line: 1069, baseType: !374, size: 128, offset: 448)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3066, file: !56, line: 1072, baseType: !3051, size: 64, offset: 576)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3066, file: !56, line: 1073, baseType: !7, size: 32, offset: 640)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3066, file: !56, line: 1074, baseType: !165, size: 8, offset: 672)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3066, file: !56, line: 1075, baseType: !7, size: 32, offset: 704)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3066, file: !56, line: 1076, baseType: !144, size: 32, offset: 736)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3066, file: !56, line: 1077, baseType: !1612, size: 128, offset: 768)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3066, file: !56, line: 1078, baseType: !504, size: 64, offset: 896)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3066, file: !56, line: 1079, baseType: !673, size: 64, offset: 960)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3066, file: !56, line: 1080, baseType: !673, size: 64, offset: 1024)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3066, file: !56, line: 1082, baseType: !3083, size: 64, offset: 1088)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !56, line: 1314, size: 320, elements: !3085)
!3085 = !{!3086, !3094, !3095, !3096, !3097, !3098}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3084, file: !56, line: 1315, baseType: !3087)
!3087 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3088, line: 20, baseType: !3089)
!3088 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3088, line: 11, elements: !3090)
!3090 = !{!3091}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3089, file: !3088, line: 12, baseType: !3092)
!3092 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !399, line: 33, baseType: !3093)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !399, line: 31, elements: !401)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3084, file: !56, line: 1316, baseType: !144, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3084, file: !56, line: 1317, baseType: !144, size: 32, offset: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3084, file: !56, line: 1318, baseType: !3083, size: 64, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3084, file: !56, line: 1319, baseType: !504, size: 64, offset: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3084, file: !56, line: 1320, baseType: !517, size: 128, align: 64, offset: 192)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3066, file: !56, line: 1084, baseType: !146, size: 64, offset: 1152)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3066, file: !56, line: 1085, baseType: !146, size: 64, offset: 1216)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3066, file: !56, line: 1087, baseType: !3102, size: 64, offset: 1280)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3104)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !56, line: 1011, size: 128, elements: !3105)
!3105 = !{!3106, !3110}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3104, file: !56, line: 1012, baseType: !3107, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{null, !3065, !3065}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3104, file: !56, line: 1013, baseType: !3111, size: 64, offset: 64)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{null, !3065}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3066, file: !56, line: 1088, baseType: !3115, size: 64, offset: 1344)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3117)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !56, line: 1016, size: 512, elements: !3118)
!3118 = !{!3119, !3123, !3127, !3128, !3132, !3136, !3140, !3144}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3117, file: !56, line: 1017, baseType: !3120, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!3051, !3051}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3117, file: !56, line: 1018, baseType: !3124, size: 64, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{null, !3051}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3117, file: !56, line: 1019, baseType: !3111, size: 64, offset: 128)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3117, file: !56, line: 1020, baseType: !3129, size: 64, offset: 192)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!144, !3065, !144}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3117, file: !56, line: 1021, baseType: !3133, size: 64, offset: 256)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!328, !3065}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3117, file: !56, line: 1022, baseType: !3137, size: 64, offset: 320)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!144, !3065, !144, !377}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3117, file: !56, line: 1023, baseType: !3141, size: 64, offset: 384)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{null, !3065, !179}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3117, file: !56, line: 1024, baseType: !3133, size: 64, offset: 448)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3066, file: !56, line: 1097, baseType: !3146, size: 256, offset: 1408)
!3146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3066, file: !56, line: 1089, size: 256, elements: !3147)
!3147 = !{!3148, !3157, !3163}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3146, file: !56, line: 1090, baseType: !3149, size: 256)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3150, line: 10, size: 256, elements: !3151)
!3150 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3151 = !{!3152, !3153, !3156}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3149, file: !3150, line: 11, baseType: !156, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3149, file: !3150, line: 12, baseType: !3154, size: 64, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3150, line: 5, flags: DIFlagFwdDecl)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3149, file: !3150, line: 13, baseType: !374, size: 128, offset: 128)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3146, file: !56, line: 1091, baseType: !3158, size: 64)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3150, line: 17, size: 64, elements: !3159)
!3159 = !{!3160}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3158, file: !3150, line: 18, baseType: !3161, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3150, line: 16, flags: DIFlagFwdDecl)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3146, file: !56, line: 1096, baseType: !3164, size: 192)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3146, file: !56, line: 1092, size: 192, elements: !3165)
!3165 = !{!3166, !3167, !3168}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3164, file: !56, line: 1093, baseType: !374, size: 128)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3164, file: !56, line: 1094, baseType: !144, size: 32, offset: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3164, file: !56, line: 1095, baseType: !7, size: 32, offset: 160)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2989, file: !56, line: 1843, baseType: !3170, size: 64, offset: 1280)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!459, !504, !866, !144, !474, !3000, !144}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2989, file: !56, line: 1844, baseType: !1243, size: 64, offset: 1344)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2989, file: !56, line: 1845, baseType: !3175, size: 64, offset: 1408)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!144, !144}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2989, file: !56, line: 1846, baseType: !3062, size: 64, offset: 1472)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2989, file: !56, line: 1847, baseType: !3180, size: 64, offset: 1536)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!459, !2228, !504, !3000, !474, !7}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2989, file: !56, line: 1848, baseType: !3184, size: 64, offset: 1600)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!459, !504, !3000, !2228, !474, !7}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2989, file: !56, line: 1849, baseType: !3188, size: 64, offset: 1664)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!144, !504, !463, !3191, !179}
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2989, file: !56, line: 1850, baseType: !3193, size: 64, offset: 1728)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!463, !504, !144, !673, !673}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2989, file: !56, line: 1852, baseType: !3197, size: 64, offset: 1792)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{null, !856, !504}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2989, file: !56, line: 1856, baseType: !3201, size: 64, offset: 1856)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!459, !504, !673, !504, !673, !474, !7}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2989, file: !56, line: 1858, baseType: !3205, size: 64, offset: 1920)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!673, !504, !673, !504, !673, !673, !7}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2989, file: !56, line: 1861, baseType: !3054, size: 64, offset: 1984)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2984, file: !56, line: 692, baseType: !809, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !574, file: !56, line: 694, baseType: !3211, size: 64, offset: 2560)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !56, line: 1100, size: 384, elements: !3213)
!3213 = !{!3214, !3215, !3216, !3217}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3212, file: !56, line: 1101, baseType: !387)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3212, file: !56, line: 1102, baseType: !374, size: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3212, file: !56, line: 1103, baseType: !374, size: 128, offset: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3212, file: !56, line: 1104, baseType: !374, size: 128, offset: 256)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !574, file: !56, line: 695, baseType: !880, size: 1216, align: 64, offset: 2624)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !574, file: !56, line: 696, baseType: !374, size: 128, offset: 3840)
!3220 = !DIDerivedType(tag: DW_TAG_member, scope: !574, file: !56, line: 697, baseType: !3221, size: 64, offset: 3968)
!3221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !574, file: !56, line: 697, size: 64, elements: !3222)
!3222 = !{!3223, !3224, !3225, !3228, !3229}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3221, file: !56, line: 698, baseType: !2228, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3221, file: !56, line: 699, baseType: !2740, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3221, file: !56, line: 700, baseType: !3226, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !56, line: 700, flags: DIFlagFwdDecl)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3221, file: !56, line: 701, baseType: !428, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3221, file: !56, line: 702, baseType: !7, size: 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !574, file: !56, line: 705, baseType: !157, size: 32, offset: 4032)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !574, file: !56, line: 708, baseType: !157, size: 32, offset: 4064)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !574, file: !56, line: 709, baseType: !2822, size: 64, offset: 4096)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !574, file: !56, line: 720, baseType: !149, size: 64, offset: 4160)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !535, file: !532, line: 98, baseType: !3235, size: 256, offset: 448)
!3235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 256, elements: !228)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !535, file: !532, line: 101, baseType: !3237, size: 32, offset: 704)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3238, line: 25, size: 32, elements: !3239)
!3238 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3239 = !{!3240}
!3240 = !DIDerivedType(tag: DW_TAG_member, scope: !3237, file: !3238, line: 26, baseType: !3241, size: 32)
!3241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3237, file: !3238, line: 26, size: 32, elements: !3242)
!3242 = !{!3243}
!3243 = !DIDerivedType(tag: DW_TAG_member, scope: !3241, file: !3238, line: 30, baseType: !3244, size: 32)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3241, file: !3238, line: 30, size: 32, elements: !3245)
!3245 = !{!3246, !3247}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3244, file: !3238, line: 31, baseType: !387)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3244, file: !3238, line: 32, baseType: !144, size: 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !535, file: !532, line: 102, baseType: !2838, size: 64, offset: 768)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !535, file: !532, line: 103, baseType: !741, size: 64, offset: 832)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !535, file: !532, line: 104, baseType: !146, size: 64, offset: 896)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !535, file: !532, line: 105, baseType: !149, size: 64, offset: 960)
!3252 = !DIDerivedType(tag: DW_TAG_member, scope: !535, file: !532, line: 107, baseType: !3253, size: 128, offset: 1024)
!3253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !535, file: !532, line: 107, size: 128, elements: !3254)
!3254 = !{!3255, !3256}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3253, file: !532, line: 108, baseType: !374, size: 128)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3253, file: !532, line: 109, baseType: !3257, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !535, file: !532, line: 111, baseType: !374, size: 128, offset: 1152)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !535, file: !532, line: 112, baseType: !374, size: 128, offset: 1280)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !535, file: !532, line: 120, baseType: !3261, size: 128, offset: 1408)
!3261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !535, file: !532, line: 116, size: 128, elements: !3262)
!3262 = !{!3263, !3264, !3265}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3261, file: !532, line: 117, baseType: !784, size: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3261, file: !532, line: 118, baseType: !549, size: 128)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3261, file: !532, line: 119, baseType: !517, size: 128, align: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !505, file: !56, line: 922, baseType: !573, size: 64, offset: 256)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !505, file: !56, line: 923, baseType: !2987, size: 64, offset: 320)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !505, file: !56, line: 929, baseType: !387, offset: 384)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !505, file: !56, line: 930, baseType: !55, size: 32, offset: 384)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !505, file: !56, line: 931, baseType: !916, size: 64, offset: 448)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !505, file: !56, line: 932, baseType: !7, size: 32, offset: 512)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !505, file: !56, line: 933, baseType: !2834, size: 32, offset: 544)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !505, file: !56, line: 934, baseType: !1315, size: 192, offset: 576)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !505, file: !56, line: 935, baseType: !673, size: 64, offset: 768)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !505, file: !56, line: 936, baseType: !3276, size: 192, offset: 832)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !56, line: 885, size: 192, elements: !3277)
!3277 = !{!3278, !3279, !3280, !3281, !3282, !3283}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3276, file: !56, line: 886, baseType: !3087)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3276, file: !56, line: 887, baseType: !1602, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3276, file: !56, line: 888, baseType: !64, size: 32, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3276, file: !56, line: 889, baseType: !579, size: 32, offset: 96)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3276, file: !56, line: 889, baseType: !579, size: 32, offset: 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3276, file: !56, line: 890, baseType: !144, size: 32, offset: 160)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !505, file: !56, line: 937, baseType: !1678, size: 64, offset: 1024)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !505, file: !56, line: 938, baseType: !3286, size: 256, offset: 1088)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !56, line: 896, size: 256, elements: !3287)
!3287 = !{!3288, !3289, !3290, !3291, !3292, !3293}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3286, file: !56, line: 897, baseType: !146, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3286, file: !56, line: 898, baseType: !7, size: 32, offset: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3286, file: !56, line: 899, baseType: !7, size: 32, offset: 96)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3286, file: !56, line: 902, baseType: !7, size: 32, offset: 128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3286, file: !56, line: 903, baseType: !7, size: 32, offset: 160)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3286, file: !56, line: 904, baseType: !673, size: 64, offset: 192)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !505, file: !56, line: 940, baseType: !151, size: 64, offset: 1344)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !505, file: !56, line: 945, baseType: !149, size: 64, offset: 1408)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !505, file: !56, line: 949, baseType: !374, size: 128, offset: 1472)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !505, file: !56, line: 950, baseType: !374, size: 128, offset: 1600)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !505, file: !56, line: 952, baseType: !879, size: 64, offset: 1728)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !505, file: !56, line: 953, baseType: !1051, size: 32, offset: 1792)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !505, file: !56, line: 954, baseType: !1051, size: 32, offset: 1824)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !495, file: !453, line: 174, baseType: !501, size: 64, offset: 320)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !495, file: !453, line: 176, baseType: !3303, size: 64, offset: 384)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!144, !504, !380, !494, !1123}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !483, file: !453, line: 90, baseType: !478, size: 64, offset: 192)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !483, file: !453, line: 91, baseType: !3308, size: 64, offset: 256)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !443, file: !368, line: 143, baseType: !3310, size: 64, offset: 256)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!3313, !380}
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3315)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !73, line: 39, size: 384, elements: !3316)
!3316 = !{!3317, !3318, !3322, !3326, !3332, !3336}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3315, file: !73, line: 40, baseType: !72, size: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3315, file: !73, line: 41, baseType: !3319, size: 64, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!328}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3315, file: !73, line: 42, baseType: !3323, size: 64, offset: 128)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!149}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3315, file: !73, line: 43, baseType: !3327, size: 64, offset: 192)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!2257, !3330}
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !73, line: 19, flags: DIFlagFwdDecl)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3315, file: !73, line: 44, baseType: !3333, size: 64, offset: 256)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!2257}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3315, file: !73, line: 45, baseType: !612, size: 64, offset: 320)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !443, file: !368, line: 144, baseType: !3338, size: 64, offset: 320)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!2257, !380}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !443, file: !368, line: 145, baseType: !3342, size: 64, offset: 384)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{null, !380, !3345, !3346}
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !367, file: !368, line: 70, baseType: !3348, size: 64, offset: 384)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !761, line: 123, size: 1024, elements: !3350)
!3350 = !{!3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3479, !3480, !3481, !3482, !3483}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3349, file: !761, line: 124, baseType: !892, size: 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3349, file: !761, line: 125, baseType: !892, size: 32, offset: 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3349, file: !761, line: 135, baseType: !3348, size: 64, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3349, file: !761, line: 136, baseType: !371, size: 64, offset: 128)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3349, file: !761, line: 138, baseType: !905, size: 192, align: 64, offset: 192)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3349, file: !761, line: 140, baseType: !2257, size: 64, offset: 384)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3349, file: !761, line: 141, baseType: !7, size: 32, offset: 448)
!3358 = !DIDerivedType(tag: DW_TAG_member, scope: !3349, file: !761, line: 142, baseType: !3359, size: 256, offset: 512)
!3359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3349, file: !761, line: 142, size: 256, elements: !3360)
!3360 = !{!3361, !3407, !3411}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3359, file: !761, line: 143, baseType: !3362, size: 192)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !761, line: 91, size: 192, elements: !3363)
!3363 = !{!3364, !3365, !3366}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3362, file: !761, line: 92, baseType: !146, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3362, file: !761, line: 94, baseType: !901, size: 64, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3362, file: !761, line: 100, baseType: !3367, size: 64, offset: 128)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !761, line: 180, size: 704, elements: !3369)
!3369 = !{!3370, !3371, !3372, !3379, !3380, !3381, !3405, !3406}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3368, file: !761, line: 182, baseType: !3348, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3368, file: !761, line: 183, baseType: !7, size: 32, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3368, file: !761, line: 186, baseType: !3373, size: 192, offset: 128)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3374, line: 19, size: 192, elements: !3375)
!3374 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3375 = !{!3376, !3377, !3378}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3373, file: !3374, line: 20, baseType: !884, size: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3373, file: !3374, line: 21, baseType: !7, size: 32, offset: 128)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3373, file: !3374, line: 22, baseType: !7, size: 32, offset: 160)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3368, file: !761, line: 187, baseType: !156, size: 32, offset: 320)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3368, file: !761, line: 188, baseType: !156, size: 32, offset: 352)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3368, file: !761, line: 189, baseType: !3382, size: 64, offset: 384)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !761, line: 168, size: 320, elements: !3384)
!3384 = !{!3385, !3389, !3393, !3397, !3401}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3383, file: !761, line: 169, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!144, !856, !3367}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3383, file: !761, line: 171, baseType: !3390, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!144, !3348, !371, !469}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3383, file: !761, line: 173, baseType: !3394, size: 64, offset: 128)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!144, !3348}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3383, file: !761, line: 174, baseType: !3398, size: 64, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!144, !3348, !3348, !371}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3383, file: !761, line: 176, baseType: !3402, size: 64, offset: 256)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!144, !856, !3348, !3367}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3368, file: !761, line: 192, baseType: !374, size: 128, offset: 448)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3368, file: !761, line: 194, baseType: !1612, size: 128, offset: 576)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3359, file: !761, line: 144, baseType: !3408, size: 64)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !761, line: 103, size: 64, elements: !3409)
!3409 = !{!3410}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3408, file: !761, line: 104, baseType: !3348, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3359, file: !761, line: 145, baseType: !3412, size: 256)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !761, line: 107, size: 256, elements: !3413)
!3413 = !{!3414, !3474, !3477, !3478}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3412, file: !761, line: 108, baseType: !3415, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3417)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !761, line: 217, size: 768, elements: !3418)
!3418 = !{!3419, !3439, !3443, !3447, !3451, !3455, !3459, !3463, !3464, !3465, !3466, !3470}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3417, file: !761, line: 222, baseType: !3420, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!144, !3423}
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !761, line: 197, size: 1088, elements: !3425)
!3425 = !{!3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3424, file: !761, line: 199, baseType: !3348, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3424, file: !761, line: 200, baseType: !504, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3424, file: !761, line: 201, baseType: !856, size: 64, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3424, file: !761, line: 202, baseType: !149, size: 64, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3424, file: !761, line: 205, baseType: !1315, size: 192, offset: 256)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3424, file: !761, line: 206, baseType: !1315, size: 192, offset: 448)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3424, file: !761, line: 207, baseType: !144, size: 32, offset: 640)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3424, file: !761, line: 208, baseType: !374, size: 128, offset: 704)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3424, file: !761, line: 209, baseType: !428, size: 64, offset: 832)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3424, file: !761, line: 211, baseType: !474, size: 64, offset: 896)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3424, file: !761, line: 212, baseType: !328, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3424, file: !761, line: 213, baseType: !328, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3424, file: !761, line: 214, baseType: !1151, size: 64, offset: 1024)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3417, file: !761, line: 223, baseType: !3440, size: 64, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{null, !3423}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3417, file: !761, line: 236, baseType: !3444, size: 64, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!144, !856, !149}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3417, file: !761, line: 238, baseType: !3448, size: 64, offset: 192)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!149, !856, !3000}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3417, file: !761, line: 239, baseType: !3452, size: 64, offset: 256)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!149, !856, !149, !3000}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3417, file: !761, line: 240, baseType: !3456, size: 64, offset: 320)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{null, !856, !149}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3417, file: !761, line: 242, baseType: !3460, size: 64, offset: 384)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!459, !3423, !428, !474, !673}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3417, file: !761, line: 252, baseType: !474, size: 64, offset: 448)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3417, file: !761, line: 259, baseType: !328, size: 8, offset: 512)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3417, file: !761, line: 260, baseType: !3460, size: 64, offset: 576)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3417, file: !761, line: 263, baseType: !3467, size: 64, offset: 640)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!3029, !3423, !3031}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3417, file: !761, line: 266, baseType: !3471, size: 64, offset: 704)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!144, !3423, !1123}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3412, file: !761, line: 109, baseType: !3475, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !761, line: 31, flags: DIFlagFwdDecl)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3412, file: !761, line: 110, baseType: !673, size: 64, offset: 128)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3412, file: !761, line: 111, baseType: !3348, size: 64, offset: 192)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3349, file: !761, line: 148, baseType: !149, size: 64, offset: 768)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3349, file: !761, line: 154, baseType: !151, size: 64, offset: 832)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3349, file: !761, line: 156, baseType: !169, size: 16, offset: 896)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3349, file: !761, line: 157, baseType: !469, size: 16, offset: 912)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3349, file: !761, line: 158, baseType: !3484, size: 64, offset: 960)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !761, line: 32, flags: DIFlagFwdDecl)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !367, file: !368, line: 71, baseType: !3487, size: 32, offset: 448)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3488, line: 19, size: 32, elements: !3489)
!3488 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3489 = !{!3490}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3487, file: !3488, line: 20, baseType: !1372, size: 32)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !367, file: !368, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !367, file: !368, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !367, file: !368, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !367, file: !368, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !367, file: !368, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !364, file: !85, line: 463, baseType: !3497, size: 64, offset: 512)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !364, file: !85, line: 465, baseType: !3499, size: 64, offset: 576)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !85, line: 36, flags: DIFlagFwdDecl)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !364, file: !85, line: 467, baseType: !371, size: 64, offset: 640)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !364, file: !85, line: 468, baseType: !3503, size: 64, offset: 704)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3505)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !85, line: 87, size: 384, elements: !3506)
!3506 = !{!3507, !3508, !3509, !3513, !3518, !3522}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3505, file: !85, line: 88, baseType: !371, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3505, file: !85, line: 89, baseType: !480, size: 64, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3505, file: !85, line: 90, baseType: !3510, size: 64, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!144, !3497, !423}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3505, file: !85, line: 91, baseType: !3514, size: 64, offset: 192)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!428, !3497, !3517, !3345, !3346}
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3505, file: !85, line: 93, baseType: !3519, size: 64, offset: 256)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{null, !3497}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3505, file: !85, line: 95, baseType: !3523, size: 64, offset: 320)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3525)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !92, line: 278, size: 1472, elements: !3526)
!3526 = !{!3527, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3525, file: !92, line: 279, baseType: !3528, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!144, !3497}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3525, file: !92, line: 280, baseType: !3519, size: 64, offset: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3525, file: !92, line: 281, baseType: !3528, size: 64, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3525, file: !92, line: 282, baseType: !3528, size: 64, offset: 192)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3525, file: !92, line: 283, baseType: !3528, size: 64, offset: 256)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3525, file: !92, line: 284, baseType: !3528, size: 64, offset: 320)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3525, file: !92, line: 285, baseType: !3528, size: 64, offset: 384)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3525, file: !92, line: 286, baseType: !3528, size: 64, offset: 448)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3525, file: !92, line: 287, baseType: !3528, size: 64, offset: 512)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3525, file: !92, line: 288, baseType: !3528, size: 64, offset: 576)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3525, file: !92, line: 289, baseType: !3528, size: 64, offset: 640)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3525, file: !92, line: 290, baseType: !3528, size: 64, offset: 704)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3525, file: !92, line: 291, baseType: !3528, size: 64, offset: 768)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3525, file: !92, line: 292, baseType: !3528, size: 64, offset: 832)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3525, file: !92, line: 293, baseType: !3528, size: 64, offset: 896)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3525, file: !92, line: 294, baseType: !3528, size: 64, offset: 960)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3525, file: !92, line: 295, baseType: !3528, size: 64, offset: 1024)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3525, file: !92, line: 296, baseType: !3528, size: 64, offset: 1088)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3525, file: !92, line: 297, baseType: !3528, size: 64, offset: 1152)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3525, file: !92, line: 298, baseType: !3528, size: 64, offset: 1216)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3525, file: !92, line: 299, baseType: !3528, size: 64, offset: 1280)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3525, file: !92, line: 300, baseType: !3528, size: 64, offset: 1344)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3525, file: !92, line: 301, baseType: !3528, size: 64, offset: 1408)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !364, file: !85, line: 470, baseType: !3554, size: 64, offset: 768)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3556, line: 82, size: 1408, elements: !3557)
!3556 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3557 = !{!3558, !3559, !3560, !3561, !3562, !3563, !3564, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3639, !3642, !3643}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3555, file: !3556, line: 83, baseType: !371, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3555, file: !3556, line: 84, baseType: !371, size: 64, offset: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3555, file: !3556, line: 85, baseType: !3497, size: 64, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3555, file: !3556, line: 86, baseType: !480, size: 64, offset: 192)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3555, file: !3556, line: 87, baseType: !480, size: 64, offset: 256)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3555, file: !3556, line: 88, baseType: !480, size: 64, offset: 320)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3555, file: !3556, line: 90, baseType: !3565, size: 64, offset: 384)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!144, !3497, !3568}
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !79, line: 95, size: 1152, elements: !3570)
!3570 = !{!3571, !3572, !3573, !3574, !3575, !3576, !3577, !3590, !3603, !3604, !3605, !3606, !3607, !3615, !3616, !3617, !3618, !3619, !3620}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3569, file: !79, line: 96, baseType: !371, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3569, file: !79, line: 97, baseType: !3554, size: 64, offset: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3569, file: !79, line: 99, baseType: !775, size: 64, offset: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3569, file: !79, line: 100, baseType: !371, size: 64, offset: 192)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3569, file: !79, line: 102, baseType: !328, size: 8, offset: 256)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3569, file: !79, line: 103, baseType: !78, size: 32, offset: 288)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3569, file: !79, line: 105, baseType: !3578, size: 64, offset: 320)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3580)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3581, line: 262, size: 1600, elements: !3582)
!3581 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3582 = !{!3583, !3584, !3585, !3589}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3580, file: !3581, line: 263, baseType: !226, size: 256)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3580, file: !3581, line: 264, baseType: !226, size: 256, offset: 256)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3580, file: !3581, line: 265, baseType: !3586, size: 1024, offset: 512)
!3586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 1024, elements: !3587)
!3587 = !{!3588}
!3588 = !DISubrange(count: 128)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3580, file: !3581, line: 266, baseType: !2257, size: 64, offset: 1536)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3569, file: !79, line: 106, baseType: !3591, size: 64, offset: 384)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3593)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3581, line: 210, size: 256, elements: !3594)
!3594 = !{!3595, !3599, !3601, !3602}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3593, file: !3581, line: 211, baseType: !3596, size: 72)
!3596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 72, elements: !3597)
!3597 = !{!3598}
!3598 = !DISubrange(count: 9)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3593, file: !3581, line: 212, baseType: !3600, size: 64, offset: 128)
!3600 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3581, line: 14, baseType: !146)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3593, file: !3581, line: 213, baseType: !157, size: 32, offset: 192)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3593, file: !3581, line: 214, baseType: !157, size: 32, offset: 224)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3569, file: !79, line: 108, baseType: !3528, size: 64, offset: 448)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3569, file: !79, line: 109, baseType: !3519, size: 64, offset: 512)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3569, file: !79, line: 110, baseType: !3528, size: 64, offset: 576)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3569, file: !79, line: 111, baseType: !3519, size: 64, offset: 640)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3569, file: !79, line: 112, baseType: !3608, size: 64, offset: 704)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!144, !3497, !3611}
!3611 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !92, line: 52, baseType: !3612)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !92, line: 50, size: 32, elements: !3613)
!3613 = !{!3614}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3612, file: !92, line: 51, baseType: !144, size: 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3569, file: !79, line: 113, baseType: !3528, size: 64, offset: 768)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3569, file: !79, line: 114, baseType: !480, size: 64, offset: 832)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3569, file: !79, line: 115, baseType: !480, size: 64, offset: 896)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3569, file: !79, line: 117, baseType: !3523, size: 64, offset: 960)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3569, file: !79, line: 118, baseType: !3519, size: 64, offset: 1024)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3569, file: !79, line: 120, baseType: !3621, size: 64, offset: 1088)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !79, line: 120, flags: DIFlagFwdDecl)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3555, file: !3556, line: 91, baseType: !3510, size: 64, offset: 448)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3555, file: !3556, line: 92, baseType: !3528, size: 64, offset: 512)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3555, file: !3556, line: 93, baseType: !3519, size: 64, offset: 576)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3555, file: !3556, line: 94, baseType: !3528, size: 64, offset: 640)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3555, file: !3556, line: 95, baseType: !3519, size: 64, offset: 704)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3555, file: !3556, line: 97, baseType: !3528, size: 64, offset: 768)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3555, file: !3556, line: 98, baseType: !3528, size: 64, offset: 832)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3555, file: !3556, line: 100, baseType: !3608, size: 64, offset: 896)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3555, file: !3556, line: 101, baseType: !3528, size: 64, offset: 960)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3555, file: !3556, line: 103, baseType: !3528, size: 64, offset: 1024)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3555, file: !3556, line: 105, baseType: !3528, size: 64, offset: 1088)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3555, file: !3556, line: 107, baseType: !3523, size: 64, offset: 1152)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3555, file: !3556, line: 109, baseType: !3636, size: 64, offset: 1216)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3638)
!3638 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3556, line: 109, flags: DIFlagFwdDecl)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3555, file: !3556, line: 111, baseType: !3640, size: 64, offset: 1280)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3556, line: 111, flags: DIFlagFwdDecl)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3555, file: !3556, line: 112, baseType: !790, offset: 1344)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3555, file: !3556, line: 114, baseType: !328, size: 8, offset: 1344)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !364, file: !85, line: 471, baseType: !3568, size: 64, offset: 832)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !364, file: !85, line: 473, baseType: !149, size: 64, offset: 896)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !364, file: !85, line: 475, baseType: !149, size: 64, offset: 960)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !364, file: !85, line: 480, baseType: !1315, size: 192, offset: 1024)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !364, file: !85, line: 484, baseType: !3649, size: 576, offset: 1216)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !85, line: 361, size: 576, elements: !3650)
!3650 = !{!3651, !3652, !3653, !3654, !3655, !3656}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3649, file: !85, line: 362, baseType: !374, size: 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3649, file: !85, line: 363, baseType: !374, size: 128, offset: 128)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3649, file: !85, line: 364, baseType: !374, size: 128, offset: 256)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3649, file: !85, line: 365, baseType: !374, size: 128, offset: 384)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3649, file: !85, line: 366, baseType: !328, size: 8, offset: 512)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3649, file: !85, line: 367, baseType: !84, size: 32, offset: 544)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !364, file: !85, line: 485, baseType: !3658, size: 2304, offset: 1792)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !92, line: 565, size: 2304, elements: !3659)
!3659 = !{!3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3755, !3759}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3658, file: !92, line: 566, baseType: !3611, size: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3658, file: !92, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3658, file: !92, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3658, file: !92, line: 569, baseType: !328, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3658, file: !92, line: 570, baseType: !328, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3658, file: !92, line: 571, baseType: !328, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3658, file: !92, line: 572, baseType: !328, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3658, file: !92, line: 573, baseType: !328, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3658, file: !92, line: 574, baseType: !328, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3658, file: !92, line: 575, baseType: !328, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3658, file: !92, line: 576, baseType: !328, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3658, file: !92, line: 577, baseType: !156, size: 32, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3658, file: !92, line: 578, baseType: !387, offset: 96)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3658, file: !92, line: 580, baseType: !374, size: 128, offset: 128)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3658, file: !92, line: 581, baseType: !1633, size: 192, offset: 256)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3658, file: !92, line: 582, baseType: !3676, size: 64, offset: 448)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3678, line: 43, size: 1472, elements: !3679)
!3678 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3679 = !{!3680, !3681, !3682, !3683, !3684, !3687, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3677, file: !3678, line: 44, baseType: !371, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3677, file: !3678, line: 45, baseType: !144, size: 32, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3677, file: !3678, line: 46, baseType: !374, size: 128, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3677, file: !3678, line: 47, baseType: !387, offset: 256)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3677, file: !3678, line: 48, baseType: !3685, size: 64, offset: 256)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !92, line: 533, flags: DIFlagFwdDecl)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3677, file: !3678, line: 49, baseType: !3688, size: 320, offset: 320)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3689, line: 11, size: 320, elements: !3690)
!3689 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3690 = !{!3691, !3692, !3693, !3698}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3688, file: !3689, line: 16, baseType: !784, size: 128)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3688, file: !3689, line: 17, baseType: !146, size: 64, offset: 128)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3688, file: !3689, line: 18, baseType: !3694, size: 64, offset: 192)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{null, !3697}
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3688, file: !3689, line: 19, baseType: !156, size: 32, offset: 256)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3677, file: !3678, line: 50, baseType: !146, size: 64, offset: 640)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3677, file: !3678, line: 51, baseType: !1442, size: 64, offset: 704)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3677, file: !3678, line: 52, baseType: !1442, size: 64, offset: 768)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3677, file: !3678, line: 53, baseType: !1442, size: 64, offset: 832)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3677, file: !3678, line: 54, baseType: !1442, size: 64, offset: 896)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3677, file: !3678, line: 55, baseType: !1442, size: 64, offset: 960)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3677, file: !3678, line: 56, baseType: !146, size: 64, offset: 1024)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3677, file: !3678, line: 57, baseType: !146, size: 64, offset: 1088)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3677, file: !3678, line: 58, baseType: !146, size: 64, offset: 1152)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3677, file: !3678, line: 59, baseType: !146, size: 64, offset: 1216)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3677, file: !3678, line: 60, baseType: !146, size: 64, offset: 1280)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3677, file: !3678, line: 61, baseType: !3497, size: 64, offset: 1344)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3677, file: !3678, line: 62, baseType: !328, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3677, file: !3678, line: 63, baseType: !328, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3658, file: !92, line: 583, baseType: !328, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3658, file: !92, line: 584, baseType: !328, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3658, file: !92, line: 585, baseType: !328, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3658, file: !92, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3658, file: !92, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3658, file: !92, line: 592, baseType: !1434, size: 512, offset: 576)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3658, file: !92, line: 593, baseType: !151, size: 64, offset: 1088)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3658, file: !92, line: 594, baseType: !2087, size: 256, offset: 1152)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3658, file: !92, line: 595, baseType: !1612, size: 128, offset: 1408)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3658, file: !92, line: 596, baseType: !3685, size: 64, offset: 1536)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3658, file: !92, line: 597, baseType: !892, size: 32, offset: 1600)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3658, file: !92, line: 598, baseType: !892, size: 32, offset: 1632)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3658, file: !92, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3658, file: !92, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3658, file: !92, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3658, file: !92, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3658, file: !92, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3658, file: !92, line: 604, baseType: !328, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3658, file: !92, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3658, file: !92, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3658, file: !92, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3658, file: !92, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3658, file: !92, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3658, file: !92, line: 610, baseType: !7, size: 32, offset: 1696)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3658, file: !92, line: 611, baseType: !91, size: 32, offset: 1728)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3658, file: !92, line: 612, baseType: !99, size: 32, offset: 1760)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3658, file: !92, line: 613, baseType: !144, size: 32, offset: 1792)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3658, file: !92, line: 614, baseType: !144, size: 32, offset: 1824)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3658, file: !92, line: 615, baseType: !151, size: 64, offset: 1856)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3658, file: !92, line: 616, baseType: !151, size: 64, offset: 1920)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3658, file: !92, line: 617, baseType: !151, size: 64, offset: 1984)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3658, file: !92, line: 618, baseType: !151, size: 64, offset: 2048)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3658, file: !92, line: 620, baseType: !3746, size: 64, offset: 2112)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !92, line: 536, size: 256, elements: !3748)
!3748 = !{!3749, !3750, !3751, !3752}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3747, file: !92, line: 537, baseType: !387)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3747, file: !92, line: 538, baseType: !7, size: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3747, file: !92, line: 540, baseType: !374, size: 128, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3747, file: !92, line: 543, baseType: !3753, size: 64, offset: 192)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !92, line: 534, flags: DIFlagFwdDecl)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3658, file: !92, line: 621, baseType: !3756, size: 64, offset: 2176)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{null, !3497, !1575}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3658, file: !92, line: 622, baseType: !3760, size: 64, offset: 2240)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !106, line: 117, size: 2304, elements: !3762)
!3762 = !{!3763, !3792, !3793, !3800, !3805, !3832, !3833}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !3761, file: !106, line: 118, baseType: !3764, size: 320)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !106, line: 52, size: 320, elements: !3765)
!3765 = !{!3766, !3771, !3772, !3773, !3774, !3775}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3764, file: !106, line: 53, baseType: !3767, size: 128)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !3768, line: 79, size: 128, elements: !3769)
!3768 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/lizy2001/genbc/linux")
!3769 = !{!3770}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3767, file: !3768, line: 80, baseType: !374, size: 128)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !3764, file: !106, line: 54, baseType: !1575, size: 32, offset: 128)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !3764, file: !106, line: 55, baseType: !1575, size: 32, offset: 160)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !3764, file: !106, line: 56, baseType: !1575, size: 32, offset: 192)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3764, file: !106, line: 57, baseType: !105, size: 32, offset: 224)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !3764, file: !106, line: 58, baseType: !3776, size: 64, offset: 256)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !3778, line: 65, size: 320, elements: !3779)
!3778 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!3779 = !{!3780, !3781}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !3777, file: !3778, line: 66, baseType: !912, size: 256)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3777, file: !3778, line: 67, baseType: !3782, size: 64, offset: 256)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !3778, line: 54, size: 192, elements: !3784)
!3784 = !{!3785, !3790, !3791}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !3783, file: !3778, line: 55, baseType: !3786, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !3778, line: 51, baseType: !3787)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!144, !3782, !146, !149}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3783, file: !3778, line: 56, baseType: !3782, size: 64, offset: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3783, file: !3778, line: 57, baseType: !144, size: 32, offset: 128)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !3761, file: !106, line: 119, baseType: !3764, size: 320, offset: 320)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3761, file: !106, line: 120, baseType: !3794, size: 1280, offset: 640)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !106, line: 85, size: 1280, elements: !3795)
!3795 = !{!3796, !3797, !3798, !3799}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !3794, file: !106, line: 86, baseType: !3764, size: 320)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !3794, file: !106, line: 87, baseType: !3777, size: 320, offset: 320)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !3794, file: !106, line: 88, baseType: !3764, size: 320, offset: 640)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !3794, file: !106, line: 89, baseType: !3777, size: 320, offset: 960)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3761, file: !106, line: 121, baseType: !3801, size: 192, offset: 1920)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !106, line: 71, size: 192, elements: !3802)
!3802 = !{!3803, !3804}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3801, file: !106, line: 72, baseType: !374, size: 128)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !3801, file: !106, line: 73, baseType: !1575, size: 32, offset: 128)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !3761, file: !106, line: 122, baseType: !3806, size: 64, offset: 2112)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !106, line: 107, size: 576, elements: !3808)
!3808 = !{!3809, !3810, !3831}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3807, file: !106, line: 108, baseType: !111, size: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3807, file: !106, line: 113, baseType: !3811, size: 448, offset: 64)
!3811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3807, file: !106, line: 109, size: 448, elements: !3812)
!3812 = !{!3813, !3819, !3824}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !3811, file: !106, line: 110, baseType: !3814, size: 320)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3768, line: 83, size: 320, elements: !3815)
!3815 = !{!3816, !3817, !3818}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3814, file: !3768, line: 84, baseType: !144, size: 32)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3814, file: !3768, line: 85, baseType: !374, size: 128, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3814, file: !3768, line: 86, baseType: !374, size: 128, offset: 192)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !3811, file: !106, line: 111, baseType: !3820, size: 192)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !106, line: 66, size: 192, elements: !3821)
!3821 = !{!3822, !3823}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3820, file: !106, line: 67, baseType: !374, size: 128)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3820, file: !106, line: 68, baseType: !1575, size: 32, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3811, file: !106, line: 112, baseType: !3825, size: 448)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !106, line: 92, size: 448, elements: !3826)
!3826 = !{!3827, !3828, !3829}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3825, file: !106, line: 93, baseType: !118, size: 32)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !3825, file: !106, line: 94, baseType: !3814, size: 320, offset: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3825, file: !106, line: 95, baseType: !3830, size: 64, offset: 384)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3807, file: !106, line: 114, baseType: !3497, size: 64, offset: 512)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !3761, file: !106, line: 123, baseType: !3806, size: 64, offset: 2176)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !3761, file: !106, line: 124, baseType: !3806, size: 64, offset: 2240)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !364, file: !85, line: 486, baseType: !3835, size: 64, offset: 4096)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !92, line: 642, size: 1792, elements: !3837)
!3837 = !{!3838, !3839, !3840, !3844, !3845, !3846}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3836, file: !92, line: 643, baseType: !3525, size: 1472)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3836, file: !92, line: 644, baseType: !3528, size: 64, offset: 1472)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3836, file: !92, line: 645, baseType: !3841, size: 64, offset: 1536)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{null, !3497, !328}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3836, file: !92, line: 646, baseType: !3528, size: 64, offset: 1600)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3836, file: !92, line: 647, baseType: !3519, size: 64, offset: 1664)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3836, file: !92, line: 648, baseType: !3519, size: 64, offset: 1728)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !364, file: !85, line: 493, baseType: !3848, size: 64, offset: 4160)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !123, line: 162, size: 1088, elements: !3850)
!3850 = !{!3851, !3852, !3853, !4025, !4026, !4027, !4028, !4029, !4030, !4033, !4034, !4035, !4036, !4037, !4038, !4039}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3849, file: !123, line: 163, baseType: !374, size: 128)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3849, file: !123, line: 164, baseType: !371, size: 64, offset: 128)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3849, file: !123, line: 165, baseType: !3854, size: 64, offset: 192)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3856)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !123, line: 105, size: 640, elements: !3857)
!3857 = !{!3858, !3976, !3987, !3992, !3996, !4002, !4006, !4010, !4017, !4021}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3856, file: !123, line: 106, baseType: !3859, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!144, !3848, !3862, !122}
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3864, line: 51, size: 1344, elements: !3865)
!3864 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3865 = !{!3866, !3867, !3869, !3870, !3960, !3969, !3970, !3971, !3972, !3973, !3974, !3975}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3863, file: !3864, line: 52, baseType: !371, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3863, file: !3864, line: 53, baseType: !3868, size: 32, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3864, line: 28, baseType: !156)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3863, file: !3864, line: 54, baseType: !371, size: 64, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3863, file: !3864, line: 55, baseType: !3871, size: 192, offset: 192)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3872, line: 17, size: 192, elements: !3873)
!3872 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3873 = !{!3874, !3876, !3959}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3871, file: !3872, line: 18, baseType: !3875, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3871, file: !3872, line: 19, baseType: !3877, size: 64, offset: 64)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3879)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3872, line: 110, size: 1152, elements: !3880)
!3880 = !{!3881, !3885, !3889, !3895, !3901, !3905, !3909, !3914, !3918, !3919, !3923, !3927, !3931, !3942, !3943, !3944, !3945, !3955}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3879, file: !3872, line: 111, baseType: !3882, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!3875, !3875}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3879, file: !3872, line: 112, baseType: !3886, size: 64, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{null, !3875}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3879, file: !3872, line: 113, baseType: !3890, size: 64, offset: 128)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!328, !3893}
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3871)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3879, file: !3872, line: 114, baseType: !3896, size: 64, offset: 192)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!2257, !3893, !3899}
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3879, file: !3872, line: 116, baseType: !3902, size: 64, offset: 256)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!328, !3893, !371}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3879, file: !3872, line: 118, baseType: !3906, size: 64, offset: 320)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!144, !3893, !371, !7, !149, !474}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3879, file: !3872, line: 123, baseType: !3910, size: 64, offset: 384)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!144, !3893, !371, !3913, !474}
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3879, file: !3872, line: 126, baseType: !3915, size: 64, offset: 448)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!371, !3893}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3879, file: !3872, line: 127, baseType: !3915, size: 64, offset: 512)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3879, file: !3872, line: 128, baseType: !3920, size: 64, offset: 576)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!3875, !3893}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3879, file: !3872, line: 130, baseType: !3924, size: 64, offset: 640)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!3875, !3893, !3875}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3879, file: !3872, line: 133, baseType: !3928, size: 64, offset: 704)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!3875, !3893, !371}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3879, file: !3872, line: 135, baseType: !3932, size: 64, offset: 768)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!144, !3893, !371, !371, !7, !7, !3935}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3872, line: 43, size: 640, elements: !3937)
!3937 = !{!3938, !3939, !3940}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3936, file: !3872, line: 44, baseType: !3875, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3936, file: !3872, line: 45, baseType: !7, size: 32, offset: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3936, file: !3872, line: 46, baseType: !3941, size: 512, offset: 128)
!3941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 512, elements: !230)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3879, file: !3872, line: 140, baseType: !3924, size: 64, offset: 832)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3879, file: !3872, line: 143, baseType: !3920, size: 64, offset: 896)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3879, file: !3872, line: 145, baseType: !3882, size: 64, offset: 960)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3879, file: !3872, line: 146, baseType: !3946, size: 64, offset: 1024)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!144, !3893, !3949}
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3872, line: 29, size: 128, elements: !3951)
!3951 = !{!3952, !3953, !3954}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3950, file: !3872, line: 30, baseType: !7, size: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3950, file: !3872, line: 31, baseType: !7, size: 32, offset: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3950, file: !3872, line: 32, baseType: !3893, size: 64, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3879, file: !3872, line: 148, baseType: !3956, size: 64, offset: 1088)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!144, !3893, !3497}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3871, file: !3872, line: 20, baseType: !3497, size: 64, offset: 128)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3863, file: !3864, line: 57, baseType: !3961, size: 64, offset: 384)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3864, line: 31, size: 704, elements: !3963)
!3963 = !{!3964, !3965, !3966, !3967, !3968}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3962, file: !3864, line: 32, baseType: !428, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3962, file: !3864, line: 33, baseType: !144, size: 32, offset: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3962, file: !3864, line: 34, baseType: !149, size: 64, offset: 128)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3962, file: !3864, line: 35, baseType: !3961, size: 64, offset: 192)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3962, file: !3864, line: 43, baseType: !495, size: 448, offset: 256)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3863, file: !3864, line: 58, baseType: !3961, size: 64, offset: 448)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3863, file: !3864, line: 59, baseType: !3862, size: 64, offset: 512)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3863, file: !3864, line: 60, baseType: !3862, size: 64, offset: 576)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3863, file: !3864, line: 61, baseType: !3862, size: 64, offset: 640)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3863, file: !3864, line: 63, baseType: !367, size: 512, offset: 704)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3863, file: !3864, line: 65, baseType: !146, size: 64, offset: 1216)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3863, file: !3864, line: 66, baseType: !149, size: 64, offset: 1280)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3856, file: !123, line: 108, baseType: !3977, size: 64, offset: 64)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!144, !3848, !3980, !122}
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !123, line: 63, size: 640, elements: !3982)
!3982 = !{!3983, !3984, !3985}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3981, file: !123, line: 64, baseType: !3875, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3981, file: !123, line: 65, baseType: !144, size: 32, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3981, file: !123, line: 66, baseType: !3986, size: 512, offset: 96)
!3986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 512, elements: !341)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3856, file: !123, line: 110, baseType: !3988, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!144, !3848, !7, !3991}
!3991 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !178, line: 164, baseType: !146)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3856, file: !123, line: 111, baseType: !3993, size: 64, offset: 192)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{null, !3848, !7}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3856, file: !123, line: 112, baseType: !3997, size: 64, offset: 256)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!144, !3848, !3862, !4000, !7, !145, !2808}
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3856, file: !123, line: 117, baseType: !4003, size: 64, offset: 320)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!144, !3848, !7, !7, !149}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3856, file: !123, line: 119, baseType: !4007, size: 64, offset: 384)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{null, !3848, !7, !7}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3856, file: !123, line: 121, baseType: !4011, size: 64, offset: 448)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!144, !3848, !4014, !328}
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4016, line: 11, flags: DIFlagFwdDecl)
!4016 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3856, file: !123, line: 122, baseType: !4018, size: 64, offset: 512)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{null, !3848, !4014}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3856, file: !123, line: 123, baseType: !4022, size: 64, offset: 576)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!144, !3848, !3980, !145, !2808}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3849, file: !123, line: 166, baseType: !149, size: 64, offset: 256)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3849, file: !123, line: 167, baseType: !7, size: 32, offset: 320)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3849, file: !123, line: 168, baseType: !7, size: 32, offset: 352)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3849, file: !123, line: 171, baseType: !3875, size: 64, offset: 384)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3849, file: !123, line: 172, baseType: !122, size: 32, offset: 448)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3849, file: !123, line: 173, baseType: !4031, size: 64, offset: 512)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !123, line: 134, flags: DIFlagFwdDecl)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3849, file: !123, line: 175, baseType: !3848, size: 64, offset: 576)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3849, file: !123, line: 182, baseType: !3991, size: 64, offset: 640)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3849, file: !123, line: 183, baseType: !7, size: 32, offset: 704)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3849, file: !123, line: 184, baseType: !7, size: 32, offset: 736)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3849, file: !123, line: 185, baseType: !884, size: 128, offset: 768)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3849, file: !123, line: 186, baseType: !1315, size: 192, offset: 896)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3849, file: !123, line: 187, baseType: !4040, offset: 1088)
!4040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2456)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !364, file: !85, line: 499, baseType: !374, size: 128, offset: 4224)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !364, file: !85, line: 502, baseType: !4043, size: 64, offset: 4352)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4045)
!4045 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !85, line: 502, flags: DIFlagFwdDecl)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !364, file: !85, line: 504, baseType: !4047, size: 64, offset: 4416)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !364, file: !85, line: 505, baseType: !151, size: 64, offset: 4480)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !364, file: !85, line: 510, baseType: !151, size: 64, offset: 4544)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !364, file: !85, line: 511, baseType: !4051, size: 64, offset: 4608)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4053)
!4053 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !85, line: 511, flags: DIFlagFwdDecl)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !364, file: !85, line: 513, baseType: !4055, size: 64, offset: 4672)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !85, line: 288, size: 128, elements: !4057)
!4057 = !{!4058, !4059}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4056, file: !85, line: 293, baseType: !7, size: 32)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4056, file: !85, line: 294, baseType: !146, size: 64, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !364, file: !85, line: 515, baseType: !374, size: 128, offset: 4736)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !364, file: !85, line: 526, baseType: !4062, offset: 4864)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4063, line: 5, elements: !401)
!4063 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !364, file: !85, line: 528, baseType: !3862, size: 64, offset: 4864)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !364, file: !85, line: 529, baseType: !3875, size: 64, offset: 4928)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !364, file: !85, line: 534, baseType: !655, size: 32, offset: 4992)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !364, file: !85, line: 535, baseType: !156, size: 32, offset: 5024)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !364, file: !85, line: 537, baseType: !387, offset: 5056)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !364, file: !85, line: 538, baseType: !374, size: 128, offset: 5056)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !364, file: !85, line: 540, baseType: !4071, size: 64, offset: 5184)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4073, line: 54, size: 960, elements: !4074)
!4073 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4074 = !{!4075, !4076, !4077, !4078, !4079, !4080, !4081, !4085, !4089, !4090, !4091, !4092, !4096, !4100, !4101}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4072, file: !4073, line: 55, baseType: !371, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4072, file: !4073, line: 56, baseType: !775, size: 64, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4072, file: !4073, line: 58, baseType: !480, size: 64, offset: 128)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4072, file: !4073, line: 59, baseType: !480, size: 64, offset: 192)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4072, file: !4073, line: 60, baseType: !380, size: 64, offset: 256)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4072, file: !4073, line: 62, baseType: !3510, size: 64, offset: 320)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4072, file: !4073, line: 63, baseType: !4082, size: 64, offset: 384)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!428, !3497, !3517}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4072, file: !4073, line: 65, baseType: !4086, size: 64, offset: 448)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{null, !4071}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4072, file: !4073, line: 66, baseType: !3519, size: 64, offset: 512)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4072, file: !4073, line: 68, baseType: !3528, size: 64, offset: 576)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4072, file: !4073, line: 70, baseType: !3313, size: 64, offset: 640)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4072, file: !4073, line: 71, baseType: !4093, size: 64, offset: 704)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!2257, !3497}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4072, file: !4073, line: 73, baseType: !4097, size: 64, offset: 768)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{null, !3497, !3345, !3346}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4072, file: !4073, line: 75, baseType: !3523, size: 64, offset: 832)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4072, file: !4073, line: 77, baseType: !3640, size: 64, offset: 896)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !364, file: !85, line: 541, baseType: !480, size: 64, offset: 5248)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !364, file: !85, line: 543, baseType: !3519, size: 64, offset: 5312)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !364, file: !85, line: 544, baseType: !4105, size: 64, offset: 5376)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !85, line: 45, flags: DIFlagFwdDecl)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !364, file: !85, line: 545, baseType: !4108, size: 64, offset: 5440)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !85, line: 47, flags: DIFlagFwdDecl)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !364, file: !85, line: 547, baseType: !328, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !364, file: !85, line: 548, baseType: !328, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !364, file: !85, line: 549, baseType: !328, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !364, file: !85, line: 550, baseType: !328, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !355, file: !356, line: 97, baseType: !3862, size: 64, offset: 5760)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !355, file: !356, line: 98, baseType: !149, size: 64, offset: 5824)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !355, file: !356, line: 99, baseType: !149, size: 64, offset: 5888)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !355, file: !356, line: 100, baseType: !4118, size: 64, offset: 5952)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4120)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !356, line: 84, size: 384, elements: !4121)
!4121 = !{!4122, !4126, !4127, !4131, !4135, !4139}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !4120, file: !356, line: 85, baseType: !4123, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!144, !354, !145}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !4120, file: !356, line: 86, baseType: !4123, size: 64, offset: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !4120, file: !356, line: 87, baseType: !4128, size: 64, offset: 128)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!144, !354, !146}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !4120, file: !356, line: 88, baseType: !4132, size: 64, offset: 192)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!144, !354, !1546}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !4120, file: !356, line: 89, baseType: !4136, size: 64, offset: 256)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!144, !354, !146, !1546}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !4120, file: !356, line: 90, baseType: !4140, size: 64, offset: 320)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!144, !354, !156, !145}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !355, file: !356, line: 101, baseType: !328, size: 8, offset: 6016)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !355, file: !356, line: 102, baseType: !1315, size: 192, offset: 6080)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !355, file: !356, line: 103, baseType: !374, size: 128, offset: 6272)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !355, file: !356, line: 104, baseType: !374, size: 128, offset: 6400)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !182, file: !160, line: 234, baseType: !3497, size: 64, offset: 6976)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "perflib_req", scope: !182, file: !160, line: 235, baseType: !3825, size: 448, offset: 7040)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_req", scope: !182, file: !160, line: 236, baseType: !3825, size: 448, offset: 7488)
!4150 = !{!4151, !4154, !4156, !0, !4168, !4170, !4173, !4175, !4177, !4458, !4461, !4464, !4466, !4468, !4470}
!4151 = !DIGlobalVariableExpression(var: !4152, expr: !DIExpression())
!4152 = distinct !DIGlobalVariable(name: "cst_control_claimed", scope: !4153, file: !3, line: 714, type: !328, isLocal: true, isDefinition: true)
!4153 = distinct !DISubprogram(name: "acpi_processor_claim_cst_control", scope: !3, file: !3, line: 712, type: !3320, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !401)
!4154 = !DIGlobalVariableExpression(var: !4155, expr: !DIExpression())
!4155 = distinct !DIGlobalVariable(name: "processors", scope: !2, file: !3, line: 29, type: !181, isLocal: false, isDefinition: true)
!4156 = !DIGlobalVariableExpression(var: !4157, expr: !DIExpression())
!4157 = distinct !DIGlobalVariable(name: "errata", scope: !2, file: !3, line: 36, type: !4158, isLocal: false, isDefinition: true)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_errata", file: !160, line: 239, size: 96, elements: !4159)
!4159 = !{!4160, !4161}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "smp", scope: !4158, file: !160, line: 240, baseType: !163, size: 8)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "piix4", scope: !4158, file: !160, line: 246, baseType: !4162, size: 64, offset: 32)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4158, file: !160, line: 241, size: 64, elements: !4163)
!4163 = !{!4164, !4165, !4166, !4167}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !4162, file: !160, line: 242, baseType: !163, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "fdma", scope: !4162, file: !160, line: 243, baseType: !163, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4162, file: !160, line: 244, baseType: !163, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "bmisx", scope: !4162, file: !160, line: 245, baseType: !156, size: 32, offset: 32)
!4168 = !DIGlobalVariableExpression(var: !4169, expr: !DIExpression())
!4169 = distinct !DIGlobalVariable(name: "acpi_hwp_native_thermal_lvt_set", scope: !2, file: !3, line: 492, type: !328, isLocal: true, isDefinition: true)
!4170 = !DIGlobalVariableExpression(var: !4171, expr: !DIExpression())
!4171 = distinct !DIGlobalVariable(name: "duplicate_processor_ids", scope: !2, file: !3, line: 594, type: !4172, isLocal: true, isDefinition: true)
!4172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 32, elements: !291)
!4173 = !DIGlobalVariableExpression(var: !4174, expr: !DIExpression())
!4174 = distinct !DIGlobalVariable(name: "nr_unique_ids", scope: !2, file: !3, line: 583, type: !144, isLocal: true, isDefinition: true)
!4175 = !DIGlobalVariableExpression(var: !4176, expr: !DIExpression())
!4176 = distinct !DIGlobalVariable(name: "unique_processor_ids", scope: !2, file: !3, line: 589, type: !4172, isLocal: true, isDefinition: true)
!4177 = !DIGlobalVariableExpression(var: !4178, expr: !DIExpression())
!4178 = distinct !DIGlobalVariable(name: "processor_handler", scope: !2, file: !3, line: 555, type: !4179, isLocal: true, isDefinition: true)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !4180, line: 122, size: 1216, elements: !4181)
!4180 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!4181 = !{!4182, !4183, !4184, !4189, !4447, !4448, !4449, !4450}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4179, file: !4180, line: 123, baseType: !3591, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !4179, file: !4180, line: 124, baseType: !374, size: 128, offset: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4179, file: !4180, line: 125, baseType: !4185, size: 64, offset: 192)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!328, !371, !4188}
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4179, file: !4180, line: 126, baseType: !4190, size: 64, offset: 256)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!144, !4193, !3591}
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !4180, line: 351, size: 10880, elements: !4195)
!4195 = !{!4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4213, !4230, !4303, !4332, !4356, !4377, !4383, !4392, !4394, !4411, !4436, !4440, !4441, !4442, !4443, !4444, !4445, !4446}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !4194, file: !4180, line: 352, baseType: !144, size: 32)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4194, file: !4180, line: 353, baseType: !147, size: 64, offset: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4194, file: !4180, line: 354, baseType: !3871, size: 192, offset: 128)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4194, file: !4180, line: 355, baseType: !4193, size: 64, offset: 320)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4194, file: !4180, line: 356, baseType: !374, size: 128, offset: 384)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4194, file: !4180, line: 357, baseType: !374, size: 128, offset: 512)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !4194, file: !4180, line: 358, baseType: !374, size: 128, offset: 640)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !4194, file: !4180, line: 359, baseType: !374, size: 128, offset: 768)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4194, file: !4180, line: 360, baseType: !4205, size: 32, offset: 896)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !4180, line: 179, size: 32, elements: !4206)
!4206 = !{!4207, !4208, !4209, !4210, !4211, !4212}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !4205, file: !4180, line: 180, baseType: !156, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4205, file: !4180, line: 181, baseType: !156, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !4205, file: !4180, line: 182, baseType: !156, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !4205, file: !4180, line: 183, baseType: !156, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !4205, file: !4180, line: 184, baseType: !156, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4205, file: !4180, line: 185, baseType: !156, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4194, file: !4180, line: 361, baseType: !4214, size: 32, offset: 928)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !4180, line: 190, size: 32, elements: !4215)
!4215 = !{!4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !4214, file: !4180, line: 191, baseType: !156, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4214, file: !4180, line: 192, baseType: !156, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !4214, file: !4180, line: 193, baseType: !156, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !4214, file: !4180, line: 194, baseType: !156, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4214, file: !4180, line: 195, baseType: !156, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !4214, file: !4180, line: 196, baseType: !156, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !4214, file: !4180, line: 197, baseType: !156, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !4214, file: !4180, line: 198, baseType: !156, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !4214, file: !4180, line: 199, baseType: !156, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !4214, file: !4180, line: 200, baseType: !156, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !4214, file: !4180, line: 201, baseType: !156, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !4214, file: !4180, line: 202, baseType: !156, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !4214, file: !4180, line: 203, baseType: !156, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4214, file: !4180, line: 204, baseType: !156, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !4194, file: !4180, line: 362, baseType: !4231, size: 960, offset: 960)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !4180, line: 234, size: 960, elements: !4232)
!4232 = !{!4233, !4235, !4242, !4244, !4245, !4246, !4251, !4253}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !4231, file: !4180, line: 235, baseType: !4234, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !4180, line: 217, baseType: !2162)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4231, file: !4180, line: 236, baseType: !4236, size: 32, offset: 64)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !4180, line: 227, size: 32, elements: !4237)
!4237 = !{!4238, !4239, !4240, !4241}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !4236, file: !4180, line: 228, baseType: !156, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !4236, file: !4180, line: 229, baseType: !156, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !4236, file: !4180, line: 230, baseType: !156, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4236, file: !4180, line: 231, baseType: !156, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !4231, file: !4180, line: 237, baseType: !4243, size: 64, offset: 128)
!4243 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !4180, line: 218, baseType: !151)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !4231, file: !4180, line: 238, baseType: !428, size: 64, offset: 192)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4231, file: !4180, line: 239, baseType: !374, size: 128, offset: 256)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !4231, file: !4180, line: 240, baseType: !4247, size: 320, offset: 384)
!4247 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !4180, line: 219, baseType: !4248)
!4248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 320, elements: !4249)
!4249 = !{!4250}
!4250 = !DISubrange(count: 40)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !4231, file: !4180, line: 241, baseType: !4252, size: 160, offset: 704)
!4252 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !4180, line: 220, baseType: !360)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !4231, file: !4180, line: 242, baseType: !4254, size: 64, offset: 896)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !148, line: 899, size: 192, elements: !4256)
!4256 = !{!4257, !4259, !4264, !4270, !4277, !4283, !4289, !4297}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4255, file: !148, line: 900, baseType: !4258, size: 32)
!4258 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !148, line: 635, baseType: !156)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !4255, file: !148, line: 904, baseType: !4260, size: 128)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4255, file: !148, line: 901, size: 128, elements: !4261)
!4261 = !{!4262, !4263}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4260, file: !148, line: 902, baseType: !4258, size: 32)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4260, file: !148, line: 903, baseType: !151, size: 64, offset: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4255, file: !148, line: 910, baseType: !4265, size: 128)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4255, file: !148, line: 906, size: 128, elements: !4266)
!4266 = !{!4267, !4268, !4269}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4265, file: !148, line: 907, baseType: !4258, size: 32)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4265, file: !148, line: 908, baseType: !156, size: 32, offset: 32)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4265, file: !148, line: 909, baseType: !428, size: 64, offset: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4255, file: !148, line: 916, baseType: !4271, size: 128)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4255, file: !148, line: 912, size: 128, elements: !4272)
!4272 = !{!4273, !4274, !4275}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4271, file: !148, line: 913, baseType: !4258, size: 32)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4271, file: !148, line: 914, baseType: !156, size: 32, offset: 32)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4271, file: !148, line: 915, baseType: !4276, size: 64, offset: 64)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !4255, file: !148, line: 922, baseType: !4278, size: 128)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4255, file: !148, line: 918, size: 128, elements: !4279)
!4279 = !{!4280, !4281, !4282}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4278, file: !148, line: 919, baseType: !4258, size: 32)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4278, file: !148, line: 920, baseType: !156, size: 32, offset: 32)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !4278, file: !148, line: 921, baseType: !4254, size: 64, offset: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !4255, file: !148, line: 928, baseType: !4284, size: 128)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4255, file: !148, line: 924, size: 128, elements: !4285)
!4285 = !{!4286, !4287, !4288}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4284, file: !148, line: 925, baseType: !4258, size: 32)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !4284, file: !148, line: 926, baseType: !4258, size: 32, offset: 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4284, file: !148, line: 927, baseType: !147, size: 64, offset: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !4255, file: !148, line: 935, baseType: !4290, size: 192)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4255, file: !148, line: 930, size: 192, elements: !4291)
!4291 = !{!4292, !4293, !4294, !4296}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4290, file: !148, line: 931, baseType: !4258, size: 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !4290, file: !148, line: 932, baseType: !156, size: 32, offset: 32)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !4290, file: !148, line: 933, baseType: !4295, size: 64, offset: 64)
!4295 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !148, line: 128, baseType: !151)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !4290, file: !148, line: 934, baseType: !156, size: 32, offset: 128)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !4255, file: !148, line: 941, baseType: !4298, size: 96)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4255, file: !148, line: 937, size: 96, elements: !4299)
!4299 = !{!4300, !4301, !4302}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4298, file: !148, line: 938, baseType: !4258, size: 32)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !4298, file: !148, line: 939, baseType: !156, size: 32, offset: 32)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !4298, file: !148, line: 940, baseType: !156, size: 32, offset: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4194, file: !4180, line: 363, baseType: !4304, size: 1344, offset: 1920)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !4180, line: 275, size: 1344, elements: !4305)
!4305 = !{!4306, !4307, !4317}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4304, file: !4180, line: 276, baseType: !144, size: 32)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4304, file: !4180, line: 277, baseType: !4308, size: 32, offset: 32)
!4308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !4180, line: 254, size: 32, elements: !4309)
!4309 = !{!4310, !4311, !4312, !4313, !4314, !4315, !4316}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !4308, file: !4180, line: 255, baseType: !156, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !4308, file: !4180, line: 256, baseType: !156, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !4308, file: !4180, line: 257, baseType: !156, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !4308, file: !4180, line: 258, baseType: !156, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !4308, file: !4180, line: 259, baseType: !156, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !4308, file: !4180, line: 260, baseType: !156, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4308, file: !4180, line: 261, baseType: !156, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4304, file: !4180, line: 278, baseType: !4318, size: 1280, offset: 64)
!4318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4319, size: 1280, elements: !4330)
!4319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !4180, line: 264, size: 256, elements: !4320)
!4320 = !{!4321, !4327, !4328, !4329}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4319, file: !4180, line: 269, baseType: !4322, size: 8)
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4319, file: !4180, line: 265, size: 8, elements: !4323)
!4323 = !{!4324, !4325, !4326}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4322, file: !4180, line: 266, baseType: !163, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !4322, file: !4180, line: 267, baseType: !163, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4322, file: !4180, line: 268, baseType: !163, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4319, file: !4180, line: 270, baseType: !144, size: 32, offset: 32)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4319, file: !4180, line: 271, baseType: !144, size: 32, offset: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4319, file: !4180, line: 272, baseType: !374, size: 128, offset: 128)
!4330 = !{!4331}
!4331 = !DISubrange(count: 5)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4194, file: !4180, line: 364, baseType: !4333, size: 640, offset: 3264)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !4180, line: 315, size: 640, elements: !4334)
!4334 = !{!4335, !4336, !4337, !4338, !4339, !4344, !4353, !4354, !4355}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !4333, file: !4180, line: 316, baseType: !147, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !4333, file: !4180, line: 317, baseType: !151, size: 64, offset: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !4333, file: !4180, line: 318, baseType: !151, size: 64, offset: 128)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4333, file: !4180, line: 319, baseType: !374, size: 128, offset: 192)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4333, file: !4180, line: 320, baseType: !4340, size: 8, offset: 320)
!4340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !4180, line: 305, size: 8, elements: !4341)
!4341 = !{!4342, !4343}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4340, file: !4180, line: 306, baseType: !163, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !4340, file: !4180, line: 307, baseType: !163, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4333, file: !4180, line: 321, baseType: !4345, size: 128, offset: 384)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !4180, line: 310, size: 128, elements: !4346)
!4346 = !{!4347, !4352}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4345, file: !4180, line: 311, baseType: !4348, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{null, !4351}
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4345, file: !4180, line: 312, baseType: !3497, size: 64, offset: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !4333, file: !4180, line: 322, baseType: !3676, size: 64, offset: 512)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !4333, file: !4180, line: 323, baseType: !144, size: 32, offset: 576)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !4333, file: !4180, line: 324, baseType: !144, size: 32, offset: 608)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !4194, file: !4180, line: 365, baseType: !4357, size: 192, offset: 3904)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !4180, line: 297, size: 192, elements: !4358)
!4358 = !{!4359, !4360, !4364, !4365}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4357, file: !4180, line: 298, baseType: !144, size: 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4357, file: !4180, line: 299, baseType: !4361, size: 8, offset: 32)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !4180, line: 283, size: 8, elements: !4362)
!4362 = !{!4363}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4361, file: !4180, line: 284, baseType: !163, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !4357, file: !4180, line: 300, baseType: !144, size: 32, offset: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4357, file: !4180, line: 301, baseType: !4366, size: 64, offset: 128)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !4180, line: 287, size: 64, elements: !4368)
!4368 = !{!4369, !4374, !4375, !4376}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4367, file: !4180, line: 291, baseType: !4370, size: 8)
!4370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4367, file: !4180, line: 288, size: 8, elements: !4371)
!4371 = !{!4372, !4373}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4370, file: !4180, line: 289, baseType: !163, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4370, file: !4180, line: 290, baseType: !163, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4367, file: !4180, line: 292, baseType: !163, size: 8, offset: 8)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !4367, file: !4180, line: 293, baseType: !163, size: 8, offset: 16)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4367, file: !4180, line: 294, baseType: !144, size: 32, offset: 32)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4194, file: !4180, line: 366, baseType: !4378, size: 64, offset: 4096)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !4180, line: 209, size: 64, elements: !4379)
!4379 = !{!4380}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4378, file: !4180, line: 210, baseType: !4381, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4180, line: 84, flags: DIFlagFwdDecl)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4194, file: !4180, line: 367, baseType: !4384, size: 384, offset: 4160)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !4180, line: 341, size: 384, elements: !4385)
!4385 = !{!4386, !4389, !4390, !4391}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4384, file: !4180, line: 342, baseType: !4387, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4255)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4384, file: !4180, line: 343, baseType: !374, size: 128, offset: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !4384, file: !4180, line: 344, baseType: !4387, size: 64, offset: 192)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !4384, file: !4180, line: 345, baseType: !374, size: 128, offset: 256)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4194, file: !4180, line: 368, baseType: !4393, size: 64, offset: 4544)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !4194, file: !4180, line: 369, baseType: !4395, size: 64, offset: 4608)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !4180, line: 138, size: 256, elements: !4397)
!4397 = !{!4398, !4399, !4403, !4407}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4396, file: !4180, line: 139, baseType: !4193, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4396, file: !4180, line: 140, baseType: !4400, size: 64, offset: 64)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!144, !4193, !156}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4396, file: !4180, line: 141, baseType: !4404, size: 64, offset: 128)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{null, !4193, !156}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4396, file: !4180, line: 142, baseType: !4408, size: 64, offset: 192)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{null, !4193}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4194, file: !4180, line: 370, baseType: !4412, size: 64, offset: 4672)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !4180, line: 162, size: 2816, elements: !4414)
!4414 = !{!4415, !4419, !4420, !4421, !4422, !4434, !4435}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4413, file: !4180, line: 163, baseType: !4416, size: 640)
!4416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 640, elements: !4417)
!4417 = !{!4418}
!4418 = !DISubrange(count: 80)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4413, file: !4180, line: 164, baseType: !4416, size: 640, offset: 640)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4413, file: !4180, line: 165, baseType: !3591, size: 64, offset: 1280)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4413, file: !4180, line: 166, baseType: !7, size: 32, offset: 1344)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4413, file: !4180, line: 167, baseType: !4423, size: 192, offset: 1408)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !4180, line: 154, size: 192, elements: !4424)
!4424 = !{!4425, !4430, !4432}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !4423, file: !4180, line: 155, baseType: !4426, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !4180, line: 150, baseType: !4427)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{!144, !4193}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4423, file: !4180, line: 156, baseType: !4431, size: 64, offset: 64)
!4431 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !4180, line: 151, baseType: !4427)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4423, file: !4180, line: 157, baseType: !4433, size: 64, offset: 128)
!4433 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !4180, line: 152, baseType: !4404)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !4413, file: !4180, line: 168, baseType: !3569, size: 1152, offset: 1600)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4413, file: !4180, line: 169, baseType: !775, size: 64, offset: 2752)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !4194, file: !4180, line: 371, baseType: !4437, size: 64, offset: 4736)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4439)
!4439 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !4180, line: 348, flags: DIFlagFwdDecl)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4194, file: !4180, line: 372, baseType: !149, size: 64, offset: 4800)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4194, file: !4180, line: 373, baseType: !364, size: 5568, offset: 4864)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !4194, file: !4180, line: 374, baseType: !7, size: 32, offset: 10432)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !4194, file: !4180, line: 375, baseType: !7, size: 32, offset: 10464)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !4194, file: !4180, line: 376, baseType: !374, size: 128, offset: 10496)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !4194, file: !4180, line: 377, baseType: !1315, size: 192, offset: 10624)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4194, file: !4180, line: 378, baseType: !4408, size: 64, offset: 10816)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4179, file: !4180, line: 127, baseType: !4408, size: 64, offset: 320)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4179, file: !4180, line: 128, baseType: !3519, size: 64, offset: 384)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !4179, file: !4180, line: 129, baseType: !3519, size: 64, offset: 448)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4179, file: !4180, line: 130, baseType: !4451, size: 704, offset: 512)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !4180, line: 108, size: 704, elements: !4452)
!4452 = !{!4453, !4454, !4455, !4456, !4457}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4451, file: !4180, line: 109, baseType: !367, size: 512)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !4451, file: !4180, line: 110, baseType: !4427, size: 64, offset: 512)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !4451, file: !4180, line: 111, baseType: !4408, size: 64, offset: 576)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4451, file: !4180, line: 112, baseType: !328, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !4451, file: !4180, line: 113, baseType: !328, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4458 = !DIGlobalVariableExpression(var: !4459, expr: !DIExpression())
!4459 = distinct !DIGlobalVariable(name: "processor_device_ids", scope: !2, file: !3, line: 547, type: !4460, isLocal: true, isDefinition: true)
!4460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3592, size: 768, elements: !429)
!4461 = !DIGlobalVariableExpression(var: !4462, expr: !DIExpression())
!4462 = distinct !DIGlobalVariable(name: "cpu0_initialized", scope: !4463, file: !3, line: 236, type: !144, isLocal: true, isDefinition: true)
!4463 = distinct !DISubprogram(name: "acpi_processor_get_info", scope: !3, file: !3, line: 229, type: !4428, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!4464 = !DIGlobalVariableExpression(var: !4465, expr: !DIExpression())
!4465 = distinct !DIGlobalVariable(name: "__print_once", scope: !4463, file: !3, line: 282, type: !328, isLocal: true, isDefinition: true)
!4466 = !DIGlobalVariableExpression(var: !4467, expr: !DIExpression())
!4467 = distinct !DIGlobalVariable(name: "processor_device_array", scope: !2, file: !3, line: 365, type: !149, isLocal: true, isDefinition: true)
!4468 = !DIGlobalVariableExpression(var: !4469, expr: !DIExpression())
!4469 = distinct !DIGlobalVariable(name: "processor_container_handler", scope: !2, file: !3, line: 577, type: !4179, isLocal: true, isDefinition: true)
!4470 = !DIGlobalVariableExpression(var: !4471, expr: !DIExpression())
!4471 = distinct !DIGlobalVariable(name: "processor_container_ids", scope: !2, file: !3, line: 572, type: !4472, isLocal: true, isDefinition: true)
!4472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3592, size: 512, elements: !1700)
!4473 = !{i32 7, !"Dwarf Version", i32 4}
!4474 = !{i32 2, !"Debug Info Version", i32 3}
!4475 = !{i32 1, !"wchar_size", i32 2}
!4476 = !{i32 1, !"Code Model", i32 2}
!4477 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4478 = distinct !DISubprogram(name: "acpi_early_processor_osc", scope: !3, file: !3, line: 529, type: !2008, scopeLine: 530, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !401)
!4479 = !DILocation(line: 531, column: 6, scope: !4478)
!4480 = !DILocation(line: 531, column: 6, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 531, column: 6)
!4482 = !DILocation(line: 532, column: 3, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4481, file: !3, line: 531, column: 37)
!4484 = !DILocation(line: 536, column: 3, scope: !4483)
!4485 = !DILocation(line: 539, column: 2, scope: !4483)
!4486 = !DILocation(line: 540, column: 1, scope: !4478)
!4487 = distinct !DISubprogram(name: "test_bit", scope: !4488, file: !4488, line: 132, type: !4489, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!4488 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!328, !463, !4491}
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4493)
!4493 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !146)
!4494 = !DILocalVariable(name: "nr", arg: 1, scope: !4495, file: !4496, line: 210, type: !463)
!4495 = distinct !DISubprogram(name: "variable_test_bit", scope: !4496, file: !4496, line: 210, type: !4489, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!4496 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4497 = !DILocation(line: 210, column: 52, scope: !4495, inlinedAt: !4498)
!4498 = distinct !DILocation(line: 135, column: 9, scope: !4487)
!4499 = !DILocalVariable(name: "addr", arg: 2, scope: !4495, file: !4496, line: 210, type: !4491)
!4500 = !DILocation(line: 210, column: 86, scope: !4495, inlinedAt: !4498)
!4501 = !DILocalVariable(name: "oldbit", scope: !4495, file: !4496, line: 212, type: !328)
!4502 = !DILocation(line: 212, column: 7, scope: !4495, inlinedAt: !4498)
!4503 = !DILocalVariable(name: "nr", arg: 1, scope: !4504, file: !4496, line: 204, type: !463)
!4504 = distinct !DISubprogram(name: "constant_test_bit", scope: !4496, file: !4496, line: 204, type: !4489, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!4505 = !DILocation(line: 204, column: 52, scope: !4504, inlinedAt: !4506)
!4506 = distinct !DILocation(line: 135, column: 9, scope: !4487)
!4507 = !DILocalVariable(name: "addr", arg: 2, scope: !4504, file: !4496, line: 204, type: !4491)
!4508 = !DILocation(line: 204, column: 86, scope: !4504, inlinedAt: !4506)
!4509 = !DILocalVariable(name: "v", arg: 1, scope: !4510, file: !4511, line: 69, type: !4514)
!4510 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4511, file: !4511, line: 69, type: !4512, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!4511 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4512 = !DISubroutineType(types: !4513)
!4513 = !{null, !4514, !474}
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4516)
!4516 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4517 = !DILocation(line: 69, column: 73, scope: !4510, inlinedAt: !4518)
!4518 = distinct !DILocation(line: 134, column: 2, scope: !4487)
!4519 = !DILocalVariable(name: "size", arg: 2, scope: !4510, file: !4511, line: 69, type: !474)
!4520 = !DILocation(line: 69, column: 83, scope: !4510, inlinedAt: !4518)
!4521 = !DILocalVariable(name: "nr", arg: 1, scope: !4487, file: !4488, line: 132, type: !463)
!4522 = !DILocation(line: 132, column: 34, scope: !4487)
!4523 = !DILocalVariable(name: "addr", arg: 2, scope: !4487, file: !4488, line: 132, type: !4491)
!4524 = !DILocation(line: 132, column: 68, scope: !4487)
!4525 = !DILocation(line: 134, column: 25, scope: !4487)
!4526 = !DILocation(line: 134, column: 32, scope: !4487)
!4527 = !DILocation(line: 134, column: 30, scope: !4487)
!4528 = !DILocation(line: 71, column: 19, scope: !4510, inlinedAt: !4518)
!4529 = !DILocation(line: 71, column: 22, scope: !4510, inlinedAt: !4518)
!4530 = !DILocation(line: 71, column: 2, scope: !4510, inlinedAt: !4518)
!4531 = !DILocation(line: 72, column: 2, scope: !4510, inlinedAt: !4518)
!4532 = !DILocation(line: 135, column: 9, scope: !4487)
!4533 = !DILocation(line: 206, column: 19, scope: !4504, inlinedAt: !4506)
!4534 = !DILocation(line: 206, column: 22, scope: !4504, inlinedAt: !4506)
!4535 = !DILocation(line: 206, column: 15, scope: !4504, inlinedAt: !4506)
!4536 = !DILocation(line: 207, column: 4, scope: !4504, inlinedAt: !4506)
!4537 = !DILocation(line: 207, column: 9, scope: !4504, inlinedAt: !4506)
!4538 = !DILocation(line: 207, column: 12, scope: !4504, inlinedAt: !4506)
!4539 = !DILocation(line: 206, column: 44, scope: !4504, inlinedAt: !4506)
!4540 = !DILocation(line: 207, column: 37, scope: !4504, inlinedAt: !4506)
!4541 = !DILocation(line: 217, column: 33, scope: !4495, inlinedAt: !4498)
!4542 = !DILocation(line: 217, column: 46, scope: !4495, inlinedAt: !4498)
!4543 = !DILocation(line: 214, column: 2, scope: !4495, inlinedAt: !4498)
!4544 = !{i32 -2147107418, i32 -2147107358}
!4545 = !DILocation(line: 219, column: 9, scope: !4495, inlinedAt: !4498)
!4546 = !DILocation(line: 135, column: 2, scope: !4487)
!4547 = distinct !DISubprogram(name: "acpi_hwp_native_thermal_lvt_osc", scope: !3, file: !3, line: 493, type: !4548, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!176, !147, !156, !149, !179}
!4550 = !DILocalVariable(name: "handle", arg: 1, scope: !4547, file: !3, line: 493, type: !147)
!4551 = !DILocation(line: 493, column: 71, scope: !4547)
!4552 = !DILocalVariable(name: "lvl", arg: 2, scope: !4547, file: !3, line: 494, type: !156)
!4553 = !DILocation(line: 494, column: 14, scope: !4547)
!4554 = !DILocalVariable(name: "context", arg: 3, scope: !4547, file: !3, line: 495, type: !149)
!4555 = !DILocation(line: 495, column: 16, scope: !4547)
!4556 = !DILocalVariable(name: "rv", arg: 4, scope: !4547, file: !3, line: 496, type: !179)
!4557 = !DILocation(line: 496, column: 17, scope: !4547)
!4558 = !DILocalVariable(name: "sb_uuid_str", scope: !4547, file: !3, line: 498, type: !4559)
!4559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 296, elements: !4560)
!4560 = !{!4561}
!4561 = !DISubrange(count: 37)
!4562 = !DILocation(line: 498, column: 5, scope: !4547)
!4563 = !DILocalVariable(name: "capbuf", scope: !4547, file: !3, line: 499, type: !4564)
!4564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 64, elements: !1700)
!4565 = !DILocation(line: 499, column: 6, scope: !4547)
!4566 = !DILocalVariable(name: "osc_context", scope: !4547, file: !3, line: 500, type: !4567)
!4567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_osc_context", file: !188, line: 516, size: 384, elements: !4568)
!4568 = !{!4569, !4570, !4571, !4576}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_str", scope: !4567, file: !188, line: 517, baseType: !428, size: 64)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4567, file: !188, line: 518, baseType: !144, size: 32, offset: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4567, file: !188, line: 519, baseType: !4572, size: 128, offset: 128)
!4572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !148, line: 969, size: 128, elements: !4573)
!4573 = !{!4574, !4575}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4572, file: !148, line: 970, baseType: !150, size: 64)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4572, file: !148, line: 971, baseType: !149, size: 64, offset: 64)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "ret", scope: !4567, file: !188, line: 520, baseType: !4572, size: 128, offset: 256)
!4577 = !DILocation(line: 500, column: 26, scope: !4547)
!4578 = !DILocation(line: 500, column: 40, scope: !4547)
!4579 = !DILocation(line: 501, column: 15, scope: !4547)
!4580 = !DILocation(line: 503, column: 7, scope: !4547)
!4581 = !DILocation(line: 504, column: 18, scope: !4547)
!4582 = !DILocation(line: 507, column: 6, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 507, column: 6)
!4584 = !DILocation(line: 507, column: 6, scope: !4547)
!4585 = !DILocation(line: 508, column: 3, scope: !4583)
!4586 = !DILocation(line: 510, column: 2, scope: !4547)
!4587 = !DILocation(line: 510, column: 12, scope: !4547)
!4588 = !DILocation(line: 511, column: 2, scope: !4547)
!4589 = !DILocation(line: 511, column: 12, scope: !4547)
!4590 = !DILocation(line: 513, column: 6, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 513, column: 6)
!4592 = !DILocation(line: 513, column: 6, scope: !4547)
!4593 = !DILocation(line: 514, column: 19, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4595, file: !3, line: 514, column: 7)
!4595 = distinct !DILexicalBlock(scope: !4591, file: !3, line: 513, column: 56)
!4596 = !DILocation(line: 514, column: 23, scope: !4594)
!4597 = !DILocation(line: 514, column: 7, scope: !4594)
!4598 = !DILocation(line: 514, column: 31, scope: !4594)
!4599 = !DILocation(line: 514, column: 46, scope: !4594)
!4600 = !DILocation(line: 514, column: 50, scope: !4594)
!4601 = !DILocation(line: 514, column: 57, scope: !4594)
!4602 = !DILocation(line: 514, column: 7, scope: !4595)
!4603 = !DILocalVariable(name: "capbuf_ret", scope: !4604, file: !3, line: 515, type: !1546)
!4604 = distinct !DILexicalBlock(scope: !4594, file: !3, line: 514, column: 62)
!4605 = !DILocation(line: 515, column: 9, scope: !4604)
!4606 = !DILocation(line: 515, column: 34, scope: !4604)
!4607 = !DILocation(line: 515, column: 38, scope: !4604)
!4608 = !DILocation(line: 515, column: 22, scope: !4604)
!4609 = !DILocation(line: 517, column: 8, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 517, column: 8)
!4611 = !DILocation(line: 517, column: 22, scope: !4610)
!4612 = !DILocation(line: 517, column: 8, scope: !4604)
!4613 = !DILocation(line: 518, column: 5, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 517, column: 32)
!4615 = !DILocation(line: 520, column: 37, scope: !4614)
!4616 = !DILocation(line: 521, column: 4, scope: !4614)
!4617 = !DILocation(line: 522, column: 3, scope: !4604)
!4618 = !DILocation(line: 523, column: 21, scope: !4595)
!4619 = !DILocation(line: 523, column: 25, scope: !4595)
!4620 = !DILocation(line: 523, column: 3, scope: !4595)
!4621 = !DILocation(line: 524, column: 2, scope: !4595)
!4622 = !DILocation(line: 526, column: 2, scope: !4547)
!4623 = !DILocation(line: 527, column: 1, scope: !4547)
!4624 = distinct !DISubprogram(name: "acpi_duplicate_processor_id", scope: !3, file: !3, line: 686, type: !4625, scopeLine: 687, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !401)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!328, !144}
!4627 = !DILocalVariable(name: "proc_id", arg: 1, scope: !4624, file: !3, line: 686, type: !144)
!4628 = !DILocation(line: 686, column: 38, scope: !4624)
!4629 = !DILocalVariable(name: "i", scope: !4624, file: !3, line: 688, type: !144)
!4630 = !DILocation(line: 688, column: 6, scope: !4624)
!4631 = !DILocation(line: 694, column: 9, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4624, file: !3, line: 694, column: 2)
!4633 = !DILocation(line: 694, column: 7, scope: !4632)
!4634 = !DILocation(line: 694, column: 14, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4632, file: !3, line: 694, column: 2)
!4636 = !DILocation(line: 694, column: 18, scope: !4635)
!4637 = !DILocation(line: 694, column: 16, scope: !4635)
!4638 = !DILocation(line: 694, column: 2, scope: !4632)
!4639 = !DILocation(line: 695, column: 31, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 695, column: 7)
!4641 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 694, column: 41)
!4642 = !DILocation(line: 695, column: 7, scope: !4640)
!4643 = !DILocation(line: 695, column: 37, scope: !4640)
!4644 = !DILocation(line: 695, column: 34, scope: !4640)
!4645 = !DILocation(line: 695, column: 7, scope: !4641)
!4646 = !DILocation(line: 696, column: 4, scope: !4640)
!4647 = !DILocation(line: 697, column: 2, scope: !4641)
!4648 = !DILocation(line: 694, column: 37, scope: !4635)
!4649 = !DILocation(line: 694, column: 2, scope: !4635)
!4650 = distinct !{!4650, !4638, !4651}
!4651 = !DILocation(line: 697, column: 2, scope: !4632)
!4652 = !DILocation(line: 698, column: 2, scope: !4624)
!4653 = !DILocation(line: 699, column: 1, scope: !4624)
!4654 = distinct !DISubprogram(name: "acpi_processor_init", scope: !3, file: !3, line: 701, type: !2008, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !401)
!4655 = !DILocation(line: 703, column: 2, scope: !4654)
!4656 = !DILocation(line: 704, column: 2, scope: !4654)
!4657 = !DILocation(line: 705, column: 2, scope: !4654)
!4658 = !DILocation(line: 706, column: 1, scope: !4654)
!4659 = distinct !DISubprogram(name: "acpi_processor_check_duplicates", scope: !3, file: !3, line: 675, type: !2008, scopeLine: 676, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!4660 = !DILocation(line: 678, column: 2, scope: !4659)
!4661 = !DILocation(line: 682, column: 2, scope: !4659)
!4662 = !DILocation(line: 684, column: 1, scope: !4659)
!4663 = !DILocalVariable(name: "status", scope: !4153, file: !3, line: 715, type: !176)
!4664 = !DILocation(line: 715, column: 14, scope: !4153)
!4665 = !DILocation(line: 717, column: 21, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 717, column: 6)
!4667 = !DILocation(line: 717, column: 7, scope: !4666)
!4668 = !DILocation(line: 717, column: 33, scope: !4666)
!4669 = !DILocation(line: 717, column: 36, scope: !4666)
!4670 = !DILocation(line: 717, column: 6, scope: !4153)
!4671 = !DILocation(line: 718, column: 3, scope: !4666)
!4672 = !DILocation(line: 720, column: 44, scope: !4153)
!4673 = !DILocation(line: 720, column: 30, scope: !4153)
!4674 = !DILocation(line: 721, column: 23, scope: !4153)
!4675 = !DILocation(line: 721, column: 9, scope: !4153)
!4676 = !DILocation(line: 720, column: 11, scope: !4153)
!4677 = !DILocation(line: 720, column: 9, scope: !4153)
!4678 = !DILocation(line: 722, column: 6, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 722, column: 6)
!4680 = !DILocation(line: 722, column: 6, scope: !4153)
!4681 = !DILocation(line: 723, column: 3, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4679, file: !3, line: 722, column: 28)
!4683 = !DILocation(line: 724, column: 3, scope: !4682)
!4684 = !DILocation(line: 727, column: 22, scope: !4153)
!4685 = !DILocation(line: 728, column: 2, scope: !4153)
!4686 = !DILocation(line: 729, column: 1, scope: !4153)
!4687 = distinct !DISubprogram(name: "acpi_processor_evaluate_cst", scope: !3, file: !3, line: 746, type: !4688, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !401)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!144, !147, !156, !4690}
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!4691 = !DILocalVariable(name: "handle", arg: 1, scope: !4687, file: !3, line: 746, type: !147)
!4692 = !DILocation(line: 746, column: 45, scope: !4687)
!4693 = !DILocalVariable(name: "cpu", arg: 2, scope: !4687, file: !3, line: 746, type: !156)
!4694 = !DILocation(line: 746, column: 57, scope: !4687)
!4695 = !DILocalVariable(name: "info", arg: 3, scope: !4687, file: !3, line: 747, type: !4690)
!4696 = !DILocation(line: 747, column: 34, scope: !4687)
!4697 = !DILocalVariable(name: "buffer", scope: !4687, file: !3, line: 749, type: !4572)
!4698 = !DILocation(line: 749, column: 21, scope: !4687)
!4699 = !DILocalVariable(name: "cst", scope: !4687, file: !3, line: 750, type: !4254)
!4700 = !DILocation(line: 750, column: 21, scope: !4687)
!4701 = !DILocalVariable(name: "status", scope: !4687, file: !3, line: 751, type: !176)
!4702 = !DILocation(line: 751, column: 14, scope: !4687)
!4703 = !DILocalVariable(name: "count", scope: !4687, file: !3, line: 752, type: !151)
!4704 = !DILocation(line: 752, column: 6, scope: !4687)
!4705 = !DILocalVariable(name: "last_index", scope: !4687, file: !3, line: 753, type: !144)
!4706 = !DILocation(line: 753, column: 6, scope: !4687)
!4707 = !DILocalVariable(name: "i", scope: !4687, file: !3, line: 754, type: !144)
!4708 = !DILocation(line: 754, column: 6, scope: !4687)
!4709 = !DILocalVariable(name: "ret", scope: !4687, file: !3, line: 754, type: !144)
!4710 = !DILocation(line: 754, column: 9, scope: !4687)
!4711 = !DILocation(line: 756, column: 32, scope: !4687)
!4712 = !DILocation(line: 756, column: 11, scope: !4687)
!4713 = !DILocation(line: 756, column: 9, scope: !4687)
!4714 = !DILocation(line: 757, column: 6, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 757, column: 6)
!4716 = !DILocation(line: 757, column: 6, scope: !4687)
!4717 = !DILocation(line: 758, column: 3, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 758, column: 3)
!4719 = distinct !DILexicalBlock(scope: !4720, file: !3, line: 758, column: 3)
!4720 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 757, column: 28)
!4721 = !DILocation(line: 758, column: 3, scope: !4719)
!4722 = !DILocation(line: 759, column: 3, scope: !4720)
!4723 = !DILocation(line: 762, column: 15, scope: !4687)
!4724 = !DILocation(line: 762, column: 8, scope: !4687)
!4725 = !DILocation(line: 762, column: 6, scope: !4687)
!4726 = !DILocation(line: 765, column: 7, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 765, column: 6)
!4728 = !DILocation(line: 765, column: 11, scope: !4727)
!4729 = !DILocation(line: 765, column: 14, scope: !4727)
!4730 = !DILocation(line: 765, column: 19, scope: !4727)
!4731 = !DILocation(line: 765, column: 24, scope: !4727)
!4732 = !DILocation(line: 765, column: 45, scope: !4727)
!4733 = !DILocation(line: 765, column: 48, scope: !4727)
!4734 = !DILocation(line: 765, column: 53, scope: !4727)
!4735 = !DILocation(line: 765, column: 61, scope: !4727)
!4736 = !DILocation(line: 765, column: 67, scope: !4727)
!4737 = !DILocation(line: 765, column: 6, scope: !4687)
!4738 = !DILocation(line: 766, column: 3, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 765, column: 72)
!4740 = !DILocation(line: 767, column: 7, scope: !4739)
!4741 = !DILocation(line: 768, column: 3, scope: !4739)
!4742 = !DILocation(line: 771, column: 10, scope: !4687)
!4743 = !DILocation(line: 771, column: 15, scope: !4687)
!4744 = !DILocation(line: 771, column: 23, scope: !4687)
!4745 = !DILocation(line: 771, column: 35, scope: !4687)
!4746 = !DILocation(line: 771, column: 43, scope: !4687)
!4747 = !DILocation(line: 771, column: 8, scope: !4687)
!4748 = !DILocation(line: 774, column: 6, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 774, column: 6)
!4750 = !DILocation(line: 774, column: 12, scope: !4749)
!4751 = !DILocation(line: 774, column: 16, scope: !4749)
!4752 = !DILocation(line: 774, column: 19, scope: !4749)
!4753 = !DILocation(line: 774, column: 28, scope: !4749)
!4754 = !DILocation(line: 774, column: 33, scope: !4749)
!4755 = !DILocation(line: 774, column: 41, scope: !4749)
!4756 = !DILocation(line: 774, column: 47, scope: !4749)
!4757 = !DILocation(line: 774, column: 25, scope: !4749)
!4758 = !DILocation(line: 774, column: 6, scope: !4687)
!4759 = !DILocation(line: 775, column: 3, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 774, column: 52)
!4761 = !DILocation(line: 776, column: 7, scope: !4760)
!4762 = !DILocation(line: 777, column: 3, scope: !4760)
!4763 = !DILocation(line: 780, column: 9, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 780, column: 2)
!4765 = !DILocation(line: 780, column: 7, scope: !4764)
!4766 = !DILocation(line: 780, column: 14, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4764, file: !3, line: 780, column: 2)
!4768 = !DILocation(line: 780, column: 19, scope: !4767)
!4769 = !DILocation(line: 780, column: 16, scope: !4767)
!4770 = !DILocation(line: 780, column: 2, scope: !4764)
!4771 = !DILocalVariable(name: "element", scope: !4772, file: !3, line: 781, type: !4254)
!4772 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 780, column: 31)
!4773 = !DILocation(line: 781, column: 22, scope: !4772)
!4774 = !DILocalVariable(name: "obj", scope: !4772, file: !3, line: 782, type: !4254)
!4775 = !DILocation(line: 782, column: 22, scope: !4772)
!4776 = !DILocalVariable(name: "reg", scope: !4772, file: !3, line: 783, type: !158)
!4777 = !DILocation(line: 783, column: 31, scope: !4772)
!4778 = !DILocalVariable(name: "cx", scope: !4772, file: !3, line: 784, type: !216)
!4779 = !DILocation(line: 784, column: 28, scope: !4772)
!4780 = !DILocation(line: 790, column: 7, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 790, column: 7)
!4782 = !DILocation(line: 790, column: 18, scope: !4781)
!4783 = !DILocation(line: 790, column: 7, scope: !4772)
!4784 = !DILocation(line: 791, column: 4, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 790, column: 51)
!4786 = !DILocation(line: 794, column: 4, scope: !4785)
!4787 = !DILocation(line: 797, column: 3, scope: !4772)
!4788 = !DILocation(line: 799, column: 14, scope: !4772)
!4789 = !DILocation(line: 799, column: 19, scope: !4772)
!4790 = !DILocation(line: 799, column: 27, scope: !4772)
!4791 = !DILocation(line: 799, column: 36, scope: !4772)
!4792 = !DILocation(line: 799, column: 11, scope: !4772)
!4793 = !DILocation(line: 800, column: 7, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 800, column: 7)
!4795 = !DILocation(line: 800, column: 16, scope: !4794)
!4796 = !DILocation(line: 800, column: 21, scope: !4794)
!4797 = !DILocation(line: 800, column: 7, scope: !4772)
!4798 = !DILocation(line: 801, column: 4, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 800, column: 43)
!4800 = !DILocation(line: 803, column: 4, scope: !4799)
!4801 = !DILocation(line: 806, column: 7, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 806, column: 7)
!4803 = !DILocation(line: 806, column: 16, scope: !4802)
!4804 = !DILocation(line: 806, column: 24, scope: !4802)
!4805 = !DILocation(line: 806, column: 30, scope: !4802)
!4806 = !DILocation(line: 806, column: 7, scope: !4772)
!4807 = !DILocation(line: 807, column: 4, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 806, column: 36)
!4809 = !DILocation(line: 809, column: 4, scope: !4808)
!4810 = !DILocation(line: 812, column: 10, scope: !4772)
!4811 = !DILocation(line: 812, column: 19, scope: !4772)
!4812 = !DILocation(line: 812, column: 27, scope: !4772)
!4813 = !DILocation(line: 812, column: 7, scope: !4772)
!4814 = !DILocation(line: 814, column: 7, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 814, column: 7)
!4816 = !DILocation(line: 814, column: 12, scope: !4815)
!4817 = !DILocation(line: 814, column: 17, scope: !4815)
!4818 = !DILocation(line: 814, column: 7, scope: !4772)
!4819 = !DILocation(line: 815, column: 4, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 814, column: 38)
!4821 = !DILocation(line: 817, column: 4, scope: !4820)
!4822 = !DILocation(line: 820, column: 39, scope: !4772)
!4823 = !DILocation(line: 820, column: 44, scope: !4772)
!4824 = !DILocation(line: 820, column: 51, scope: !4772)
!4825 = !DILocation(line: 820, column: 9, scope: !4772)
!4826 = !DILocation(line: 820, column: 7, scope: !4772)
!4827 = !DILocation(line: 822, column: 10, scope: !4772)
!4828 = !DILocation(line: 822, column: 19, scope: !4772)
!4829 = !DILocation(line: 822, column: 27, scope: !4772)
!4830 = !DILocation(line: 822, column: 7, scope: !4772)
!4831 = !DILocation(line: 823, column: 7, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 823, column: 7)
!4833 = !DILocation(line: 823, column: 12, scope: !4832)
!4834 = !DILocation(line: 823, column: 17, scope: !4832)
!4835 = !DILocation(line: 823, column: 7, scope: !4772)
!4836 = !DILocation(line: 824, column: 4, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4832, file: !3, line: 823, column: 39)
!4838 = !DILocation(line: 826, column: 4, scope: !4837)
!4839 = !DILocation(line: 829, column: 13, scope: !4772)
!4840 = !DILocation(line: 829, column: 18, scope: !4772)
!4841 = !DILocation(line: 829, column: 26, scope: !4772)
!4842 = !DILocation(line: 829, column: 6, scope: !4772)
!4843 = !DILocation(line: 829, column: 11, scope: !4772)
!4844 = !DILocation(line: 835, column: 7, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 835, column: 7)
!4846 = !DILocation(line: 835, column: 9, scope: !4845)
!4847 = !DILocation(line: 835, column: 14, scope: !4845)
!4848 = !DILocation(line: 835, column: 20, scope: !4845)
!4849 = !DILocation(line: 835, column: 17, scope: !4845)
!4850 = !DILocation(line: 835, column: 25, scope: !4845)
!4851 = !DILocation(line: 835, column: 7, scope: !4772)
!4852 = !DILocation(line: 836, column: 15, scope: !4845)
!4853 = !DILocation(line: 836, column: 4, scope: !4845)
!4854 = !DILocation(line: 838, column: 16, scope: !4772)
!4855 = !DILocation(line: 838, column: 21, scope: !4772)
!4856 = !DILocation(line: 838, column: 6, scope: !4772)
!4857 = !DILocation(line: 838, column: 14, scope: !4772)
!4858 = !DILocation(line: 839, column: 14, scope: !4772)
!4859 = !DILocation(line: 839, column: 25, scope: !4772)
!4860 = !DILocation(line: 839, column: 6, scope: !4772)
!4861 = !DILocation(line: 839, column: 12, scope: !4772)
!4862 = !DILocation(line: 841, column: 7, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 841, column: 7)
!4864 = !DILocation(line: 841, column: 12, scope: !4863)
!4865 = !DILocation(line: 841, column: 21, scope: !4863)
!4866 = !DILocation(line: 841, column: 7, scope: !4772)
!4867 = !DILocation(line: 842, column: 41, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4869, file: !3, line: 842, column: 8)
!4869 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 841, column: 55)
!4870 = !DILocation(line: 842, column: 51, scope: !4868)
!4871 = !DILocation(line: 842, column: 9, scope: !4868)
!4872 = !DILocation(line: 842, column: 8, scope: !4869)
!4873 = !DILocation(line: 849, column: 12, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 849, column: 9)
!4875 = distinct !DILexicalBlock(scope: !4868, file: !3, line: 842, column: 57)
!4876 = !DILocation(line: 849, column: 9, scope: !4874)
!4877 = !DILocation(line: 849, column: 17, scope: !4874)
!4878 = !DILocation(line: 849, column: 34, scope: !4874)
!4879 = !DILocation(line: 850, column: 9, scope: !4874)
!4880 = !DILocation(line: 850, column: 35, scope: !4874)
!4881 = !DILocation(line: 849, column: 9, scope: !4875)
!4882 = !DILocation(line: 851, column: 9, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 850, column: 52)
!4884 = !DILocation(line: 851, column: 22, scope: !4883)
!4885 = !DILocation(line: 852, column: 18, scope: !4883)
!4886 = !DILocation(line: 852, column: 15, scope: !4883)
!4887 = !DILocation(line: 852, column: 6, scope: !4883)
!4888 = !DILocation(line: 853, column: 5, scope: !4883)
!4889 = !DILocation(line: 854, column: 9, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 853, column: 12)
!4891 = !DILocation(line: 854, column: 22, scope: !4890)
!4892 = !DILocation(line: 856, column: 4, scope: !4875)
!4893 = !DILocation(line: 856, column: 18, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4868, file: !3, line: 856, column: 15)
!4895 = !DILocation(line: 856, column: 15, scope: !4894)
!4896 = !DILocation(line: 856, column: 23, scope: !4894)
!4897 = !DILocation(line: 856, column: 15, scope: !4868)
!4898 = !DILocation(line: 861, column: 8, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 856, column: 41)
!4900 = !DILocation(line: 861, column: 21, scope: !4899)
!4901 = !DILocation(line: 862, column: 17, scope: !4899)
!4902 = !DILocation(line: 862, column: 14, scope: !4899)
!4903 = !DILocation(line: 862, column: 5, scope: !4899)
!4904 = !DILocation(line: 863, column: 4, scope: !4899)
!4905 = !DILocation(line: 864, column: 5, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 863, column: 11)
!4907 = !DILocation(line: 866, column: 5, scope: !4906)
!4908 = !DILocation(line: 868, column: 3, scope: !4869)
!4909 = !DILocation(line: 868, column: 14, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 868, column: 14)
!4911 = !DILocation(line: 868, column: 19, scope: !4910)
!4912 = !DILocation(line: 868, column: 28, scope: !4910)
!4913 = !DILocation(line: 868, column: 14, scope: !4863)
!4914 = !DILocation(line: 869, column: 7, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 868, column: 57)
!4916 = !DILocation(line: 869, column: 20, scope: !4915)
!4917 = !DILocation(line: 870, column: 16, scope: !4915)
!4918 = !DILocation(line: 870, column: 13, scope: !4915)
!4919 = !DILocation(line: 871, column: 9, scope: !4915)
!4920 = !DILocation(line: 870, column: 4, scope: !4915)
!4921 = !DILocation(line: 872, column: 3, scope: !4915)
!4922 = !DILocation(line: 873, column: 4, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 872, column: 10)
!4924 = !DILocation(line: 875, column: 4, scope: !4923)
!4925 = !DILocation(line: 878, column: 10, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 878, column: 7)
!4927 = !DILocation(line: 878, column: 7, scope: !4926)
!4928 = !DILocation(line: 878, column: 15, scope: !4926)
!4929 = !DILocation(line: 878, column: 7, scope: !4772)
!4930 = !DILocation(line: 879, column: 7, scope: !4926)
!4931 = !DILocation(line: 879, column: 13, scope: !4926)
!4932 = !DILocation(line: 879, column: 4, scope: !4926)
!4933 = !DILocation(line: 881, column: 10, scope: !4772)
!4934 = !DILocation(line: 881, column: 19, scope: !4772)
!4935 = !DILocation(line: 881, column: 27, scope: !4772)
!4936 = !DILocation(line: 881, column: 7, scope: !4772)
!4937 = !DILocation(line: 882, column: 7, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 882, column: 7)
!4939 = !DILocation(line: 882, column: 12, scope: !4938)
!4940 = !DILocation(line: 882, column: 17, scope: !4938)
!4941 = !DILocation(line: 882, column: 7, scope: !4772)
!4942 = !DILocation(line: 883, column: 4, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 882, column: 39)
!4944 = !DILocation(line: 885, column: 4, scope: !4943)
!4945 = !DILocation(line: 888, column: 16, scope: !4772)
!4946 = !DILocation(line: 888, column: 21, scope: !4772)
!4947 = !DILocation(line: 888, column: 29, scope: !4772)
!4948 = !DILocation(line: 888, column: 6, scope: !4772)
!4949 = !DILocation(line: 888, column: 14, scope: !4772)
!4950 = !DILocation(line: 890, column: 10, scope: !4772)
!4951 = !DILocation(line: 890, column: 19, scope: !4772)
!4952 = !DILocation(line: 890, column: 27, scope: !4772)
!4953 = !DILocation(line: 890, column: 7, scope: !4772)
!4954 = !DILocation(line: 891, column: 7, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 891, column: 7)
!4956 = !DILocation(line: 891, column: 12, scope: !4955)
!4957 = !DILocation(line: 891, column: 17, scope: !4955)
!4958 = !DILocation(line: 891, column: 7, scope: !4772)
!4959 = !DILocation(line: 892, column: 4, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 891, column: 39)
!4961 = !DILocation(line: 894, column: 4, scope: !4960)
!4962 = !DILocation(line: 897, column: 11, scope: !4772)
!4963 = !DILocation(line: 897, column: 17, scope: !4772)
!4964 = !DILocation(line: 897, column: 24, scope: !4772)
!4965 = !DILocation(line: 897, column: 3, scope: !4772)
!4966 = !DILocation(line: 898, column: 2, scope: !4772)
!4967 = !DILocation(line: 780, column: 27, scope: !4767)
!4968 = !DILocation(line: 780, column: 2, scope: !4767)
!4969 = distinct !{!4969, !4770, !4970}
!4970 = !DILocation(line: 898, column: 2, scope: !4764)
!4971 = !DILocation(line: 900, column: 2, scope: !4687)
!4972 = !DILocation(line: 902, column: 16, scope: !4687)
!4973 = !DILocation(line: 902, column: 2, scope: !4687)
!4974 = !DILocation(line: 902, column: 8, scope: !4687)
!4975 = !DILocation(line: 902, column: 14, scope: !4687)
!4976 = !DILabel(scope: !4687, name: "end", file: !3, line: 904)
!4977 = !DILocation(line: 904, column: 7, scope: !4687)
!4978 = !DILocation(line: 905, column: 15, scope: !4687)
!4979 = !DILocation(line: 905, column: 2, scope: !4687)
!4980 = !DILocation(line: 907, column: 9, scope: !4687)
!4981 = !DILocation(line: 907, column: 2, scope: !4687)
!4982 = !DILocation(line: 908, column: 1, scope: !4687)
!4983 = distinct !DISubprogram(name: "kasan_check_read", scope: !4984, file: !4984, line: 34, type: !4985, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!4984 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!328, !4514, !7}
!4987 = !DILocalVariable(name: "p", arg: 1, scope: !4983, file: !4984, line: 34, type: !4514)
!4988 = !DILocation(line: 34, column: 58, scope: !4983)
!4989 = !DILocalVariable(name: "size", arg: 2, scope: !4983, file: !4984, line: 34, type: !7)
!4990 = !DILocation(line: 34, column: 74, scope: !4983)
!4991 = !DILocation(line: 36, column: 2, scope: !4983)
!4992 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4993, file: !4993, line: 178, type: !4994, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!4993 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4994 = !DISubroutineType(types: !4995)
!4995 = !{null, !4514, !474, !144}
!4996 = !DILocalVariable(name: "ptr", arg: 1, scope: !4992, file: !4993, line: 178, type: !4514)
!4997 = !DILocation(line: 178, column: 60, scope: !4992)
!4998 = !DILocalVariable(name: "size", arg: 2, scope: !4992, file: !4993, line: 178, type: !474)
!4999 = !DILocation(line: 178, column: 72, scope: !4992)
!5000 = !DILocalVariable(name: "type", arg: 3, scope: !4992, file: !4993, line: 179, type: !144)
!5001 = !DILocation(line: 179, column: 15, scope: !4992)
!5002 = !DILocation(line: 179, column: 23, scope: !4992)
!5003 = distinct !DISubprogram(name: "acpi_processor_ids_walk", scope: !3, file: !3, line: 633, type: !4548, scopeLine: 637, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!5004 = !DILocalVariable(name: "handle", arg: 1, scope: !5003, file: !3, line: 633, type: !147)
!5005 = !DILocation(line: 633, column: 63, scope: !5003)
!5006 = !DILocalVariable(name: "lvl", arg: 2, scope: !5003, file: !3, line: 634, type: !156)
!5007 = !DILocation(line: 634, column: 13, scope: !5003)
!5008 = !DILocalVariable(name: "context", arg: 3, scope: !5003, file: !3, line: 635, type: !149)
!5009 = !DILocation(line: 635, column: 15, scope: !5003)
!5010 = !DILocalVariable(name: "rv", arg: 4, scope: !5003, file: !3, line: 636, type: !179)
!5011 = !DILocation(line: 636, column: 16, scope: !5003)
!5012 = !DILocalVariable(name: "status", scope: !5003, file: !3, line: 638, type: !176)
!5013 = !DILocation(line: 638, column: 14, scope: !5003)
!5014 = !DILocalVariable(name: "acpi_type", scope: !5003, file: !3, line: 639, type: !4258)
!5015 = !DILocation(line: 639, column: 19, scope: !5003)
!5016 = !DILocalVariable(name: "uid", scope: !5003, file: !3, line: 640, type: !155)
!5017 = !DILocation(line: 640, column: 21, scope: !5003)
!5018 = !DILocalVariable(name: "object", scope: !5003, file: !3, line: 641, type: !4255)
!5019 = !DILocation(line: 641, column: 20, scope: !5003)
!5020 = !DILocalVariable(name: "buffer", scope: !5003, file: !3, line: 642, type: !4572)
!5021 = !DILocation(line: 642, column: 21, scope: !5003)
!5022 = !DILocation(line: 642, column: 30, scope: !5003)
!5023 = !DILocation(line: 642, column: 59, scope: !5003)
!5024 = !DILocation(line: 644, column: 25, scope: !5003)
!5025 = !DILocation(line: 644, column: 11, scope: !5003)
!5026 = !DILocation(line: 644, column: 9, scope: !5003)
!5027 = !DILocation(line: 645, column: 6, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5003, file: !3, line: 645, column: 6)
!5029 = !DILocation(line: 645, column: 6, scope: !5003)
!5030 = !DILocation(line: 646, column: 10, scope: !5028)
!5031 = !DILocation(line: 646, column: 3, scope: !5028)
!5032 = !DILocation(line: 648, column: 10, scope: !5003)
!5033 = !DILocation(line: 648, column: 2, scope: !5003)
!5034 = !DILocation(line: 650, column: 33, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5003, file: !3, line: 648, column: 21)
!5036 = !DILocation(line: 650, column: 12, scope: !5035)
!5037 = !DILocation(line: 650, column: 10, scope: !5035)
!5038 = !DILocation(line: 651, column: 7, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 651, column: 7)
!5040 = !DILocation(line: 651, column: 7, scope: !5035)
!5041 = !DILocation(line: 652, column: 4, scope: !5039)
!5042 = !DILocation(line: 653, column: 16, scope: !5035)
!5043 = !DILocation(line: 653, column: 26, scope: !5035)
!5044 = !DILocation(line: 653, column: 9, scope: !5035)
!5045 = !DILocation(line: 653, column: 7, scope: !5035)
!5046 = !DILocation(line: 654, column: 3, scope: !5035)
!5047 = !DILocation(line: 657, column: 34, scope: !5035)
!5048 = !DILocation(line: 657, column: 12, scope: !5035)
!5049 = !DILocation(line: 657, column: 10, scope: !5035)
!5050 = !DILocation(line: 658, column: 7, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 658, column: 7)
!5052 = !DILocation(line: 658, column: 7, scope: !5035)
!5053 = !DILocation(line: 659, column: 4, scope: !5051)
!5054 = !DILocation(line: 660, column: 3, scope: !5035)
!5055 = !DILocation(line: 662, column: 3, scope: !5035)
!5056 = !DILocation(line: 665, column: 33, scope: !5003)
!5057 = !DILocation(line: 665, column: 2, scope: !5003)
!5058 = !DILocation(line: 666, column: 2, scope: !5003)
!5059 = !DILabel(scope: !5003, name: "err", file: !3, line: 668)
!5060 = !DILocation(line: 668, column: 1, scope: !5003)
!5061 = !DILocation(line: 670, column: 2, scope: !5003)
!5062 = !DILocation(line: 671, column: 2, scope: !5003)
!5063 = !DILocation(line: 673, column: 1, scope: !5003)
!5064 = distinct !DISubprogram(name: "processor_validated_ids_update", scope: !3, file: !3, line: 598, type: !2001, scopeLine: 599, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!5065 = !DILocalVariable(name: "proc_id", arg: 1, scope: !5064, file: !3, line: 598, type: !144)
!5066 = !DILocation(line: 598, column: 55, scope: !5064)
!5067 = !DILocalVariable(name: "i", scope: !5064, file: !3, line: 600, type: !144)
!5068 = !DILocation(line: 600, column: 6, scope: !5064)
!5069 = !DILocation(line: 602, column: 6, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 602, column: 6)
!5071 = !DILocation(line: 602, column: 20, scope: !5070)
!5072 = !DILocation(line: 602, column: 30, scope: !5070)
!5073 = !DILocation(line: 602, column: 32, scope: !5070)
!5074 = !DILocation(line: 602, column: 49, scope: !5070)
!5075 = !DILocation(line: 602, column: 6, scope: !5064)
!5076 = !DILocation(line: 603, column: 3, scope: !5070)
!5077 = !DILocation(line: 609, column: 9, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 609, column: 2)
!5079 = !DILocation(line: 609, column: 7, scope: !5078)
!5080 = !DILocation(line: 609, column: 14, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 609, column: 2)
!5082 = !DILocation(line: 609, column: 18, scope: !5081)
!5083 = !DILocation(line: 609, column: 16, scope: !5081)
!5084 = !DILocation(line: 609, column: 2, scope: !5078)
!5085 = !DILocation(line: 610, column: 31, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5087, file: !3, line: 610, column: 7)
!5087 = distinct !DILexicalBlock(scope: !5081, file: !3, line: 609, column: 41)
!5088 = !DILocation(line: 610, column: 7, scope: !5086)
!5089 = !DILocation(line: 610, column: 37, scope: !5086)
!5090 = !DILocation(line: 610, column: 34, scope: !5086)
!5091 = !DILocation(line: 610, column: 7, scope: !5087)
!5092 = !DILocation(line: 611, column: 4, scope: !5086)
!5093 = !DILocation(line: 612, column: 2, scope: !5087)
!5094 = !DILocation(line: 609, column: 37, scope: !5081)
!5095 = !DILocation(line: 609, column: 2, scope: !5081)
!5096 = distinct !{!5096, !5084, !5097}
!5097 = !DILocation(line: 612, column: 2, scope: !5078)
!5098 = !DILocation(line: 618, column: 9, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 618, column: 2)
!5100 = !DILocation(line: 618, column: 7, scope: !5099)
!5101 = !DILocation(line: 618, column: 14, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 618, column: 2)
!5103 = !DILocation(line: 618, column: 18, scope: !5102)
!5104 = !DILocation(line: 618, column: 16, scope: !5102)
!5105 = !DILocation(line: 618, column: 2, scope: !5099)
!5106 = !DILocation(line: 619, column: 28, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 619, column: 7)
!5108 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 618, column: 38)
!5109 = !DILocation(line: 619, column: 7, scope: !5107)
!5110 = !DILocation(line: 619, column: 34, scope: !5107)
!5111 = !DILocation(line: 619, column: 31, scope: !5107)
!5112 = !DILocation(line: 619, column: 7, scope: !5108)
!5113 = !DILocation(line: 620, column: 48, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5107, file: !3, line: 619, column: 43)
!5115 = !DILocation(line: 620, column: 28, scope: !5114)
!5116 = !DILocation(line: 620, column: 4, scope: !5114)
!5117 = !DILocation(line: 620, column: 46, scope: !5114)
!5118 = !DILocation(line: 621, column: 20, scope: !5114)
!5119 = !DILocation(line: 622, column: 4, scope: !5114)
!5120 = !DILocation(line: 624, column: 2, scope: !5108)
!5121 = !DILocation(line: 618, column: 34, scope: !5102)
!5122 = !DILocation(line: 618, column: 2, scope: !5102)
!5123 = distinct !{!5123, !5105, !5124}
!5124 = !DILocation(line: 624, column: 2, scope: !5099)
!5125 = !DILocation(line: 629, column: 40, scope: !5064)
!5126 = !DILocation(line: 629, column: 23, scope: !5064)
!5127 = !DILocation(line: 629, column: 2, scope: !5064)
!5128 = !DILocation(line: 629, column: 38, scope: !5064)
!5129 = !DILocation(line: 630, column: 15, scope: !5064)
!5130 = !DILocation(line: 631, column: 1, scope: !5064)
!5131 = distinct !DISubprogram(name: "acpi_processor_add", scope: !3, file: !3, line: 367, type: !4191, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!5132 = !DILocalVariable(name: "device", arg: 1, scope: !5131, file: !3, line: 367, type: !4193)
!5133 = !DILocation(line: 367, column: 51, scope: !5131)
!5134 = !DILocalVariable(name: "id", arg: 2, scope: !5131, file: !3, line: 368, type: !3591)
!5135 = !DILocation(line: 368, column: 35, scope: !5131)
!5136 = !DILocalVariable(name: "pr", scope: !5131, file: !3, line: 370, type: !181)
!5137 = !DILocation(line: 370, column: 25, scope: !5131)
!5138 = !DILocalVariable(name: "dev", scope: !5131, file: !3, line: 371, type: !3497)
!5139 = !DILocation(line: 371, column: 17, scope: !5131)
!5140 = !DILocalVariable(name: "result", scope: !5131, file: !3, line: 372, type: !144)
!5141 = !DILocation(line: 372, column: 6, scope: !5131)
!5142 = !DILocation(line: 374, column: 7, scope: !5131)
!5143 = !DILocation(line: 374, column: 5, scope: !5131)
!5144 = !DILocation(line: 375, column: 7, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 375, column: 6)
!5146 = !DILocation(line: 375, column: 6, scope: !5131)
!5147 = !DILocation(line: 376, column: 3, scope: !5145)
!5148 = !DILocation(line: 378, column: 27, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 378, column: 6)
!5150 = !DILocation(line: 378, column: 31, scope: !5149)
!5151 = !DILocation(line: 378, column: 42, scope: !5149)
!5152 = !DILocation(line: 378, column: 7, scope: !5149)
!5153 = !DILocation(line: 378, column: 6, scope: !5131)
!5154 = !DILocation(line: 379, column: 10, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 378, column: 71)
!5156 = !DILocation(line: 380, column: 3, scope: !5155)
!5157 = !DILocation(line: 383, column: 15, scope: !5131)
!5158 = !DILocation(line: 383, column: 23, scope: !5131)
!5159 = !DILocation(line: 383, column: 2, scope: !5131)
!5160 = !DILocation(line: 383, column: 6, scope: !5131)
!5161 = !DILocation(line: 383, column: 13, scope: !5131)
!5162 = !DILocation(line: 384, column: 9, scope: !5131)
!5163 = !DILocation(line: 384, column: 2, scope: !5131)
!5164 = !DILocation(line: 385, column: 9, scope: !5131)
!5165 = !DILocation(line: 385, column: 2, scope: !5131)
!5166 = !DILocation(line: 386, column: 24, scope: !5131)
!5167 = !DILocation(line: 386, column: 2, scope: !5131)
!5168 = !DILocation(line: 386, column: 10, scope: !5131)
!5169 = !DILocation(line: 386, column: 22, scope: !5131)
!5170 = !DILocation(line: 388, column: 35, scope: !5131)
!5171 = !DILocation(line: 388, column: 11, scope: !5131)
!5172 = !DILocation(line: 388, column: 9, scope: !5131)
!5173 = !DILocation(line: 389, column: 6, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 389, column: 6)
!5175 = !DILocation(line: 389, column: 6, scope: !5131)
!5176 = !DILocation(line: 390, column: 3, scope: !5174)
!5177 = !DILocation(line: 392, column: 2, scope: !5131)
!5178 = !DILocation(line: 392, column: 2, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 392, column: 2)
!5180 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 392, column: 2)
!5181 = !DILocation(line: 392, column: 2, scope: !5180)
!5182 = !DILocation(line: 392, column: 2, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 392, column: 2)
!5184 = !DILocation(line: 392, column: 2, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 392, column: 2)
!5186 = !DILocation(line: 392, column: 2, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 392, column: 2)
!5188 = !{i32 -2140987812, i32 -2140987783, i32 -2140987737, i32 -2140987679, i32 -2140987625, i32 -2140987571, i32 -2140987516, i32 -2140987485}
!5189 = !DILocation(line: 392, column: 2, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 392, column: 2)
!5191 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 392, column: 2)
!5192 = !{i32 -2140987033, i32 -2140987026, i32 -2140986972, i32 -2140986941, i32 -2140986911}
!5193 = !DILocation(line: 392, column: 2, scope: !5191)
!5194 = !DILocation(line: 399, column: 6, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 399, column: 6)
!5196 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 399, column: 6)
!5197 = !DILocation(line: 399, column: 6, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5195, file: !3, line: 399, column: 6)
!5199 = !DILocalVariable(name: "__vpp_verify", scope: !5200, file: !3, line: 399, type: !2257)
!5200 = distinct !DILexicalBlock(scope: !5198, file: !3, line: 399, column: 6)
!5201 = !DILocation(line: 399, column: 6, scope: !5200)
!5202 = !DILocation(line: 399, column: 6, scope: !5196)
!5203 = !DILocation(line: 399, column: 46, scope: !5196)
!5204 = !DILocation(line: 399, column: 54, scope: !5196)
!5205 = !DILocation(line: 400, column: 6, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 400, column: 6)
!5207 = !DILocation(line: 400, column: 6, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 400, column: 6)
!5209 = !DILocalVariable(name: "__vpp_verify", scope: !5210, file: !3, line: 400, type: !2257)
!5210 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 400, column: 6)
!5211 = !DILocation(line: 400, column: 6, scope: !5210)
!5212 = !DILocation(line: 400, column: 6, scope: !5196)
!5213 = !DILocation(line: 400, column: 49, scope: !5196)
!5214 = !DILocation(line: 400, column: 46, scope: !5196)
!5215 = !DILocation(line: 399, column: 6, scope: !5131)
!5216 = !DILocation(line: 401, column: 3, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 400, column: 57)
!5218 = !DILocation(line: 405, column: 3, scope: !5217)
!5219 = !DILocation(line: 411, column: 44, scope: !5131)
!5220 = !DILocation(line: 411, column: 2, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 411, column: 2)
!5222 = !DILocation(line: 411, column: 2, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5221, file: !3, line: 411, column: 2)
!5224 = !DILocalVariable(name: "__vpp_verify", scope: !5225, file: !3, line: 411, type: !2257)
!5225 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 411, column: 2)
!5226 = !DILocation(line: 411, column: 2, scope: !5225)
!5227 = !DILocation(line: 411, column: 42, scope: !5131)
!5228 = !DILocation(line: 412, column: 32, scope: !5131)
!5229 = !DILocation(line: 412, column: 2, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 412, column: 2)
!5231 = !DILocation(line: 412, column: 2, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 412, column: 2)
!5233 = !DILocalVariable(name: "__vpp_verify", scope: !5234, file: !3, line: 412, type: !2257)
!5234 = distinct !DILexicalBlock(scope: !5232, file: !3, line: 412, column: 2)
!5235 = !DILocation(line: 412, column: 2, scope: !5234)
!5236 = !DILocation(line: 412, column: 30, scope: !5131)
!5237 = !DILocation(line: 414, column: 23, scope: !5131)
!5238 = !DILocation(line: 414, column: 27, scope: !5131)
!5239 = !DILocation(line: 414, column: 8, scope: !5131)
!5240 = !DILocation(line: 414, column: 6, scope: !5131)
!5241 = !DILocation(line: 415, column: 7, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 415, column: 6)
!5243 = !DILocation(line: 415, column: 6, scope: !5131)
!5244 = !DILocation(line: 416, column: 10, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 415, column: 12)
!5246 = !DILocation(line: 417, column: 3, scope: !5245)
!5247 = !DILocation(line: 420, column: 25, scope: !5131)
!5248 = !DILocation(line: 420, column: 30, scope: !5131)
!5249 = !DILocation(line: 420, column: 11, scope: !5131)
!5250 = !DILocation(line: 420, column: 9, scope: !5131)
!5251 = !DILocation(line: 421, column: 6, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 421, column: 6)
!5253 = !DILocation(line: 421, column: 6, scope: !5131)
!5254 = !DILocation(line: 422, column: 3, scope: !5252)
!5255 = !DILocation(line: 424, column: 12, scope: !5131)
!5256 = !DILocation(line: 424, column: 2, scope: !5131)
!5257 = !DILocation(line: 424, column: 6, scope: !5131)
!5258 = !DILocation(line: 424, column: 10, scope: !5131)
!5259 = !DILocation(line: 427, column: 20, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 427, column: 6)
!5261 = !DILocation(line: 427, column: 6, scope: !5260)
!5262 = !DILocation(line: 427, column: 25, scope: !5260)
!5263 = !DILocation(line: 427, column: 6, scope: !5131)
!5264 = !DILocation(line: 428, column: 3, scope: !5260)
!5265 = !DILocation(line: 430, column: 2, scope: !5131)
!5266 = !DILocation(line: 431, column: 18, scope: !5131)
!5267 = !DILocation(line: 431, column: 2, scope: !5131)
!5268 = !DILabel(scope: !5131, name: "err", file: !3, line: 433)
!5269 = !DILocation(line: 433, column: 2, scope: !5131)
!5270 = !DILocation(line: 434, column: 19, scope: !5131)
!5271 = !DILocation(line: 434, column: 23, scope: !5131)
!5272 = !DILocation(line: 434, column: 34, scope: !5131)
!5273 = !DILocation(line: 434, column: 2, scope: !5131)
!5274 = !DILocation(line: 435, column: 2, scope: !5131)
!5275 = !DILocation(line: 435, column: 10, scope: !5131)
!5276 = !DILocation(line: 435, column: 22, scope: !5131)
!5277 = !DILocation(line: 436, column: 2, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 436, column: 2)
!5279 = !DILocation(line: 436, column: 2, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 436, column: 2)
!5281 = !DILocalVariable(name: "__vpp_verify", scope: !5282, file: !3, line: 436, type: !2257)
!5282 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 436, column: 2)
!5283 = !DILocation(line: 436, column: 2, scope: !5282)
!5284 = !DILocation(line: 436, column: 30, scope: !5131)
!5285 = !DILocation(line: 436, column: 2, scope: !5131)
!5286 = !DILabel(scope: !5131, name: "err_free_pr", file: !3, line: 437)
!5287 = !DILocation(line: 437, column: 2, scope: !5131)
!5288 = !DILocation(line: 438, column: 8, scope: !5131)
!5289 = !DILocation(line: 438, column: 2, scope: !5131)
!5290 = !DILocation(line: 439, column: 9, scope: !5131)
!5291 = !DILocation(line: 439, column: 2, scope: !5131)
!5292 = !DILocation(line: 440, column: 1, scope: !5131)
!5293 = distinct !DISubprogram(name: "kzalloc", scope: !137, file: !137, line: 662, type: !5294, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{!149, !474, !177}
!5296 = !DILocalVariable(name: "s", arg: 1, scope: !5297, file: !137, line: 445, type: !1077)
!5297 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !137, file: !137, line: 445, type: !5298, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!5298 = !DISubroutineType(types: !5299)
!5299 = !{!149, !1077, !177, !474}
!5300 = !DILocation(line: 445, column: 72, scope: !5297, inlinedAt: !5301)
!5301 = distinct !DILocation(line: 552, column: 10, scope: !5302, inlinedAt: !5305)
!5302 = distinct !DILexicalBlock(scope: !5303, file: !137, line: 540, column: 34)
!5303 = distinct !DILexicalBlock(scope: !5304, file: !137, line: 540, column: 6)
!5304 = distinct !DISubprogram(name: "kmalloc", scope: !137, file: !137, line: 538, type: !5294, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!5305 = distinct !DILocation(line: 664, column: 9, scope: !5293)
!5306 = !DILocalVariable(name: "flags", arg: 2, scope: !5297, file: !137, line: 446, type: !177)
!5307 = !DILocation(line: 446, column: 9, scope: !5297, inlinedAt: !5301)
!5308 = !DILocalVariable(name: "size", arg: 3, scope: !5297, file: !137, line: 446, type: !474)
!5309 = !DILocation(line: 446, column: 23, scope: !5297, inlinedAt: !5301)
!5310 = !DILocalVariable(name: "ret", scope: !5297, file: !137, line: 448, type: !149)
!5311 = !DILocation(line: 448, column: 8, scope: !5297, inlinedAt: !5301)
!5312 = !DILocalVariable(name: "flags", arg: 1, scope: !5313, file: !137, line: 318, type: !177)
!5313 = distinct !DISubprogram(name: "kmalloc_type", scope: !137, file: !137, line: 318, type: !5314, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!5314 = !DISubroutineType(types: !5315)
!5315 = !{!136, !177}
!5316 = !DILocation(line: 318, column: 67, scope: !5313, inlinedAt: !5317)
!5317 = distinct !DILocation(line: 553, column: 20, scope: !5302, inlinedAt: !5305)
!5318 = !DILocalVariable(name: "size", arg: 1, scope: !5319, file: !137, line: 346, type: !474)
!5319 = distinct !DISubprogram(name: "kmalloc_index", scope: !137, file: !137, line: 346, type: !5320, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!5320 = !DISubroutineType(types: !5321)
!5321 = !{!7, !474}
!5322 = !DILocation(line: 346, column: 58, scope: !5319, inlinedAt: !5323)
!5323 = distinct !DILocation(line: 547, column: 11, scope: !5302, inlinedAt: !5305)
!5324 = !DILocalVariable(name: "size", arg: 1, scope: !5325, file: !137, line: 472, type: !474)
!5325 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !137, file: !137, line: 472, type: !5326, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!5326 = !DISubroutineType(types: !5327)
!5327 = !{!149, !474, !177, !7}
!5328 = !DILocation(line: 472, column: 28, scope: !5325, inlinedAt: !5329)
!5329 = distinct !DILocation(line: 481, column: 9, scope: !5330, inlinedAt: !5331)
!5330 = distinct !DISubprogram(name: "kmalloc_large", scope: !137, file: !137, line: 478, type: !5294, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!5331 = distinct !DILocation(line: 545, column: 11, scope: !5332, inlinedAt: !5305)
!5332 = distinct !DILexicalBlock(scope: !5302, file: !137, line: 544, column: 7)
!5333 = !DILocalVariable(name: "flags", arg: 2, scope: !5325, file: !137, line: 472, type: !177)
!5334 = !DILocation(line: 472, column: 40, scope: !5325, inlinedAt: !5329)
!5335 = !DILocalVariable(name: "order", arg: 3, scope: !5325, file: !137, line: 472, type: !7)
!5336 = !DILocation(line: 472, column: 60, scope: !5325, inlinedAt: !5329)
!5337 = !DILocalVariable(name: "size", arg: 1, scope: !5330, file: !137, line: 478, type: !474)
!5338 = !DILocation(line: 478, column: 51, scope: !5330, inlinedAt: !5331)
!5339 = !DILocalVariable(name: "flags", arg: 2, scope: !5330, file: !137, line: 478, type: !177)
!5340 = !DILocation(line: 478, column: 63, scope: !5330, inlinedAt: !5331)
!5341 = !DILocalVariable(name: "order", scope: !5330, file: !137, line: 480, type: !7)
!5342 = !DILocation(line: 480, column: 15, scope: !5330, inlinedAt: !5331)
!5343 = !DILocalVariable(name: "size", arg: 1, scope: !5304, file: !137, line: 538, type: !474)
!5344 = !DILocation(line: 538, column: 45, scope: !5304, inlinedAt: !5305)
!5345 = !DILocalVariable(name: "flags", arg: 2, scope: !5304, file: !137, line: 538, type: !177)
!5346 = !DILocation(line: 538, column: 57, scope: !5304, inlinedAt: !5305)
!5347 = !DILocalVariable(name: "index", scope: !5302, file: !137, line: 542, type: !7)
!5348 = !DILocation(line: 542, column: 16, scope: !5302, inlinedAt: !5305)
!5349 = !DILocalVariable(name: "size", arg: 1, scope: !5293, file: !137, line: 662, type: !474)
!5350 = !DILocation(line: 662, column: 36, scope: !5293)
!5351 = !DILocalVariable(name: "flags", arg: 2, scope: !5293, file: !137, line: 662, type: !177)
!5352 = !DILocation(line: 662, column: 48, scope: !5293)
!5353 = !DILocation(line: 664, column: 17, scope: !5293)
!5354 = !DILocation(line: 664, column: 23, scope: !5293)
!5355 = !DILocation(line: 664, column: 29, scope: !5293)
!5356 = !DILocation(line: 540, column: 27, scope: !5303, inlinedAt: !5305)
!5357 = !DILocation(line: 540, column: 6, scope: !5303, inlinedAt: !5305)
!5358 = !DILocation(line: 540, column: 6, scope: !5304, inlinedAt: !5305)
!5359 = !DILocation(line: 544, column: 7, scope: !5332, inlinedAt: !5305)
!5360 = !DILocation(line: 544, column: 12, scope: !5332, inlinedAt: !5305)
!5361 = !DILocation(line: 544, column: 7, scope: !5302, inlinedAt: !5305)
!5362 = !DILocation(line: 545, column: 25, scope: !5332, inlinedAt: !5305)
!5363 = !DILocation(line: 545, column: 31, scope: !5332, inlinedAt: !5305)
!5364 = !DILocation(line: 480, column: 33, scope: !5330, inlinedAt: !5331)
!5365 = !DILocation(line: 480, column: 23, scope: !5330, inlinedAt: !5331)
!5366 = !DILocation(line: 481, column: 29, scope: !5330, inlinedAt: !5331)
!5367 = !DILocation(line: 481, column: 35, scope: !5330, inlinedAt: !5331)
!5368 = !DILocation(line: 481, column: 42, scope: !5330, inlinedAt: !5331)
!5369 = !DILocation(line: 474, column: 23, scope: !5325, inlinedAt: !5329)
!5370 = !DILocation(line: 474, column: 29, scope: !5325, inlinedAt: !5329)
!5371 = !DILocation(line: 474, column: 36, scope: !5325, inlinedAt: !5329)
!5372 = !DILocation(line: 474, column: 9, scope: !5325, inlinedAt: !5329)
!5373 = !DILocation(line: 545, column: 4, scope: !5332, inlinedAt: !5305)
!5374 = !DILocation(line: 547, column: 25, scope: !5302, inlinedAt: !5305)
!5375 = !DILocation(line: 348, column: 7, scope: !5376, inlinedAt: !5323)
!5376 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 348, column: 6)
!5377 = !DILocation(line: 348, column: 6, scope: !5319, inlinedAt: !5323)
!5378 = !DILocation(line: 349, column: 3, scope: !5376, inlinedAt: !5323)
!5379 = !DILocation(line: 351, column: 6, scope: !5380, inlinedAt: !5323)
!5380 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 351, column: 6)
!5381 = !DILocation(line: 351, column: 11, scope: !5380, inlinedAt: !5323)
!5382 = !DILocation(line: 351, column: 6, scope: !5319, inlinedAt: !5323)
!5383 = !DILocation(line: 352, column: 3, scope: !5380, inlinedAt: !5323)
!5384 = !DILocation(line: 354, column: 32, scope: !5385, inlinedAt: !5323)
!5385 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 354, column: 6)
!5386 = !DILocation(line: 354, column: 37, scope: !5385, inlinedAt: !5323)
!5387 = !DILocation(line: 354, column: 42, scope: !5385, inlinedAt: !5323)
!5388 = !DILocation(line: 354, column: 45, scope: !5385, inlinedAt: !5323)
!5389 = !DILocation(line: 354, column: 50, scope: !5385, inlinedAt: !5323)
!5390 = !DILocation(line: 354, column: 6, scope: !5319, inlinedAt: !5323)
!5391 = !DILocation(line: 355, column: 3, scope: !5385, inlinedAt: !5323)
!5392 = !DILocation(line: 356, column: 32, scope: !5393, inlinedAt: !5323)
!5393 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 356, column: 6)
!5394 = !DILocation(line: 356, column: 37, scope: !5393, inlinedAt: !5323)
!5395 = !DILocation(line: 356, column: 43, scope: !5393, inlinedAt: !5323)
!5396 = !DILocation(line: 356, column: 46, scope: !5393, inlinedAt: !5323)
!5397 = !DILocation(line: 356, column: 51, scope: !5393, inlinedAt: !5323)
!5398 = !DILocation(line: 356, column: 6, scope: !5319, inlinedAt: !5323)
!5399 = !DILocation(line: 357, column: 3, scope: !5393, inlinedAt: !5323)
!5400 = !DILocation(line: 358, column: 6, scope: !5401, inlinedAt: !5323)
!5401 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 358, column: 6)
!5402 = !DILocation(line: 358, column: 11, scope: !5401, inlinedAt: !5323)
!5403 = !DILocation(line: 358, column: 6, scope: !5319, inlinedAt: !5323)
!5404 = !DILocation(line: 358, column: 26, scope: !5401, inlinedAt: !5323)
!5405 = !DILocation(line: 359, column: 6, scope: !5406, inlinedAt: !5323)
!5406 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 359, column: 6)
!5407 = !DILocation(line: 359, column: 11, scope: !5406, inlinedAt: !5323)
!5408 = !DILocation(line: 359, column: 6, scope: !5319, inlinedAt: !5323)
!5409 = !DILocation(line: 359, column: 26, scope: !5406, inlinedAt: !5323)
!5410 = !DILocation(line: 360, column: 6, scope: !5411, inlinedAt: !5323)
!5411 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 360, column: 6)
!5412 = !DILocation(line: 360, column: 11, scope: !5411, inlinedAt: !5323)
!5413 = !DILocation(line: 360, column: 6, scope: !5319, inlinedAt: !5323)
!5414 = !DILocation(line: 360, column: 26, scope: !5411, inlinedAt: !5323)
!5415 = !DILocation(line: 361, column: 6, scope: !5416, inlinedAt: !5323)
!5416 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 361, column: 6)
!5417 = !DILocation(line: 361, column: 11, scope: !5416, inlinedAt: !5323)
!5418 = !DILocation(line: 361, column: 6, scope: !5319, inlinedAt: !5323)
!5419 = !DILocation(line: 361, column: 26, scope: !5416, inlinedAt: !5323)
!5420 = !DILocation(line: 362, column: 6, scope: !5421, inlinedAt: !5323)
!5421 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 362, column: 6)
!5422 = !DILocation(line: 362, column: 11, scope: !5421, inlinedAt: !5323)
!5423 = !DILocation(line: 362, column: 6, scope: !5319, inlinedAt: !5323)
!5424 = !DILocation(line: 362, column: 26, scope: !5421, inlinedAt: !5323)
!5425 = !DILocation(line: 363, column: 6, scope: !5426, inlinedAt: !5323)
!5426 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 363, column: 6)
!5427 = !DILocation(line: 363, column: 11, scope: !5426, inlinedAt: !5323)
!5428 = !DILocation(line: 363, column: 6, scope: !5319, inlinedAt: !5323)
!5429 = !DILocation(line: 363, column: 26, scope: !5426, inlinedAt: !5323)
!5430 = !DILocation(line: 364, column: 6, scope: !5431, inlinedAt: !5323)
!5431 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 364, column: 6)
!5432 = !DILocation(line: 364, column: 11, scope: !5431, inlinedAt: !5323)
!5433 = !DILocation(line: 364, column: 6, scope: !5319, inlinedAt: !5323)
!5434 = !DILocation(line: 364, column: 26, scope: !5431, inlinedAt: !5323)
!5435 = !DILocation(line: 365, column: 6, scope: !5436, inlinedAt: !5323)
!5436 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 365, column: 6)
!5437 = !DILocation(line: 365, column: 11, scope: !5436, inlinedAt: !5323)
!5438 = !DILocation(line: 365, column: 6, scope: !5319, inlinedAt: !5323)
!5439 = !DILocation(line: 365, column: 26, scope: !5436, inlinedAt: !5323)
!5440 = !DILocation(line: 366, column: 6, scope: !5441, inlinedAt: !5323)
!5441 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 366, column: 6)
!5442 = !DILocation(line: 366, column: 11, scope: !5441, inlinedAt: !5323)
!5443 = !DILocation(line: 366, column: 6, scope: !5319, inlinedAt: !5323)
!5444 = !DILocation(line: 366, column: 26, scope: !5441, inlinedAt: !5323)
!5445 = !DILocation(line: 367, column: 6, scope: !5446, inlinedAt: !5323)
!5446 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 367, column: 6)
!5447 = !DILocation(line: 367, column: 11, scope: !5446, inlinedAt: !5323)
!5448 = !DILocation(line: 367, column: 6, scope: !5319, inlinedAt: !5323)
!5449 = !DILocation(line: 367, column: 26, scope: !5446, inlinedAt: !5323)
!5450 = !DILocation(line: 368, column: 6, scope: !5451, inlinedAt: !5323)
!5451 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 368, column: 6)
!5452 = !DILocation(line: 368, column: 11, scope: !5451, inlinedAt: !5323)
!5453 = !DILocation(line: 368, column: 6, scope: !5319, inlinedAt: !5323)
!5454 = !DILocation(line: 368, column: 26, scope: !5451, inlinedAt: !5323)
!5455 = !DILocation(line: 369, column: 6, scope: !5456, inlinedAt: !5323)
!5456 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 369, column: 6)
!5457 = !DILocation(line: 369, column: 11, scope: !5456, inlinedAt: !5323)
!5458 = !DILocation(line: 369, column: 6, scope: !5319, inlinedAt: !5323)
!5459 = !DILocation(line: 369, column: 26, scope: !5456, inlinedAt: !5323)
!5460 = !DILocation(line: 370, column: 6, scope: !5461, inlinedAt: !5323)
!5461 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 370, column: 6)
!5462 = !DILocation(line: 370, column: 11, scope: !5461, inlinedAt: !5323)
!5463 = !DILocation(line: 370, column: 6, scope: !5319, inlinedAt: !5323)
!5464 = !DILocation(line: 370, column: 26, scope: !5461, inlinedAt: !5323)
!5465 = !DILocation(line: 371, column: 6, scope: !5466, inlinedAt: !5323)
!5466 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 371, column: 6)
!5467 = !DILocation(line: 371, column: 11, scope: !5466, inlinedAt: !5323)
!5468 = !DILocation(line: 371, column: 6, scope: !5319, inlinedAt: !5323)
!5469 = !DILocation(line: 371, column: 26, scope: !5466, inlinedAt: !5323)
!5470 = !DILocation(line: 372, column: 6, scope: !5471, inlinedAt: !5323)
!5471 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 372, column: 6)
!5472 = !DILocation(line: 372, column: 11, scope: !5471, inlinedAt: !5323)
!5473 = !DILocation(line: 372, column: 6, scope: !5319, inlinedAt: !5323)
!5474 = !DILocation(line: 372, column: 26, scope: !5471, inlinedAt: !5323)
!5475 = !DILocation(line: 373, column: 6, scope: !5476, inlinedAt: !5323)
!5476 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 373, column: 6)
!5477 = !DILocation(line: 373, column: 11, scope: !5476, inlinedAt: !5323)
!5478 = !DILocation(line: 373, column: 6, scope: !5319, inlinedAt: !5323)
!5479 = !DILocation(line: 373, column: 26, scope: !5476, inlinedAt: !5323)
!5480 = !DILocation(line: 374, column: 6, scope: !5481, inlinedAt: !5323)
!5481 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 374, column: 6)
!5482 = !DILocation(line: 374, column: 11, scope: !5481, inlinedAt: !5323)
!5483 = !DILocation(line: 374, column: 6, scope: !5319, inlinedAt: !5323)
!5484 = !DILocation(line: 374, column: 26, scope: !5481, inlinedAt: !5323)
!5485 = !DILocation(line: 375, column: 6, scope: !5486, inlinedAt: !5323)
!5486 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 375, column: 6)
!5487 = !DILocation(line: 375, column: 11, scope: !5486, inlinedAt: !5323)
!5488 = !DILocation(line: 375, column: 6, scope: !5319, inlinedAt: !5323)
!5489 = !DILocation(line: 375, column: 27, scope: !5486, inlinedAt: !5323)
!5490 = !DILocation(line: 376, column: 6, scope: !5491, inlinedAt: !5323)
!5491 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 376, column: 6)
!5492 = !DILocation(line: 376, column: 11, scope: !5491, inlinedAt: !5323)
!5493 = !DILocation(line: 376, column: 6, scope: !5319, inlinedAt: !5323)
!5494 = !DILocation(line: 376, column: 32, scope: !5491, inlinedAt: !5323)
!5495 = !DILocation(line: 377, column: 6, scope: !5496, inlinedAt: !5323)
!5496 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 377, column: 6)
!5497 = !DILocation(line: 377, column: 11, scope: !5496, inlinedAt: !5323)
!5498 = !DILocation(line: 377, column: 6, scope: !5319, inlinedAt: !5323)
!5499 = !DILocation(line: 377, column: 32, scope: !5496, inlinedAt: !5323)
!5500 = !DILocation(line: 378, column: 6, scope: !5501, inlinedAt: !5323)
!5501 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 378, column: 6)
!5502 = !DILocation(line: 378, column: 11, scope: !5501, inlinedAt: !5323)
!5503 = !DILocation(line: 378, column: 6, scope: !5319, inlinedAt: !5323)
!5504 = !DILocation(line: 378, column: 32, scope: !5501, inlinedAt: !5323)
!5505 = !DILocation(line: 379, column: 6, scope: !5506, inlinedAt: !5323)
!5506 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 379, column: 6)
!5507 = !DILocation(line: 379, column: 11, scope: !5506, inlinedAt: !5323)
!5508 = !DILocation(line: 379, column: 6, scope: !5319, inlinedAt: !5323)
!5509 = !DILocation(line: 379, column: 33, scope: !5506, inlinedAt: !5323)
!5510 = !DILocation(line: 380, column: 6, scope: !5511, inlinedAt: !5323)
!5511 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 380, column: 6)
!5512 = !DILocation(line: 380, column: 11, scope: !5511, inlinedAt: !5323)
!5513 = !DILocation(line: 380, column: 6, scope: !5319, inlinedAt: !5323)
!5514 = !DILocation(line: 380, column: 33, scope: !5511, inlinedAt: !5323)
!5515 = !DILocation(line: 381, column: 6, scope: !5516, inlinedAt: !5323)
!5516 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 381, column: 6)
!5517 = !DILocation(line: 381, column: 11, scope: !5516, inlinedAt: !5323)
!5518 = !DILocation(line: 381, column: 6, scope: !5319, inlinedAt: !5323)
!5519 = !DILocation(line: 381, column: 33, scope: !5516, inlinedAt: !5323)
!5520 = !DILocation(line: 382, column: 2, scope: !5521, inlinedAt: !5323)
!5521 = distinct !DILexicalBlock(scope: !5522, file: !137, line: 382, column: 2)
!5522 = distinct !DILexicalBlock(scope: !5319, file: !137, line: 382, column: 2)
!5523 = !{i32 -2144199991, i32 -2144199962, i32 -2144199916, i32 -2144199858, i32 -2144199804, i32 -2144199750, i32 -2144199695, i32 -2144199664}
!5524 = !DILocation(line: 382, column: 2, scope: !5525, inlinedAt: !5323)
!5525 = distinct !DILexicalBlock(scope: !5526, file: !137, line: 382, column: 2)
!5526 = distinct !DILexicalBlock(scope: !5522, file: !137, line: 382, column: 2)
!5527 = !{i32 -2144199221, i32 -2144199214, i32 -2144199160, i32 -2144199129, i32 -2144199099}
!5528 = !DILocation(line: 382, column: 2, scope: !5526, inlinedAt: !5323)
!5529 = !DILocation(line: 386, column: 1, scope: !5319, inlinedAt: !5323)
!5530 = !DILocation(line: 547, column: 9, scope: !5302, inlinedAt: !5305)
!5531 = !DILocation(line: 549, column: 8, scope: !5532, inlinedAt: !5305)
!5532 = distinct !DILexicalBlock(scope: !5302, file: !137, line: 549, column: 7)
!5533 = !DILocation(line: 549, column: 7, scope: !5302, inlinedAt: !5305)
!5534 = !DILocation(line: 550, column: 4, scope: !5532, inlinedAt: !5305)
!5535 = !DILocation(line: 553, column: 33, scope: !5302, inlinedAt: !5305)
!5536 = !DILocation(line: 325, column: 6, scope: !5537, inlinedAt: !5317)
!5537 = distinct !DILexicalBlock(scope: !5313, file: !137, line: 325, column: 6)
!5538 = !DILocation(line: 325, column: 6, scope: !5313, inlinedAt: !5317)
!5539 = !DILocation(line: 326, column: 3, scope: !5537, inlinedAt: !5317)
!5540 = !DILocation(line: 332, column: 9, scope: !5313, inlinedAt: !5317)
!5541 = !DILocation(line: 332, column: 15, scope: !5313, inlinedAt: !5317)
!5542 = !DILocation(line: 332, column: 2, scope: !5313, inlinedAt: !5317)
!5543 = !DILocation(line: 336, column: 1, scope: !5313, inlinedAt: !5317)
!5544 = !DILocation(line: 553, column: 5, scope: !5302, inlinedAt: !5305)
!5545 = !DILocation(line: 553, column: 41, scope: !5302, inlinedAt: !5305)
!5546 = !DILocation(line: 554, column: 5, scope: !5302, inlinedAt: !5305)
!5547 = !DILocation(line: 554, column: 12, scope: !5302, inlinedAt: !5305)
!5548 = !DILocation(line: 448, column: 31, scope: !5297, inlinedAt: !5301)
!5549 = !DILocation(line: 448, column: 34, scope: !5297, inlinedAt: !5301)
!5550 = !DILocation(line: 448, column: 14, scope: !5297, inlinedAt: !5301)
!5551 = !DILocation(line: 450, column: 22, scope: !5297, inlinedAt: !5301)
!5552 = !DILocation(line: 450, column: 25, scope: !5297, inlinedAt: !5301)
!5553 = !DILocation(line: 450, column: 30, scope: !5297, inlinedAt: !5301)
!5554 = !DILocation(line: 450, column: 36, scope: !5297, inlinedAt: !5301)
!5555 = !DILocation(line: 450, column: 8, scope: !5297, inlinedAt: !5301)
!5556 = !DILocation(line: 450, column: 6, scope: !5297, inlinedAt: !5301)
!5557 = !DILocation(line: 451, column: 9, scope: !5297, inlinedAt: !5301)
!5558 = !DILocation(line: 552, column: 3, scope: !5302, inlinedAt: !5305)
!5559 = !DILocation(line: 557, column: 19, scope: !5304, inlinedAt: !5305)
!5560 = !DILocation(line: 557, column: 25, scope: !5304, inlinedAt: !5305)
!5561 = !DILocation(line: 557, column: 9, scope: !5304, inlinedAt: !5305)
!5562 = !DILocation(line: 557, column: 2, scope: !5304, inlinedAt: !5305)
!5563 = !DILocation(line: 558, column: 1, scope: !5304, inlinedAt: !5305)
!5564 = !DILocation(line: 664, column: 2, scope: !5293)
!5565 = distinct !DISubprogram(name: "zalloc_cpumask_var", scope: !285, file: !285, line: 772, type: !5566, scopeLine: 773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!5566 = !DISubroutineType(types: !5567)
!5567 = !{!328, !5568, !177}
!5568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!5569 = !DILocalVariable(name: "mask", arg: 1, scope: !5565, file: !285, line: 772, type: !5568)
!5570 = !DILocation(line: 772, column: 54, scope: !5565)
!5571 = !DILocalVariable(name: "flags", arg: 2, scope: !5565, file: !285, line: 772, type: !177)
!5572 = !DILocation(line: 772, column: 66, scope: !5565)
!5573 = !DILocation(line: 774, column: 17, scope: !5565)
!5574 = !DILocation(line: 774, column: 16, scope: !5565)
!5575 = !DILocation(line: 774, column: 2, scope: !5565)
!5576 = !DILocation(line: 775, column: 2, scope: !5565)
!5577 = !DILocalVariable(name: "device", arg: 1, scope: !4463, file: !3, line: 229, type: !4193)
!5578 = !DILocation(line: 229, column: 56, scope: !4463)
!5579 = !DILocalVariable(name: "object", scope: !4463, file: !3, line: 231, type: !4255)
!5580 = !DILocation(line: 231, column: 20, scope: !4463)
!5581 = !DILocalVariable(name: "buffer", scope: !4463, file: !3, line: 232, type: !4572)
!5582 = !DILocation(line: 232, column: 21, scope: !4463)
!5583 = !DILocation(line: 232, column: 30, scope: !4463)
!5584 = !DILocation(line: 232, column: 59, scope: !4463)
!5585 = !DILocalVariable(name: "pr", scope: !4463, file: !3, line: 233, type: !181)
!5586 = !DILocation(line: 233, column: 25, scope: !4463)
!5587 = !DILocation(line: 233, column: 47, scope: !4463)
!5588 = !DILocation(line: 233, column: 30, scope: !4463)
!5589 = !DILocalVariable(name: "device_declaration", scope: !4463, file: !3, line: 234, type: !144)
!5590 = !DILocation(line: 234, column: 6, scope: !4463)
!5591 = !DILocalVariable(name: "status", scope: !4463, file: !3, line: 235, type: !176)
!5592 = !DILocation(line: 235, column: 14, scope: !4463)
!5593 = !DILocalVariable(name: "value", scope: !4463, file: !3, line: 237, type: !155)
!5594 = !DILocation(line: 237, column: 21, scope: !4463)
!5595 = !DILocation(line: 239, column: 2, scope: !4463)
!5596 = !DILocation(line: 245, column: 20, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 245, column: 6)
!5598 = !DILocation(line: 245, column: 6, scope: !5597)
!5599 = !DILocation(line: 245, column: 38, scope: !5597)
!5600 = !DILocation(line: 245, column: 55, scope: !5597)
!5601 = !DILocation(line: 245, column: 41, scope: !5597)
!5602 = !DILocation(line: 245, column: 6, scope: !4463)
!5603 = !DILocation(line: 246, column: 3, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 245, column: 75)
!5605 = !DILocation(line: 246, column: 7, scope: !5604)
!5606 = !DILocation(line: 246, column: 13, scope: !5604)
!5607 = !DILocation(line: 246, column: 24, scope: !5604)
!5608 = !DILocation(line: 249, column: 2, scope: !5604)
!5609 = !DILocation(line: 253, column: 30, scope: !5610)
!5610 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 253, column: 6)
!5611 = !DILocation(line: 253, column: 14, scope: !5610)
!5612 = !DILocation(line: 253, column: 7, scope: !5610)
!5613 = !DILocation(line: 253, column: 6, scope: !4463)
!5614 = !DILocation(line: 255, column: 33, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5610, file: !3, line: 253, column: 67)
!5616 = !DILocation(line: 255, column: 37, scope: !5615)
!5617 = !DILocation(line: 255, column: 12, scope: !5615)
!5618 = !DILocation(line: 255, column: 10, scope: !5615)
!5619 = !DILocation(line: 256, column: 7, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 256, column: 7)
!5621 = !DILocation(line: 256, column: 7, scope: !5615)
!5622 = !DILocation(line: 257, column: 4, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5620, file: !3, line: 256, column: 29)
!5624 = !DILocation(line: 260, column: 4, scope: !5623)
!5625 = !DILocation(line: 263, column: 24, scope: !5615)
!5626 = !DILocation(line: 263, column: 34, scope: !5615)
!5627 = !DILocation(line: 263, column: 3, scope: !5615)
!5628 = !DILocation(line: 263, column: 7, scope: !5615)
!5629 = !DILocation(line: 263, column: 15, scope: !5615)
!5630 = !DILocation(line: 264, column: 2, scope: !5615)
!5631 = !DILocation(line: 268, column: 34, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5610, file: !3, line: 264, column: 9)
!5633 = !DILocation(line: 268, column: 38, scope: !5632)
!5634 = !DILocation(line: 268, column: 12, scope: !5632)
!5635 = !DILocation(line: 268, column: 10, scope: !5632)
!5636 = !DILocation(line: 270, column: 7, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5632, file: !3, line: 270, column: 7)
!5638 = !DILocation(line: 270, column: 7, scope: !5632)
!5639 = !DILocation(line: 271, column: 4, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5637, file: !3, line: 270, column: 29)
!5641 = !DILocation(line: 274, column: 4, scope: !5640)
!5642 = !DILocation(line: 276, column: 22, scope: !5632)
!5643 = !DILocation(line: 277, column: 17, scope: !5632)
!5644 = !DILocation(line: 277, column: 3, scope: !5632)
!5645 = !DILocation(line: 277, column: 7, scope: !5632)
!5646 = !DILocation(line: 277, column: 15, scope: !5632)
!5647 = !DILocation(line: 280, column: 34, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 280, column: 6)
!5649 = !DILocation(line: 280, column: 38, scope: !5648)
!5650 = !DILocation(line: 280, column: 6, scope: !5648)
!5651 = !DILocation(line: 280, column: 6, scope: !4463)
!5652 = !DILocation(line: 281, column: 7, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 281, column: 7)
!5654 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 280, column: 48)
!5655 = !DILocation(line: 281, column: 11, scope: !5653)
!5656 = !DILocation(line: 281, column: 19, scope: !5653)
!5657 = !DILocation(line: 281, column: 7, scope: !5654)
!5658 = !DILocation(line: 282, column: 4, scope: !5653)
!5659 = !DILocation(line: 282, column: 4, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 282, column: 4)
!5661 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 282, column: 4)
!5662 = !DILocation(line: 282, column: 4, scope: !5661)
!5663 = !DILocation(line: 282, column: 4, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5660, file: !3, line: 282, column: 4)
!5665 = !DILocation(line: 285, column: 4, scope: !5653)
!5666 = !DILocation(line: 288, column: 3, scope: !5654)
!5667 = !DILocation(line: 291, column: 33, scope: !4463)
!5668 = !DILocation(line: 291, column: 37, scope: !4463)
!5669 = !DILocation(line: 291, column: 45, scope: !4463)
!5670 = !DILocation(line: 292, column: 6, scope: !4463)
!5671 = !DILocation(line: 292, column: 10, scope: !4463)
!5672 = !DILocation(line: 291, column: 16, scope: !4463)
!5673 = !DILocation(line: 291, column: 2, scope: !4463)
!5674 = !DILocation(line: 291, column: 6, scope: !4463)
!5675 = !DILocation(line: 291, column: 14, scope: !4463)
!5676 = !DILocation(line: 293, column: 25, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 293, column: 6)
!5678 = !DILocation(line: 293, column: 29, scope: !5677)
!5679 = !DILocation(line: 293, column: 6, scope: !5677)
!5680 = !DILocation(line: 293, column: 6, scope: !4463)
!5681 = !DILocation(line: 294, column: 3, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5683, file: !3, line: 294, column: 3)
!5683 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 294, column: 3)
!5684 = !DILocation(line: 294, column: 3, scope: !5683)
!5685 = !DILocation(line: 294, column: 3, scope: !5677)
!5686 = !DILocation(line: 296, column: 26, scope: !4463)
!5687 = !DILocation(line: 296, column: 30, scope: !4463)
!5688 = !DILocation(line: 296, column: 39, scope: !4463)
!5689 = !DILocation(line: 296, column: 43, scope: !4463)
!5690 = !DILocation(line: 296, column: 11, scope: !4463)
!5691 = !DILocation(line: 296, column: 2, scope: !4463)
!5692 = !DILocation(line: 296, column: 6, scope: !4463)
!5693 = !DILocation(line: 296, column: 9, scope: !4463)
!5694 = !DILocation(line: 297, column: 7, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 297, column: 6)
!5696 = !DILocation(line: 297, column: 24, scope: !5695)
!5697 = !DILocation(line: 297, column: 28, scope: !5695)
!5698 = !DILocation(line: 297, column: 6, scope: !4463)
!5699 = !DILocation(line: 298, column: 20, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 297, column: 52)
!5701 = !DILocation(line: 303, column: 29, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5700, file: !3, line: 303, column: 7)
!5703 = !DILocation(line: 303, column: 33, scope: !5702)
!5704 = !DILocation(line: 303, column: 7, scope: !5702)
!5705 = !DILocation(line: 303, column: 7, scope: !5700)
!5706 = !DILocation(line: 304, column: 4, scope: !5702)
!5707 = !DILocation(line: 304, column: 8, scope: !5702)
!5708 = !DILocation(line: 304, column: 11, scope: !5702)
!5709 = !DILocation(line: 305, column: 2, scope: !5700)
!5710 = !DILocation(line: 315, column: 28, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 315, column: 6)
!5712 = !DILocation(line: 315, column: 32, scope: !5711)
!5713 = !DILocation(line: 315, column: 6, scope: !5711)
!5714 = !DILocation(line: 315, column: 36, scope: !5711)
!5715 = !DILocation(line: 315, column: 40, scope: !5711)
!5716 = !DILocation(line: 315, column: 6, scope: !4463)
!5717 = !DILocalVariable(name: "ret", scope: !5718, file: !3, line: 316, type: !144)
!5718 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 315, column: 61)
!5719 = !DILocation(line: 316, column: 7, scope: !5718)
!5720 = !DILocation(line: 316, column: 40, scope: !5718)
!5721 = !DILocation(line: 316, column: 13, scope: !5718)
!5722 = !DILocation(line: 317, column: 7, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5718, file: !3, line: 317, column: 7)
!5724 = !DILocation(line: 317, column: 7, scope: !5718)
!5725 = !DILocation(line: 318, column: 11, scope: !5723)
!5726 = !DILocation(line: 318, column: 4, scope: !5723)
!5727 = !DILocation(line: 319, column: 2, scope: !5718)
!5728 = !DILocation(line: 330, column: 10, scope: !4463)
!5729 = !DILocation(line: 330, column: 44, scope: !4463)
!5730 = !DILocation(line: 330, column: 48, scope: !4463)
!5731 = !DILocation(line: 330, column: 2, scope: !4463)
!5732 = !DILocation(line: 334, column: 14, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 334, column: 6)
!5734 = !DILocation(line: 334, column: 24, scope: !5733)
!5735 = !DILocation(line: 334, column: 7, scope: !5733)
!5736 = !DILocation(line: 334, column: 6, scope: !4463)
!5737 = !DILocation(line: 336, column: 18, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 336, column: 11)
!5739 = !DILocation(line: 336, column: 28, scope: !5738)
!5740 = !DILocation(line: 336, column: 40, scope: !5738)
!5741 = !DILocation(line: 336, column: 11, scope: !5733)
!5742 = !DILocation(line: 337, column: 3, scope: !5738)
!5743 = !DILocation(line: 340, column: 35, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5738, file: !3, line: 339, column: 7)
!5745 = !DILocation(line: 340, column: 45, scope: !5744)
!5746 = !DILocation(line: 340, column: 28, scope: !5744)
!5747 = !DILocation(line: 340, column: 3, scope: !5744)
!5748 = !DILocation(line: 340, column: 7, scope: !5744)
!5749 = !DILocation(line: 340, column: 18, scope: !5744)
!5750 = !DILocation(line: 340, column: 26, scope: !5744)
!5751 = !DILocation(line: 341, column: 46, scope: !5744)
!5752 = !DILocation(line: 341, column: 3, scope: !5744)
!5753 = !DILocation(line: 341, column: 7, scope: !5744)
!5754 = !DILocation(line: 341, column: 18, scope: !5744)
!5755 = !DILocation(line: 341, column: 30, scope: !5744)
!5756 = !DILocation(line: 342, column: 45, scope: !5744)
!5757 = !DILocation(line: 342, column: 3, scope: !5744)
!5758 = !DILocation(line: 342, column: 7, scope: !5744)
!5759 = !DILocation(line: 342, column: 18, scope: !5744)
!5760 = !DILocation(line: 342, column: 29, scope: !5744)
!5761 = !DILocation(line: 344, column: 21, scope: !5744)
!5762 = !DILocation(line: 344, column: 31, scope: !5744)
!5763 = !DILocation(line: 344, column: 14, scope: !5744)
!5764 = !DILocation(line: 344, column: 3, scope: !5744)
!5765 = !DILocation(line: 344, column: 7, scope: !5744)
!5766 = !DILocation(line: 344, column: 12, scope: !5744)
!5767 = !DILocation(line: 352, column: 33, scope: !4463)
!5768 = !DILocation(line: 352, column: 37, scope: !4463)
!5769 = !DILocation(line: 352, column: 11, scope: !4463)
!5770 = !DILocation(line: 352, column: 9, scope: !4463)
!5771 = !DILocation(line: 353, column: 6, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 353, column: 6)
!5773 = !DILocation(line: 353, column: 6, scope: !4463)
!5774 = !DILocation(line: 354, column: 28, scope: !5772)
!5775 = !DILocation(line: 354, column: 32, scope: !5772)
!5776 = !DILocation(line: 354, column: 36, scope: !5772)
!5777 = !DILocation(line: 354, column: 3, scope: !5772)
!5778 = !DILocation(line: 356, column: 2, scope: !4463)
!5779 = !DILocation(line: 357, column: 1, scope: !4463)
!5780 = distinct !DISubprogram(name: "free_cpumask_var", scope: !285, file: !285, line: 789, type: !5781, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!5781 = !DISubroutineType(types: !5782)
!5782 = !{null, !5783}
!5783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!5784 = !DILocalVariable(name: "mask", arg: 1, scope: !5780, file: !285, line: 789, type: !5783)
!5785 = !DILocation(line: 789, column: 51, scope: !5780)
!5786 = !DILocation(line: 791, column: 1, scope: !5780)
!5787 = distinct !DISubprogram(name: "get_order", scope: !5788, file: !5788, line: 29, type: !5789, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!5788 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5789 = !DISubroutineType(types: !5790)
!5790 = !{!144, !146}
!5791 = !DILocalVariable(name: "x", arg: 1, scope: !5792, file: !4496, line: 366, type: !153)
!5792 = distinct !DISubprogram(name: "fls64", scope: !4496, file: !4496, line: 366, type: !5793, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!5793 = !DISubroutineType(types: !5794)
!5794 = !{!144, !153}
!5795 = !DILocation(line: 366, column: 40, scope: !5792, inlinedAt: !5796)
!5796 = distinct !DILocation(line: 46, column: 9, scope: !5787)
!5797 = !DILocalVariable(name: "bitpos", scope: !5792, file: !4496, line: 368, type: !144)
!5798 = !DILocation(line: 368, column: 6, scope: !5792, inlinedAt: !5796)
!5799 = !DILocalVariable(name: "size", arg: 1, scope: !5787, file: !5788, line: 29, type: !146)
!5800 = !DILocation(line: 29, column: 63, scope: !5787)
!5801 = !DILocation(line: 31, column: 27, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5787, file: !5788, line: 31, column: 6)
!5803 = !DILocation(line: 31, column: 6, scope: !5802)
!5804 = !DILocation(line: 31, column: 6, scope: !5787)
!5805 = !DILocation(line: 32, column: 8, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5807, file: !5788, line: 32, column: 7)
!5807 = distinct !DILexicalBlock(scope: !5802, file: !5788, line: 31, column: 34)
!5808 = !DILocation(line: 32, column: 7, scope: !5807)
!5809 = !DILocation(line: 33, column: 4, scope: !5806)
!5810 = !DILocation(line: 35, column: 7, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5807, file: !5788, line: 35, column: 7)
!5812 = !DILocation(line: 35, column: 12, scope: !5811)
!5813 = !DILocation(line: 35, column: 7, scope: !5807)
!5814 = !DILocation(line: 36, column: 4, scope: !5811)
!5815 = !DILocation(line: 38, column: 10, scope: !5807)
!5816 = !DILocation(line: 38, column: 28, scope: !5807)
!5817 = !DILocation(line: 38, column: 41, scope: !5807)
!5818 = !DILocation(line: 38, column: 3, scope: !5807)
!5819 = !DILocation(line: 41, column: 6, scope: !5787)
!5820 = !DILocation(line: 42, column: 7, scope: !5787)
!5821 = !DILocation(line: 46, column: 15, scope: !5787)
!5822 = !DILocation(line: 374, column: 2, scope: !5792, inlinedAt: !5796)
!5823 = !DILocation(line: 376, column: 14, scope: !5792, inlinedAt: !5796)
!5824 = !{i32 335121}
!5825 = !DILocation(line: 377, column: 9, scope: !5792, inlinedAt: !5796)
!5826 = !DILocation(line: 377, column: 16, scope: !5792, inlinedAt: !5796)
!5827 = !DILocation(line: 46, column: 2, scope: !5787)
!5828 = !DILocation(line: 48, column: 1, scope: !5787)
!5829 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5830, file: !5830, line: 30, type: !5831, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!5830 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5831 = !DISubroutineType(types: !5832)
!5832 = !{!144, !151}
!5833 = !DILocation(line: 366, column: 40, scope: !5792, inlinedAt: !5834)
!5834 = distinct !DILocation(line: 32, column: 9, scope: !5829)
!5835 = !DILocation(line: 368, column: 6, scope: !5792, inlinedAt: !5834)
!5836 = !DILocalVariable(name: "n", arg: 1, scope: !5829, file: !5830, line: 30, type: !151)
!5837 = !DILocation(line: 30, column: 21, scope: !5829)
!5838 = !DILocation(line: 32, column: 15, scope: !5829)
!5839 = !DILocation(line: 374, column: 2, scope: !5792, inlinedAt: !5834)
!5840 = !DILocation(line: 376, column: 14, scope: !5792, inlinedAt: !5834)
!5841 = !DILocation(line: 377, column: 9, scope: !5792, inlinedAt: !5834)
!5842 = !DILocation(line: 377, column: 16, scope: !5792, inlinedAt: !5834)
!5843 = !DILocation(line: 32, column: 18, scope: !5829)
!5844 = !DILocation(line: 32, column: 2, scope: !5829)
!5845 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5846, file: !5846, line: 137, type: !5847, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!5846 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5847 = !DISubroutineType(types: !5848)
!5848 = !{!149, !1077, !2257, !474, !177}
!5849 = !DILocalVariable(name: "s", arg: 1, scope: !5845, file: !5846, line: 137, type: !1077)
!5850 = !DILocation(line: 137, column: 54, scope: !5845)
!5851 = !DILocalVariable(name: "object", arg: 2, scope: !5845, file: !5846, line: 137, type: !2257)
!5852 = !DILocation(line: 137, column: 69, scope: !5845)
!5853 = !DILocalVariable(name: "size", arg: 3, scope: !5845, file: !5846, line: 138, type: !474)
!5854 = !DILocation(line: 138, column: 12, scope: !5845)
!5855 = !DILocalVariable(name: "flags", arg: 4, scope: !5845, file: !5846, line: 138, type: !177)
!5856 = !DILocation(line: 138, column: 24, scope: !5845)
!5857 = !DILocation(line: 140, column: 17, scope: !5845)
!5858 = !DILocation(line: 140, column: 2, scope: !5845)
!5859 = distinct !DISubprogram(name: "cpumask_clear", scope: !285, file: !285, line: 411, type: !5781, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!5860 = !DILocalVariable(name: "dstp", arg: 1, scope: !5859, file: !285, line: 411, type: !5783)
!5861 = !DILocation(line: 411, column: 50, scope: !5859)
!5862 = !DILocation(line: 413, column: 14, scope: !5859)
!5863 = !DILocation(line: 413, column: 2, scope: !5859)
!5864 = !DILocation(line: 414, column: 1, scope: !5859)
!5865 = distinct !DISubprogram(name: "bitmap_zero", scope: !5866, file: !5866, line: 235, type: !5867, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!5866 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/lizy2001/genbc/linux")
!5867 = !DISubroutineType(types: !5868)
!5868 = !{null, !145, !7}
!5869 = !DILocalVariable(name: "dst", arg: 1, scope: !5865, file: !5866, line: 235, type: !145)
!5870 = !DILocation(line: 235, column: 47, scope: !5865)
!5871 = !DILocalVariable(name: "nbits", arg: 2, scope: !5865, file: !5866, line: 235, type: !7)
!5872 = !DILocation(line: 235, column: 65, scope: !5865)
!5873 = !DILocalVariable(name: "len", scope: !5865, file: !5866, line: 237, type: !7)
!5874 = !DILocation(line: 237, column: 15, scope: !5865)
!5875 = !DILocation(line: 237, column: 21, scope: !5865)
!5876 = !DILocation(line: 237, column: 42, scope: !5865)
!5877 = !DILocation(line: 238, column: 9, scope: !5865)
!5878 = !DILocation(line: 238, column: 2, scope: !5865)
!5879 = !DILocation(line: 238, column: 17, scope: !5865)
!5880 = !DILocation(line: 239, column: 1, scope: !5865)
!5881 = distinct !DISubprogram(name: "acpi_driver_data", scope: !4180, file: !4180, line: 443, type: !5882, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!5882 = !DISubroutineType(types: !5883)
!5883 = !{!149, !4193}
!5884 = !DILocalVariable(name: "d", arg: 1, scope: !5881, file: !4180, line: 443, type: !4193)
!5885 = !DILocation(line: 443, column: 58, scope: !5881)
!5886 = !DILocation(line: 445, column: 9, scope: !5881)
!5887 = !DILocation(line: 445, column: 12, scope: !5881)
!5888 = !DILocation(line: 445, column: 2, scope: !5881)
!5889 = distinct !DISubprogram(name: "acpi_processor_errata", scope: !3, file: !3, line: 141, type: !5890, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!5890 = !DISubroutineType(types: !5891)
!5891 = !{!144}
!5892 = !DILocalVariable(name: "result", scope: !5889, file: !3, line: 143, type: !144)
!5893 = !DILocation(line: 143, column: 6, scope: !5889)
!5894 = !DILocalVariable(name: "dev", scope: !5889, file: !3, line: 144, type: !5895)
!5895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5896, size: 64)
!5896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !5897, line: 309, size: 19264, elements: !5898)
!5897 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!5898 = !{!5899, !5900, !5972, !5973, !5974, !5975, !5986, !5987, !5988, !5989, !5990, !5991, !5992, !5993, !5994, !5995, !5996, !5997, !5998, !5999, !6000, !6001, !6002, !6067, !6068, !6069, !6071, !6072, !6073, !6074, !6075, !6076, !6077, !6078, !6079, !6080, !6081, !6082, !6083, !6084, !6085, !6086, !6087, !6088, !6089, !6090, !6093, !6094, !6095, !6096, !6097, !6098, !6099, !6100, !6104, !6105, !6106, !6107, !6108, !6109, !6110, !6111, !6112, !6113, !6114, !6115, !6116, !6117, !6118, !6119, !6120, !6121, !6122, !6123, !6124, !6125, !6126, !6127, !6128, !6129, !6130, !6131, !6132, !6133, !6134, !6135, !6136, !6137, !6138, !6139, !6140, !6141, !6143, !6144, !6145, !6146, !6147, !6148, !6150, !6151, !6152, !6155, !6162, !6163, !6164, !6165, !6166, !6167, !6168}
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !5896, file: !5897, line: 310, baseType: !374, size: 128)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5896, file: !5897, line: 311, baseType: !5901, size: 64, offset: 128)
!5901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5902, size: 64)
!5902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !5897, line: 605, size: 8064, elements: !5903)
!5903 = !{!5904, !5905, !5906, !5907, !5908, !5909, !5910, !5925, !5926, !5927, !5951, !5954, !5955, !5956, !5957, !5958, !5959, !5960, !5964, !5965, !5967, !5968, !5969, !5970, !5971}
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5902, file: !5897, line: 606, baseType: !374, size: 128)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5902, file: !5897, line: 607, baseType: !5901, size: 64, offset: 128)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !5902, file: !5897, line: 608, baseType: !374, size: 128, offset: 192)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !5902, file: !5897, line: 609, baseType: !374, size: 128, offset: 320)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !5902, file: !5897, line: 610, baseType: !5895, size: 64, offset: 448)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !5902, file: !5897, line: 611, baseType: !374, size: 128, offset: 512)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !5902, file: !5897, line: 613, baseType: !5911, size: 256, offset: 640)
!5911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5912, size: 256, elements: !1297)
!5912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5913, size: 64)
!5913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !5914, line: 20, size: 512, elements: !5915)
!5914 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!5915 = !{!5916, !5918, !5919, !5920, !5921, !5922, !5923, !5924}
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5913, file: !5914, line: 21, baseType: !5917, size: 64)
!5917 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !178, line: 158, baseType: !2255)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5913, file: !5914, line: 22, baseType: !5917, size: 64, offset: 64)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5913, file: !5914, line: 23, baseType: !371, size: 64, offset: 128)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5913, file: !5914, line: 24, baseType: !146, size: 64, offset: 192)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5913, file: !5914, line: 25, baseType: !146, size: 64, offset: 256)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5913, file: !5914, line: 26, baseType: !5912, size: 64, offset: 320)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !5913, file: !5914, line: 26, baseType: !5912, size: 64, offset: 384)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !5913, file: !5914, line: 26, baseType: !5912, size: 64, offset: 448)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5902, file: !5897, line: 614, baseType: !374, size: 128, offset: 896)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !5902, file: !5897, line: 615, baseType: !5913, size: 512, offset: 1024)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5902, file: !5897, line: 617, baseType: !5928, size: 64, offset: 1536)
!5928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5929, size: 64)
!5929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !5897, line: 731, size: 320, elements: !5930)
!5930 = !{!5931, !5935, !5939, !5943, !5947}
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !5929, file: !5897, line: 732, baseType: !5932, size: 64)
!5932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5933, size: 64)
!5933 = !DISubroutineType(types: !5934)
!5934 = !{!144, !5901}
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !5929, file: !5897, line: 733, baseType: !5936, size: 64, offset: 64)
!5936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5937, size: 64)
!5937 = !DISubroutineType(types: !5938)
!5938 = !{null, !5901}
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !5929, file: !5897, line: 734, baseType: !5940, size: 64, offset: 128)
!5940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5941, size: 64)
!5941 = !DISubroutineType(types: !5942)
!5942 = !{!149, !5901, !7, !144}
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5929, file: !5897, line: 735, baseType: !5944, size: 64, offset: 192)
!5944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5945, size: 64)
!5945 = !DISubroutineType(types: !5946)
!5946 = !{!144, !5901, !7, !144, !144, !1546}
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5929, file: !5897, line: 736, baseType: !5948, size: 64, offset: 256)
!5948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5949, size: 64)
!5949 = !DISubroutineType(types: !5950)
!5950 = !{!144, !5901, !7, !144, !144, !156}
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !5902, file: !5897, line: 618, baseType: !5952, size: 64, offset: 1600)
!5952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5953, size: 64)
!5953 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !5897, line: 537, flags: DIFlagFwdDecl)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !5902, file: !5897, line: 619, baseType: !149, size: 64, offset: 1664)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !5902, file: !5897, line: 620, baseType: !4381, size: 64, offset: 1728)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !5902, file: !5897, line: 622, baseType: !165, size: 8, offset: 1792)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !5902, file: !5897, line: 623, baseType: !165, size: 8, offset: 1800)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !5902, file: !5897, line: 624, baseType: !165, size: 8, offset: 1808)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !5902, file: !5897, line: 625, baseType: !165, size: 8, offset: 1816)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5902, file: !5897, line: 630, baseType: !5961, size: 384, offset: 1824)
!5961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 384, elements: !5962)
!5962 = !{!5963}
!5963 = !DISubrange(count: 48)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !5902, file: !5897, line: 632, baseType: !169, size: 16, offset: 2208)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !5902, file: !5897, line: 633, baseType: !5966, size: 16, offset: 2224)
!5966 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !5897, line: 237, baseType: !169)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !5902, file: !5897, line: 634, baseType: !3497, size: 64, offset: 2240)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5902, file: !5897, line: 635, baseType: !364, size: 5568, offset: 2304)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !5902, file: !5897, line: 636, baseType: !494, size: 64, offset: 7872)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !5902, file: !5897, line: 637, baseType: !494, size: 64, offset: 7936)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !5902, file: !5897, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !5896, file: !5897, line: 312, baseType: !5901, size: 64, offset: 192)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !5896, file: !5897, line: 314, baseType: !149, size: 64, offset: 256)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !5896, file: !5897, line: 315, baseType: !4381, size: 64, offset: 320)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !5896, file: !5897, line: 316, baseType: !5976, size: 64, offset: 384)
!5976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5977, size: 64)
!5977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !5897, line: 69, size: 832, elements: !5978)
!5978 = !{!5979, !5980, !5981, !5984, !5985}
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5977, file: !5897, line: 70, baseType: !5901, size: 64)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5977, file: !5897, line: 71, baseType: !374, size: 128, offset: 64)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !5977, file: !5897, line: 72, baseType: !5982, size: 64, offset: 192)
!5982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5983, size: 64)
!5983 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !5897, line: 72, flags: DIFlagFwdDecl)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !5977, file: !5897, line: 73, baseType: !165, size: 8, offset: 256)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5977, file: !5897, line: 74, baseType: !367, size: 512, offset: 320)
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !5896, file: !5897, line: 318, baseType: !7, size: 32, offset: 448)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5896, file: !5897, line: 319, baseType: !169, size: 16, offset: 480)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5896, file: !5897, line: 320, baseType: !169, size: 16, offset: 496)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !5896, file: !5897, line: 321, baseType: !169, size: 16, offset: 512)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !5896, file: !5897, line: 322, baseType: !169, size: 16, offset: 528)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5896, file: !5897, line: 323, baseType: !7, size: 32, offset: 544)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !5896, file: !5897, line: 324, baseType: !163, size: 8, offset: 576)
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !5896, file: !5897, line: 325, baseType: !163, size: 8, offset: 584)
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !5896, file: !5897, line: 330, baseType: !163, size: 8, offset: 592)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !5896, file: !5897, line: 331, baseType: !163, size: 8, offset: 600)
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !5896, file: !5897, line: 332, baseType: !163, size: 8, offset: 608)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !5896, file: !5897, line: 333, baseType: !163, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !5896, file: !5897, line: 334, baseType: !163, size: 8, offset: 624)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !5896, file: !5897, line: 335, baseType: !163, size: 8, offset: 632)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !5896, file: !5897, line: 336, baseType: !167, size: 16, offset: 640)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !5896, file: !5897, line: 337, baseType: !145, size: 64, offset: 704)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5896, file: !5897, line: 339, baseType: !6003, size: 64, offset: 768)
!6003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6004, size: 64)
!6004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !5897, line: 858, size: 2048, elements: !6005)
!6005 = !{!6006, !6007, !6008, !6020, !6024, !6028, !6032, !6036, !6037, !6041, !6060, !6061, !6062}
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6004, file: !5897, line: 859, baseType: !374, size: 128)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6004, file: !5897, line: 860, baseType: !371, size: 64, offset: 128)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !6004, file: !5897, line: 861, baseType: !6009, size: 64, offset: 192)
!6009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6010, size: 64)
!6010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6011)
!6011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3581, line: 38, size: 256, elements: !6012)
!6012 = !{!6013, !6014, !6015, !6016, !6017, !6018, !6019}
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !6011, file: !3581, line: 39, baseType: !157, size: 32)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !6011, file: !3581, line: 39, baseType: !157, size: 32, offset: 32)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !6011, file: !3581, line: 40, baseType: !157, size: 32, offset: 64)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !6011, file: !3581, line: 40, baseType: !157, size: 32, offset: 96)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !6011, file: !3581, line: 41, baseType: !157, size: 32, offset: 128)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !6011, file: !3581, line: 41, baseType: !157, size: 32, offset: 160)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !6011, file: !3581, line: 42, baseType: !3600, size: 64, offset: 192)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !6004, file: !5897, line: 862, baseType: !6021, size: 64, offset: 256)
!6021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6022, size: 64)
!6022 = !DISubroutineType(types: !6023)
!6023 = !{!144, !5895, !6009}
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !6004, file: !5897, line: 863, baseType: !6025, size: 64, offset: 320)
!6025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6026, size: 64)
!6026 = !DISubroutineType(types: !6027)
!6027 = !{null, !5895}
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !6004, file: !5897, line: 864, baseType: !6029, size: 64, offset: 384)
!6029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6030, size: 64)
!6030 = !DISubroutineType(types: !6031)
!6031 = !{!144, !5895, !3611}
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !6004, file: !5897, line: 865, baseType: !6033, size: 64, offset: 448)
!6033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6034, size: 64)
!6034 = !DISubroutineType(types: !6035)
!6035 = !{!144, !5895}
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !6004, file: !5897, line: 866, baseType: !6025, size: 64, offset: 512)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !6004, file: !5897, line: 867, baseType: !6038, size: 64, offset: 576)
!6038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6039, size: 64)
!6039 = !DISubroutineType(types: !6040)
!6040 = !{!144, !5895, !144}
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !6004, file: !5897, line: 868, baseType: !6042, size: 64, offset: 640)
!6042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6043, size: 64)
!6043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6044)
!6044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !5897, line: 795, size: 384, elements: !6045)
!6045 = !{!6046, !6052, !6056, !6057, !6058, !6059}
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !6044, file: !5897, line: 797, baseType: !6047, size: 64)
!6047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6048, size: 64)
!6048 = !DISubroutineType(types: !6049)
!6049 = !{!6050, !5895, !6051}
!6050 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !5897, line: 772, baseType: !7)
!6051 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !5897, line: 180, baseType: !7)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !6044, file: !5897, line: 801, baseType: !6053, size: 64, offset: 64)
!6053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6054, size: 64)
!6054 = !DISubroutineType(types: !6055)
!6055 = !{!6050, !5895}
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !6044, file: !5897, line: 804, baseType: !6053, size: 64, offset: 128)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !6044, file: !5897, line: 807, baseType: !6025, size: 64, offset: 192)
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !6044, file: !5897, line: 808, baseType: !6025, size: 64, offset: 256)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !6044, file: !5897, line: 811, baseType: !6025, size: 64, offset: 320)
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !6004, file: !5897, line: 869, baseType: !480, size: 64, offset: 704)
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !6004, file: !5897, line: 870, baseType: !3569, size: 1152, offset: 768)
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !6004, file: !5897, line: 871, baseType: !6063, size: 128, offset: 1920)
!6063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !5897, line: 759, size: 128, elements: !6064)
!6064 = !{!6065, !6066}
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6063, file: !5897, line: 760, baseType: !387)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6063, file: !5897, line: 761, baseType: !374, size: 128)
!6067 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !5896, file: !5897, line: 340, baseType: !151, size: 64, offset: 832)
!6068 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !5896, file: !5897, line: 346, baseType: !4056, size: 128, offset: 896)
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !5896, file: !5897, line: 348, baseType: !6070, size: 32, offset: 1024)
!6070 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !5897, line: 155, baseType: !144)
!6071 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !5896, file: !5897, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!6072 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !5896, file: !5897, line: 352, baseType: !163, size: 8, offset: 1064)
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !5896, file: !5897, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !5896, file: !5897, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!6075 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !5896, file: !5897, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !5896, file: !5897, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !5896, file: !5897, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !5896, file: !5897, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !5896, file: !5897, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !5896, file: !5897, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !5896, file: !5897, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !5896, file: !5897, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!6083 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !5896, file: !5897, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !5896, file: !5897, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!6085 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !5896, file: !5897, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !5896, file: !5897, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !5896, file: !5897, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !5896, file: !5897, line: 376, baseType: !7, size: 32, offset: 1120)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !5896, file: !5897, line: 377, baseType: !7, size: 32, offset: 1152)
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !5896, file: !5897, line: 380, baseType: !6091, size: 64, offset: 1216)
!6091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6092, size: 64)
!6092 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !5897, line: 303, flags: DIFlagFwdDecl)
!6093 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !5896, file: !5897, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!6094 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !5896, file: !5897, line: 383, baseType: !144, size: 32, offset: 1312)
!6095 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !5896, file: !5897, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!6096 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !5896, file: !5897, line: 387, baseType: !6051, size: 32, offset: 1376)
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5896, file: !5897, line: 388, baseType: !364, size: 5568, offset: 1408)
!6098 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !5896, file: !5897, line: 390, baseType: !144, size: 32, offset: 6976)
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5896, file: !5897, line: 396, baseType: !7, size: 32, offset: 7008)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !5896, file: !5897, line: 397, baseType: !6101, size: 8704, offset: 7040)
!6101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5913, size: 8704, elements: !6102)
!6102 = !{!6103}
!6103 = !DISubrange(count: 17)
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !5896, file: !5897, line: 399, baseType: !328, size: 8, offset: 15744)
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !5896, file: !5897, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !5896, file: !5897, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!6107 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !5896, file: !5897, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !5896, file: !5897, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!6109 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !5896, file: !5897, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !5896, file: !5897, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !5896, file: !5897, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !5896, file: !5897, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !5896, file: !5897, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !5896, file: !5897, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!6115 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !5896, file: !5897, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !5896, file: !5897, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !5896, file: !5897, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !5896, file: !5897, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!6119 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !5896, file: !5897, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !5896, file: !5897, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !5896, file: !5897, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !5896, file: !5897, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !5896, file: !5897, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !5896, file: !5897, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !5896, file: !5897, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !5896, file: !5897, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !5896, file: !5897, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !5896, file: !5897, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !5896, file: !5897, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !5896, file: !5897, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !5896, file: !5897, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !5896, file: !5897, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !5896, file: !5897, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !5896, file: !5897, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !5896, file: !5897, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !5896, file: !5897, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !5896, file: !5897, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !5896, file: !5897, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !5896, file: !5897, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !5896, file: !5897, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !5896, file: !5897, line: 450, baseType: !6142, size: 16, offset: 15792)
!6142 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !5897, line: 206, baseType: !169)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !5896, file: !5897, line: 451, baseType: !892, size: 32, offset: 15808)
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !5896, file: !5897, line: 453, baseType: !3986, size: 512, offset: 15840)
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !5896, file: !5897, line: 454, baseType: !780, size: 64, offset: 16384)
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !5896, file: !5897, line: 455, baseType: !494, size: 64, offset: 16448)
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !5896, file: !5897, line: 456, baseType: !144, size: 32, offset: 16512)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !5896, file: !5897, line: 457, baseType: !6149, size: 1088, offset: 16576)
!6149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 1088, elements: !6102)
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !5896, file: !5897, line: 458, baseType: !6149, size: 1088, offset: 17664)
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !5896, file: !5897, line: 469, baseType: !480, size: 64, offset: 18752)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !5896, file: !5897, line: 471, baseType: !6153, size: 64, offset: 18816)
!6153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6154, size: 64)
!6154 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !5897, line: 304, flags: DIFlagFwdDecl)
!6155 = !DIDerivedType(tag: DW_TAG_member, scope: !5896, file: !5897, line: 478, baseType: !6156, size: 64, offset: 18880)
!6156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5896, file: !5897, line: 478, size: 64, elements: !6157)
!6157 = !{!6158, !6161}
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !6156, file: !5897, line: 479, baseType: !6159, size: 64)
!6159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6160, size: 64)
!6160 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !5897, line: 305, flags: DIFlagFwdDecl)
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !6156, file: !5897, line: 480, baseType: !5895, size: 64)
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !5896, file: !5897, line: 482, baseType: !167, size: 16, offset: 18944)
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !5896, file: !5897, line: 483, baseType: !163, size: 8, offset: 18960)
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !5896, file: !5897, line: 497, baseType: !167, size: 16, offset: 18976)
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !5896, file: !5897, line: 498, baseType: !2255, size: 64, offset: 19008)
!6166 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !5896, file: !5897, line: 499, baseType: !474, size: 64, offset: 19072)
!6167 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !5896, file: !5897, line: 500, baseType: !428, size: 64, offset: 19136)
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !5896, file: !5897, line: 502, baseType: !146, size: 64, offset: 19200)
!6169 = !DILocation(line: 144, column: 18, scope: !5889)
!6170 = !DILocation(line: 149, column: 8, scope: !5889)
!6171 = !DILocation(line: 149, column: 6, scope: !5889)
!6172 = !DILocation(line: 152, column: 6, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !5889, file: !3, line: 152, column: 6)
!6174 = !DILocation(line: 152, column: 6, scope: !5889)
!6175 = !DILocation(line: 153, column: 40, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6173, file: !3, line: 152, column: 11)
!6177 = !DILocation(line: 153, column: 12, scope: !6176)
!6178 = !DILocation(line: 153, column: 10, scope: !6176)
!6179 = !DILocation(line: 154, column: 15, scope: !6176)
!6180 = !DILocation(line: 154, column: 3, scope: !6176)
!6181 = !DILocation(line: 155, column: 2, scope: !6176)
!6182 = !DILocation(line: 157, column: 9, scope: !5889)
!6183 = !DILocation(line: 157, column: 2, scope: !5889)
!6184 = distinct !DISubprogram(name: "invalid_phys_cpuid", scope: !188, file: !188, line: 275, type: !6185, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!6185 = !DISubroutineType(types: !6186)
!6186 = !{!328, !187}
!6187 = !DILocalVariable(name: "phys_id", arg: 1, scope: !6184, file: !188, line: 275, type: !187)
!6188 = !DILocation(line: 275, column: 52, scope: !6184)
!6189 = !DILocation(line: 277, column: 9, scope: !6184)
!6190 = !DILocation(line: 277, column: 17, scope: !6184)
!6191 = !DILocation(line: 277, column: 2, scope: !6184)
!6192 = distinct !DISubprogram(name: "acpi_has_cpu_in_madt", scope: !6193, file: !6193, line: 114, type: !3320, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!6193 = !DIFile(filename: "./arch/x86/include/asm/acpi.h", directory: "/home/lizy2001/genbc/linux")
!6194 = !DILocation(line: 116, column: 11, scope: !6192)
!6195 = !DILocation(line: 116, column: 10, scope: !6192)
!6196 = !DILocation(line: 116, column: 9, scope: !6192)
!6197 = !DILocation(line: 116, column: 2, scope: !6192)
!6198 = distinct !DISubprogram(name: "invalid_logical_cpuid", scope: !188, file: !188, line: 270, type: !6199, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!6199 = !DISubroutineType(types: !6200)
!6200 = !{!328, !156}
!6201 = !DILocalVariable(name: "cpuid", arg: 1, scope: !6198, file: !188, line: 270, type: !156)
!6202 = !DILocation(line: 270, column: 46, scope: !6198)
!6203 = !DILocation(line: 272, column: 14, scope: !6198)
!6204 = !DILocation(line: 272, column: 20, scope: !6198)
!6205 = !DILocation(line: 272, column: 2, scope: !6198)
!6206 = distinct !DISubprogram(name: "acpi_processor_hotadd_init", scope: !3, file: !3, line: 223, type: !322, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!6207 = !DILocalVariable(name: "pr", arg: 1, scope: !6206, file: !3, line: 223, type: !181)
!6208 = !DILocation(line: 223, column: 69, scope: !6206)
!6209 = !DILocation(line: 225, column: 2, scope: !6206)
!6210 = distinct !DISubprogram(name: "arch_fix_phys_package_id", scope: !6211, file: !6211, line: 156, type: !6212, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!6211 = !DIFile(filename: "./arch/x86/include/asm/topology.h", directory: "/home/lizy2001/genbc/linux")
!6212 = !DISubroutineType(types: !6213)
!6213 = !{null, !144, !156}
!6214 = !DILocalVariable(name: "num", arg: 1, scope: !6210, file: !6211, line: 156, type: !144)
!6215 = !DILocation(line: 156, column: 49, scope: !6210)
!6216 = !DILocalVariable(name: "slot", arg: 2, scope: !6210, file: !6211, line: 156, type: !156)
!6217 = !DILocation(line: 156, column: 58, scope: !6210)
!6218 = !DILocation(line: 158, column: 1, scope: !6210)
!6219 = distinct !DISubprogram(name: "acpi_processor_errata_piix4", scope: !3, file: !3, line: 39, type: !6034, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!6220 = !DILocalVariable(name: "dev", arg: 1, scope: !6219, file: !3, line: 39, type: !5895)
!6221 = !DILocation(line: 39, column: 56, scope: !6219)
!6222 = !DILocalVariable(name: "value1", scope: !6219, file: !3, line: 41, type: !163)
!6223 = !DILocation(line: 41, column: 5, scope: !6219)
!6224 = !DILocalVariable(name: "value2", scope: !6219, file: !3, line: 42, type: !163)
!6225 = !DILocation(line: 42, column: 5, scope: !6219)
!6226 = !DILocation(line: 45, column: 7, scope: !6227)
!6227 = distinct !DILexicalBlock(scope: !6219, file: !3, line: 45, column: 6)
!6228 = !DILocation(line: 45, column: 6, scope: !6219)
!6229 = !DILocation(line: 46, column: 3, scope: !6227)
!6230 = !DILocation(line: 52, column: 10, scope: !6219)
!6231 = !DILocation(line: 52, column: 15, scope: !6219)
!6232 = !DILocation(line: 52, column: 2, scope: !6219)
!6233 = !DILocation(line: 55, column: 3, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6219, file: !3, line: 52, column: 25)
!6235 = !DILocation(line: 58, column: 3, scope: !6234)
!6236 = !DILocation(line: 61, column: 3, scope: !6234)
!6237 = !DILocation(line: 64, column: 3, scope: !6234)
!6238 = !DILocation(line: 67, column: 3, scope: !6234)
!6239 = !DILocation(line: 70, column: 10, scope: !6219)
!6240 = !DILocation(line: 70, column: 15, scope: !6219)
!6241 = !DILocation(line: 70, column: 2, scope: !6219)
!6242 = !DILocation(line: 81, column: 25, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6219, file: !3, line: 70, column: 25)
!6244 = !DILocation(line: 81, column: 3, scope: !6243)
!6245 = !DILocation(line: 100, column: 9, scope: !6243)
!6246 = !DILocation(line: 100, column: 7, scope: !6243)
!6247 = !DILocation(line: 103, column: 7, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6243, file: !3, line: 103, column: 7)
!6249 = !DILocation(line: 103, column: 7, scope: !6243)
!6250 = !DILocation(line: 104, column: 25, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6248, file: !3, line: 103, column: 12)
!6252 = !DILocation(line: 104, column: 23, scope: !6251)
!6253 = !DILocation(line: 105, column: 16, scope: !6251)
!6254 = !DILocation(line: 105, column: 4, scope: !6251)
!6255 = !DILocation(line: 106, column: 3, scope: !6251)
!6256 = !DILocation(line: 117, column: 9, scope: !6243)
!6257 = !DILocation(line: 117, column: 7, scope: !6243)
!6258 = !DILocation(line: 120, column: 7, scope: !6259)
!6259 = distinct !DILexicalBlock(scope: !6243, file: !3, line: 120, column: 7)
!6260 = !DILocation(line: 120, column: 7, scope: !6243)
!6261 = !DILocation(line: 121, column: 25, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6259, file: !3, line: 120, column: 12)
!6263 = !DILocation(line: 121, column: 4, scope: !6262)
!6264 = !DILocation(line: 122, column: 25, scope: !6262)
!6265 = !DILocation(line: 122, column: 4, scope: !6262)
!6266 = !DILocation(line: 123, column: 9, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !6262, file: !3, line: 123, column: 8)
!6268 = !DILocation(line: 123, column: 16, scope: !6267)
!6269 = !DILocation(line: 123, column: 24, scope: !6267)
!6270 = !DILocation(line: 123, column: 28, scope: !6267)
!6271 = !DILocation(line: 123, column: 35, scope: !6267)
!6272 = !DILocation(line: 123, column: 8, scope: !6262)
!6273 = !DILocation(line: 124, column: 23, scope: !6267)
!6274 = !DILocation(line: 124, column: 5, scope: !6267)
!6275 = !DILocation(line: 125, column: 16, scope: !6262)
!6276 = !DILocation(line: 125, column: 4, scope: !6262)
!6277 = !DILocation(line: 126, column: 3, scope: !6262)
!6278 = !DILocation(line: 128, column: 3, scope: !6243)
!6279 = !DILocation(line: 131, column: 19, scope: !6280)
!6280 = distinct !DILexicalBlock(scope: !6219, file: !3, line: 131, column: 6)
!6281 = !DILocation(line: 131, column: 6, scope: !6280)
!6282 = !DILocation(line: 131, column: 6, scope: !6219)
!6283 = !DILocation(line: 134, column: 19, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !6219, file: !3, line: 134, column: 6)
!6285 = !DILocation(line: 134, column: 6, scope: !6284)
!6286 = !DILocation(line: 134, column: 6, scope: !6219)
!6287 = !DILocation(line: 138, column: 2, scope: !6219)
!6288 = !DILocation(line: 139, column: 1, scope: !6219)
!6289 = distinct !DISubprogram(name: "acpi_processor_container_attach", scope: !3, file: !3, line: 566, type: !4191, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !401)
!6290 = !DILocalVariable(name: "dev", arg: 1, scope: !6289, file: !3, line: 566, type: !4193)
!6291 = !DILocation(line: 566, column: 64, scope: !6289)
!6292 = !DILocalVariable(name: "id", arg: 2, scope: !6289, file: !3, line: 567, type: !3591)
!6293 = !DILocation(line: 567, column: 38, scope: !6289)
!6294 = !DILocation(line: 569, column: 2, scope: !6289)
