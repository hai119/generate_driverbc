; ModuleID = '../bcout/drivers/acpi/pci_link.llvm.bc'
source_filename = "drivers/acpi/pci_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.syscore_ops = type { %struct.list_head, i32 ()*, void ()*, void ()* }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%union.acpi_object = type { %struct.anon.70 }
%struct.anon.70 = type { i32, i32, i64, i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.72, i32, i32, %struct.list_head }
%struct.anon.72 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.wake_irq = type opaque
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.73, i8, i8, i32 }
%struct.anon.73 = type { i8 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.64 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.page = type { i64, %union.anon.1, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.52 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.53, i32 }
%union.anon.53 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.45, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.22, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.23, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.24, %union.anon.28, %struct.key_restriction* }
%union.anon.22 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.23 = type { i64 }
%union.anon.24 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.25, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.25 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.28 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.31, %union.anon.32, i32 }
%struct.request_queue = type opaque
%union.anon.31 = type { %struct.list_head }
%union.anon.32 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.33 }
%struct.anon.33 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.37 }
%struct.anon.37 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.44, i32, [12 x i8] }
%union.anon.44 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.45 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.46, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.49 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i64, i64 }
%union.anon.49 = type { [12 x i32] }
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
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.54, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.55, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.56, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.59, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.54 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.55 = type { %struct.callback_head }
%union.anon.56 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.59 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.57 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.57 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.30 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.30 = type { %struct.callback_head }
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
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask] }
%struct.msi_desc = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8* }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry* }
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.kmem_cache = type opaque
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
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.acpi_pci_link = type { %struct.list_head, %struct.acpi_device*, %struct.acpi_pci_link_irq, i32 }
%struct.acpi_pci_link_irq = type { i32, i8, i8, i8, i8, [16 x i32], i8 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.acpi_buffer = type { i64, i8* }
%struct.anon.74 = type { %struct.acpi_resource, %struct.acpi_resource }
%struct.acpi_resource = type { i32, i32, %union.acpi_resource_data }
%union.acpi_resource_data = type { %struct.acpi_resource_vendor_typed, [40 x i8] }
%struct.acpi_resource_vendor_typed = type { i16, i8, [16 x i8], [1 x i8] }
%struct.acpi_resource_irq = type { i8, i8, i8, i8, i8, i8, [1 x i8] }
%struct.acpi_resource_extended_irq = type <{ i8, i8, i8, i8, i8, i8, %struct.acpi_resource_source, [1 x i32] }>
%struct.acpi_resource_source = type <{ i8, i16, i8* }>

@acpi_link_list = internal global %struct.list_head { %struct.list_head* @acpi_link_list, %struct.list_head* @acpi_link_list }, align 8, !dbg !0
@acpi_isa_irq_penalty = internal global [16 x i32] [i32 16777216, i32 16777216, i32 16777216, i32 65536, i32 65536, i32 65536, i32 65536, i32 65536, i32 65536, i32 0, i32 0, i32 0, i32 1048576, i32 1048576, i32 1048576, i32 1048576], align 16, !dbg !4410
@.str = private unnamed_addr constant [29 x i8] c"\013ACPI: Invalid link device\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"\013ACPI: Invalid link context\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\013ACPI: Invalid index %d\0A\00", align 1
@acpi_link_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @acpi_link_lock to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @acpi_link_lock to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !4413
@.str.3 = private unnamed_addr constant [31 x i8] c"\013ACPI: Link active IRQ is 0!\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"\013ACPI: Link isn't initialized\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"_DIS\00", align 1
@sci_irq = internal global i32 -1, align 4, !dbg !4418
@sci_penalty = internal global i32 0, align 4, !dbg !4408
@__setup_str_acpi_irq_isa = internal constant [14 x i8] c"acpi_irq_isa=\00", section ".init.rodata", align 1, !dbg !4420
@__setup_acpi_irq_isa = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__setup_str_acpi_irq_isa, i32 0, i32 0), i32 (i8*)* @acpi_irq_isa, i32 0 }, section ".init.setup", align 8, !dbg !4391
@__setup_str_acpi_irq_pci = internal constant [14 x i8] c"acpi_irq_pci=\00", section ".init.rodata", align 1, !dbg !4425
@__setup_acpi_irq_pci = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__setup_str_acpi_irq_pci, i32 0, i32 0), i32 (i8*)* @acpi_irq_pci, i32 0 }, section ".init.setup", align 8, !dbg !4402
@__setup_str_acpi_irq_nobalance_set = internal constant [19 x i8] c"acpi_irq_nobalance\00", section ".init.rodata", align 1, !dbg !4427
@__setup_acpi_irq_nobalance_set = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__setup_str_acpi_irq_nobalance_set, i32 0, i32 0), i32 (i8*)* @acpi_irq_nobalance_set, i32 0 }, section ".init.setup", align 8, !dbg !4404
@__setup_str_acpi_irq_balance_set = internal constant [17 x i8] c"acpi_irq_balance\00", section ".init.rodata", align 1, !dbg !4432
@__setup_acpi_irq_balance_set = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__setup_str_acpi_irq_balance_set, i32 0, i32 0), i32 (i8*)* @acpi_irq_balance_set, i32 0 }, section ".init.setup", align 8, !dbg !4406
@acpi_noirq = external dso_local global i32, align 4
@acpi_irq_balance = internal global i32 -1, align 4, !dbg !4437
@acpi_irq_model = external dso_local global i32, align 4
@irqrouter_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, i32 ()* null, void ()* @irqrouter_resume, void ()* null }, align 8, !dbg !4439
@pci_link_handler = internal global %struct.acpi_scan_handler { %struct.acpi_device_id* getelementptr inbounds ([2 x %struct.acpi_device_id], [2 x %struct.acpi_device_id]* @link_device_ids, i32 0, i32 0), %struct.list_head zeroinitializer, i1 (i8*, %struct.acpi_device_id**)* null, i32 (%struct.acpi_device*, %struct.acpi_device_id*)* @acpi_pci_link_add, void (%struct.acpi_device*)* @acpi_pci_link_remove, void (%struct.device*)* null, void (%struct.device*)* null, %struct.acpi_hotplug_profile zeroinitializer }, align 8, !dbg !4452
@acpi_strict = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"\014ACPI: _CRS %d not found in _PRS\0A\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"\013ACPI: No IRQ available for %s [%s]. Try pci=noacpi or acpi=off\0A\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"\013ACPI: Unable to set IRQ for %s [%s]. Try pci=noacpi or acpi=off\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"\016%s [%s] enabled at IRQ %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"\013ACPI: Invalid Resource_type %d\0A\00", align 1
@_acpi_module_name = internal constant [9 x i8] c"pci_link\00", align 1, !dbg !4415
@.str.11 = private unnamed_addr constant [16 x i8] c"Evaluating _SRS\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"\013ACPI: Unable to read status\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"\014ACPI: %s [%s] disabled and referenced, BIOS bug\0A\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"\014ACPI: %s [%s] BIOS reported IRQ %d, using IRQ %d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.15 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.16 = private unnamed_addr constant [5 x i8] c"_CRS\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Evaluating _CRS\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"\013ACPI: _CRS returned 0\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"\014ACPI: Blank _CRS EXT IRQ resource\0A\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"\013ACPI: _CRS resource type 0x%x isn't an IRQ\0A\00", align 1
@link_device_ids = internal constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"PNP0C0F\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !4454
@.str.21 = private unnamed_addr constant [19 x i8] c"PCI Interrupt Link\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"pci_irq_routing\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"\016ACPI: %s [%s] (IRQs\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"\01c *%d\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"\01c %d\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"\01c)\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"\01c, disabled.\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"_PRS\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"\014ACPI: Invalid _PRS IRQ %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"\014ACPI: Blank _PRS EXT IRQ resource\0A\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"\013ACPI: _PRS resource type 0x%x isn't an IRQ\0A\00", align 1
@llvm.used = appending global [4 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_acpi_irq_isa to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_acpi_irq_pci to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_acpi_irq_nobalance_set to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_acpi_irq_balance_set to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_irq_penalty_init() #0 section ".init.text" !dbg !4463 {
entry:
  %link = alloca %struct.acpi_pci_link*, align 8
  %i = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_pci_link*, align 8
  %penalty = alloca i32, align 4
  %__mptr35 = alloca i8*, align 8
  %tmp39 = alloca %struct.acpi_pci_link*, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_link** %link, metadata !4464, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4466, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4468, metadata !DIExpression()), !dbg !4471
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @acpi_link_list, i32 0, i32 0), align 8, !dbg !4471
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !4471
  store i8* %1, i8** %__mptr, align 8, !dbg !4471
  br label %do.body, !dbg !4471

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4472

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4471
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4471
  %3 = bitcast i8* %add.ptr to %struct.acpi_pci_link*, !dbg !4471
  store %struct.acpi_pci_link* %3, %struct.acpi_pci_link** %tmp, align 8, !dbg !4472
  %4 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %tmp, align 8, !dbg !4471
  store %struct.acpi_pci_link* %4, %struct.acpi_pci_link** %link, align 8, !dbg !4474
  br label %for.cond, !dbg !4474

for.cond:                                         ; preds = %do.end38, %do.end
  %5 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4475
  %list = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %5, i32 0, i32 0, !dbg !4475
  %cmp = icmp eq %struct.list_head* %list, @acpi_link_list, !dbg !4475
  %lnot = xor i1 %cmp, true, !dbg !4475
  br i1 %lnot, label %for.body, label %for.end41, !dbg !4474

for.body:                                         ; preds = %for.cond
  %6 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4477
  %irq = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %6, i32 0, i32 2, !dbg !4480
  %possible_count = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq, i32 0, i32 4, !dbg !4481
  %7 = load i8, i8* %possible_count, align 1, !dbg !4481
  %tobool = icmp ne i8 %7, 0, !dbg !4477
  br i1 %tobool, label %if.then, label %if.else, !dbg !4482

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i32* %penalty, metadata !4483, metadata !DIExpression()), !dbg !4485
  %8 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4486
  %irq1 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %8, i32 0, i32 2, !dbg !4487
  %possible_count2 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq1, i32 0, i32 4, !dbg !4488
  %9 = load i8, i8* %possible_count2, align 1, !dbg !4488
  %conv = zext i8 %9 to i32, !dbg !4486
  %div = sdiv i32 256, %conv, !dbg !4489
  store i32 %div, i32* %penalty, align 4, !dbg !4485
  store i32 0, i32* %i, align 4, !dbg !4490
  br label %for.cond3, !dbg !4492

for.cond3:                                        ; preds = %for.inc, %if.then
  %10 = load i32, i32* %i, align 4, !dbg !4493
  %11 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4495
  %irq4 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %11, i32 0, i32 2, !dbg !4496
  %possible_count5 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq4, i32 0, i32 4, !dbg !4497
  %12 = load i8, i8* %possible_count5, align 1, !dbg !4497
  %conv6 = zext i8 %12 to i32, !dbg !4495
  %cmp7 = icmp slt i32 %10, %conv6, !dbg !4498
  br i1 %cmp7, label %for.body9, label %for.end, !dbg !4499

for.body9:                                        ; preds = %for.cond3
  %13 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4500
  %irq10 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %13, i32 0, i32 2, !dbg !4503
  %possible = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq10, i32 0, i32 5, !dbg !4504
  %14 = load i32, i32* %i, align 4, !dbg !4505
  %idxprom = sext i32 %14 to i64, !dbg !4500
  %arrayidx = getelementptr [16 x i32], [16 x i32]* %possible, i64 0, i64 %idxprom, !dbg !4500
  %15 = load i32, i32* %arrayidx, align 4, !dbg !4500
  %cmp11 = icmp ult i32 %15, 16, !dbg !4506
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !4507

if.then13:                                        ; preds = %for.body9
  %16 = load i32, i32* %penalty, align 4, !dbg !4508
  %17 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4509
  %irq14 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %17, i32 0, i32 2, !dbg !4510
  %possible15 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq14, i32 0, i32 5, !dbg !4511
  %18 = load i32, i32* %i, align 4, !dbg !4512
  %idxprom16 = sext i32 %18 to i64, !dbg !4509
  %arrayidx17 = getelementptr [16 x i32], [16 x i32]* %possible15, i64 0, i64 %idxprom16, !dbg !4509
  %19 = load i32, i32* %arrayidx17, align 4, !dbg !4509
  %idxprom18 = zext i32 %19 to i64, !dbg !4513
  %arrayidx19 = getelementptr [16 x i32], [16 x i32]* @acpi_isa_irq_penalty, i64 0, i64 %idxprom18, !dbg !4513
  %20 = load i32, i32* %arrayidx19, align 4, !dbg !4514
  %add = add i32 %20, %16, !dbg !4514
  store i32 %add, i32* %arrayidx19, align 4, !dbg !4514
  br label %if.end, !dbg !4513

if.end:                                           ; preds = %if.then13, %for.body9
  br label %for.inc, !dbg !4515

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4, !dbg !4516
  %inc = add i32 %21, 1, !dbg !4516
  store i32 %inc, i32* %i, align 4, !dbg !4516
  br label %for.cond3, !dbg !4517, !llvm.loop !4518

for.end:                                          ; preds = %for.cond3
  br label %if.end33, !dbg !4520

if.else:                                          ; preds = %for.body
  %22 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4521
  %irq20 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %22, i32 0, i32 2, !dbg !4523
  %active = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq20, i32 0, i32 0, !dbg !4524
  %23 = load i32, i32* %active, align 8, !dbg !4524
  %tobool21 = icmp ne i32 %23, 0, !dbg !4521
  br i1 %tobool21, label %land.lhs.true, label %if.end32, !dbg !4525

land.lhs.true:                                    ; preds = %if.else
  %24 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4526
  %irq22 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %24, i32 0, i32 2, !dbg !4527
  %active23 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq22, i32 0, i32 0, !dbg !4528
  %25 = load i32, i32* %active23, align 8, !dbg !4528
  %cmp24 = icmp ult i32 %25, 16, !dbg !4529
  br i1 %cmp24, label %if.then26, label %if.end32, !dbg !4530

if.then26:                                        ; preds = %land.lhs.true
  %26 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4531
  %irq27 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %26, i32 0, i32 2, !dbg !4533
  %active28 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq27, i32 0, i32 0, !dbg !4534
  %27 = load i32, i32* %active28, align 8, !dbg !4534
  %idxprom29 = zext i32 %27 to i64, !dbg !4535
  %arrayidx30 = getelementptr [16 x i32], [16 x i32]* @acpi_isa_irq_penalty, i64 0, i64 %idxprom29, !dbg !4535
  %28 = load i32, i32* %arrayidx30, align 4, !dbg !4536
  %add31 = add i32 %28, 256, !dbg !4536
  store i32 %add31, i32* %arrayidx30, align 4, !dbg !4536
  br label %if.end32, !dbg !4537

if.end32:                                         ; preds = %if.then26, %land.lhs.true, %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %for.end
  br label %for.inc34, !dbg !4538

for.inc34:                                        ; preds = %if.end33
  call void @llvm.dbg.declare(metadata i8** %__mptr35, metadata !4539, metadata !DIExpression()), !dbg !4541
  %29 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4541
  %list36 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %29, i32 0, i32 0, !dbg !4541
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list36, i32 0, i32 0, !dbg !4541
  %30 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4541
  %31 = bitcast %struct.list_head* %30 to i8*, !dbg !4541
  store i8* %31, i8** %__mptr35, align 8, !dbg !4541
  br label %do.body37, !dbg !4541

do.body37:                                        ; preds = %for.inc34
  br label %do.end38, !dbg !4542

do.end38:                                         ; preds = %do.body37
  %32 = load i8*, i8** %__mptr35, align 8, !dbg !4541
  %add.ptr40 = getelementptr i8, i8* %32, i64 0, !dbg !4541
  %33 = bitcast i8* %add.ptr40 to %struct.acpi_pci_link*, !dbg !4541
  store %struct.acpi_pci_link* %33, %struct.acpi_pci_link** %tmp39, align 8, !dbg !4542
  %34 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %tmp39, align 8, !dbg !4541
  store %struct.acpi_pci_link* %34, %struct.acpi_pci_link** %link, align 8, !dbg !4475
  br label %for.cond, !dbg !4475, !llvm.loop !4544

for.end41:                                        ; preds = %for.cond
  ret i32 0, !dbg !4546
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_pci_link_allocate_irq(i8* %handle, i32 %index, i32* %triggering, i32* %polarity, i8** %name) #2 !dbg !4547 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %triggering.addr = alloca i32*, align 8
  %polarity.addr = alloca i32*, align 8
  %name.addr = alloca i8**, align 8
  %result = alloca i32, align 4
  %device = alloca %struct.acpi_device*, align 8
  %link = alloca %struct.acpi_pci_link*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !4551, metadata !DIExpression()), !dbg !4552
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4553, metadata !DIExpression()), !dbg !4554
  store i32* %triggering, i32** %triggering.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %triggering.addr, metadata !4555, metadata !DIExpression()), !dbg !4556
  store i32* %polarity, i32** %polarity.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %polarity.addr, metadata !4557, metadata !DIExpression()), !dbg !4558
  store i8** %name, i8*** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %name.addr, metadata !4559, metadata !DIExpression()), !dbg !4560
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4561, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !4563, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_link** %link, metadata !4565, metadata !DIExpression()), !dbg !4566
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !4567
  %call = call i32 @acpi_bus_get_device(i8* %0, %struct.acpi_device** %device) #11, !dbg !4568
  store i32 %call, i32* %result, align 4, !dbg !4569
  %1 = load i32, i32* %result, align 4, !dbg !4570
  %tobool = icmp ne i32 %1, 0, !dbg !4570
  br i1 %tobool, label %if.then, label %if.end, !dbg !4572

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0)) #12, !dbg !4573
  store i32 -1, i32* %retval, align 4, !dbg !4575
  br label %return, !dbg !4575

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !4576
  %call2 = call i8* @acpi_driver_data(%struct.acpi_device* %2) #11, !dbg !4577
  %3 = bitcast i8* %call2 to %struct.acpi_pci_link*, !dbg !4577
  store %struct.acpi_pci_link* %3, %struct.acpi_pci_link** %link, align 8, !dbg !4578
  %4 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4579
  %tobool3 = icmp ne %struct.acpi_pci_link* %4, null, !dbg !4579
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !4581

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)) #12, !dbg !4582
  store i32 -1, i32* %retval, align 4, !dbg !4584
  br label %return, !dbg !4584

if.end6:                                          ; preds = %if.end
  %5 = load i32, i32* %index.addr, align 4, !dbg !4585
  %tobool7 = icmp ne i32 %5, 0, !dbg !4585
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !4587

if.then8:                                         ; preds = %if.end6
  %6 = load i32, i32* %index.addr, align 4, !dbg !4588
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %6) #12, !dbg !4590
  store i32 -1, i32* %retval, align 4, !dbg !4591
  br label %return, !dbg !4591

if.end10:                                         ; preds = %if.end6
  call void @mutex_lock(%struct.mutex* @acpi_link_lock) #11, !dbg !4592
  %7 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4593
  %call11 = call i32 @acpi_pci_link_allocate(%struct.acpi_pci_link* %7) #11, !dbg !4595
  %tobool12 = icmp ne i32 %call11, 0, !dbg !4595
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4596

if.then13:                                        ; preds = %if.end10
  call void @mutex_unlock(%struct.mutex* @acpi_link_lock) #11, !dbg !4597
  store i32 -1, i32* %retval, align 4, !dbg !4599
  br label %return, !dbg !4599

if.end14:                                         ; preds = %if.end10
  %8 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4600
  %irq = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %8, i32 0, i32 2, !dbg !4602
  %active = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq, i32 0, i32 0, !dbg !4603
  %9 = load i32, i32* %active, align 8, !dbg !4603
  %tobool15 = icmp ne i32 %9, 0, !dbg !4600
  br i1 %tobool15, label %if.end18, label %if.then16, !dbg !4604

if.then16:                                        ; preds = %if.end14
  call void @mutex_unlock(%struct.mutex* @acpi_link_lock) #11, !dbg !4605
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0)) #12, !dbg !4607
  store i32 -1, i32* %retval, align 4, !dbg !4608
  br label %return, !dbg !4608

if.end18:                                         ; preds = %if.end14
  %10 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4609
  %refcnt = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %10, i32 0, i32 3, !dbg !4610
  %11 = load i32, i32* %refcnt, align 4, !dbg !4611
  %inc = add i32 %11, 1, !dbg !4611
  store i32 %inc, i32* %refcnt, align 4, !dbg !4611
  call void @mutex_unlock(%struct.mutex* @acpi_link_lock) #11, !dbg !4612
  %12 = load i32*, i32** %triggering.addr, align 8, !dbg !4613
  %tobool19 = icmp ne i32* %12, null, !dbg !4613
  br i1 %tobool19, label %if.then20, label %if.end23, !dbg !4615

if.then20:                                        ; preds = %if.end18
  %13 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4616
  %irq21 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %13, i32 0, i32 2, !dbg !4617
  %triggering22 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq21, i32 0, i32 1, !dbg !4618
  %14 = load i8, i8* %triggering22, align 4, !dbg !4618
  %conv = zext i8 %14 to i32, !dbg !4616
  %15 = load i32*, i32** %triggering.addr, align 8, !dbg !4619
  store i32 %conv, i32* %15, align 4, !dbg !4620
  br label %if.end23, !dbg !4621

if.end23:                                         ; preds = %if.then20, %if.end18
  %16 = load i32*, i32** %polarity.addr, align 8, !dbg !4622
  %tobool24 = icmp ne i32* %16, null, !dbg !4622
  br i1 %tobool24, label %if.then25, label %if.end29, !dbg !4624

if.then25:                                        ; preds = %if.end23
  %17 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4625
  %irq26 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %17, i32 0, i32 2, !dbg !4626
  %polarity27 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq26, i32 0, i32 2, !dbg !4627
  %18 = load i8, i8* %polarity27, align 1, !dbg !4627
  %conv28 = zext i8 %18 to i32, !dbg !4625
  %19 = load i32*, i32** %polarity.addr, align 8, !dbg !4628
  store i32 %conv28, i32* %19, align 4, !dbg !4629
  br label %if.end29, !dbg !4630

if.end29:                                         ; preds = %if.then25, %if.end23
  %20 = load i8**, i8*** %name.addr, align 8, !dbg !4631
  %tobool30 = icmp ne i8** %20, null, !dbg !4631
  br i1 %tobool30, label %if.then31, label %if.end33, !dbg !4633

if.then31:                                        ; preds = %if.end29
  %21 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4634
  %device32 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %21, i32 0, i32 1, !dbg !4634
  %22 = load %struct.acpi_device*, %struct.acpi_device** %device32, align 8, !dbg !4634
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 10, !dbg !4634
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 0, !dbg !4634
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id, i64 0, i64 0, !dbg !4634
  %23 = load i8**, i8*** %name.addr, align 8, !dbg !4635
  store i8* %arraydecay, i8** %23, align 8, !dbg !4636
  br label %if.end33, !dbg !4637

if.end33:                                         ; preds = %if.then31, %if.end29
  %24 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4638
  %irq34 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %24, i32 0, i32 2, !dbg !4639
  %active35 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq34, i32 0, i32 0, !dbg !4640
  %25 = load i32, i32* %active35, align 8, !dbg !4640
  store i32 %25, i32* %retval, align 4, !dbg !4641
  br label %return, !dbg !4641

return:                                           ; preds = %if.end33, %if.then16, %if.then13, %if.then8, %if.then4, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !4642
  ret i32 %26, !dbg !4642
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_get_device(i8*, %struct.acpi_device**) #3

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_driver_data(%struct.acpi_device* %d) #2 !dbg !4643 {
entry:
  %d.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %d, %struct.acpi_device** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %d.addr, metadata !4646, metadata !DIExpression()), !dbg !4647
  %0 = load %struct.acpi_device*, %struct.acpi_device** %d.addr, align 8, !dbg !4648
  %driver_data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 20, !dbg !4649
  %1 = load i8*, i8** %driver_data, align 8, !dbg !4649
  ret i8* %1, !dbg !4650
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_pci_link_allocate(%struct.acpi_pci_link* %link) #2 !dbg !4651 {
entry:
  %retval = alloca i32, align 4
  %link.addr = alloca %struct.acpi_pci_link*, align 8
  %irq = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.acpi_pci_link* %link, %struct.acpi_pci_link** %link.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_link** %link.addr, metadata !4654, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.declare(metadata i32* %irq, metadata !4656, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4658, metadata !DIExpression()), !dbg !4659
  %0 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4660
  %irq1 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %0, i32 0, i32 2, !dbg !4662
  %initialized = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq1, i32 0, i32 6, !dbg !4663
  %bf.load = load i8, i8* %initialized, align 8, !dbg !4663
  %bf.clear = and i8 %bf.load, 1, !dbg !4663
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !4660
  br i1 %tobool, label %if.then, label %if.end4, !dbg !4664

if.then:                                          ; preds = %entry
  %1 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4665
  %refcnt = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %1, i32 0, i32 3, !dbg !4668
  %2 = load i32, i32* %refcnt, align 4, !dbg !4668
  %cmp = icmp eq i32 %2, 0, !dbg !4669
  br i1 %cmp, label %if.then2, label %if.end, !dbg !4670

if.then2:                                         ; preds = %if.then
  %3 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4671
  %4 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4672
  %irq3 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %4, i32 0, i32 2, !dbg !4673
  %active = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq3, i32 0, i32 0, !dbg !4674
  %5 = load i32, i32* %active, align 8, !dbg !4674
  %call = call i32 @acpi_pci_link_set(%struct.acpi_pci_link* %3, i32 %5) #11, !dbg !4675
  br label %if.end, !dbg !4675

if.end:                                           ; preds = %if.then2, %if.then
  store i32 0, i32* %retval, align 4, !dbg !4676
  br label %return, !dbg !4676

if.end4:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4677
  br label %for.cond, !dbg !4679

for.cond:                                         ; preds = %for.inc, %if.end4
  %6 = load i32, i32* %i, align 4, !dbg !4680
  %7 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4682
  %irq5 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %7, i32 0, i32 2, !dbg !4683
  %possible_count = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq5, i32 0, i32 4, !dbg !4684
  %8 = load i8, i8* %possible_count, align 1, !dbg !4684
  %conv = zext i8 %8 to i32, !dbg !4682
  %cmp6 = icmp slt i32 %6, %conv, !dbg !4685
  br i1 %cmp6, label %for.body, label %for.end, !dbg !4686

for.body:                                         ; preds = %for.cond
  %9 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4687
  %irq8 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %9, i32 0, i32 2, !dbg !4690
  %active9 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq8, i32 0, i32 0, !dbg !4691
  %10 = load i32, i32* %active9, align 8, !dbg !4691
  %11 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4692
  %irq10 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %11, i32 0, i32 2, !dbg !4693
  %possible = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq10, i32 0, i32 5, !dbg !4694
  %12 = load i32, i32* %i, align 4, !dbg !4695
  %idxprom = sext i32 %12 to i64, !dbg !4692
  %arrayidx = getelementptr [16 x i32], [16 x i32]* %possible, i64 0, i64 %idxprom, !dbg !4692
  %13 = load i32, i32* %arrayidx, align 4, !dbg !4692
  %cmp11 = icmp eq i32 %10, %13, !dbg !4696
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !4697

if.then13:                                        ; preds = %for.body
  br label %for.end, !dbg !4698

if.end14:                                         ; preds = %for.body
  br label %for.inc, !dbg !4699

for.inc:                                          ; preds = %if.end14
  %14 = load i32, i32* %i, align 4, !dbg !4700
  %inc = add i32 %14, 1, !dbg !4700
  store i32 %inc, i32* %i, align 4, !dbg !4700
  br label %for.cond, !dbg !4701, !llvm.loop !4702

for.end:                                          ; preds = %if.then13, %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !4704
  %16 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4706
  %irq15 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %16, i32 0, i32 2, !dbg !4707
  %possible_count16 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq15, i32 0, i32 4, !dbg !4708
  %17 = load i8, i8* %possible_count16, align 1, !dbg !4708
  %conv17 = zext i8 %17 to i32, !dbg !4706
  %cmp18 = icmp eq i32 %15, %conv17, !dbg !4709
  br i1 %cmp18, label %if.then20, label %if.end29, !dbg !4710

if.then20:                                        ; preds = %for.end
  %18 = load i32, i32* @acpi_strict, align 4, !dbg !4711
  %tobool21 = icmp ne i32 %18, 0, !dbg !4711
  br i1 %tobool21, label %if.then22, label %if.end26, !dbg !4714

if.then22:                                        ; preds = %if.then20
  %19 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4715
  %irq23 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %19, i32 0, i32 2, !dbg !4716
  %active24 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq23, i32 0, i32 0, !dbg !4717
  %20 = load i32, i32* %active24, align 8, !dbg !4717
  %call25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %20) #12, !dbg !4718
  br label %if.end26, !dbg !4718

if.end26:                                         ; preds = %if.then22, %if.then20
  %21 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4719
  %irq27 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %21, i32 0, i32 2, !dbg !4720
  %active28 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq27, i32 0, i32 0, !dbg !4721
  store i32 0, i32* %active28, align 8, !dbg !4722
  br label %if.end29, !dbg !4723

if.end29:                                         ; preds = %if.end26, %for.end
  %22 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4724
  %irq30 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %22, i32 0, i32 2, !dbg !4726
  %active31 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq30, i32 0, i32 0, !dbg !4727
  %23 = load i32, i32* %active31, align 8, !dbg !4727
  %tobool32 = icmp ne i32 %23, 0, !dbg !4724
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !4728

if.then33:                                        ; preds = %if.end29
  %24 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4729
  %irq34 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %24, i32 0, i32 2, !dbg !4730
  %active35 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq34, i32 0, i32 0, !dbg !4731
  %25 = load i32, i32* %active35, align 8, !dbg !4731
  store i32 %25, i32* %irq, align 4, !dbg !4732
  br label %if.end43, !dbg !4733

if.else:                                          ; preds = %if.end29
  %26 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4734
  %irq36 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %26, i32 0, i32 2, !dbg !4735
  %possible37 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq36, i32 0, i32 5, !dbg !4736
  %27 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4737
  %irq38 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %27, i32 0, i32 2, !dbg !4738
  %possible_count39 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq38, i32 0, i32 4, !dbg !4739
  %28 = load i8, i8* %possible_count39, align 1, !dbg !4739
  %conv40 = zext i8 %28 to i32, !dbg !4737
  %sub = sub i32 %conv40, 1, !dbg !4740
  %idxprom41 = sext i32 %sub to i64, !dbg !4734
  %arrayidx42 = getelementptr [16 x i32], [16 x i32]* %possible37, i64 0, i64 %idxprom41, !dbg !4734
  %29 = load i32, i32* %arrayidx42, align 4, !dbg !4734
  store i32 %29, i32* %irq, align 4, !dbg !4741
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then33
  %30 = load i32, i32* @acpi_irq_balance, align 4, !dbg !4742
  %tobool44 = icmp ne i32 %30, 0, !dbg !4742
  br i1 %tobool44, label %if.then48, label %lor.lhs.false, !dbg !4744

lor.lhs.false:                                    ; preds = %if.end43
  %31 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4745
  %irq45 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %31, i32 0, i32 2, !dbg !4746
  %active46 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq45, i32 0, i32 0, !dbg !4747
  %32 = load i32, i32* %active46, align 8, !dbg !4747
  %tobool47 = icmp ne i32 %32, 0, !dbg !4745
  br i1 %tobool47, label %if.end73, label %if.then48, !dbg !4748

if.then48:                                        ; preds = %lor.lhs.false, %if.end43
  %33 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4749
  %irq49 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %33, i32 0, i32 2, !dbg !4752
  %possible_count50 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq49, i32 0, i32 4, !dbg !4753
  %34 = load i8, i8* %possible_count50, align 1, !dbg !4753
  %conv51 = zext i8 %34 to i32, !dbg !4749
  %sub52 = sub i32 %conv51, 1, !dbg !4754
  store i32 %sub52, i32* %i, align 4, !dbg !4755
  br label %for.cond53, !dbg !4756

for.cond53:                                       ; preds = %for.inc71, %if.then48
  %35 = load i32, i32* %i, align 4, !dbg !4757
  %cmp54 = icmp sge i32 %35, 0, !dbg !4759
  br i1 %cmp54, label %for.body56, label %for.end72, !dbg !4760

for.body56:                                       ; preds = %for.cond53
  %36 = load i32, i32* %irq, align 4, !dbg !4761
  %call57 = call i32 @acpi_irq_get_penalty(i32 %36) #11, !dbg !4764
  %37 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4765
  %irq58 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %37, i32 0, i32 2, !dbg !4766
  %possible59 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq58, i32 0, i32 5, !dbg !4767
  %38 = load i32, i32* %i, align 4, !dbg !4768
  %idxprom60 = sext i32 %38 to i64, !dbg !4765
  %arrayidx61 = getelementptr [16 x i32], [16 x i32]* %possible59, i64 0, i64 %idxprom60, !dbg !4765
  %39 = load i32, i32* %arrayidx61, align 4, !dbg !4765
  %call62 = call i32 @acpi_irq_get_penalty(i32 %39) #11, !dbg !4769
  %cmp63 = icmp sgt i32 %call57, %call62, !dbg !4770
  br i1 %cmp63, label %if.then65, label %if.end70, !dbg !4771

if.then65:                                        ; preds = %for.body56
  %40 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4772
  %irq66 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %40, i32 0, i32 2, !dbg !4773
  %possible67 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq66, i32 0, i32 5, !dbg !4774
  %41 = load i32, i32* %i, align 4, !dbg !4775
  %idxprom68 = sext i32 %41 to i64, !dbg !4772
  %arrayidx69 = getelementptr [16 x i32], [16 x i32]* %possible67, i64 0, i64 %idxprom68, !dbg !4772
  %42 = load i32, i32* %arrayidx69, align 4, !dbg !4772
  store i32 %42, i32* %irq, align 4, !dbg !4776
  br label %if.end70, !dbg !4777

if.end70:                                         ; preds = %if.then65, %for.body56
  br label %for.inc71, !dbg !4778

for.inc71:                                        ; preds = %if.end70
  %43 = load i32, i32* %i, align 4, !dbg !4779
  %dec = add i32 %43, -1, !dbg !4779
  store i32 %dec, i32* %i, align 4, !dbg !4779
  br label %for.cond53, !dbg !4780, !llvm.loop !4781

for.end72:                                        ; preds = %for.cond53
  br label %if.end73, !dbg !4783

if.end73:                                         ; preds = %for.end72, %lor.lhs.false
  %44 = load i32, i32* %irq, align 4, !dbg !4784
  %call74 = call i32 @acpi_irq_get_penalty(i32 %44) #11, !dbg !4786
  %cmp75 = icmp sge i32 %call74, 16777216, !dbg !4787
  br i1 %cmp75, label %if.then77, label %if.end82, !dbg !4788

if.then77:                                        ; preds = %if.end73
  %45 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4789
  %device = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %45, i32 0, i32 1, !dbg !4789
  %46 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !4789
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %46, i32 0, i32 10, !dbg !4789
  %device_name = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 5, !dbg !4789
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %device_name, i64 0, i64 0, !dbg !4789
  %47 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4791
  %device78 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %47, i32 0, i32 1, !dbg !4791
  %48 = load %struct.acpi_device*, %struct.acpi_device** %device78, align 8, !dbg !4791
  %pnp79 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %48, i32 0, i32 10, !dbg !4791
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp79, i32 0, i32 0, !dbg !4791
  %arraydecay80 = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id, i64 0, i64 0, !dbg !4791
  %call81 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0), i8* %arraydecay, i8* %arraydecay80) #12, !dbg !4792
  store i32 -19, i32* %retval, align 4, !dbg !4793
  br label %return, !dbg !4793

if.end82:                                         ; preds = %if.end73
  %49 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4794
  %50 = load i32, i32* %irq, align 4, !dbg !4796
  %call83 = call i32 @acpi_pci_link_set(%struct.acpi_pci_link* %49, i32 %50) #11, !dbg !4797
  %tobool84 = icmp ne i32 %call83, 0, !dbg !4797
  br i1 %tobool84, label %if.then85, label %if.else95, !dbg !4798

if.then85:                                        ; preds = %if.end82
  %51 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4799
  %device86 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %51, i32 0, i32 1, !dbg !4799
  %52 = load %struct.acpi_device*, %struct.acpi_device** %device86, align 8, !dbg !4799
  %pnp87 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %52, i32 0, i32 10, !dbg !4799
  %device_name88 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp87, i32 0, i32 5, !dbg !4799
  %arraydecay89 = getelementptr inbounds [40 x i8], [40 x i8]* %device_name88, i64 0, i64 0, !dbg !4799
  %53 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4801
  %device90 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %53, i32 0, i32 1, !dbg !4801
  %54 = load %struct.acpi_device*, %struct.acpi_device** %device90, align 8, !dbg !4801
  %pnp91 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %54, i32 0, i32 10, !dbg !4801
  %bus_id92 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp91, i32 0, i32 0, !dbg !4801
  %arraydecay93 = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id92, i64 0, i64 0, !dbg !4801
  %call94 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0), i8* %arraydecay89, i8* %arraydecay93) #12, !dbg !4802
  store i32 -19, i32* %retval, align 4, !dbg !4803
  br label %return, !dbg !4803

if.else95:                                        ; preds = %if.end82
  %55 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4804
  %irq96 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %55, i32 0, i32 2, !dbg !4807
  %active97 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq96, i32 0, i32 0, !dbg !4808
  %56 = load i32, i32* %active97, align 8, !dbg !4808
  %cmp98 = icmp ult i32 %56, 16, !dbg !4809
  br i1 %cmp98, label %if.then100, label %if.end105, !dbg !4810

if.then100:                                       ; preds = %if.else95
  %57 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4811
  %irq101 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %57, i32 0, i32 2, !dbg !4812
  %active102 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq101, i32 0, i32 0, !dbg !4813
  %58 = load i32, i32* %active102, align 8, !dbg !4813
  %idxprom103 = zext i32 %58 to i64, !dbg !4814
  %arrayidx104 = getelementptr [16 x i32], [16 x i32]* @acpi_isa_irq_penalty, i64 0, i64 %idxprom103, !dbg !4814
  %59 = load i32, i32* %arrayidx104, align 4, !dbg !4815
  %add = add i32 %59, 4096, !dbg !4815
  store i32 %add, i32* %arrayidx104, align 4, !dbg !4815
  br label %if.end105, !dbg !4814

if.end105:                                        ; preds = %if.then100, %if.else95
  %60 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4816
  %device106 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %60, i32 0, i32 1, !dbg !4816
  %61 = load %struct.acpi_device*, %struct.acpi_device** %device106, align 8, !dbg !4816
  %pnp107 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %61, i32 0, i32 10, !dbg !4816
  %device_name108 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp107, i32 0, i32 5, !dbg !4816
  %arraydecay109 = getelementptr inbounds [40 x i8], [40 x i8]* %device_name108, i64 0, i64 0, !dbg !4816
  %62 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4816
  %device110 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %62, i32 0, i32 1, !dbg !4816
  %63 = load %struct.acpi_device*, %struct.acpi_device** %device110, align 8, !dbg !4816
  %pnp111 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %63, i32 0, i32 10, !dbg !4816
  %bus_id112 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp111, i32 0, i32 0, !dbg !4816
  %arraydecay113 = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id112, i64 0, i64 0, !dbg !4816
  %64 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4816
  %irq114 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %64, i32 0, i32 2, !dbg !4816
  %active115 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq114, i32 0, i32 0, !dbg !4816
  %65 = load i32, i32* %active115, align 8, !dbg !4816
  %call116 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %arraydecay109, i8* %arraydecay113, i32 %65) #12, !dbg !4816
  br label %if.end117

if.end117:                                        ; preds = %if.end105
  %66 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !4817
  %irq118 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %66, i32 0, i32 2, !dbg !4818
  %initialized119 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq118, i32 0, i32 6, !dbg !4819
  %bf.load120 = load i8, i8* %initialized119, align 8, !dbg !4820
  %bf.clear121 = and i8 %bf.load120, -2, !dbg !4820
  %bf.set = or i8 %bf.clear121, 1, !dbg !4820
  store i8 %bf.set, i8* %initialized119, align 8, !dbg !4820
  store i32 0, i32* %retval, align 4, !dbg !4821
  br label %return, !dbg !4821

return:                                           ; preds = %if.end117, %if.then85, %if.then77, %if.end
  %67 = load i32, i32* %retval, align 4, !dbg !4822
  ret i32 %67, !dbg !4822
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_pci_link_free_irq(i8* %handle) #2 !dbg !4823 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %device = alloca %struct.acpi_device*, align 8
  %link = alloca %struct.acpi_pci_link*, align 8
  %result = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !4826, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !4828, metadata !DIExpression()), !dbg !4829
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_link** %link, metadata !4830, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4832, metadata !DIExpression()), !dbg !4833
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !4834
  %call = call i32 @acpi_bus_get_device(i8* %0, %struct.acpi_device** %device) #11, !dbg !4835
  store i32 %call, i32* %result, align 4, !dbg !4836
  %1 = load i32, i32* %result, align 4, !dbg !4837
  %tobool = icmp ne i32 %1, 0, !dbg !4837
  br i1 %tobool, label %if.then, label %if.end, !dbg !4839

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0)) #12, !dbg !4840
  store i32 -1, i32* %retval, align 4, !dbg !4842
  br label %return, !dbg !4842

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !4843
  %call2 = call i8* @acpi_driver_data(%struct.acpi_device* %2) #11, !dbg !4844
  %3 = bitcast i8* %call2 to %struct.acpi_pci_link*, !dbg !4844
  store %struct.acpi_pci_link* %3, %struct.acpi_pci_link** %link, align 8, !dbg !4845
  %4 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4846
  %tobool3 = icmp ne %struct.acpi_pci_link* %4, null, !dbg !4846
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !4848

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)) #12, !dbg !4849
  store i32 -1, i32* %retval, align 4, !dbg !4851
  br label %return, !dbg !4851

if.end6:                                          ; preds = %if.end
  call void @mutex_lock(%struct.mutex* @acpi_link_lock) #11, !dbg !4852
  %5 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4853
  %irq = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %5, i32 0, i32 2, !dbg !4855
  %initialized = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq, i32 0, i32 6, !dbg !4856
  %bf.load = load i8, i8* %initialized, align 8, !dbg !4856
  %bf.clear = and i8 %bf.load, 1, !dbg !4856
  %tobool7 = icmp ne i8 %bf.clear, 0, !dbg !4853
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !4857

if.then8:                                         ; preds = %if.end6
  call void @mutex_unlock(%struct.mutex* @acpi_link_lock) #11, !dbg !4858
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !4860
  store i32 -1, i32* %retval, align 4, !dbg !4861
  br label %return, !dbg !4861

if.end10:                                         ; preds = %if.end6
  %6 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4862
  %refcnt = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %6, i32 0, i32 3, !dbg !4864
  %7 = load i32, i32* %refcnt, align 4, !dbg !4864
  %cmp = icmp eq i32 %7, 0, !dbg !4865
  br i1 %cmp, label %if.then11, label %if.end15, !dbg !4866

if.then11:                                        ; preds = %if.end10
  %8 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4867
  %device12 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %8, i32 0, i32 1, !dbg !4868
  %9 = load %struct.acpi_device*, %struct.acpi_device** %device12, align 8, !dbg !4868
  %handle13 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 1, !dbg !4869
  %10 = load i8*, i8** %handle13, align 8, !dbg !4869
  %call14 = call i32 @acpi_evaluate_object(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* null) #11, !dbg !4870
  br label %if.end15, !dbg !4870

if.end15:                                         ; preds = %if.then11, %if.end10
  call void @mutex_unlock(%struct.mutex* @acpi_link_lock) #11, !dbg !4871
  %11 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !4872
  %irq16 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %11, i32 0, i32 2, !dbg !4873
  %active = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq16, i32 0, i32 0, !dbg !4874
  %12 = load i32, i32* %active, align 8, !dbg !4874
  store i32 %12, i32* %retval, align 4, !dbg !4875
  br label %return, !dbg !4875

return:                                           ; preds = %if.end15, %if.then8, %if.then4, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !4876
  ret i32 %13, !dbg !4876
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_penalize_isa_irq(i32 %irq, i32 %active) #2 !dbg !4877 {
entry:
  %irq.addr = alloca i32, align 4
  %active.addr = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4880, metadata !DIExpression()), !dbg !4881
  store i32 %active, i32* %active.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %active.addr, metadata !4882, metadata !DIExpression()), !dbg !4883
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4884
  %cmp = icmp sge i32 %0, 0, !dbg !4886
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4887

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %irq.addr, align 4, !dbg !4888
  %conv = sext i32 %1 to i64, !dbg !4888
  %cmp1 = icmp ult i64 %conv, 16, !dbg !4889
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4890

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %active.addr, align 4, !dbg !4891
  %tobool = icmp ne i32 %2, 0, !dbg !4891
  %3 = zext i1 %tobool to i64, !dbg !4891
  %cond = select i1 %tobool, i32 1048576, i32 4096, !dbg !4891
  %4 = load i32, i32* %irq.addr, align 4, !dbg !4892
  %idxprom = sext i32 %4 to i64, !dbg !4893
  %arrayidx = getelementptr [16 x i32], [16 x i32]* @acpi_isa_irq_penalty, i64 0, i64 %idxprom, !dbg !4893
  %5 = load i32, i32* %arrayidx, align 4, !dbg !4894
  %add = add i32 %5, %cond, !dbg !4894
  store i32 %add, i32* %arrayidx, align 4, !dbg !4894
  br label %if.end, !dbg !4893

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !4895
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @acpi_isa_irq_available(i32 %irq) #2 !dbg !4896 {
entry:
  %irq.addr = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4899, metadata !DIExpression()), !dbg !4900
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4901
  %cmp = icmp sge i32 %0, 0, !dbg !4902
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4903

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %irq.addr, align 4, !dbg !4904
  %conv = sext i32 %1 to i64, !dbg !4904
  %cmp1 = icmp uge i64 %conv, 16, !dbg !4905
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !4906

lor.rhs:                                          ; preds = %land.rhs
  %2 = load i32, i32* %irq.addr, align 4, !dbg !4907
  %call = call i32 @acpi_irq_get_penalty(i32 %2) #11, !dbg !4908
  %cmp3 = icmp slt i32 %call, 16777216, !dbg !4909
  br label %lor.end, !dbg !4906

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %3 = phi i1 [ true, %land.rhs ], [ %cmp3, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %4 = phi i1 [ false, %entry ], [ %3, %lor.end ], !dbg !4910
  ret i1 %4, !dbg !4911
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_irq_get_penalty(i32 %irq) #2 !dbg !4912 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %penalty = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4913, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.declare(metadata i32* %penalty, metadata !4915, metadata !DIExpression()), !dbg !4916
  store i32 0, i32* %penalty, align 4, !dbg !4916
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4917
  %1 = load i32, i32* @sci_irq, align 4, !dbg !4919
  %cmp = icmp eq i32 %0, %1, !dbg !4920
  br i1 %cmp, label %if.then, label %if.end, !dbg !4921

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @sci_penalty, align 4, !dbg !4922
  %3 = load i32, i32* %penalty, align 4, !dbg !4923
  %add = add i32 %3, %2, !dbg !4923
  store i32 %add, i32* %penalty, align 4, !dbg !4923
  br label %if.end, !dbg !4924

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %irq.addr, align 4, !dbg !4925
  %cmp1 = icmp slt i32 %4, 16, !dbg !4927
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !4928

if.then2:                                         ; preds = %if.end
  %5 = load i32, i32* %penalty, align 4, !dbg !4929
  %6 = load i32, i32* %irq.addr, align 4, !dbg !4930
  %idxprom = sext i32 %6 to i64, !dbg !4931
  %arrayidx = getelementptr [16 x i32], [16 x i32]* @acpi_isa_irq_penalty, i64 0, i64 %idxprom, !dbg !4931
  %7 = load i32, i32* %arrayidx, align 4, !dbg !4931
  %add3 = add i32 %5, %7, !dbg !4932
  store i32 %add3, i32* %retval, align 4, !dbg !4933
  br label %return, !dbg !4933

if.end4:                                          ; preds = %if.end
  %8 = load i32, i32* %penalty, align 4, !dbg !4934
  %9 = load i32, i32* %irq.addr, align 4, !dbg !4935
  %call = call i32 @acpi_irq_pci_sharing_penalty(i32 %9) #11, !dbg !4936
  %add5 = add i32 %8, %call, !dbg !4937
  store i32 %add5, i32* %retval, align 4, !dbg !4938
  br label %return, !dbg !4938

return:                                           ; preds = %if.end4, %if.then2
  %10 = load i32, i32* %retval, align 4, !dbg !4939
  ret i32 %10, !dbg !4939
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_penalize_sci_irq(i32 %irq, i32 %trigger, i32 %polarity) #2 !dbg !4940 {
entry:
  %irq.addr = alloca i32, align 4
  %trigger.addr = alloca i32, align 4
  %polarity.addr = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4943, metadata !DIExpression()), !dbg !4944
  store i32 %trigger, i32* %trigger.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trigger.addr, metadata !4945, metadata !DIExpression()), !dbg !4946
  store i32 %polarity, i32* %polarity.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %polarity.addr, metadata !4947, metadata !DIExpression()), !dbg !4948
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4949
  store i32 %0, i32* @sci_irq, align 4, !dbg !4950
  %1 = load i32, i32* %trigger.addr, align 4, !dbg !4951
  %cmp = icmp eq i32 %1, 12, !dbg !4953
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !4954

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %polarity.addr, align 4, !dbg !4955
  %cmp1 = icmp eq i32 %2, 3, !dbg !4956
  br i1 %cmp1, label %if.then, label %if.else, !dbg !4957

if.then:                                          ; preds = %land.lhs.true
  store i32 4096, i32* @sci_penalty, align 4, !dbg !4958
  br label %if.end, !dbg !4959

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 16777216, i32* @sci_penalty, align 4, !dbg !4960
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4961
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_irq_isa(i8* %str) #0 section ".init.text" !dbg !4962 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !4963, metadata !DIExpression()), !dbg !4964
  %0 = load i8*, i8** %str.addr, align 8, !dbg !4965
  %call = call i32 @acpi_irq_penalty_update(i8* %0, i32 1) #12, !dbg !4966
  ret i32 %call, !dbg !4967
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_irq_pci(i8* %str) #0 section ".init.text" !dbg !4968 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !4969, metadata !DIExpression()), !dbg !4970
  %0 = load i8*, i8** %str.addr, align 8, !dbg !4971
  %call = call i32 @acpi_irq_penalty_update(i8* %0, i32 0) #12, !dbg !4972
  ret i32 %call, !dbg !4973
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_irq_nobalance_set(i8* %str) #0 section ".init.text" !dbg !4974 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !4975, metadata !DIExpression()), !dbg !4976
  store i32 0, i32* @acpi_irq_balance, align 4, !dbg !4977
  ret i32 1, !dbg !4978
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_irq_balance_set(i8* %str) #0 section ".init.text" !dbg !4979 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !4980, metadata !DIExpression()), !dbg !4981
  store i32 1, i32* @acpi_irq_balance, align 4, !dbg !4982
  ret i32 1, !dbg !4983
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_pci_link_init() #0 section ".init.text" !dbg !4984 {
entry:
  %0 = load i32, i32* @acpi_noirq, align 4, !dbg !4985
  %tobool = icmp ne i32 %0, 0, !dbg !4985
  br i1 %tobool, label %if.then, label %if.end, !dbg !4987

if.then:                                          ; preds = %entry
  br label %return, !dbg !4988

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @acpi_irq_balance, align 4, !dbg !4989
  %cmp = icmp eq i32 %1, -1, !dbg !4991
  br i1 %cmp, label %if.then1, label %if.end5, !dbg !4992

if.then1:                                         ; preds = %if.end
  %2 = load i32, i32* @acpi_irq_model, align 4, !dbg !4993
  %cmp2 = icmp eq i32 %2, 1, !dbg !4996
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !4997

if.then3:                                         ; preds = %if.then1
  store i32 1, i32* @acpi_irq_balance, align 4, !dbg !4998
  br label %if.end4, !dbg !4999

if.else:                                          ; preds = %if.then1
  store i32 0, i32* @acpi_irq_balance, align 4, !dbg !5000
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  br label %if.end5, !dbg !5001

if.end5:                                          ; preds = %if.end4, %if.end
  call void @register_syscore_ops(%struct.syscore_ops* @irqrouter_syscore_ops) #11, !dbg !5002
  %call = call i32 @acpi_scan_add_handler(%struct.acpi_scan_handler* @pci_link_handler) #11, !dbg !5003
  br label %return, !dbg !5004

return:                                           ; preds = %if.end5, %if.then
  ret void, !dbg !5004
}

; Function Attrs: noredzone
declare dso_local void @register_syscore_ops(%struct.syscore_ops*) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_scan_add_handler(%struct.acpi_scan_handler*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_pci_link_set(%struct.acpi_pci_link* %link, i32 %irq) #2 !dbg !5005 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5008, metadata !DIExpression()), !dbg !5013
  %retval = alloca i32, align 4
  %link.addr = alloca %struct.acpi_pci_link*, align 8
  %irq.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %status = alloca i32, align 4
  %resource = alloca %struct.anon.74*, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store %struct.acpi_pci_link* %link, %struct.acpi_pci_link** %link.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_link** %link.addr, metadata !5017, metadata !DIExpression()), !dbg !5018
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !5019, metadata !DIExpression()), !dbg !5020
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5021, metadata !DIExpression()), !dbg !5022
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5023, metadata !DIExpression()), !dbg !5024
  call void @llvm.dbg.declare(metadata %struct.anon.74** %resource, metadata !5025, metadata !DIExpression()), !dbg !5392
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !5393, metadata !DIExpression()), !dbg !5399
  %0 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !5399
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 16, i1 false), !dbg !5399
  %1 = load i32, i32* %irq.addr, align 4, !dbg !5400
  %tobool = icmp ne i32 %1, 0, !dbg !5400
  br i1 %tobool, label %if.end, label %if.then, !dbg !5402

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5403
  br label %return, !dbg !5403

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !5404, metadata !DIExpression()), !dbg !5405
  br label %do.body, !dbg !5405

do.body:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5406, metadata !DIExpression()), !dbg !5409
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5410, metadata !DIExpression()), !dbg !5409
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5409
  %conv = zext i1 %cmp to i32, !dbg !5409
  store i32 1, i32* %tmp, align 4, !dbg !5409
  %2 = load i32, i32* %tmp, align 4, !dbg !5409
  %call = call i64 @arch_local_save_flags() #11, !dbg !5411
  store i64 %call, i64* %_flags, align 8, !dbg !5411
  br label %do.end, !dbg !5411

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !5412, metadata !DIExpression()), !dbg !5414
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !5415, metadata !DIExpression()), !dbg !5414
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !5414
  %conv6 = zext i1 %cmp5 to i32, !dbg !5414
  store i32 1, i32* %tmp7, align 4, !dbg !5414
  %3 = load i32, i32* %tmp7, align 4, !dbg !5414
  %4 = load i64, i64* %_flags, align 8, !dbg !5416
  store i64 %4, i64* %flags.addr.i, align 8
  %5 = load i64, i64* %flags.addr.i, align 8, !dbg !5417
  %and.i = and i64 %5, 512, !dbg !5418
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !5419
  %lnot.i = xor i1 %tobool.i, true, !dbg !5419
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !5419
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !5416
  %6 = load i32, i32* %tmp8, align 4, !dbg !5416
  store i32 %6, i32* %tmp1, align 4, !dbg !5411
  %7 = load i32, i32* %tmp1, align 4, !dbg !5405
  %tobool10 = icmp ne i32 %7, 0, !dbg !5420
  %8 = zext i1 %tobool10 to i64, !dbg !5420
  %cond = select i1 %tobool10, i32 2592, i32 3264, !dbg !5420
  %call11 = call i8* @kzalloc(i64 137, i32 %cond) #11, !dbg !5421
  %9 = bitcast i8* %call11 to %struct.anon.74*, !dbg !5421
  store %struct.anon.74* %9, %struct.anon.74** %resource, align 8, !dbg !5422
  %10 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5423
  %tobool12 = icmp ne %struct.anon.74* %10, null, !dbg !5423
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !5425

if.then13:                                        ; preds = %do.end
  store i32 -12, i32* %retval, align 4, !dbg !5426
  br label %return, !dbg !5426

if.end14:                                         ; preds = %do.end
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 0, !dbg !5427
  store i64 137, i64* %length, align 8, !dbg !5428
  %11 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5429
  %12 = bitcast %struct.anon.74* %11 to i8*, !dbg !5429
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !5430
  store i8* %12, i8** %pointer, align 8, !dbg !5431
  %13 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5432
  %irq15 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %13, i32 0, i32 2, !dbg !5433
  %resource_type = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq15, i32 0, i32 3, !dbg !5434
  %14 = load i8, i8* %resource_type, align 2, !dbg !5434
  %conv16 = zext i8 %14 to i32, !dbg !5432
  switch i32 %conv16, label %sw.default [
    i32 0, label %sw.bb
    i32 15, label %sw.bb49
  ], !dbg !5435

sw.bb:                                            ; preds = %if.end14
  %15 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5436
  %res = getelementptr inbounds %struct.anon.74, %struct.anon.74* %15, i32 0, i32 0, !dbg !5438
  %type = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %res, i32 0, i32 0, !dbg !5439
  store i32 0, i32* %type, align 1, !dbg !5440
  %16 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5441
  %res17 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %16, i32 0, i32 0, !dbg !5442
  %length18 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %res17, i32 0, i32 1, !dbg !5443
  store i32 68, i32* %length18, align 1, !dbg !5444
  %17 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5445
  %irq19 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %17, i32 0, i32 2, !dbg !5446
  %triggering = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq19, i32 0, i32 1, !dbg !5447
  %18 = load i8, i8* %triggering, align 4, !dbg !5447
  %19 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5448
  %res20 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %19, i32 0, i32 0, !dbg !5449
  %data = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %res20, i32 0, i32 2, !dbg !5450
  %irq21 = bitcast %union.acpi_resource_data* %data to %struct.acpi_resource_irq*, !dbg !5451
  %triggering22 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %irq21, i32 0, i32 1, !dbg !5452
  store i8 %18, i8* %triggering22, align 1, !dbg !5453
  %20 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5454
  %irq23 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %20, i32 0, i32 2, !dbg !5455
  %polarity = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq23, i32 0, i32 2, !dbg !5456
  %21 = load i8, i8* %polarity, align 1, !dbg !5456
  %22 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5457
  %res24 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %22, i32 0, i32 0, !dbg !5458
  %data25 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %res24, i32 0, i32 2, !dbg !5459
  %irq26 = bitcast %union.acpi_resource_data* %data25 to %struct.acpi_resource_irq*, !dbg !5460
  %polarity27 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %irq26, i32 0, i32 2, !dbg !5461
  store i8 %21, i8* %polarity27, align 1, !dbg !5462
  %23 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5463
  %irq28 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %23, i32 0, i32 2, !dbg !5465
  %triggering29 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq28, i32 0, i32 1, !dbg !5466
  %24 = load i8, i8* %triggering29, align 4, !dbg !5466
  %conv30 = zext i8 %24 to i32, !dbg !5463
  %cmp31 = icmp eq i32 %conv30, 1, !dbg !5467
  br i1 %cmp31, label %if.then33, label %if.else, !dbg !5468

if.then33:                                        ; preds = %sw.bb
  %25 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5469
  %res34 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %25, i32 0, i32 0, !dbg !5470
  %data35 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %res34, i32 0, i32 2, !dbg !5471
  %irq36 = bitcast %union.acpi_resource_data* %data35 to %struct.acpi_resource_irq*, !dbg !5472
  %shareable = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %irq36, i32 0, i32 3, !dbg !5473
  store i8 0, i8* %shareable, align 1, !dbg !5474
  br label %if.end41, !dbg !5469

if.else:                                          ; preds = %sw.bb
  %26 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5475
  %res37 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %26, i32 0, i32 0, !dbg !5476
  %data38 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %res37, i32 0, i32 2, !dbg !5477
  %irq39 = bitcast %union.acpi_resource_data* %data38 to %struct.acpi_resource_irq*, !dbg !5478
  %shareable40 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %irq39, i32 0, i32 3, !dbg !5479
  store i8 1, i8* %shareable40, align 1, !dbg !5480
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then33
  %27 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5481
  %res42 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %27, i32 0, i32 0, !dbg !5482
  %data43 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %res42, i32 0, i32 2, !dbg !5483
  %irq44 = bitcast %union.acpi_resource_data* %data43 to %struct.acpi_resource_irq*, !dbg !5484
  %interrupt_count = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %irq44, i32 0, i32 5, !dbg !5485
  store i8 1, i8* %interrupt_count, align 1, !dbg !5486
  %28 = load i32, i32* %irq.addr, align 4, !dbg !5487
  %conv45 = trunc i32 %28 to i8, !dbg !5487
  %29 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5488
  %res46 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %29, i32 0, i32 0, !dbg !5489
  %data47 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %res46, i32 0, i32 2, !dbg !5490
  %irq48 = bitcast %union.acpi_resource_data* %data47 to %struct.acpi_resource_irq*, !dbg !5491
  %interrupts = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %irq48, i32 0, i32 6, !dbg !5492
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %interrupts, i64 0, i64 0, !dbg !5488
  store i8 %conv45, i8* %arrayidx, align 1, !dbg !5493
  br label %sw.epilog, !dbg !5494

sw.bb49:                                          ; preds = %if.end14
  %30 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5495
  %res50 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %30, i32 0, i32 0, !dbg !5496
  %type51 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %res50, i32 0, i32 0, !dbg !5497
  store i32 15, i32* %type51, align 1, !dbg !5498
  %31 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5499
  %res52 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %31, i32 0, i32 0, !dbg !5500
  %length53 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %res52, i32 0, i32 1, !dbg !5501
  store i32 68, i32* %length53, align 1, !dbg !5502
  %32 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5503
  %res54 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %32, i32 0, i32 0, !dbg !5504
  %data55 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %res54, i32 0, i32 2, !dbg !5505
  %extended_irq = bitcast %union.acpi_resource_data* %data55 to %struct.acpi_resource_extended_irq*, !dbg !5506
  %producer_consumer = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %extended_irq, i32 0, i32 0, !dbg !5507
  store i8 1, i8* %producer_consumer, align 1, !dbg !5508
  %33 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5509
  %irq56 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %33, i32 0, i32 2, !dbg !5510
  %triggering57 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq56, i32 0, i32 1, !dbg !5511
  %34 = load i8, i8* %triggering57, align 4, !dbg !5511
  %35 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5512
  %res58 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %35, i32 0, i32 0, !dbg !5513
  %data59 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %res58, i32 0, i32 2, !dbg !5514
  %extended_irq60 = bitcast %union.acpi_resource_data* %data59 to %struct.acpi_resource_extended_irq*, !dbg !5515
  %triggering61 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %extended_irq60, i32 0, i32 1, !dbg !5516
  store i8 %34, i8* %triggering61, align 1, !dbg !5517
  %36 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5518
  %irq62 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %36, i32 0, i32 2, !dbg !5519
  %polarity63 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq62, i32 0, i32 2, !dbg !5520
  %37 = load i8, i8* %polarity63, align 1, !dbg !5520
  %38 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5521
  %res64 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %38, i32 0, i32 0, !dbg !5522
  %data65 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %res64, i32 0, i32 2, !dbg !5523
  %extended_irq66 = bitcast %union.acpi_resource_data* %data65 to %struct.acpi_resource_extended_irq*, !dbg !5524
  %polarity67 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %extended_irq66, i32 0, i32 2, !dbg !5525
  store i8 %37, i8* %polarity67, align 1, !dbg !5526
  %39 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5527
  %irq68 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %39, i32 0, i32 2, !dbg !5529
  %triggering69 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq68, i32 0, i32 1, !dbg !5530
  %40 = load i8, i8* %triggering69, align 4, !dbg !5530
  %conv70 = zext i8 %40 to i32, !dbg !5527
  %cmp71 = icmp eq i32 %conv70, 1, !dbg !5531
  br i1 %cmp71, label %if.then73, label %if.else78, !dbg !5532

if.then73:                                        ; preds = %sw.bb49
  %41 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5533
  %res74 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %41, i32 0, i32 0, !dbg !5534
  %data75 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %res74, i32 0, i32 2, !dbg !5535
  %extended_irq76 = bitcast %union.acpi_resource_data* %data75 to %struct.acpi_resource_extended_irq*, !dbg !5536
  %shareable77 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %extended_irq76, i32 0, i32 3, !dbg !5537
  store i8 0, i8* %shareable77, align 1, !dbg !5538
  br label %if.end83, !dbg !5533

if.else78:                                        ; preds = %sw.bb49
  %42 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5539
  %res79 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %42, i32 0, i32 0, !dbg !5540
  %data80 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %res79, i32 0, i32 2, !dbg !5541
  %extended_irq81 = bitcast %union.acpi_resource_data* %data80 to %struct.acpi_resource_extended_irq*, !dbg !5542
  %shareable82 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %extended_irq81, i32 0, i32 3, !dbg !5543
  store i8 1, i8* %shareable82, align 1, !dbg !5544
  br label %if.end83

if.end83:                                         ; preds = %if.else78, %if.then73
  %43 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5545
  %res84 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %43, i32 0, i32 0, !dbg !5546
  %data85 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %res84, i32 0, i32 2, !dbg !5547
  %extended_irq86 = bitcast %union.acpi_resource_data* %data85 to %struct.acpi_resource_extended_irq*, !dbg !5548
  %interrupt_count87 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %extended_irq86, i32 0, i32 5, !dbg !5549
  store i8 1, i8* %interrupt_count87, align 1, !dbg !5550
  %44 = load i32, i32* %irq.addr, align 4, !dbg !5551
  %45 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5552
  %res88 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %45, i32 0, i32 0, !dbg !5553
  %data89 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %res88, i32 0, i32 2, !dbg !5554
  %extended_irq90 = bitcast %union.acpi_resource_data* %data89 to %struct.acpi_resource_extended_irq*, !dbg !5555
  %interrupts91 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %extended_irq90, i32 0, i32 7, !dbg !5556
  %arrayidx92 = getelementptr [1 x i32], [1 x i32]* %interrupts91, i64 0, i64 0, !dbg !5552
  store i32 %44, i32* %arrayidx92, align 1, !dbg !5557
  br label %sw.epilog, !dbg !5558

sw.default:                                       ; preds = %if.end14
  %46 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5559
  %irq93 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %46, i32 0, i32 2, !dbg !5560
  %resource_type94 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq93, i32 0, i32 3, !dbg !5561
  %47 = load i8, i8* %resource_type94, align 2, !dbg !5561
  %conv95 = zext i8 %47 to i32, !dbg !5559
  %call96 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %conv95) #12, !dbg !5562
  store i32 -22, i32* %result, align 4, !dbg !5563
  br label %end142, !dbg !5564

sw.epilog:                                        ; preds = %if.end83, %if.end41
  %48 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5565
  %end = getelementptr inbounds %struct.anon.74, %struct.anon.74* %48, i32 0, i32 1, !dbg !5566
  %type97 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %end, i32 0, i32 0, !dbg !5567
  store i32 7, i32* %type97, align 1, !dbg !5568
  %49 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5569
  %end98 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %49, i32 0, i32 1, !dbg !5570
  %length99 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %end98, i32 0, i32 1, !dbg !5571
  store i32 68, i32* %length99, align 1, !dbg !5572
  %50 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5573
  %device = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %50, i32 0, i32 1, !dbg !5574
  %51 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !5574
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %51, i32 0, i32 1, !dbg !5575
  %52 = load i8*, i8** %handle, align 8, !dbg !5575
  %call100 = call i32 @acpi_set_current_resources(i8* %52, %struct.acpi_buffer* %buffer) #11, !dbg !5576
  store i32 %call100, i32* %status, align 4, !dbg !5577
  %53 = load i32, i32* %status, align 4, !dbg !5578
  %tobool101 = icmp ne i32 %53, 0, !dbg !5578
  br i1 %tobool101, label %if.then102, label %if.end103, !dbg !5580

if.then102:                                       ; preds = %sw.epilog
  %54 = load i32, i32* %status, align 4, !dbg !5581
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 345, i32 %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !5581
  store i32 -19, i32* %result, align 4, !dbg !5583
  br label %end142, !dbg !5584

if.end103:                                        ; preds = %sw.epilog
  %55 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5585
  %device104 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %55, i32 0, i32 1, !dbg !5586
  %56 = load %struct.acpi_device*, %struct.acpi_device** %device104, align 8, !dbg !5586
  %call105 = call i32 @acpi_bus_get_status(%struct.acpi_device* %56) #11, !dbg !5587
  store i32 %call105, i32* %result, align 4, !dbg !5588
  %57 = load i32, i32* %result, align 4, !dbg !5589
  %tobool106 = icmp ne i32 %57, 0, !dbg !5589
  br i1 %tobool106, label %if.then107, label %if.end109, !dbg !5591

if.then107:                                       ; preds = %if.end103
  %call108 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0)) #12, !dbg !5592
  br label %end142, !dbg !5594

if.end109:                                        ; preds = %if.end103
  %58 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5595
  %device110 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %58, i32 0, i32 1, !dbg !5597
  %59 = load %struct.acpi_device*, %struct.acpi_device** %device110, align 8, !dbg !5597
  %status111 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %59, i32 0, i32 8, !dbg !5598
  %60 = bitcast %struct.acpi_device_status* %status111 to i32*, !dbg !5599
  %bf.load = load i32, i32* %60, align 8, !dbg !5599
  %bf.lshr = lshr i32 %bf.load, 1, !dbg !5599
  %bf.clear = and i32 %bf.lshr, 1, !dbg !5599
  %tobool112 = icmp ne i32 %bf.clear, 0, !dbg !5595
  br i1 %tobool112, label %if.end119, label %if.then113, !dbg !5600

if.then113:                                       ; preds = %if.end109
  %61 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5601
  %device114 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %61, i32 0, i32 1, !dbg !5601
  %62 = load %struct.acpi_device*, %struct.acpi_device** %device114, align 8, !dbg !5601
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %62, i32 0, i32 10, !dbg !5601
  %device_name = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 5, !dbg !5601
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %device_name, i64 0, i64 0, !dbg !5601
  %63 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5603
  %device115 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %63, i32 0, i32 1, !dbg !5603
  %64 = load %struct.acpi_device*, %struct.acpi_device** %device115, align 8, !dbg !5603
  %pnp116 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %64, i32 0, i32 10, !dbg !5603
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp116, i32 0, i32 0, !dbg !5603
  %arraydecay117 = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id, i64 0, i64 0, !dbg !5603
  %call118 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i8* %arraydecay, i8* %arraydecay117) #12, !dbg !5604
  br label %if.end119, !dbg !5605

if.end119:                                        ; preds = %if.then113, %if.end109
  %65 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5606
  %call120 = call i32 @acpi_pci_link_get_current(%struct.acpi_pci_link* %65) #11, !dbg !5607
  store i32 %call120, i32* %result, align 4, !dbg !5608
  %66 = load i32, i32* %result, align 4, !dbg !5609
  %tobool121 = icmp ne i32 %66, 0, !dbg !5609
  br i1 %tobool121, label %if.then122, label %if.end123, !dbg !5611

if.then122:                                       ; preds = %if.end119
  br label %end142, !dbg !5612

if.end123:                                        ; preds = %if.end119
  %67 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5614
  %irq124 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %67, i32 0, i32 2, !dbg !5616
  %active = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq124, i32 0, i32 0, !dbg !5617
  %68 = load i32, i32* %active, align 8, !dbg !5617
  %69 = load i32, i32* %irq.addr, align 4, !dbg !5618
  %cmp125 = icmp ne i32 %68, %69, !dbg !5619
  br i1 %cmp125, label %if.then127, label %if.end141, !dbg !5620

if.then127:                                       ; preds = %if.end123
  %70 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5621
  %device128 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %70, i32 0, i32 1, !dbg !5621
  %71 = load %struct.acpi_device*, %struct.acpi_device** %device128, align 8, !dbg !5621
  %pnp129 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %71, i32 0, i32 10, !dbg !5621
  %device_name130 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp129, i32 0, i32 5, !dbg !5621
  %arraydecay131 = getelementptr inbounds [40 x i8], [40 x i8]* %device_name130, i64 0, i64 0, !dbg !5621
  %72 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5623
  %device132 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %72, i32 0, i32 1, !dbg !5623
  %73 = load %struct.acpi_device*, %struct.acpi_device** %device132, align 8, !dbg !5623
  %pnp133 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %73, i32 0, i32 10, !dbg !5623
  %bus_id134 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp133, i32 0, i32 0, !dbg !5623
  %arraydecay135 = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id134, i64 0, i64 0, !dbg !5623
  %74 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5624
  %irq136 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %74, i32 0, i32 2, !dbg !5625
  %active137 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq136, i32 0, i32 0, !dbg !5626
  %75 = load i32, i32* %active137, align 8, !dbg !5626
  %76 = load i32, i32* %irq.addr, align 4, !dbg !5627
  %call138 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0), i8* %arraydecay131, i8* %arraydecay135, i32 %75, i32 %76) #12, !dbg !5628
  %77 = load i32, i32* %irq.addr, align 4, !dbg !5629
  %78 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5630
  %irq139 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %78, i32 0, i32 2, !dbg !5631
  %active140 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq139, i32 0, i32 0, !dbg !5632
  store i32 %77, i32* %active140, align 8, !dbg !5633
  br label %if.end141, !dbg !5634

if.end141:                                        ; preds = %if.then127, %if.end123
  br label %end142, !dbg !5618

end142:                                           ; preds = %if.end141, %if.then122, %if.then107, %if.then102, %sw.default
  call void @llvm.dbg.label(metadata !5635), !dbg !5636
  %79 = load %struct.anon.74*, %struct.anon.74** %resource, align 8, !dbg !5637
  %80 = bitcast %struct.anon.74* %79 to i8*, !dbg !5637
  call void @kfree(i8* %80) #11, !dbg !5638
  %81 = load i32, i32* %result, align 4, !dbg !5639
  store i32 %81, i32* %retval, align 4, !dbg !5640
  br label %return, !dbg !5640

return:                                           ; preds = %end142, %if.then13, %if.then
  %82 = load i32, i32* %retval, align 4, !dbg !5641
  ret i32 %82, !dbg !5641
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !5642 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5645, metadata !DIExpression()), !dbg !5649
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5655, metadata !DIExpression()), !dbg !5656
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5657, metadata !DIExpression()), !dbg !5658
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5659, metadata !DIExpression()), !dbg !5660
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5661, metadata !DIExpression()), !dbg !5665
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5667, metadata !DIExpression()), !dbg !5671
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5673, metadata !DIExpression()), !dbg !5677
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5682, metadata !DIExpression()), !dbg !5683
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5684, metadata !DIExpression()), !dbg !5685
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5686, metadata !DIExpression()), !dbg !5687
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5688, metadata !DIExpression()), !dbg !5689
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5690, metadata !DIExpression()), !dbg !5691
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5692, metadata !DIExpression()), !dbg !5693
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5694, metadata !DIExpression()), !dbg !5695
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5696, metadata !DIExpression()), !dbg !5697
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5698, metadata !DIExpression()), !dbg !5699
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5700, metadata !DIExpression()), !dbg !5701
  %0 = load i64, i64* %size.addr, align 8, !dbg !5702
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5703
  %or = or i32 %1, 256, !dbg !5704
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5705
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !5706
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5707

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5708
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5709
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5710

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5711
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5712
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5713
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !5714
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5691
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5715
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5716
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5717
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5718
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5719
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5720
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #14, !dbg !5721
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5721
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5721
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5721
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !5721
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5722
  br label %kmalloc.exit, !dbg !5722

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5723
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5724
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5724
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5726

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5727
  br label %kmalloc_index.exit.i, !dbg !5727

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5728
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5730
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5731

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5732
  br label %kmalloc_index.exit.i, !dbg !5732

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5733
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5735
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5736

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5737
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5738
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5739

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5740
  br label %kmalloc_index.exit.i, !dbg !5740

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5741
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5743
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5744

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5745
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5746
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5747

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5748
  br label %kmalloc_index.exit.i, !dbg !5748

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5749
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5751
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5752

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5753
  br label %kmalloc_index.exit.i, !dbg !5753

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5754
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5756
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5757

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5758
  br label %kmalloc_index.exit.i, !dbg !5758

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5759
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5761
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5762

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5763
  br label %kmalloc_index.exit.i, !dbg !5763

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5764
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5766
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5767

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5768
  br label %kmalloc_index.exit.i, !dbg !5768

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5769
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5771
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5772

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5773
  br label %kmalloc_index.exit.i, !dbg !5773

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5774
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5776
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5777

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5778
  br label %kmalloc_index.exit.i, !dbg !5778

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5779
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5781
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5782

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5783
  br label %kmalloc_index.exit.i, !dbg !5783

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5784
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5786
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5787

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5788
  br label %kmalloc_index.exit.i, !dbg !5788

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5789
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5791
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5792

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5793
  br label %kmalloc_index.exit.i, !dbg !5793

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5794
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5796
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5797

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5798
  br label %kmalloc_index.exit.i, !dbg !5798

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5799
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5801
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5802

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5803
  br label %kmalloc_index.exit.i, !dbg !5803

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5804
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5806
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5807

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5808
  br label %kmalloc_index.exit.i, !dbg !5808

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5809
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5811
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5812

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5813
  br label %kmalloc_index.exit.i, !dbg !5813

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5814
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5816
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5817

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5818
  br label %kmalloc_index.exit.i, !dbg !5818

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5819
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5821
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5822

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5823
  br label %kmalloc_index.exit.i, !dbg !5823

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5824
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5826
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5827

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5828
  br label %kmalloc_index.exit.i, !dbg !5828

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5829
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5831
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5832

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5833
  br label %kmalloc_index.exit.i, !dbg !5833

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5834
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5836
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5837

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5838
  br label %kmalloc_index.exit.i, !dbg !5838

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5839
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5841
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5842

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5843
  br label %kmalloc_index.exit.i, !dbg !5843

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5844
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5846
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5847

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5848
  br label %kmalloc_index.exit.i, !dbg !5848

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5849
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5851
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5852

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5853
  br label %kmalloc_index.exit.i, !dbg !5853

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5854
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5856
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5857

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5858
  br label %kmalloc_index.exit.i, !dbg !5858

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5859
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5861
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5862

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5863
  br label %kmalloc_index.exit.i, !dbg !5863

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5864
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5866
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5867

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5868
  br label %kmalloc_index.exit.i, !dbg !5868

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5869, !srcloc !5872
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #10, !dbg !5873, !srcloc !5876
  unreachable, !dbg !5877

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5878
  store i32 %45, i32* %index.i, align 4, !dbg !5879
  %46 = load i32, i32* %index.i, align 4, !dbg !5880
  %tobool.i = icmp ne i32 %46, 0, !dbg !5880
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5882

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5883
  br label %kmalloc.exit, !dbg !5883

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5884
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5885
  %and.i.i = and i32 %48, 17, !dbg !5885
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5885
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5885
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5885
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5885
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5887

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5888
  br label %kmalloc_type.exit.i, !dbg !5888

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5889
  %and2.i.i = and i32 %49, 1, !dbg !5890
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5889
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5889
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5889
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5891
  br label %kmalloc_type.exit.i, !dbg !5891

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5892
  %idxprom.i = zext i32 %51 to i64, !dbg !5893
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5893
  %52 = load i32, i32* %index.i, align 4, !dbg !5894
  %idxprom6.i = zext i32 %52 to i64, !dbg !5893
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5893
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5893
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5895
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5896
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5897
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5898
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #14, !dbg !5899
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5899
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5899
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5899
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5899
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5660
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5900
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5901
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5902
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5903
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #14, !dbg !5904
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5905
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5906
  store i8* %62, i8** %retval.i, align 8, !dbg !5907
  br label %kmalloc.exit, !dbg !5907

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5908
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5909
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #14, !dbg !5910
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5910
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5910
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5910
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5910
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5911
  br label %kmalloc.exit, !dbg !5911

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5912
  ret i8* %65, !dbg !5913
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #2 !dbg !5914 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5918, metadata !DIExpression()), !dbg !5920
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5921, metadata !DIExpression()), !dbg !5920
  %0 = load i64, i64* %__edi, align 8, !dbg !5920
  store i64 %0, i64* %__edi, align 8, !dbg !5920
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5922, metadata !DIExpression()), !dbg !5920
  %1 = load i64, i64* %__esi, align 8, !dbg !5920
  store i64 %1, i64* %__esi, align 8, !dbg !5920
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5923, metadata !DIExpression()), !dbg !5920
  %2 = load i64, i64* %__edx, align 8, !dbg !5920
  store i64 %2, i64* %__edx, align 8, !dbg !5920
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5924, metadata !DIExpression()), !dbg !5920
  %3 = load i64, i64* %__ecx, align 8, !dbg !5920
  store i64 %3, i64* %__ecx, align 8, !dbg !5920
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5925, metadata !DIExpression()), !dbg !5920
  %4 = load i64, i64* %__eax, align 8, !dbg !5920
  store i64 %4, i64* %__eax, align 8, !dbg !5920
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5920
  %6 = call i64 @llvm.read_register.i64(metadata !4457), !dbg !5926
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #10, !dbg !5926, !srcloc !5929
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5926
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5926
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5926
  call void @llvm.write_register.i64(metadata !4457, i64 %asmresult1), !dbg !5926
  %8 = load i64, i64* %__eax, align 8, !dbg !5926
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5930, metadata !DIExpression()), !dbg !5932
  store i64 -1, i64* %__mask, align 8, !dbg !5932
  %9 = load i64, i64* %__mask, align 8, !dbg !5932
  store i64 %9, i64* %tmp, align 8, !dbg !5932
  %10 = load i64, i64* %tmp, align 8, !dbg !5932
  %and = and i64 %8, %10, !dbg !5926
  store i64 %and, i64* %__ret, align 8, !dbg !5926
  %11 = load i64, i64* %__ret, align 8, !dbg !5920
  store i64 %11, i64* %tmp2, align 8, !dbg !5933
  %12 = load i64, i64* %tmp2, align 8, !dbg !5920
  ret i64 %12, !dbg !5934
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_set_current_resources(i8*, %struct.acpi_buffer*) #3

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_get_status(%struct.acpi_device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_pci_link_get_current(%struct.acpi_pci_link* %link) #2 !dbg !5935 {
entry:
  %retval = alloca i32, align 4
  %link.addr = alloca %struct.acpi_pci_link*, align 8
  %result = alloca i32, align 4
  %status = alloca i32, align 4
  %irq = alloca i32, align 4
  store %struct.acpi_pci_link* %link, %struct.acpi_pci_link** %link.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_link** %link.addr, metadata !5936, metadata !DIExpression()), !dbg !5937
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5938, metadata !DIExpression()), !dbg !5939
  store i32 0, i32* %result, align 4, !dbg !5939
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5940, metadata !DIExpression()), !dbg !5941
  call void @llvm.dbg.declare(metadata i32* %irq, metadata !5942, metadata !DIExpression()), !dbg !5943
  store i32 0, i32* %irq, align 4, !dbg !5943
  %0 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5944
  %irq1 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %0, i32 0, i32 2, !dbg !5945
  %active = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq1, i32 0, i32 0, !dbg !5946
  store i32 0, i32* %active, align 8, !dbg !5947
  %1 = load i32, i32* @acpi_strict, align 4, !dbg !5948
  %tobool = icmp ne i32 %1, 0, !dbg !5948
  br i1 %tobool, label %if.then, label %if.end10, !dbg !5950

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5951
  %device = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %2, i32 0, i32 1, !dbg !5953
  %3 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !5953
  %call = call i32 @acpi_bus_get_status(%struct.acpi_device* %3) #11, !dbg !5954
  store i32 %call, i32* %result, align 4, !dbg !5955
  %4 = load i32, i32* %result, align 4, !dbg !5956
  %tobool2 = icmp ne i32 %4, 0, !dbg !5956
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !5958

if.then3:                                         ; preds = %if.then
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0)) #12, !dbg !5959
  br label %end, !dbg !5961

if.end:                                           ; preds = %if.then
  %5 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5962
  %device5 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %5, i32 0, i32 1, !dbg !5964
  %6 = load %struct.acpi_device*, %struct.acpi_device** %device5, align 8, !dbg !5964
  %status6 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 8, !dbg !5965
  %7 = bitcast %struct.acpi_device_status* %status6 to i32*, !dbg !5966
  %bf.load = load i32, i32* %7, align 8, !dbg !5966
  %bf.lshr = lshr i32 %bf.load, 1, !dbg !5966
  %bf.clear = and i32 %bf.lshr, 1, !dbg !5966
  %tobool7 = icmp ne i32 %bf.clear, 0, !dbg !5962
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !5967

if.then8:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5968
  br label %return, !dbg !5968

if.end9:                                          ; preds = %if.end
  br label %if.end10, !dbg !5970

if.end10:                                         ; preds = %if.end9, %entry
  %8 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5971
  %device11 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %8, i32 0, i32 1, !dbg !5972
  %9 = load %struct.acpi_device*, %struct.acpi_device** %device11, align 8, !dbg !5972
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 1, !dbg !5973
  %10 = load i8*, i8** %handle, align 8, !dbg !5973
  %11 = bitcast i32* %irq to i8*, !dbg !5974
  %call12 = call i32 @acpi_walk_resources(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 (%struct.acpi_resource*, i8*)* @acpi_pci_link_check_current, i8* %11) #11, !dbg !5975
  store i32 %call12, i32* %status, align 4, !dbg !5976
  %12 = load i32, i32* %status, align 4, !dbg !5977
  %tobool13 = icmp ne i32 %12, 0, !dbg !5977
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5979

if.then14:                                        ; preds = %if.end10
  %13 = load i32, i32* %status, align 4, !dbg !5980
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 259, i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0)) #11, !dbg !5980
  store i32 -19, i32* %result, align 4, !dbg !5982
  br label %end, !dbg !5983

if.end15:                                         ; preds = %if.end10
  %14 = load i32, i32* @acpi_strict, align 4, !dbg !5984
  %tobool16 = icmp ne i32 %14, 0, !dbg !5984
  br i1 %tobool16, label %land.lhs.true, label %if.end20, !dbg !5986

land.lhs.true:                                    ; preds = %if.end15
  %15 = load i32, i32* %irq, align 4, !dbg !5987
  %tobool17 = icmp ne i32 %15, 0, !dbg !5987
  br i1 %tobool17, label %if.end20, label %if.then18, !dbg !5988

if.then18:                                        ; preds = %land.lhs.true
  %call19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0)) #12, !dbg !5989
  store i32 -19, i32* %result, align 4, !dbg !5991
  br label %if.end20, !dbg !5992

if.end20:                                         ; preds = %if.then18, %land.lhs.true, %if.end15
  %16 = load i32, i32* %irq, align 4, !dbg !5993
  %17 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !5994
  %irq21 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %17, i32 0, i32 2, !dbg !5995
  %active22 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq21, i32 0, i32 0, !dbg !5996
  store i32 %16, i32* %active22, align 8, !dbg !5997
  br label %end, !dbg !5994

end:                                              ; preds = %if.end20, %if.then14, %if.then3
  call void @llvm.dbg.label(metadata !5998), !dbg !5999
  %18 = load i32, i32* %result, align 4, !dbg !6000
  store i32 %18, i32* %retval, align 4, !dbg !6001
  br label %return, !dbg !6001

return:                                           ; preds = %end, %if.then8
  %19 = load i32, i32* %retval, align 4, !dbg !6002
  ret i32 %19, !dbg !6002
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !6003 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6005, metadata !DIExpression()), !dbg !6010
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6012, metadata !DIExpression()), !dbg !6013
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6014, metadata !DIExpression()), !dbg !6015
  %0 = load i64, i64* %size.addr, align 8, !dbg !6016
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6018
  br i1 %1, label %if.then, label %if.end447, !dbg !6019

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6020
  %tobool = icmp ne i64 %2, 0, !dbg !6020
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6023

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6024
  br label %return, !dbg !6024

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6025
  %cmp = icmp ult i64 %3, 4096, !dbg !6027
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6028

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6029
  br label %return, !dbg !6029

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub = sub i64 %4, 1, !dbg !6030
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6030
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6030

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub4 = sub i64 %6, 1, !dbg !6030
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6030
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6030

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub6 = sub i64 %8, 1, !dbg !6030
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6030
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6030

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6030

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub9 = sub i64 %9, 1, !dbg !6030
  %and = and i64 %sub9, -9223372036854775808, !dbg !6030
  %tobool10 = icmp ne i64 %and, 0, !dbg !6030
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6030

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6030

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub13 = sub i64 %10, 1, !dbg !6030
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6030
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6030
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6030

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6030

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub18 = sub i64 %11, 1, !dbg !6030
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6030
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6030
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6030

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6030

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub23 = sub i64 %12, 1, !dbg !6030
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6030
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6030
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6030

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6030

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub28 = sub i64 %13, 1, !dbg !6030
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6030
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6030
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6030

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6030

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub33 = sub i64 %14, 1, !dbg !6030
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6030
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6030
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6030

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6030

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub38 = sub i64 %15, 1, !dbg !6030
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6030
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6030
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6030

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6030

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub43 = sub i64 %16, 1, !dbg !6030
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6030
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6030
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6030

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6030

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub48 = sub i64 %17, 1, !dbg !6030
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6030
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6030
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6030

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6030

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub53 = sub i64 %18, 1, !dbg !6030
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6030
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6030
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6030

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6030

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub58 = sub i64 %19, 1, !dbg !6030
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6030
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6030
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6030

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6030

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub63 = sub i64 %20, 1, !dbg !6030
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6030
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6030
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6030

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6030

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub68 = sub i64 %21, 1, !dbg !6030
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6030
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6030
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6030

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6030

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub73 = sub i64 %22, 1, !dbg !6030
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6030
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6030
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6030

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6030

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub78 = sub i64 %23, 1, !dbg !6030
  %and79 = and i64 %sub78, 562949953421312, !dbg !6030
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6030
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6030

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6030

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub83 = sub i64 %24, 1, !dbg !6030
  %and84 = and i64 %sub83, 281474976710656, !dbg !6030
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6030
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6030

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6030

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub88 = sub i64 %25, 1, !dbg !6030
  %and89 = and i64 %sub88, 140737488355328, !dbg !6030
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6030
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6030

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6030

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub93 = sub i64 %26, 1, !dbg !6030
  %and94 = and i64 %sub93, 70368744177664, !dbg !6030
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6030
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6030

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6030

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub98 = sub i64 %27, 1, !dbg !6030
  %and99 = and i64 %sub98, 35184372088832, !dbg !6030
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6030
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6030

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6030

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub103 = sub i64 %28, 1, !dbg !6030
  %and104 = and i64 %sub103, 17592186044416, !dbg !6030
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6030
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6030

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6030

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub108 = sub i64 %29, 1, !dbg !6030
  %and109 = and i64 %sub108, 8796093022208, !dbg !6030
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6030
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6030

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6030

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub113 = sub i64 %30, 1, !dbg !6030
  %and114 = and i64 %sub113, 4398046511104, !dbg !6030
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6030
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6030

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6030

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub118 = sub i64 %31, 1, !dbg !6030
  %and119 = and i64 %sub118, 2199023255552, !dbg !6030
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6030
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6030

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6030

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub123 = sub i64 %32, 1, !dbg !6030
  %and124 = and i64 %sub123, 1099511627776, !dbg !6030
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6030
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6030

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6030

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub128 = sub i64 %33, 1, !dbg !6030
  %and129 = and i64 %sub128, 549755813888, !dbg !6030
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6030
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6030

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6030

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub133 = sub i64 %34, 1, !dbg !6030
  %and134 = and i64 %sub133, 274877906944, !dbg !6030
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6030
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6030

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6030

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub138 = sub i64 %35, 1, !dbg !6030
  %and139 = and i64 %sub138, 137438953472, !dbg !6030
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6030
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6030

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6030

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub143 = sub i64 %36, 1, !dbg !6030
  %and144 = and i64 %sub143, 68719476736, !dbg !6030
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6030
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6030

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6030

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub148 = sub i64 %37, 1, !dbg !6030
  %and149 = and i64 %sub148, 34359738368, !dbg !6030
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6030
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6030

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6030

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub153 = sub i64 %38, 1, !dbg !6030
  %and154 = and i64 %sub153, 17179869184, !dbg !6030
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6030
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6030

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6030

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub158 = sub i64 %39, 1, !dbg !6030
  %and159 = and i64 %sub158, 8589934592, !dbg !6030
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6030
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6030

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6030

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub163 = sub i64 %40, 1, !dbg !6030
  %and164 = and i64 %sub163, 4294967296, !dbg !6030
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6030
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6030

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6030

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub168 = sub i64 %41, 1, !dbg !6030
  %and169 = and i64 %sub168, 2147483648, !dbg !6030
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6030
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6030

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6030

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub173 = sub i64 %42, 1, !dbg !6030
  %and174 = and i64 %sub173, 1073741824, !dbg !6030
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6030
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6030

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6030

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub178 = sub i64 %43, 1, !dbg !6030
  %and179 = and i64 %sub178, 536870912, !dbg !6030
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6030
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6030

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6030

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub183 = sub i64 %44, 1, !dbg !6030
  %and184 = and i64 %sub183, 268435456, !dbg !6030
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6030
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6030

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6030

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub188 = sub i64 %45, 1, !dbg !6030
  %and189 = and i64 %sub188, 134217728, !dbg !6030
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6030
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6030

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6030

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub193 = sub i64 %46, 1, !dbg !6030
  %and194 = and i64 %sub193, 67108864, !dbg !6030
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6030
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6030

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6030

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub198 = sub i64 %47, 1, !dbg !6030
  %and199 = and i64 %sub198, 33554432, !dbg !6030
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6030
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6030

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6030

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub203 = sub i64 %48, 1, !dbg !6030
  %and204 = and i64 %sub203, 16777216, !dbg !6030
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6030
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6030

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6030

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub208 = sub i64 %49, 1, !dbg !6030
  %and209 = and i64 %sub208, 8388608, !dbg !6030
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6030
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6030

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6030

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub213 = sub i64 %50, 1, !dbg !6030
  %and214 = and i64 %sub213, 4194304, !dbg !6030
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6030
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6030

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6030

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub218 = sub i64 %51, 1, !dbg !6030
  %and219 = and i64 %sub218, 2097152, !dbg !6030
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6030
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6030

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6030

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub223 = sub i64 %52, 1, !dbg !6030
  %and224 = and i64 %sub223, 1048576, !dbg !6030
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6030
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6030

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6030

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub228 = sub i64 %53, 1, !dbg !6030
  %and229 = and i64 %sub228, 524288, !dbg !6030
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6030
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6030

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6030

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub233 = sub i64 %54, 1, !dbg !6030
  %and234 = and i64 %sub233, 262144, !dbg !6030
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6030
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6030

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6030

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub238 = sub i64 %55, 1, !dbg !6030
  %and239 = and i64 %sub238, 131072, !dbg !6030
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6030
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6030

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6030

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub243 = sub i64 %56, 1, !dbg !6030
  %and244 = and i64 %sub243, 65536, !dbg !6030
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6030
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6030

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6030

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub248 = sub i64 %57, 1, !dbg !6030
  %and249 = and i64 %sub248, 32768, !dbg !6030
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6030
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6030

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6030

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub253 = sub i64 %58, 1, !dbg !6030
  %and254 = and i64 %sub253, 16384, !dbg !6030
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6030
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6030

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6030

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub258 = sub i64 %59, 1, !dbg !6030
  %and259 = and i64 %sub258, 8192, !dbg !6030
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6030
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6030

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6030

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub263 = sub i64 %60, 1, !dbg !6030
  %and264 = and i64 %sub263, 4096, !dbg !6030
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6030
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6030

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6030

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub268 = sub i64 %61, 1, !dbg !6030
  %and269 = and i64 %sub268, 2048, !dbg !6030
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6030
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6030

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6030

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub273 = sub i64 %62, 1, !dbg !6030
  %and274 = and i64 %sub273, 1024, !dbg !6030
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6030
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6030

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6030

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub278 = sub i64 %63, 1, !dbg !6030
  %and279 = and i64 %sub278, 512, !dbg !6030
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6030
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6030

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6030

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub283 = sub i64 %64, 1, !dbg !6030
  %and284 = and i64 %sub283, 256, !dbg !6030
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6030
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6030

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6030

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub288 = sub i64 %65, 1, !dbg !6030
  %and289 = and i64 %sub288, 128, !dbg !6030
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6030
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6030

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6030

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub293 = sub i64 %66, 1, !dbg !6030
  %and294 = and i64 %sub293, 64, !dbg !6030
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6030
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6030

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6030

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub298 = sub i64 %67, 1, !dbg !6030
  %and299 = and i64 %sub298, 32, !dbg !6030
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6030
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6030

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6030

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub303 = sub i64 %68, 1, !dbg !6030
  %and304 = and i64 %sub303, 16, !dbg !6030
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6030
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6030

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6030

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub308 = sub i64 %69, 1, !dbg !6030
  %and309 = and i64 %sub308, 8, !dbg !6030
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6030
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6030

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6030

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub313 = sub i64 %70, 1, !dbg !6030
  %and314 = and i64 %sub313, 4, !dbg !6030
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6030
  %71 = zext i1 %tobool315 to i64, !dbg !6030
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6030
  br label %cond.end, !dbg !6030

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6030
  br label %cond.end317, !dbg !6030

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6030
  br label %cond.end319, !dbg !6030

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6030
  br label %cond.end321, !dbg !6030

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6030
  br label %cond.end323, !dbg !6030

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6030
  br label %cond.end325, !dbg !6030

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6030
  br label %cond.end327, !dbg !6030

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6030
  br label %cond.end329, !dbg !6030

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6030
  br label %cond.end331, !dbg !6030

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6030
  br label %cond.end333, !dbg !6030

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6030
  br label %cond.end335, !dbg !6030

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6030
  br label %cond.end337, !dbg !6030

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6030
  br label %cond.end339, !dbg !6030

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6030
  br label %cond.end341, !dbg !6030

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6030
  br label %cond.end343, !dbg !6030

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6030
  br label %cond.end345, !dbg !6030

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6030
  br label %cond.end347, !dbg !6030

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6030
  br label %cond.end349, !dbg !6030

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6030
  br label %cond.end351, !dbg !6030

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6030
  br label %cond.end353, !dbg !6030

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6030
  br label %cond.end355, !dbg !6030

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6030
  br label %cond.end357, !dbg !6030

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6030
  br label %cond.end359, !dbg !6030

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6030
  br label %cond.end361, !dbg !6030

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6030
  br label %cond.end363, !dbg !6030

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6030
  br label %cond.end365, !dbg !6030

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6030
  br label %cond.end367, !dbg !6030

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6030
  br label %cond.end369, !dbg !6030

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6030
  br label %cond.end371, !dbg !6030

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6030
  br label %cond.end373, !dbg !6030

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6030
  br label %cond.end375, !dbg !6030

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6030
  br label %cond.end377, !dbg !6030

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6030
  br label %cond.end379, !dbg !6030

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6030
  br label %cond.end381, !dbg !6030

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6030
  br label %cond.end383, !dbg !6030

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6030
  br label %cond.end385, !dbg !6030

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6030
  br label %cond.end387, !dbg !6030

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6030
  br label %cond.end389, !dbg !6030

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6030
  br label %cond.end391, !dbg !6030

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6030
  br label %cond.end393, !dbg !6030

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6030
  br label %cond.end395, !dbg !6030

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6030
  br label %cond.end397, !dbg !6030

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6030
  br label %cond.end399, !dbg !6030

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6030
  br label %cond.end401, !dbg !6030

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6030
  br label %cond.end403, !dbg !6030

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6030
  br label %cond.end405, !dbg !6030

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6030
  br label %cond.end407, !dbg !6030

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6030
  br label %cond.end409, !dbg !6030

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6030
  br label %cond.end411, !dbg !6030

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6030
  br label %cond.end413, !dbg !6030

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6030
  br label %cond.end415, !dbg !6030

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6030
  br label %cond.end417, !dbg !6030

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6030
  br label %cond.end419, !dbg !6030

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6030
  br label %cond.end421, !dbg !6030

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6030
  br label %cond.end423, !dbg !6030

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6030
  br label %cond.end425, !dbg !6030

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6030
  br label %cond.end427, !dbg !6030

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6030
  br label %cond.end429, !dbg !6030

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6030
  br label %cond.end431, !dbg !6030

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6030
  br label %cond.end433, !dbg !6030

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6030
  br label %cond.end435, !dbg !6030

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6030
  br label %cond.end437, !dbg !6030

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6030
  br label %cond.end440, !dbg !6030

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6030

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6030
  br label %cond.end444, !dbg !6030

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6030
  %sub443 = sub i64 %72, 1, !dbg !6030
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !6030
  br label %cond.end444, !dbg !6030

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6030
  %sub446 = sub i32 %cond445, 12, !dbg !6031
  %add = add i32 %sub446, 1, !dbg !6032
  store i32 %add, i32* %retval, align 4, !dbg !6033
  br label %return, !dbg !6033

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6034
  %dec = add i64 %73, -1, !dbg !6034
  store i64 %dec, i64* %size.addr, align 8, !dbg !6034
  %74 = load i64, i64* %size.addr, align 8, !dbg !6035
  %shr = lshr i64 %74, 12, !dbg !6035
  store i64 %shr, i64* %size.addr, align 8, !dbg !6035
  %75 = load i64, i64* %size.addr, align 8, !dbg !6036
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6013
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6037
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6038
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #9, !dbg !6037, !srcloc !6039
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6037
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6040
  %add.i = add i32 %79, 1, !dbg !6041
  store i32 %add.i, i32* %retval, align 4, !dbg !6042
  br label %return, !dbg !6042

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6043
  ret i32 %80, !dbg !6043
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !6044 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6005, metadata !DIExpression()), !dbg !6048
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6012, metadata !DIExpression()), !dbg !6050
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6051, metadata !DIExpression()), !dbg !6052
  %0 = load i64, i64* %n.addr, align 8, !dbg !6053
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6050
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6054
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6055
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #9, !dbg !6054, !srcloc !6039
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6054
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6056
  %add.i = add i32 %4, 1, !dbg !6057
  %sub = sub i32 %add.i, 1, !dbg !6058
  ret i32 %sub, !dbg !6059
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !6060 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6064, metadata !DIExpression()), !dbg !6065
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6066, metadata !DIExpression()), !dbg !6067
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6068, metadata !DIExpression()), !dbg !6069
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6070, metadata !DIExpression()), !dbg !6071
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6072
  ret i8* %0, !dbg !6073
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: noredzone
declare dso_local i32 @acpi_walk_resources(i8*, i8*, i32 (%struct.acpi_resource*, i8*)*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_pci_link_check_current(%struct.acpi_resource* %resource, i8* %context) #2 !dbg !6074 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca %struct.acpi_resource*, align 8
  %context.addr = alloca i8*, align 8
  %irq = alloca i32*, align 8
  %p = alloca %struct.acpi_resource_irq*, align 8
  %p5 = alloca %struct.acpi_resource_extended_irq*, align 8
  store %struct.acpi_resource* %resource, %struct.acpi_resource** %resource.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %resource.addr, metadata !6078, metadata !DIExpression()), !dbg !6079
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !6080, metadata !DIExpression()), !dbg !6081
  call void @llvm.dbg.declare(metadata i32** %irq, metadata !6082, metadata !DIExpression()), !dbg !6083
  %0 = load i8*, i8** %context.addr, align 8, !dbg !6084
  %1 = bitcast i8* %0 to i32*, !dbg !6084
  store i32* %1, i32** %irq, align 8, !dbg !6083
  %2 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !6085
  %type = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %2, i32 0, i32 0, !dbg !6086
  %3 = load i32, i32* %type, align 1, !dbg !6086
  switch i32 %3, label %sw.default [
    i32 2, label %sw.bb
    i32 7, label %sw.bb
    i32 0, label %sw.bb1
    i32 15, label %sw.bb4
  ], !dbg !6087

sw.bb:                                            ; preds = %entry, %entry
  store i32 0, i32* %retval, align 4, !dbg !6088
  br label %return, !dbg !6088

sw.bb1:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_irq** %p, metadata !6090, metadata !DIExpression()), !dbg !6093
  %4 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !6094
  %data = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %4, i32 0, i32 2, !dbg !6095
  %irq2 = bitcast %union.acpi_resource_data* %data to %struct.acpi_resource_irq*, !dbg !6096
  store %struct.acpi_resource_irq* %irq2, %struct.acpi_resource_irq** %p, align 8, !dbg !6093
  %5 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %p, align 8, !dbg !6097
  %tobool = icmp ne %struct.acpi_resource_irq* %5, null, !dbg !6097
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6099

lor.lhs.false:                                    ; preds = %sw.bb1
  %6 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %p, align 8, !dbg !6100
  %interrupt_count = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %6, i32 0, i32 5, !dbg !6101
  %7 = load i8, i8* %interrupt_count, align 1, !dbg !6101
  %tobool3 = icmp ne i8 %7, 0, !dbg !6100
  br i1 %tobool3, label %if.end, label %if.then, !dbg !6102

if.then:                                          ; preds = %lor.lhs.false, %sw.bb1
  store i32 0, i32* %retval, align 4, !dbg !6103
  br label %return, !dbg !6103

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %p, align 8, !dbg !6105
  %interrupts = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %8, i32 0, i32 6, !dbg !6106
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %interrupts, i64 0, i64 0, !dbg !6105
  %9 = load i8, i8* %arrayidx, align 1, !dbg !6105
  %conv = zext i8 %9 to i32, !dbg !6105
  %10 = load i32*, i32** %irq, align 8, !dbg !6107
  store i32 %conv, i32* %10, align 4, !dbg !6108
  br label %sw.epilog, !dbg !6109

sw.bb4:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_extended_irq** %p5, metadata !6110, metadata !DIExpression()), !dbg !6113
  %11 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !6114
  %data6 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %11, i32 0, i32 2, !dbg !6115
  %extended_irq = bitcast %union.acpi_resource_data* %data6 to %struct.acpi_resource_extended_irq*, !dbg !6116
  store %struct.acpi_resource_extended_irq* %extended_irq, %struct.acpi_resource_extended_irq** %p5, align 8, !dbg !6113
  %12 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %p5, align 8, !dbg !6117
  %tobool7 = icmp ne %struct.acpi_resource_extended_irq* %12, null, !dbg !6117
  br i1 %tobool7, label %lor.lhs.false8, label %if.then11, !dbg !6119

lor.lhs.false8:                                   ; preds = %sw.bb4
  %13 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %p5, align 8, !dbg !6120
  %interrupt_count9 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %13, i32 0, i32 5, !dbg !6121
  %14 = load i8, i8* %interrupt_count9, align 1, !dbg !6121
  %tobool10 = icmp ne i8 %14, 0, !dbg !6120
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !6122

if.then11:                                        ; preds = %lor.lhs.false8, %sw.bb4
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0)) #12, !dbg !6123
  store i32 0, i32* %retval, align 4, !dbg !6125
  br label %return, !dbg !6125

if.end12:                                         ; preds = %lor.lhs.false8
  %15 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %p5, align 8, !dbg !6126
  %interrupts13 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %15, i32 0, i32 7, !dbg !6127
  %arrayidx14 = getelementptr [1 x i32], [1 x i32]* %interrupts13, i64 0, i64 0, !dbg !6126
  %16 = load i32, i32* %arrayidx14, align 1, !dbg !6126
  %17 = load i32*, i32** %irq, align 8, !dbg !6128
  store i32 %16, i32* %17, align 4, !dbg !6129
  br label %sw.epilog, !dbg !6130

sw.default:                                       ; preds = %entry
  %18 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !6131
  %type15 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %18, i32 0, i32 0, !dbg !6132
  %19 = load i32, i32* %type15, align 1, !dbg !6132
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0), i32 %19) #12, !dbg !6133
  store i32 0, i32* %retval, align 4, !dbg !6134
  br label %return, !dbg !6134

sw.epilog:                                        ; preds = %if.end12, %if.end
  store i32 16387, i32* %retval, align 4, !dbg !6135
  br label %return, !dbg !6135

return:                                           ; preds = %sw.epilog, %sw.default, %if.then11, %if.then, %sw.bb
  %20 = load i32, i32* %retval, align 4, !dbg !6136
  ret i32 %20, !dbg !6136
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_irq_pci_sharing_penalty(i32 %irq) #2 !dbg !6137 {
entry:
  %irq.addr = alloca i32, align 4
  %link = alloca %struct.acpi_pci_link*, align 8
  %penalty = alloca i32, align 4
  %i = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_pci_link*, align 8
  %__mptr20 = alloca i8*, align 8
  %tmp24 = alloca %struct.acpi_pci_link*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !6138, metadata !DIExpression()), !dbg !6139
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_link** %link, metadata !6140, metadata !DIExpression()), !dbg !6141
  call void @llvm.dbg.declare(metadata i32* %penalty, metadata !6142, metadata !DIExpression()), !dbg !6143
  store i32 0, i32* %penalty, align 4, !dbg !6143
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6144, metadata !DIExpression()), !dbg !6145
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6146, metadata !DIExpression()), !dbg !6149
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @acpi_link_list, i32 0, i32 0), align 8, !dbg !6149
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !6149
  store i8* %1, i8** %__mptr, align 8, !dbg !6149
  br label %do.body, !dbg !6149

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6150

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6149
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !6149
  %3 = bitcast i8* %add.ptr to %struct.acpi_pci_link*, !dbg !6149
  store %struct.acpi_pci_link* %3, %struct.acpi_pci_link** %tmp, align 8, !dbg !6150
  %4 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %tmp, align 8, !dbg !6149
  store %struct.acpi_pci_link* %4, %struct.acpi_pci_link** %link, align 8, !dbg !6152
  br label %for.cond, !dbg !6152

for.cond:                                         ; preds = %do.end23, %do.end
  %5 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6153
  %list = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %5, i32 0, i32 0, !dbg !6153
  %cmp = icmp eq %struct.list_head* %list, @acpi_link_list, !dbg !6153
  %lnot = xor i1 %cmp, true, !dbg !6153
  br i1 %lnot, label %for.body, label %for.end26, !dbg !6152

for.body:                                         ; preds = %for.cond
  %6 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6155
  %irq1 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %6, i32 0, i32 2, !dbg !6158
  %active = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq1, i32 0, i32 0, !dbg !6159
  %7 = load i32, i32* %active, align 8, !dbg !6159
  %tobool = icmp ne i32 %7, 0, !dbg !6155
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6160

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6161
  %irq2 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %8, i32 0, i32 2, !dbg !6162
  %active3 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq2, i32 0, i32 0, !dbg !6163
  %9 = load i32, i32* %active3, align 8, !dbg !6163
  %10 = load i32, i32* %irq.addr, align 4, !dbg !6164
  %cmp4 = icmp eq i32 %9, %10, !dbg !6165
  br i1 %cmp4, label %if.then, label %if.end, !dbg !6166

if.then:                                          ; preds = %land.lhs.true
  %11 = load i32, i32* %penalty, align 4, !dbg !6167
  %add = add i32 %11, 4096, !dbg !6167
  store i32 %add, i32* %penalty, align 4, !dbg !6167
  br label %if.end, !dbg !6168

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  store i32 0, i32* %i, align 4, !dbg !6169
  br label %for.cond5, !dbg !6171

for.cond5:                                        ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i, align 4, !dbg !6172
  %13 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6174
  %irq6 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %13, i32 0, i32 2, !dbg !6175
  %possible_count = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq6, i32 0, i32 4, !dbg !6176
  %14 = load i8, i8* %possible_count, align 1, !dbg !6176
  %conv = zext i8 %14 to i32, !dbg !6174
  %cmp7 = icmp slt i32 %12, %conv, !dbg !6177
  br i1 %cmp7, label %for.body9, label %for.end, !dbg !6178

for.body9:                                        ; preds = %for.cond5
  %15 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6179
  %irq10 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %15, i32 0, i32 2, !dbg !6181
  %possible = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq10, i32 0, i32 5, !dbg !6182
  %16 = load i32, i32* %i, align 4, !dbg !6183
  %idxprom = sext i32 %16 to i64, !dbg !6179
  %arrayidx = getelementptr [16 x i32], [16 x i32]* %possible, i64 0, i64 %idxprom, !dbg !6179
  %17 = load i32, i32* %arrayidx, align 4, !dbg !6179
  %18 = load i32, i32* %irq.addr, align 4, !dbg !6184
  %cmp11 = icmp eq i32 %17, %18, !dbg !6185
  br i1 %cmp11, label %if.then13, label %if.end18, !dbg !6186

if.then13:                                        ; preds = %for.body9
  %19 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6187
  %irq14 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %19, i32 0, i32 2, !dbg !6188
  %possible_count15 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq14, i32 0, i32 4, !dbg !6189
  %20 = load i8, i8* %possible_count15, align 1, !dbg !6189
  %conv16 = zext i8 %20 to i32, !dbg !6187
  %div = sdiv i32 256, %conv16, !dbg !6190
  %21 = load i32, i32* %penalty, align 4, !dbg !6191
  %add17 = add i32 %21, %div, !dbg !6191
  store i32 %add17, i32* %penalty, align 4, !dbg !6191
  br label %if.end18, !dbg !6192

if.end18:                                         ; preds = %if.then13, %for.body9
  br label %for.inc, !dbg !6184

for.inc:                                          ; preds = %if.end18
  %22 = load i32, i32* %i, align 4, !dbg !6193
  %inc = add i32 %22, 1, !dbg !6193
  store i32 %inc, i32* %i, align 4, !dbg !6193
  br label %for.cond5, !dbg !6194, !llvm.loop !6195

for.end:                                          ; preds = %for.cond5
  br label %for.inc19, !dbg !6197

for.inc19:                                        ; preds = %for.end
  call void @llvm.dbg.declare(metadata i8** %__mptr20, metadata !6198, metadata !DIExpression()), !dbg !6200
  %23 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6200
  %list21 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %23, i32 0, i32 0, !dbg !6200
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list21, i32 0, i32 0, !dbg !6200
  %24 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6200
  %25 = bitcast %struct.list_head* %24 to i8*, !dbg !6200
  store i8* %25, i8** %__mptr20, align 8, !dbg !6200
  br label %do.body22, !dbg !6200

do.body22:                                        ; preds = %for.inc19
  br label %do.end23, !dbg !6201

do.end23:                                         ; preds = %do.body22
  %26 = load i8*, i8** %__mptr20, align 8, !dbg !6200
  %add.ptr25 = getelementptr i8, i8* %26, i64 0, !dbg !6200
  %27 = bitcast i8* %add.ptr25 to %struct.acpi_pci_link*, !dbg !6200
  store %struct.acpi_pci_link* %27, %struct.acpi_pci_link** %tmp24, align 8, !dbg !6201
  %28 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %tmp24, align 8, !dbg !6200
  store %struct.acpi_pci_link* %28, %struct.acpi_pci_link** %link, align 8, !dbg !6153
  br label %for.cond, !dbg !6153, !llvm.loop !6203

for.end26:                                        ; preds = %for.cond
  %29 = load i32, i32* %penalty, align 4, !dbg !6205
  ret i32 %29, !dbg !6206
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_irq_penalty_update(i8* %str, i32 %used) #0 section ".init.text" !dbg !6207 {
entry:
  %str.addr = alloca i8*, align 8
  %used.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %irq = alloca i32, align 4
  %new_penalty = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !6210, metadata !DIExpression()), !dbg !6211
  store i32 %used, i32* %used.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %used.addr, metadata !6212, metadata !DIExpression()), !dbg !6213
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6214, metadata !DIExpression()), !dbg !6215
  store i32 0, i32* %i, align 4, !dbg !6216
  br label %for.cond, !dbg !6218

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !6219
  %cmp = icmp slt i32 %0, 16, !dbg !6221
  br i1 %cmp, label %for.body, label %for.end, !dbg !6222

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !6223, metadata !DIExpression()), !dbg !6225
  call void @llvm.dbg.declare(metadata i32* %irq, metadata !6226, metadata !DIExpression()), !dbg !6227
  call void @llvm.dbg.declare(metadata i32* %new_penalty, metadata !6228, metadata !DIExpression()), !dbg !6229
  %call = call i32 @get_option(i8** %str.addr, i32* %irq) #11, !dbg !6230
  store i32 %call, i32* %retval1, align 4, !dbg !6231
  %1 = load i32, i32* %retval1, align 4, !dbg !6232
  %tobool = icmp ne i32 %1, 0, !dbg !6232
  br i1 %tobool, label %if.end, label %if.then, !dbg !6234

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !6235

if.end:                                           ; preds = %for.body
  %2 = load i32, i32* %irq, align 4, !dbg !6236
  %cmp2 = icmp slt i32 %2, 0, !dbg !6238
  br i1 %cmp2, label %if.then4, label %lor.lhs.false, !dbg !6239

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, i32* %irq, align 4, !dbg !6240
  %cmp3 = icmp sge i32 %3, 16, !dbg !6241
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6242

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  br label %for.inc, !dbg !6243

if.end5:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* %used.addr, align 4, !dbg !6244
  %tobool6 = icmp ne i32 %4, 0, !dbg !6244
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !6246

if.then7:                                         ; preds = %if.end5
  %5 = load i32, i32* %irq, align 4, !dbg !6247
  %idxprom = sext i32 %5 to i64, !dbg !6248
  %arrayidx = getelementptr [16 x i32], [16 x i32]* @acpi_isa_irq_penalty, i64 0, i64 %idxprom, !dbg !6248
  %6 = load i32, i32* %arrayidx, align 4, !dbg !6248
  %add = add i32 %6, 1048576, !dbg !6249
  store i32 %add, i32* %new_penalty, align 4, !dbg !6250
  br label %if.end8, !dbg !6251

if.else:                                          ; preds = %if.end5
  store i32 0, i32* %new_penalty, align 4, !dbg !6252
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  %7 = load i32, i32* %new_penalty, align 4, !dbg !6253
  %8 = load i32, i32* %irq, align 4, !dbg !6254
  %idxprom9 = sext i32 %8 to i64, !dbg !6255
  %arrayidx10 = getelementptr [16 x i32], [16 x i32]* @acpi_isa_irq_penalty, i64 0, i64 %idxprom9, !dbg !6255
  store i32 %7, i32* %arrayidx10, align 4, !dbg !6256
  %9 = load i32, i32* %retval1, align 4, !dbg !6257
  %cmp11 = icmp ne i32 %9, 2, !dbg !6259
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !6260

if.then12:                                        ; preds = %if.end8
  br label %for.end, !dbg !6261

if.end13:                                         ; preds = %if.end8
  br label %for.inc, !dbg !6262

for.inc:                                          ; preds = %if.end13, %if.then4
  %10 = load i32, i32* %i, align 4, !dbg !6263
  %inc = add i32 %10, 1, !dbg !6263
  store i32 %inc, i32* %i, align 4, !dbg !6263
  br label %for.cond, !dbg !6264, !llvm.loop !6265

for.end:                                          ; preds = %if.then12, %if.then, %for.cond
  ret i32 1, !dbg !6267
}

; Function Attrs: noredzone
declare dso_local i32 @get_option(i8**, i32*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @irqrouter_resume() #2 !dbg !6268 {
entry:
  %link = alloca %struct.acpi_pci_link*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_pci_link*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp5 = alloca %struct.acpi_pci_link*, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_link** %link, metadata !6269, metadata !DIExpression()), !dbg !6270
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6271, metadata !DIExpression()), !dbg !6274
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @acpi_link_list, i32 0, i32 0), align 8, !dbg !6274
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !6274
  store i8* %1, i8** %__mptr, align 8, !dbg !6274
  br label %do.body, !dbg !6274

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6275

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6274
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !6274
  %3 = bitcast i8* %add.ptr to %struct.acpi_pci_link*, !dbg !6274
  store %struct.acpi_pci_link* %3, %struct.acpi_pci_link** %tmp, align 8, !dbg !6275
  %4 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %tmp, align 8, !dbg !6274
  store %struct.acpi_pci_link* %4, %struct.acpi_pci_link** %link, align 8, !dbg !6277
  br label %for.cond, !dbg !6277

for.cond:                                         ; preds = %do.end4, %do.end
  %5 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6278
  %list = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %5, i32 0, i32 0, !dbg !6278
  %cmp = icmp eq %struct.list_head* %list, @acpi_link_list, !dbg !6278
  %lnot = xor i1 %cmp, true, !dbg !6278
  br i1 %lnot, label %for.body, label %for.end, !dbg !6277

for.body:                                         ; preds = %for.cond
  %6 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6280
  %call = call i32 @acpi_pci_link_resume(%struct.acpi_pci_link* %6) #11, !dbg !6282
  br label %for.inc, !dbg !6283

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !6284, metadata !DIExpression()), !dbg !6286
  %7 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6286
  %list2 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %7, i32 0, i32 0, !dbg !6286
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list2, i32 0, i32 0, !dbg !6286
  %8 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6286
  %9 = bitcast %struct.list_head* %8 to i8*, !dbg !6286
  store i8* %9, i8** %__mptr1, align 8, !dbg !6286
  br label %do.body3, !dbg !6286

do.body3:                                         ; preds = %for.inc
  br label %do.end4, !dbg !6287

do.end4:                                          ; preds = %do.body3
  %10 = load i8*, i8** %__mptr1, align 8, !dbg !6286
  %add.ptr6 = getelementptr i8, i8* %10, i64 0, !dbg !6286
  %11 = bitcast i8* %add.ptr6 to %struct.acpi_pci_link*, !dbg !6286
  store %struct.acpi_pci_link* %11, %struct.acpi_pci_link** %tmp5, align 8, !dbg !6287
  %12 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %tmp5, align 8, !dbg !6286
  store %struct.acpi_pci_link* %12, %struct.acpi_pci_link** %link, align 8, !dbg !6278
  br label %for.cond, !dbg !6278, !llvm.loop !6289

for.end:                                          ; preds = %for.cond
  ret void, !dbg !6291
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_pci_link_resume(%struct.acpi_pci_link* %link) #2 !dbg !6292 {
entry:
  %retval = alloca i32, align 4
  %link.addr = alloca %struct.acpi_pci_link*, align 8
  store %struct.acpi_pci_link* %link, %struct.acpi_pci_link** %link.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_link** %link.addr, metadata !6293, metadata !DIExpression()), !dbg !6294
  %0 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !6295
  %refcnt = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %0, i32 0, i32 3, !dbg !6297
  %1 = load i32, i32* %refcnt, align 4, !dbg !6297
  %tobool = icmp ne i32 %1, 0, !dbg !6295
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6298

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !6299
  %irq = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %2, i32 0, i32 2, !dbg !6300
  %active = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq, i32 0, i32 0, !dbg !6301
  %3 = load i32, i32* %active, align 8, !dbg !6301
  %tobool1 = icmp ne i32 %3, 0, !dbg !6299
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !6302

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !6303
  %irq3 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %4, i32 0, i32 2, !dbg !6304
  %initialized = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq3, i32 0, i32 6, !dbg !6305
  %bf.load = load i8, i8* %initialized, align 8, !dbg !6305
  %bf.clear = and i8 %bf.load, 1, !dbg !6305
  %conv = zext i8 %bf.clear to i32, !dbg !6303
  %tobool4 = icmp ne i32 %conv, 0, !dbg !6303
  br i1 %tobool4, label %if.then, label %if.end, !dbg !6306

if.then:                                          ; preds = %land.lhs.true2
  %5 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !6307
  %6 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !6308
  %irq5 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %6, i32 0, i32 2, !dbg !6309
  %active6 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq5, i32 0, i32 0, !dbg !6310
  %7 = load i32, i32* %active6, align 8, !dbg !6310
  %call = call i32 @acpi_pci_link_set(%struct.acpi_pci_link* %5, i32 %7) #11, !dbg !6311
  store i32 %call, i32* %retval, align 4, !dbg !6312
  br label %return, !dbg !6312

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  store i32 0, i32* %retval, align 4, !dbg !6313
  br label %return, !dbg !6313

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !6314
  ret i32 %8, !dbg !6314
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_pci_link_add(%struct.acpi_device* %device, %struct.acpi_device_id* %not_used) #2 !dbg !6315 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %not_used.addr = alloca %struct.acpi_device_id*, align 8
  %result = alloca i32, align 4
  %link = alloca %struct.acpi_pci_link*, align 8
  %i = alloca i32, align 4
  %found = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !6316, metadata !DIExpression()), !dbg !6317
  store %struct.acpi_device_id* %not_used, %struct.acpi_device_id** %not_used.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device_id** %not_used.addr, metadata !6318, metadata !DIExpression()), !dbg !6319
  call void @llvm.dbg.declare(metadata i32* %result, metadata !6320, metadata !DIExpression()), !dbg !6321
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_link** %link, metadata !6322, metadata !DIExpression()), !dbg !6323
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6324, metadata !DIExpression()), !dbg !6325
  call void @llvm.dbg.declare(metadata i32* %found, metadata !6326, metadata !DIExpression()), !dbg !6327
  store i32 0, i32* %found, align 4, !dbg !6327
  %call = call i8* @kzalloc(i64 104, i32 3264) #11, !dbg !6328
  %0 = bitcast i8* %call to %struct.acpi_pci_link*, !dbg !6328
  store %struct.acpi_pci_link* %0, %struct.acpi_pci_link** %link, align 8, !dbg !6329
  %1 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6330
  %tobool = icmp ne %struct.acpi_pci_link* %1, null, !dbg !6330
  br i1 %tobool, label %if.end, label %if.then, !dbg !6332

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !6333
  br label %return, !dbg !6333

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !6334
  %3 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6335
  %device1 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %3, i32 0, i32 1, !dbg !6336
  store %struct.acpi_device* %2, %struct.acpi_device** %device1, align 8, !dbg !6337
  %4 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !6338
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 10, !dbg !6338
  %device_name = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 5, !dbg !6338
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %device_name, i64 0, i64 0, !dbg !6338
  %call2 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0)) #11, !dbg !6339
  %5 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !6340
  %pnp3 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 10, !dbg !6340
  %device_class = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp3, i32 0, i32 6, !dbg !6340
  %arraydecay4 = getelementptr inbounds [20 x i8], [20 x i8]* %device_class, i64 0, i64 0, !dbg !6340
  %call5 = call i8* @strcpy(i8* %arraydecay4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0)) #11, !dbg !6341
  %6 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6342
  %7 = bitcast %struct.acpi_pci_link* %6 to i8*, !dbg !6342
  %8 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !6343
  %driver_data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 20, !dbg !6344
  store i8* %7, i8** %driver_data, align 8, !dbg !6345
  call void @mutex_lock(%struct.mutex* @acpi_link_lock) #11, !dbg !6346
  %9 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6347
  %call6 = call i32 @acpi_pci_link_get_possible(%struct.acpi_pci_link* %9) #11, !dbg !6348
  store i32 %call6, i32* %result, align 4, !dbg !6349
  %10 = load i32, i32* %result, align 4, !dbg !6350
  %tobool7 = icmp ne i32 %10, 0, !dbg !6350
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !6352

if.then8:                                         ; preds = %if.end
  br label %end, !dbg !6353

if.end9:                                          ; preds = %if.end
  %11 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6354
  %call10 = call i32 @acpi_pci_link_get_current(%struct.acpi_pci_link* %11) #11, !dbg !6355
  %12 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !6356
  %pnp11 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 10, !dbg !6356
  %device_name12 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp11, i32 0, i32 5, !dbg !6356
  %arraydecay13 = getelementptr inbounds [40 x i8], [40 x i8]* %device_name12, i64 0, i64 0, !dbg !6356
  %13 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !6357
  %pnp14 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 10, !dbg !6357
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp14, i32 0, i32 0, !dbg !6357
  %arraydecay15 = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id, i64 0, i64 0, !dbg !6357
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i8* %arraydecay13, i8* %arraydecay15) #12, !dbg !6358
  store i32 0, i32* %i, align 4, !dbg !6359
  br label %for.cond, !dbg !6361

for.cond:                                         ; preds = %for.inc, %if.end9
  %14 = load i32, i32* %i, align 4, !dbg !6362
  %15 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6364
  %irq = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %15, i32 0, i32 2, !dbg !6365
  %possible_count = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq, i32 0, i32 4, !dbg !6366
  %16 = load i8, i8* %possible_count, align 1, !dbg !6366
  %conv = zext i8 %16 to i32, !dbg !6364
  %cmp = icmp slt i32 %14, %conv, !dbg !6367
  br i1 %cmp, label %for.body, label %for.end, !dbg !6368

for.body:                                         ; preds = %for.cond
  %17 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6369
  %irq18 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %17, i32 0, i32 2, !dbg !6372
  %active = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq18, i32 0, i32 0, !dbg !6373
  %18 = load i32, i32* %active, align 8, !dbg !6373
  %19 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6374
  %irq19 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %19, i32 0, i32 2, !dbg !6375
  %possible = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq19, i32 0, i32 5, !dbg !6376
  %20 = load i32, i32* %i, align 4, !dbg !6377
  %idxprom = sext i32 %20 to i64, !dbg !6374
  %arrayidx = getelementptr [16 x i32], [16 x i32]* %possible, i64 0, i64 %idxprom, !dbg !6374
  %21 = load i32, i32* %arrayidx, align 4, !dbg !6374
  %cmp20 = icmp eq i32 %18, %21, !dbg !6378
  br i1 %cmp20, label %if.then22, label %if.else, !dbg !6379

if.then22:                                        ; preds = %for.body
  %22 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6380
  %irq23 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %22, i32 0, i32 2, !dbg !6382
  %possible24 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq23, i32 0, i32 5, !dbg !6383
  %23 = load i32, i32* %i, align 4, !dbg !6384
  %idxprom25 = sext i32 %23 to i64, !dbg !6380
  %arrayidx26 = getelementptr [16 x i32], [16 x i32]* %possible24, i64 0, i64 %idxprom25, !dbg !6380
  %24 = load i32, i32* %arrayidx26, align 4, !dbg !6380
  %call27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32 %24) #12, !dbg !6385
  store i32 1, i32* %found, align 4, !dbg !6386
  br label %if.end33, !dbg !6387

if.else:                                          ; preds = %for.body
  %25 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6388
  %irq28 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %25, i32 0, i32 2, !dbg !6389
  %possible29 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq28, i32 0, i32 5, !dbg !6390
  %26 = load i32, i32* %i, align 4, !dbg !6391
  %idxprom30 = sext i32 %26 to i64, !dbg !6388
  %arrayidx31 = getelementptr [16 x i32], [16 x i32]* %possible29, i64 0, i64 %idxprom30, !dbg !6388
  %27 = load i32, i32* %arrayidx31, align 4, !dbg !6388
  %call32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32 %27) #12, !dbg !6392
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then22
  br label %for.inc, !dbg !6393

for.inc:                                          ; preds = %if.end33
  %28 = load i32, i32* %i, align 4, !dbg !6394
  %inc = add i32 %28, 1, !dbg !6394
  store i32 %inc, i32* %i, align 4, !dbg !6394
  br label %for.cond, !dbg !6395, !llvm.loop !6396

for.end:                                          ; preds = %for.cond
  %call34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !6398
  %29 = load i32, i32* %found, align 4, !dbg !6399
  %tobool35 = icmp ne i32 %29, 0, !dbg !6399
  br i1 %tobool35, label %if.end40, label %if.then36, !dbg !6401

if.then36:                                        ; preds = %for.end
  %30 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6402
  %irq37 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %30, i32 0, i32 2, !dbg !6403
  %active38 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq37, i32 0, i32 0, !dbg !6404
  %31 = load i32, i32* %active38, align 8, !dbg !6404
  %call39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32 %31) #12, !dbg !6405
  br label %if.end40, !dbg !6405

if.end40:                                         ; preds = %if.then36, %for.end
  %32 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6406
  %device41 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %32, i32 0, i32 1, !dbg !6408
  %33 = load %struct.acpi_device*, %struct.acpi_device** %device41, align 8, !dbg !6408
  %status = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %33, i32 0, i32 8, !dbg !6409
  %34 = bitcast %struct.acpi_device_status* %status to i32*, !dbg !6410
  %bf.load = load i32, i32* %34, align 8, !dbg !6410
  %bf.lshr = lshr i32 %bf.load, 1, !dbg !6410
  %bf.clear = and i32 %bf.lshr, 1, !dbg !6410
  %tobool42 = icmp ne i32 %bf.clear, 0, !dbg !6406
  br i1 %tobool42, label %if.end45, label %if.then43, !dbg !6411

if.then43:                                        ; preds = %if.end40
  %call44 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0)) #12, !dbg !6412
  br label %if.end45, !dbg !6412

if.end45:                                         ; preds = %if.then43, %if.end40
  %call46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0)) #12, !dbg !6413
  %35 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6414
  %list = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %35, i32 0, i32 0, !dbg !6415
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* @acpi_link_list) #11, !dbg !6416
  br label %end, !dbg !6416

end:                                              ; preds = %if.end45, %if.then8
  call void @llvm.dbg.label(metadata !6417), !dbg !6418
  %36 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !6419
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %36, i32 0, i32 1, !dbg !6420
  %37 = load i8*, i8** %handle, align 8, !dbg !6420
  %call47 = call i32 @acpi_evaluate_object(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* null) #11, !dbg !6421
  call void @mutex_unlock(%struct.mutex* @acpi_link_lock) #11, !dbg !6422
  %38 = load i32, i32* %result, align 4, !dbg !6423
  %tobool48 = icmp ne i32 %38, 0, !dbg !6423
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !6425

if.then49:                                        ; preds = %end
  %39 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6426
  %40 = bitcast %struct.acpi_pci_link* %39 to i8*, !dbg !6426
  call void @kfree(i8* %40) #11, !dbg !6427
  br label %if.end50, !dbg !6427

if.end50:                                         ; preds = %if.then49, %end
  %41 = load i32, i32* %result, align 4, !dbg !6428
  %cmp51 = icmp slt i32 %41, 0, !dbg !6429
  br i1 %cmp51, label %cond.true, label %cond.false, !dbg !6428

cond.true:                                        ; preds = %if.end50
  %42 = load i32, i32* %result, align 4, !dbg !6430
  br label %cond.end, !dbg !6428

cond.false:                                       ; preds = %if.end50
  br label %cond.end, !dbg !6428

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %42, %cond.true ], [ 1, %cond.false ], !dbg !6428
  store i32 %cond, i32* %retval, align 4, !dbg !6431
  br label %return, !dbg !6431

return:                                           ; preds = %cond.end, %if.then
  %43 = load i32, i32* %retval, align 4, !dbg !6432
  ret i32 %43, !dbg !6432
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_pci_link_remove(%struct.acpi_device* %device) #2 !dbg !6433 {
entry:
  %device.addr = alloca %struct.acpi_device*, align 8
  %link = alloca %struct.acpi_pci_link*, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !6434, metadata !DIExpression()), !dbg !6435
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_link** %link, metadata !6436, metadata !DIExpression()), !dbg !6437
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !6438
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %0) #11, !dbg !6439
  %1 = bitcast i8* %call to %struct.acpi_pci_link*, !dbg !6439
  store %struct.acpi_pci_link* %1, %struct.acpi_pci_link** %link, align 8, !dbg !6440
  call void @mutex_lock(%struct.mutex* @acpi_link_lock) #11, !dbg !6441
  %2 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6442
  %list = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %2, i32 0, i32 0, !dbg !6443
  call void @list_del(%struct.list_head* %list) #11, !dbg !6444
  call void @mutex_unlock(%struct.mutex* @acpi_link_lock) #11, !dbg !6445
  %3 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6446
  %4 = bitcast %struct.acpi_pci_link* %3 to i8*, !dbg !6446
  call void @kfree(i8* %4) #11, !dbg !6447
  ret void, !dbg !6448
}

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_pci_link_get_possible(%struct.acpi_pci_link* %link) #2 !dbg !6449 {
entry:
  %retval = alloca i32, align 4
  %link.addr = alloca %struct.acpi_pci_link*, align 8
  %status = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.acpi_pci_link* %link, %struct.acpi_pci_link** %link.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_link** %link.addr, metadata !6450, metadata !DIExpression()), !dbg !6451
  call void @llvm.dbg.declare(metadata i32* %status, metadata !6452, metadata !DIExpression()), !dbg !6453
  %0 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !6454
  %device = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %0, i32 0, i32 1, !dbg !6455
  %1 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !6455
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 1, !dbg !6456
  %2 = load i8*, i8** %handle, align 8, !dbg !6456
  %3 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link.addr, align 8, !dbg !6457
  %4 = bitcast %struct.acpi_pci_link* %3 to i8*, !dbg !6457
  %call = call i32 @acpi_walk_resources(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i32 (%struct.acpi_resource*, i8*)* @acpi_pci_link_check_possible, i8* %4) #11, !dbg !6458
  store i32 %call, i32* %status, align 4, !dbg !6459
  %5 = load i32, i32* %status, align 4, !dbg !6460
  %tobool = icmp ne i32 %5, 0, !dbg !6460
  br i1 %tobool, label %if.then, label %if.end, !dbg !6462

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !6463
  %6 = load i32, i32* %tmp, align 4, !dbg !6467
  store i32 0, i32* %retval, align 4, !dbg !6468
  br label %return, !dbg !6468

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6469
  br label %return, !dbg !6469

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !6470
  ret i32 %7, !dbg !6470
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #2 !dbg !6471 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6475, metadata !DIExpression()), !dbg !6476
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !6477, metadata !DIExpression()), !dbg !6478
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6479
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6480
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6481
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6481
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6482
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #11, !dbg !6483
  ret void, !dbg !6484
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_pci_link_check_possible(%struct.acpi_resource* %resource, i8* %context) #2 !dbg !6485 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca %struct.acpi_resource*, align 8
  %context.addr = alloca i8*, align 8
  %link = alloca %struct.acpi_pci_link*, align 8
  %i = alloca i32, align 4
  %p = alloca %struct.acpi_resource_irq*, align 8
  %p29 = alloca %struct.acpi_resource_extended_irq*, align 8
  store %struct.acpi_resource* %resource, %struct.acpi_resource** %resource.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %resource.addr, metadata !6486, metadata !DIExpression()), !dbg !6487
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !6488, metadata !DIExpression()), !dbg !6489
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_link** %link, metadata !6490, metadata !DIExpression()), !dbg !6491
  %0 = load i8*, i8** %context.addr, align 8, !dbg !6492
  %1 = bitcast i8* %0 to %struct.acpi_pci_link*, !dbg !6492
  store %struct.acpi_pci_link* %1, %struct.acpi_pci_link** %link, align 8, !dbg !6491
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6493, metadata !DIExpression()), !dbg !6494
  %2 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !6495
  %type = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %2, i32 0, i32 0, !dbg !6496
  %3 = load i32, i32* %type, align 1, !dbg !6496
  switch i32 %3, label %sw.default [
    i32 2, label %sw.bb
    i32 7, label %sw.bb
    i32 0, label %sw.bb1
    i32 15, label %sw.bb28
  ], !dbg !6497

sw.bb:                                            ; preds = %entry, %entry
  store i32 0, i32* %retval, align 4, !dbg !6498
  br label %return, !dbg !6498

sw.bb1:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_irq** %p, metadata !6500, metadata !DIExpression()), !dbg !6502
  %4 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !6503
  %data = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %4, i32 0, i32 2, !dbg !6504
  %irq = bitcast %union.acpi_resource_data* %data to %struct.acpi_resource_irq*, !dbg !6505
  store %struct.acpi_resource_irq* %irq, %struct.acpi_resource_irq** %p, align 8, !dbg !6502
  %5 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %p, align 8, !dbg !6506
  %tobool = icmp ne %struct.acpi_resource_irq* %5, null, !dbg !6506
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6508

lor.lhs.false:                                    ; preds = %sw.bb1
  %6 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %p, align 8, !dbg !6509
  %interrupt_count = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %6, i32 0, i32 5, !dbg !6510
  %7 = load i8, i8* %interrupt_count, align 1, !dbg !6510
  %tobool2 = icmp ne i8 %7, 0, !dbg !6509
  br i1 %tobool2, label %if.end, label %if.then, !dbg !6511

if.then:                                          ; preds = %lor.lhs.false, %sw.bb1
  store i32 0, i32* %retval, align 4, !dbg !6512
  br label %return, !dbg !6512

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !dbg !6514
  br label %for.cond, !dbg !6516

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !dbg !6517
  %9 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %p, align 8, !dbg !6519
  %interrupt_count3 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %9, i32 0, i32 5, !dbg !6520
  %10 = load i8, i8* %interrupt_count3, align 1, !dbg !6520
  %conv = zext i8 %10 to i32, !dbg !6519
  %cmp = icmp ult i32 %8, %conv, !dbg !6521
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6522

land.rhs:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !dbg !6523
  %cmp5 = icmp ult i32 %11, 16, !dbg !6524
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ], !dbg !6525
  br i1 %12, label %for.body, label %for.end, !dbg !6526

for.body:                                         ; preds = %land.end
  %13 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %p, align 8, !dbg !6527
  %interrupts = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %13, i32 0, i32 6, !dbg !6530
  %14 = load i32, i32* %i, align 4, !dbg !6531
  %idxprom = zext i32 %14 to i64, !dbg !6527
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %interrupts, i64 0, i64 %idxprom, !dbg !6527
  %15 = load i8, i8* %arrayidx, align 1, !dbg !6527
  %tobool7 = icmp ne i8 %15, 0, !dbg !6527
  br i1 %tobool7, label %if.end13, label %if.then8, !dbg !6532

if.then8:                                         ; preds = %for.body
  %16 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %p, align 8, !dbg !6533
  %interrupts9 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %16, i32 0, i32 6, !dbg !6535
  %17 = load i32, i32* %i, align 4, !dbg !6536
  %idxprom10 = zext i32 %17 to i64, !dbg !6533
  %arrayidx11 = getelementptr [1 x i8], [1 x i8]* %interrupts9, i64 0, i64 %idxprom10, !dbg !6533
  %18 = load i8, i8* %arrayidx11, align 1, !dbg !6533
  %conv12 = zext i8 %18 to i32, !dbg !6533
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i32 %conv12) #12, !dbg !6537
  br label %for.inc, !dbg !6538

if.end13:                                         ; preds = %for.body
  %19 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %p, align 8, !dbg !6539
  %interrupts14 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %19, i32 0, i32 6, !dbg !6540
  %20 = load i32, i32* %i, align 4, !dbg !6541
  %idxprom15 = zext i32 %20 to i64, !dbg !6539
  %arrayidx16 = getelementptr [1 x i8], [1 x i8]* %interrupts14, i64 0, i64 %idxprom15, !dbg !6539
  %21 = load i8, i8* %arrayidx16, align 1, !dbg !6539
  %conv17 = zext i8 %21 to i32, !dbg !6539
  %22 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6542
  %irq18 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %22, i32 0, i32 2, !dbg !6543
  %possible = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq18, i32 0, i32 5, !dbg !6544
  %23 = load i32, i32* %i, align 4, !dbg !6545
  %idxprom19 = zext i32 %23 to i64, !dbg !6542
  %arrayidx20 = getelementptr [16 x i32], [16 x i32]* %possible, i64 0, i64 %idxprom19, !dbg !6542
  store i32 %conv17, i32* %arrayidx20, align 4, !dbg !6546
  %24 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6547
  %irq21 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %24, i32 0, i32 2, !dbg !6548
  %possible_count = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq21, i32 0, i32 4, !dbg !6549
  %25 = load i8, i8* %possible_count, align 1, !dbg !6550
  %inc = add i8 %25, 1, !dbg !6550
  store i8 %inc, i8* %possible_count, align 1, !dbg !6550
  br label %for.inc, !dbg !6551

for.inc:                                          ; preds = %if.end13, %if.then8
  %26 = load i32, i32* %i, align 4, !dbg !6552
  %inc22 = add i32 %26, 1, !dbg !6552
  store i32 %inc22, i32* %i, align 4, !dbg !6552
  br label %for.cond, !dbg !6553, !llvm.loop !6554

for.end:                                          ; preds = %land.end
  %27 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %p, align 8, !dbg !6556
  %triggering = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %27, i32 0, i32 1, !dbg !6557
  %28 = load i8, i8* %triggering, align 1, !dbg !6557
  %29 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6558
  %irq23 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %29, i32 0, i32 2, !dbg !6559
  %triggering24 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq23, i32 0, i32 1, !dbg !6560
  store i8 %28, i8* %triggering24, align 4, !dbg !6561
  %30 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %p, align 8, !dbg !6562
  %polarity = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %30, i32 0, i32 2, !dbg !6563
  %31 = load i8, i8* %polarity, align 1, !dbg !6563
  %32 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6564
  %irq25 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %32, i32 0, i32 2, !dbg !6565
  %polarity26 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq25, i32 0, i32 2, !dbg !6566
  store i8 %31, i8* %polarity26, align 1, !dbg !6567
  %33 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6568
  %irq27 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %33, i32 0, i32 2, !dbg !6569
  %resource_type = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq27, i32 0, i32 3, !dbg !6570
  store i8 0, i8* %resource_type, align 2, !dbg !6571
  br label %sw.epilog, !dbg !6572

sw.bb28:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_extended_irq** %p29, metadata !6573, metadata !DIExpression()), !dbg !6575
  %34 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !6576
  %data30 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %34, i32 0, i32 2, !dbg !6577
  %extended_irq = bitcast %union.acpi_resource_data* %data30 to %struct.acpi_resource_extended_irq*, !dbg !6578
  store %struct.acpi_resource_extended_irq* %extended_irq, %struct.acpi_resource_extended_irq** %p29, align 8, !dbg !6575
  %35 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %p29, align 8, !dbg !6579
  %tobool31 = icmp ne %struct.acpi_resource_extended_irq* %35, null, !dbg !6579
  br i1 %tobool31, label %lor.lhs.false32, label %if.then35, !dbg !6581

lor.lhs.false32:                                  ; preds = %sw.bb28
  %36 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %p29, align 8, !dbg !6582
  %interrupt_count33 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %36, i32 0, i32 5, !dbg !6583
  %37 = load i8, i8* %interrupt_count33, align 1, !dbg !6583
  %tobool34 = icmp ne i8 %37, 0, !dbg !6582
  br i1 %tobool34, label %if.end37, label %if.then35, !dbg !6584

if.then35:                                        ; preds = %lor.lhs.false32, %sw.bb28
  %call36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i64 0, i64 0)) #12, !dbg !6585
  store i32 0, i32* %retval, align 4, !dbg !6587
  br label %return, !dbg !6587

if.end37:                                         ; preds = %lor.lhs.false32
  store i32 0, i32* %i, align 4, !dbg !6588
  br label %for.cond38, !dbg !6590

for.cond38:                                       ; preds = %for.inc68, %if.end37
  %38 = load i32, i32* %i, align 4, !dbg !6591
  %39 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %p29, align 8, !dbg !6593
  %interrupt_count39 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %39, i32 0, i32 5, !dbg !6594
  %40 = load i8, i8* %interrupt_count39, align 1, !dbg !6594
  %conv40 = zext i8 %40 to i32, !dbg !6593
  %cmp41 = icmp ult i32 %38, %conv40, !dbg !6595
  br i1 %cmp41, label %land.rhs43, label %land.end46, !dbg !6596

land.rhs43:                                       ; preds = %for.cond38
  %41 = load i32, i32* %i, align 4, !dbg !6597
  %cmp44 = icmp ult i32 %41, 16, !dbg !6598
  br label %land.end46

land.end46:                                       ; preds = %land.rhs43, %for.cond38
  %42 = phi i1 [ false, %for.cond38 ], [ %cmp44, %land.rhs43 ], !dbg !6599
  br i1 %42, label %for.body47, label %for.end70, !dbg !6600

for.body47:                                       ; preds = %land.end46
  %43 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %p29, align 8, !dbg !6601
  %interrupts48 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %43, i32 0, i32 7, !dbg !6604
  %44 = load i32, i32* %i, align 4, !dbg !6605
  %idxprom49 = zext i32 %44 to i64, !dbg !6601
  %arrayidx50 = getelementptr [1 x i32], [1 x i32]* %interrupts48, i64 0, i64 %idxprom49, !dbg !6601
  %45 = load i32, i32* %arrayidx50, align 1, !dbg !6601
  %tobool51 = icmp ne i32 %45, 0, !dbg !6601
  br i1 %tobool51, label %if.end57, label %if.then52, !dbg !6606

if.then52:                                        ; preds = %for.body47
  %46 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %p29, align 8, !dbg !6607
  %interrupts53 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %46, i32 0, i32 7, !dbg !6609
  %47 = load i32, i32* %i, align 4, !dbg !6610
  %idxprom54 = zext i32 %47 to i64, !dbg !6607
  %arrayidx55 = getelementptr [1 x i32], [1 x i32]* %interrupts53, i64 0, i64 %idxprom54, !dbg !6607
  %48 = load i32, i32* %arrayidx55, align 1, !dbg !6607
  %call56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i32 %48) #12, !dbg !6611
  br label %for.inc68, !dbg !6612

if.end57:                                         ; preds = %for.body47
  %49 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %p29, align 8, !dbg !6613
  %interrupts58 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %49, i32 0, i32 7, !dbg !6614
  %50 = load i32, i32* %i, align 4, !dbg !6615
  %idxprom59 = zext i32 %50 to i64, !dbg !6613
  %arrayidx60 = getelementptr [1 x i32], [1 x i32]* %interrupts58, i64 0, i64 %idxprom59, !dbg !6613
  %51 = load i32, i32* %arrayidx60, align 1, !dbg !6613
  %52 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6616
  %irq61 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %52, i32 0, i32 2, !dbg !6617
  %possible62 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq61, i32 0, i32 5, !dbg !6618
  %53 = load i32, i32* %i, align 4, !dbg !6619
  %idxprom63 = zext i32 %53 to i64, !dbg !6616
  %arrayidx64 = getelementptr [16 x i32], [16 x i32]* %possible62, i64 0, i64 %idxprom63, !dbg !6616
  store i32 %51, i32* %arrayidx64, align 4, !dbg !6620
  %54 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6621
  %irq65 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %54, i32 0, i32 2, !dbg !6622
  %possible_count66 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq65, i32 0, i32 4, !dbg !6623
  %55 = load i8, i8* %possible_count66, align 1, !dbg !6624
  %inc67 = add i8 %55, 1, !dbg !6624
  store i8 %inc67, i8* %possible_count66, align 1, !dbg !6624
  br label %for.inc68, !dbg !6625

for.inc68:                                        ; preds = %if.end57, %if.then52
  %56 = load i32, i32* %i, align 4, !dbg !6626
  %inc69 = add i32 %56, 1, !dbg !6626
  store i32 %inc69, i32* %i, align 4, !dbg !6626
  br label %for.cond38, !dbg !6627, !llvm.loop !6628

for.end70:                                        ; preds = %land.end46
  %57 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %p29, align 8, !dbg !6630
  %triggering71 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %57, i32 0, i32 1, !dbg !6631
  %58 = load i8, i8* %triggering71, align 1, !dbg !6631
  %59 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6632
  %irq72 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %59, i32 0, i32 2, !dbg !6633
  %triggering73 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq72, i32 0, i32 1, !dbg !6634
  store i8 %58, i8* %triggering73, align 4, !dbg !6635
  %60 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %p29, align 8, !dbg !6636
  %polarity74 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %60, i32 0, i32 2, !dbg !6637
  %61 = load i8, i8* %polarity74, align 1, !dbg !6637
  %62 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6638
  %irq75 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %62, i32 0, i32 2, !dbg !6639
  %polarity76 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq75, i32 0, i32 2, !dbg !6640
  store i8 %61, i8* %polarity76, align 1, !dbg !6641
  %63 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %link, align 8, !dbg !6642
  %irq77 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %63, i32 0, i32 2, !dbg !6643
  %resource_type78 = getelementptr inbounds %struct.acpi_pci_link_irq, %struct.acpi_pci_link_irq* %irq77, i32 0, i32 3, !dbg !6644
  store i8 15, i8* %resource_type78, align 2, !dbg !6645
  br label %sw.epilog, !dbg !6646

sw.default:                                       ; preds = %entry
  %64 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !6647
  %type79 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %64, i32 0, i32 0, !dbg !6648
  %65 = load i32, i32* %type79, align 1, !dbg !6648
  %call80 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32, i64 0, i64 0), i32 %65) #12, !dbg !6649
  store i32 0, i32* %retval, align 4, !dbg !6650
  br label %return, !dbg !6650

sw.epilog:                                        ; preds = %for.end70, %for.end
  store i32 16387, i32* %retval, align 4, !dbg !6651
  br label %return, !dbg !6651

return:                                           ; preds = %sw.epilog, %sw.default, %if.then35, %if.then, %sw.bb
  %66 = load i32, i32* %retval, align 4, !dbg !6652
  ret i32 %66, !dbg !6652
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #2 !dbg !6653 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6656, metadata !DIExpression()), !dbg !6657
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6658, metadata !DIExpression()), !dbg !6659
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6660, metadata !DIExpression()), !dbg !6661
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6662
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6664
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6665
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #11, !dbg !6666
  br i1 %call, label %if.end, label %if.then, !dbg !6667

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6668

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6669
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6670
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !6671
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !6672
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6673
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6674
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !6675
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !6676
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6677
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6678
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !6679
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !6680
  br label %do.body, !dbg !6681

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6682

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6684

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6682

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6686
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6686
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !6686
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !6686
  br label %do.end7, !dbg !6686

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6682

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6688
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #2 !dbg !6689 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6692, metadata !DIExpression()), !dbg !6693
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6694, metadata !DIExpression()), !dbg !6695
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6696, metadata !DIExpression()), !dbg !6697
  ret i1 true, !dbg !6698
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #2 !dbg !6699 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6702, metadata !DIExpression()), !dbg !6703
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6704
  call void @__list_del_entry(%struct.list_head* %0) #11, !dbg !6705
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6706
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !6707
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !6708
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6709
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !6710
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !6711
  ret void, !dbg !6712
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #2 !dbg !6713 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6714, metadata !DIExpression()), !dbg !6715
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6716
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #11, !dbg !6718
  br i1 %call, label %if.end, label %if.then, !dbg !6719

if.then:                                          ; preds = %entry
  br label %return, !dbg !6720

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6721
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6722
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6722
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6723
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6724
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6724
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #11, !dbg !6725
  br label %return, !dbg !6726

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6726
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #2 !dbg !6727 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6730, metadata !DIExpression()), !dbg !6731
  ret i1 true, !dbg !6732
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #2 !dbg !6733 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6734, metadata !DIExpression()), !dbg !6735
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6736, metadata !DIExpression()), !dbg !6737
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6738
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6739
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6740
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !6741
  br label %do.body, !dbg !6742

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6743

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6745

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6743

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6747
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6747
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6747
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !6747
  br label %do.end5, !dbg !6747

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6743

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6749
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }
attributes #13 = { noredzone nounwind readnone }
attributes #14 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4457}
!llvm.module.flags = !{!4458, !4459, !4460, !4461}
!llvm.ident = !{!4462}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_link_list", scope: !2, file: !3, line: 73, type: !155, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !149, globals: !4390, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/pci_link.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !114, !122, !128, !137, !144}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !6, line: 15, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !14, line: 546, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !20, line: 65, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !25, line: 16, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !31, line: 59, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!36 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !38, line: 54, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !44, line: 296, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!45 = !{!46, !47, !48, !49, !50, !51}
!46 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!47 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!49 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!50 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!51 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !53, line: 9, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!54 = !{!55, !56, !57, !58, !59}
!55 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!56 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!57 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!58 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!59 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !61, line: 26, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !64, !65}
!63 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !67, line: 44, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !73, line: 343, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!78 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !80, line: 524, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !84, !85, !86}
!82 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!85 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!86 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !80, line: 502, baseType: !7, size: 32, elements: !88)
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !94, line: 76, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!96 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!100 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!101 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!102 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!103 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!104 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!105 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!106 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !108, line: 478, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112, !113}
!110 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3, isUnsigned: true)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !115, line: 1084, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/lizy2001/genbc/linux")
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1, isUnsigned: true)
!118 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2, isUnsigned: true)
!119 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4, isUnsigned: true)
!120 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8, isUnsigned: true)
!121 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16, isUnsigned: true)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !123, line: 11, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!127 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_irq_model_id", file: !129, line: 102, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !132, !133, !134, !135, !136}
!131 = !DIEnumerator(name: "ACPI_IRQ_MODEL_PIC", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "ACPI_IRQ_MODEL_IOAPIC", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "ACPI_IRQ_MODEL_IOSAPIC", value: 2, isUnsigned: true)
!134 = !DIEnumerator(name: "ACPI_IRQ_MODEL_PLATFORM", value: 3, isUnsigned: true)
!135 = !DIEnumerator(name: "ACPI_IRQ_MODEL_GIC", value: 4, isUnsigned: true)
!136 = !DIEnumerator(name: "ACPI_IRQ_MODEL_COUNT", value: 5, isUnsigned: true)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !138, line: 305, baseType: !7, size: 32, elements: !139)
!138 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!139 = !{!140, !141, !142, !143}
!140 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!141 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!142 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!143 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !145, line: 10, baseType: !7, size: 32, elements: !146)
!145 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!146 = !{!147, !148}
!147 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!148 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!149 = !{!150, !151, !167, !737, !1346, !316, !4387, !4388}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_link", file: !3, line: 66, size: 832, elements: !153)
!153 = !{!154, !161, !4375, !4386}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !152, file: !3, line: 67, baseType: !155, size: 128)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !156, line: 178, size: 128, elements: !157)
!156 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!157 = !{!158, !160}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !155, file: !156, line: 179, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !155, file: !156, line: 179, baseType: !159, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !152, file: !3, line: 68, baseType: !162, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !164, line: 351, size: 10880, elements: !165)
!164 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!165 = !{!166, !168, !171, !4104, !4105, !4106, !4107, !4108, !4109, !4118, !4135, !4209, !4238, !4262, !4283, !4287, !4296, !4328, !4342, !4364, !4368, !4369, !4370, !4371, !4372, !4373, !4374}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !163, file: !164, line: 352, baseType: !167, size: 32)
!167 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !163, file: !164, line: 353, baseType: !169, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !170, line: 424, baseType: !150)
!170 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!171 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !163, file: !164, line: 354, baseType: !172, size: 192, offset: 128)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !173, line: 17, size: 192, elements: !174)
!173 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!174 = !{!175, !177, !4103}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !172, file: !173, line: 18, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !172, file: !173, line: 19, baseType: !178, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !173, line: 110, size: 1152, elements: !181)
!181 = !{!182, !186, !190, !198, !4045, !4049, !4053, !4058, !4062, !4063, !4067, !4071, !4075, !4086, !4087, !4088, !4089, !4099}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !180, file: !173, line: 111, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!176, !176}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !180, file: !173, line: 112, baseType: !187, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !176}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !180, file: !173, line: 113, baseType: !191, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!194, !196}
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !156, line: 30, baseType: !195)
!195 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !180, file: !173, line: 114, baseType: !199, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!202, !196, !204}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !207)
!207 = !{!208, !3366, !3368, !3371, !3372, !3423, !3514, !3515, !3516, !3517, !3518, !3527, !3632, !3645, !3972, !3973, !3977, !3979, !3980, !3981, !3985, !3991, !3992, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4033, !4034, !4035, !4038, !4041, !4042, !4043, !4044}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !206, file: !73, line: 462, baseType: !209, size: 512)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !210, line: 64, size: 512, elements: !211)
!210 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!211 = !{!212, !216, !217, !219, !279, !3217, !3356, !3361, !3362, !3363, !3364, !3365}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !210, line: 65, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !209, file: !210, line: 66, baseType: !155, size: 128, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !209, file: !210, line: 67, baseType: !218, size: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !209, file: !210, line: 68, baseType: !220, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !210, line: 192, size: 704, elements: !222)
!222 = !{!223, !224, !240, !241}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !221, file: !210, line: 193, baseType: !155, size: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !221, file: !210, line: 194, baseType: !225, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !226, line: 83, baseType: !227)
!226 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !226, line: 71, elements: !228)
!228 = !{!229}
!229 = !DIDerivedType(tag: DW_TAG_member, scope: !227, file: !226, line: 72, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !227, file: !226, line: 72, elements: !231)
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !230, file: !226, line: 73, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !226, line: 20, elements: !234)
!234 = !{!235}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !233, file: !226, line: 21, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !237, line: 25, baseType: !238)
!237 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 25, elements: !239)
!239 = !{}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !221, file: !210, line: 195, baseType: !209, size: 512, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !221, file: !210, line: 196, baseType: !242, size: 64, offset: 640)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !210, line: 156, size: 192, elements: !245)
!245 = !{!246, !251, !256}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !244, file: !210, line: 157, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!167, !220, !218}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !244, file: !210, line: 158, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!213, !220, !218}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !244, file: !210, line: 159, baseType: !257, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!167, !220, !218, !261}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !210, line: 148, size: 20736, elements: !263)
!263 = !{!264, !269, !273, !274, !278}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !262, file: !210, line: 149, baseType: !265, size: 192)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 192, elements: !267)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!267 = !{!268}
!268 = !DISubrange(count: 3)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !262, file: !210, line: 150, baseType: !270, size: 4096, offset: 192)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 4096, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !262, file: !210, line: 151, baseType: !167, size: 32, offset: 4288)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !262, file: !210, line: 152, baseType: !275, size: 16384, offset: 4320)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 16384, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 2048)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !262, file: !210, line: 153, baseType: !167, size: 32, offset: 20704)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !209, file: !210, line: 69, baseType: !280, size: 64, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !210, line: 138, size: 448, elements: !282)
!282 = !{!283, !287, !317, !319, !3179, !3207, !3211}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !281, file: !210, line: 139, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !218}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !281, file: !210, line: 140, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !291, line: 230, size: 128, elements: !292)
!291 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!292 = !{!293, !309}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !290, file: !291, line: 231, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!297, !218, !302, !266}
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !156, line: 60, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !299, line: 73, baseType: !300)
!299 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !299, line: 15, baseType: !301)
!301 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !291, line: 30, size: 128, elements: !304)
!304 = !{!305, !306}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !303, file: !291, line: 31, baseType: !213, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !303, file: !291, line: 32, baseType: !307, size: 16, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !156, line: 19, baseType: !308)
!308 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !290, file: !291, line: 232, baseType: !310, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!297, !218, !302, !213, !313}
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !156, line: 55, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !299, line: 72, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !299, line: 16, baseType: !316)
!316 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !281, file: !210, line: 141, baseType: !318, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !281, file: !210, line: 142, baseType: !320, size: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !291, line: 84, size: 320, elements: !324)
!324 = !{!325, !326, !330, !3176, !3177}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !323, file: !291, line: 85, baseType: !213, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !323, file: !291, line: 86, baseType: !327, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!307, !218, !302, !167}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !323, file: !291, line: 88, baseType: !331, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!307, !218, !334, !167}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !291, line: 168, size: 448, elements: !336)
!336 = !{!337, !338, !339, !340, !3171, !3172}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !335, file: !291, line: 169, baseType: !303, size: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !335, file: !291, line: 170, baseType: !313, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !335, file: !291, line: 171, baseType: !150, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !335, file: !291, line: 172, baseType: !341, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!297, !344, !218, !334, !266, !521, !313}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !346)
!346 = !{!347, !365, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3154, !3155, !3164, !3165, !3166, !3167, !3168, !3169, !3170}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !345, file: !44, line: 920, baseType: !348, size: 128)
!348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !44, line: 917, size: 128, elements: !349)
!349 = !{!350, !356}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !348, file: !44, line: 918, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !352, line: 58, size: 64, elements: !353)
!352 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !351, file: !352, line: 59, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !348, file: !44, line: 919, baseType: !357, size: 128, align: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !156, line: 216, size: 128, align: 64, elements: !358)
!358 = !{!359, !361}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !156, line: 217, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !357, file: !156, line: 218, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !360}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !345, file: !44, line: 921, baseType: !366, size: 128, offset: 128)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !367, line: 8, size: 128, elements: !368)
!367 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!368 = !{!369, !373}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !366, file: !367, line: 9, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !372, line: 18, flags: DIFlagFwdDecl)
!372 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!373 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !366, file: !367, line: 10, baseType: !374, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !372, line: 89, size: 1536, elements: !376)
!376 = !{!377, !378, !388, !396, !397, !420, !3104, !3106, !3118, !3119, !3120, !3121, !3122, !3128, !3129, !3130}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !375, file: !372, line: 91, baseType: !7, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !375, file: !372, line: 92, baseType: !379, size: 32, offset: 32)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !380, line: 277, baseType: !381)
!380 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !380, line: 277, size: 32, elements: !382)
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !381, file: !380, line: 277, baseType: !384, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !380, line: 70, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !380, line: 65, size: 32, elements: !386)
!386 = !{!387}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !385, file: !380, line: 66, baseType: !7, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !375, file: !372, line: 93, baseType: !389, size: 128, offset: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !390, line: 38, size: 128, elements: !391)
!390 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!391 = !{!392, !394}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !389, file: !390, line: 39, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !389, file: !390, line: 39, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !375, file: !372, line: 94, baseType: !374, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !375, file: !372, line: 95, baseType: !398, size: 128, offset: 256)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !372, line: 47, size: 128, elements: !399)
!399 = !{!400, !416}
!400 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !372, line: 48, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !372, line: 48, size: 64, elements: !402)
!402 = !{!403, !412}
!403 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !372, line: 49, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !401, file: !372, line: 49, size: 64, elements: !405)
!405 = !{!406, !411}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !404, file: !372, line: 50, baseType: !407, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !408, line: 21, baseType: !409)
!408 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !410, line: 27, baseType: !7)
!410 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!411 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !404, file: !372, line: 50, baseType: !407, size: 32, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !401, file: !372, line: 52, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !408, line: 23, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !410, line: 31, baseType: !415)
!415 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !398, file: !372, line: 54, baseType: !417, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!419 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !375, file: !372, line: 96, baseType: !421, size: 64, offset: 384)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !423)
!423 = !{!424, !425, !426, !434, !441, !442, !588, !2815, !2816, !2817, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !3080, !3088, !3089, !3090, !3100, !3101, !3102, !3103}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !422, file: !44, line: 611, baseType: !307, size: 16)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !422, file: !44, line: 612, baseType: !308, size: 16, offset: 16)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !422, file: !44, line: 613, baseType: !427, size: 32, offset: 32)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !428, line: 23, baseType: !429)
!428 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !428, line: 21, size: 32, elements: !430)
!430 = !{!431}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !429, file: !428, line: 22, baseType: !432, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !156, line: 32, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !299, line: 49, baseType: !7)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !422, file: !44, line: 614, baseType: !435, size: 32, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !428, line: 28, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !428, line: 26, size: 32, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !436, file: !428, line: 27, baseType: !439, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !156, line: 33, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !299, line: 50, baseType: !7)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !422, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !422, file: !44, line: 622, baseType: !443, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !446)
!446 = !{!447, !451, !464, !468, !474, !478, !482, !486, !490, !494, !498, !499, !505, !509, !535, !564, !568, !574, !579, !583, !584}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !445, file: !44, line: 1865, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!374, !421, !374, !7}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !445, file: !44, line: 1866, baseType: !452, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!213, !374, !421, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !457, line: 10, size: 128, elements: !458)
!457 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!458 = !{!459, !463}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !456, file: !457, line: 11, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !150}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !456, file: !457, line: 12, baseType: !150, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !445, file: !44, line: 1867, baseType: !465, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!167, !421, !167}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !445, file: !44, line: 1868, baseType: !469, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!472, !421, !167}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !445, file: !44, line: 1870, baseType: !475, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!167, !374, !266, !167}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !445, file: !44, line: 1872, baseType: !479, size: 64, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!167, !421, !374, !307, !194}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !445, file: !44, line: 1873, baseType: !483, size: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!167, !374, !421, !374}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !445, file: !44, line: 1874, baseType: !487, size: 64, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!167, !421, !374}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !445, file: !44, line: 1875, baseType: !491, size: 64, offset: 512)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!167, !421, !374, !213}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !445, file: !44, line: 1876, baseType: !495, size: 64, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!167, !421, !374, !307}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !445, file: !44, line: 1877, baseType: !487, size: 64, offset: 640)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !445, file: !44, line: 1878, baseType: !500, size: 64, offset: 704)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!167, !421, !374, !307, !503}
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !156, line: 16, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !156, line: 13, baseType: !407)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !445, file: !44, line: 1879, baseType: !506, size: 64, offset: 768)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!167, !421, !374, !421, !374, !7}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !445, file: !44, line: 1881, baseType: !510, size: 64, offset: 832)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!167, !374, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !515)
!515 = !{!516, !517, !518, !519, !520, !524, !532, !533, !534}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !514, file: !44, line: 220, baseType: !7, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !514, file: !44, line: 221, baseType: !307, size: 16, offset: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !514, file: !44, line: 222, baseType: !427, size: 32, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !514, file: !44, line: 223, baseType: !435, size: 32, offset: 96)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !514, file: !44, line: 224, baseType: !521, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !156, line: 46, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !299, line: 88, baseType: !523)
!523 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !514, file: !44, line: 225, baseType: !525, size: 128, offset: 192)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !526, line: 13, size: 128, elements: !527)
!526 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!527 = !{!528, !531}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !525, file: !526, line: 14, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !526, line: 8, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !410, line: 30, baseType: !523)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !525, file: !526, line: 15, baseType: !301, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !514, file: !44, line: 226, baseType: !525, size: 128, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !514, file: !44, line: 227, baseType: !525, size: 128, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !514, file: !44, line: 234, baseType: !344, size: 64, offset: 576)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !445, file: !44, line: 1882, baseType: !536, size: 64, offset: 896)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!167, !539, !541, !407, !7}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !543, line: 22, size: 1152, elements: !544)
!543 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!544 = !{!545, !546, !547, !548, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !542, file: !543, line: 23, baseType: !407, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !542, file: !543, line: 24, baseType: !307, size: 16, offset: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !542, file: !543, line: 25, baseType: !7, size: 32, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !542, file: !543, line: 26, baseType: !549, size: 32, offset: 96)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !156, line: 104, baseType: !407)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !542, file: !543, line: 27, baseType: !413, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !542, file: !543, line: 28, baseType: !413, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !542, file: !543, line: 37, baseType: !413, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !542, file: !543, line: 38, baseType: !503, size: 32, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !542, file: !543, line: 39, baseType: !503, size: 32, offset: 352)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !542, file: !543, line: 40, baseType: !427, size: 32, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !542, file: !543, line: 41, baseType: !435, size: 32, offset: 416)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !542, file: !543, line: 42, baseType: !521, size: 64, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !542, file: !543, line: 43, baseType: !525, size: 128, offset: 512)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !542, file: !543, line: 44, baseType: !525, size: 128, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !542, file: !543, line: 45, baseType: !525, size: 128, offset: 768)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !542, file: !543, line: 46, baseType: !525, size: 128, offset: 896)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !542, file: !543, line: 47, baseType: !413, size: 64, offset: 1024)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !542, file: !543, line: 48, baseType: !413, size: 64, offset: 1088)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !445, file: !44, line: 1883, baseType: !565, size: 64, offset: 960)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!297, !374, !266, !313}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !445, file: !44, line: 1884, baseType: !569, size: 64, offset: 1024)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!167, !421, !572, !413, !413}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !445, file: !44, line: 1886, baseType: !575, size: 64, offset: 1088)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!167, !421, !578, !167}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !445, file: !44, line: 1887, baseType: !580, size: 64, offset: 1152)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!167, !421, !374, !344, !7, !307}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !445, file: !44, line: 1890, baseType: !495, size: 64, offset: 1216)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !445, file: !44, line: 1891, baseType: !585, size: 64, offset: 1280)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!167, !421, !472, !167}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !422, file: !44, line: 623, baseType: !589, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !591)
!591 = !{!592, !593, !594, !595, !596, !597, !647, !2422, !2504, !2587, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2603, !2607, !2608, !2611, !2612, !2615, !2616, !2617, !2658, !2685, !2686, !2687, !2688, !2689, !2690, !2693, !2695, !2702, !2703, !2705, !2706, !2707, !2766, !2767, !2782, !2783, !2784, !2785, !2786, !2789, !2790, !2791, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !590, file: !44, line: 1417, baseType: !155, size: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !590, file: !44, line: 1418, baseType: !503, size: 32, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !590, file: !44, line: 1419, baseType: !419, size: 8, offset: 160)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !590, file: !44, line: 1420, baseType: !316, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !590, file: !44, line: 1421, baseType: !521, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !590, file: !44, line: 1422, baseType: !598, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !600)
!600 = !{!601, !602, !603, !610, !614, !618, !622, !626, !627, !637, !640, !641, !642, !644, !645, !646}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !599, file: !44, line: 2229, baseType: !213, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !599, file: !44, line: 2230, baseType: !167, size: 32, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !599, file: !44, line: 2238, baseType: !604, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!167, !607}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !609, line: 28, flags: DIFlagFwdDecl)
!609 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!610 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !599, file: !44, line: 2239, baseType: !611, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !613)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !599, file: !44, line: 2240, baseType: !615, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!374, !598, !167, !213, !150}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !599, file: !44, line: 2242, baseType: !619, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !589}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !599, file: !44, line: 2243, baseType: !623, size: 64, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !625, line: 76, flags: DIFlagFwdDecl)
!625 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!626 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !599, file: !44, line: 2244, baseType: !598, size: 64, offset: 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !599, file: !44, line: 2245, baseType: !628, size: 64, offset: 512)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !156, line: 182, size: 64, elements: !629)
!629 = !{!630}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !628, file: !156, line: 183, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !156, line: 186, size: 128, elements: !633)
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !632, file: !156, line: 187, baseType: !631, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !632, file: !156, line: 187, baseType: !636, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !599, file: !44, line: 2247, baseType: !638, offset: 576)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !639, line: 187, elements: !239)
!639 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!640 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !599, file: !44, line: 2248, baseType: !638, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !599, file: !44, line: 2249, baseType: !638, offset: 576)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !599, file: !44, line: 2250, baseType: !643, offset: 576)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, elements: !267)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !599, file: !44, line: 2252, baseType: !638, offset: 576)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !599, file: !44, line: 2253, baseType: !638, offset: 576)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !599, file: !44, line: 2254, baseType: !638, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !590, file: !44, line: 1423, baseType: !648, size: 64, offset: 384)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !651)
!651 = !{!652, !656, !660, !661, !665, !671, !675, !676, !677, !681, !685, !686, !687, !688, !694, !699, !700, !707, !708, !709, !710, !2406, !2421}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !650, file: !44, line: 1936, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!421, !589}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !650, file: !44, line: 1937, baseType: !657, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{null, !421}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !650, file: !44, line: 1938, baseType: !657, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !650, file: !44, line: 1940, baseType: !662, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !421, !167}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !650, file: !44, line: 1941, baseType: !666, size: 64, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!167, !421, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !650, file: !44, line: 1942, baseType: !672, size: 64, offset: 320)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!167, !421}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !650, file: !44, line: 1943, baseType: !657, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !650, file: !44, line: 1944, baseType: !619, size: 64, offset: 448)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !650, file: !44, line: 1945, baseType: !678, size: 64, offset: 512)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!167, !589, !167}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !650, file: !44, line: 1946, baseType: !682, size: 64, offset: 576)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!167, !589}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !650, file: !44, line: 1947, baseType: !682, size: 64, offset: 640)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !650, file: !44, line: 1948, baseType: !682, size: 64, offset: 704)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !650, file: !44, line: 1949, baseType: !682, size: 64, offset: 768)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !650, file: !44, line: 1950, baseType: !689, size: 64, offset: 832)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!167, !374, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !650, file: !44, line: 1951, baseType: !695, size: 64, offset: 896)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!167, !589, !698, !266}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !650, file: !44, line: 1952, baseType: !619, size: 64, offset: 960)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !650, file: !44, line: 1954, baseType: !701, size: 64, offset: 1024)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!167, !704, !374}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !706, line: 539, flags: DIFlagFwdDecl)
!706 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!707 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !650, file: !44, line: 1955, baseType: !701, size: 64, offset: 1088)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !650, file: !44, line: 1956, baseType: !701, size: 64, offset: 1152)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !650, file: !44, line: 1957, baseType: !701, size: 64, offset: 1216)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !650, file: !44, line: 1963, baseType: !711, size: 64, offset: 1280)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!167, !589, !714, !737}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !716, line: 68, size: 512, align: 128, elements: !717)
!716 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!717 = !{!718, !719, !2398, !2405}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !716, line: 69, baseType: !316, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !716, line: 77, baseType: !720, size: 320, offset: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !715, file: !716, line: 77, size: 320, elements: !721)
!721 = !{!722, !910, !915, !943, !951, !957, !2329, !2397}
!722 = !DIDerivedType(tag: DW_TAG_member, scope: !720, file: !716, line: 78, baseType: !723, size: 320)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !720, file: !716, line: 78, size: 320, elements: !724)
!724 = !{!725, !726, !908, !909}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !723, file: !716, line: 84, baseType: !155, size: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !723, file: !716, line: 86, baseType: !727, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !729)
!729 = !{!730, !731, !739, !740, !745, !760, !776, !777, !778, !779, !901, !902, !905, !906, !907}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !728, file: !44, line: 452, baseType: !421, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !728, file: !44, line: 453, baseType: !732, size: 128, offset: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !733, line: 292, size: 128, elements: !734)
!733 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!734 = !{!735, !736, !738}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !732, file: !733, line: 293, baseType: !225)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !732, file: !733, line: 295, baseType: !737, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !156, line: 148, baseType: !7)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !732, file: !733, line: 296, baseType: !150, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !728, file: !44, line: 454, baseType: !737, size: 32, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !728, file: !44, line: 455, baseType: !741, size: 32, offset: 224)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !156, line: 168, baseType: !742)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !156, line: 166, size: 32, elements: !743)
!743 = !{!744}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !742, file: !156, line: 167, baseType: !167, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !728, file: !44, line: 460, baseType: !746, size: 128, offset: 256)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !747, line: 125, size: 128, elements: !748)
!747 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!748 = !{!749, !759}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !746, file: !747, line: 126, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !747, line: 31, size: 64, elements: !751)
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !750, file: !747, line: 32, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !747, line: 24, size: 192, align: 64, elements: !755)
!755 = !{!756, !757, !758}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !754, file: !747, line: 25, baseType: !316, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !754, file: !747, line: 26, baseType: !753, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !754, file: !747, line: 27, baseType: !753, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !746, file: !747, line: 127, baseType: !753, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !728, file: !44, line: 461, baseType: !761, size: 256, offset: 384)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !762, line: 35, size: 256, elements: !763)
!762 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!763 = !{!764, !772, !773, !775}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !761, file: !762, line: 36, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !766, line: 13, baseType: !767)
!766 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !156, line: 175, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !156, line: 173, size: 64, elements: !769)
!769 = !{!770}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !768, file: !156, line: 174, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !408, line: 22, baseType: !530)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !761, file: !762, line: 42, baseType: !765, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !761, file: !762, line: 46, baseType: !774, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !226, line: 29, baseType: !233)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !761, file: !762, line: 47, baseType: !155, size: 128, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !728, file: !44, line: 462, baseType: !316, size: 64, offset: 640)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !728, file: !44, line: 463, baseType: !316, size: 64, offset: 704)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !728, file: !44, line: 464, baseType: !316, size: 64, offset: 768)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !728, file: !44, line: 465, baseType: !780, size: 64, offset: 832)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !783)
!783 = !{!784, !788, !792, !796, !800, !804, !810, !816, !820, !825, !829, !833, !837, !865, !869, !875, !876, !877, !881, !886, !890, !897}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !782, file: !44, line: 368, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!167, !714, !669}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !782, file: !44, line: 369, baseType: !789, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!167, !344, !714}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !782, file: !44, line: 372, baseType: !793, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!167, !727, !669}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !782, file: !44, line: 375, baseType: !797, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!167, !714}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !782, file: !44, line: 381, baseType: !801, size: 64, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!167, !344, !727, !159, !7}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !782, file: !44, line: 383, baseType: !805, size: 64, offset: 320)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !808}
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !782, file: !44, line: 385, baseType: !811, size: 64, offset: 384)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!167, !344, !727, !521, !7, !7, !814, !815}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !782, file: !44, line: 388, baseType: !817, size: 64, offset: 448)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!167, !344, !727, !521, !7, !7, !714, !150}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !782, file: !44, line: 393, baseType: !821, size: 64, offset: 512)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!824, !727, !824}
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !156, line: 125, baseType: !413)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !782, file: !44, line: 394, baseType: !826, size: 64, offset: 576)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{null, !714, !7, !7}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !782, file: !44, line: 395, baseType: !830, size: 64, offset: 640)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!167, !714, !737}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !782, file: !44, line: 396, baseType: !834, size: 64, offset: 704)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{null, !714}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !782, file: !44, line: 397, baseType: !838, size: 64, offset: 768)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!297, !841, !863}
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !843)
!843 = !{!844, !845, !846, !850, !851, !852, !855, !856}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !842, file: !44, line: 321, baseType: !344, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !842, file: !44, line: 326, baseType: !521, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !842, file: !44, line: 327, baseType: !847, size: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !841, !301, !301}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !842, file: !44, line: 328, baseType: !150, size: 64, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !842, file: !44, line: 329, baseType: !167, size: 32, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !842, file: !44, line: 330, baseType: !853, size: 16, offset: 288)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !408, line: 19, baseType: !854)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !410, line: 24, baseType: !308)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !842, file: !44, line: 331, baseType: !853, size: 16, offset: 304)
!856 = !DIDerivedType(tag: DW_TAG_member, scope: !842, file: !44, line: 332, baseType: !857, size: 64, offset: 320)
!857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !842, file: !44, line: 332, size: 64, elements: !858)
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !857, file: !44, line: 333, baseType: !7, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !857, file: !44, line: 334, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !782, file: !44, line: 402, baseType: !866, size: 64, offset: 832)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!167, !727, !714, !714, !5}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !782, file: !44, line: 404, baseType: !870, size: 64, offset: 896)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!194, !714, !873}
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !874, line: 305, baseType: !7)
!874 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!875 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !782, file: !44, line: 405, baseType: !834, size: 64, offset: 960)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !782, file: !44, line: 406, baseType: !797, size: 64, offset: 1024)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !782, file: !44, line: 407, baseType: !878, size: 64, offset: 1088)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!167, !714, !316, !316}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !782, file: !44, line: 409, baseType: !882, size: 64, offset: 1152)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !714, !885, !885}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !782, file: !44, line: 410, baseType: !887, size: 64, offset: 1216)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!167, !727, !714}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !782, file: !44, line: 413, baseType: !891, size: 64, offset: 1280)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!167, !894, !344, !896}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !782, file: !44, line: 415, baseType: !898, size: 64, offset: 1344)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{null, !344}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !728, file: !44, line: 466, baseType: !316, size: 64, offset: 896)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !728, file: !44, line: 467, baseType: !903, size: 32, offset: 960)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !904, line: 8, baseType: !407)
!904 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!905 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !728, file: !44, line: 468, baseType: !225, offset: 992)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !728, file: !44, line: 469, baseType: !155, size: 128, offset: 1024)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !728, file: !44, line: 470, baseType: !150, size: 64, offset: 1152)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !723, file: !716, line: 87, baseType: !316, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !723, file: !716, line: 94, baseType: !316, size: 64, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_member, scope: !720, file: !716, line: 96, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !720, file: !716, line: 96, size: 64, elements: !912)
!912 = !{!913}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !911, file: !716, line: 101, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !156, line: 143, baseType: !413)
!915 = !DIDerivedType(tag: DW_TAG_member, scope: !720, file: !716, line: 103, baseType: !916, size: 320)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !720, file: !716, line: 103, size: 320, elements: !917)
!917 = !{!918, !928, !931, !932}
!918 = !DIDerivedType(tag: DW_TAG_member, scope: !916, file: !716, line: 104, baseType: !919, size: 128)
!919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !916, file: !716, line: 104, size: 128, elements: !920)
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !919, file: !716, line: 105, baseType: !155, size: 128)
!922 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !716, line: 106, baseType: !923, size: 128)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !716, line: 106, size: 128, elements: !924)
!924 = !{!925, !926, !927}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !923, file: !716, line: 107, baseType: !714, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !923, file: !716, line: 109, baseType: !167, size: 32, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !923, file: !716, line: 110, baseType: !167, size: 32, offset: 96)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !916, file: !716, line: 117, baseType: !929, size: 64, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !716, line: 117, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !916, file: !716, line: 119, baseType: !150, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !916, file: !716, line: 120, baseType: !933, size: 64, offset: 256)
!933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !916, file: !716, line: 120, size: 64, elements: !934)
!934 = !{!935, !936, !937}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !933, file: !716, line: 121, baseType: !150, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !933, file: !716, line: 122, baseType: !316, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !716, line: 123, baseType: !938, size: 32)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !933, file: !716, line: 123, size: 32, elements: !939)
!939 = !{!940, !941, !942}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !938, file: !716, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !938, file: !716, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !938, file: !716, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!943 = !DIDerivedType(tag: DW_TAG_member, scope: !720, file: !716, line: 130, baseType: !944, size: 192)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !720, file: !716, line: 130, size: 192, elements: !945)
!945 = !{!946, !947, !948, !949, !950}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !944, file: !716, line: 131, baseType: !316, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !944, file: !716, line: 134, baseType: !419, size: 8, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !944, file: !716, line: 135, baseType: !419, size: 8, offset: 72)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !944, file: !716, line: 136, baseType: !741, size: 32, offset: 96)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !944, file: !716, line: 137, baseType: !7, size: 32, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !720, file: !716, line: 139, baseType: !952, size: 256)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !720, file: !716, line: 139, size: 256, elements: !953)
!953 = !{!954, !955, !956}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !952, file: !716, line: 140, baseType: !316, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !952, file: !716, line: 141, baseType: !741, size: 32, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !952, file: !716, line: 143, baseType: !155, size: 128, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, scope: !720, file: !716, line: 145, baseType: !958, size: 256)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !720, file: !716, line: 145, size: 256, elements: !959)
!959 = !{!960, !961, !963, !964, !2328}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !958, file: !716, line: 146, baseType: !316, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !958, file: !716, line: 147, baseType: !962, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !706, line: 509, baseType: !714)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !958, file: !716, line: 148, baseType: !316, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !958, file: !716, line: 149, baseType: !965, size: 64, offset: 192)
!965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !958, file: !716, line: 149, size: 64, elements: !966)
!966 = !{!967, !2327}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !965, file: !716, line: 150, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !716, line: 388, size: 7296, elements: !970)
!970 = !{!971, !2323}
!971 = !DIDerivedType(tag: DW_TAG_member, scope: !969, file: !716, line: 389, baseType: !972, size: 7296)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !969, file: !716, line: 389, size: 7296, elements: !973)
!973 = !{!974, !1092, !1093, !1094, !1098, !1099, !1100, !1101, !1102, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1143, !1151, !1154, !1200, !1201, !2307, !2308, !2311, !2312, !2313, !2316, !2317, !2318, !2321, !2322}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !972, file: !716, line: 390, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !716, line: 305, size: 1472, elements: !977)
!977 = !{!978, !979, !980, !981, !982, !983, !984, !985, !992, !993, !998, !999, !1002, !1086, !1087, !1088, !1089, !1090}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !976, file: !716, line: 308, baseType: !316, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !976, file: !716, line: 309, baseType: !316, size: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !976, file: !716, line: 313, baseType: !975, size: 64, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !976, file: !716, line: 313, baseType: !975, size: 64, offset: 192)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !976, file: !716, line: 315, baseType: !754, size: 192, align: 64, offset: 256)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !976, file: !716, line: 323, baseType: !316, size: 64, offset: 448)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !976, file: !716, line: 327, baseType: !968, size: 64, offset: 512)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !976, file: !716, line: 333, baseType: !986, size: 64, offset: 576)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !706, line: 284, baseType: !987)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !706, line: 284, size: 64, elements: !988)
!988 = !{!989}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !987, file: !706, line: 284, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !991, line: 19, baseType: !316)
!991 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!992 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !976, file: !716, line: 334, baseType: !316, size: 64, offset: 640)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !976, file: !716, line: 343, baseType: !994, size: 256, offset: 704)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !716, line: 340, size: 256, elements: !995)
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !994, file: !716, line: 341, baseType: !754, size: 192, align: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !994, file: !716, line: 342, baseType: !316, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !976, file: !716, line: 351, baseType: !155, size: 128, offset: 960)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !976, file: !716, line: 353, baseType: !1000, size: 64, offset: 1088)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !716, line: 353, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !976, file: !716, line: 356, baseType: !1003, size: 64, offset: 1152)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1005)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1006)
!1006 = !{!1007, !1011, !1012, !1016, !1020, !1060, !1064, !1068, !1072, !1073, !1074, !1078, !1082}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1005, file: !14, line: 558, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{null, !975}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1005, file: !14, line: 559, baseType: !1008, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1005, file: !14, line: 560, baseType: !1013, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!167, !975, !316}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1005, file: !14, line: 561, baseType: !1017, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!167, !975}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1005, file: !14, line: 562, baseType: !1021, size: 64, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!1024, !1025}
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !716, line: 682, baseType: !7)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1027)
!1027 = !{!1028, !1029, !1030, !1031, !1032, !1033, !1040, !1047, !1053, !1054, !1055, !1057, !1059}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1026, file: !14, line: 509, baseType: !975, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1026, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1026, file: !14, line: 511, baseType: !737, size: 32, offset: 96)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1026, file: !14, line: 512, baseType: !316, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1026, file: !14, line: 513, baseType: !316, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1026, file: !14, line: 514, baseType: !1034, size: 64, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !706, line: 385, baseType: !1036)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !706, line: 385, size: 64, elements: !1037)
!1037 = !{!1038}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1036, file: !706, line: 385, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !991, line: 15, baseType: !316)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1026, file: !14, line: 516, baseType: !1041, size: 64, offset: 320)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !706, line: 359, baseType: !1043)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !706, line: 359, size: 64, elements: !1044)
!1044 = !{!1045}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1043, file: !706, line: 359, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !991, line: 16, baseType: !316)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1026, file: !14, line: 519, baseType: !1048, size: 64, offset: 384)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !991, line: 21, baseType: !1049)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !991, line: 21, size: 64, elements: !1050)
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1049, file: !991, line: 21, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !991, line: 14, baseType: !316)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1026, file: !14, line: 521, baseType: !714, size: 64, offset: 448)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1026, file: !14, line: 522, baseType: !714, size: 64, offset: 512)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1026, file: !14, line: 528, baseType: !1056, size: 64, offset: 576)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1026, file: !14, line: 532, baseType: !1058, size: 64, offset: 640)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1026, file: !14, line: 536, baseType: !962, size: 64, offset: 704)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1005, file: !14, line: 563, baseType: !1061, size: 64, offset: 320)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!1024, !1025, !13}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1005, file: !14, line: 565, baseType: !1065, size: 64, offset: 384)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{null, !1025, !316, !316}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1005, file: !14, line: 567, baseType: !1069, size: 64, offset: 448)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!316, !975}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1005, file: !14, line: 571, baseType: !1021, size: 64, offset: 512)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1005, file: !14, line: 574, baseType: !1021, size: 64, offset: 576)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1005, file: !14, line: 579, baseType: !1075, size: 64, offset: 640)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!167, !975, !316, !150, !167, !167}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1005, file: !14, line: 585, baseType: !1079, size: 64, offset: 704)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!213, !975}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1005, file: !14, line: 615, baseType: !1083, size: 64, offset: 768)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!714, !975, !316}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !976, file: !716, line: 359, baseType: !316, size: 64, offset: 1216)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !976, file: !716, line: 361, baseType: !344, size: 64, offset: 1280)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !976, file: !716, line: 362, baseType: !150, size: 64, offset: 1344)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !976, file: !716, line: 365, baseType: !765, size: 64, offset: 1408)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !976, file: !716, line: 373, baseType: !1091, offset: 1472)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !716, line: 296, elements: !239)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !972, file: !716, line: 391, baseType: !750, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !972, file: !716, line: 392, baseType: !413, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !972, file: !716, line: 394, baseType: !1095, size: 64, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!316, !344, !316, !316, !316, !316}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !972, file: !716, line: 398, baseType: !316, size: 64, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !972, file: !716, line: 399, baseType: !316, size: 64, offset: 320)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !972, file: !716, line: 405, baseType: !316, size: 64, offset: 384)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !972, file: !716, line: 406, baseType: !316, size: 64, offset: 448)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !972, file: !716, line: 407, baseType: !1103, size: 64, offset: 512)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !706, line: 286, baseType: !1105)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !706, line: 286, size: 64, elements: !1106)
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1105, file: !706, line: 286, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !991, line: 18, baseType: !316)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !972, file: !716, line: 416, baseType: !741, size: 32, offset: 576)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !972, file: !716, line: 428, baseType: !741, size: 32, offset: 608)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !972, file: !716, line: 437, baseType: !741, size: 32, offset: 640)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !972, file: !716, line: 447, baseType: !741, size: 32, offset: 672)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !972, file: !716, line: 450, baseType: !765, size: 64, offset: 704)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !972, file: !716, line: 452, baseType: !167, size: 32, offset: 768)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !972, file: !716, line: 454, baseType: !225, offset: 800)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !972, file: !716, line: 457, baseType: !761, size: 256, offset: 832)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !972, file: !716, line: 459, baseType: !155, size: 128, offset: 1088)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !972, file: !716, line: 466, baseType: !316, size: 64, offset: 1216)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !972, file: !716, line: 467, baseType: !316, size: 64, offset: 1280)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !972, file: !716, line: 469, baseType: !316, size: 64, offset: 1344)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !972, file: !716, line: 470, baseType: !316, size: 64, offset: 1408)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !972, file: !716, line: 471, baseType: !767, size: 64, offset: 1472)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !972, file: !716, line: 472, baseType: !316, size: 64, offset: 1536)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !972, file: !716, line: 473, baseType: !316, size: 64, offset: 1600)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !972, file: !716, line: 474, baseType: !316, size: 64, offset: 1664)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !972, file: !716, line: 475, baseType: !316, size: 64, offset: 1728)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !972, file: !716, line: 477, baseType: !225, offset: 1792)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !972, file: !716, line: 478, baseType: !316, size: 64, offset: 1792)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !972, file: !716, line: 478, baseType: !316, size: 64, offset: 1856)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !972, file: !716, line: 478, baseType: !316, size: 64, offset: 1920)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !972, file: !716, line: 478, baseType: !316, size: 64, offset: 1984)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !972, file: !716, line: 479, baseType: !316, size: 64, offset: 2048)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !972, file: !716, line: 479, baseType: !316, size: 64, offset: 2112)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !972, file: !716, line: 479, baseType: !316, size: 64, offset: 2176)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !972, file: !716, line: 480, baseType: !316, size: 64, offset: 2240)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !972, file: !716, line: 480, baseType: !316, size: 64, offset: 2304)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !972, file: !716, line: 480, baseType: !316, size: 64, offset: 2368)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !972, file: !716, line: 480, baseType: !316, size: 64, offset: 2432)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !972, file: !716, line: 482, baseType: !1140, size: 2816, offset: 2496)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 2816, elements: !1141)
!1141 = !{!1142}
!1142 = !DISubrange(count: 44)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !972, file: !716, line: 488, baseType: !1144, size: 256, offset: 5312)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1145, line: 60, size: 256, elements: !1146)
!1145 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1146 = !{!1147}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1144, file: !1145, line: 61, baseType: !1148, size: 256)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !765, size: 256, elements: !1149)
!1149 = !{!1150}
!1150 = !DISubrange(count: 4)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !972, file: !716, line: 490, baseType: !1152, size: 64, offset: 5568)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !716, line: 490, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !972, file: !716, line: 493, baseType: !1155, size: 896, offset: 5632)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1156, line: 53, baseType: !1157)
!1156 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1156, line: 13, size: 896, elements: !1158)
!1158 = !{!1159, !1160, !1161, !1162, !1165, !1166, !1173, !1174, !1194, !1195, !1196}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1157, file: !1156, line: 18, baseType: !413, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1157, file: !1156, line: 28, baseType: !767, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1157, file: !1156, line: 31, baseType: !761, size: 256, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1157, file: !1156, line: 32, baseType: !1163, size: 64, offset: 384)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1156, line: 32, flags: DIFlagFwdDecl)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1157, file: !1156, line: 37, baseType: !308, size: 16, offset: 448)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1157, file: !1156, line: 40, baseType: !1167, size: 192, offset: 512)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1168, line: 53, size: 192, elements: !1169)
!1168 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1169 = !{!1170, !1171, !1172}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1167, file: !1168, line: 54, baseType: !765, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1167, file: !1168, line: 55, baseType: !225, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1167, file: !1168, line: 59, baseType: !155, size: 128, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1157, file: !1156, line: 41, baseType: !150, size: 64, offset: 704)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1157, file: !1156, line: 42, baseType: !1175, size: 64, offset: 768)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1177)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1178, line: 13, size: 896, elements: !1179)
!1178 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1179 = !{!1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1177, file: !1178, line: 14, baseType: !150, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1177, file: !1178, line: 15, baseType: !316, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1177, file: !1178, line: 17, baseType: !316, size: 64, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1177, file: !1178, line: 17, baseType: !316, size: 64, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1177, file: !1178, line: 19, baseType: !301, size: 64, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1177, file: !1178, line: 21, baseType: !301, size: 64, offset: 320)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1177, file: !1178, line: 22, baseType: !301, size: 64, offset: 384)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1177, file: !1178, line: 23, baseType: !301, size: 64, offset: 448)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1177, file: !1178, line: 24, baseType: !301, size: 64, offset: 512)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1177, file: !1178, line: 25, baseType: !301, size: 64, offset: 576)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1177, file: !1178, line: 26, baseType: !301, size: 64, offset: 640)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1177, file: !1178, line: 27, baseType: !301, size: 64, offset: 704)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1177, file: !1178, line: 28, baseType: !301, size: 64, offset: 768)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1177, file: !1178, line: 29, baseType: !301, size: 64, offset: 832)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1157, file: !1156, line: 44, baseType: !741, size: 32, offset: 832)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1157, file: !1156, line: 50, baseType: !853, size: 16, offset: 864)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1157, file: !1156, line: 51, baseType: !1197, size: 16, offset: 880)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !408, line: 18, baseType: !1198)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !410, line: 23, baseType: !1199)
!1199 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !972, file: !716, line: 495, baseType: !316, size: 64, offset: 6528)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !972, file: !716, line: 497, baseType: !1202, size: 64, offset: 6592)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !716, line: 381, size: 384, elements: !1204)
!1204 = !{!1205, !1206, !2306}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1203, file: !716, line: 382, baseType: !741, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1203, file: !716, line: 383, baseType: !1207, size: 128, offset: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !716, line: 376, size: 128, elements: !1208)
!1208 = !{!1209, !2304}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1207, file: !716, line: 377, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1212, line: 640, size: 48640, elements: !1213)
!1212 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1213 = !{!1214, !1220, !1222, !1223, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1240, !1258, !1269, !1354, !1355, !1356, !1367, !1368, !1370, !1371, !1372, !1373, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1452, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1490, !1492, !1493, !1494, !1506, !1507, !1508, !1509, !1510, !1511, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1535, !1540, !1724, !1725, !1726, !1727, !1731, !1734, !1737, !1740, !1743, !1747, !1848, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1894, !1895, !1896, !1897, !1898, !1903, !1904, !1905, !1908, !1909, !1912, !1915, !1918, !1921, !1964, !1967, !1968, !2047, !2048, !2051, !2052, !2055, !2056, !2057, !2061, !2062, !2063, !2076, !2077, !2078, !2088, !2093, !2096, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1211, file: !1212, line: 646, baseType: !1215, size: 128)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1216, line: 56, size: 128, elements: !1217)
!1216 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1215, file: !1216, line: 57, baseType: !316, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1215, file: !1216, line: 58, baseType: !407, size: 32, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1211, file: !1212, line: 649, baseType: !1221, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !301)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1211, file: !1212, line: 657, baseType: !150, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1211, file: !1212, line: 658, baseType: !1224, size: 32, offset: 256)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1225, line: 113, baseType: !1226)
!1225 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1225, line: 111, size: 32, elements: !1227)
!1227 = !{!1228}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1226, file: !1225, line: 112, baseType: !741, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1211, file: !1212, line: 660, baseType: !7, size: 32, offset: 288)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1211, file: !1212, line: 661, baseType: !7, size: 32, offset: 320)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1211, file: !1212, line: 684, baseType: !167, size: 32, offset: 352)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1211, file: !1212, line: 686, baseType: !167, size: 32, offset: 384)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1211, file: !1212, line: 687, baseType: !167, size: 32, offset: 416)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1211, file: !1212, line: 688, baseType: !167, size: 32, offset: 448)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1211, file: !1212, line: 689, baseType: !7, size: 32, offset: 480)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1211, file: !1212, line: 691, baseType: !1237, size: 64, offset: 512)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1239)
!1239 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1212, line: 691, flags: DIFlagFwdDecl)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1211, file: !1212, line: 692, baseType: !1241, size: 832, offset: 576)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1212, line: 451, size: 832, elements: !1242)
!1242 = !{!1243, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1241, file: !1212, line: 453, baseType: !1244, size: 128)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1212, line: 325, size: 128, elements: !1245)
!1245 = !{!1246, !1247}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1244, file: !1212, line: 326, baseType: !316, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1244, file: !1212, line: 327, baseType: !407, size: 32, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1241, file: !1212, line: 454, baseType: !754, size: 192, align: 64, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1241, file: !1212, line: 455, baseType: !155, size: 128, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1241, file: !1212, line: 456, baseType: !7, size: 32, offset: 448)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1241, file: !1212, line: 458, baseType: !413, size: 64, offset: 512)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1241, file: !1212, line: 459, baseType: !413, size: 64, offset: 576)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1241, file: !1212, line: 460, baseType: !413, size: 64, offset: 640)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1241, file: !1212, line: 461, baseType: !413, size: 64, offset: 704)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1241, file: !1212, line: 463, baseType: !413, size: 64, offset: 768)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1241, file: !1212, line: 465, baseType: !1257, offset: 832)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1212, line: 415, elements: !239)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1211, file: !1212, line: 693, baseType: !1259, size: 384, offset: 1408)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1212, line: 489, size: 384, elements: !1260)
!1260 = !{!1261, !1262, !1263, !1264, !1265, !1266, !1267}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1259, file: !1212, line: 490, baseType: !155, size: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1259, file: !1212, line: 491, baseType: !316, size: 64, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1259, file: !1212, line: 492, baseType: !316, size: 64, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1259, file: !1212, line: 493, baseType: !7, size: 32, offset: 256)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1259, file: !1212, line: 494, baseType: !308, size: 16, offset: 288)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1259, file: !1212, line: 495, baseType: !308, size: 16, offset: 304)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1259, file: !1212, line: 497, baseType: !1268, size: 64, offset: 320)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1211, file: !1212, line: 697, baseType: !1270, size: 1792, offset: 1792)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1212, line: 507, size: 1792, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1351, !1352}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1270, file: !1212, line: 508, baseType: !754, size: 192, align: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1270, file: !1212, line: 515, baseType: !413, size: 64, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1270, file: !1212, line: 516, baseType: !413, size: 64, offset: 256)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1270, file: !1212, line: 517, baseType: !413, size: 64, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1270, file: !1212, line: 518, baseType: !413, size: 64, offset: 384)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1270, file: !1212, line: 519, baseType: !413, size: 64, offset: 448)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1270, file: !1212, line: 526, baseType: !771, size: 64, offset: 512)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1270, file: !1212, line: 527, baseType: !413, size: 64, offset: 576)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1270, file: !1212, line: 528, baseType: !7, size: 32, offset: 640)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1270, file: !1212, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1270, file: !1212, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1270, file: !1212, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1270, file: !1212, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1270, file: !1212, line: 563, baseType: !1286, size: 512, offset: 704)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1287)
!1287 = !{!1288, !1296, !1297, !1302, !1345, !1348, !1349, !1350}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1286, file: !20, line: 119, baseType: !1289, size: 256)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1290, line: 9, size: 256, elements: !1291)
!1290 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1291 = !{!1292, !1293}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1289, file: !1290, line: 10, baseType: !754, size: 192, align: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1289, file: !1290, line: 11, baseType: !1294, size: 64, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1295, line: 29, baseType: !771)
!1295 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1286, file: !20, line: 120, baseType: !1294, size: 64, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1286, file: !20, line: 121, baseType: !1298, size: 64, offset: 320)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!19, !1301}
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1286, file: !20, line: 122, baseType: !1303, size: 64, offset: 384)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1305)
!1305 = !{!1306, !1326, !1327, !1330, !1335, !1336, !1340, !1344}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1304, file: !20, line: 160, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1309)
!1309 = !{!1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1308, file: !20, line: 215, baseType: !774)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1308, file: !20, line: 216, baseType: !7, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1308, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1308, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1308, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1308, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1308, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1308, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1308, file: !20, line: 233, baseType: !1294, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1308, file: !20, line: 234, baseType: !1301, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1308, file: !20, line: 235, baseType: !1294, size: 64, offset: 256)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1308, file: !20, line: 236, baseType: !1301, size: 64, offset: 320)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1308, file: !20, line: 237, baseType: !1323, size: 4096, offset: 512)
!1323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1304, size: 4096, elements: !1324)
!1324 = !{!1325}
!1325 = !DISubrange(count: 8)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1304, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1304, file: !20, line: 162, baseType: !1328, size: 32, offset: 96)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !156, line: 27, baseType: !1329)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !299, line: 96, baseType: !167)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1304, file: !20, line: 163, baseType: !1331, size: 32, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !380, line: 276, baseType: !1332)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !380, line: 276, size: 32, elements: !1333)
!1333 = !{!1334}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1332, file: !380, line: 276, baseType: !384, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1304, file: !20, line: 164, baseType: !1301, size: 64, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1304, file: !20, line: 165, baseType: !1337, size: 128, offset: 256)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1290, line: 14, size: 128, elements: !1338)
!1338 = !{!1339}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1337, file: !1290, line: 15, baseType: !746, size: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1304, file: !20, line: 166, baseType: !1341, size: 64, offset: 384)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!1294}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1304, file: !20, line: 167, baseType: !1294, size: 64, offset: 448)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1286, file: !20, line: 123, baseType: !1346, size: 8, offset: 448)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !408, line: 17, baseType: !1347)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !410, line: 21, baseType: !419)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1286, file: !20, line: 124, baseType: !1346, size: 8, offset: 456)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1286, file: !20, line: 125, baseType: !1346, size: 8, offset: 464)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1286, file: !20, line: 126, baseType: !1346, size: 8, offset: 472)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1270, file: !1212, line: 572, baseType: !1286, size: 512, offset: 1216)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1270, file: !1212, line: 580, baseType: !1353, size: 64, offset: 1728)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1211, file: !1212, line: 721, baseType: !7, size: 32, offset: 3584)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1211, file: !1212, line: 722, baseType: !167, size: 32, offset: 3616)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1211, file: !1212, line: 723, baseType: !1357, size: 64, offset: 3648)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1359)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1360, line: 17, baseType: !1361)
!1360 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1360, line: 17, size: 64, elements: !1362)
!1362 = !{!1363}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1361, file: !1360, line: 17, baseType: !1364, size: 64)
!1364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 64, elements: !1365)
!1365 = !{!1366}
!1366 = !DISubrange(count: 1)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1211, file: !1212, line: 724, baseType: !1359, size: 64, offset: 3712)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1211, file: !1212, line: 749, baseType: !1369, offset: 3776)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1212, line: 290, elements: !239)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1211, file: !1212, line: 751, baseType: !155, size: 128, offset: 3776)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1211, file: !1212, line: 757, baseType: !968, size: 64, offset: 3904)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1211, file: !1212, line: 758, baseType: !968, size: 64, offset: 3968)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1211, file: !1212, line: 761, baseType: !1374, size: 320, offset: 4032)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1145, line: 34, size: 320, elements: !1375)
!1375 = !{!1376, !1377}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1374, file: !1145, line: 35, baseType: !413, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1374, file: !1145, line: 36, baseType: !1378, size: 256, offset: 64)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !975, size: 256, elements: !1149)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1211, file: !1212, line: 766, baseType: !167, size: 32, offset: 4352)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1211, file: !1212, line: 767, baseType: !167, size: 32, offset: 4384)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1211, file: !1212, line: 768, baseType: !167, size: 32, offset: 4416)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1211, file: !1212, line: 770, baseType: !167, size: 32, offset: 4448)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1211, file: !1212, line: 772, baseType: !316, size: 64, offset: 4480)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1211, file: !1212, line: 775, baseType: !7, size: 32, offset: 4544)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1211, file: !1212, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1211, file: !1212, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1211, file: !1212, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1211, file: !1212, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1211, file: !1212, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1211, file: !1212, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1211, file: !1212, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1211, file: !1212, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1211, file: !1212, line: 831, baseType: !316, size: 64, offset: 4672)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1211, file: !1212, line: 833, baseType: !1395, size: 384, offset: 4736)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1396)
!1396 = !{!1397, !1402}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1395, file: !25, line: 26, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!301, !1401}
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, scope: !1395, file: !25, line: 27, baseType: !1403, size: 320, offset: 64)
!1403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1395, file: !25, line: 27, size: 320, elements: !1404)
!1404 = !{!1405, !1415, !1442}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1403, file: !25, line: 36, baseType: !1406, size: 320)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1403, file: !25, line: 29, size: 320, elements: !1407)
!1407 = !{!1408, !1410, !1411, !1412, !1413, !1414}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1406, file: !25, line: 30, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1406, file: !25, line: 31, baseType: !407, size: 32, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1406, file: !25, line: 32, baseType: !407, size: 32, offset: 96)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1406, file: !25, line: 33, baseType: !407, size: 32, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1406, file: !25, line: 34, baseType: !413, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1406, file: !25, line: 35, baseType: !1409, size: 64, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1403, file: !25, line: 46, baseType: !1416, size: 192)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1403, file: !25, line: 38, size: 192, elements: !1417)
!1417 = !{!1418, !1419, !1420, !1441}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1416, file: !25, line: 39, baseType: !1328, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1416, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, scope: !1416, file: !25, line: 41, baseType: !1421, size: 64, offset: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1416, file: !25, line: 41, size: 64, elements: !1422)
!1422 = !{!1423, !1431}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1421, file: !25, line: 42, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1426, line: 7, size: 128, elements: !1427)
!1426 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1427 = !{!1428, !1430}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1425, file: !1426, line: 8, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !299, line: 93, baseType: !523)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1425, file: !1426, line: 9, baseType: !523, size: 64, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1421, file: !25, line: 43, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1434, line: 7, size: 64, elements: !1435)
!1434 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1435 = !{!1436, !1440}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1433, file: !1434, line: 8, baseType: !1437, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1434, line: 5, baseType: !1438)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !408, line: 20, baseType: !1439)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !410, line: 26, baseType: !167)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1433, file: !1434, line: 9, baseType: !1438, size: 32, offset: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1416, file: !25, line: 45, baseType: !413, size: 64, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1403, file: !25, line: 54, baseType: !1443, size: 256)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1403, file: !25, line: 48, size: 256, elements: !1444)
!1444 = !{!1445, !1448, !1449, !1450, !1451}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1443, file: !25, line: 49, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1443, file: !25, line: 50, baseType: !167, size: 32, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1443, file: !25, line: 51, baseType: !167, size: 32, offset: 96)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1443, file: !25, line: 52, baseType: !316, size: 64, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1443, file: !25, line: 53, baseType: !316, size: 64, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1211, file: !1212, line: 835, baseType: !1453, size: 32, offset: 5120)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !156, line: 22, baseType: !1454)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !299, line: 28, baseType: !167)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1211, file: !1212, line: 836, baseType: !1453, size: 32, offset: 5152)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1211, file: !1212, line: 840, baseType: !316, size: 64, offset: 5184)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1211, file: !1212, line: 849, baseType: !1210, size: 64, offset: 5248)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1211, file: !1212, line: 852, baseType: !1210, size: 64, offset: 5312)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1211, file: !1212, line: 857, baseType: !155, size: 128, offset: 5376)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1211, file: !1212, line: 858, baseType: !155, size: 128, offset: 5504)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1211, file: !1212, line: 859, baseType: !1210, size: 64, offset: 5632)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1211, file: !1212, line: 867, baseType: !155, size: 128, offset: 5696)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1211, file: !1212, line: 868, baseType: !155, size: 128, offset: 5824)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1211, file: !1212, line: 871, baseType: !1465, size: 64, offset: 5952)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1467)
!1467 = !{!1468, !1469, !1470, !1471, !1473, !1474, !1481, !1482}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1466, file: !53, line: 61, baseType: !1224, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1466, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1466, file: !53, line: 63, baseType: !225, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1466, file: !53, line: 65, baseType: !1472, size: 256, offset: 64)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 256, elements: !1149)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1466, file: !53, line: 66, baseType: !628, size: 64, offset: 320)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1466, file: !53, line: 68, baseType: !1475, size: 128, offset: 384)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1476, line: 40, baseType: !1477)
!1476 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1476, line: 36, size: 128, elements: !1478)
!1478 = !{!1479, !1480}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1477, file: !1476, line: 37, baseType: !225)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1477, file: !1476, line: 38, baseType: !155, size: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1466, file: !53, line: 69, baseType: !357, size: 128, align: 64, offset: 512)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1466, file: !53, line: 70, baseType: !1483, size: 128, offset: 640)
!1483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1484, size: 128, elements: !1365)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1485)
!1485 = !{!1486, !1487}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1484, file: !53, line: 55, baseType: !167, size: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1484, file: !53, line: 56, baseType: !1488, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1211, file: !1212, line: 872, baseType: !1491, size: 512, offset: 6016)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 512, elements: !1149)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1211, file: !1212, line: 873, baseType: !155, size: 128, offset: 6528)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1211, file: !1212, line: 874, baseType: !155, size: 128, offset: 6656)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1211, file: !1212, line: 876, baseType: !1495, size: 64, offset: 6784)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1497, line: 26, size: 192, elements: !1498)
!1497 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1498 = !{!1499, !1500}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1496, file: !1497, line: 27, baseType: !7, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1496, file: !1497, line: 28, baseType: !1501, size: 128, offset: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1502, line: 43, size: 128, elements: !1503)
!1502 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1503 = !{!1504, !1505}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1501, file: !1502, line: 44, baseType: !774)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1501, file: !1502, line: 45, baseType: !155, size: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1211, file: !1212, line: 879, baseType: !698, size: 64, offset: 6848)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1211, file: !1212, line: 882, baseType: !698, size: 64, offset: 6912)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1211, file: !1212, line: 884, baseType: !413, size: 64, offset: 6976)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1211, file: !1212, line: 885, baseType: !413, size: 64, offset: 7040)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1211, file: !1212, line: 890, baseType: !413, size: 64, offset: 7104)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1211, file: !1212, line: 891, baseType: !1512, size: 128, offset: 7168)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1212, line: 242, size: 128, elements: !1513)
!1513 = !{!1514, !1515, !1516}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1512, file: !1212, line: 244, baseType: !413, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1512, file: !1212, line: 245, baseType: !413, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1512, file: !1212, line: 246, baseType: !774, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1211, file: !1212, line: 900, baseType: !316, size: 64, offset: 7296)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1211, file: !1212, line: 901, baseType: !316, size: 64, offset: 7360)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1211, file: !1212, line: 904, baseType: !413, size: 64, offset: 7424)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1211, file: !1212, line: 907, baseType: !413, size: 64, offset: 7488)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1211, file: !1212, line: 910, baseType: !316, size: 64, offset: 7552)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1211, file: !1212, line: 911, baseType: !316, size: 64, offset: 7616)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1211, file: !1212, line: 914, baseType: !1524, size: 640, offset: 7680)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1525, line: 123, size: 640, elements: !1526)
!1525 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1526 = !{!1527, !1533, !1534}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1524, file: !1525, line: 124, baseType: !1528, size: 576)
!1528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1529, size: 576, elements: !267)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1525, line: 108, size: 192, elements: !1530)
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1529, file: !1525, line: 109, baseType: !413, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1529, file: !1525, line: 110, baseType: !1337, size: 128, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1524, file: !1525, line: 125, baseType: !7, size: 32, offset: 576)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1524, file: !1525, line: 126, baseType: !7, size: 32, offset: 608)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1211, file: !1212, line: 917, baseType: !1536, size: 192, offset: 8320)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1525, line: 134, size: 192, elements: !1537)
!1537 = !{!1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1536, file: !1525, line: 135, baseType: !357, size: 128, align: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1536, file: !1525, line: 136, baseType: !7, size: 32, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1211, file: !1212, line: 923, baseType: !1541, size: 64, offset: 8512)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1543)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1544, line: 111, size: 1280, elements: !1545)
!1544 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1545 = !{!1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1565, !1566, !1567, !1568, !1569, !1570, !1677, !1678, !1679, !1680, !1706, !1709, !1719}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1543, file: !1544, line: 112, baseType: !741, size: 32)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1543, file: !1544, line: 120, baseType: !427, size: 32, offset: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1543, file: !1544, line: 121, baseType: !435, size: 32, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1543, file: !1544, line: 122, baseType: !427, size: 32, offset: 96)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1543, file: !1544, line: 123, baseType: !435, size: 32, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1543, file: !1544, line: 124, baseType: !427, size: 32, offset: 160)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1543, file: !1544, line: 125, baseType: !435, size: 32, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1543, file: !1544, line: 126, baseType: !427, size: 32, offset: 224)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1543, file: !1544, line: 127, baseType: !435, size: 32, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1543, file: !1544, line: 128, baseType: !7, size: 32, offset: 288)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1543, file: !1544, line: 129, baseType: !1557, size: 64, offset: 320)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1558, line: 26, baseType: !1559)
!1558 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1558, line: 24, size: 64, elements: !1560)
!1560 = !{!1561}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1559, file: !1558, line: 25, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 64, elements: !1563)
!1563 = !{!1564}
!1564 = !DISubrange(count: 2)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1543, file: !1544, line: 130, baseType: !1557, size: 64, offset: 384)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1543, file: !1544, line: 131, baseType: !1557, size: 64, offset: 448)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1543, file: !1544, line: 132, baseType: !1557, size: 64, offset: 512)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1543, file: !1544, line: 133, baseType: !1557, size: 64, offset: 576)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1543, file: !1544, line: 135, baseType: !419, size: 8, offset: 640)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1543, file: !1544, line: 137, baseType: !1571, size: 64, offset: 704)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1573, line: 189, size: 1664, elements: !1574)
!1573 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1574 = !{!1575, !1576, !1579, !1584, !1585, !1588, !1589, !1594, !1595, !1596, !1597, !1599, !1600, !1601, !1602, !1603, !1641, !1662}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1572, file: !1573, line: 190, baseType: !1224, size: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1572, file: !1573, line: 191, baseType: !1577, size: 32, offset: 32)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1573, line: 28, baseType: !1578)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !156, line: 98, baseType: !1438)
!1579 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !1573, line: 192, baseType: !1580, size: 192, offset: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1572, file: !1573, line: 192, size: 192, elements: !1581)
!1581 = !{!1582, !1583}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1580, file: !1573, line: 193, baseType: !155, size: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1580, file: !1573, line: 194, baseType: !754, size: 192, align: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1572, file: !1573, line: 199, baseType: !761, size: 256, offset: 256)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1572, file: !1573, line: 200, baseType: !1586, size: 64, offset: 512)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1573, line: 200, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1572, file: !1573, line: 201, baseType: !150, size: 64, offset: 576)
!1589 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !1573, line: 202, baseType: !1590, size: 64, offset: 640)
!1590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1572, file: !1573, line: 202, size: 64, elements: !1591)
!1591 = !{!1592, !1593}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1590, file: !1573, line: 203, baseType: !529, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1590, file: !1573, line: 204, baseType: !529, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1572, file: !1573, line: 206, baseType: !529, size: 64, offset: 704)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1572, file: !1573, line: 207, baseType: !427, size: 32, offset: 768)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1572, file: !1573, line: 208, baseType: !435, size: 32, offset: 800)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1572, file: !1573, line: 209, baseType: !1598, size: 32, offset: 832)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1573, line: 31, baseType: !549)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1572, file: !1573, line: 210, baseType: !308, size: 16, offset: 864)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1572, file: !1573, line: 211, baseType: !308, size: 16, offset: 880)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1572, file: !1573, line: 215, baseType: !1199, size: 16, offset: 896)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1572, file: !1573, line: 222, baseType: !316, size: 64, offset: 960)
!1603 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !1573, line: 239, baseType: !1604, size: 320, offset: 1024)
!1604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1572, file: !1573, line: 239, size: 320, elements: !1605)
!1605 = !{!1606, !1633}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1604, file: !1573, line: 240, baseType: !1607, size: 320)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1573, line: 108, size: 320, elements: !1608)
!1608 = !{!1609, !1610, !1622, !1625, !1632}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1607, file: !1573, line: 110, baseType: !316, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, scope: !1607, file: !1573, line: 111, baseType: !1611, size: 64, offset: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1607, file: !1573, line: 111, size: 64, elements: !1612)
!1612 = !{!1613, !1621}
!1613 = !DIDerivedType(tag: DW_TAG_member, scope: !1611, file: !1573, line: 112, baseType: !1614, size: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1611, file: !1573, line: 112, size: 64, elements: !1615)
!1615 = !{!1616, !1617}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1614, file: !1573, line: 114, baseType: !853, size: 16)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1614, file: !1573, line: 115, baseType: !1618, size: 48, offset: 16)
!1618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 48, elements: !1619)
!1619 = !{!1620}
!1620 = !DISubrange(count: 6)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1611, file: !1573, line: 121, baseType: !316, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1607, file: !1573, line: 123, baseType: !1623, size: 64, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1573, line: 96, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1607, file: !1573, line: 124, baseType: !1626, size: 64, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1573, line: 102, size: 192, elements: !1628)
!1628 = !{!1629, !1630, !1631}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1627, file: !1573, line: 103, baseType: !357, size: 128, align: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1627, file: !1573, line: 104, baseType: !1224, size: 32, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1627, file: !1573, line: 105, baseType: !194, size: 8, offset: 160)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1607, file: !1573, line: 125, baseType: !213, size: 64, offset: 256)
!1633 = !DIDerivedType(tag: DW_TAG_member, scope: !1604, file: !1573, line: 241, baseType: !1634, size: 320)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1604, file: !1573, line: 241, size: 320, elements: !1635)
!1635 = !{!1636, !1637, !1638, !1639, !1640}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1634, file: !1573, line: 242, baseType: !316, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1634, file: !1573, line: 243, baseType: !316, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1634, file: !1573, line: 244, baseType: !1623, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1634, file: !1573, line: 245, baseType: !1626, size: 64, offset: 192)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1634, file: !1573, line: 246, baseType: !266, size: 64, offset: 256)
!1641 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !1573, line: 254, baseType: !1642, size: 256, offset: 1344)
!1642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1572, file: !1573, line: 254, size: 256, elements: !1643)
!1643 = !{!1644, !1650}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1642, file: !1573, line: 255, baseType: !1645, size: 256)
!1645 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1573, line: 128, size: 256, elements: !1646)
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1645, file: !1573, line: 129, baseType: !150, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1645, file: !1573, line: 130, baseType: !1649, size: 256)
!1649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 256, elements: !1149)
!1650 = !DIDerivedType(tag: DW_TAG_member, scope: !1642, file: !1573, line: 256, baseType: !1651, size: 256)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1642, file: !1573, line: 256, size: 256, elements: !1652)
!1652 = !{!1653, !1654}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1651, file: !1573, line: 258, baseType: !155, size: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1651, file: !1573, line: 259, baseType: !1655, size: 128, offset: 128)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1656, line: 22, size: 128, elements: !1657)
!1656 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1657 = !{!1658, !1661}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1655, file: !1656, line: 23, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1656, line: 23, flags: DIFlagFwdDecl)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1655, file: !1656, line: 24, baseType: !316, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1572, file: !1573, line: 274, baseType: !1663, size: 64, offset: 1600)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1573, line: 170, size: 192, elements: !1665)
!1665 = !{!1666, !1675, !1676}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1664, file: !1573, line: 171, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1573, line: 165, baseType: !1668)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!167, !1571, !1671, !1673, !1571}
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1624)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1645)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1664, file: !1573, line: 172, baseType: !1571, size: 64, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1664, file: !1573, line: 173, baseType: !1623, size: 64, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1543, file: !1544, line: 138, baseType: !1571, size: 64, offset: 768)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1543, file: !1544, line: 139, baseType: !1571, size: 64, offset: 832)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1543, file: !1544, line: 140, baseType: !1571, size: 64, offset: 896)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1543, file: !1544, line: 145, baseType: !1681, size: 64, offset: 960)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1683, line: 13, size: 896, elements: !1684)
!1683 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1684 = !{!1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1682, file: !1683, line: 14, baseType: !1224, size: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1682, file: !1683, line: 15, baseType: !741, size: 32, offset: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1682, file: !1683, line: 16, baseType: !741, size: 32, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1682, file: !1683, line: 21, baseType: !765, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1682, file: !1683, line: 27, baseType: !316, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1682, file: !1683, line: 28, baseType: !316, size: 64, offset: 256)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1682, file: !1683, line: 29, baseType: !765, size: 64, offset: 320)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1682, file: !1683, line: 32, baseType: !632, size: 128, offset: 384)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1682, file: !1683, line: 33, baseType: !427, size: 32, offset: 512)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1682, file: !1683, line: 37, baseType: !765, size: 64, offset: 576)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1682, file: !1683, line: 44, baseType: !1696, size: 256, offset: 640)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1697, line: 15, size: 256, elements: !1698)
!1697 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1698 = !{!1699, !1700, !1701, !1702, !1703, !1704, !1705}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1696, file: !1697, line: 16, baseType: !774)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1696, file: !1697, line: 18, baseType: !167, size: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1696, file: !1697, line: 19, baseType: !167, size: 32, offset: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1696, file: !1697, line: 20, baseType: !167, size: 32, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1696, file: !1697, line: 21, baseType: !167, size: 32, offset: 96)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1696, file: !1697, line: 22, baseType: !316, size: 64, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1696, file: !1697, line: 23, baseType: !316, size: 64, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1543, file: !1544, line: 146, baseType: !1707, size: 64, offset: 1024)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !428, line: 18, flags: DIFlagFwdDecl)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1543, file: !1544, line: 147, baseType: !1710, size: 64, offset: 1088)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1544, line: 25, size: 64, elements: !1712)
!1712 = !{!1713, !1714, !1715}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1711, file: !1544, line: 26, baseType: !741, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1711, file: !1544, line: 27, baseType: !167, size: 32, offset: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1711, file: !1544, line: 28, baseType: !1716, offset: 64)
!1716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, elements: !1717)
!1717 = !{!1718}
!1718 = !DISubrange(count: 0)
!1719 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !1544, line: 149, baseType: !1720, size: 128, offset: 1152)
!1720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1543, file: !1544, line: 149, size: 128, elements: !1721)
!1721 = !{!1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1720, file: !1544, line: 150, baseType: !167, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1720, file: !1544, line: 151, baseType: !357, size: 128, align: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1211, file: !1212, line: 926, baseType: !1541, size: 64, offset: 8576)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1211, file: !1212, line: 929, baseType: !1541, size: 64, offset: 8640)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1211, file: !1212, line: 933, baseType: !1571, size: 64, offset: 8704)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1211, file: !1212, line: 943, baseType: !1728, size: 128, offset: 8768)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 128, elements: !1729)
!1729 = !{!1730}
!1730 = !DISubrange(count: 16)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1211, file: !1212, line: 945, baseType: !1732, size: 64, offset: 8896)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1212, line: 49, flags: DIFlagFwdDecl)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1211, file: !1212, line: 956, baseType: !1735, size: 64, offset: 8960)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1212, line: 45, flags: DIFlagFwdDecl)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1211, file: !1212, line: 959, baseType: !1738, size: 64, offset: 9024)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1212, line: 959, flags: DIFlagFwdDecl)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1211, file: !1212, line: 962, baseType: !1741, size: 64, offset: 9088)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1212, line: 66, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1211, file: !1212, line: 966, baseType: !1744, size: 64, offset: 9152)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1746, line: 35, flags: DIFlagFwdDecl)
!1746 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1211, file: !1212, line: 969, baseType: !1748, size: 64, offset: 9216)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1750, line: 82, size: 7296, elements: !1751)
!1750 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1751 = !{!1752, !1753, !1754, !1755, !1756, !1757, !1758, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1787, !1796, !1797, !1799, !1800, !1801, !1804, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1834, !1835, !1842, !1843, !1844, !1845, !1846, !1847}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1749, file: !1750, line: 83, baseType: !1224, size: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1749, file: !1750, line: 84, baseType: !741, size: 32, offset: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1749, file: !1750, line: 85, baseType: !167, size: 32, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1749, file: !1750, line: 86, baseType: !155, size: 128, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1749, file: !1750, line: 88, baseType: !1475, size: 128, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1749, file: !1750, line: 91, baseType: !1210, size: 64, offset: 384)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1749, file: !1750, line: 94, baseType: !1759, size: 192, offset: 448)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1760, line: 30, size: 192, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1761 = !{!1762, !1763}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1759, file: !1760, line: 31, baseType: !155, size: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1759, file: !1760, line: 32, baseType: !1764, size: 64, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1765, line: 25, baseType: !1766)
!1765 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1765, line: 23, size: 64, elements: !1767)
!1767 = !{!1768}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1766, file: !1765, line: 24, baseType: !1364, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1749, file: !1750, line: 97, baseType: !628, size: 64, offset: 640)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1749, file: !1750, line: 100, baseType: !167, size: 32, offset: 704)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1749, file: !1750, line: 106, baseType: !167, size: 32, offset: 736)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1749, file: !1750, line: 107, baseType: !1210, size: 64, offset: 768)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1749, file: !1750, line: 110, baseType: !167, size: 32, offset: 832)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1749, file: !1750, line: 111, baseType: !7, size: 32, offset: 864)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1749, file: !1750, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1749, file: !1750, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1749, file: !1750, line: 128, baseType: !167, size: 32, offset: 928)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1749, file: !1750, line: 129, baseType: !155, size: 128, offset: 960)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1749, file: !1750, line: 132, baseType: !1286, size: 512, offset: 1088)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1749, file: !1750, line: 133, baseType: !1294, size: 64, offset: 1600)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1749, file: !1750, line: 140, baseType: !1782, size: 256, offset: 1664)
!1782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1783, size: 256, elements: !1563)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1750, line: 38, size: 128, elements: !1784)
!1784 = !{!1785, !1786}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1783, file: !1750, line: 39, baseType: !413, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1783, file: !1750, line: 40, baseType: !413, size: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1749, file: !1750, line: 146, baseType: !1788, size: 192, offset: 1920)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1750, line: 66, size: 192, elements: !1789)
!1789 = !{!1790}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1788, file: !1750, line: 67, baseType: !1791, size: 192)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1750, line: 47, size: 192, elements: !1792)
!1792 = !{!1793, !1794, !1795}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1791, file: !1750, line: 48, baseType: !767, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1791, file: !1750, line: 49, baseType: !767, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1791, file: !1750, line: 50, baseType: !767, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1749, file: !1750, line: 150, baseType: !1524, size: 640, offset: 2112)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1749, file: !1750, line: 153, baseType: !1798, size: 256, offset: 2752)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1465, size: 256, elements: !1149)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1749, file: !1750, line: 159, baseType: !1465, size: 64, offset: 3008)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1749, file: !1750, line: 162, baseType: !167, size: 32, offset: 3072)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1749, file: !1750, line: 164, baseType: !1802, size: 64, offset: 3136)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1750, line: 164, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1749, file: !1750, line: 175, baseType: !1805, size: 32, offset: 3200)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !380, line: 805, baseType: !1806)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !380, line: 798, size: 32, elements: !1807)
!1807 = !{!1808, !1809}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1806, file: !380, line: 803, baseType: !379, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1806, file: !380, line: 804, baseType: !225, offset: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1749, file: !1750, line: 176, baseType: !413, size: 64, offset: 3264)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1749, file: !1750, line: 176, baseType: !413, size: 64, offset: 3328)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1749, file: !1750, line: 176, baseType: !413, size: 64, offset: 3392)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1749, file: !1750, line: 176, baseType: !413, size: 64, offset: 3456)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1749, file: !1750, line: 177, baseType: !413, size: 64, offset: 3520)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1749, file: !1750, line: 178, baseType: !413, size: 64, offset: 3584)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1749, file: !1750, line: 179, baseType: !1512, size: 128, offset: 3648)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1749, file: !1750, line: 180, baseType: !316, size: 64, offset: 3776)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1749, file: !1750, line: 180, baseType: !316, size: 64, offset: 3840)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1749, file: !1750, line: 180, baseType: !316, size: 64, offset: 3904)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1749, file: !1750, line: 180, baseType: !316, size: 64, offset: 3968)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1749, file: !1750, line: 181, baseType: !316, size: 64, offset: 4032)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1749, file: !1750, line: 181, baseType: !316, size: 64, offset: 4096)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1749, file: !1750, line: 181, baseType: !316, size: 64, offset: 4160)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1749, file: !1750, line: 181, baseType: !316, size: 64, offset: 4224)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1749, file: !1750, line: 182, baseType: !316, size: 64, offset: 4288)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1749, file: !1750, line: 182, baseType: !316, size: 64, offset: 4352)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1749, file: !1750, line: 182, baseType: !316, size: 64, offset: 4416)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1749, file: !1750, line: 182, baseType: !316, size: 64, offset: 4480)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1749, file: !1750, line: 183, baseType: !316, size: 64, offset: 4544)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1749, file: !1750, line: 183, baseType: !316, size: 64, offset: 4608)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1749, file: !1750, line: 184, baseType: !1832, offset: 4672)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1833, line: 12, elements: !239)
!1833 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1749, file: !1750, line: 192, baseType: !415, size: 64, offset: 4672)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1749, file: !1750, line: 203, baseType: !1836, size: 2048, offset: 4736)
!1836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1837, size: 2048, elements: !1729)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1838, line: 43, size: 128, elements: !1839)
!1838 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1837, file: !1838, line: 44, baseType: !315, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1837, file: !1838, line: 45, baseType: !315, size: 64, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1749, file: !1750, line: 220, baseType: !194, size: 8, offset: 6784)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1749, file: !1750, line: 221, baseType: !1199, size: 16, offset: 6800)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1749, file: !1750, line: 222, baseType: !1199, size: 16, offset: 6816)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1749, file: !1750, line: 224, baseType: !968, size: 64, offset: 6848)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1749, file: !1750, line: 227, baseType: !1167, size: 192, offset: 6912)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1749, file: !1750, line: 233, baseType: !1167, size: 192, offset: 7104)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1211, file: !1212, line: 970, baseType: !1849, size: 64, offset: 9280)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1750, line: 20, size: 16576, elements: !1851)
!1851 = !{!1852, !1853, !1854, !1855}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1850, file: !1750, line: 21, baseType: !225)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1850, file: !1750, line: 22, baseType: !1224, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1850, file: !1750, line: 23, baseType: !1475, size: 128, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1850, file: !1750, line: 24, baseType: !1856, size: 16384, offset: 192)
!1856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1857, size: 16384, elements: !271)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1760, line: 49, size: 256, elements: !1858)
!1858 = !{!1859}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1857, file: !1760, line: 50, baseType: !1860, size: 256)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1760, line: 35, size: 256, elements: !1861)
!1861 = !{!1862, !1869, !1870, !1876}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1860, file: !1760, line: 37, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1864, line: 19, baseType: !1865)
!1864 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1864, line: 18, baseType: !1867)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !167}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1860, file: !1760, line: 38, baseType: !316, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1860, file: !1760, line: 44, baseType: !1871, size: 64, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1864, line: 22, baseType: !1872)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1864, line: 21, baseType: !1874)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{null}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1860, file: !1760, line: 46, baseType: !1764, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1211, file: !1212, line: 971, baseType: !1764, size: 64, offset: 9344)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1211, file: !1212, line: 972, baseType: !1764, size: 64, offset: 9408)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1211, file: !1212, line: 974, baseType: !1764, size: 64, offset: 9472)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1211, file: !1212, line: 975, baseType: !1759, size: 192, offset: 9536)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1211, file: !1212, line: 976, baseType: !316, size: 64, offset: 9728)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1211, file: !1212, line: 977, baseType: !313, size: 64, offset: 9792)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1211, file: !1212, line: 978, baseType: !7, size: 32, offset: 9856)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1211, file: !1212, line: 980, baseType: !360, size: 64, offset: 9920)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1211, file: !1212, line: 989, baseType: !1886, size: 128, offset: 9984)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1887, line: 35, size: 128, elements: !1888)
!1887 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1888 = !{!1889, !1890, !1891}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1886, file: !1887, line: 36, baseType: !167, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1886, file: !1887, line: 37, baseType: !741, size: 32, offset: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1886, file: !1887, line: 38, baseType: !1892, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1887, line: 23, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1211, file: !1212, line: 992, baseType: !413, size: 64, offset: 10112)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1211, file: !1212, line: 993, baseType: !413, size: 64, offset: 10176)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1211, file: !1212, line: 996, baseType: !225, offset: 10240)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1211, file: !1212, line: 999, baseType: !774, offset: 10240)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1211, file: !1212, line: 1001, baseType: !1899, size: 64, offset: 10240)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1212, line: 636, size: 64, elements: !1900)
!1900 = !{!1901}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1899, file: !1212, line: 637, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1211, file: !1212, line: 1005, baseType: !746, size: 128, offset: 10304)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1211, file: !1212, line: 1007, baseType: !1210, size: 64, offset: 10432)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1211, file: !1212, line: 1009, baseType: !1906, size: 64, offset: 10496)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1212, line: 1009, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1211, file: !1212, line: 1043, baseType: !150, size: 64, offset: 10560)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1211, file: !1212, line: 1046, baseType: !1910, size: 64, offset: 10624)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1212, line: 41, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1211, file: !1212, line: 1050, baseType: !1913, size: 64, offset: 10688)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1212, line: 42, flags: DIFlagFwdDecl)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1211, file: !1212, line: 1054, baseType: !1916, size: 64, offset: 10752)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1212, line: 55, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1211, file: !1212, line: 1056, baseType: !1919, size: 64, offset: 10816)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1212, line: 40, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1211, file: !1212, line: 1058, baseType: !1922, size: 64, offset: 10880)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1924, line: 99, size: 704, elements: !1925)
!1924 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1925 = !{!1926, !1927, !1928, !1929, !1930, !1931, !1932, !1951, !1952}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1923, file: !1924, line: 100, baseType: !765, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1923, file: !1924, line: 101, baseType: !741, size: 32, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1923, file: !1924, line: 102, baseType: !741, size: 32, offset: 96)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1923, file: !1924, line: 105, baseType: !225, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1923, file: !1924, line: 107, baseType: !308, size: 16, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1923, file: !1924, line: 109, baseType: !732, size: 128, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1923, file: !1924, line: 110, baseType: !1933, size: 64, offset: 320)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1924, line: 73, size: 448, elements: !1935)
!1935 = !{!1936, !1939, !1940, !1945, !1950}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1934, file: !1924, line: 74, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1924, line: 74, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1934, file: !1924, line: 75, baseType: !1922, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, scope: !1934, file: !1924, line: 83, baseType: !1941, size: 128, offset: 128)
!1941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1934, file: !1924, line: 83, size: 128, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1941, file: !1924, line: 84, baseType: !155, size: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1941, file: !1924, line: 85, baseType: !929, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, scope: !1934, file: !1924, line: 87, baseType: !1946, size: 128, offset: 256)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1934, file: !1924, line: 87, size: 128, elements: !1947)
!1947 = !{!1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1946, file: !1924, line: 88, baseType: !632, size: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1946, file: !1924, line: 89, baseType: !357, size: 128, align: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1934, file: !1924, line: 92, baseType: !7, size: 32, offset: 384)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1923, file: !1924, line: 111, baseType: !628, size: 64, offset: 384)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1923, file: !1924, line: 113, baseType: !1953, size: 256, offset: 448)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1954, line: 102, size: 256, elements: !1955)
!1954 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1955 = !{!1956, !1957, !1958}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1953, file: !1954, line: 103, baseType: !765, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1953, file: !1954, line: 104, baseType: !155, size: 128, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1953, file: !1954, line: 105, baseType: !1959, size: 64, offset: 192)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1954, line: 21, baseType: !1960)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{null, !1963}
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1211, file: !1212, line: 1061, baseType: !1965, size: 64, offset: 10944)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1212, line: 43, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1211, file: !1212, line: 1064, baseType: !316, size: 64, offset: 11008)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1211, file: !1212, line: 1065, baseType: !1969, size: 64, offset: 11072)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1760, line: 14, baseType: !1971)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1760, line: 12, size: 384, elements: !1972)
!1972 = !{!1973}
!1973 = !DIDerivedType(tag: DW_TAG_member, scope: !1971, file: !1760, line: 13, baseType: !1974, size: 384)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1971, file: !1760, line: 13, size: 384, elements: !1975)
!1975 = !{!1976, !1977, !1978, !1979}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1974, file: !1760, line: 13, baseType: !167, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1974, file: !1760, line: 13, baseType: !167, size: 32, offset: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1974, file: !1760, line: 13, baseType: !167, size: 32, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1974, file: !1760, line: 13, baseType: !1980, size: 256, offset: 128)
!1980 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1981, line: 32, size: 256, elements: !1982)
!1981 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1982 = !{!1983, !1988, !2001, !2007, !2016, !2036, !2041}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1980, file: !1981, line: 37, baseType: !1984, size: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1980, file: !1981, line: 34, size: 64, elements: !1985)
!1985 = !{!1986, !1987}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1984, file: !1981, line: 35, baseType: !1454, size: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1984, file: !1981, line: 36, baseType: !433, size: 32, offset: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1980, file: !1981, line: 45, baseType: !1989, size: 192)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1980, file: !1981, line: 40, size: 192, elements: !1990)
!1990 = !{!1991, !1993, !1994, !2000}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1989, file: !1981, line: 41, baseType: !1992, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !299, line: 95, baseType: !167)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1989, file: !1981, line: 42, baseType: !167, size: 32, offset: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1989, file: !1981, line: 43, baseType: !1995, size: 64, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1981, line: 11, baseType: !1996)
!1996 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1981, line: 8, size: 64, elements: !1997)
!1997 = !{!1998, !1999}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1996, file: !1981, line: 9, baseType: !167, size: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1996, file: !1981, line: 10, baseType: !150, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1989, file: !1981, line: 44, baseType: !167, size: 32, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1980, file: !1981, line: 52, baseType: !2002, size: 128)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1980, file: !1981, line: 48, size: 128, elements: !2003)
!2003 = !{!2004, !2005, !2006}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2002, file: !1981, line: 49, baseType: !1454, size: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2002, file: !1981, line: 50, baseType: !433, size: 32, offset: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2002, file: !1981, line: 51, baseType: !1995, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1980, file: !1981, line: 61, baseType: !2008, size: 256)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1980, file: !1981, line: 55, size: 256, elements: !2009)
!2009 = !{!2010, !2011, !2012, !2013, !2015}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2008, file: !1981, line: 56, baseType: !1454, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2008, file: !1981, line: 57, baseType: !433, size: 32, offset: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2008, file: !1981, line: 58, baseType: !167, size: 32, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2008, file: !1981, line: 59, baseType: !2014, size: 64, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !299, line: 94, baseType: !300)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2008, file: !1981, line: 60, baseType: !2014, size: 64, offset: 192)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1980, file: !1981, line: 95, baseType: !2017, size: 256)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1980, file: !1981, line: 64, size: 256, elements: !2018)
!2018 = !{!2019, !2020}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2017, file: !1981, line: 65, baseType: !150, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, scope: !2017, file: !1981, line: 77, baseType: !2021, size: 192, offset: 64)
!2021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2017, file: !1981, line: 77, size: 192, elements: !2022)
!2022 = !{!2023, !2024, !2031}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2021, file: !1981, line: 82, baseType: !1199, size: 16)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2021, file: !1981, line: 88, baseType: !2025, size: 192)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2021, file: !1981, line: 84, size: 192, elements: !2026)
!2026 = !{!2027, !2029, !2030}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2025, file: !1981, line: 85, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 64, elements: !1324)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2025, file: !1981, line: 86, baseType: !150, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2025, file: !1981, line: 87, baseType: !150, size: 64, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2021, file: !1981, line: 93, baseType: !2032, size: 96)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2021, file: !1981, line: 90, size: 96, elements: !2033)
!2033 = !{!2034, !2035}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2032, file: !1981, line: 91, baseType: !2028, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2032, file: !1981, line: 92, baseType: !409, size: 32, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1980, file: !1981, line: 101, baseType: !2037, size: 128)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1980, file: !1981, line: 98, size: 128, elements: !2038)
!2038 = !{!2039, !2040}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2037, file: !1981, line: 99, baseType: !301, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2037, file: !1981, line: 100, baseType: !167, size: 32, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1980, file: !1981, line: 108, baseType: !2042, size: 128)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1980, file: !1981, line: 104, size: 128, elements: !2043)
!2043 = !{!2044, !2045, !2046}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2042, file: !1981, line: 105, baseType: !150, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2042, file: !1981, line: 106, baseType: !167, size: 32, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2042, file: !1981, line: 107, baseType: !7, size: 32, offset: 96)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1211, file: !1212, line: 1067, baseType: !1832, offset: 11136)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1211, file: !1212, line: 1099, baseType: !2049, size: 64, offset: 11136)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1212, line: 56, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1211, file: !1212, line: 1103, baseType: !155, size: 128, offset: 11200)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1211, file: !1212, line: 1104, baseType: !2053, size: 64, offset: 11328)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1212, line: 46, flags: DIFlagFwdDecl)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1211, file: !1212, line: 1105, baseType: !1167, size: 192, offset: 11392)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1211, file: !1212, line: 1106, baseType: !7, size: 32, offset: 11584)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1211, file: !1212, line: 1109, baseType: !2058, size: 128, offset: 11648)
!2058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2059, size: 128, elements: !1563)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1212, line: 51, flags: DIFlagFwdDecl)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1211, file: !1212, line: 1110, baseType: !1167, size: 192, offset: 11776)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1211, file: !1212, line: 1111, baseType: !155, size: 128, offset: 11968)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1211, file: !1212, line: 1173, baseType: !2064, size: 64, offset: 12096)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2066, line: 62, size: 256, align: 256, elements: !2067)
!2066 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2067 = !{!2068, !2069, !2070, !2075}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2065, file: !2066, line: 75, baseType: !409, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2065, file: !2066, line: 90, baseType: !409, size: 32, offset: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2065, file: !2066, line: 124, baseType: !2071, size: 64, offset: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2065, file: !2066, line: 109, size: 64, elements: !2072)
!2072 = !{!2073, !2074}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2071, file: !2066, line: 110, baseType: !414, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2071, file: !2066, line: 112, baseType: !414, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2065, file: !2066, line: 144, baseType: !409, size: 32, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1211, file: !1212, line: 1174, baseType: !407, size: 32, offset: 12160)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1211, file: !1212, line: 1179, baseType: !316, size: 64, offset: 12224)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1211, file: !1212, line: 1182, baseType: !2079, size: 128, offset: 12288)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1145, line: 76, size: 128, elements: !2080)
!2080 = !{!2081, !2086, !2087}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2079, file: !1145, line: 85, baseType: !2082, size: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2083, line: 7, size: 64, elements: !2084)
!2083 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2084 = !{!2085}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2082, file: !2083, line: 12, baseType: !1361, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2079, file: !1145, line: 88, baseType: !194, size: 8, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2079, file: !1145, line: 95, baseType: !194, size: 8, offset: 72)
!2088 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !1212, line: 1184, baseType: !2089, size: 128, offset: 12416)
!2089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1211, file: !1212, line: 1184, size: 128, elements: !2090)
!2090 = !{!2091, !2092}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2089, file: !1212, line: 1185, baseType: !1224, size: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2089, file: !1212, line: 1186, baseType: !357, size: 128, align: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1211, file: !1212, line: 1190, baseType: !2094, size: 64, offset: 12544)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1212, line: 53, flags: DIFlagFwdDecl)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1211, file: !1212, line: 1192, baseType: !2097, size: 128, offset: 12608)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1145, line: 64, size: 128, elements: !2098)
!2098 = !{!2099, !2100, !2101}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2097, file: !1145, line: 65, baseType: !714, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2097, file: !1145, line: 67, baseType: !409, size: 32, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2097, file: !1145, line: 68, baseType: !409, size: 32, offset: 96)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1211, file: !1212, line: 1206, baseType: !167, size: 32, offset: 12736)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1211, file: !1212, line: 1207, baseType: !167, size: 32, offset: 12768)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1211, file: !1212, line: 1209, baseType: !316, size: 64, offset: 12800)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1211, file: !1212, line: 1219, baseType: !413, size: 64, offset: 12864)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1211, file: !1212, line: 1220, baseType: !413, size: 64, offset: 12928)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1211, file: !1212, line: 1317, baseType: !167, size: 32, offset: 12992)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1211, file: !1212, line: 1319, baseType: !1210, size: 64, offset: 13056)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1211, file: !1212, line: 1322, baseType: !2110, size: 64, offset: 13120)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2112, line: 56, size: 512, elements: !2113)
!2112 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2113 = !{!2114, !2115, !2116, !2117, !2118, !2119, !2120, !2122}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2111, file: !2112, line: 57, baseType: !2110, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2111, file: !2112, line: 58, baseType: !150, size: 64, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2111, file: !2112, line: 59, baseType: !316, size: 64, offset: 128)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2111, file: !2112, line: 60, baseType: !316, size: 64, offset: 192)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2111, file: !2112, line: 61, baseType: !814, size: 64, offset: 256)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2111, file: !2112, line: 62, baseType: !7, size: 32, offset: 320)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2111, file: !2112, line: 63, baseType: !2121, size: 64, offset: 384)
!2121 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !156, line: 153, baseType: !413)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2111, file: !2112, line: 64, baseType: !202, size: 64, offset: 448)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1211, file: !1212, line: 1326, baseType: !1224, size: 32, offset: 13184)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1211, file: !1212, line: 1342, baseType: !150, size: 64, offset: 13248)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1211, file: !1212, line: 1343, baseType: !414, size: 64, offset: 13312)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1211, file: !1212, line: 1344, baseType: !413, size: 64, offset: 13376)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1211, file: !1212, line: 1345, baseType: !414, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1211, file: !1212, line: 1346, baseType: !414, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1211, file: !1212, line: 1347, baseType: !414, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1211, file: !1212, line: 1348, baseType: !357, size: 128, align: 64, offset: 13504)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1211, file: !1212, line: 1358, baseType: !2132, size: 34816, offset: 13824)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2133, line: 485, size: 34816, elements: !2134)
!2133 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2134 = !{!2135, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2164, !2165, !2166, !2167, !2168, !2169, !2172, !2173, !2174}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2132, file: !2133, line: 487, baseType: !2136, size: 192)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2137, size: 192, elements: !267)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2138, line: 16, size: 64, elements: !2139)
!2138 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2139 = !{!2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2137, file: !2138, line: 17, baseType: !853, size: 16)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2137, file: !2138, line: 18, baseType: !853, size: 16, offset: 16)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2137, file: !2138, line: 19, baseType: !853, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2137, file: !2138, line: 19, baseType: !853, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2137, file: !2138, line: 19, baseType: !853, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2137, file: !2138, line: 19, baseType: !853, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2137, file: !2138, line: 19, baseType: !853, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2137, file: !2138, line: 20, baseType: !853, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2137, file: !2138, line: 20, baseType: !853, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2137, file: !2138, line: 20, baseType: !853, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2137, file: !2138, line: 20, baseType: !853, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2137, file: !2138, line: 20, baseType: !853, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2137, file: !2138, line: 20, baseType: !853, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2132, file: !2133, line: 491, baseType: !316, size: 64, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2132, file: !2133, line: 495, baseType: !308, size: 16, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2132, file: !2133, line: 496, baseType: !308, size: 16, offset: 272)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2132, file: !2133, line: 497, baseType: !308, size: 16, offset: 288)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2132, file: !2133, line: 498, baseType: !308, size: 16, offset: 304)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2132, file: !2133, line: 502, baseType: !316, size: 64, offset: 320)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2132, file: !2133, line: 503, baseType: !316, size: 64, offset: 384)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2132, file: !2133, line: 514, baseType: !2161, size: 256, offset: 448)
!2161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2162, size: 256, elements: !1149)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2133, line: 483, flags: DIFlagFwdDecl)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2132, file: !2133, line: 516, baseType: !316, size: 64, offset: 704)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2132, file: !2133, line: 518, baseType: !316, size: 64, offset: 768)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2132, file: !2133, line: 520, baseType: !316, size: 64, offset: 832)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2132, file: !2133, line: 521, baseType: !316, size: 64, offset: 896)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2132, file: !2133, line: 522, baseType: !316, size: 64, offset: 960)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2132, file: !2133, line: 528, baseType: !2170, size: 64, offset: 1024)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2133, line: 10, flags: DIFlagFwdDecl)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2132, file: !2133, line: 535, baseType: !316, size: 64, offset: 1088)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2132, file: !2133, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2132, file: !2133, line: 540, baseType: !2175, size: 33280, offset: 1536)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2176, line: 317, size: 33280, elements: !2177)
!2176 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2177 = !{!2178, !2179, !2180}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2175, file: !2176, line: 330, baseType: !7, size: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2175, file: !2176, line: 337, baseType: !316, size: 64, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2175, file: !2176, line: 348, baseType: !2181, size: 32768, offset: 512)
!2181 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2176, line: 304, size: 32768, elements: !2182)
!2182 = !{!2183, !2198, !2237, !2287, !2300}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2181, file: !2176, line: 305, baseType: !2184, size: 896)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2176, line: 12, size: 896, elements: !2185)
!2185 = !{!2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2197}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2184, file: !2176, line: 13, baseType: !407, size: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2184, file: !2176, line: 14, baseType: !407, size: 32, offset: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2184, file: !2176, line: 15, baseType: !407, size: 32, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2184, file: !2176, line: 16, baseType: !407, size: 32, offset: 96)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2184, file: !2176, line: 17, baseType: !407, size: 32, offset: 128)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2184, file: !2176, line: 18, baseType: !407, size: 32, offset: 160)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2184, file: !2176, line: 19, baseType: !407, size: 32, offset: 192)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2184, file: !2176, line: 22, baseType: !2194, size: 640, offset: 224)
!2194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 640, elements: !2195)
!2195 = !{!2196}
!2196 = !DISubrange(count: 20)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2184, file: !2176, line: 25, baseType: !407, size: 32, offset: 864)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2181, file: !2176, line: 306, baseType: !2199, size: 4096, align: 128)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2176, line: 34, size: 4096, align: 128, elements: !2200)
!2200 = !{!2201, !2202, !2203, !2204, !2205, !2220, !2221, !2222, !2226, !2228, !2232}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2199, file: !2176, line: 35, baseType: !853, size: 16)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2199, file: !2176, line: 36, baseType: !853, size: 16, offset: 16)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2199, file: !2176, line: 37, baseType: !853, size: 16, offset: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2199, file: !2176, line: 38, baseType: !853, size: 16, offset: 48)
!2205 = !DIDerivedType(tag: DW_TAG_member, scope: !2199, file: !2176, line: 39, baseType: !2206, size: 128, offset: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2199, file: !2176, line: 39, size: 128, elements: !2207)
!2207 = !{!2208, !2213}
!2208 = !DIDerivedType(tag: DW_TAG_member, scope: !2206, file: !2176, line: 40, baseType: !2209, size: 128)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2206, file: !2176, line: 40, size: 128, elements: !2210)
!2210 = !{!2211, !2212}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2209, file: !2176, line: 41, baseType: !413, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2209, file: !2176, line: 42, baseType: !413, size: 64, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, scope: !2206, file: !2176, line: 44, baseType: !2214, size: 128)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2206, file: !2176, line: 44, size: 128, elements: !2215)
!2215 = !{!2216, !2217, !2218, !2219}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2214, file: !2176, line: 45, baseType: !407, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2214, file: !2176, line: 46, baseType: !407, size: 32, offset: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2214, file: !2176, line: 47, baseType: !407, size: 32, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2214, file: !2176, line: 48, baseType: !407, size: 32, offset: 96)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2199, file: !2176, line: 51, baseType: !407, size: 32, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2199, file: !2176, line: 52, baseType: !407, size: 32, offset: 224)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2199, file: !2176, line: 55, baseType: !2223, size: 1024, offset: 256)
!2223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 1024, elements: !2224)
!2224 = !{!2225}
!2225 = !DISubrange(count: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2199, file: !2176, line: 58, baseType: !2227, size: 2048, offset: 1280)
!2227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 2048, elements: !271)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2199, file: !2176, line: 60, baseType: !2229, size: 384, offset: 3328)
!2229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 384, elements: !2230)
!2230 = !{!2231}
!2231 = !DISubrange(count: 12)
!2232 = !DIDerivedType(tag: DW_TAG_member, scope: !2199, file: !2176, line: 62, baseType: !2233, size: 384, offset: 3712)
!2233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2199, file: !2176, line: 62, size: 384, elements: !2234)
!2234 = !{!2235, !2236}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2233, file: !2176, line: 63, baseType: !2229, size: 384)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2233, file: !2176, line: 64, baseType: !2229, size: 384)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2181, file: !2176, line: 307, baseType: !2238, size: 1088)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2176, line: 79, size: 1088, elements: !2239)
!2239 = !{!2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2286}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2238, file: !2176, line: 80, baseType: !407, size: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2238, file: !2176, line: 81, baseType: !407, size: 32, offset: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2238, file: !2176, line: 82, baseType: !407, size: 32, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2238, file: !2176, line: 83, baseType: !407, size: 32, offset: 96)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2238, file: !2176, line: 84, baseType: !407, size: 32, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2238, file: !2176, line: 85, baseType: !407, size: 32, offset: 160)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2238, file: !2176, line: 86, baseType: !407, size: 32, offset: 192)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2238, file: !2176, line: 88, baseType: !2194, size: 640, offset: 224)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2238, file: !2176, line: 89, baseType: !1346, size: 8, offset: 864)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2238, file: !2176, line: 90, baseType: !1346, size: 8, offset: 872)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2238, file: !2176, line: 91, baseType: !1346, size: 8, offset: 880)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2238, file: !2176, line: 92, baseType: !1346, size: 8, offset: 888)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2238, file: !2176, line: 93, baseType: !1346, size: 8, offset: 896)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2238, file: !2176, line: 94, baseType: !1346, size: 8, offset: 904)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2238, file: !2176, line: 95, baseType: !2255, size: 64, offset: 960)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2257, line: 11, size: 128, elements: !2258)
!2257 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2258 = !{!2259, !2260}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2256, file: !2257, line: 12, baseType: !301, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2256, file: !2257, line: 13, baseType: !2261, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2263, line: 56, size: 1344, elements: !2264)
!2263 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2264 = !{!2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2262, file: !2263, line: 61, baseType: !316, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2262, file: !2263, line: 62, baseType: !316, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2262, file: !2263, line: 63, baseType: !316, size: 64, offset: 128)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2262, file: !2263, line: 64, baseType: !316, size: 64, offset: 192)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2262, file: !2263, line: 65, baseType: !316, size: 64, offset: 256)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2262, file: !2263, line: 66, baseType: !316, size: 64, offset: 320)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2262, file: !2263, line: 68, baseType: !316, size: 64, offset: 384)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2262, file: !2263, line: 69, baseType: !316, size: 64, offset: 448)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2262, file: !2263, line: 70, baseType: !316, size: 64, offset: 512)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2262, file: !2263, line: 71, baseType: !316, size: 64, offset: 576)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2262, file: !2263, line: 72, baseType: !316, size: 64, offset: 640)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2262, file: !2263, line: 73, baseType: !316, size: 64, offset: 704)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2262, file: !2263, line: 74, baseType: !316, size: 64, offset: 768)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2262, file: !2263, line: 75, baseType: !316, size: 64, offset: 832)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2262, file: !2263, line: 76, baseType: !316, size: 64, offset: 896)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2262, file: !2263, line: 81, baseType: !316, size: 64, offset: 960)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2262, file: !2263, line: 83, baseType: !316, size: 64, offset: 1024)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2262, file: !2263, line: 84, baseType: !316, size: 64, offset: 1088)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2262, file: !2263, line: 85, baseType: !316, size: 64, offset: 1152)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2262, file: !2263, line: 86, baseType: !316, size: 64, offset: 1216)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2262, file: !2263, line: 87, baseType: !316, size: 64, offset: 1280)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2238, file: !2176, line: 96, baseType: !407, size: 32, offset: 1024)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2181, file: !2176, line: 308, baseType: !2288, size: 4608, align: 512)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2176, line: 289, size: 4608, align: 512, elements: !2289)
!2289 = !{!2290, !2291, !2298}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2288, file: !2176, line: 290, baseType: !2199, size: 4096, align: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2288, file: !2176, line: 291, baseType: !2292, size: 512, offset: 4096)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2176, line: 268, size: 512, elements: !2293)
!2293 = !{!2294, !2295, !2296}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2292, file: !2176, line: 269, baseType: !413, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2292, file: !2176, line: 270, baseType: !413, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2292, file: !2176, line: 271, baseType: !2297, size: 384, offset: 128)
!2297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 384, elements: !1619)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2288, file: !2176, line: 292, baseType: !2299, offset: 4608)
!2299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, elements: !1717)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2181, file: !2176, line: 309, baseType: !2301, size: 32768)
!2301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, size: 32768, elements: !2302)
!2302 = !{!2303}
!2303 = !DISubrange(count: 4096)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1207, file: !716, line: 378, baseType: !2305, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1203, file: !716, line: 384, baseType: !1496, size: 192, offset: 192)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !972, file: !716, line: 500, baseType: !225, offset: 6656)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !972, file: !716, line: 501, baseType: !2309, size: 64, offset: 6656)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !716, line: 387, flags: DIFlagFwdDecl)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !972, file: !716, line: 516, baseType: !1707, size: 64, offset: 6720)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !972, file: !716, line: 519, baseType: !344, size: 64, offset: 6784)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !972, file: !716, line: 521, baseType: !2314, size: 64, offset: 6848)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !716, line: 521, flags: DIFlagFwdDecl)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !972, file: !716, line: 545, baseType: !741, size: 32, offset: 6912)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !972, file: !716, line: 548, baseType: !194, size: 8, offset: 6944)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !972, file: !716, line: 550, baseType: !2319, offset: 6952)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2320, line: 142, elements: !239)
!2320 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !972, file: !716, line: 554, baseType: !1953, size: 256, offset: 6976)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !972, file: !716, line: 557, baseType: !407, size: 32, offset: 7232)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !969, file: !716, line: 565, baseType: !2324, offset: 7296)
!2324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, elements: !2325)
!2325 = !{!2326}
!2326 = !DISubrange(count: -1)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !965, file: !716, line: 151, baseType: !741, size: 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !958, file: !716, line: 156, baseType: !225, offset: 256)
!2329 = !DIDerivedType(tag: DW_TAG_member, scope: !720, file: !716, line: 159, baseType: !2330, size: 128)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !720, file: !716, line: 159, size: 128, elements: !2331)
!2331 = !{!2332, !2396}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2330, file: !716, line: 161, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2335)
!2335 = !{!2336, !2346, !2367, !2368, !2369, !2370, !2371, !2383, !2384, !2385}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2334, file: !31, line: 111, baseType: !2337, size: 384)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2338)
!2338 = !{!2339, !2341, !2342, !2343, !2344, !2345}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2337, file: !31, line: 20, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2337, file: !31, line: 21, baseType: !2340, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2337, file: !31, line: 22, baseType: !2340, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2337, file: !31, line: 23, baseType: !316, size: 64, offset: 192)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2337, file: !31, line: 24, baseType: !316, size: 64, offset: 256)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2337, file: !31, line: 25, baseType: !316, size: 64, offset: 320)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2334, file: !31, line: 112, baseType: !2347, size: 64, offset: 384)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2349, line: 105, size: 128, elements: !2350)
!2349 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2350 = !{!2351, !2352}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2348, file: !2349, line: 110, baseType: !316, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2348, file: !2349, line: 118, baseType: !2353, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2349, line: 95, size: 448, elements: !2355)
!2355 = !{!2356, !2357, !2362, !2363, !2364, !2365, !2366}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2354, file: !2349, line: 96, baseType: !765, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2354, file: !2349, line: 97, baseType: !2358, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2349, line: 60, baseType: !2360)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{null, !2347}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2354, file: !2349, line: 98, baseType: !2358, size: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2354, file: !2349, line: 99, baseType: !194, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2354, file: !2349, line: 100, baseType: !194, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2354, file: !2349, line: 101, baseType: !357, size: 128, align: 64, offset: 256)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2354, file: !2349, line: 102, baseType: !2347, size: 64, offset: 384)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2334, file: !31, line: 113, baseType: !2348, size: 128, offset: 448)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2334, file: !31, line: 114, baseType: !1496, size: 192, offset: 576)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2334, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2334, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2334, file: !31, line: 117, baseType: !2372, size: 64, offset: 832)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2374)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2375)
!2375 = !{!2376, !2377, !2381, !2382}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2374, file: !31, line: 73, baseType: !834, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2374, file: !31, line: 78, baseType: !2378, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{null, !2333}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2374, file: !31, line: 83, baseType: !2378, size: 64, offset: 128)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2374, file: !31, line: 89, baseType: !1021, size: 64, offset: 192)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2334, file: !31, line: 118, baseType: !150, size: 64, offset: 896)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2334, file: !31, line: 119, baseType: !167, size: 32, offset: 960)
!2385 = !DIDerivedType(tag: DW_TAG_member, scope: !2334, file: !31, line: 120, baseType: !2386, size: 128, offset: 1024)
!2386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2334, file: !31, line: 120, size: 128, elements: !2387)
!2387 = !{!2388, !2394}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2386, file: !31, line: 121, baseType: !2389, size: 128)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2390, line: 6, size: 128, elements: !2391)
!2390 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2391 = !{!2392, !2393}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2389, file: !2390, line: 7, baseType: !413, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2389, file: !2390, line: 8, baseType: !413, size: 64, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2386, file: !31, line: 122, baseType: !2395)
!2395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2389, elements: !1717)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2330, file: !716, line: 162, baseType: !150, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !720, file: !716, line: 176, baseType: !357, size: 128, align: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !716, line: 179, baseType: !2399, size: 32, offset: 384)
!2399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !715, file: !716, line: 179, size: 32, elements: !2400)
!2400 = !{!2401, !2402, !2403, !2404}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2399, file: !716, line: 184, baseType: !741, size: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2399, file: !716, line: 192, baseType: !7, size: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2399, file: !716, line: 194, baseType: !7, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2399, file: !716, line: 195, baseType: !167, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !715, file: !716, line: 199, baseType: !741, size: 32, offset: 416)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !650, file: !44, line: 1964, baseType: !2407, size: 64, offset: 1344)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!301, !589, !2410}
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2412, line: 12, size: 256, elements: !2413)
!2412 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2413 = !{!2414, !2415, !2416, !2417, !2418}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2411, file: !2412, line: 13, baseType: !737, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2411, file: !2412, line: 16, baseType: !167, size: 32, offset: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2411, file: !2412, line: 23, baseType: !316, size: 64, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2411, file: !2412, line: 30, baseType: !316, size: 64, offset: 128)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2411, file: !2412, line: 33, baseType: !2419, size: 64, offset: 192)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !716, line: 27, flags: DIFlagFwdDecl)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !650, file: !44, line: 1966, baseType: !2407, size: 64, offset: 1408)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !590, file: !44, line: 1424, baseType: !2423, size: 64, offset: 448)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2425)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2426)
!2426 = !{!2427, !2473, !2477, !2481, !2482, !2483, !2484, !2485, !2490, !2495, !2499}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2425, file: !38, line: 323, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!167, !2431}
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2433)
!2433 = !{!2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2458, !2459, !2460}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2432, file: !38, line: 295, baseType: !632, size: 128)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2432, file: !38, line: 296, baseType: !155, size: 128, offset: 128)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2432, file: !38, line: 297, baseType: !155, size: 128, offset: 256)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2432, file: !38, line: 298, baseType: !155, size: 128, offset: 384)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2432, file: !38, line: 299, baseType: !1167, size: 192, offset: 512)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2432, file: !38, line: 300, baseType: !225, offset: 704)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2432, file: !38, line: 301, baseType: !741, size: 32, offset: 704)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2432, file: !38, line: 302, baseType: !589, size: 64, offset: 768)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2432, file: !38, line: 303, baseType: !2443, size: 64, offset: 832)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2444)
!2444 = !{!2445, !2457}
!2445 = !DIDerivedType(tag: DW_TAG_member, scope: !2443, file: !38, line: 69, baseType: !2446, size: 32)
!2446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2443, file: !38, line: 69, size: 32, elements: !2447)
!2447 = !{!2448, !2449, !2450}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2446, file: !38, line: 70, baseType: !427, size: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2446, file: !38, line: 71, baseType: !435, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2446, file: !38, line: 72, baseType: !2451, size: 32)
!2451 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2452, line: 24, baseType: !2453)
!2452 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2452, line: 22, size: 32, elements: !2454)
!2454 = !{!2455}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2453, file: !2452, line: 23, baseType: !2456, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2452, line: 20, baseType: !433)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2443, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2432, file: !38, line: 304, baseType: !521, size: 64, offset: 896)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2432, file: !38, line: 305, baseType: !316, size: 64, offset: 960)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2432, file: !38, line: 306, baseType: !2461, size: 576, offset: 1024)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2462)
!2462 = !{!2463, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2461, file: !38, line: 206, baseType: !2464, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !523)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2461, file: !38, line: 207, baseType: !2464, size: 64, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2461, file: !38, line: 208, baseType: !2464, size: 64, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2461, file: !38, line: 209, baseType: !2464, size: 64, offset: 192)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2461, file: !38, line: 210, baseType: !2464, size: 64, offset: 256)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2461, file: !38, line: 211, baseType: !2464, size: 64, offset: 320)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2461, file: !38, line: 212, baseType: !2464, size: 64, offset: 384)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2461, file: !38, line: 213, baseType: !529, size: 64, offset: 448)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2461, file: !38, line: 214, baseType: !529, size: 64, offset: 512)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2425, file: !38, line: 324, baseType: !2474, size: 64, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!2431, !589, !167}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2425, file: !38, line: 325, baseType: !2478, size: 64, offset: 128)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{null, !2431}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2425, file: !38, line: 326, baseType: !2428, size: 64, offset: 192)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2425, file: !38, line: 327, baseType: !2428, size: 64, offset: 256)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2425, file: !38, line: 328, baseType: !2428, size: 64, offset: 320)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2425, file: !38, line: 329, baseType: !678, size: 64, offset: 384)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2425, file: !38, line: 332, baseType: !2486, size: 64, offset: 448)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!2489, !421}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2425, file: !38, line: 333, baseType: !2491, size: 64, offset: 512)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!167, !421, !2494}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2425, file: !38, line: 335, baseType: !2496, size: 64, offset: 576)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!167, !421, !2489}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2425, file: !38, line: 337, baseType: !2500, size: 64, offset: 640)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!167, !589, !2503}
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !590, file: !44, line: 1425, baseType: !2505, size: 64, offset: 512)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2507)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2508)
!2508 = !{!2509, !2513, !2514, !2518, !2519, !2520, !2535, !2558, !2562, !2563, !2586}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2507, file: !38, line: 429, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!167, !589, !167, !167, !539}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2507, file: !38, line: 430, baseType: !678, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2507, file: !38, line: 431, baseType: !2515, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!167, !589, !7}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2507, file: !38, line: 432, baseType: !2515, size: 64, offset: 192)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2507, file: !38, line: 433, baseType: !678, size: 64, offset: 256)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2507, file: !38, line: 434, baseType: !2521, size: 64, offset: 320)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!167, !589, !167, !2524}
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2526)
!2526 = !{!2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2525, file: !38, line: 416, baseType: !167, size: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2525, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2525, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2525, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2525, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2525, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2525, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2525, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2507, file: !38, line: 435, baseType: !2536, size: 64, offset: 384)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!167, !589, !2443, !2539}
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2541)
!2541 = !{!2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2540, file: !38, line: 344, baseType: !167, size: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2540, file: !38, line: 345, baseType: !413, size: 64, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2540, file: !38, line: 346, baseType: !413, size: 64, offset: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2540, file: !38, line: 347, baseType: !413, size: 64, offset: 192)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2540, file: !38, line: 348, baseType: !413, size: 64, offset: 256)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2540, file: !38, line: 349, baseType: !413, size: 64, offset: 320)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2540, file: !38, line: 350, baseType: !413, size: 64, offset: 384)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2540, file: !38, line: 351, baseType: !771, size: 64, offset: 448)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2540, file: !38, line: 353, baseType: !771, size: 64, offset: 512)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2540, file: !38, line: 354, baseType: !167, size: 32, offset: 576)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2540, file: !38, line: 355, baseType: !167, size: 32, offset: 608)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2540, file: !38, line: 356, baseType: !413, size: 64, offset: 640)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2540, file: !38, line: 357, baseType: !413, size: 64, offset: 704)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2540, file: !38, line: 358, baseType: !413, size: 64, offset: 768)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2540, file: !38, line: 359, baseType: !771, size: 64, offset: 832)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2540, file: !38, line: 360, baseType: !167, size: 32, offset: 896)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2507, file: !38, line: 436, baseType: !2559, size: 64, offset: 448)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!167, !589, !2503, !2539}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2507, file: !38, line: 438, baseType: !2536, size: 64, offset: 512)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2507, file: !38, line: 439, baseType: !2564, size: 64, offset: 576)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!167, !589, !2567}
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2569)
!2569 = !{!2570, !2571}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2568, file: !38, line: 410, baseType: !7, size: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2568, file: !38, line: 411, baseType: !2572, size: 1344, offset: 64)
!2572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2573, size: 1344, elements: !267)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2574)
!2574 = !{!2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2585}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2573, file: !38, line: 396, baseType: !7, size: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2573, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2573, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2573, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2573, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2573, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2573, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2573, file: !38, line: 404, baseType: !415, size: 64, offset: 256)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2573, file: !38, line: 405, baseType: !2584, size: 64, offset: 320)
!2584 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !156, line: 126, baseType: !413)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2573, file: !38, line: 406, baseType: !2584, size: 64, offset: 384)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2507, file: !38, line: 440, baseType: !2515, size: 64, offset: 640)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !590, file: !44, line: 1426, baseType: !2588, size: 64, offset: 576)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2590)
!2590 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !590, file: !44, line: 1427, baseType: !316, size: 64, offset: 640)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !590, file: !44, line: 1428, baseType: !316, size: 64, offset: 704)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !590, file: !44, line: 1429, baseType: !316, size: 64, offset: 768)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !590, file: !44, line: 1430, baseType: !374, size: 64, offset: 832)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !590, file: !44, line: 1431, baseType: !761, size: 256, offset: 896)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !590, file: !44, line: 1432, baseType: !167, size: 32, offset: 1152)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !590, file: !44, line: 1433, baseType: !741, size: 32, offset: 1184)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !590, file: !44, line: 1437, baseType: !2599, size: 64, offset: 1216)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2602)
!2602 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !590, file: !44, line: 1449, baseType: !2604, size: 64, offset: 1280)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !390, line: 34, size: 64, elements: !2605)
!2605 = !{!2606}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2604, file: !390, line: 35, baseType: !393, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !590, file: !44, line: 1450, baseType: !155, size: 128, offset: 1344)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !590, file: !44, line: 1451, baseType: !2609, size: 64, offset: 1472)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !590, file: !44, line: 1452, baseType: !1919, size: 64, offset: 1536)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !590, file: !44, line: 1453, baseType: !2613, size: 64, offset: 1600)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !590, file: !44, line: 1454, baseType: !632, size: 128, offset: 1664)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !590, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !590, file: !44, line: 1456, baseType: !2618, size: 2432, offset: 1856)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2619)
!2619 = !{!2620, !2621, !2622, !2624, !2656}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2618, file: !38, line: 519, baseType: !7, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2618, file: !38, line: 520, baseType: !761, size: 256, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2618, file: !38, line: 521, baseType: !2623, size: 192, offset: 320)
!2623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 192, elements: !267)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2618, file: !38, line: 522, baseType: !2625, size: 1728, offset: 512)
!2625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2626, size: 1728, elements: !267)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2627)
!2627 = !{!2628, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2626, file: !38, line: 223, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2631)
!2631 = !{!2632, !2633, !2646, !2647}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2630, file: !38, line: 444, baseType: !167, size: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2630, file: !38, line: 445, baseType: !2634, size: 64, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2636)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2637)
!2637 = !{!2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2636, file: !38, line: 311, baseType: !678, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2636, file: !38, line: 312, baseType: !678, size: 64, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2636, file: !38, line: 313, baseType: !678, size: 64, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2636, file: !38, line: 314, baseType: !678, size: 64, offset: 192)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2636, file: !38, line: 315, baseType: !2428, size: 64, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2636, file: !38, line: 316, baseType: !2428, size: 64, offset: 320)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2636, file: !38, line: 317, baseType: !2428, size: 64, offset: 384)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2636, file: !38, line: 318, baseType: !2500, size: 64, offset: 448)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2630, file: !38, line: 446, baseType: !623, size: 64, offset: 128)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2630, file: !38, line: 447, baseType: !2629, size: 64, offset: 192)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2626, file: !38, line: 224, baseType: !167, size: 32, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2626, file: !38, line: 226, baseType: !155, size: 128, offset: 128)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2626, file: !38, line: 227, baseType: !316, size: 64, offset: 256)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2626, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2626, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2626, file: !38, line: 230, baseType: !2464, size: 64, offset: 384)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2626, file: !38, line: 231, baseType: !2464, size: 64, offset: 448)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2626, file: !38, line: 232, baseType: !150, size: 64, offset: 512)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2618, file: !38, line: 523, baseType: !2657, size: 192, offset: 2240)
!2657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2634, size: 192, elements: !267)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !590, file: !44, line: 1458, baseType: !2659, size: 2112, offset: 4288)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2660)
!2660 = !{!2661, !2662, !2663}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2659, file: !44, line: 1411, baseType: !167, size: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2659, file: !44, line: 1412, baseType: !1475, size: 128, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2659, file: !44, line: 1413, baseType: !2664, size: 1920, offset: 192)
!2664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2665, size: 1920, elements: !267)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2666, line: 12, size: 640, elements: !2667)
!2666 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2667 = !{!2668, !2676, !2678, !2683, !2684}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2665, file: !2666, line: 13, baseType: !2669, size: 320)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2670, line: 17, size: 320, elements: !2671)
!2670 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2671 = !{!2672, !2673, !2674, !2675}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2669, file: !2670, line: 18, baseType: !167, size: 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2669, file: !2670, line: 19, baseType: !167, size: 32, offset: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2669, file: !2670, line: 20, baseType: !1475, size: 128, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2669, file: !2670, line: 22, baseType: !357, size: 128, align: 64, offset: 192)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2665, file: !2666, line: 14, baseType: !2677, size: 64, offset: 320)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2665, file: !2666, line: 15, baseType: !2679, size: 64, offset: 384)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2680, line: 16, size: 64, elements: !2681)
!2680 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2681 = !{!2682}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2679, file: !2680, line: 17, baseType: !1210, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2665, file: !2666, line: 16, baseType: !1475, size: 128, offset: 448)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2665, file: !2666, line: 17, baseType: !741, size: 32, offset: 576)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !590, file: !44, line: 1465, baseType: !150, size: 64, offset: 6400)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !590, file: !44, line: 1468, baseType: !407, size: 32, offset: 6464)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !590, file: !44, line: 1470, baseType: !529, size: 64, offset: 6528)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !590, file: !44, line: 1471, baseType: !529, size: 64, offset: 6592)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !590, file: !44, line: 1473, baseType: !409, size: 32, offset: 6656)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !590, file: !44, line: 1474, baseType: !2691, size: 64, offset: 6720)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !590, file: !44, line: 1477, baseType: !2694, size: 256, offset: 6784)
!2694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 256, elements: !2224)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !590, file: !44, line: 1478, baseType: !2696, size: 128, offset: 7040)
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2697, line: 18, baseType: !2698)
!2697 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2697, line: 16, size: 128, elements: !2699)
!2699 = !{!2700}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2698, file: !2697, line: 17, baseType: !2701, size: 128)
!2701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1347, size: 128, elements: !1729)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !590, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !590, file: !44, line: 1481, baseType: !2704, size: 32, offset: 7200)
!2704 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !156, line: 150, baseType: !7)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !590, file: !44, line: 1487, baseType: !1167, size: 192, offset: 7232)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !590, file: !44, line: 1493, baseType: !213, size: 64, offset: 7424)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !590, file: !44, line: 1495, baseType: !2708, size: 64, offset: 7488)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2710)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !372, line: 135, size: 1024, align: 512, elements: !2711)
!2711 = !{!2712, !2716, !2717, !2724, !2730, !2734, !2738, !2742, !2743, !2747, !2751, !2756, !2760}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2710, file: !372, line: 136, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!167, !374, !7}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2710, file: !372, line: 137, baseType: !2713, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2710, file: !372, line: 138, baseType: !2718, size: 64, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!167, !2721, !2723}
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2710, file: !372, line: 139, baseType: !2725, size: 64, offset: 192)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!167, !2721, !7, !213, !2728}
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2710, file: !372, line: 141, baseType: !2731, size: 64, offset: 256)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!167, !2721}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2710, file: !372, line: 142, baseType: !2735, size: 64, offset: 320)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!167, !374}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2710, file: !372, line: 143, baseType: !2739, size: 64, offset: 384)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{null, !374}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2710, file: !372, line: 144, baseType: !2739, size: 64, offset: 448)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2710, file: !372, line: 145, baseType: !2744, size: 64, offset: 512)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{null, !374, !421}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2710, file: !372, line: 146, baseType: !2748, size: 64, offset: 576)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!266, !374, !266, !167}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2710, file: !372, line: 147, baseType: !2752, size: 64, offset: 640)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!370, !2755}
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2710, file: !372, line: 148, baseType: !2757, size: 64, offset: 704)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!167, !539, !194}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2710, file: !372, line: 149, baseType: !2761, size: 64, offset: 768)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!374, !374, !2764}
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !590, file: !44, line: 1500, baseType: !167, size: 32, offset: 7552)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !590, file: !44, line: 1502, baseType: !2768, size: 448, offset: 7616)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2412, line: 60, size: 448, elements: !2769)
!2769 = !{!2770, !2775, !2776, !2777, !2778, !2779, !2780}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2768, file: !2412, line: 61, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!316, !2774, !2410}
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2768, file: !2412, line: 63, baseType: !2771, size: 64, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2768, file: !2412, line: 66, baseType: !301, size: 64, offset: 128)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2768, file: !2412, line: 67, baseType: !167, size: 32, offset: 192)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2768, file: !2412, line: 68, baseType: !7, size: 32, offset: 224)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2768, file: !2412, line: 71, baseType: !155, size: 128, offset: 256)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2768, file: !2412, line: 77, baseType: !2781, size: 64, offset: 384)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !590, file: !44, line: 1505, baseType: !765, size: 64, offset: 8064)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !590, file: !44, line: 1508, baseType: !765, size: 64, offset: 8128)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !590, file: !44, line: 1511, baseType: !167, size: 32, offset: 8192)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !590, file: !44, line: 1514, baseType: !903, size: 32, offset: 8224)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !590, file: !44, line: 1517, baseType: !2787, size: 64, offset: 8256)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1954, line: 18, flags: DIFlagFwdDecl)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !590, file: !44, line: 1518, baseType: !628, size: 64, offset: 8320)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !590, file: !44, line: 1525, baseType: !1707, size: 64, offset: 8384)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !590, file: !44, line: 1532, baseType: !2792, size: 64, offset: 8448)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2793, line: 52, size: 64, elements: !2794)
!2793 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2794 = !{!2795}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2792, file: !2793, line: 53, baseType: !2796, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2793, line: 40, size: 256, elements: !2798)
!2798 = !{!2799, !2800, !2805}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2797, file: !2793, line: 42, baseType: !225)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2797, file: !2793, line: 44, baseType: !2801, size: 192)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2793, line: 28, size: 192, elements: !2802)
!2802 = !{!2803, !2804}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2801, file: !2793, line: 29, baseType: !155, size: 128)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2801, file: !2793, line: 31, baseType: !301, size: 64, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2797, file: !2793, line: 49, baseType: !301, size: 64, offset: 192)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !590, file: !44, line: 1533, baseType: !2792, size: 64, offset: 8512)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !590, file: !44, line: 1534, baseType: !357, size: 128, align: 64, offset: 8576)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !590, file: !44, line: 1535, baseType: !1953, size: 256, offset: 8704)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !590, file: !44, line: 1537, baseType: !1167, size: 192, offset: 8960)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !590, file: !44, line: 1542, baseType: !167, size: 32, offset: 9152)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !590, file: !44, line: 1545, baseType: !225, offset: 9184)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !590, file: !44, line: 1546, baseType: !155, size: 128, offset: 9216)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !590, file: !44, line: 1548, baseType: !225, offset: 9344)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !590, file: !44, line: 1549, baseType: !155, size: 128, offset: 9344)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !422, file: !44, line: 624, baseType: !727, size: 64, offset: 256)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !422, file: !44, line: 631, baseType: !316, size: 64, offset: 320)
!2817 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !44, line: 639, baseType: !2818, size: 32, offset: 384)
!2818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !44, line: 639, size: 32, elements: !2819)
!2819 = !{!2820, !2822}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2818, file: !44, line: 640, baseType: !2821, size: 32)
!2821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2818, file: !44, line: 641, baseType: !7, size: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !422, file: !44, line: 643, baseType: !503, size: 32, offset: 416)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !422, file: !44, line: 644, baseType: !521, size: 64, offset: 448)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !422, file: !44, line: 645, baseType: !525, size: 128, offset: 512)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !422, file: !44, line: 646, baseType: !525, size: 128, offset: 640)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !422, file: !44, line: 647, baseType: !525, size: 128, offset: 768)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !422, file: !44, line: 648, baseType: !225, offset: 896)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !422, file: !44, line: 649, baseType: !308, size: 16, offset: 896)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !422, file: !44, line: 650, baseType: !1346, size: 8, offset: 912)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !422, file: !44, line: 651, baseType: !1346, size: 8, offset: 920)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !422, file: !44, line: 652, baseType: !2584, size: 64, offset: 960)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !422, file: !44, line: 659, baseType: !316, size: 64, offset: 1024)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !422, file: !44, line: 660, baseType: !761, size: 256, offset: 1088)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !422, file: !44, line: 662, baseType: !316, size: 64, offset: 1344)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !422, file: !44, line: 663, baseType: !316, size: 64, offset: 1408)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !422, file: !44, line: 665, baseType: !632, size: 128, offset: 1472)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !422, file: !44, line: 666, baseType: !155, size: 128, offset: 1600)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !422, file: !44, line: 675, baseType: !155, size: 128, offset: 1728)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !422, file: !44, line: 676, baseType: !155, size: 128, offset: 1856)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !422, file: !44, line: 677, baseType: !155, size: 128, offset: 1984)
!2842 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !44, line: 678, baseType: !2843, size: 128, offset: 2112)
!2843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !44, line: 678, size: 128, elements: !2844)
!2844 = !{!2845, !2846}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2843, file: !44, line: 679, baseType: !628, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2843, file: !44, line: 680, baseType: !357, size: 128, align: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !422, file: !44, line: 682, baseType: !767, size: 64, offset: 2240)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !422, file: !44, line: 683, baseType: !767, size: 64, offset: 2304)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !422, file: !44, line: 684, baseType: !741, size: 32, offset: 2368)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !422, file: !44, line: 685, baseType: !741, size: 32, offset: 2400)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !422, file: !44, line: 686, baseType: !741, size: 32, offset: 2432)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !422, file: !44, line: 688, baseType: !741, size: 32, offset: 2464)
!2853 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !44, line: 690, baseType: !2854, size: 64, offset: 2496)
!2854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !44, line: 690, size: 64, elements: !2855)
!2855 = !{!2856, !3079}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2854, file: !44, line: 691, baseType: !2857, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2859)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2860)
!2860 = !{!2861, !2862, !2866, !2871, !2875, !2876, !2877, !2881, !2894, !2895, !2903, !2907, !2908, !2912, !2913, !2917, !2922, !2923, !2927, !2931, !3039, !3043, !3044, !3048, !3049, !3053, !3057, !3062, !3066, !3070, !3074, !3078}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2859, file: !44, line: 1823, baseType: !623, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2859, file: !44, line: 1824, baseType: !2863, size: 64, offset: 64)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!521, !344, !521, !167}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2859, file: !44, line: 1825, baseType: !2867, size: 64, offset: 128)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!297, !344, !266, !313, !2870}
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2859, file: !44, line: 1826, baseType: !2872, size: 64, offset: 192)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!297, !344, !213, !313, !2870}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2859, file: !44, line: 1827, baseType: !838, size: 64, offset: 256)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2859, file: !44, line: 1828, baseType: !838, size: 64, offset: 320)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2859, file: !44, line: 1829, baseType: !2878, size: 64, offset: 384)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!167, !841, !194}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2859, file: !44, line: 1830, baseType: !2882, size: 64, offset: 448)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!167, !344, !2885}
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2887)
!2887 = !{!2888, !2893}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2886, file: !44, line: 1777, baseType: !2889, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2890)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!167, !2885, !213, !167, !521, !413, !7}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2886, file: !44, line: 1778, baseType: !521, size: 64, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2859, file: !44, line: 1831, baseType: !2882, size: 64, offset: 512)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2859, file: !44, line: 1832, baseType: !2896, size: 64, offset: 576)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!2899, !344, !2901}
!2899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2900, line: 52, baseType: !7)
!2900 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !609, line: 27, flags: DIFlagFwdDecl)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2859, file: !44, line: 1833, baseType: !2904, size: 64, offset: 640)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!301, !344, !7, !316}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2859, file: !44, line: 1834, baseType: !2904, size: 64, offset: 704)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2859, file: !44, line: 1835, baseType: !2909, size: 64, offset: 768)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!167, !344, !975}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2859, file: !44, line: 1836, baseType: !316, size: 64, offset: 832)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2859, file: !44, line: 1837, baseType: !2914, size: 64, offset: 896)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!167, !421, !344}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2859, file: !44, line: 1838, baseType: !2918, size: 64, offset: 960)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!167, !344, !2921}
!2921 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !150)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2859, file: !44, line: 1839, baseType: !2914, size: 64, offset: 1024)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2859, file: !44, line: 1840, baseType: !2924, size: 64, offset: 1088)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!167, !344, !521, !521, !167}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2859, file: !44, line: 1841, baseType: !2928, size: 64, offset: 1152)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!167, !167, !344, !167}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2859, file: !44, line: 1842, baseType: !2932, size: 64, offset: 1216)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!167, !344, !167, !2935}
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2937)
!2937 = !{!2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2969, !2970, !2971, !2984, !3015}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2936, file: !44, line: 1063, baseType: !2935, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2936, file: !44, line: 1064, baseType: !155, size: 128, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2936, file: !44, line: 1065, baseType: !632, size: 128, offset: 192)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2936, file: !44, line: 1066, baseType: !155, size: 128, offset: 320)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2936, file: !44, line: 1069, baseType: !155, size: 128, offset: 448)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2936, file: !44, line: 1072, baseType: !2921, size: 64, offset: 576)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2936, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2936, file: !44, line: 1074, baseType: !419, size: 8, offset: 672)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2936, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2936, file: !44, line: 1076, baseType: !167, size: 32, offset: 736)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2936, file: !44, line: 1077, baseType: !1475, size: 128, offset: 768)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2936, file: !44, line: 1078, baseType: !344, size: 64, offset: 896)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2936, file: !44, line: 1079, baseType: !521, size: 64, offset: 960)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2936, file: !44, line: 1080, baseType: !521, size: 64, offset: 1024)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2936, file: !44, line: 1082, baseType: !2953, size: 64, offset: 1088)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2955)
!2955 = !{!2956, !2964, !2965, !2966, !2967, !2968}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2954, file: !44, line: 1315, baseType: !2957)
!2957 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2958, line: 20, baseType: !2959)
!2958 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2958, line: 11, elements: !2960)
!2960 = !{!2961}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2959, file: !2958, line: 12, baseType: !2962)
!2962 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !237, line: 33, baseType: !2963)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 31, elements: !239)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2954, file: !44, line: 1316, baseType: !167, size: 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2954, file: !44, line: 1317, baseType: !167, size: 32, offset: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2954, file: !44, line: 1318, baseType: !2953, size: 64, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2954, file: !44, line: 1319, baseType: !344, size: 64, offset: 128)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2954, file: !44, line: 1320, baseType: !357, size: 128, align: 64, offset: 192)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2936, file: !44, line: 1084, baseType: !316, size: 64, offset: 1152)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2936, file: !44, line: 1085, baseType: !316, size: 64, offset: 1216)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2936, file: !44, line: 1087, baseType: !2972, size: 64, offset: 1280)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2974)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2975)
!2975 = !{!2976, !2980}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2974, file: !44, line: 1012, baseType: !2977, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{null, !2935, !2935}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2974, file: !44, line: 1013, baseType: !2981, size: 64, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{null, !2935}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2936, file: !44, line: 1088, baseType: !2985, size: 64, offset: 1344)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2987)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2988)
!2988 = !{!2989, !2993, !2997, !2998, !3002, !3006, !3010, !3014}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2987, file: !44, line: 1017, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!2921, !2921}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2987, file: !44, line: 1018, baseType: !2994, size: 64, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{null, !2921}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2987, file: !44, line: 1019, baseType: !2981, size: 64, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2987, file: !44, line: 1020, baseType: !2999, size: 64, offset: 192)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!167, !2935, !167}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2987, file: !44, line: 1021, baseType: !3003, size: 64, offset: 256)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!194, !2935}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2987, file: !44, line: 1022, baseType: !3007, size: 64, offset: 320)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!167, !2935, !167, !159}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2987, file: !44, line: 1023, baseType: !3011, size: 64, offset: 384)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{null, !2935, !815}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2987, file: !44, line: 1024, baseType: !3003, size: 64, offset: 448)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2936, file: !44, line: 1097, baseType: !3016, size: 256, offset: 1408)
!3016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2936, file: !44, line: 1089, size: 256, elements: !3017)
!3017 = !{!3018, !3027, !3033}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3016, file: !44, line: 1090, baseType: !3019, size: 256)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3020, line: 10, size: 256, elements: !3021)
!3020 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3021 = !{!3022, !3023, !3026}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3019, file: !3020, line: 11, baseType: !407, size: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3019, file: !3020, line: 12, baseType: !3024, size: 64, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3020, line: 5, flags: DIFlagFwdDecl)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3019, file: !3020, line: 13, baseType: !155, size: 128, offset: 128)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3016, file: !44, line: 1091, baseType: !3028, size: 64)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3020, line: 17, size: 64, elements: !3029)
!3029 = !{!3030}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3028, file: !3020, line: 18, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3020, line: 16, flags: DIFlagFwdDecl)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3016, file: !44, line: 1096, baseType: !3034, size: 192)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3016, file: !44, line: 1092, size: 192, elements: !3035)
!3035 = !{!3036, !3037, !3038}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3034, file: !44, line: 1093, baseType: !155, size: 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3034, file: !44, line: 1094, baseType: !167, size: 32, offset: 128)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3034, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2859, file: !44, line: 1843, baseType: !3040, size: 64, offset: 1280)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!297, !344, !714, !167, !313, !2870, !167}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2859, file: !44, line: 1844, baseType: !1095, size: 64, offset: 1344)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2859, file: !44, line: 1845, baseType: !3045, size: 64, offset: 1408)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!167, !167}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2859, file: !44, line: 1846, baseType: !2932, size: 64, offset: 1472)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2859, file: !44, line: 1847, baseType: !3050, size: 64, offset: 1536)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!297, !2094, !344, !2870, !313, !7}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2859, file: !44, line: 1848, baseType: !3054, size: 64, offset: 1600)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!297, !344, !2870, !2094, !313, !7}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2859, file: !44, line: 1849, baseType: !3058, size: 64, offset: 1664)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!167, !344, !301, !3061, !815}
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2859, file: !44, line: 1850, baseType: !3063, size: 64, offset: 1728)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!301, !344, !167, !521, !521}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2859, file: !44, line: 1852, baseType: !3067, size: 64, offset: 1792)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{null, !704, !344}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2859, file: !44, line: 1856, baseType: !3071, size: 64, offset: 1856)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!297, !344, !521, !344, !521, !313, !7}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2859, file: !44, line: 1858, baseType: !3075, size: 64, offset: 1920)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!521, !344, !521, !344, !521, !521, !7}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2859, file: !44, line: 1861, baseType: !2924, size: 64, offset: 1984)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2854, file: !44, line: 692, baseType: !657, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !422, file: !44, line: 694, baseType: !3081, size: 64, offset: 2560)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3083)
!3083 = !{!3084, !3085, !3086, !3087}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3082, file: !44, line: 1101, baseType: !225)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3082, file: !44, line: 1102, baseType: !155, size: 128)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3082, file: !44, line: 1103, baseType: !155, size: 128, offset: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3082, file: !44, line: 1104, baseType: !155, size: 128, offset: 256)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !422, file: !44, line: 695, baseType: !728, size: 1216, align: 64, offset: 2624)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !422, file: !44, line: 696, baseType: !155, size: 128, offset: 3840)
!3090 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !44, line: 697, baseType: !3091, size: 64, offset: 3968)
!3091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !44, line: 697, size: 64, elements: !3092)
!3092 = !{!3093, !3094, !3095, !3098, !3099}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3091, file: !44, line: 698, baseType: !2094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3091, file: !44, line: 699, baseType: !2609, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3091, file: !44, line: 700, baseType: !3096, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3091, file: !44, line: 701, baseType: !266, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3091, file: !44, line: 702, baseType: !7, size: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !422, file: !44, line: 705, baseType: !409, size: 32, offset: 4032)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !422, file: !44, line: 708, baseType: !409, size: 32, offset: 4064)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !422, file: !44, line: 709, baseType: !2691, size: 64, offset: 4096)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !422, file: !44, line: 720, baseType: !150, size: 64, offset: 4160)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !375, file: !372, line: 98, baseType: !3105, size: 256, offset: 448)
!3105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 256, elements: !2224)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !375, file: !372, line: 101, baseType: !3107, size: 32, offset: 704)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3108, line: 25, size: 32, elements: !3109)
!3108 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3109 = !{!3110}
!3110 = !DIDerivedType(tag: DW_TAG_member, scope: !3107, file: !3108, line: 26, baseType: !3111, size: 32)
!3111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3107, file: !3108, line: 26, size: 32, elements: !3112)
!3112 = !{!3113}
!3113 = !DIDerivedType(tag: DW_TAG_member, scope: !3111, file: !3108, line: 30, baseType: !3114, size: 32)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3111, file: !3108, line: 30, size: 32, elements: !3115)
!3115 = !{!3116, !3117}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3114, file: !3108, line: 31, baseType: !225)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3114, file: !3108, line: 32, baseType: !167, size: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !375, file: !372, line: 102, baseType: !2708, size: 64, offset: 768)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !375, file: !372, line: 103, baseType: !589, size: 64, offset: 832)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !375, file: !372, line: 104, baseType: !316, size: 64, offset: 896)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !375, file: !372, line: 105, baseType: !150, size: 64, offset: 960)
!3122 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !372, line: 107, baseType: !3123, size: 128, offset: 1024)
!3123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !372, line: 107, size: 128, elements: !3124)
!3124 = !{!3125, !3126}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3123, file: !372, line: 108, baseType: !155, size: 128)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3123, file: !372, line: 109, baseType: !3127, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !375, file: !372, line: 111, baseType: !155, size: 128, offset: 1152)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !375, file: !372, line: 112, baseType: !155, size: 128, offset: 1280)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !375, file: !372, line: 120, baseType: !3131, size: 128, offset: 1408)
!3131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !372, line: 116, size: 128, elements: !3132)
!3132 = !{!3133, !3134, !3135}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3131, file: !372, line: 117, baseType: !632, size: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3131, file: !372, line: 118, baseType: !389, size: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3131, file: !372, line: 119, baseType: !357, size: 128, align: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !345, file: !44, line: 922, baseType: !421, size: 64, offset: 256)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !345, file: !44, line: 923, baseType: !2857, size: 64, offset: 320)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !345, file: !44, line: 929, baseType: !225, offset: 384)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !345, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !345, file: !44, line: 931, baseType: !765, size: 64, offset: 448)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !345, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !345, file: !44, line: 933, baseType: !2704, size: 32, offset: 544)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !345, file: !44, line: 934, baseType: !1167, size: 192, offset: 576)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !345, file: !44, line: 935, baseType: !521, size: 64, offset: 768)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !345, file: !44, line: 936, baseType: !3146, size: 192, offset: 832)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3147)
!3147 = !{!3148, !3149, !3150, !3151, !3152, !3153}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3146, file: !44, line: 886, baseType: !2957)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3146, file: !44, line: 887, baseType: !1465, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3146, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3146, file: !44, line: 889, baseType: !427, size: 32, offset: 96)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3146, file: !44, line: 889, baseType: !427, size: 32, offset: 128)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3146, file: !44, line: 890, baseType: !167, size: 32, offset: 160)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !345, file: !44, line: 937, baseType: !1541, size: 64, offset: 1024)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !345, file: !44, line: 938, baseType: !3156, size: 256, offset: 1088)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3157)
!3157 = !{!3158, !3159, !3160, !3161, !3162, !3163}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3156, file: !44, line: 897, baseType: !316, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3156, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3156, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3156, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3156, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3156, file: !44, line: 904, baseType: !521, size: 64, offset: 192)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !345, file: !44, line: 940, baseType: !413, size: 64, offset: 1344)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !345, file: !44, line: 945, baseType: !150, size: 64, offset: 1408)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !345, file: !44, line: 949, baseType: !155, size: 128, offset: 1472)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !345, file: !44, line: 950, baseType: !155, size: 128, offset: 1600)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !345, file: !44, line: 952, baseType: !727, size: 64, offset: 1728)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !345, file: !44, line: 953, baseType: !903, size: 32, offset: 1792)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !345, file: !44, line: 954, baseType: !903, size: 32, offset: 1824)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !335, file: !291, line: 174, baseType: !341, size: 64, offset: 320)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !335, file: !291, line: 176, baseType: !3173, size: 64, offset: 384)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!167, !344, !218, !334, !975}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !323, file: !291, line: 90, baseType: !318, size: 64, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !323, file: !291, line: 91, baseType: !3178, size: 64, offset: 256)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !281, file: !210, line: 143, baseType: !3180, size: 64, offset: 256)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!3183, !218}
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3185)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3186)
!3186 = !{!3187, !3188, !3192, !3196, !3202, !3206}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3185, file: !61, line: 40, baseType: !60, size: 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3185, file: !61, line: 41, baseType: !3189, size: 64, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!194}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3185, file: !61, line: 42, baseType: !3193, size: 64, offset: 128)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!150}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3185, file: !61, line: 43, baseType: !3197, size: 64, offset: 192)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!202, !3200}
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3185, file: !61, line: 44, baseType: !3203, size: 64, offset: 256)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!202}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3185, file: !61, line: 45, baseType: !460, size: 64, offset: 320)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !281, file: !210, line: 144, baseType: !3208, size: 64, offset: 320)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!202, !218}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !281, file: !210, line: 145, baseType: !3212, size: 64, offset: 384)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{null, !218, !3215, !3216}
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !209, file: !210, line: 70, baseType: !3218, size: 64, offset: 384)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !609, line: 123, size: 1024, elements: !3220)
!3220 = !{!3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3349, !3350, !3351, !3352, !3353}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3219, file: !609, line: 124, baseType: !741, size: 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3219, file: !609, line: 125, baseType: !741, size: 32, offset: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3219, file: !609, line: 135, baseType: !3218, size: 64, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3219, file: !609, line: 136, baseType: !213, size: 64, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3219, file: !609, line: 138, baseType: !754, size: 192, align: 64, offset: 192)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3219, file: !609, line: 140, baseType: !202, size: 64, offset: 384)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3219, file: !609, line: 141, baseType: !7, size: 32, offset: 448)
!3228 = !DIDerivedType(tag: DW_TAG_member, scope: !3219, file: !609, line: 142, baseType: !3229, size: 256, offset: 512)
!3229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3219, file: !609, line: 142, size: 256, elements: !3230)
!3230 = !{!3231, !3277, !3281}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3229, file: !609, line: 143, baseType: !3232, size: 192)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !609, line: 91, size: 192, elements: !3233)
!3233 = !{!3234, !3235, !3236}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3232, file: !609, line: 92, baseType: !316, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3232, file: !609, line: 94, baseType: !750, size: 64, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3232, file: !609, line: 100, baseType: !3237, size: 64, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !609, line: 180, size: 704, elements: !3239)
!3239 = !{!3240, !3241, !3242, !3249, !3250, !3251, !3275, !3276}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3238, file: !609, line: 182, baseType: !3218, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3238, file: !609, line: 183, baseType: !7, size: 32, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3238, file: !609, line: 186, baseType: !3243, size: 192, offset: 128)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3244, line: 19, size: 192, elements: !3245)
!3244 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3245 = !{!3246, !3247, !3248}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3243, file: !3244, line: 20, baseType: !732, size: 128)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3243, file: !3244, line: 21, baseType: !7, size: 32, offset: 128)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3243, file: !3244, line: 22, baseType: !7, size: 32, offset: 160)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3238, file: !609, line: 187, baseType: !407, size: 32, offset: 320)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3238, file: !609, line: 188, baseType: !407, size: 32, offset: 352)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3238, file: !609, line: 189, baseType: !3252, size: 64, offset: 384)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !609, line: 168, size: 320, elements: !3254)
!3254 = !{!3255, !3259, !3263, !3267, !3271}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3253, file: !609, line: 169, baseType: !3256, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!167, !704, !3237}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3253, file: !609, line: 171, baseType: !3260, size: 64, offset: 64)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!167, !3218, !213, !307}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3253, file: !609, line: 173, baseType: !3264, size: 64, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!167, !3218}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3253, file: !609, line: 174, baseType: !3268, size: 64, offset: 192)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!167, !3218, !3218, !213}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3253, file: !609, line: 176, baseType: !3272, size: 64, offset: 256)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!167, !704, !3218, !3237}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3238, file: !609, line: 192, baseType: !155, size: 128, offset: 448)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3238, file: !609, line: 194, baseType: !1475, size: 128, offset: 576)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3229, file: !609, line: 144, baseType: !3278, size: 64)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !609, line: 103, size: 64, elements: !3279)
!3279 = !{!3280}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3278, file: !609, line: 104, baseType: !3218, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3229, file: !609, line: 145, baseType: !3282, size: 256)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !609, line: 107, size: 256, elements: !3283)
!3283 = !{!3284, !3344, !3347, !3348}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3282, file: !609, line: 108, baseType: !3285, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3287)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !609, line: 217, size: 768, elements: !3288)
!3288 = !{!3289, !3309, !3313, !3317, !3321, !3325, !3329, !3333, !3334, !3335, !3336, !3340}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3287, file: !609, line: 222, baseType: !3290, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!167, !3293}
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !609, line: 197, size: 1088, elements: !3295)
!3295 = !{!3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3294, file: !609, line: 199, baseType: !3218, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3294, file: !609, line: 200, baseType: !344, size: 64, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3294, file: !609, line: 201, baseType: !704, size: 64, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3294, file: !609, line: 202, baseType: !150, size: 64, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3294, file: !609, line: 205, baseType: !1167, size: 192, offset: 256)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3294, file: !609, line: 206, baseType: !1167, size: 192, offset: 448)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3294, file: !609, line: 207, baseType: !167, size: 32, offset: 640)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3294, file: !609, line: 208, baseType: !155, size: 128, offset: 704)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3294, file: !609, line: 209, baseType: !266, size: 64, offset: 832)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3294, file: !609, line: 211, baseType: !313, size: 64, offset: 896)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3294, file: !609, line: 212, baseType: !194, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3294, file: !609, line: 213, baseType: !194, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3294, file: !609, line: 214, baseType: !1003, size: 64, offset: 1024)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3287, file: !609, line: 223, baseType: !3310, size: 64, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{null, !3293}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3287, file: !609, line: 236, baseType: !3314, size: 64, offset: 128)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!167, !704, !150}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3287, file: !609, line: 238, baseType: !3318, size: 64, offset: 192)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!150, !704, !2870}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3287, file: !609, line: 239, baseType: !3322, size: 64, offset: 256)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!150, !704, !150, !2870}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3287, file: !609, line: 240, baseType: !3326, size: 64, offset: 320)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{null, !704, !150}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3287, file: !609, line: 242, baseType: !3330, size: 64, offset: 384)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!297, !3293, !266, !313, !521}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3287, file: !609, line: 252, baseType: !313, size: 64, offset: 448)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3287, file: !609, line: 259, baseType: !194, size: 8, offset: 512)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3287, file: !609, line: 260, baseType: !3330, size: 64, offset: 576)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3287, file: !609, line: 263, baseType: !3337, size: 64, offset: 640)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!2899, !3293, !2901}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3287, file: !609, line: 266, baseType: !3341, size: 64, offset: 704)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!167, !3293, !975}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3282, file: !609, line: 109, baseType: !3345, size: 64, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !609, line: 31, flags: DIFlagFwdDecl)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3282, file: !609, line: 110, baseType: !521, size: 64, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3282, file: !609, line: 111, baseType: !3218, size: 64, offset: 192)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3219, file: !609, line: 148, baseType: !150, size: 64, offset: 768)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3219, file: !609, line: 154, baseType: !413, size: 64, offset: 832)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3219, file: !609, line: 156, baseType: !308, size: 16, offset: 896)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3219, file: !609, line: 157, baseType: !307, size: 16, offset: 912)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3219, file: !609, line: 158, baseType: !3354, size: 64, offset: 960)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !609, line: 32, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !209, file: !210, line: 71, baseType: !3357, size: 32, offset: 448)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3358, line: 19, size: 32, elements: !3359)
!3358 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3359 = !{!3360}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3357, file: !3358, line: 20, baseType: !1224, size: 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !209, file: !210, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !209, file: !210, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !209, file: !210, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !209, file: !210, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !209, file: !210, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !206, file: !73, line: 463, baseType: !3367, size: 64, offset: 512)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !206, file: !73, line: 465, baseType: !3369, size: 64, offset: 576)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !206, file: !73, line: 467, baseType: !213, size: 64, offset: 640)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !206, file: !73, line: 468, baseType: !3373, size: 64, offset: 704)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3375)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3376)
!3376 = !{!3377, !3378, !3379, !3383, !3388, !3392}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3375, file: !73, line: 88, baseType: !213, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3375, file: !73, line: 89, baseType: !320, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3375, file: !73, line: 90, baseType: !3380, size: 64, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!167, !3367, !261}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3375, file: !73, line: 91, baseType: !3384, size: 64, offset: 192)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!266, !3367, !3387, !3215, !3216}
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3375, file: !73, line: 93, baseType: !3389, size: 64, offset: 256)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{null, !3367}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3375, file: !73, line: 95, baseType: !3393, size: 64, offset: 320)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3395)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3396)
!3396 = !{!3397, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3395, file: !80, line: 279, baseType: !3398, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!167, !3367}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3395, file: !80, line: 280, baseType: !3389, size: 64, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3395, file: !80, line: 281, baseType: !3398, size: 64, offset: 128)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3395, file: !80, line: 282, baseType: !3398, size: 64, offset: 192)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3395, file: !80, line: 283, baseType: !3398, size: 64, offset: 256)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3395, file: !80, line: 284, baseType: !3398, size: 64, offset: 320)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3395, file: !80, line: 285, baseType: !3398, size: 64, offset: 384)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3395, file: !80, line: 286, baseType: !3398, size: 64, offset: 448)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3395, file: !80, line: 287, baseType: !3398, size: 64, offset: 512)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3395, file: !80, line: 288, baseType: !3398, size: 64, offset: 576)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3395, file: !80, line: 289, baseType: !3398, size: 64, offset: 640)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3395, file: !80, line: 290, baseType: !3398, size: 64, offset: 704)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3395, file: !80, line: 291, baseType: !3398, size: 64, offset: 768)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3395, file: !80, line: 292, baseType: !3398, size: 64, offset: 832)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3395, file: !80, line: 293, baseType: !3398, size: 64, offset: 896)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3395, file: !80, line: 294, baseType: !3398, size: 64, offset: 960)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3395, file: !80, line: 295, baseType: !3398, size: 64, offset: 1024)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3395, file: !80, line: 296, baseType: !3398, size: 64, offset: 1088)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3395, file: !80, line: 297, baseType: !3398, size: 64, offset: 1152)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3395, file: !80, line: 298, baseType: !3398, size: 64, offset: 1216)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3395, file: !80, line: 299, baseType: !3398, size: 64, offset: 1280)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3395, file: !80, line: 300, baseType: !3398, size: 64, offset: 1344)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3395, file: !80, line: 301, baseType: !3398, size: 64, offset: 1408)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !206, file: !73, line: 470, baseType: !3424, size: 64, offset: 768)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3426, line: 82, size: 1408, elements: !3427)
!3426 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3427 = !{!3428, !3429, !3430, !3431, !3432, !3433, !3434, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3509, !3512, !3513}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3425, file: !3426, line: 83, baseType: !213, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3425, file: !3426, line: 84, baseType: !213, size: 64, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3425, file: !3426, line: 85, baseType: !3367, size: 64, offset: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3425, file: !3426, line: 86, baseType: !320, size: 64, offset: 192)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3425, file: !3426, line: 87, baseType: !320, size: 64, offset: 256)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3425, file: !3426, line: 88, baseType: !320, size: 64, offset: 320)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3425, file: !3426, line: 90, baseType: !3435, size: 64, offset: 384)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!167, !3367, !3438}
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3440)
!3440 = !{!3441, !3442, !3443, !3444, !3445, !3446, !3447, !3460, !3473, !3474, !3475, !3476, !3477, !3485, !3486, !3487, !3488, !3489, !3490}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3439, file: !67, line: 96, baseType: !213, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3439, file: !67, line: 97, baseType: !3424, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3439, file: !67, line: 99, baseType: !623, size: 64, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3439, file: !67, line: 100, baseType: !213, size: 64, offset: 192)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3439, file: !67, line: 102, baseType: !194, size: 8, offset: 256)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3439, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3439, file: !67, line: 105, baseType: !3448, size: 64, offset: 320)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3450)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3451, line: 262, size: 1600, elements: !3452)
!3451 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3452 = !{!3453, !3454, !3455, !3459}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3450, file: !3451, line: 263, baseType: !2694, size: 256)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3450, file: !3451, line: 264, baseType: !2694, size: 256, offset: 256)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3450, file: !3451, line: 265, baseType: !3456, size: 1024, offset: 512)
!3456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 1024, elements: !3457)
!3457 = !{!3458}
!3458 = !DISubrange(count: 128)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3450, file: !3451, line: 266, baseType: !202, size: 64, offset: 1536)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3439, file: !67, line: 106, baseType: !3461, size: 64, offset: 384)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3463)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3451, line: 210, size: 256, elements: !3464)
!3464 = !{!3465, !3469, !3471, !3472}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3463, file: !3451, line: 211, baseType: !3466, size: 72)
!3466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1347, size: 72, elements: !3467)
!3467 = !{!3468}
!3468 = !DISubrange(count: 9)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3463, file: !3451, line: 212, baseType: !3470, size: 64, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3451, line: 14, baseType: !316)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3463, file: !3451, line: 213, baseType: !409, size: 32, offset: 192)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3463, file: !3451, line: 214, baseType: !409, size: 32, offset: 224)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3439, file: !67, line: 108, baseType: !3398, size: 64, offset: 448)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3439, file: !67, line: 109, baseType: !3389, size: 64, offset: 512)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3439, file: !67, line: 110, baseType: !3398, size: 64, offset: 576)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3439, file: !67, line: 111, baseType: !3389, size: 64, offset: 640)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3439, file: !67, line: 112, baseType: !3478, size: 64, offset: 704)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!167, !3367, !3481}
!3481 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3482)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3483)
!3483 = !{!3484}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3482, file: !80, line: 51, baseType: !167, size: 32)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3439, file: !67, line: 113, baseType: !3398, size: 64, offset: 768)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3439, file: !67, line: 114, baseType: !320, size: 64, offset: 832)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3439, file: !67, line: 115, baseType: !320, size: 64, offset: 896)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3439, file: !67, line: 117, baseType: !3393, size: 64, offset: 960)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3439, file: !67, line: 118, baseType: !3389, size: 64, offset: 1024)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3439, file: !67, line: 120, baseType: !3491, size: 64, offset: 1088)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3425, file: !3426, line: 91, baseType: !3380, size: 64, offset: 448)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3425, file: !3426, line: 92, baseType: !3398, size: 64, offset: 512)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3425, file: !3426, line: 93, baseType: !3389, size: 64, offset: 576)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3425, file: !3426, line: 94, baseType: !3398, size: 64, offset: 640)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3425, file: !3426, line: 95, baseType: !3389, size: 64, offset: 704)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3425, file: !3426, line: 97, baseType: !3398, size: 64, offset: 768)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3425, file: !3426, line: 98, baseType: !3398, size: 64, offset: 832)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3425, file: !3426, line: 100, baseType: !3478, size: 64, offset: 896)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3425, file: !3426, line: 101, baseType: !3398, size: 64, offset: 960)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3425, file: !3426, line: 103, baseType: !3398, size: 64, offset: 1024)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3425, file: !3426, line: 105, baseType: !3398, size: 64, offset: 1088)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3425, file: !3426, line: 107, baseType: !3393, size: 64, offset: 1152)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3425, file: !3426, line: 109, baseType: !3506, size: 64, offset: 1216)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3508)
!3508 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3426, line: 109, flags: DIFlagFwdDecl)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3425, file: !3426, line: 111, baseType: !3510, size: 64, offset: 1280)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3426, line: 111, flags: DIFlagFwdDecl)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3425, file: !3426, line: 112, baseType: !638, offset: 1344)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3425, file: !3426, line: 114, baseType: !194, size: 8, offset: 1344)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !206, file: !73, line: 471, baseType: !3438, size: 64, offset: 832)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !206, file: !73, line: 473, baseType: !150, size: 64, offset: 896)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !206, file: !73, line: 475, baseType: !150, size: 64, offset: 960)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !206, file: !73, line: 480, baseType: !1167, size: 192, offset: 1024)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !206, file: !73, line: 484, baseType: !3519, size: 576, offset: 1216)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3520)
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3526}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3519, file: !73, line: 362, baseType: !155, size: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3519, file: !73, line: 363, baseType: !155, size: 128, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3519, file: !73, line: 364, baseType: !155, size: 128, offset: 256)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3519, file: !73, line: 365, baseType: !155, size: 128, offset: 384)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3519, file: !73, line: 366, baseType: !194, size: 8, offset: 512)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3519, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !206, file: !73, line: 485, baseType: !3528, size: 2304, offset: 1792)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3529)
!3529 = !{!3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3625, !3629}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3528, file: !80, line: 566, baseType: !3481, size: 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3528, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3528, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3528, file: !80, line: 569, baseType: !194, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3528, file: !80, line: 570, baseType: !194, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3528, file: !80, line: 571, baseType: !194, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3528, file: !80, line: 572, baseType: !194, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3528, file: !80, line: 573, baseType: !194, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3528, file: !80, line: 574, baseType: !194, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3528, file: !80, line: 575, baseType: !194, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3528, file: !80, line: 576, baseType: !194, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3528, file: !80, line: 577, baseType: !407, size: 32, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3528, file: !80, line: 578, baseType: !225, offset: 96)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3528, file: !80, line: 580, baseType: !155, size: 128, offset: 128)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3528, file: !80, line: 581, baseType: !1496, size: 192, offset: 256)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3528, file: !80, line: 582, baseType: !3546, size: 64, offset: 448)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3548, line: 43, size: 1472, elements: !3549)
!3548 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3549 = !{!3550, !3551, !3552, !3553, !3554, !3557, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3547, file: !3548, line: 44, baseType: !213, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3547, file: !3548, line: 45, baseType: !167, size: 32, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3547, file: !3548, line: 46, baseType: !155, size: 128, offset: 128)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3547, file: !3548, line: 47, baseType: !225, offset: 256)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3547, file: !3548, line: 48, baseType: !3555, size: 64, offset: 256)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3547, file: !3548, line: 49, baseType: !3558, size: 320, offset: 320)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3559, line: 11, size: 320, elements: !3560)
!3559 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3560 = !{!3561, !3562, !3563, !3568}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3558, file: !3559, line: 16, baseType: !632, size: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3558, file: !3559, line: 17, baseType: !316, size: 64, offset: 128)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3558, file: !3559, line: 18, baseType: !3564, size: 64, offset: 192)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{null, !3567}
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3558, file: !3559, line: 19, baseType: !407, size: 32, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3547, file: !3548, line: 50, baseType: !316, size: 64, offset: 640)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3547, file: !3548, line: 51, baseType: !1294, size: 64, offset: 704)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3547, file: !3548, line: 52, baseType: !1294, size: 64, offset: 768)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3547, file: !3548, line: 53, baseType: !1294, size: 64, offset: 832)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3547, file: !3548, line: 54, baseType: !1294, size: 64, offset: 896)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3547, file: !3548, line: 55, baseType: !1294, size: 64, offset: 960)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3547, file: !3548, line: 56, baseType: !316, size: 64, offset: 1024)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3547, file: !3548, line: 57, baseType: !316, size: 64, offset: 1088)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3547, file: !3548, line: 58, baseType: !316, size: 64, offset: 1152)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3547, file: !3548, line: 59, baseType: !316, size: 64, offset: 1216)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3547, file: !3548, line: 60, baseType: !316, size: 64, offset: 1280)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3547, file: !3548, line: 61, baseType: !3367, size: 64, offset: 1344)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3547, file: !3548, line: 62, baseType: !194, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3547, file: !3548, line: 63, baseType: !194, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3528, file: !80, line: 583, baseType: !194, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3528, file: !80, line: 584, baseType: !194, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3528, file: !80, line: 585, baseType: !194, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3528, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3528, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3528, file: !80, line: 592, baseType: !1286, size: 512, offset: 576)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3528, file: !80, line: 593, baseType: !413, size: 64, offset: 1088)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3528, file: !80, line: 594, baseType: !1953, size: 256, offset: 1152)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3528, file: !80, line: 595, baseType: !1475, size: 128, offset: 1408)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3528, file: !80, line: 596, baseType: !3555, size: 64, offset: 1536)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3528, file: !80, line: 597, baseType: !741, size: 32, offset: 1600)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3528, file: !80, line: 598, baseType: !741, size: 32, offset: 1632)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3528, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3528, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3528, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3528, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3528, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3528, file: !80, line: 604, baseType: !194, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3528, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3528, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3528, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3528, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3528, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3528, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3528, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3528, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3528, file: !80, line: 613, baseType: !167, size: 32, offset: 1792)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3528, file: !80, line: 614, baseType: !167, size: 32, offset: 1824)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3528, file: !80, line: 615, baseType: !413, size: 64, offset: 1856)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3528, file: !80, line: 616, baseType: !413, size: 64, offset: 1920)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3528, file: !80, line: 617, baseType: !413, size: 64, offset: 1984)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3528, file: !80, line: 618, baseType: !413, size: 64, offset: 2048)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3528, file: !80, line: 620, baseType: !3616, size: 64, offset: 2112)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3618)
!3618 = !{!3619, !3620, !3621, !3622}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3617, file: !80, line: 537, baseType: !225)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3617, file: !80, line: 538, baseType: !7, size: 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3617, file: !80, line: 540, baseType: !155, size: 128, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3617, file: !80, line: 543, baseType: !3623, size: 64, offset: 192)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3528, file: !80, line: 621, baseType: !3626, size: 64, offset: 2176)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{null, !3367, !1438}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3528, file: !80, line: 622, baseType: !3630, size: 64, offset: 2240)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !206, file: !73, line: 486, baseType: !3633, size: 64, offset: 4096)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3635)
!3635 = !{!3636, !3637, !3638, !3642, !3643, !3644}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3634, file: !80, line: 643, baseType: !3395, size: 1472)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3634, file: !80, line: 644, baseType: !3398, size: 64, offset: 1472)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3634, file: !80, line: 645, baseType: !3639, size: 64, offset: 1536)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{null, !3367, !194}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3634, file: !80, line: 646, baseType: !3398, size: 64, offset: 1600)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3634, file: !80, line: 647, baseType: !3389, size: 64, offset: 1664)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3634, file: !80, line: 648, baseType: !3389, size: 64, offset: 1728)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !206, file: !73, line: 493, baseType: !3646, size: 64, offset: 4160)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3648)
!3648 = !{!3649, !3650, !3651, !3833, !3834, !3835, !3836, !3837, !3838, !3964, !3965, !3966, !3967, !3968, !3969, !3970}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3647, file: !94, line: 163, baseType: !155, size: 128)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3647, file: !94, line: 164, baseType: !213, size: 64, offset: 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3647, file: !94, line: 165, baseType: !3652, size: 64, offset: 192)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3654)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3655)
!3655 = !{!3656, !3685, !3696, !3701, !3705, !3712, !3716, !3720, !3825, !3829}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3654, file: !94, line: 106, baseType: !3657, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!167, !3646, !3660, !93}
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3662, line: 51, size: 1344, elements: !3663)
!3662 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3663 = !{!3664, !3665, !3667, !3668, !3669, !3678, !3679, !3680, !3681, !3682, !3683, !3684}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3661, file: !3662, line: 52, baseType: !213, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3661, file: !3662, line: 53, baseType: !3666, size: 32, offset: 64)
!3666 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3662, line: 28, baseType: !407)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3661, file: !3662, line: 54, baseType: !213, size: 64, offset: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3661, file: !3662, line: 55, baseType: !172, size: 192, offset: 192)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3661, file: !3662, line: 57, baseType: !3670, size: 64, offset: 384)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3662, line: 31, size: 704, elements: !3672)
!3672 = !{!3673, !3674, !3675, !3676, !3677}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3671, file: !3662, line: 32, baseType: !266, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3671, file: !3662, line: 33, baseType: !167, size: 32, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3671, file: !3662, line: 34, baseType: !150, size: 64, offset: 128)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3671, file: !3662, line: 35, baseType: !3670, size: 64, offset: 192)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3671, file: !3662, line: 43, baseType: !335, size: 448, offset: 256)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3661, file: !3662, line: 58, baseType: !3670, size: 64, offset: 448)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3661, file: !3662, line: 59, baseType: !3660, size: 64, offset: 512)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3661, file: !3662, line: 60, baseType: !3660, size: 64, offset: 576)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3661, file: !3662, line: 61, baseType: !3660, size: 64, offset: 640)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3661, file: !3662, line: 63, baseType: !209, size: 512, offset: 704)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3661, file: !3662, line: 65, baseType: !316, size: 64, offset: 1216)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3661, file: !3662, line: 66, baseType: !150, size: 64, offset: 1280)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3654, file: !94, line: 108, baseType: !3686, size: 64, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!167, !3646, !3689, !93}
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3691)
!3691 = !{!3692, !3693, !3694}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3690, file: !94, line: 64, baseType: !176, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3690, file: !94, line: 65, baseType: !167, size: 32, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3690, file: !94, line: 66, baseType: !3695, size: 512, offset: 96)
!3695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 512, elements: !1729)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3654, file: !94, line: 110, baseType: !3697, size: 64, offset: 128)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!167, !3646, !7, !3700}
!3700 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !156, line: 164, baseType: !316)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3654, file: !94, line: 111, baseType: !3702, size: 64, offset: 192)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{null, !3646, !7}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3654, file: !94, line: 112, baseType: !3706, size: 64, offset: 256)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!167, !3646, !3660, !3709, !7, !3711, !2677}
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3654, file: !94, line: 117, baseType: !3713, size: 64, offset: 320)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!167, !3646, !7, !7, !150}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3654, file: !94, line: 119, baseType: !3717, size: 64, offset: 384)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{null, !3646, !7, !7}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3654, file: !94, line: 121, baseType: !3721, size: 64, offset: 448)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!167, !3646, !3724, !194}
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !115, line: 175, size: 448, elements: !3726)
!3726 = !{!3727, !3728, !3729, !3730, !3742, !3822, !3823, !3824}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3725, file: !115, line: 176, baseType: !407, size: 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3725, file: !115, line: 177, baseType: !7, size: 32, offset: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !3725, file: !115, line: 178, baseType: !316, size: 64, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !3725, file: !115, line: 179, baseType: !3731, size: 64, offset: 128)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !115, line: 145, size: 256, elements: !3733)
!3733 = !{!3734, !3735, !3736, !3739}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !3732, file: !115, line: 146, baseType: !7, size: 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !3732, file: !115, line: 150, baseType: !150, size: 64, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !3732, file: !115, line: 151, baseType: !3737, size: 64, offset: 128)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !115, line: 127, flags: DIFlagFwdDecl)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3732, file: !115, line: 152, baseType: !3740, size: 64, offset: 192)
!3740 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1360, line: 756, baseType: !3741)
!3741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1361, size: 64, elements: !1365)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !3725, file: !115, line: 180, baseType: !3743, size: 64, offset: 192)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !115, line: 503, size: 2304, elements: !3745)
!3745 = !{!3746, !3747, !3748, !3752, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3769, !3773, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3790, !3791, !3792, !3798, !3799, !3803, !3807, !3811, !3815, !3819, !3820, !3821}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !3744, file: !115, line: 504, baseType: !3367, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3744, file: !115, line: 505, baseType: !213, size: 64, offset: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !3744, file: !115, line: 506, baseType: !3749, size: 64, offset: 128)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!7, !3724}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !3744, file: !115, line: 507, baseType: !3753, size: 64, offset: 192)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{null, !3724}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !3744, file: !115, line: 508, baseType: !3753, size: 64, offset: 256)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !3744, file: !115, line: 509, baseType: !3753, size: 64, offset: 320)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !3744, file: !115, line: 511, baseType: !3753, size: 64, offset: 384)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !3744, file: !115, line: 512, baseType: !3753, size: 64, offset: 448)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !3744, file: !115, line: 513, baseType: !3753, size: 64, offset: 512)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !3744, file: !115, line: 514, baseType: !3753, size: 64, offset: 576)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !3744, file: !115, line: 515, baseType: !3753, size: 64, offset: 640)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !3744, file: !115, line: 517, baseType: !3764, size: 64, offset: 704)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!167, !3724, !3767, !194}
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1361)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !3744, file: !115, line: 518, baseType: !3770, size: 64, offset: 768)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!167, !3724}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !3744, file: !115, line: 519, baseType: !3774, size: 64, offset: 832)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!167, !3724, !7}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !3744, file: !115, line: 520, baseType: !3774, size: 64, offset: 896)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !3744, file: !115, line: 522, baseType: !3753, size: 64, offset: 960)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !3744, file: !115, line: 523, baseType: !3753, size: 64, offset: 1024)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !3744, file: !115, line: 525, baseType: !3753, size: 64, offset: 1088)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !3744, file: !115, line: 526, baseType: !3753, size: 64, offset: 1152)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !3744, file: !115, line: 528, baseType: !3753, size: 64, offset: 1216)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !3744, file: !115, line: 529, baseType: !3753, size: 64, offset: 1280)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !3744, file: !115, line: 530, baseType: !3753, size: 64, offset: 1344)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !3744, file: !115, line: 532, baseType: !3753, size: 64, offset: 1408)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !3744, file: !115, line: 534, baseType: !3787, size: 64, offset: 1472)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{null, !3724, !704}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !3744, file: !115, line: 535, baseType: !3770, size: 64, offset: 1536)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !3744, file: !115, line: 536, baseType: !3753, size: 64, offset: 1600)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !3744, file: !115, line: 538, baseType: !3793, size: 64, offset: 1664)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{null, !3724, !3796}
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !115, line: 29, flags: DIFlagFwdDecl)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !3744, file: !115, line: 539, baseType: !3793, size: 64, offset: 1728)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !3744, file: !115, line: 541, baseType: !3800, size: 64, offset: 1792)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!167, !3724, !107, !885}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !3744, file: !115, line: 542, baseType: !3804, size: 64, offset: 1856)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!167, !3724, !107, !194}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !3744, file: !115, line: 544, baseType: !3808, size: 64, offset: 1920)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!167, !3724, !150}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !3744, file: !115, line: 546, baseType: !3812, size: 64, offset: 1984)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{null, !3724, !7}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !3744, file: !115, line: 547, baseType: !3816, size: 64, offset: 2048)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{null, !3724, !3767}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !3744, file: !115, line: 549, baseType: !3770, size: 64, offset: 2112)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !3744, file: !115, line: 550, baseType: !3753, size: 64, offset: 2176)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3744, file: !115, line: 552, baseType: !316, size: 64, offset: 2240)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3725, file: !115, line: 181, baseType: !3646, size: 64, offset: 256)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !3725, file: !115, line: 183, baseType: !3724, size: 64, offset: 320)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !3725, file: !115, line: 185, baseType: !150, size: 64, offset: 384)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3654, file: !94, line: 122, baseType: !3826, size: 64, offset: 512)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{null, !3646, !3724}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3654, file: !94, line: 123, baseType: !3830, size: 64, offset: 576)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!167, !3646, !3689, !3711, !2677}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3647, file: !94, line: 166, baseType: !150, size: 64, offset: 256)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3647, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3647, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3647, file: !94, line: 171, baseType: !176, size: 64, offset: 384)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3647, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3647, file: !94, line: 173, baseType: !3839, size: 64, offset: 512)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !115, line: 1101, size: 192, elements: !3841)
!3841 = !{!3842, !3843, !3844, !3845, !3846, !3847}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !3840, file: !115, line: 1102, baseType: !7, size: 32)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !3840, file: !115, line: 1103, baseType: !7, size: 32, offset: 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !3840, file: !115, line: 1104, baseType: !7, size: 32, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !3840, file: !115, line: 1105, baseType: !7, size: 32, offset: 96)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !3840, file: !115, line: 1106, baseType: !114, size: 32, offset: 128)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3840, file: !115, line: 1107, baseType: !3848, offset: 192)
!3848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3849, elements: !2325)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !115, line: 1051, size: 960, elements: !3851)
!3851 = !{!3852, !3853, !3854, !3858, !3862, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3850, file: !115, line: 1052, baseType: !774)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !3850, file: !115, line: 1053, baseType: !150, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !3850, file: !115, line: 1054, baseType: !3855, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!407, !150}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !3850, file: !115, line: 1055, baseType: !3859, size: 64, offset: 128)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{null, !407, !150}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3850, file: !115, line: 1056, baseType: !3863, size: 64, offset: 192)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{null, !3849}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3850, file: !115, line: 1057, baseType: !3863, size: 64, offset: 256)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !3850, file: !115, line: 1058, baseType: !7, size: 32, offset: 320)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !3850, file: !115, line: 1059, baseType: !7, size: 32, offset: 352)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !3850, file: !115, line: 1060, baseType: !407, size: 32, offset: 384)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !3850, file: !115, line: 1061, baseType: !407, size: 32, offset: 416)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !3850, file: !115, line: 1062, baseType: !407, size: 32, offset: 448)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !3850, file: !115, line: 1063, baseType: !407, size: 32, offset: 480)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !3850, file: !115, line: 1064, baseType: !407, size: 32, offset: 512)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !3850, file: !115, line: 1065, baseType: !7, size: 32, offset: 544)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3850, file: !115, line: 1066, baseType: !150, size: 64, offset: 576)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !3850, file: !115, line: 1067, baseType: !316, size: 64, offset: 640)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3850, file: !115, line: 1068, baseType: !316, size: 64, offset: 704)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3850, file: !115, line: 1069, baseType: !3646, size: 64, offset: 768)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3850, file: !115, line: 1070, baseType: !155, size: 128, offset: 832)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !3850, file: !115, line: 1071, baseType: !3881, offset: 960)
!3881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3882, elements: !2325)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !115, line: 1009, size: 2944, elements: !3883)
!3883 = !{!3884, !3885, !3895, !3961, !3962, !3963}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !3882, file: !115, line: 1010, baseType: !3744, size: 2304)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3882, file: !115, line: 1011, baseType: !3886, size: 448, offset: 2304)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !115, line: 986, size: 448, elements: !3887)
!3887 = !{!3888, !3889, !3890, !3891, !3892, !3893, !3894}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !3886, file: !115, line: 987, baseType: !316, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !3886, file: !115, line: 988, baseType: !316, size: 64, offset: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3886, file: !115, line: 989, baseType: !316, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !3886, file: !115, line: 990, baseType: !316, size: 64, offset: 192)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !3886, file: !115, line: 991, baseType: !316, size: 64, offset: 256)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3886, file: !115, line: 992, baseType: !316, size: 64, offset: 320)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !3886, file: !115, line: 993, baseType: !316, size: 64, offset: 384)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3882, file: !115, line: 1012, baseType: !3896, size: 64, offset: 2752)
!3896 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !3897, line: 12, baseType: !3898)
!3897 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{null, !3901}
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !3903, line: 55, size: 2880, elements: !3904)
!3903 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!3904 = !{!3905, !3906, !3907, !3908, !3909, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !3902, file: !3903, line: 56, baseType: !3732, size: 256)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !3902, file: !3903, line: 57, baseType: !3725, size: 448, offset: 256)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !3902, file: !3903, line: 58, baseType: !2677, size: 64, offset: 704)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !3902, file: !3903, line: 59, baseType: !3896, size: 64, offset: 768)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3902, file: !3903, line: 60, baseType: !3910, size: 64, offset: 832)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !108, line: 110, size: 768, elements: !3912)
!3912 = !{!3913, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3911, file: !108, line: 111, baseType: !3914, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !108, line: 92, baseType: !3915)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!3918, !167, !150}
!3918 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !123, line: 17, baseType: !122)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !3911, file: !108, line: 112, baseType: !150, size: 64, offset: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !3911, file: !108, line: 113, baseType: !150, size: 64, offset: 128)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3911, file: !108, line: 114, baseType: !3910, size: 64, offset: 192)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !3911, file: !108, line: 115, baseType: !3914, size: 64, offset: 256)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3911, file: !108, line: 116, baseType: !1210, size: 64, offset: 320)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3911, file: !108, line: 117, baseType: !3910, size: 64, offset: 384)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3911, file: !108, line: 118, baseType: !7, size: 32, offset: 448)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3911, file: !108, line: 119, baseType: !7, size: 32, offset: 480)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !3911, file: !108, line: 120, baseType: !316, size: 64, offset: 512)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !3911, file: !108, line: 121, baseType: !316, size: 64, offset: 576)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3911, file: !108, line: 122, baseType: !213, size: 64, offset: 640)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3911, file: !108, line: 123, baseType: !3931, size: 64, offset: 704)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !108, line: 123, flags: DIFlagFwdDecl)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !3902, file: !3903, line: 61, baseType: !7, size: 32, offset: 896)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !3902, file: !3903, line: 62, baseType: !7, size: 32, offset: 928)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3902, file: !3903, line: 63, baseType: !7, size: 32, offset: 960)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !3902, file: !3903, line: 64, baseType: !7, size: 32, offset: 992)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !3902, file: !3903, line: 65, baseType: !7, size: 32, offset: 1024)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !3902, file: !3903, line: 66, baseType: !7, size: 32, offset: 1056)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !3902, file: !3903, line: 67, baseType: !316, size: 64, offset: 1088)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !3902, file: !3903, line: 68, baseType: !7, size: 32, offset: 1152)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !3902, file: !3903, line: 69, baseType: !741, size: 32, offset: 1184)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !3902, file: !3903, line: 70, baseType: !167, size: 32, offset: 1216)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3902, file: !3903, line: 71, baseType: !774, offset: 1248)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !3902, file: !3903, line: 72, baseType: !3945, size: 64, offset: 1280)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !3902, file: !3903, line: 73, baseType: !3767, size: 64, offset: 1344)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !3902, file: !3903, line: 81, baseType: !316, size: 64, offset: 1408)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !3902, file: !3903, line: 82, baseType: !741, size: 32, offset: 1472)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !3902, file: !3903, line: 83, baseType: !1475, size: 128, offset: 1536)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !3902, file: !3903, line: 85, baseType: !7, size: 32, offset: 1664)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !3902, file: !3903, line: 86, baseType: !7, size: 32, offset: 1696)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !3902, file: !3903, line: 87, baseType: !7, size: 32, offset: 1728)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !3902, file: !3903, line: 88, baseType: !7, size: 32, offset: 1760)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3902, file: !3903, line: 91, baseType: !3931, size: 64, offset: 1792)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3902, file: !3903, line: 98, baseType: !357, size: 128, align: 64, offset: 1856)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3902, file: !3903, line: 99, baseType: !209, size: 512, offset: 1984)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !3902, file: !3903, line: 101, baseType: !1167, size: 192, offset: 2496)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !3902, file: !3903, line: 102, baseType: !167, size: 32, offset: 2688)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3902, file: !3903, line: 103, baseType: !623, size: 64, offset: 2752)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3902, file: !3903, line: 104, baseType: !213, size: 64, offset: 2816)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3882, file: !115, line: 1013, baseType: !407, size: 32, offset: 2816)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !3882, file: !115, line: 1014, baseType: !407, size: 32, offset: 2848)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !3882, file: !115, line: 1015, baseType: !1409, size: 64, offset: 2880)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3647, file: !94, line: 175, baseType: !3646, size: 64, offset: 576)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3647, file: !94, line: 182, baseType: !3700, size: 64, offset: 640)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3647, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3647, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3647, file: !94, line: 185, baseType: !732, size: 128, offset: 768)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3647, file: !94, line: 186, baseType: !1167, size: 192, offset: 896)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3647, file: !94, line: 187, baseType: !3971, offset: 1088)
!3971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2325)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !206, file: !73, line: 499, baseType: !155, size: 128, offset: 4224)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !206, file: !73, line: 502, baseType: !3974, size: 64, offset: 4352)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3976)
!3976 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !206, file: !73, line: 504, baseType: !3978, size: 64, offset: 4416)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !206, file: !73, line: 505, baseType: !413, size: 64, offset: 4480)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !206, file: !73, line: 510, baseType: !413, size: 64, offset: 4544)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !206, file: !73, line: 511, baseType: !3982, size: 64, offset: 4608)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3984)
!3984 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !206, file: !73, line: 513, baseType: !3986, size: 64, offset: 4672)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3988)
!3988 = !{!3989, !3990}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3987, file: !73, line: 293, baseType: !7, size: 32)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3987, file: !73, line: 294, baseType: !316, size: 64, offset: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !206, file: !73, line: 515, baseType: !155, size: 128, offset: 4736)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !206, file: !73, line: 526, baseType: !3993, offset: 4864)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3994, line: 5, elements: !239)
!3994 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !206, file: !73, line: 528, baseType: !3660, size: 64, offset: 4864)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !206, file: !73, line: 529, baseType: !176, size: 64, offset: 4928)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !206, file: !73, line: 534, baseType: !503, size: 32, offset: 4992)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !206, file: !73, line: 535, baseType: !407, size: 32, offset: 5024)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !206, file: !73, line: 537, baseType: !225, offset: 5056)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !206, file: !73, line: 538, baseType: !155, size: 128, offset: 5056)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !206, file: !73, line: 540, baseType: !4002, size: 64, offset: 5184)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4004, line: 54, size: 960, elements: !4005)
!4004 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4005 = !{!4006, !4007, !4008, !4009, !4010, !4011, !4012, !4016, !4020, !4021, !4022, !4023, !4027, !4031, !4032}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4003, file: !4004, line: 55, baseType: !213, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4003, file: !4004, line: 56, baseType: !623, size: 64, offset: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4003, file: !4004, line: 58, baseType: !320, size: 64, offset: 128)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4003, file: !4004, line: 59, baseType: !320, size: 64, offset: 192)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4003, file: !4004, line: 60, baseType: !218, size: 64, offset: 256)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4003, file: !4004, line: 62, baseType: !3380, size: 64, offset: 320)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4003, file: !4004, line: 63, baseType: !4013, size: 64, offset: 384)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!266, !3367, !3387}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4003, file: !4004, line: 65, baseType: !4017, size: 64, offset: 448)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{null, !4002}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4003, file: !4004, line: 66, baseType: !3389, size: 64, offset: 512)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4003, file: !4004, line: 68, baseType: !3398, size: 64, offset: 576)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4003, file: !4004, line: 70, baseType: !3183, size: 64, offset: 640)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4003, file: !4004, line: 71, baseType: !4024, size: 64, offset: 704)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!202, !3367}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4003, file: !4004, line: 73, baseType: !4028, size: 64, offset: 768)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{null, !3367, !3215, !3216}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4003, file: !4004, line: 75, baseType: !3393, size: 64, offset: 832)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4003, file: !4004, line: 77, baseType: !3510, size: 64, offset: 896)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !206, file: !73, line: 541, baseType: !320, size: 64, offset: 5248)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !206, file: !73, line: 543, baseType: !3389, size: 64, offset: 5312)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !206, file: !73, line: 544, baseType: !4036, size: 64, offset: 5376)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !206, file: !73, line: 545, baseType: !4039, size: 64, offset: 5440)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !206, file: !73, line: 547, baseType: !194, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !206, file: !73, line: 548, baseType: !194, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !206, file: !73, line: 549, baseType: !194, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !206, file: !73, line: 550, baseType: !194, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !180, file: !173, line: 116, baseType: !4046, size: 64, offset: 256)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!194, !196, !213}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !180, file: !173, line: 118, baseType: !4050, size: 64, offset: 320)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!167, !196, !213, !7, !150, !313}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !180, file: !173, line: 123, baseType: !4054, size: 64, offset: 384)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!167, !196, !213, !4057, !313}
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !180, file: !173, line: 126, baseType: !4059, size: 64, offset: 448)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!213, !196}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !180, file: !173, line: 127, baseType: !4059, size: 64, offset: 512)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !180, file: !173, line: 128, baseType: !4064, size: 64, offset: 576)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!176, !196}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !180, file: !173, line: 130, baseType: !4068, size: 64, offset: 640)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!176, !196, !176}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !180, file: !173, line: 133, baseType: !4072, size: 64, offset: 704)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!176, !196, !213}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !180, file: !173, line: 135, baseType: !4076, size: 64, offset: 768)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!167, !196, !213, !213, !7, !7, !4079}
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !173, line: 43, size: 640, elements: !4081)
!4081 = !{!4082, !4083, !4084}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4080, file: !173, line: 44, baseType: !176, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4080, file: !173, line: 45, baseType: !7, size: 32, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4080, file: !173, line: 46, baseType: !4085, size: 512, offset: 128)
!4085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 512, elements: !1324)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !180, file: !173, line: 140, baseType: !4068, size: 64, offset: 832)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !180, file: !173, line: 143, baseType: !4064, size: 64, offset: 896)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !180, file: !173, line: 145, baseType: !183, size: 64, offset: 960)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !180, file: !173, line: 146, baseType: !4090, size: 64, offset: 1024)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!167, !196, !4093}
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !173, line: 29, size: 128, elements: !4095)
!4095 = !{!4096, !4097, !4098}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4094, file: !173, line: 30, baseType: !7, size: 32)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4094, file: !173, line: 31, baseType: !7, size: 32, offset: 32)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4094, file: !173, line: 32, baseType: !196, size: 64, offset: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !180, file: !173, line: 148, baseType: !4100, size: 64, offset: 1088)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!167, !196, !3367}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !172, file: !173, line: 20, baseType: !3367, size: 64, offset: 128)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !163, file: !164, line: 355, baseType: !162, size: 64, offset: 320)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !163, file: !164, line: 356, baseType: !155, size: 128, offset: 384)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !163, file: !164, line: 357, baseType: !155, size: 128, offset: 512)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !163, file: !164, line: 358, baseType: !155, size: 128, offset: 640)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !163, file: !164, line: 359, baseType: !155, size: 128, offset: 768)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !163, file: !164, line: 360, baseType: !4110, size: 32, offset: 896)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !164, line: 179, size: 32, elements: !4111)
!4111 = !{!4112, !4113, !4114, !4115, !4116, !4117}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !4110, file: !164, line: 180, baseType: !407, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4110, file: !164, line: 181, baseType: !407, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !4110, file: !164, line: 182, baseType: !407, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !4110, file: !164, line: 183, baseType: !407, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !4110, file: !164, line: 184, baseType: !407, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4110, file: !164, line: 185, baseType: !407, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !163, file: !164, line: 361, baseType: !4119, size: 32, offset: 928)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !164, line: 190, size: 32, elements: !4120)
!4120 = !{!4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !4119, file: !164, line: 191, baseType: !407, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4119, file: !164, line: 192, baseType: !407, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !4119, file: !164, line: 193, baseType: !407, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !4119, file: !164, line: 194, baseType: !407, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4119, file: !164, line: 195, baseType: !407, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !4119, file: !164, line: 196, baseType: !407, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !4119, file: !164, line: 197, baseType: !407, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !4119, file: !164, line: 198, baseType: !407, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !4119, file: !164, line: 199, baseType: !407, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !4119, file: !164, line: 200, baseType: !407, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !4119, file: !164, line: 201, baseType: !407, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !4119, file: !164, line: 202, baseType: !407, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !4119, file: !164, line: 203, baseType: !407, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4119, file: !164, line: 204, baseType: !407, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !163, file: !164, line: 362, baseType: !4136, size: 960, offset: 960)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !164, line: 234, size: 960, elements: !4137)
!4137 = !{!4138, !4140, !4147, !4149, !4150, !4151, !4156, !4159}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !4136, file: !164, line: 235, baseType: !4139, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !164, line: 217, baseType: !2028)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4136, file: !164, line: 236, baseType: !4141, size: 32, offset: 64)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !164, line: 227, size: 32, elements: !4142)
!4142 = !{!4143, !4144, !4145, !4146}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !4141, file: !164, line: 228, baseType: !407, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !4141, file: !164, line: 229, baseType: !407, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !4141, file: !164, line: 230, baseType: !407, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4141, file: !164, line: 231, baseType: !407, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !4136, file: !164, line: 237, baseType: !4148, size: 64, offset: 128)
!4148 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !164, line: 218, baseType: !413)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !4136, file: !164, line: 238, baseType: !266, size: 64, offset: 192)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4136, file: !164, line: 239, baseType: !155, size: 128, offset: 256)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !4136, file: !164, line: 240, baseType: !4152, size: 320, offset: 384)
!4152 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !164, line: 219, baseType: !4153)
!4153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 320, elements: !4154)
!4154 = !{!4155}
!4155 = !DISubrange(count: 40)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !4136, file: !164, line: 241, baseType: !4157, size: 160, offset: 704)
!4157 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !164, line: 220, baseType: !4158)
!4158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 160, elements: !2195)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !4136, file: !164, line: 242, baseType: !4160, size: 64, offset: 896)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !170, line: 899, size: 192, elements: !4162)
!4162 = !{!4163, !4165, !4170, !4176, !4183, !4189, !4195, !4203}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4161, file: !170, line: 900, baseType: !4164, size: 32)
!4164 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !170, line: 635, baseType: !407)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !4161, file: !170, line: 904, baseType: !4166, size: 128)
!4166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4161, file: !170, line: 901, size: 128, elements: !4167)
!4167 = !{!4168, !4169}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4166, file: !170, line: 902, baseType: !4164, size: 32)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4166, file: !170, line: 903, baseType: !413, size: 64, offset: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4161, file: !170, line: 910, baseType: !4171, size: 128)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4161, file: !170, line: 906, size: 128, elements: !4172)
!4172 = !{!4173, !4174, !4175}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4171, file: !170, line: 907, baseType: !4164, size: 32)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4171, file: !170, line: 908, baseType: !407, size: 32, offset: 32)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4171, file: !170, line: 909, baseType: !266, size: 64, offset: 64)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4161, file: !170, line: 916, baseType: !4177, size: 128)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4161, file: !170, line: 912, size: 128, elements: !4178)
!4178 = !{!4179, !4180, !4181}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4177, file: !170, line: 913, baseType: !4164, size: 32)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4177, file: !170, line: 914, baseType: !407, size: 32, offset: 32)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4177, file: !170, line: 915, baseType: !4182, size: 64, offset: 64)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !4161, file: !170, line: 922, baseType: !4184, size: 128)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4161, file: !170, line: 918, size: 128, elements: !4185)
!4185 = !{!4186, !4187, !4188}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4184, file: !170, line: 919, baseType: !4164, size: 32)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4184, file: !170, line: 920, baseType: !407, size: 32, offset: 32)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !4184, file: !170, line: 921, baseType: !4160, size: 64, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !4161, file: !170, line: 928, baseType: !4190, size: 128)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4161, file: !170, line: 924, size: 128, elements: !4191)
!4191 = !{!4192, !4193, !4194}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4190, file: !170, line: 925, baseType: !4164, size: 32)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !4190, file: !170, line: 926, baseType: !4164, size: 32, offset: 32)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4190, file: !170, line: 927, baseType: !169, size: 64, offset: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !4161, file: !170, line: 935, baseType: !4196, size: 192)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4161, file: !170, line: 930, size: 192, elements: !4197)
!4197 = !{!4198, !4199, !4200, !4202}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4196, file: !170, line: 931, baseType: !4164, size: 32)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !4196, file: !170, line: 932, baseType: !407, size: 32, offset: 32)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !4196, file: !170, line: 933, baseType: !4201, size: 64, offset: 64)
!4201 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !170, line: 128, baseType: !413)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !4196, file: !170, line: 934, baseType: !407, size: 32, offset: 128)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !4161, file: !170, line: 941, baseType: !4204, size: 96)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4161, file: !170, line: 937, size: 96, elements: !4205)
!4205 = !{!4206, !4207, !4208}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4204, file: !170, line: 938, baseType: !4164, size: 32)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !4204, file: !170, line: 939, baseType: !407, size: 32, offset: 32)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !4204, file: !170, line: 940, baseType: !407, size: 32, offset: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !163, file: !164, line: 363, baseType: !4210, size: 1344, offset: 1920)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !164, line: 275, size: 1344, elements: !4211)
!4211 = !{!4212, !4213, !4223}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4210, file: !164, line: 276, baseType: !167, size: 32)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4210, file: !164, line: 277, baseType: !4214, size: 32, offset: 32)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !164, line: 254, size: 32, elements: !4215)
!4215 = !{!4216, !4217, !4218, !4219, !4220, !4221, !4222}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !4214, file: !164, line: 255, baseType: !407, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !4214, file: !164, line: 256, baseType: !407, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !4214, file: !164, line: 257, baseType: !407, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !4214, file: !164, line: 258, baseType: !407, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !4214, file: !164, line: 259, baseType: !407, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !4214, file: !164, line: 260, baseType: !407, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4214, file: !164, line: 261, baseType: !407, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4210, file: !164, line: 278, baseType: !4224, size: 1280, offset: 64)
!4224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4225, size: 1280, elements: !4236)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !164, line: 264, size: 256, elements: !4226)
!4226 = !{!4227, !4233, !4234, !4235}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4225, file: !164, line: 269, baseType: !4228, size: 8)
!4228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4225, file: !164, line: 265, size: 8, elements: !4229)
!4229 = !{!4230, !4231, !4232}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4228, file: !164, line: 266, baseType: !1346, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !4228, file: !164, line: 267, baseType: !1346, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4228, file: !164, line: 268, baseType: !1346, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4225, file: !164, line: 270, baseType: !167, size: 32, offset: 32)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4225, file: !164, line: 271, baseType: !167, size: 32, offset: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4225, file: !164, line: 272, baseType: !155, size: 128, offset: 128)
!4236 = !{!4237}
!4237 = !DISubrange(count: 5)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !163, file: !164, line: 364, baseType: !4239, size: 640, offset: 3264)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !164, line: 315, size: 640, elements: !4240)
!4240 = !{!4241, !4242, !4243, !4244, !4245, !4250, !4259, !4260, !4261}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !4239, file: !164, line: 316, baseType: !169, size: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !4239, file: !164, line: 317, baseType: !413, size: 64, offset: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !4239, file: !164, line: 318, baseType: !413, size: 64, offset: 128)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4239, file: !164, line: 319, baseType: !155, size: 128, offset: 192)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4239, file: !164, line: 320, baseType: !4246, size: 8, offset: 320)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !164, line: 305, size: 8, elements: !4247)
!4247 = !{!4248, !4249}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4246, file: !164, line: 306, baseType: !1346, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !4246, file: !164, line: 307, baseType: !1346, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4239, file: !164, line: 321, baseType: !4251, size: 128, offset: 384)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !164, line: 310, size: 128, elements: !4252)
!4252 = !{!4253, !4258}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4251, file: !164, line: 311, baseType: !4254, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{null, !4257}
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4251, file: !164, line: 312, baseType: !3367, size: 64, offset: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !4239, file: !164, line: 322, baseType: !3546, size: 64, offset: 512)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !4239, file: !164, line: 323, baseType: !167, size: 32, offset: 576)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !4239, file: !164, line: 324, baseType: !167, size: 32, offset: 608)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !163, file: !164, line: 365, baseType: !4263, size: 192, offset: 3904)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !164, line: 297, size: 192, elements: !4264)
!4264 = !{!4265, !4266, !4270, !4271}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4263, file: !164, line: 298, baseType: !167, size: 32)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4263, file: !164, line: 299, baseType: !4267, size: 8, offset: 32)
!4267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !164, line: 283, size: 8, elements: !4268)
!4268 = !{!4269}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4267, file: !164, line: 284, baseType: !1346, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !4263, file: !164, line: 300, baseType: !167, size: 32, offset: 64)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4263, file: !164, line: 301, baseType: !4272, size: 64, offset: 128)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !164, line: 287, size: 64, elements: !4274)
!4274 = !{!4275, !4280, !4281, !4282}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4273, file: !164, line: 291, baseType: !4276, size: 8)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4273, file: !164, line: 288, size: 8, elements: !4277)
!4277 = !{!4278, !4279}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4276, file: !164, line: 289, baseType: !1346, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4276, file: !164, line: 290, baseType: !1346, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4273, file: !164, line: 292, baseType: !1346, size: 8, offset: 8)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !4273, file: !164, line: 293, baseType: !1346, size: 8, offset: 16)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4273, file: !164, line: 294, baseType: !167, size: 32, offset: 32)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !163, file: !164, line: 366, baseType: !4284, size: 64, offset: 4096)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !164, line: 209, size: 64, elements: !4285)
!4285 = !{!4286}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4284, file: !164, line: 210, baseType: !3931, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !163, file: !164, line: 367, baseType: !4288, size: 384, offset: 4160)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !164, line: 341, size: 384, elements: !4289)
!4289 = !{!4290, !4293, !4294, !4295}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4288, file: !164, line: 342, baseType: !4291, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4161)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4288, file: !164, line: 343, baseType: !155, size: 128, offset: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !4288, file: !164, line: 344, baseType: !4291, size: 64, offset: 192)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !4288, file: !164, line: 345, baseType: !155, size: 128, offset: 256)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !163, file: !164, line: 368, baseType: !4297, size: 64, offset: 4544)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !164, line: 122, size: 1216, elements: !4299)
!4299 = !{!4300, !4301, !4302, !4307, !4311, !4315, !4316, !4317}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4298, file: !164, line: 123, baseType: !3461, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !4298, file: !164, line: 124, baseType: !155, size: 128, offset: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4298, file: !164, line: 125, baseType: !4303, size: 64, offset: 192)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!194, !213, !4306}
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4298, file: !164, line: 126, baseType: !4308, size: 64, offset: 256)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!167, !162, !3461}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4298, file: !164, line: 127, baseType: !4312, size: 64, offset: 320)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{null, !162}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4298, file: !164, line: 128, baseType: !3389, size: 64, offset: 384)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !4298, file: !164, line: 129, baseType: !3389, size: 64, offset: 448)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4298, file: !164, line: 130, baseType: !4318, size: 704, offset: 512)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !164, line: 108, size: 704, elements: !4319)
!4319 = !{!4320, !4321, !4325, !4326, !4327}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4318, file: !164, line: 109, baseType: !209, size: 512)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !4318, file: !164, line: 110, baseType: !4322, size: 64, offset: 512)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!167, !162}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !4318, file: !164, line: 111, baseType: !4312, size: 64, offset: 576)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4318, file: !164, line: 112, baseType: !194, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !4318, file: !164, line: 113, baseType: !194, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !163, file: !164, line: 369, baseType: !4329, size: 64, offset: 4608)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !164, line: 138, size: 256, elements: !4331)
!4331 = !{!4332, !4333, !4337, !4341}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4330, file: !164, line: 139, baseType: !162, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4330, file: !164, line: 140, baseType: !4334, size: 64, offset: 64)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!167, !162, !407}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4330, file: !164, line: 141, baseType: !4338, size: 64, offset: 128)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{null, !162, !407}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4330, file: !164, line: 142, baseType: !4312, size: 64, offset: 192)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !163, file: !164, line: 370, baseType: !4343, size: 64, offset: 4672)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !164, line: 162, size: 2816, elements: !4345)
!4345 = !{!4346, !4350, !4351, !4352, !4353, !4362, !4363}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4344, file: !164, line: 163, baseType: !4347, size: 640)
!4347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 640, elements: !4348)
!4348 = !{!4349}
!4349 = !DISubrange(count: 80)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4344, file: !164, line: 164, baseType: !4347, size: 640, offset: 640)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4344, file: !164, line: 165, baseType: !3461, size: 64, offset: 1280)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4344, file: !164, line: 166, baseType: !7, size: 32, offset: 1344)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4344, file: !164, line: 167, baseType: !4354, size: 192, offset: 1408)
!4354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !164, line: 154, size: 192, elements: !4355)
!4355 = !{!4356, !4358, !4360}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !4354, file: !164, line: 155, baseType: !4357, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !164, line: 150, baseType: !4322)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4354, file: !164, line: 156, baseType: !4359, size: 64, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !164, line: 151, baseType: !4322)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4354, file: !164, line: 157, baseType: !4361, size: 64, offset: 128)
!4361 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !164, line: 152, baseType: !4338)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !4344, file: !164, line: 168, baseType: !3439, size: 1152, offset: 1600)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4344, file: !164, line: 169, baseType: !623, size: 64, offset: 2752)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !163, file: !164, line: 371, baseType: !4365, size: 64, offset: 4736)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4367)
!4367 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !164, line: 348, flags: DIFlagFwdDecl)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !163, file: !164, line: 372, baseType: !150, size: 64, offset: 4800)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !163, file: !164, line: 373, baseType: !206, size: 5568, offset: 4864)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !163, file: !164, line: 374, baseType: !7, size: 32, offset: 10432)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !163, file: !164, line: 375, baseType: !7, size: 32, offset: 10464)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !163, file: !164, line: 376, baseType: !155, size: 128, offset: 10496)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !163, file: !164, line: 377, baseType: !1167, size: 192, offset: 10624)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !163, file: !164, line: 378, baseType: !4312, size: 64, offset: 10816)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !152, file: !3, line: 69, baseType: !4376, size: 608, offset: 192)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_link_irq", file: !3, line: 55, size: 608, elements: !4377)
!4377 = !{!4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4376, file: !3, line: 56, baseType: !407, size: 32)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !4376, file: !3, line: 57, baseType: !1346, size: 8, offset: 32)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !4376, file: !3, line: 58, baseType: !1346, size: 8, offset: 40)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !4376, file: !3, line: 59, baseType: !1346, size: 8, offset: 48)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "possible_count", scope: !4376, file: !3, line: 60, baseType: !1346, size: 8, offset: 56)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "possible", scope: !4376, file: !3, line: 61, baseType: !3695, size: 512, offset: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !4376, file: !3, line: 62, baseType: !1346, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4376, file: !3, line: 63, baseType: !1346, size: 7, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !152, file: !3, line: 70, baseType: !167, size: 32, offset: 800)
!4387 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !170, line: 421, baseType: !407)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !159)
!4390 = !{!4391, !4402, !4404, !4406, !4408, !0, !4410, !4413, !4415, !4418, !4420, !4425, !4427, !4432, !4437, !4439, !4452, !4454}
!4391 = !DIGlobalVariableExpression(var: !4392, expr: !DIExpression())
!4392 = distinct !DIGlobalVariable(name: "__setup_acpi_irq_isa", scope: !2, file: !3, line: 883, type: !4393, isLocal: true, isDefinition: true, align: 64)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !4394, line: 241, size: 192, elements: !4395)
!4394 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4395 = !{!4396, !4397, !4401}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4393, file: !4394, line: 242, baseType: !213, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !4393, file: !4394, line: 243, baseType: !4398, size: 64, offset: 64)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{!167, !266}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !4393, file: !4394, line: 244, baseType: !167, size: 32, offset: 128)
!4402 = !DIGlobalVariableExpression(var: !4403, expr: !DIExpression())
!4403 = distinct !DIGlobalVariable(name: "__setup_acpi_irq_pci", scope: !2, file: !3, line: 895, type: !4393, isLocal: true, isDefinition: true, align: 64)
!4404 = !DIGlobalVariableExpression(var: !4405, expr: !DIExpression())
!4405 = distinct !DIGlobalVariable(name: "__setup_acpi_irq_nobalance_set", scope: !2, file: !3, line: 903, type: !4393, isLocal: true, isDefinition: true, align: 64)
!4406 = !DIGlobalVariableExpression(var: !4407, expr: !DIExpression())
!4407 = distinct !DIGlobalVariable(name: "__setup_acpi_irq_balance_set", scope: !2, file: !3, line: 911, type: !4393, isLocal: true, isDefinition: true, align: 64)
!4408 = !DIGlobalVariableExpression(var: !4409, expr: !DIExpression())
!4409 = distinct !DIGlobalVariable(name: "sci_penalty", scope: !2, file: !3, line: 75, type: !167, isLocal: true, isDefinition: true)
!4410 = !DIGlobalVariableExpression(var: !4411, expr: !DIExpression())
!4411 = distinct !DIGlobalVariable(name: "acpi_isa_irq_penalty", scope: !2, file: !3, line: 435, type: !4412, isLocal: true, isDefinition: true)
!4412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 512, elements: !1729)
!4413 = !DIGlobalVariableExpression(var: !4414, expr: !DIExpression())
!4414 = distinct !DIGlobalVariable(name: "acpi_link_lock", scope: !2, file: !3, line: 74, type: !1167, isLocal: true, isDefinition: true)
!4415 = !DIGlobalVariableExpression(var: !4416, expr: !DIExpression())
!4416 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 31, type: !4417, isLocal: true, isDefinition: true)
!4417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 72, elements: !3467)
!4418 = !DIGlobalVariableExpression(var: !4419, expr: !DIExpression())
!4419 = distinct !DIGlobalVariable(name: "sci_irq", scope: !2, file: !3, line: 75, type: !167, isLocal: true, isDefinition: true)
!4420 = !DIGlobalVariableExpression(var: !4421, expr: !DIExpression())
!4421 = distinct !DIGlobalVariable(name: "__setup_str_acpi_irq_isa", scope: !2, file: !3, line: 883, type: !4422, isLocal: true, isDefinition: true, align: 8)
!4422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 112, elements: !4423)
!4423 = !{!4424}
!4424 = !DISubrange(count: 14)
!4425 = !DIGlobalVariableExpression(var: !4426, expr: !DIExpression())
!4426 = distinct !DIGlobalVariable(name: "__setup_str_acpi_irq_pci", scope: !2, file: !3, line: 895, type: !4422, isLocal: true, isDefinition: true, align: 8)
!4427 = !DIGlobalVariableExpression(var: !4428, expr: !DIExpression())
!4428 = distinct !DIGlobalVariable(name: "__setup_str_acpi_irq_nobalance_set", scope: !2, file: !3, line: 903, type: !4429, isLocal: true, isDefinition: true, align: 8)
!4429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 152, elements: !4430)
!4430 = !{!4431}
!4431 = !DISubrange(count: 19)
!4432 = !DIGlobalVariableExpression(var: !4433, expr: !DIExpression())
!4433 = distinct !DIGlobalVariable(name: "__setup_str_acpi_irq_balance_set", scope: !2, file: !3, line: 911, type: !4434, isLocal: true, isDefinition: true, align: 8)
!4434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 136, elements: !4435)
!4435 = !{!4436}
!4436 = !DISubrange(count: 17)
!4437 = !DIGlobalVariableExpression(var: !4438, expr: !DIExpression())
!4438 = distinct !DIGlobalVariable(name: "acpi_irq_balance", scope: !2, file: !3, line: 530, type: !167, isLocal: true, isDefinition: true)
!4439 = !DIGlobalVariableExpression(var: !4440, expr: !DIExpression())
!4440 = distinct !DIGlobalVariable(name: "irqrouter_syscore_ops", scope: !2, file: !3, line: 913, type: !4441, isLocal: true, isDefinition: true)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscore_ops", file: !4442, line: 13, size: 320, elements: !4443)
!4442 = !DIFile(filename: "./include/linux/syscore_ops.h", directory: "/home/lizy2001/genbc/linux")
!4443 = !{!4444, !4445, !4449, !4451}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4441, file: !4442, line: 14, baseType: !155, size: 128)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4441, file: !4442, line: 15, baseType: !4446, size: 64, offset: 128)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!167}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4441, file: !4442, line: 16, baseType: !4450, size: 64, offset: 192)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4441, file: !4442, line: 17, baseType: !4450, size: 64, offset: 256)
!4452 = !DIGlobalVariableExpression(var: !4453, expr: !DIExpression())
!4453 = distinct !DIGlobalVariable(name: "pci_link_handler", scope: !2, file: !3, line: 45, type: !4298, isLocal: true, isDefinition: true)
!4454 = !DIGlobalVariableExpression(var: !4455, expr: !DIExpression())
!4455 = distinct !DIGlobalVariable(name: "link_device_ids", scope: !2, file: !3, line: 40, type: !4456, isLocal: true, isDefinition: true)
!4456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3462, size: 512, elements: !1563)
!4457 = !{!"rsp"}
!4458 = !{i32 7, !"Dwarf Version", i32 4}
!4459 = !{i32 2, !"Debug Info Version", i32 3}
!4460 = !{i32 1, !"wchar_size", i32 2}
!4461 = !{i32 1, !"Code Model", i32 2}
!4462 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4463 = distinct !DISubprogram(name: "acpi_irq_penalty_init", scope: !3, file: !3, line: 494, type: !4447, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !239)
!4464 = !DILocalVariable(name: "link", scope: !4463, file: !3, line: 496, type: !151)
!4465 = !DILocation(line: 496, column: 24, scope: !4463)
!4466 = !DILocalVariable(name: "i", scope: !4463, file: !3, line: 497, type: !167)
!4467 = !DILocation(line: 497, column: 6, scope: !4463)
!4468 = !DILocalVariable(name: "__mptr", scope: !4469, file: !3, line: 502, type: !150)
!4469 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 502, column: 2)
!4470 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 502, column: 2)
!4471 = !DILocation(line: 502, column: 2, scope: !4469)
!4472 = !DILocation(line: 502, column: 2, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4469, file: !3, line: 502, column: 2)
!4474 = !DILocation(line: 502, column: 2, scope: !4470)
!4475 = !DILocation(line: 502, column: 2, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 502, column: 2)
!4477 = !DILocation(line: 508, column: 7, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4479, file: !3, line: 508, column: 7)
!4479 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 502, column: 51)
!4480 = !DILocation(line: 508, column: 13, scope: !4478)
!4481 = !DILocation(line: 508, column: 17, scope: !4478)
!4482 = !DILocation(line: 508, column: 7, scope: !4479)
!4483 = !DILocalVariable(name: "penalty", scope: !4484, file: !3, line: 509, type: !167)
!4484 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 508, column: 33)
!4485 = !DILocation(line: 509, column: 8, scope: !4484)
!4486 = !DILocation(line: 511, column: 8, scope: !4484)
!4487 = !DILocation(line: 511, column: 14, scope: !4484)
!4488 = !DILocation(line: 511, column: 18, scope: !4484)
!4489 = !DILocation(line: 510, column: 34, scope: !4484)
!4490 = !DILocation(line: 513, column: 11, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 513, column: 4)
!4492 = !DILocation(line: 513, column: 9, scope: !4491)
!4493 = !DILocation(line: 513, column: 16, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4491, file: !3, line: 513, column: 4)
!4495 = !DILocation(line: 513, column: 20, scope: !4494)
!4496 = !DILocation(line: 513, column: 26, scope: !4494)
!4497 = !DILocation(line: 513, column: 30, scope: !4494)
!4498 = !DILocation(line: 513, column: 18, scope: !4494)
!4499 = !DILocation(line: 513, column: 4, scope: !4491)
!4500 = !DILocation(line: 514, column: 9, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 514, column: 9)
!4502 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 513, column: 51)
!4503 = !DILocation(line: 514, column: 15, scope: !4501)
!4504 = !DILocation(line: 514, column: 19, scope: !4501)
!4505 = !DILocation(line: 514, column: 28, scope: !4501)
!4506 = !DILocation(line: 514, column: 31, scope: !4501)
!4507 = !DILocation(line: 514, column: 9, scope: !4502)
!4508 = !DILocation(line: 517, column: 10, scope: !4501)
!4509 = !DILocation(line: 515, column: 27, scope: !4501)
!4510 = !DILocation(line: 515, column: 33, scope: !4501)
!4511 = !DILocation(line: 516, column: 9, scope: !4501)
!4512 = !DILocation(line: 516, column: 18, scope: !4501)
!4513 = !DILocation(line: 515, column: 6, scope: !4501)
!4514 = !DILocation(line: 516, column: 22, scope: !4501)
!4515 = !DILocation(line: 518, column: 4, scope: !4502)
!4516 = !DILocation(line: 513, column: 47, scope: !4494)
!4517 = !DILocation(line: 513, column: 4, scope: !4494)
!4518 = distinct !{!4518, !4499, !4519}
!4519 = !DILocation(line: 518, column: 4, scope: !4491)
!4520 = !DILocation(line: 520, column: 3, scope: !4484)
!4521 = !DILocation(line: 520, column: 14, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 520, column: 14)
!4523 = !DILocation(line: 520, column: 20, scope: !4522)
!4524 = !DILocation(line: 520, column: 24, scope: !4522)
!4525 = !DILocation(line: 520, column: 31, scope: !4522)
!4526 = !DILocation(line: 521, column: 6, scope: !4522)
!4527 = !DILocation(line: 521, column: 12, scope: !4522)
!4528 = !DILocation(line: 521, column: 16, scope: !4522)
!4529 = !DILocation(line: 521, column: 23, scope: !4522)
!4530 = !DILocation(line: 520, column: 14, scope: !4478)
!4531 = !DILocation(line: 522, column: 25, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 521, column: 45)
!4533 = !DILocation(line: 522, column: 31, scope: !4532)
!4534 = !DILocation(line: 522, column: 35, scope: !4532)
!4535 = !DILocation(line: 522, column: 4, scope: !4532)
!4536 = !DILocation(line: 522, column: 43, scope: !4532)
!4537 = !DILocation(line: 524, column: 3, scope: !4532)
!4538 = !DILocation(line: 525, column: 2, scope: !4479)
!4539 = !DILocalVariable(name: "__mptr", scope: !4540, file: !3, line: 502, type: !150)
!4540 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 502, column: 2)
!4541 = !DILocation(line: 502, column: 2, scope: !4540)
!4542 = !DILocation(line: 502, column: 2, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 502, column: 2)
!4544 = distinct !{!4544, !4474, !4545}
!4545 = !DILocation(line: 525, column: 2, scope: !4470)
!4546 = !DILocation(line: 527, column: 2, scope: !4463)
!4547 = distinct !DISubprogram(name: "acpi_pci_link_allocate_irq", scope: !3, file: !3, line: 614, type: !4548, scopeLine: 616, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !239)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!167, !169, !167, !698, !698, !4550}
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!4551 = !DILocalVariable(name: "handle", arg: 1, scope: !4547, file: !3, line: 614, type: !169)
!4552 = !DILocation(line: 614, column: 44, scope: !4547)
!4553 = !DILocalVariable(name: "index", arg: 2, scope: !4547, file: !3, line: 614, type: !167)
!4554 = !DILocation(line: 614, column: 56, scope: !4547)
!4555 = !DILocalVariable(name: "triggering", arg: 3, scope: !4547, file: !3, line: 614, type: !698)
!4556 = !DILocation(line: 614, column: 68, scope: !4547)
!4557 = !DILocalVariable(name: "polarity", arg: 4, scope: !4547, file: !3, line: 615, type: !698)
!4558 = !DILocation(line: 615, column: 16, scope: !4547)
!4559 = !DILocalVariable(name: "name", arg: 5, scope: !4547, file: !3, line: 615, type: !4550)
!4560 = !DILocation(line: 615, column: 33, scope: !4547)
!4561 = !DILocalVariable(name: "result", scope: !4547, file: !3, line: 617, type: !167)
!4562 = !DILocation(line: 617, column: 6, scope: !4547)
!4563 = !DILocalVariable(name: "device", scope: !4547, file: !3, line: 618, type: !162)
!4564 = !DILocation(line: 618, column: 22, scope: !4547)
!4565 = !DILocalVariable(name: "link", scope: !4547, file: !3, line: 619, type: !151)
!4566 = !DILocation(line: 619, column: 24, scope: !4547)
!4567 = !DILocation(line: 621, column: 31, scope: !4547)
!4568 = !DILocation(line: 621, column: 11, scope: !4547)
!4569 = !DILocation(line: 621, column: 9, scope: !4547)
!4570 = !DILocation(line: 622, column: 6, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 622, column: 6)
!4572 = !DILocation(line: 622, column: 6, scope: !4547)
!4573 = !DILocation(line: 623, column: 3, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4571, file: !3, line: 622, column: 14)
!4575 = !DILocation(line: 624, column: 3, scope: !4574)
!4576 = !DILocation(line: 627, column: 26, scope: !4547)
!4577 = !DILocation(line: 627, column: 9, scope: !4547)
!4578 = !DILocation(line: 627, column: 7, scope: !4547)
!4579 = !DILocation(line: 628, column: 7, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 628, column: 6)
!4581 = !DILocation(line: 628, column: 6, scope: !4547)
!4582 = !DILocation(line: 629, column: 3, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4580, file: !3, line: 628, column: 13)
!4584 = !DILocation(line: 630, column: 3, scope: !4583)
!4585 = !DILocation(line: 634, column: 6, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 634, column: 6)
!4587 = !DILocation(line: 634, column: 6, scope: !4547)
!4588 = !DILocation(line: 635, column: 48, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 634, column: 13)
!4590 = !DILocation(line: 635, column: 3, scope: !4589)
!4591 = !DILocation(line: 636, column: 3, scope: !4589)
!4592 = !DILocation(line: 639, column: 2, scope: !4547)
!4593 = !DILocation(line: 640, column: 29, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 640, column: 6)
!4595 = !DILocation(line: 640, column: 6, scope: !4594)
!4596 = !DILocation(line: 640, column: 6, scope: !4547)
!4597 = !DILocation(line: 641, column: 3, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4594, file: !3, line: 640, column: 36)
!4599 = !DILocation(line: 642, column: 3, scope: !4598)
!4600 = !DILocation(line: 645, column: 7, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 645, column: 6)
!4602 = !DILocation(line: 645, column: 13, scope: !4601)
!4603 = !DILocation(line: 645, column: 17, scope: !4601)
!4604 = !DILocation(line: 645, column: 6, scope: !4547)
!4605 = !DILocation(line: 646, column: 3, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 645, column: 25)
!4607 = !DILocation(line: 647, column: 3, scope: !4606)
!4608 = !DILocation(line: 648, column: 3, scope: !4606)
!4609 = !DILocation(line: 650, column: 2, scope: !4547)
!4610 = !DILocation(line: 650, column: 8, scope: !4547)
!4611 = !DILocation(line: 650, column: 14, scope: !4547)
!4612 = !DILocation(line: 651, column: 2, scope: !4547)
!4613 = !DILocation(line: 653, column: 6, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 653, column: 6)
!4615 = !DILocation(line: 653, column: 6, scope: !4547)
!4616 = !DILocation(line: 654, column: 17, scope: !4614)
!4617 = !DILocation(line: 654, column: 23, scope: !4614)
!4618 = !DILocation(line: 654, column: 27, scope: !4614)
!4619 = !DILocation(line: 654, column: 4, scope: !4614)
!4620 = !DILocation(line: 654, column: 15, scope: !4614)
!4621 = !DILocation(line: 654, column: 3, scope: !4614)
!4622 = !DILocation(line: 655, column: 6, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 655, column: 6)
!4624 = !DILocation(line: 655, column: 6, scope: !4547)
!4625 = !DILocation(line: 656, column: 15, scope: !4623)
!4626 = !DILocation(line: 656, column: 21, scope: !4623)
!4627 = !DILocation(line: 656, column: 25, scope: !4623)
!4628 = !DILocation(line: 656, column: 4, scope: !4623)
!4629 = !DILocation(line: 656, column: 13, scope: !4623)
!4630 = !DILocation(line: 656, column: 3, scope: !4623)
!4631 = !DILocation(line: 657, column: 6, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 657, column: 6)
!4633 = !DILocation(line: 657, column: 6, scope: !4547)
!4634 = !DILocation(line: 658, column: 11, scope: !4632)
!4635 = !DILocation(line: 658, column: 4, scope: !4632)
!4636 = !DILocation(line: 658, column: 9, scope: !4632)
!4637 = !DILocation(line: 658, column: 3, scope: !4632)
!4638 = !DILocation(line: 662, column: 9, scope: !4547)
!4639 = !DILocation(line: 662, column: 15, scope: !4547)
!4640 = !DILocation(line: 662, column: 19, scope: !4547)
!4641 = !DILocation(line: 662, column: 2, scope: !4547)
!4642 = !DILocation(line: 663, column: 1, scope: !4547)
!4643 = distinct !DISubprogram(name: "acpi_driver_data", scope: !164, file: !164, line: 443, type: !4644, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!150, !162}
!4646 = !DILocalVariable(name: "d", arg: 1, scope: !4643, file: !164, line: 443, type: !162)
!4647 = !DILocation(line: 443, column: 58, scope: !4643)
!4648 = !DILocation(line: 445, column: 9, scope: !4643)
!4649 = !DILocation(line: 445, column: 12, scope: !4643)
!4650 = !DILocation(line: 445, column: 2, scope: !4643)
!4651 = distinct !DISubprogram(name: "acpi_pci_link_allocate", scope: !3, file: !3, line: 532, type: !4652, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!167, !151}
!4654 = !DILocalVariable(name: "link", arg: 1, scope: !4651, file: !3, line: 532, type: !151)
!4655 = !DILocation(line: 532, column: 57, scope: !4651)
!4656 = !DILocalVariable(name: "irq", scope: !4651, file: !3, line: 534, type: !167)
!4657 = !DILocation(line: 534, column: 6, scope: !4651)
!4658 = !DILocalVariable(name: "i", scope: !4651, file: !3, line: 535, type: !167)
!4659 = !DILocation(line: 535, column: 6, scope: !4651)
!4660 = !DILocation(line: 537, column: 6, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 537, column: 6)
!4662 = !DILocation(line: 537, column: 12, scope: !4661)
!4663 = !DILocation(line: 537, column: 16, scope: !4661)
!4664 = !DILocation(line: 537, column: 6, scope: !4651)
!4665 = !DILocation(line: 538, column: 7, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 538, column: 7)
!4667 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 537, column: 29)
!4668 = !DILocation(line: 538, column: 13, scope: !4666)
!4669 = !DILocation(line: 538, column: 20, scope: !4666)
!4670 = !DILocation(line: 538, column: 7, scope: !4667)
!4671 = !DILocation(line: 540, column: 22, scope: !4666)
!4672 = !DILocation(line: 540, column: 28, scope: !4666)
!4673 = !DILocation(line: 540, column: 34, scope: !4666)
!4674 = !DILocation(line: 540, column: 38, scope: !4666)
!4675 = !DILocation(line: 540, column: 4, scope: !4666)
!4676 = !DILocation(line: 541, column: 3, scope: !4667)
!4677 = !DILocation(line: 547, column: 9, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 547, column: 2)
!4679 = !DILocation(line: 547, column: 7, scope: !4678)
!4680 = !DILocation(line: 547, column: 14, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4678, file: !3, line: 547, column: 2)
!4682 = !DILocation(line: 547, column: 18, scope: !4681)
!4683 = !DILocation(line: 547, column: 24, scope: !4681)
!4684 = !DILocation(line: 547, column: 28, scope: !4681)
!4685 = !DILocation(line: 547, column: 16, scope: !4681)
!4686 = !DILocation(line: 547, column: 2, scope: !4678)
!4687 = !DILocation(line: 548, column: 7, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 548, column: 7)
!4689 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 547, column: 49)
!4690 = !DILocation(line: 548, column: 13, scope: !4688)
!4691 = !DILocation(line: 548, column: 17, scope: !4688)
!4692 = !DILocation(line: 548, column: 27, scope: !4688)
!4693 = !DILocation(line: 548, column: 33, scope: !4688)
!4694 = !DILocation(line: 548, column: 37, scope: !4688)
!4695 = !DILocation(line: 548, column: 46, scope: !4688)
!4696 = !DILocation(line: 548, column: 24, scope: !4688)
!4697 = !DILocation(line: 548, column: 7, scope: !4689)
!4698 = !DILocation(line: 549, column: 4, scope: !4688)
!4699 = !DILocation(line: 550, column: 2, scope: !4689)
!4700 = !DILocation(line: 547, column: 44, scope: !4681)
!4701 = !DILocation(line: 547, column: 2, scope: !4681)
!4702 = distinct !{!4702, !4686, !4703}
!4703 = !DILocation(line: 550, column: 2, scope: !4678)
!4704 = !DILocation(line: 554, column: 6, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 554, column: 6)
!4706 = !DILocation(line: 554, column: 11, scope: !4705)
!4707 = !DILocation(line: 554, column: 17, scope: !4705)
!4708 = !DILocation(line: 554, column: 21, scope: !4705)
!4709 = !DILocation(line: 554, column: 8, scope: !4705)
!4710 = !DILocation(line: 554, column: 6, scope: !4651)
!4711 = !DILocation(line: 555, column: 7, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4713, file: !3, line: 555, column: 7)
!4713 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 554, column: 37)
!4714 = !DILocation(line: 555, column: 7, scope: !4713)
!4715 = !DILocation(line: 557, column: 25, scope: !4712)
!4716 = !DILocation(line: 557, column: 31, scope: !4712)
!4717 = !DILocation(line: 557, column: 35, scope: !4712)
!4718 = !DILocation(line: 556, column: 4, scope: !4712)
!4719 = !DILocation(line: 558, column: 3, scope: !4713)
!4720 = !DILocation(line: 558, column: 9, scope: !4713)
!4721 = !DILocation(line: 558, column: 13, scope: !4713)
!4722 = !DILocation(line: 558, column: 20, scope: !4713)
!4723 = !DILocation(line: 559, column: 2, scope: !4713)
!4724 = !DILocation(line: 564, column: 6, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 564, column: 6)
!4726 = !DILocation(line: 564, column: 12, scope: !4725)
!4727 = !DILocation(line: 564, column: 16, scope: !4725)
!4728 = !DILocation(line: 564, column: 6, scope: !4651)
!4729 = !DILocation(line: 565, column: 9, scope: !4725)
!4730 = !DILocation(line: 565, column: 15, scope: !4725)
!4731 = !DILocation(line: 565, column: 19, scope: !4725)
!4732 = !DILocation(line: 565, column: 7, scope: !4725)
!4733 = !DILocation(line: 565, column: 3, scope: !4725)
!4734 = !DILocation(line: 567, column: 9, scope: !4725)
!4735 = !DILocation(line: 567, column: 15, scope: !4725)
!4736 = !DILocation(line: 567, column: 19, scope: !4725)
!4737 = !DILocation(line: 567, column: 28, scope: !4725)
!4738 = !DILocation(line: 567, column: 34, scope: !4725)
!4739 = !DILocation(line: 567, column: 38, scope: !4725)
!4740 = !DILocation(line: 567, column: 53, scope: !4725)
!4741 = !DILocation(line: 567, column: 7, scope: !4725)
!4742 = !DILocation(line: 569, column: 6, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 569, column: 6)
!4744 = !DILocation(line: 569, column: 23, scope: !4743)
!4745 = !DILocation(line: 569, column: 27, scope: !4743)
!4746 = !DILocation(line: 569, column: 33, scope: !4743)
!4747 = !DILocation(line: 569, column: 37, scope: !4743)
!4748 = !DILocation(line: 569, column: 6, scope: !4651)
!4749 = !DILocation(line: 574, column: 13, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 574, column: 3)
!4751 = distinct !DILexicalBlock(scope: !4743, file: !3, line: 569, column: 45)
!4752 = !DILocation(line: 574, column: 19, scope: !4750)
!4753 = !DILocation(line: 574, column: 23, scope: !4750)
!4754 = !DILocation(line: 574, column: 38, scope: !4750)
!4755 = !DILocation(line: 574, column: 10, scope: !4750)
!4756 = !DILocation(line: 574, column: 8, scope: !4750)
!4757 = !DILocation(line: 574, column: 44, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 574, column: 3)
!4759 = !DILocation(line: 574, column: 46, scope: !4758)
!4760 = !DILocation(line: 574, column: 3, scope: !4750)
!4761 = !DILocation(line: 575, column: 29, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4763, file: !3, line: 575, column: 8)
!4763 = distinct !DILexicalBlock(scope: !4758, file: !3, line: 574, column: 57)
!4764 = !DILocation(line: 575, column: 8, scope: !4762)
!4765 = !DILocation(line: 576, column: 29, scope: !4762)
!4766 = !DILocation(line: 576, column: 35, scope: !4762)
!4767 = !DILocation(line: 576, column: 39, scope: !4762)
!4768 = !DILocation(line: 576, column: 48, scope: !4762)
!4769 = !DILocation(line: 576, column: 8, scope: !4762)
!4770 = !DILocation(line: 575, column: 34, scope: !4762)
!4771 = !DILocation(line: 575, column: 8, scope: !4763)
!4772 = !DILocation(line: 577, column: 11, scope: !4762)
!4773 = !DILocation(line: 577, column: 17, scope: !4762)
!4774 = !DILocation(line: 577, column: 21, scope: !4762)
!4775 = !DILocation(line: 577, column: 30, scope: !4762)
!4776 = !DILocation(line: 577, column: 9, scope: !4762)
!4777 = !DILocation(line: 577, column: 5, scope: !4762)
!4778 = !DILocation(line: 578, column: 3, scope: !4763)
!4779 = !DILocation(line: 574, column: 53, scope: !4758)
!4780 = !DILocation(line: 574, column: 3, scope: !4758)
!4781 = distinct !{!4781, !4760, !4782}
!4782 = !DILocation(line: 578, column: 3, scope: !4750)
!4783 = !DILocation(line: 579, column: 2, scope: !4751)
!4784 = !DILocation(line: 580, column: 27, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 580, column: 6)
!4786 = !DILocation(line: 580, column: 6, scope: !4785)
!4787 = !DILocation(line: 580, column: 32, scope: !4785)
!4788 = !DILocation(line: 580, column: 6, scope: !4651)
!4789 = !DILocation(line: 583, column: 8, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4785, file: !3, line: 580, column: 60)
!4791 = !DILocation(line: 584, column: 8, scope: !4790)
!4792 = !DILocation(line: 581, column: 3, scope: !4790)
!4793 = !DILocation(line: 585, column: 3, scope: !4790)
!4794 = !DILocation(line: 589, column: 24, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 589, column: 6)
!4796 = !DILocation(line: 589, column: 30, scope: !4795)
!4797 = !DILocation(line: 589, column: 6, scope: !4795)
!4798 = !DILocation(line: 589, column: 6, scope: !4651)
!4799 = !DILocation(line: 592, column: 8, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 589, column: 36)
!4801 = !DILocation(line: 593, column: 8, scope: !4800)
!4802 = !DILocation(line: 590, column: 3, scope: !4800)
!4803 = !DILocation(line: 594, column: 3, scope: !4800)
!4804 = !DILocation(line: 596, column: 7, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 596, column: 7)
!4806 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 595, column: 9)
!4807 = !DILocation(line: 596, column: 13, scope: !4805)
!4808 = !DILocation(line: 596, column: 17, scope: !4805)
!4809 = !DILocation(line: 596, column: 24, scope: !4805)
!4810 = !DILocation(line: 596, column: 7, scope: !4806)
!4811 = !DILocation(line: 597, column: 25, scope: !4805)
!4812 = !DILocation(line: 597, column: 31, scope: !4805)
!4813 = !DILocation(line: 597, column: 35, scope: !4805)
!4814 = !DILocation(line: 597, column: 4, scope: !4805)
!4815 = !DILocation(line: 597, column: 43, scope: !4805)
!4816 = !DILocation(line: 600, column: 3, scope: !4806)
!4817 = !DILocation(line: 605, column: 2, scope: !4651)
!4818 = !DILocation(line: 605, column: 8, scope: !4651)
!4819 = !DILocation(line: 605, column: 12, scope: !4651)
!4820 = !DILocation(line: 605, column: 24, scope: !4651)
!4821 = !DILocation(line: 606, column: 2, scope: !4651)
!4822 = !DILocation(line: 607, column: 1, scope: !4651)
!4823 = distinct !DISubprogram(name: "acpi_pci_link_free_irq", scope: !3, file: !3, line: 669, type: !4824, scopeLine: 670, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !239)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!167, !169}
!4826 = !DILocalVariable(name: "handle", arg: 1, scope: !4823, file: !3, line: 669, type: !169)
!4827 = !DILocation(line: 669, column: 40, scope: !4823)
!4828 = !DILocalVariable(name: "device", scope: !4823, file: !3, line: 671, type: !162)
!4829 = !DILocation(line: 671, column: 22, scope: !4823)
!4830 = !DILocalVariable(name: "link", scope: !4823, file: !3, line: 672, type: !151)
!4831 = !DILocation(line: 672, column: 24, scope: !4823)
!4832 = !DILocalVariable(name: "result", scope: !4823, file: !3, line: 673, type: !4387)
!4833 = !DILocation(line: 673, column: 14, scope: !4823)
!4834 = !DILocation(line: 675, column: 31, scope: !4823)
!4835 = !DILocation(line: 675, column: 11, scope: !4823)
!4836 = !DILocation(line: 675, column: 9, scope: !4823)
!4837 = !DILocation(line: 676, column: 6, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 676, column: 6)
!4839 = !DILocation(line: 676, column: 6, scope: !4823)
!4840 = !DILocation(line: 677, column: 3, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4838, file: !3, line: 676, column: 14)
!4842 = !DILocation(line: 678, column: 3, scope: !4841)
!4843 = !DILocation(line: 681, column: 26, scope: !4823)
!4844 = !DILocation(line: 681, column: 9, scope: !4823)
!4845 = !DILocation(line: 681, column: 7, scope: !4823)
!4846 = !DILocation(line: 682, column: 7, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 682, column: 6)
!4848 = !DILocation(line: 682, column: 6, scope: !4823)
!4849 = !DILocation(line: 683, column: 3, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 682, column: 13)
!4851 = !DILocation(line: 684, column: 3, scope: !4850)
!4852 = !DILocation(line: 687, column: 2, scope: !4823)
!4853 = !DILocation(line: 688, column: 7, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 688, column: 6)
!4855 = !DILocation(line: 688, column: 13, scope: !4854)
!4856 = !DILocation(line: 688, column: 17, scope: !4854)
!4857 = !DILocation(line: 688, column: 6, scope: !4823)
!4858 = !DILocation(line: 689, column: 3, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4854, file: !3, line: 688, column: 30)
!4860 = !DILocation(line: 690, column: 3, scope: !4859)
!4861 = !DILocation(line: 691, column: 3, scope: !4859)
!4862 = !DILocation(line: 709, column: 6, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 709, column: 6)
!4864 = !DILocation(line: 709, column: 12, scope: !4863)
!4865 = !DILocation(line: 709, column: 19, scope: !4863)
!4866 = !DILocation(line: 709, column: 6, scope: !4823)
!4867 = !DILocation(line: 710, column: 24, scope: !4863)
!4868 = !DILocation(line: 710, column: 30, scope: !4863)
!4869 = !DILocation(line: 710, column: 38, scope: !4863)
!4870 = !DILocation(line: 710, column: 3, scope: !4863)
!4871 = !DILocation(line: 712, column: 2, scope: !4823)
!4872 = !DILocation(line: 713, column: 9, scope: !4823)
!4873 = !DILocation(line: 713, column: 15, scope: !4823)
!4874 = !DILocation(line: 713, column: 19, scope: !4823)
!4875 = !DILocation(line: 713, column: 2, scope: !4823)
!4876 = !DILocation(line: 714, column: 1, scope: !4823)
!4877 = distinct !DISubprogram(name: "acpi_penalize_isa_irq", scope: !3, file: !3, line: 849, type: !4878, scopeLine: 850, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !239)
!4878 = !DISubroutineType(types: !4879)
!4879 = !{null, !167, !167}
!4880 = !DILocalVariable(name: "irq", arg: 1, scope: !4877, file: !3, line: 849, type: !167)
!4881 = !DILocation(line: 849, column: 32, scope: !4877)
!4882 = !DILocalVariable(name: "active", arg: 2, scope: !4877, file: !3, line: 849, type: !167)
!4883 = !DILocation(line: 849, column: 41, scope: !4877)
!4884 = !DILocation(line: 851, column: 7, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4877, file: !3, line: 851, column: 6)
!4886 = !DILocation(line: 851, column: 11, scope: !4885)
!4887 = !DILocation(line: 851, column: 17, scope: !4885)
!4888 = !DILocation(line: 851, column: 21, scope: !4885)
!4889 = !DILocation(line: 851, column: 25, scope: !4885)
!4890 = !DILocation(line: 851, column: 6, scope: !4877)
!4891 = !DILocation(line: 853, column: 6, scope: !4885)
!4892 = !DILocation(line: 852, column: 24, scope: !4885)
!4893 = !DILocation(line: 852, column: 3, scope: !4885)
!4894 = !DILocation(line: 852, column: 29, scope: !4885)
!4895 = !DILocation(line: 854, column: 1, scope: !4877)
!4896 = distinct !DISubprogram(name: "acpi_isa_irq_available", scope: !3, file: !3, line: 856, type: !4897, scopeLine: 857, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !239)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!194, !167}
!4899 = !DILocalVariable(name: "irq", arg: 1, scope: !4896, file: !3, line: 856, type: !167)
!4900 = !DILocation(line: 856, column: 33, scope: !4896)
!4901 = !DILocation(line: 858, column: 9, scope: !4896)
!4902 = !DILocation(line: 858, column: 13, scope: !4896)
!4903 = !DILocation(line: 858, column: 18, scope: !4896)
!4904 = !DILocation(line: 858, column: 22, scope: !4896)
!4905 = !DILocation(line: 858, column: 26, scope: !4896)
!4906 = !DILocation(line: 858, column: 62, scope: !4896)
!4907 = !DILocation(line: 859, column: 28, scope: !4896)
!4908 = !DILocation(line: 859, column: 7, scope: !4896)
!4909 = !DILocation(line: 859, column: 33, scope: !4896)
!4910 = !DILocation(line: 0, scope: !4896)
!4911 = !DILocation(line: 858, column: 2, scope: !4896)
!4912 = distinct !DISubprogram(name: "acpi_irq_get_penalty", scope: !3, file: !3, line: 481, type: !3046, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!4913 = !DILocalVariable(name: "irq", arg: 1, scope: !4912, file: !3, line: 481, type: !167)
!4914 = !DILocation(line: 481, column: 37, scope: !4912)
!4915 = !DILocalVariable(name: "penalty", scope: !4912, file: !3, line: 483, type: !167)
!4916 = !DILocation(line: 483, column: 6, scope: !4912)
!4917 = !DILocation(line: 485, column: 6, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4912, file: !3, line: 485, column: 6)
!4919 = !DILocation(line: 485, column: 13, scope: !4918)
!4920 = !DILocation(line: 485, column: 10, scope: !4918)
!4921 = !DILocation(line: 485, column: 6, scope: !4912)
!4922 = !DILocation(line: 486, column: 14, scope: !4918)
!4923 = !DILocation(line: 486, column: 11, scope: !4918)
!4924 = !DILocation(line: 486, column: 3, scope: !4918)
!4925 = !DILocation(line: 488, column: 6, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4912, file: !3, line: 488, column: 6)
!4927 = !DILocation(line: 488, column: 10, scope: !4926)
!4928 = !DILocation(line: 488, column: 6, scope: !4912)
!4929 = !DILocation(line: 489, column: 10, scope: !4926)
!4930 = !DILocation(line: 489, column: 41, scope: !4926)
!4931 = !DILocation(line: 489, column: 20, scope: !4926)
!4932 = !DILocation(line: 489, column: 18, scope: !4926)
!4933 = !DILocation(line: 489, column: 3, scope: !4926)
!4934 = !DILocation(line: 491, column: 9, scope: !4912)
!4935 = !DILocation(line: 491, column: 48, scope: !4912)
!4936 = !DILocation(line: 491, column: 19, scope: !4912)
!4937 = !DILocation(line: 491, column: 17, scope: !4912)
!4938 = !DILocation(line: 491, column: 2, scope: !4912)
!4939 = !DILocation(line: 492, column: 1, scope: !4912)
!4940 = distinct !DISubprogram(name: "acpi_penalize_sci_irq", scope: !3, file: !3, line: 862, type: !4941, scopeLine: 863, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !239)
!4941 = !DISubroutineType(types: !4942)
!4942 = !{null, !167, !167, !167}
!4943 = !DILocalVariable(name: "irq", arg: 1, scope: !4940, file: !3, line: 862, type: !167)
!4944 = !DILocation(line: 862, column: 32, scope: !4940)
!4945 = !DILocalVariable(name: "trigger", arg: 2, scope: !4940, file: !3, line: 862, type: !167)
!4946 = !DILocation(line: 862, column: 41, scope: !4940)
!4947 = !DILocalVariable(name: "polarity", arg: 3, scope: !4940, file: !3, line: 862, type: !167)
!4948 = !DILocation(line: 862, column: 54, scope: !4940)
!4949 = !DILocation(line: 864, column: 12, scope: !4940)
!4950 = !DILocation(line: 864, column: 10, scope: !4940)
!4951 = !DILocation(line: 866, column: 6, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4940, file: !3, line: 866, column: 6)
!4953 = !DILocation(line: 866, column: 14, scope: !4952)
!4954 = !DILocation(line: 866, column: 41, scope: !4952)
!4955 = !DILocation(line: 867, column: 6, scope: !4952)
!4956 = !DILocation(line: 867, column: 15, scope: !4952)
!4957 = !DILocation(line: 866, column: 6, scope: !4940)
!4958 = !DILocation(line: 868, column: 15, scope: !4952)
!4959 = !DILocation(line: 868, column: 3, scope: !4952)
!4960 = !DILocation(line: 870, column: 15, scope: !4952)
!4961 = !DILocation(line: 871, column: 1, scope: !4940)
!4962 = distinct !DISubprogram(name: "acpi_irq_isa", scope: !3, file: !3, line: 878, type: !4399, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!4963 = !DILocalVariable(name: "str", arg: 1, scope: !4962, file: !3, line: 878, type: !266)
!4964 = !DILocation(line: 878, column: 38, scope: !4962)
!4965 = !DILocation(line: 880, column: 33, scope: !4962)
!4966 = !DILocation(line: 880, column: 9, scope: !4962)
!4967 = !DILocation(line: 880, column: 2, scope: !4962)
!4968 = distinct !DISubprogram(name: "acpi_irq_pci", scope: !3, file: !3, line: 890, type: !4399, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!4969 = !DILocalVariable(name: "str", arg: 1, scope: !4968, file: !3, line: 890, type: !266)
!4970 = !DILocation(line: 890, column: 38, scope: !4968)
!4971 = !DILocation(line: 892, column: 33, scope: !4968)
!4972 = !DILocation(line: 892, column: 9, scope: !4968)
!4973 = !DILocation(line: 892, column: 2, scope: !4968)
!4974 = distinct !DISubprogram(name: "acpi_irq_nobalance_set", scope: !3, file: !3, line: 897, type: !4399, scopeLine: 898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!4975 = !DILocalVariable(name: "str", arg: 1, scope: !4974, file: !3, line: 897, type: !266)
!4976 = !DILocation(line: 897, column: 48, scope: !4974)
!4977 = !DILocation(line: 899, column: 19, scope: !4974)
!4978 = !DILocation(line: 900, column: 2, scope: !4974)
!4979 = distinct !DISubprogram(name: "acpi_irq_balance_set", scope: !3, file: !3, line: 905, type: !4399, scopeLine: 906, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!4980 = !DILocalVariable(name: "str", arg: 1, scope: !4979, file: !3, line: 905, type: !266)
!4981 = !DILocation(line: 905, column: 46, scope: !4979)
!4982 = !DILocation(line: 907, column: 19, scope: !4979)
!4983 = !DILocation(line: 908, column: 2, scope: !4979)
!4984 = distinct !DISubprogram(name: "acpi_pci_link_init", scope: !3, file: !3, line: 917, type: !1874, scopeLine: 918, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !239)
!4985 = !DILocation(line: 919, column: 6, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4984, file: !3, line: 919, column: 6)
!4987 = !DILocation(line: 919, column: 6, scope: !4984)
!4988 = !DILocation(line: 920, column: 3, scope: !4986)
!4989 = !DILocation(line: 922, column: 6, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4984, file: !3, line: 922, column: 6)
!4991 = !DILocation(line: 922, column: 23, scope: !4990)
!4992 = !DILocation(line: 922, column: 6, scope: !4984)
!4993 = !DILocation(line: 924, column: 7, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 924, column: 7)
!4995 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 922, column: 30)
!4996 = !DILocation(line: 924, column: 22, scope: !4994)
!4997 = !DILocation(line: 924, column: 7, scope: !4995)
!4998 = !DILocation(line: 925, column: 21, scope: !4994)
!4999 = !DILocation(line: 925, column: 4, scope: !4994)
!5000 = !DILocation(line: 927, column: 21, scope: !4994)
!5001 = !DILocation(line: 928, column: 2, scope: !4995)
!5002 = !DILocation(line: 929, column: 2, scope: !4984)
!5003 = !DILocation(line: 930, column: 2, scope: !4984)
!5004 = !DILocation(line: 931, column: 1, scope: !4984)
!5005 = distinct !DISubprogram(name: "acpi_pci_link_set", scope: !3, file: !3, line: 277, type: !5006, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!5006 = !DISubroutineType(types: !5007)
!5007 = !{!167, !151, !167}
!5008 = !DILocalVariable(name: "flags", arg: 1, scope: !5009, file: !5010, line: 162, type: !316)
!5009 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !5010, file: !5010, line: 162, type: !5011, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!5010 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!5011 = !DISubroutineType(types: !5012)
!5012 = !{!167, !316}
!5013 = !DILocation(line: 162, column: 67, scope: !5009, inlinedAt: !5014)
!5014 = distinct !DILocation(line: 290, column: 44, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !5016, file: !3, line: 290, column: 44)
!5016 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 290, column: 44)
!5017 = !DILocalVariable(name: "link", arg: 1, scope: !5005, file: !3, line: 277, type: !151)
!5018 = !DILocation(line: 277, column: 52, scope: !5005)
!5019 = !DILocalVariable(name: "irq", arg: 2, scope: !5005, file: !3, line: 277, type: !167)
!5020 = !DILocation(line: 277, column: 62, scope: !5005)
!5021 = !DILocalVariable(name: "result", scope: !5005, file: !3, line: 279, type: !167)
!5022 = !DILocation(line: 279, column: 6, scope: !5005)
!5023 = !DILocalVariable(name: "status", scope: !5005, file: !3, line: 280, type: !4387)
!5024 = !DILocation(line: 280, column: 14, scope: !5005)
!5025 = !DILocalVariable(name: "resource", scope: !5005, file: !3, line: 284, type: !5026)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5005, file: !3, line: 281, size: 1088, elements: !5028)
!5028 = !{!5029, !5391}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !5027, file: !3, line: 282, baseType: !5030, size: 544)
!5030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !5031, line: 651, size: 544, elements: !5032)
!5031 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/lizy2001/genbc/linux")
!5032 = !{!5033, !5034, !5035}
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5030, file: !5031, line: 652, baseType: !407, size: 32)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5030, file: !5031, line: 653, baseType: !407, size: 32, offset: 32)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5030, file: !5031, line: 654, baseType: !5036, size: 480, offset: 64)
!5036 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !5031, line: 614, size: 480, elements: !5037)
!5037 = !{!5038, !5049, !5057, !5063, !5071, !5076, !5082, !5087, !5095, !5099, !5107, !5115, !5121, !5161, !5179, !5197, !5209, !5221, !5229, !5249, !5265, !5285, !5307, !5320, !5332, !5345, !5359, !5370, !5382}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5036, file: !5031, line: 615, baseType: !5039, size: 56)
!5039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !5031, line: 138, size: 56, elements: !5040)
!5040 = !{!5041, !5042, !5043, !5044, !5045, !5046, !5047}
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !5039, file: !5031, line: 139, baseType: !1346, size: 8)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !5039, file: !5031, line: 140, baseType: !1346, size: 8, offset: 8)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5039, file: !5031, line: 141, baseType: !1346, size: 8, offset: 16)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5039, file: !5031, line: 142, baseType: !1346, size: 8, offset: 24)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !5039, file: !5031, line: 143, baseType: !1346, size: 8, offset: 32)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !5039, file: !5031, line: 144, baseType: !1346, size: 8, offset: 40)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !5039, file: !5031, line: 145, baseType: !5048, size: 8, offset: 48)
!5048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, size: 8, elements: !1365)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5036, file: !5031, line: 616, baseType: !5050, size: 40)
!5050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !5031, line: 148, size: 40, elements: !5051)
!5051 = !{!5052, !5053, !5054, !5055, !5056}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5050, file: !5031, line: 149, baseType: !1346, size: 8)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !5050, file: !5031, line: 150, baseType: !1346, size: 8, offset: 8)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !5050, file: !5031, line: 151, baseType: !1346, size: 8, offset: 16)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !5050, file: !5031, line: 152, baseType: !1346, size: 8, offset: 24)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !5050, file: !5031, line: 153, baseType: !5048, size: 8, offset: 32)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !5036, file: !5031, line: 617, baseType: !5058, size: 24)
!5058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !5031, line: 156, size: 24, elements: !5059)
!5059 = !{!5060, !5061, !5062}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !5058, file: !5031, line: 157, baseType: !1346, size: 8)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !5058, file: !5031, line: 158, baseType: !1346, size: 8, offset: 8)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !5058, file: !5031, line: 159, baseType: !1346, size: 8, offset: 16)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !5036, file: !5031, line: 618, baseType: !5064, size: 56)
!5064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !5031, line: 167, size: 56, elements: !5065)
!5065 = !{!5066, !5067, !5068, !5069, !5070}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !5064, file: !5031, line: 168, baseType: !1346, size: 8)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !5064, file: !5031, line: 169, baseType: !1346, size: 8, offset: 8)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5064, file: !5031, line: 170, baseType: !1346, size: 8, offset: 16)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5064, file: !5031, line: 171, baseType: !853, size: 16, offset: 24)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5064, file: !5031, line: 172, baseType: !853, size: 16, offset: 40)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !5036, file: !5031, line: 619, baseType: !5072, size: 24)
!5072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !5031, line: 175, size: 24, elements: !5073)
!5073 = !{!5074, !5075}
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5072, file: !5031, line: 176, baseType: !853, size: 16)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5072, file: !5031, line: 177, baseType: !1346, size: 8, offset: 16)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !5036, file: !5031, line: 620, baseType: !5077, size: 40)
!5077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !5031, line: 180, size: 40, elements: !5078)
!5078 = !{!5079, !5080, !5081}
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !5077, file: !5031, line: 181, baseType: !853, size: 16)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !5077, file: !5031, line: 182, baseType: !853, size: 16, offset: 16)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5077, file: !5031, line: 183, baseType: !1346, size: 8, offset: 32)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5036, file: !5031, line: 621, baseType: !5083, size: 24)
!5083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !5031, line: 195, size: 24, elements: !5084)
!5084 = !{!5085, !5086}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !5083, file: !5031, line: 196, baseType: !853, size: 16)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !5083, file: !5031, line: 197, baseType: !5048, size: 8, offset: 16)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !5036, file: !5031, line: 622, baseType: !5088, size: 160)
!5088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !5031, line: 202, size: 160, elements: !5089)
!5089 = !{!5090, !5091, !5092, !5094}
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !5088, file: !5031, line: 203, baseType: !853, size: 16)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !5088, file: !5031, line: 204, baseType: !1346, size: 8, offset: 16)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !5088, file: !5031, line: 205, baseType: !5093, size: 128, offset: 24)
!5093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, size: 128, elements: !1729)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !5088, file: !5031, line: 206, baseType: !5048, size: 8, offset: 152)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !5036, file: !5031, line: 623, baseType: !5096, size: 8)
!5096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !5031, line: 209, size: 8, elements: !5097)
!5097 = !{!5098}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !5096, file: !5031, line: 210, baseType: !1346, size: 8)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !5036, file: !5031, line: 624, baseType: !5100, size: 72)
!5100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !5031, line: 213, size: 72, elements: !5101)
!5101 = !{!5102, !5103, !5104, !5105, !5106}
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5100, file: !5031, line: 214, baseType: !1346, size: 8)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5100, file: !5031, line: 215, baseType: !853, size: 16, offset: 8)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5100, file: !5031, line: 216, baseType: !853, size: 16, offset: 24)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !5100, file: !5031, line: 217, baseType: !853, size: 16, offset: 40)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5100, file: !5031, line: 218, baseType: !853, size: 16, offset: 56)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !5036, file: !5031, line: 625, baseType: !5108, size: 136)
!5108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !5031, line: 221, size: 136, elements: !5109)
!5109 = !{!5110, !5111, !5112, !5113, !5114}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5108, file: !5031, line: 222, baseType: !1346, size: 8)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5108, file: !5031, line: 223, baseType: !407, size: 32, offset: 8)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5108, file: !5031, line: 224, baseType: !407, size: 32, offset: 40)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !5108, file: !5031, line: 225, baseType: !407, size: 32, offset: 72)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5108, file: !5031, line: 226, baseType: !407, size: 32, offset: 104)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !5036, file: !5031, line: 626, baseType: !5116, size: 72)
!5116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !5031, line: 229, size: 72, elements: !5117)
!5117 = !{!5118, !5119, !5120}
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5116, file: !5031, line: 230, baseType: !1346, size: 8)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5116, file: !5031, line: 231, baseType: !407, size: 32, offset: 8)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5116, file: !5031, line: 232, baseType: !407, size: 32, offset: 40)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !5036, file: !5031, line: 627, baseType: !5122, size: 240)
!5122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !5031, line: 306, size: 240, elements: !5123)
!5123 = !{!5124, !5125, !5126, !5127, !5128, !5129, !5147, !5155}
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5122, file: !5031, line: 307, baseType: !1346, size: 8)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5122, file: !5031, line: 307, baseType: !1346, size: 8, offset: 8)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5122, file: !5031, line: 307, baseType: !1346, size: 8, offset: 16)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5122, file: !5031, line: 307, baseType: !1346, size: 8, offset: 24)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5122, file: !5031, line: 307, baseType: !1346, size: 8, offset: 32)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5122, file: !5031, line: 307, baseType: !5130, size: 32, offset: 40)
!5130 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !5031, line: 249, size: 32, elements: !5131)
!5131 = !{!5132, !5139, !5146}
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !5130, file: !5031, line: 250, baseType: !5133, size: 32)
!5133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !5031, line: 235, size: 32, elements: !5134)
!5134 = !{!5135, !5136, !5137, !5138}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5133, file: !5031, line: 236, baseType: !1346, size: 8)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !5133, file: !5031, line: 237, baseType: !1346, size: 8, offset: 8)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !5133, file: !5031, line: 238, baseType: !1346, size: 8, offset: 16)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !5133, file: !5031, line: 239, baseType: !1346, size: 8, offset: 24)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !5130, file: !5031, line: 251, baseType: !5140, size: 32)
!5140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !5031, line: 242, size: 32, elements: !5141)
!5141 = !{!5142, !5143, !5144, !5145}
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !5140, file: !5031, line: 243, baseType: !1346, size: 8)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !5140, file: !5031, line: 244, baseType: !1346, size: 8, offset: 8)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !5140, file: !5031, line: 245, baseType: !1346, size: 8, offset: 16)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !5140, file: !5031, line: 246, baseType: !1346, size: 8, offset: 24)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !5130, file: !5031, line: 255, baseType: !1346, size: 8)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5122, file: !5031, line: 307, baseType: !5148, size: 80, offset: 72)
!5148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !5031, line: 279, size: 80, elements: !5149)
!5149 = !{!5150, !5151, !5152, !5153, !5154}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !5148, file: !5031, line: 280, baseType: !853, size: 16)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5148, file: !5031, line: 281, baseType: !853, size: 16, offset: 16)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5148, file: !5031, line: 282, baseType: !853, size: 16, offset: 32)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !5148, file: !5031, line: 283, baseType: !853, size: 16, offset: 48)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5148, file: !5031, line: 284, baseType: !853, size: 16, offset: 64)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5122, file: !5031, line: 308, baseType: !5156, size: 88, offset: 152)
!5156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !5031, line: 263, size: 88, elements: !5157)
!5157 = !{!5158, !5159, !5160}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5156, file: !5031, line: 264, baseType: !1346, size: 8)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !5156, file: !5031, line: 265, baseType: !853, size: 16, offset: 8)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !5156, file: !5031, line: 266, baseType: !266, size: 64, offset: 24)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !5036, file: !5031, line: 628, baseType: !5162, size: 320)
!5162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !5031, line: 311, size: 320, elements: !5163)
!5163 = !{!5164, !5165, !5166, !5167, !5168, !5169, !5170, !5178}
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5162, file: !5031, line: 312, baseType: !1346, size: 8)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5162, file: !5031, line: 312, baseType: !1346, size: 8, offset: 8)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5162, file: !5031, line: 312, baseType: !1346, size: 8, offset: 16)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5162, file: !5031, line: 312, baseType: !1346, size: 8, offset: 24)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5162, file: !5031, line: 312, baseType: !1346, size: 8, offset: 32)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5162, file: !5031, line: 312, baseType: !5130, size: 32, offset: 40)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5162, file: !5031, line: 312, baseType: !5171, size: 160, offset: 72)
!5171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !5031, line: 287, size: 160, elements: !5172)
!5172 = !{!5173, !5174, !5175, !5176, !5177}
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !5171, file: !5031, line: 288, baseType: !407, size: 32)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5171, file: !5031, line: 289, baseType: !407, size: 32, offset: 32)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5171, file: !5031, line: 290, baseType: !407, size: 32, offset: 64)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !5171, file: !5031, line: 291, baseType: !407, size: 32, offset: 96)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5171, file: !5031, line: 292, baseType: !407, size: 32, offset: 128)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5162, file: !5031, line: 313, baseType: !5156, size: 88, offset: 232)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !5036, file: !5031, line: 629, baseType: !5180, size: 480)
!5180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !5031, line: 316, size: 480, elements: !5181)
!5181 = !{!5182, !5183, !5184, !5185, !5186, !5187, !5188, !5196}
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5180, file: !5031, line: 317, baseType: !1346, size: 8)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5180, file: !5031, line: 317, baseType: !1346, size: 8, offset: 8)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5180, file: !5031, line: 317, baseType: !1346, size: 8, offset: 16)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5180, file: !5031, line: 317, baseType: !1346, size: 8, offset: 24)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5180, file: !5031, line: 317, baseType: !1346, size: 8, offset: 32)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5180, file: !5031, line: 317, baseType: !5130, size: 32, offset: 40)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5180, file: !5031, line: 317, baseType: !5189, size: 320, offset: 72)
!5189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !5031, line: 295, size: 320, elements: !5190)
!5190 = !{!5191, !5192, !5193, !5194, !5195}
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !5189, file: !5031, line: 296, baseType: !413, size: 64)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5189, file: !5031, line: 297, baseType: !413, size: 64, offset: 64)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5189, file: !5031, line: 298, baseType: !413, size: 64, offset: 128)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !5189, file: !5031, line: 299, baseType: !413, size: 64, offset: 192)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5189, file: !5031, line: 300, baseType: !413, size: 64, offset: 256)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5180, file: !5031, line: 318, baseType: !5156, size: 88, offset: 392)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !5036, file: !5031, line: 630, baseType: !5198, size: 464)
!5198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !5031, line: 321, size: 464, elements: !5199)
!5199 = !{!5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5198, file: !5031, line: 322, baseType: !1346, size: 8)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5198, file: !5031, line: 322, baseType: !1346, size: 8, offset: 8)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5198, file: !5031, line: 322, baseType: !1346, size: 8, offset: 16)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5198, file: !5031, line: 322, baseType: !1346, size: 8, offset: 24)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5198, file: !5031, line: 322, baseType: !1346, size: 8, offset: 32)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5198, file: !5031, line: 322, baseType: !5130, size: 32, offset: 40)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !5198, file: !5031, line: 322, baseType: !1346, size: 8, offset: 72)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5198, file: !5031, line: 323, baseType: !5189, size: 320, offset: 80)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !5198, file: !5031, line: 324, baseType: !413, size: 64, offset: 400)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !5036, file: !5031, line: 631, baseType: !5210, size: 168)
!5210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !5031, line: 327, size: 168, elements: !5211)
!5211 = !{!5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5210, file: !5031, line: 328, baseType: !1346, size: 8)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !5210, file: !5031, line: 329, baseType: !1346, size: 8, offset: 8)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5210, file: !5031, line: 330, baseType: !1346, size: 8, offset: 16)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5210, file: !5031, line: 331, baseType: !1346, size: 8, offset: 24)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !5210, file: !5031, line: 332, baseType: !1346, size: 8, offset: 32)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !5210, file: !5031, line: 333, baseType: !1346, size: 8, offset: 40)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5210, file: !5031, line: 334, baseType: !5156, size: 88, offset: 48)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !5210, file: !5031, line: 335, baseType: !5220, size: 32, offset: 136)
!5220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 32, elements: !1365)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !5036, file: !5031, line: 632, baseType: !5222, size: 96)
!5222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !5031, line: 338, size: 96, elements: !5223)
!5223 = !{!5224, !5225, !5226, !5227, !5228}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !5222, file: !5031, line: 339, baseType: !1346, size: 8)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !5222, file: !5031, line: 340, baseType: !1346, size: 8, offset: 8)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !5222, file: !5031, line: 341, baseType: !1346, size: 8, offset: 16)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !5222, file: !5031, line: 342, baseType: !1346, size: 8, offset: 24)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5222, file: !5031, line: 343, baseType: !413, size: 64, offset: 32)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !5036, file: !5031, line: 633, baseType: !5230, size: 352)
!5230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !5031, line: 346, size: 352, elements: !5231)
!5231 = !{!5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5248}
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5230, file: !5031, line: 347, baseType: !1346, size: 8)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !5230, file: !5031, line: 348, baseType: !1346, size: 8, offset: 8)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5230, file: !5031, line: 349, baseType: !1346, size: 8, offset: 16)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !5230, file: !5031, line: 350, baseType: !1346, size: 8, offset: 24)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5230, file: !5031, line: 351, baseType: !1346, size: 8, offset: 32)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !5230, file: !5031, line: 352, baseType: !1346, size: 8, offset: 40)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !5230, file: !5031, line: 353, baseType: !1346, size: 8, offset: 48)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !5230, file: !5031, line: 354, baseType: !1346, size: 8, offset: 56)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5230, file: !5031, line: 355, baseType: !1346, size: 8, offset: 64)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !5230, file: !5031, line: 356, baseType: !853, size: 16, offset: 72)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !5230, file: !5031, line: 357, baseType: !853, size: 16, offset: 88)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !5230, file: !5031, line: 358, baseType: !853, size: 16, offset: 104)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5230, file: !5031, line: 359, baseType: !853, size: 16, offset: 120)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5230, file: !5031, line: 360, baseType: !5156, size: 88, offset: 136)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !5230, file: !5031, line: 361, baseType: !5247, size: 64, offset: 224)
!5247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5230, file: !5031, line: 362, baseType: !4182, size: 64, offset: 288)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !5036, file: !5031, line: 634, baseType: !5250, size: 288)
!5250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !5031, line: 412, size: 288, elements: !5251)
!5251 = !{!5252, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264}
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5250, file: !5031, line: 413, baseType: !1346, size: 8)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5250, file: !5031, line: 413, baseType: !1346, size: 8, offset: 8)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5250, file: !5031, line: 413, baseType: !1346, size: 8, offset: 16)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5250, file: !5031, line: 413, baseType: !1346, size: 8, offset: 24)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5250, file: !5031, line: 413, baseType: !1346, size: 8, offset: 32)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5250, file: !5031, line: 413, baseType: !1346, size: 8, offset: 40)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5250, file: !5031, line: 413, baseType: !853, size: 16, offset: 48)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5250, file: !5031, line: 413, baseType: !853, size: 16, offset: 64)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5250, file: !5031, line: 413, baseType: !5156, size: 88, offset: 80)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5250, file: !5031, line: 413, baseType: !4182, size: 64, offset: 168)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !5250, file: !5031, line: 413, baseType: !1346, size: 8, offset: 232)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !5250, file: !5031, line: 414, baseType: !853, size: 16, offset: 240)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !5250, file: !5031, line: 415, baseType: !407, size: 32, offset: 256)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !5036, file: !5031, line: 635, baseType: !5266, size: 320)
!5266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !5031, line: 423, size: 320, elements: !5267)
!5267 = !{!5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284}
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5266, file: !5031, line: 424, baseType: !1346, size: 8)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5266, file: !5031, line: 424, baseType: !1346, size: 8, offset: 8)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5266, file: !5031, line: 424, baseType: !1346, size: 8, offset: 16)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5266, file: !5031, line: 424, baseType: !1346, size: 8, offset: 24)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5266, file: !5031, line: 424, baseType: !1346, size: 8, offset: 32)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5266, file: !5031, line: 424, baseType: !1346, size: 8, offset: 40)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5266, file: !5031, line: 424, baseType: !853, size: 16, offset: 48)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5266, file: !5031, line: 424, baseType: !853, size: 16, offset: 64)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5266, file: !5031, line: 424, baseType: !5156, size: 88, offset: 80)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5266, file: !5031, line: 424, baseType: !4182, size: 64, offset: 168)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !5266, file: !5031, line: 424, baseType: !1346, size: 8, offset: 232)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !5266, file: !5031, line: 425, baseType: !1346, size: 8, offset: 240)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !5266, file: !5031, line: 426, baseType: !1346, size: 8, offset: 248)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !5266, file: !5031, line: 427, baseType: !1346, size: 8, offset: 256)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !5266, file: !5031, line: 428, baseType: !1346, size: 8, offset: 264)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !5266, file: !5031, line: 429, baseType: !853, size: 16, offset: 272)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !5266, file: !5031, line: 430, baseType: !407, size: 32, offset: 288)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !5036, file: !5031, line: 636, baseType: !5286, size: 344)
!5286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !5031, line: 453, size: 344, elements: !5287)
!5287 = !{!5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306}
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5286, file: !5031, line: 454, baseType: !1346, size: 8)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5286, file: !5031, line: 454, baseType: !1346, size: 8, offset: 8)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5286, file: !5031, line: 454, baseType: !1346, size: 8, offset: 16)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5286, file: !5031, line: 454, baseType: !1346, size: 8, offset: 24)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5286, file: !5031, line: 454, baseType: !1346, size: 8, offset: 32)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5286, file: !5031, line: 454, baseType: !1346, size: 8, offset: 40)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5286, file: !5031, line: 454, baseType: !853, size: 16, offset: 48)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5286, file: !5031, line: 454, baseType: !853, size: 16, offset: 64)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5286, file: !5031, line: 454, baseType: !5156, size: 88, offset: 80)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5286, file: !5031, line: 454, baseType: !4182, size: 64, offset: 168)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !5286, file: !5031, line: 454, baseType: !1346, size: 8, offset: 232)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !5286, file: !5031, line: 455, baseType: !1346, size: 8, offset: 240)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !5286, file: !5031, line: 456, baseType: !1346, size: 8, offset: 248)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !5286, file: !5031, line: 457, baseType: !1346, size: 8, offset: 256)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5286, file: !5031, line: 458, baseType: !1346, size: 8, offset: 264)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !5286, file: !5031, line: 459, baseType: !1346, size: 8, offset: 272)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !5286, file: !5031, line: 460, baseType: !853, size: 16, offset: 280)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !5286, file: !5031, line: 461, baseType: !853, size: 16, offset: 296)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !5286, file: !5031, line: 462, baseType: !407, size: 32, offset: 312)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !5036, file: !5031, line: 637, baseType: !5308, size: 232)
!5308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !5031, line: 398, size: 232, elements: !5309)
!5309 = !{!5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319}
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5308, file: !5031, line: 399, baseType: !1346, size: 8)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5308, file: !5031, line: 399, baseType: !1346, size: 8, offset: 8)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5308, file: !5031, line: 399, baseType: !1346, size: 8, offset: 16)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5308, file: !5031, line: 399, baseType: !1346, size: 8, offset: 24)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5308, file: !5031, line: 399, baseType: !1346, size: 8, offset: 32)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5308, file: !5031, line: 399, baseType: !1346, size: 8, offset: 40)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5308, file: !5031, line: 399, baseType: !853, size: 16, offset: 48)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5308, file: !5031, line: 399, baseType: !853, size: 16, offset: 64)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5308, file: !5031, line: 399, baseType: !5156, size: 88, offset: 80)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5308, file: !5031, line: 399, baseType: !4182, size: 64, offset: 168)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !5036, file: !5031, line: 638, baseType: !5321, size: 288)
!5321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !5031, line: 508, size: 288, elements: !5322)
!5322 = !{!5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331}
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5321, file: !5031, line: 509, baseType: !1346, size: 8)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !5321, file: !5031, line: 510, baseType: !1346, size: 8, offset: 8)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5321, file: !5031, line: 511, baseType: !1346, size: 8, offset: 16)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !5321, file: !5031, line: 512, baseType: !853, size: 16, offset: 24)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !5321, file: !5031, line: 513, baseType: !853, size: 16, offset: 40)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5321, file: !5031, line: 514, baseType: !853, size: 16, offset: 56)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5321, file: !5031, line: 515, baseType: !5156, size: 88, offset: 72)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !5321, file: !5031, line: 516, baseType: !5247, size: 64, offset: 160)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5321, file: !5031, line: 517, baseType: !4182, size: 64, offset: 224)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !5036, file: !5031, line: 639, baseType: !5333, size: 312)
!5333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !5031, line: 520, size: 312, elements: !5334)
!5334 = !{!5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342, !5343, !5344}
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5333, file: !5031, line: 521, baseType: !1346, size: 8)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5333, file: !5031, line: 522, baseType: !1346, size: 8, offset: 8)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5333, file: !5031, line: 523, baseType: !1346, size: 8, offset: 16)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !5333, file: !5031, line: 524, baseType: !1346, size: 8, offset: 24)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !5333, file: !5031, line: 525, baseType: !407, size: 32, offset: 32)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !5333, file: !5031, line: 526, baseType: !853, size: 16, offset: 64)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5333, file: !5031, line: 527, baseType: !853, size: 16, offset: 80)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5333, file: !5031, line: 528, baseType: !5156, size: 88, offset: 96)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !5333, file: !5031, line: 529, baseType: !5247, size: 64, offset: 184)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5333, file: !5031, line: 530, baseType: !4182, size: 64, offset: 248)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !5036, file: !5031, line: 640, baseType: !5346, size: 256)
!5346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !5031, line: 550, size: 256, elements: !5347)
!5347 = !{!5348, !5349, !5350, !5351, !5352, !5353, !5358}
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5346, file: !5031, line: 551, baseType: !1346, size: 8)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5346, file: !5031, line: 552, baseType: !1346, size: 8, offset: 8)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !5346, file: !5031, line: 553, baseType: !853, size: 16, offset: 16)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5346, file: !5031, line: 554, baseType: !853, size: 16, offset: 32)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !5346, file: !5031, line: 555, baseType: !5247, size: 64, offset: 48)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !5346, file: !5031, line: 556, baseType: !5354, size: 80, offset: 112)
!5354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !5031, line: 258, size: 80, elements: !5355)
!5355 = !{!5356, !5357}
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !5354, file: !5031, line: 259, baseType: !853, size: 16)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !5354, file: !5031, line: 260, baseType: !266, size: 64, offset: 16)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5346, file: !5031, line: 557, baseType: !4182, size: 64, offset: 192)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !5036, file: !5031, line: 641, baseType: !5360, size: 288)
!5360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !5031, line: 560, size: 288, elements: !5361)
!5361 = !{!5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369}
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5360, file: !5031, line: 561, baseType: !1346, size: 8)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5360, file: !5031, line: 562, baseType: !1346, size: 8, offset: 8)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5360, file: !5031, line: 563, baseType: !1346, size: 8, offset: 16)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !5360, file: !5031, line: 564, baseType: !853, size: 16, offset: 24)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5360, file: !5031, line: 565, baseType: !853, size: 16, offset: 40)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5360, file: !5031, line: 566, baseType: !5156, size: 88, offset: 56)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !5360, file: !5031, line: 567, baseType: !5354, size: 80, offset: 144)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5360, file: !5031, line: 568, baseType: !4182, size: 64, offset: 224)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !5036, file: !5031, line: 642, baseType: !5371, size: 312)
!5371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !5031, line: 571, size: 312, elements: !5372)
!5372 = !{!5373, !5374, !5375, !5376, !5377, !5378, !5379, !5380, !5381}
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5371, file: !5031, line: 572, baseType: !1346, size: 8)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5371, file: !5031, line: 573, baseType: !1346, size: 8, offset: 8)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5371, file: !5031, line: 574, baseType: !1346, size: 8, offset: 16)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !5371, file: !5031, line: 575, baseType: !1346, size: 8, offset: 24)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !5371, file: !5031, line: 576, baseType: !407, size: 32, offset: 32)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5371, file: !5031, line: 577, baseType: !853, size: 16, offset: 64)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5371, file: !5031, line: 578, baseType: !5156, size: 88, offset: 80)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !5371, file: !5031, line: 579, baseType: !5354, size: 80, offset: 168)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5371, file: !5031, line: 580, baseType: !4182, size: 64, offset: 248)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5036, file: !5031, line: 646, baseType: !5383, size: 72)
!5383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !5031, line: 303, size: 72, elements: !5384)
!5384 = !{!5385, !5386, !5387, !5388, !5389, !5390}
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5383, file: !5031, line: 304, baseType: !1346, size: 8)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5383, file: !5031, line: 304, baseType: !1346, size: 8, offset: 8)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5383, file: !5031, line: 304, baseType: !1346, size: 8, offset: 16)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5383, file: !5031, line: 304, baseType: !1346, size: 8, offset: 24)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5383, file: !5031, line: 304, baseType: !1346, size: 8, offset: 32)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5383, file: !5031, line: 304, baseType: !5130, size: 32, offset: 40)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5027, file: !3, line: 283, baseType: !5030, size: 544, offset: 544)
!5392 = !DILocation(line: 284, column: 5, scope: !5005)
!5393 = !DILocalVariable(name: "buffer", scope: !5005, file: !3, line: 285, type: !5394)
!5394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !170, line: 969, size: 128, elements: !5395)
!5395 = !{!5396, !5398}
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5394, file: !170, line: 970, baseType: !5397, size: 64)
!5397 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !170, line: 127, baseType: !413)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5394, file: !170, line: 971, baseType: !150, size: 64, offset: 64)
!5399 = !DILocation(line: 285, column: 21, scope: !5005)
!5400 = !DILocation(line: 287, column: 7, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 287, column: 6)
!5402 = !DILocation(line: 287, column: 6, scope: !5005)
!5403 = !DILocation(line: 288, column: 3, scope: !5401)
!5404 = !DILocalVariable(name: "_flags", scope: !5016, file: !3, line: 290, type: !316)
!5405 = !DILocation(line: 290, column: 44, scope: !5016)
!5406 = !DILocalVariable(name: "__dummy", scope: !5407, file: !3, line: 290, type: !316)
!5407 = distinct !DILexicalBlock(scope: !5408, file: !3, line: 290, column: 44)
!5408 = distinct !DILexicalBlock(scope: !5016, file: !3, line: 290, column: 44)
!5409 = !DILocation(line: 290, column: 44, scope: !5407)
!5410 = !DILocalVariable(name: "__dummy2", scope: !5407, file: !3, line: 290, type: !316)
!5411 = !DILocation(line: 290, column: 44, scope: !5408)
!5412 = !DILocalVariable(name: "__dummy", scope: !5413, file: !3, line: 290, type: !316)
!5413 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 290, column: 44)
!5414 = !DILocation(line: 290, column: 44, scope: !5413)
!5415 = !DILocalVariable(name: "__dummy2", scope: !5413, file: !3, line: 290, type: !316)
!5416 = !DILocation(line: 290, column: 44, scope: !5015)
!5417 = !DILocation(line: 164, column: 11, scope: !5009, inlinedAt: !5014)
!5418 = !DILocation(line: 164, column: 17, scope: !5009, inlinedAt: !5014)
!5419 = !DILocation(line: 164, column: 9, scope: !5009, inlinedAt: !5014)
!5420 = !DILocation(line: 290, column: 44, scope: !5005)
!5421 = !DILocation(line: 290, column: 13, scope: !5005)
!5422 = !DILocation(line: 290, column: 11, scope: !5005)
!5423 = !DILocation(line: 291, column: 7, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 291, column: 6)
!5425 = !DILocation(line: 291, column: 6, scope: !5005)
!5426 = !DILocation(line: 292, column: 3, scope: !5424)
!5427 = !DILocation(line: 294, column: 9, scope: !5005)
!5428 = !DILocation(line: 294, column: 16, scope: !5005)
!5429 = !DILocation(line: 295, column: 19, scope: !5005)
!5430 = !DILocation(line: 295, column: 9, scope: !5005)
!5431 = !DILocation(line: 295, column: 17, scope: !5005)
!5432 = !DILocation(line: 297, column: 10, scope: !5005)
!5433 = !DILocation(line: 297, column: 16, scope: !5005)
!5434 = !DILocation(line: 297, column: 20, scope: !5005)
!5435 = !DILocation(line: 297, column: 2, scope: !5005)
!5436 = !DILocation(line: 299, column: 3, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 297, column: 35)
!5438 = !DILocation(line: 299, column: 13, scope: !5437)
!5439 = !DILocation(line: 299, column: 17, scope: !5437)
!5440 = !DILocation(line: 299, column: 22, scope: !5437)
!5441 = !DILocation(line: 300, column: 3, scope: !5437)
!5442 = !DILocation(line: 300, column: 13, scope: !5437)
!5443 = !DILocation(line: 300, column: 17, scope: !5437)
!5444 = !DILocation(line: 300, column: 24, scope: !5437)
!5445 = !DILocation(line: 301, column: 39, scope: !5437)
!5446 = !DILocation(line: 301, column: 45, scope: !5437)
!5447 = !DILocation(line: 301, column: 49, scope: !5437)
!5448 = !DILocation(line: 301, column: 3, scope: !5437)
!5449 = !DILocation(line: 301, column: 13, scope: !5437)
!5450 = !DILocation(line: 301, column: 17, scope: !5437)
!5451 = !DILocation(line: 301, column: 22, scope: !5437)
!5452 = !DILocation(line: 301, column: 26, scope: !5437)
!5453 = !DILocation(line: 301, column: 37, scope: !5437)
!5454 = !DILocation(line: 303, column: 7, scope: !5437)
!5455 = !DILocation(line: 303, column: 13, scope: !5437)
!5456 = !DILocation(line: 303, column: 17, scope: !5437)
!5457 = !DILocation(line: 302, column: 3, scope: !5437)
!5458 = !DILocation(line: 302, column: 13, scope: !5437)
!5459 = !DILocation(line: 302, column: 17, scope: !5437)
!5460 = !DILocation(line: 302, column: 22, scope: !5437)
!5461 = !DILocation(line: 302, column: 26, scope: !5437)
!5462 = !DILocation(line: 302, column: 35, scope: !5437)
!5463 = !DILocation(line: 304, column: 7, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5437, file: !3, line: 304, column: 7)
!5465 = !DILocation(line: 304, column: 13, scope: !5464)
!5466 = !DILocation(line: 304, column: 17, scope: !5464)
!5467 = !DILocation(line: 304, column: 28, scope: !5464)
!5468 = !DILocation(line: 304, column: 7, scope: !5437)
!5469 = !DILocation(line: 305, column: 4, scope: !5464)
!5470 = !DILocation(line: 305, column: 14, scope: !5464)
!5471 = !DILocation(line: 305, column: 18, scope: !5464)
!5472 = !DILocation(line: 305, column: 23, scope: !5464)
!5473 = !DILocation(line: 305, column: 27, scope: !5464)
!5474 = !DILocation(line: 305, column: 37, scope: !5464)
!5475 = !DILocation(line: 308, column: 4, scope: !5464)
!5476 = !DILocation(line: 308, column: 14, scope: !5464)
!5477 = !DILocation(line: 308, column: 18, scope: !5464)
!5478 = !DILocation(line: 308, column: 23, scope: !5464)
!5479 = !DILocation(line: 308, column: 27, scope: !5464)
!5480 = !DILocation(line: 308, column: 37, scope: !5464)
!5481 = !DILocation(line: 309, column: 3, scope: !5437)
!5482 = !DILocation(line: 309, column: 13, scope: !5437)
!5483 = !DILocation(line: 309, column: 17, scope: !5437)
!5484 = !DILocation(line: 309, column: 22, scope: !5437)
!5485 = !DILocation(line: 309, column: 26, scope: !5437)
!5486 = !DILocation(line: 309, column: 42, scope: !5437)
!5487 = !DILocation(line: 310, column: 42, scope: !5437)
!5488 = !DILocation(line: 310, column: 3, scope: !5437)
!5489 = !DILocation(line: 310, column: 13, scope: !5437)
!5490 = !DILocation(line: 310, column: 17, scope: !5437)
!5491 = !DILocation(line: 310, column: 22, scope: !5437)
!5492 = !DILocation(line: 310, column: 26, scope: !5437)
!5493 = !DILocation(line: 310, column: 40, scope: !5437)
!5494 = !DILocation(line: 311, column: 3, scope: !5437)
!5495 = !DILocation(line: 314, column: 3, scope: !5437)
!5496 = !DILocation(line: 314, column: 13, scope: !5437)
!5497 = !DILocation(line: 314, column: 17, scope: !5437)
!5498 = !DILocation(line: 314, column: 22, scope: !5437)
!5499 = !DILocation(line: 315, column: 3, scope: !5437)
!5500 = !DILocation(line: 315, column: 13, scope: !5437)
!5501 = !DILocation(line: 315, column: 17, scope: !5437)
!5502 = !DILocation(line: 315, column: 24, scope: !5437)
!5503 = !DILocation(line: 316, column: 3, scope: !5437)
!5504 = !DILocation(line: 316, column: 13, scope: !5437)
!5505 = !DILocation(line: 316, column: 17, scope: !5437)
!5506 = !DILocation(line: 316, column: 22, scope: !5437)
!5507 = !DILocation(line: 316, column: 35, scope: !5437)
!5508 = !DILocation(line: 316, column: 53, scope: !5437)
!5509 = !DILocation(line: 319, column: 7, scope: !5437)
!5510 = !DILocation(line: 319, column: 13, scope: !5437)
!5511 = !DILocation(line: 319, column: 17, scope: !5437)
!5512 = !DILocation(line: 318, column: 3, scope: !5437)
!5513 = !DILocation(line: 318, column: 13, scope: !5437)
!5514 = !DILocation(line: 318, column: 17, scope: !5437)
!5515 = !DILocation(line: 318, column: 22, scope: !5437)
!5516 = !DILocation(line: 318, column: 35, scope: !5437)
!5517 = !DILocation(line: 318, column: 46, scope: !5437)
!5518 = !DILocation(line: 321, column: 7, scope: !5437)
!5519 = !DILocation(line: 321, column: 13, scope: !5437)
!5520 = !DILocation(line: 321, column: 17, scope: !5437)
!5521 = !DILocation(line: 320, column: 3, scope: !5437)
!5522 = !DILocation(line: 320, column: 13, scope: !5437)
!5523 = !DILocation(line: 320, column: 17, scope: !5437)
!5524 = !DILocation(line: 320, column: 22, scope: !5437)
!5525 = !DILocation(line: 320, column: 35, scope: !5437)
!5526 = !DILocation(line: 320, column: 44, scope: !5437)
!5527 = !DILocation(line: 322, column: 7, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5437, file: !3, line: 322, column: 7)
!5529 = !DILocation(line: 322, column: 13, scope: !5528)
!5530 = !DILocation(line: 322, column: 17, scope: !5528)
!5531 = !DILocation(line: 322, column: 28, scope: !5528)
!5532 = !DILocation(line: 322, column: 7, scope: !5437)
!5533 = !DILocation(line: 323, column: 4, scope: !5528)
!5534 = !DILocation(line: 323, column: 14, scope: !5528)
!5535 = !DILocation(line: 323, column: 18, scope: !5528)
!5536 = !DILocation(line: 323, column: 23, scope: !5528)
!5537 = !DILocation(line: 323, column: 36, scope: !5528)
!5538 = !DILocation(line: 323, column: 46, scope: !5528)
!5539 = !DILocation(line: 326, column: 4, scope: !5528)
!5540 = !DILocation(line: 326, column: 14, scope: !5528)
!5541 = !DILocation(line: 326, column: 18, scope: !5528)
!5542 = !DILocation(line: 326, column: 23, scope: !5528)
!5543 = !DILocation(line: 326, column: 36, scope: !5528)
!5544 = !DILocation(line: 326, column: 46, scope: !5528)
!5545 = !DILocation(line: 327, column: 3, scope: !5437)
!5546 = !DILocation(line: 327, column: 13, scope: !5437)
!5547 = !DILocation(line: 327, column: 17, scope: !5437)
!5548 = !DILocation(line: 327, column: 22, scope: !5437)
!5549 = !DILocation(line: 327, column: 35, scope: !5437)
!5550 = !DILocation(line: 327, column: 51, scope: !5437)
!5551 = !DILocation(line: 328, column: 51, scope: !5437)
!5552 = !DILocation(line: 328, column: 3, scope: !5437)
!5553 = !DILocation(line: 328, column: 13, scope: !5437)
!5554 = !DILocation(line: 328, column: 17, scope: !5437)
!5555 = !DILocation(line: 328, column: 22, scope: !5437)
!5556 = !DILocation(line: 328, column: 35, scope: !5437)
!5557 = !DILocation(line: 328, column: 49, scope: !5437)
!5558 = !DILocation(line: 330, column: 3, scope: !5437)
!5559 = !DILocation(line: 332, column: 56, scope: !5437)
!5560 = !DILocation(line: 332, column: 62, scope: !5437)
!5561 = !DILocation(line: 332, column: 66, scope: !5437)
!5562 = !DILocation(line: 332, column: 3, scope: !5437)
!5563 = !DILocation(line: 333, column: 10, scope: !5437)
!5564 = !DILocation(line: 334, column: 3, scope: !5437)
!5565 = !DILocation(line: 337, column: 2, scope: !5005)
!5566 = !DILocation(line: 337, column: 12, scope: !5005)
!5567 = !DILocation(line: 337, column: 16, scope: !5005)
!5568 = !DILocation(line: 337, column: 21, scope: !5005)
!5569 = !DILocation(line: 338, column: 2, scope: !5005)
!5570 = !DILocation(line: 338, column: 12, scope: !5005)
!5571 = !DILocation(line: 338, column: 16, scope: !5005)
!5572 = !DILocation(line: 338, column: 23, scope: !5005)
!5573 = !DILocation(line: 341, column: 38, scope: !5005)
!5574 = !DILocation(line: 341, column: 44, scope: !5005)
!5575 = !DILocation(line: 341, column: 52, scope: !5005)
!5576 = !DILocation(line: 341, column: 11, scope: !5005)
!5577 = !DILocation(line: 341, column: 9, scope: !5005)
!5578 = !DILocation(line: 344, column: 6, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 344, column: 6)
!5580 = !DILocation(line: 344, column: 6, scope: !5005)
!5581 = !DILocation(line: 345, column: 3, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 344, column: 28)
!5583 = !DILocation(line: 346, column: 10, scope: !5582)
!5584 = !DILocation(line: 347, column: 3, scope: !5582)
!5585 = !DILocation(line: 351, column: 31, scope: !5005)
!5586 = !DILocation(line: 351, column: 37, scope: !5005)
!5587 = !DILocation(line: 351, column: 11, scope: !5005)
!5588 = !DILocation(line: 351, column: 9, scope: !5005)
!5589 = !DILocation(line: 352, column: 6, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 352, column: 6)
!5591 = !DILocation(line: 352, column: 6, scope: !5005)
!5592 = !DILocation(line: 353, column: 3, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5590, file: !3, line: 352, column: 14)
!5594 = !DILocation(line: 354, column: 3, scope: !5593)
!5595 = !DILocation(line: 356, column: 7, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 356, column: 6)
!5597 = !DILocation(line: 356, column: 13, scope: !5596)
!5598 = !DILocation(line: 356, column: 21, scope: !5596)
!5599 = !DILocation(line: 356, column: 28, scope: !5596)
!5600 = !DILocation(line: 356, column: 6, scope: !5005)
!5601 = !DILocation(line: 359, column: 10, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 356, column: 37)
!5603 = !DILocation(line: 360, column: 10, scope: !5602)
!5604 = !DILocation(line: 357, column: 3, scope: !5602)
!5605 = !DILocation(line: 361, column: 2, scope: !5602)
!5606 = !DILocation(line: 364, column: 37, scope: !5005)
!5607 = !DILocation(line: 364, column: 11, scope: !5005)
!5608 = !DILocation(line: 364, column: 9, scope: !5005)
!5609 = !DILocation(line: 365, column: 6, scope: !5610)
!5610 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 365, column: 6)
!5611 = !DILocation(line: 365, column: 6, scope: !5005)
!5612 = !DILocation(line: 366, column: 3, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5610, file: !3, line: 365, column: 14)
!5614 = !DILocation(line: 373, column: 6, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 373, column: 6)
!5616 = !DILocation(line: 373, column: 12, scope: !5615)
!5617 = !DILocation(line: 373, column: 16, scope: !5615)
!5618 = !DILocation(line: 373, column: 26, scope: !5615)
!5619 = !DILocation(line: 373, column: 23, scope: !5615)
!5620 = !DILocation(line: 373, column: 6, scope: !5005)
!5621 = !DILocation(line: 380, column: 10, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 373, column: 31)
!5623 = !DILocation(line: 381, column: 10, scope: !5622)
!5624 = !DILocation(line: 381, column: 41, scope: !5622)
!5625 = !DILocation(line: 381, column: 47, scope: !5622)
!5626 = !DILocation(line: 381, column: 51, scope: !5622)
!5627 = !DILocation(line: 381, column: 59, scope: !5622)
!5628 = !DILocation(line: 378, column: 3, scope: !5622)
!5629 = !DILocation(line: 382, column: 22, scope: !5622)
!5630 = !DILocation(line: 382, column: 3, scope: !5622)
!5631 = !DILocation(line: 382, column: 9, scope: !5622)
!5632 = !DILocation(line: 382, column: 13, scope: !5622)
!5633 = !DILocation(line: 382, column: 20, scope: !5622)
!5634 = !DILocation(line: 383, column: 2, scope: !5622)
!5635 = !DILabel(scope: !5005, name: "end", file: !3, line: 387)
!5636 = !DILocation(line: 387, column: 7, scope: !5005)
!5637 = !DILocation(line: 388, column: 8, scope: !5005)
!5638 = !DILocation(line: 388, column: 2, scope: !5005)
!5639 = !DILocation(line: 389, column: 9, scope: !5005)
!5640 = !DILocation(line: 389, column: 2, scope: !5005)
!5641 = !DILocation(line: 390, column: 1, scope: !5005)
!5642 = distinct !DISubprogram(name: "kzalloc", scope: !138, file: !138, line: 662, type: !5643, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!5643 = !DISubroutineType(types: !5644)
!5644 = !{!150, !313, !737}
!5645 = !DILocalVariable(name: "s", arg: 1, scope: !5646, file: !138, line: 445, type: !929)
!5646 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !138, file: !138, line: 445, type: !5647, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!5647 = !DISubroutineType(types: !5648)
!5648 = !{!150, !929, !737, !313}
!5649 = !DILocation(line: 445, column: 72, scope: !5646, inlinedAt: !5650)
!5650 = distinct !DILocation(line: 552, column: 10, scope: !5651, inlinedAt: !5654)
!5651 = distinct !DILexicalBlock(scope: !5652, file: !138, line: 540, column: 34)
!5652 = distinct !DILexicalBlock(scope: !5653, file: !138, line: 540, column: 6)
!5653 = distinct !DISubprogram(name: "kmalloc", scope: !138, file: !138, line: 538, type: !5643, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!5654 = distinct !DILocation(line: 664, column: 9, scope: !5642)
!5655 = !DILocalVariable(name: "flags", arg: 2, scope: !5646, file: !138, line: 446, type: !737)
!5656 = !DILocation(line: 446, column: 9, scope: !5646, inlinedAt: !5650)
!5657 = !DILocalVariable(name: "size", arg: 3, scope: !5646, file: !138, line: 446, type: !313)
!5658 = !DILocation(line: 446, column: 23, scope: !5646, inlinedAt: !5650)
!5659 = !DILocalVariable(name: "ret", scope: !5646, file: !138, line: 448, type: !150)
!5660 = !DILocation(line: 448, column: 8, scope: !5646, inlinedAt: !5650)
!5661 = !DILocalVariable(name: "flags", arg: 1, scope: !5662, file: !138, line: 318, type: !737)
!5662 = distinct !DISubprogram(name: "kmalloc_type", scope: !138, file: !138, line: 318, type: !5663, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!5663 = !DISubroutineType(types: !5664)
!5664 = !{!137, !737}
!5665 = !DILocation(line: 318, column: 67, scope: !5662, inlinedAt: !5666)
!5666 = distinct !DILocation(line: 553, column: 20, scope: !5651, inlinedAt: !5654)
!5667 = !DILocalVariable(name: "size", arg: 1, scope: !5668, file: !138, line: 346, type: !313)
!5668 = distinct !DISubprogram(name: "kmalloc_index", scope: !138, file: !138, line: 346, type: !5669, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!5669 = !DISubroutineType(types: !5670)
!5670 = !{!7, !313}
!5671 = !DILocation(line: 346, column: 58, scope: !5668, inlinedAt: !5672)
!5672 = distinct !DILocation(line: 547, column: 11, scope: !5651, inlinedAt: !5654)
!5673 = !DILocalVariable(name: "size", arg: 1, scope: !5674, file: !138, line: 472, type: !313)
!5674 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !138, file: !138, line: 472, type: !5675, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!5675 = !DISubroutineType(types: !5676)
!5676 = !{!150, !313, !737, !7}
!5677 = !DILocation(line: 472, column: 28, scope: !5674, inlinedAt: !5678)
!5678 = distinct !DILocation(line: 481, column: 9, scope: !5679, inlinedAt: !5680)
!5679 = distinct !DISubprogram(name: "kmalloc_large", scope: !138, file: !138, line: 478, type: !5643, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!5680 = distinct !DILocation(line: 545, column: 11, scope: !5681, inlinedAt: !5654)
!5681 = distinct !DILexicalBlock(scope: !5651, file: !138, line: 544, column: 7)
!5682 = !DILocalVariable(name: "flags", arg: 2, scope: !5674, file: !138, line: 472, type: !737)
!5683 = !DILocation(line: 472, column: 40, scope: !5674, inlinedAt: !5678)
!5684 = !DILocalVariable(name: "order", arg: 3, scope: !5674, file: !138, line: 472, type: !7)
!5685 = !DILocation(line: 472, column: 60, scope: !5674, inlinedAt: !5678)
!5686 = !DILocalVariable(name: "size", arg: 1, scope: !5679, file: !138, line: 478, type: !313)
!5687 = !DILocation(line: 478, column: 51, scope: !5679, inlinedAt: !5680)
!5688 = !DILocalVariable(name: "flags", arg: 2, scope: !5679, file: !138, line: 478, type: !737)
!5689 = !DILocation(line: 478, column: 63, scope: !5679, inlinedAt: !5680)
!5690 = !DILocalVariable(name: "order", scope: !5679, file: !138, line: 480, type: !7)
!5691 = !DILocation(line: 480, column: 15, scope: !5679, inlinedAt: !5680)
!5692 = !DILocalVariable(name: "size", arg: 1, scope: !5653, file: !138, line: 538, type: !313)
!5693 = !DILocation(line: 538, column: 45, scope: !5653, inlinedAt: !5654)
!5694 = !DILocalVariable(name: "flags", arg: 2, scope: !5653, file: !138, line: 538, type: !737)
!5695 = !DILocation(line: 538, column: 57, scope: !5653, inlinedAt: !5654)
!5696 = !DILocalVariable(name: "index", scope: !5651, file: !138, line: 542, type: !7)
!5697 = !DILocation(line: 542, column: 16, scope: !5651, inlinedAt: !5654)
!5698 = !DILocalVariable(name: "size", arg: 1, scope: !5642, file: !138, line: 662, type: !313)
!5699 = !DILocation(line: 662, column: 36, scope: !5642)
!5700 = !DILocalVariable(name: "flags", arg: 2, scope: !5642, file: !138, line: 662, type: !737)
!5701 = !DILocation(line: 662, column: 48, scope: !5642)
!5702 = !DILocation(line: 664, column: 17, scope: !5642)
!5703 = !DILocation(line: 664, column: 23, scope: !5642)
!5704 = !DILocation(line: 664, column: 29, scope: !5642)
!5705 = !DILocation(line: 540, column: 27, scope: !5652, inlinedAt: !5654)
!5706 = !DILocation(line: 540, column: 6, scope: !5652, inlinedAt: !5654)
!5707 = !DILocation(line: 540, column: 6, scope: !5653, inlinedAt: !5654)
!5708 = !DILocation(line: 544, column: 7, scope: !5681, inlinedAt: !5654)
!5709 = !DILocation(line: 544, column: 12, scope: !5681, inlinedAt: !5654)
!5710 = !DILocation(line: 544, column: 7, scope: !5651, inlinedAt: !5654)
!5711 = !DILocation(line: 545, column: 25, scope: !5681, inlinedAt: !5654)
!5712 = !DILocation(line: 545, column: 31, scope: !5681, inlinedAt: !5654)
!5713 = !DILocation(line: 480, column: 33, scope: !5679, inlinedAt: !5680)
!5714 = !DILocation(line: 480, column: 23, scope: !5679, inlinedAt: !5680)
!5715 = !DILocation(line: 481, column: 29, scope: !5679, inlinedAt: !5680)
!5716 = !DILocation(line: 481, column: 35, scope: !5679, inlinedAt: !5680)
!5717 = !DILocation(line: 481, column: 42, scope: !5679, inlinedAt: !5680)
!5718 = !DILocation(line: 474, column: 23, scope: !5674, inlinedAt: !5678)
!5719 = !DILocation(line: 474, column: 29, scope: !5674, inlinedAt: !5678)
!5720 = !DILocation(line: 474, column: 36, scope: !5674, inlinedAt: !5678)
!5721 = !DILocation(line: 474, column: 9, scope: !5674, inlinedAt: !5678)
!5722 = !DILocation(line: 545, column: 4, scope: !5681, inlinedAt: !5654)
!5723 = !DILocation(line: 547, column: 25, scope: !5651, inlinedAt: !5654)
!5724 = !DILocation(line: 348, column: 7, scope: !5725, inlinedAt: !5672)
!5725 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 348, column: 6)
!5726 = !DILocation(line: 348, column: 6, scope: !5668, inlinedAt: !5672)
!5727 = !DILocation(line: 349, column: 3, scope: !5725, inlinedAt: !5672)
!5728 = !DILocation(line: 351, column: 6, scope: !5729, inlinedAt: !5672)
!5729 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 351, column: 6)
!5730 = !DILocation(line: 351, column: 11, scope: !5729, inlinedAt: !5672)
!5731 = !DILocation(line: 351, column: 6, scope: !5668, inlinedAt: !5672)
!5732 = !DILocation(line: 352, column: 3, scope: !5729, inlinedAt: !5672)
!5733 = !DILocation(line: 354, column: 32, scope: !5734, inlinedAt: !5672)
!5734 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 354, column: 6)
!5735 = !DILocation(line: 354, column: 37, scope: !5734, inlinedAt: !5672)
!5736 = !DILocation(line: 354, column: 42, scope: !5734, inlinedAt: !5672)
!5737 = !DILocation(line: 354, column: 45, scope: !5734, inlinedAt: !5672)
!5738 = !DILocation(line: 354, column: 50, scope: !5734, inlinedAt: !5672)
!5739 = !DILocation(line: 354, column: 6, scope: !5668, inlinedAt: !5672)
!5740 = !DILocation(line: 355, column: 3, scope: !5734, inlinedAt: !5672)
!5741 = !DILocation(line: 356, column: 32, scope: !5742, inlinedAt: !5672)
!5742 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 356, column: 6)
!5743 = !DILocation(line: 356, column: 37, scope: !5742, inlinedAt: !5672)
!5744 = !DILocation(line: 356, column: 43, scope: !5742, inlinedAt: !5672)
!5745 = !DILocation(line: 356, column: 46, scope: !5742, inlinedAt: !5672)
!5746 = !DILocation(line: 356, column: 51, scope: !5742, inlinedAt: !5672)
!5747 = !DILocation(line: 356, column: 6, scope: !5668, inlinedAt: !5672)
!5748 = !DILocation(line: 357, column: 3, scope: !5742, inlinedAt: !5672)
!5749 = !DILocation(line: 358, column: 6, scope: !5750, inlinedAt: !5672)
!5750 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 358, column: 6)
!5751 = !DILocation(line: 358, column: 11, scope: !5750, inlinedAt: !5672)
!5752 = !DILocation(line: 358, column: 6, scope: !5668, inlinedAt: !5672)
!5753 = !DILocation(line: 358, column: 26, scope: !5750, inlinedAt: !5672)
!5754 = !DILocation(line: 359, column: 6, scope: !5755, inlinedAt: !5672)
!5755 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 359, column: 6)
!5756 = !DILocation(line: 359, column: 11, scope: !5755, inlinedAt: !5672)
!5757 = !DILocation(line: 359, column: 6, scope: !5668, inlinedAt: !5672)
!5758 = !DILocation(line: 359, column: 26, scope: !5755, inlinedAt: !5672)
!5759 = !DILocation(line: 360, column: 6, scope: !5760, inlinedAt: !5672)
!5760 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 360, column: 6)
!5761 = !DILocation(line: 360, column: 11, scope: !5760, inlinedAt: !5672)
!5762 = !DILocation(line: 360, column: 6, scope: !5668, inlinedAt: !5672)
!5763 = !DILocation(line: 360, column: 26, scope: !5760, inlinedAt: !5672)
!5764 = !DILocation(line: 361, column: 6, scope: !5765, inlinedAt: !5672)
!5765 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 361, column: 6)
!5766 = !DILocation(line: 361, column: 11, scope: !5765, inlinedAt: !5672)
!5767 = !DILocation(line: 361, column: 6, scope: !5668, inlinedAt: !5672)
!5768 = !DILocation(line: 361, column: 26, scope: !5765, inlinedAt: !5672)
!5769 = !DILocation(line: 362, column: 6, scope: !5770, inlinedAt: !5672)
!5770 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 362, column: 6)
!5771 = !DILocation(line: 362, column: 11, scope: !5770, inlinedAt: !5672)
!5772 = !DILocation(line: 362, column: 6, scope: !5668, inlinedAt: !5672)
!5773 = !DILocation(line: 362, column: 26, scope: !5770, inlinedAt: !5672)
!5774 = !DILocation(line: 363, column: 6, scope: !5775, inlinedAt: !5672)
!5775 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 363, column: 6)
!5776 = !DILocation(line: 363, column: 11, scope: !5775, inlinedAt: !5672)
!5777 = !DILocation(line: 363, column: 6, scope: !5668, inlinedAt: !5672)
!5778 = !DILocation(line: 363, column: 26, scope: !5775, inlinedAt: !5672)
!5779 = !DILocation(line: 364, column: 6, scope: !5780, inlinedAt: !5672)
!5780 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 364, column: 6)
!5781 = !DILocation(line: 364, column: 11, scope: !5780, inlinedAt: !5672)
!5782 = !DILocation(line: 364, column: 6, scope: !5668, inlinedAt: !5672)
!5783 = !DILocation(line: 364, column: 26, scope: !5780, inlinedAt: !5672)
!5784 = !DILocation(line: 365, column: 6, scope: !5785, inlinedAt: !5672)
!5785 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 365, column: 6)
!5786 = !DILocation(line: 365, column: 11, scope: !5785, inlinedAt: !5672)
!5787 = !DILocation(line: 365, column: 6, scope: !5668, inlinedAt: !5672)
!5788 = !DILocation(line: 365, column: 26, scope: !5785, inlinedAt: !5672)
!5789 = !DILocation(line: 366, column: 6, scope: !5790, inlinedAt: !5672)
!5790 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 366, column: 6)
!5791 = !DILocation(line: 366, column: 11, scope: !5790, inlinedAt: !5672)
!5792 = !DILocation(line: 366, column: 6, scope: !5668, inlinedAt: !5672)
!5793 = !DILocation(line: 366, column: 26, scope: !5790, inlinedAt: !5672)
!5794 = !DILocation(line: 367, column: 6, scope: !5795, inlinedAt: !5672)
!5795 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 367, column: 6)
!5796 = !DILocation(line: 367, column: 11, scope: !5795, inlinedAt: !5672)
!5797 = !DILocation(line: 367, column: 6, scope: !5668, inlinedAt: !5672)
!5798 = !DILocation(line: 367, column: 26, scope: !5795, inlinedAt: !5672)
!5799 = !DILocation(line: 368, column: 6, scope: !5800, inlinedAt: !5672)
!5800 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 368, column: 6)
!5801 = !DILocation(line: 368, column: 11, scope: !5800, inlinedAt: !5672)
!5802 = !DILocation(line: 368, column: 6, scope: !5668, inlinedAt: !5672)
!5803 = !DILocation(line: 368, column: 26, scope: !5800, inlinedAt: !5672)
!5804 = !DILocation(line: 369, column: 6, scope: !5805, inlinedAt: !5672)
!5805 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 369, column: 6)
!5806 = !DILocation(line: 369, column: 11, scope: !5805, inlinedAt: !5672)
!5807 = !DILocation(line: 369, column: 6, scope: !5668, inlinedAt: !5672)
!5808 = !DILocation(line: 369, column: 26, scope: !5805, inlinedAt: !5672)
!5809 = !DILocation(line: 370, column: 6, scope: !5810, inlinedAt: !5672)
!5810 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 370, column: 6)
!5811 = !DILocation(line: 370, column: 11, scope: !5810, inlinedAt: !5672)
!5812 = !DILocation(line: 370, column: 6, scope: !5668, inlinedAt: !5672)
!5813 = !DILocation(line: 370, column: 26, scope: !5810, inlinedAt: !5672)
!5814 = !DILocation(line: 371, column: 6, scope: !5815, inlinedAt: !5672)
!5815 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 371, column: 6)
!5816 = !DILocation(line: 371, column: 11, scope: !5815, inlinedAt: !5672)
!5817 = !DILocation(line: 371, column: 6, scope: !5668, inlinedAt: !5672)
!5818 = !DILocation(line: 371, column: 26, scope: !5815, inlinedAt: !5672)
!5819 = !DILocation(line: 372, column: 6, scope: !5820, inlinedAt: !5672)
!5820 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 372, column: 6)
!5821 = !DILocation(line: 372, column: 11, scope: !5820, inlinedAt: !5672)
!5822 = !DILocation(line: 372, column: 6, scope: !5668, inlinedAt: !5672)
!5823 = !DILocation(line: 372, column: 26, scope: !5820, inlinedAt: !5672)
!5824 = !DILocation(line: 373, column: 6, scope: !5825, inlinedAt: !5672)
!5825 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 373, column: 6)
!5826 = !DILocation(line: 373, column: 11, scope: !5825, inlinedAt: !5672)
!5827 = !DILocation(line: 373, column: 6, scope: !5668, inlinedAt: !5672)
!5828 = !DILocation(line: 373, column: 26, scope: !5825, inlinedAt: !5672)
!5829 = !DILocation(line: 374, column: 6, scope: !5830, inlinedAt: !5672)
!5830 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 374, column: 6)
!5831 = !DILocation(line: 374, column: 11, scope: !5830, inlinedAt: !5672)
!5832 = !DILocation(line: 374, column: 6, scope: !5668, inlinedAt: !5672)
!5833 = !DILocation(line: 374, column: 26, scope: !5830, inlinedAt: !5672)
!5834 = !DILocation(line: 375, column: 6, scope: !5835, inlinedAt: !5672)
!5835 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 375, column: 6)
!5836 = !DILocation(line: 375, column: 11, scope: !5835, inlinedAt: !5672)
!5837 = !DILocation(line: 375, column: 6, scope: !5668, inlinedAt: !5672)
!5838 = !DILocation(line: 375, column: 27, scope: !5835, inlinedAt: !5672)
!5839 = !DILocation(line: 376, column: 6, scope: !5840, inlinedAt: !5672)
!5840 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 376, column: 6)
!5841 = !DILocation(line: 376, column: 11, scope: !5840, inlinedAt: !5672)
!5842 = !DILocation(line: 376, column: 6, scope: !5668, inlinedAt: !5672)
!5843 = !DILocation(line: 376, column: 32, scope: !5840, inlinedAt: !5672)
!5844 = !DILocation(line: 377, column: 6, scope: !5845, inlinedAt: !5672)
!5845 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 377, column: 6)
!5846 = !DILocation(line: 377, column: 11, scope: !5845, inlinedAt: !5672)
!5847 = !DILocation(line: 377, column: 6, scope: !5668, inlinedAt: !5672)
!5848 = !DILocation(line: 377, column: 32, scope: !5845, inlinedAt: !5672)
!5849 = !DILocation(line: 378, column: 6, scope: !5850, inlinedAt: !5672)
!5850 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 378, column: 6)
!5851 = !DILocation(line: 378, column: 11, scope: !5850, inlinedAt: !5672)
!5852 = !DILocation(line: 378, column: 6, scope: !5668, inlinedAt: !5672)
!5853 = !DILocation(line: 378, column: 32, scope: !5850, inlinedAt: !5672)
!5854 = !DILocation(line: 379, column: 6, scope: !5855, inlinedAt: !5672)
!5855 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 379, column: 6)
!5856 = !DILocation(line: 379, column: 11, scope: !5855, inlinedAt: !5672)
!5857 = !DILocation(line: 379, column: 6, scope: !5668, inlinedAt: !5672)
!5858 = !DILocation(line: 379, column: 33, scope: !5855, inlinedAt: !5672)
!5859 = !DILocation(line: 380, column: 6, scope: !5860, inlinedAt: !5672)
!5860 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 380, column: 6)
!5861 = !DILocation(line: 380, column: 11, scope: !5860, inlinedAt: !5672)
!5862 = !DILocation(line: 380, column: 6, scope: !5668, inlinedAt: !5672)
!5863 = !DILocation(line: 380, column: 33, scope: !5860, inlinedAt: !5672)
!5864 = !DILocation(line: 381, column: 6, scope: !5865, inlinedAt: !5672)
!5865 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 381, column: 6)
!5866 = !DILocation(line: 381, column: 11, scope: !5865, inlinedAt: !5672)
!5867 = !DILocation(line: 381, column: 6, scope: !5668, inlinedAt: !5672)
!5868 = !DILocation(line: 381, column: 33, scope: !5865, inlinedAt: !5672)
!5869 = !DILocation(line: 382, column: 2, scope: !5870, inlinedAt: !5672)
!5870 = distinct !DILexicalBlock(scope: !5871, file: !138, line: 382, column: 2)
!5871 = distinct !DILexicalBlock(scope: !5668, file: !138, line: 382, column: 2)
!5872 = !{i32 -2143255932, i32 -2143255903, i32 -2143255857, i32 -2143255799, i32 -2143255745, i32 -2143255691, i32 -2143255636, i32 -2143255605}
!5873 = !DILocation(line: 382, column: 2, scope: !5874, inlinedAt: !5672)
!5874 = distinct !DILexicalBlock(scope: !5875, file: !138, line: 382, column: 2)
!5875 = distinct !DILexicalBlock(scope: !5871, file: !138, line: 382, column: 2)
!5876 = !{i32 -2143255162, i32 -2143255155, i32 -2143255101, i32 -2143255070, i32 -2143255040}
!5877 = !DILocation(line: 382, column: 2, scope: !5875, inlinedAt: !5672)
!5878 = !DILocation(line: 386, column: 1, scope: !5668, inlinedAt: !5672)
!5879 = !DILocation(line: 547, column: 9, scope: !5651, inlinedAt: !5654)
!5880 = !DILocation(line: 549, column: 8, scope: !5881, inlinedAt: !5654)
!5881 = distinct !DILexicalBlock(scope: !5651, file: !138, line: 549, column: 7)
!5882 = !DILocation(line: 549, column: 7, scope: !5651, inlinedAt: !5654)
!5883 = !DILocation(line: 550, column: 4, scope: !5881, inlinedAt: !5654)
!5884 = !DILocation(line: 553, column: 33, scope: !5651, inlinedAt: !5654)
!5885 = !DILocation(line: 325, column: 6, scope: !5886, inlinedAt: !5666)
!5886 = distinct !DILexicalBlock(scope: !5662, file: !138, line: 325, column: 6)
!5887 = !DILocation(line: 325, column: 6, scope: !5662, inlinedAt: !5666)
!5888 = !DILocation(line: 326, column: 3, scope: !5886, inlinedAt: !5666)
!5889 = !DILocation(line: 332, column: 9, scope: !5662, inlinedAt: !5666)
!5890 = !DILocation(line: 332, column: 15, scope: !5662, inlinedAt: !5666)
!5891 = !DILocation(line: 332, column: 2, scope: !5662, inlinedAt: !5666)
!5892 = !DILocation(line: 336, column: 1, scope: !5662, inlinedAt: !5666)
!5893 = !DILocation(line: 553, column: 5, scope: !5651, inlinedAt: !5654)
!5894 = !DILocation(line: 553, column: 41, scope: !5651, inlinedAt: !5654)
!5895 = !DILocation(line: 554, column: 5, scope: !5651, inlinedAt: !5654)
!5896 = !DILocation(line: 554, column: 12, scope: !5651, inlinedAt: !5654)
!5897 = !DILocation(line: 448, column: 31, scope: !5646, inlinedAt: !5650)
!5898 = !DILocation(line: 448, column: 34, scope: !5646, inlinedAt: !5650)
!5899 = !DILocation(line: 448, column: 14, scope: !5646, inlinedAt: !5650)
!5900 = !DILocation(line: 450, column: 22, scope: !5646, inlinedAt: !5650)
!5901 = !DILocation(line: 450, column: 25, scope: !5646, inlinedAt: !5650)
!5902 = !DILocation(line: 450, column: 30, scope: !5646, inlinedAt: !5650)
!5903 = !DILocation(line: 450, column: 36, scope: !5646, inlinedAt: !5650)
!5904 = !DILocation(line: 450, column: 8, scope: !5646, inlinedAt: !5650)
!5905 = !DILocation(line: 450, column: 6, scope: !5646, inlinedAt: !5650)
!5906 = !DILocation(line: 451, column: 9, scope: !5646, inlinedAt: !5650)
!5907 = !DILocation(line: 552, column: 3, scope: !5651, inlinedAt: !5654)
!5908 = !DILocation(line: 557, column: 19, scope: !5653, inlinedAt: !5654)
!5909 = !DILocation(line: 557, column: 25, scope: !5653, inlinedAt: !5654)
!5910 = !DILocation(line: 557, column: 9, scope: !5653, inlinedAt: !5654)
!5911 = !DILocation(line: 557, column: 2, scope: !5653, inlinedAt: !5654)
!5912 = !DILocation(line: 558, column: 1, scope: !5653, inlinedAt: !5654)
!5913 = !DILocation(line: 664, column: 2, scope: !5642)
!5914 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !5915, file: !5915, line: 646, type: !5916, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!5915 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5916 = !DISubroutineType(types: !5917)
!5917 = !{!316}
!5918 = !DILocalVariable(name: "__ret", scope: !5919, file: !5915, line: 648, type: !316)
!5919 = distinct !DILexicalBlock(scope: !5914, file: !5915, line: 648, column: 9)
!5920 = !DILocation(line: 648, column: 9, scope: !5919)
!5921 = !DILocalVariable(name: "__edi", scope: !5919, file: !5915, line: 648, type: !316)
!5922 = !DILocalVariable(name: "__esi", scope: !5919, file: !5915, line: 648, type: !316)
!5923 = !DILocalVariable(name: "__edx", scope: !5919, file: !5915, line: 648, type: !316)
!5924 = !DILocalVariable(name: "__ecx", scope: !5919, file: !5915, line: 648, type: !316)
!5925 = !DILocalVariable(name: "__eax", scope: !5919, file: !5915, line: 648, type: !316)
!5926 = !DILocation(line: 648, column: 9, scope: !5927)
!5927 = distinct !DILexicalBlock(scope: !5928, file: !5915, line: 648, column: 9)
!5928 = distinct !DILexicalBlock(scope: !5919, file: !5915, line: 648, column: 9)
!5929 = !{i32 -2145766665, i32 -2145764350, i32 -2145764116, i32 -2145764065, i32 -2145764037, i32 -2145764012, i32 -2145764328, i32 -2145764315, i32 -2145763877, i32 -2145763758, i32 -2145764223, i32 -2145764196, i32 -2145764168, i32 -2145764138}
!5930 = !DILocalVariable(name: "__mask", scope: !5931, file: !5915, line: 648, type: !316)
!5931 = distinct !DILexicalBlock(scope: !5927, file: !5915, line: 648, column: 9)
!5932 = !DILocation(line: 648, column: 9, scope: !5931)
!5933 = !DILocation(line: 648, column: 9, scope: !5928)
!5934 = !DILocation(line: 648, column: 2, scope: !5914)
!5935 = distinct !DISubprogram(name: "acpi_pci_link_get_current", scope: !3, file: !3, line: 229, type: !4652, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!5936 = !DILocalVariable(name: "link", arg: 1, scope: !5935, file: !3, line: 229, type: !151)
!5937 = !DILocation(line: 229, column: 60, scope: !5935)
!5938 = !DILocalVariable(name: "result", scope: !5935, file: !3, line: 231, type: !167)
!5939 = !DILocation(line: 231, column: 6, scope: !5935)
!5940 = !DILocalVariable(name: "status", scope: !5935, file: !3, line: 232, type: !4387)
!5941 = !DILocation(line: 232, column: 14, scope: !5935)
!5942 = !DILocalVariable(name: "irq", scope: !5935, file: !3, line: 233, type: !167)
!5943 = !DILocation(line: 233, column: 6, scope: !5935)
!5944 = !DILocation(line: 235, column: 2, scope: !5935)
!5945 = !DILocation(line: 235, column: 8, scope: !5935)
!5946 = !DILocation(line: 235, column: 12, scope: !5935)
!5947 = !DILocation(line: 235, column: 19, scope: !5935)
!5948 = !DILocation(line: 238, column: 6, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5935, file: !3, line: 238, column: 6)
!5950 = !DILocation(line: 238, column: 6, scope: !5935)
!5951 = !DILocation(line: 240, column: 32, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 238, column: 19)
!5953 = !DILocation(line: 240, column: 38, scope: !5952)
!5954 = !DILocation(line: 240, column: 12, scope: !5952)
!5955 = !DILocation(line: 240, column: 10, scope: !5952)
!5956 = !DILocation(line: 241, column: 7, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5952, file: !3, line: 241, column: 7)
!5958 = !DILocation(line: 241, column: 7, scope: !5952)
!5959 = !DILocation(line: 242, column: 4, scope: !5960)
!5960 = distinct !DILexicalBlock(scope: !5957, file: !3, line: 241, column: 15)
!5961 = !DILocation(line: 243, column: 4, scope: !5960)
!5962 = !DILocation(line: 246, column: 8, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5952, file: !3, line: 246, column: 7)
!5964 = !DILocation(line: 246, column: 14, scope: !5963)
!5965 = !DILocation(line: 246, column: 22, scope: !5963)
!5966 = !DILocation(line: 246, column: 29, scope: !5963)
!5967 = !DILocation(line: 246, column: 7, scope: !5952)
!5968 = !DILocation(line: 248, column: 4, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5963, file: !3, line: 246, column: 38)
!5970 = !DILocation(line: 250, column: 2, scope: !5952)
!5971 = !DILocation(line: 256, column: 31, scope: !5935)
!5972 = !DILocation(line: 256, column: 37, scope: !5935)
!5973 = !DILocation(line: 256, column: 45, scope: !5935)
!5974 = !DILocation(line: 257, column: 39, scope: !5935)
!5975 = !DILocation(line: 256, column: 11, scope: !5935)
!5976 = !DILocation(line: 256, column: 9, scope: !5935)
!5977 = !DILocation(line: 258, column: 6, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5935, file: !3, line: 258, column: 6)
!5979 = !DILocation(line: 258, column: 6, scope: !5935)
!5980 = !DILocation(line: 259, column: 3, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5978, file: !3, line: 258, column: 28)
!5982 = !DILocation(line: 260, column: 10, scope: !5981)
!5983 = !DILocation(line: 261, column: 3, scope: !5981)
!5984 = !DILocation(line: 264, column: 6, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5935, file: !3, line: 264, column: 6)
!5986 = !DILocation(line: 264, column: 18, scope: !5985)
!5987 = !DILocation(line: 264, column: 22, scope: !5985)
!5988 = !DILocation(line: 264, column: 6, scope: !5935)
!5989 = !DILocation(line: 265, column: 3, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5985, file: !3, line: 264, column: 27)
!5991 = !DILocation(line: 266, column: 10, scope: !5990)
!5992 = !DILocation(line: 267, column: 2, scope: !5990)
!5993 = !DILocation(line: 269, column: 21, scope: !5935)
!5994 = !DILocation(line: 269, column: 2, scope: !5935)
!5995 = !DILocation(line: 269, column: 8, scope: !5935)
!5996 = !DILocation(line: 269, column: 12, scope: !5935)
!5997 = !DILocation(line: 269, column: 19, scope: !5935)
!5998 = !DILabel(scope: !5935, name: "end", file: !3, line: 273)
!5999 = !DILocation(line: 273, column: 7, scope: !5935)
!6000 = !DILocation(line: 274, column: 9, scope: !5935)
!6001 = !DILocation(line: 274, column: 2, scope: !5935)
!6002 = !DILocation(line: 275, column: 1, scope: !5935)
!6003 = distinct !DISubprogram(name: "get_order", scope: !6004, file: !6004, line: 29, type: !5011, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!6004 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6005 = !DILocalVariable(name: "x", arg: 1, scope: !6006, file: !6007, line: 366, type: !414)
!6006 = distinct !DISubprogram(name: "fls64", scope: !6007, file: !6007, line: 366, type: !6008, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!6007 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6008 = !DISubroutineType(types: !6009)
!6009 = !{!167, !414}
!6010 = !DILocation(line: 366, column: 40, scope: !6006, inlinedAt: !6011)
!6011 = distinct !DILocation(line: 46, column: 9, scope: !6003)
!6012 = !DILocalVariable(name: "bitpos", scope: !6006, file: !6007, line: 368, type: !167)
!6013 = !DILocation(line: 368, column: 6, scope: !6006, inlinedAt: !6011)
!6014 = !DILocalVariable(name: "size", arg: 1, scope: !6003, file: !6004, line: 29, type: !316)
!6015 = !DILocation(line: 29, column: 63, scope: !6003)
!6016 = !DILocation(line: 31, column: 27, scope: !6017)
!6017 = distinct !DILexicalBlock(scope: !6003, file: !6004, line: 31, column: 6)
!6018 = !DILocation(line: 31, column: 6, scope: !6017)
!6019 = !DILocation(line: 31, column: 6, scope: !6003)
!6020 = !DILocation(line: 32, column: 8, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !6022, file: !6004, line: 32, column: 7)
!6022 = distinct !DILexicalBlock(scope: !6017, file: !6004, line: 31, column: 34)
!6023 = !DILocation(line: 32, column: 7, scope: !6022)
!6024 = !DILocation(line: 33, column: 4, scope: !6021)
!6025 = !DILocation(line: 35, column: 7, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !6022, file: !6004, line: 35, column: 7)
!6027 = !DILocation(line: 35, column: 12, scope: !6026)
!6028 = !DILocation(line: 35, column: 7, scope: !6022)
!6029 = !DILocation(line: 36, column: 4, scope: !6026)
!6030 = !DILocation(line: 38, column: 10, scope: !6022)
!6031 = !DILocation(line: 38, column: 28, scope: !6022)
!6032 = !DILocation(line: 38, column: 41, scope: !6022)
!6033 = !DILocation(line: 38, column: 3, scope: !6022)
!6034 = !DILocation(line: 41, column: 6, scope: !6003)
!6035 = !DILocation(line: 42, column: 7, scope: !6003)
!6036 = !DILocation(line: 46, column: 15, scope: !6003)
!6037 = !DILocation(line: 374, column: 2, scope: !6006, inlinedAt: !6011)
!6038 = !DILocation(line: 376, column: 14, scope: !6006, inlinedAt: !6011)
!6039 = !{i32 296736}
!6040 = !DILocation(line: 377, column: 9, scope: !6006, inlinedAt: !6011)
!6041 = !DILocation(line: 377, column: 16, scope: !6006, inlinedAt: !6011)
!6042 = !DILocation(line: 46, column: 2, scope: !6003)
!6043 = !DILocation(line: 48, column: 1, scope: !6003)
!6044 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6045, file: !6045, line: 30, type: !6046, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!6045 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6046 = !DISubroutineType(types: !6047)
!6047 = !{!167, !413}
!6048 = !DILocation(line: 366, column: 40, scope: !6006, inlinedAt: !6049)
!6049 = distinct !DILocation(line: 32, column: 9, scope: !6044)
!6050 = !DILocation(line: 368, column: 6, scope: !6006, inlinedAt: !6049)
!6051 = !DILocalVariable(name: "n", arg: 1, scope: !6044, file: !6045, line: 30, type: !413)
!6052 = !DILocation(line: 30, column: 21, scope: !6044)
!6053 = !DILocation(line: 32, column: 15, scope: !6044)
!6054 = !DILocation(line: 374, column: 2, scope: !6006, inlinedAt: !6049)
!6055 = !DILocation(line: 376, column: 14, scope: !6006, inlinedAt: !6049)
!6056 = !DILocation(line: 377, column: 9, scope: !6006, inlinedAt: !6049)
!6057 = !DILocation(line: 377, column: 16, scope: !6006, inlinedAt: !6049)
!6058 = !DILocation(line: 32, column: 18, scope: !6044)
!6059 = !DILocation(line: 32, column: 2, scope: !6044)
!6060 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6061, file: !6061, line: 137, type: !6062, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!6061 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6062 = !DISubroutineType(types: !6063)
!6063 = !{!150, !929, !202, !313, !737}
!6064 = !DILocalVariable(name: "s", arg: 1, scope: !6060, file: !6061, line: 137, type: !929)
!6065 = !DILocation(line: 137, column: 54, scope: !6060)
!6066 = !DILocalVariable(name: "object", arg: 2, scope: !6060, file: !6061, line: 137, type: !202)
!6067 = !DILocation(line: 137, column: 69, scope: !6060)
!6068 = !DILocalVariable(name: "size", arg: 3, scope: !6060, file: !6061, line: 138, type: !313)
!6069 = !DILocation(line: 138, column: 12, scope: !6060)
!6070 = !DILocalVariable(name: "flags", arg: 4, scope: !6060, file: !6061, line: 138, type: !737)
!6071 = !DILocation(line: 138, column: 24, scope: !6060)
!6072 = !DILocation(line: 140, column: 17, scope: !6060)
!6073 = !DILocation(line: 140, column: 2, scope: !6060)
!6074 = distinct !DISubprogram(name: "acpi_pci_link_check_current", scope: !3, file: !3, line: 172, type: !6075, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!6075 = !DISubroutineType(types: !6076)
!6076 = !{!4387, !6077, !150}
!6077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!6078 = !DILocalVariable(name: "resource", arg: 1, scope: !6074, file: !3, line: 172, type: !6077)
!6079 = !DILocation(line: 172, column: 70, scope: !6074)
!6080 = !DILocalVariable(name: "context", arg: 2, scope: !6074, file: !3, line: 173, type: !150)
!6081 = !DILocation(line: 173, column: 19, scope: !6074)
!6082 = !DILocalVariable(name: "irq", scope: !6074, file: !3, line: 175, type: !698)
!6083 = !DILocation(line: 175, column: 7, scope: !6074)
!6084 = !DILocation(line: 175, column: 13, scope: !6074)
!6085 = !DILocation(line: 177, column: 10, scope: !6074)
!6086 = !DILocation(line: 177, column: 20, scope: !6074)
!6087 = !DILocation(line: 177, column: 2, scope: !6074)
!6088 = !DILocation(line: 180, column: 3, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !6074, file: !3, line: 177, column: 26)
!6090 = !DILocalVariable(name: "p", scope: !6091, file: !3, line: 183, type: !6092)
!6091 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 182, column: 3)
!6092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!6093 = !DILocation(line: 183, column: 30, scope: !6091)
!6094 = !DILocation(line: 183, column: 35, scope: !6091)
!6095 = !DILocation(line: 183, column: 45, scope: !6091)
!6096 = !DILocation(line: 183, column: 50, scope: !6091)
!6097 = !DILocation(line: 184, column: 9, scope: !6098)
!6098 = distinct !DILexicalBlock(scope: !6091, file: !3, line: 184, column: 8)
!6099 = !DILocation(line: 184, column: 11, scope: !6098)
!6100 = !DILocation(line: 184, column: 15, scope: !6098)
!6101 = !DILocation(line: 184, column: 18, scope: !6098)
!6102 = !DILocation(line: 184, column: 8, scope: !6091)
!6103 = !DILocation(line: 191, column: 5, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !6098, file: !3, line: 184, column: 35)
!6105 = !DILocation(line: 193, column: 11, scope: !6091)
!6106 = !DILocation(line: 193, column: 14, scope: !6091)
!6107 = !DILocation(line: 193, column: 5, scope: !6091)
!6108 = !DILocation(line: 193, column: 9, scope: !6091)
!6109 = !DILocation(line: 194, column: 4, scope: !6091)
!6110 = !DILocalVariable(name: "p", scope: !6111, file: !3, line: 198, type: !6112)
!6111 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 197, column: 3)
!6112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5210, size: 64)
!6113 = !DILocation(line: 198, column: 39, scope: !6111)
!6114 = !DILocation(line: 199, column: 9, scope: !6111)
!6115 = !DILocation(line: 199, column: 19, scope: !6111)
!6116 = !DILocation(line: 199, column: 24, scope: !6111)
!6117 = !DILocation(line: 200, column: 9, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6111, file: !3, line: 200, column: 8)
!6119 = !DILocation(line: 200, column: 11, scope: !6118)
!6120 = !DILocation(line: 200, column: 15, scope: !6118)
!6121 = !DILocation(line: 200, column: 18, scope: !6118)
!6122 = !DILocation(line: 200, column: 8, scope: !6111)
!6123 = !DILocation(line: 205, column: 5, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6118, file: !3, line: 200, column: 35)
!6125 = !DILocation(line: 207, column: 5, scope: !6124)
!6126 = !DILocation(line: 209, column: 11, scope: !6111)
!6127 = !DILocation(line: 209, column: 14, scope: !6111)
!6128 = !DILocation(line: 209, column: 5, scope: !6111)
!6129 = !DILocation(line: 209, column: 9, scope: !6111)
!6130 = !DILocation(line: 210, column: 4, scope: !6111)
!6131 = !DILocation(line: 215, column: 10, scope: !6089)
!6132 = !DILocation(line: 215, column: 20, scope: !6089)
!6133 = !DILocation(line: 214, column: 3, scope: !6089)
!6134 = !DILocation(line: 216, column: 3, scope: !6089)
!6135 = !DILocation(line: 219, column: 2, scope: !6074)
!6136 = !DILocation(line: 220, column: 1, scope: !6074)
!6137 = distinct !DISubprogram(name: "acpi_irq_pci_sharing_penalty", scope: !3, file: !3, line: 455, type: !3046, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!6138 = !DILocalVariable(name: "irq", arg: 1, scope: !6137, file: !3, line: 455, type: !167)
!6139 = !DILocation(line: 455, column: 45, scope: !6137)
!6140 = !DILocalVariable(name: "link", scope: !6137, file: !3, line: 457, type: !151)
!6141 = !DILocation(line: 457, column: 24, scope: !6137)
!6142 = !DILocalVariable(name: "penalty", scope: !6137, file: !3, line: 458, type: !167)
!6143 = !DILocation(line: 458, column: 6, scope: !6137)
!6144 = !DILocalVariable(name: "i", scope: !6137, file: !3, line: 459, type: !167)
!6145 = !DILocation(line: 459, column: 6, scope: !6137)
!6146 = !DILocalVariable(name: "__mptr", scope: !6147, file: !3, line: 461, type: !150)
!6147 = distinct !DILexicalBlock(scope: !6148, file: !3, line: 461, column: 2)
!6148 = distinct !DILexicalBlock(scope: !6137, file: !3, line: 461, column: 2)
!6149 = !DILocation(line: 461, column: 2, scope: !6147)
!6150 = !DILocation(line: 461, column: 2, scope: !6151)
!6151 = distinct !DILexicalBlock(scope: !6147, file: !3, line: 461, column: 2)
!6152 = !DILocation(line: 461, column: 2, scope: !6148)
!6153 = !DILocation(line: 461, column: 2, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6148, file: !3, line: 461, column: 2)
!6155 = !DILocation(line: 466, column: 7, scope: !6156)
!6156 = distinct !DILexicalBlock(scope: !6157, file: !3, line: 466, column: 7)
!6157 = distinct !DILexicalBlock(scope: !6154, file: !3, line: 461, column: 51)
!6158 = !DILocation(line: 466, column: 13, scope: !6156)
!6159 = !DILocation(line: 466, column: 17, scope: !6156)
!6160 = !DILocation(line: 466, column: 24, scope: !6156)
!6161 = !DILocation(line: 466, column: 27, scope: !6156)
!6162 = !DILocation(line: 466, column: 33, scope: !6156)
!6163 = !DILocation(line: 466, column: 37, scope: !6156)
!6164 = !DILocation(line: 466, column: 47, scope: !6156)
!6165 = !DILocation(line: 466, column: 44, scope: !6156)
!6166 = !DILocation(line: 466, column: 7, scope: !6157)
!6167 = !DILocation(line: 467, column: 12, scope: !6156)
!6168 = !DILocation(line: 467, column: 4, scope: !6156)
!6169 = !DILocation(line: 472, column: 10, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6157, file: !3, line: 472, column: 3)
!6171 = !DILocation(line: 472, column: 8, scope: !6170)
!6172 = !DILocation(line: 472, column: 15, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 472, column: 3)
!6174 = !DILocation(line: 472, column: 19, scope: !6173)
!6175 = !DILocation(line: 472, column: 25, scope: !6173)
!6176 = !DILocation(line: 472, column: 29, scope: !6173)
!6177 = !DILocation(line: 472, column: 17, scope: !6173)
!6178 = !DILocation(line: 472, column: 3, scope: !6170)
!6179 = !DILocation(line: 473, column: 8, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6173, file: !3, line: 473, column: 8)
!6181 = !DILocation(line: 473, column: 14, scope: !6180)
!6182 = !DILocation(line: 473, column: 18, scope: !6180)
!6183 = !DILocation(line: 473, column: 27, scope: !6180)
!6184 = !DILocation(line: 473, column: 33, scope: !6180)
!6185 = !DILocation(line: 473, column: 30, scope: !6180)
!6186 = !DILocation(line: 473, column: 8, scope: !6173)
!6187 = !DILocation(line: 475, column: 6, scope: !6180)
!6188 = !DILocation(line: 475, column: 12, scope: !6180)
!6189 = !DILocation(line: 475, column: 16, scope: !6180)
!6190 = !DILocation(line: 474, column: 42, scope: !6180)
!6191 = !DILocation(line: 474, column: 13, scope: !6180)
!6192 = !DILocation(line: 474, column: 5, scope: !6180)
!6193 = !DILocation(line: 472, column: 46, scope: !6173)
!6194 = !DILocation(line: 472, column: 3, scope: !6173)
!6195 = distinct !{!6195, !6178, !6196}
!6196 = !DILocation(line: 475, column: 16, scope: !6170)
!6197 = !DILocation(line: 476, column: 2, scope: !6157)
!6198 = !DILocalVariable(name: "__mptr", scope: !6199, file: !3, line: 461, type: !150)
!6199 = distinct !DILexicalBlock(scope: !6154, file: !3, line: 461, column: 2)
!6200 = !DILocation(line: 461, column: 2, scope: !6199)
!6201 = !DILocation(line: 461, column: 2, scope: !6202)
!6202 = distinct !DILexicalBlock(scope: !6199, file: !3, line: 461, column: 2)
!6203 = distinct !{!6203, !6152, !6204}
!6204 = !DILocation(line: 476, column: 2, scope: !6148)
!6205 = !DILocation(line: 478, column: 9, scope: !6137)
!6206 = !DILocation(line: 478, column: 2, scope: !6137)
!6207 = distinct !DISubprogram(name: "acpi_irq_penalty_update", scope: !3, file: !3, line: 811, type: !6208, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!6208 = !DISubroutineType(types: !6209)
!6209 = !{!167, !266, !167}
!6210 = !DILocalVariable(name: "str", arg: 1, scope: !6207, file: !3, line: 811, type: !266)
!6211 = !DILocation(line: 811, column: 49, scope: !6207)
!6212 = !DILocalVariable(name: "used", arg: 2, scope: !6207, file: !3, line: 811, type: !167)
!6213 = !DILocation(line: 811, column: 58, scope: !6207)
!6214 = !DILocalVariable(name: "i", scope: !6207, file: !3, line: 813, type: !167)
!6215 = !DILocation(line: 813, column: 6, scope: !6207)
!6216 = !DILocation(line: 815, column: 9, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !6207, file: !3, line: 815, column: 2)
!6218 = !DILocation(line: 815, column: 7, scope: !6217)
!6219 = !DILocation(line: 815, column: 14, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6217, file: !3, line: 815, column: 2)
!6221 = !DILocation(line: 815, column: 16, scope: !6220)
!6222 = !DILocation(line: 815, column: 2, scope: !6217)
!6223 = !DILocalVariable(name: "retval", scope: !6224, file: !3, line: 816, type: !167)
!6224 = distinct !DILexicalBlock(scope: !6220, file: !3, line: 815, column: 27)
!6225 = !DILocation(line: 816, column: 7, scope: !6224)
!6226 = !DILocalVariable(name: "irq", scope: !6224, file: !3, line: 817, type: !167)
!6227 = !DILocation(line: 817, column: 7, scope: !6224)
!6228 = !DILocalVariable(name: "new_penalty", scope: !6224, file: !3, line: 818, type: !167)
!6229 = !DILocation(line: 818, column: 7, scope: !6224)
!6230 = !DILocation(line: 820, column: 12, scope: !6224)
!6231 = !DILocation(line: 820, column: 10, scope: !6224)
!6232 = !DILocation(line: 822, column: 8, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6224, file: !3, line: 822, column: 7)
!6234 = !DILocation(line: 822, column: 7, scope: !6224)
!6235 = !DILocation(line: 823, column: 4, scope: !6233)
!6236 = !DILocation(line: 826, column: 8, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6224, file: !3, line: 826, column: 7)
!6238 = !DILocation(line: 826, column: 12, scope: !6237)
!6239 = !DILocation(line: 826, column: 17, scope: !6237)
!6240 = !DILocation(line: 826, column: 21, scope: !6237)
!6241 = !DILocation(line: 826, column: 25, scope: !6237)
!6242 = !DILocation(line: 826, column: 7, scope: !6224)
!6243 = !DILocation(line: 827, column: 4, scope: !6237)
!6244 = !DILocation(line: 829, column: 7, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !6224, file: !3, line: 829, column: 7)
!6246 = !DILocation(line: 829, column: 7, scope: !6224)
!6247 = !DILocation(line: 830, column: 39, scope: !6245)
!6248 = !DILocation(line: 830, column: 18, scope: !6245)
!6249 = !DILocation(line: 830, column: 44, scope: !6245)
!6250 = !DILocation(line: 830, column: 16, scope: !6245)
!6251 = !DILocation(line: 830, column: 4, scope: !6245)
!6252 = !DILocation(line: 833, column: 16, scope: !6245)
!6253 = !DILocation(line: 835, column: 31, scope: !6224)
!6254 = !DILocation(line: 835, column: 24, scope: !6224)
!6255 = !DILocation(line: 835, column: 3, scope: !6224)
!6256 = !DILocation(line: 835, column: 29, scope: !6224)
!6257 = !DILocation(line: 836, column: 7, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !6224, file: !3, line: 836, column: 7)
!6259 = !DILocation(line: 836, column: 14, scope: !6258)
!6260 = !DILocation(line: 836, column: 7, scope: !6224)
!6261 = !DILocation(line: 837, column: 4, scope: !6258)
!6262 = !DILocation(line: 838, column: 2, scope: !6224)
!6263 = !DILocation(line: 815, column: 23, scope: !6220)
!6264 = !DILocation(line: 815, column: 2, scope: !6220)
!6265 = distinct !{!6265, !6222, !6266}
!6266 = !DILocation(line: 838, column: 2, scope: !6217)
!6267 = !DILocation(line: 839, column: 2, scope: !6207)
!6268 = distinct !DISubprogram(name: "irqrouter_resume", scope: !3, file: !3, line: 786, type: !1874, scopeLine: 787, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!6269 = !DILocalVariable(name: "link", scope: !6268, file: !3, line: 788, type: !151)
!6270 = !DILocation(line: 788, column: 24, scope: !6268)
!6271 = !DILocalVariable(name: "__mptr", scope: !6272, file: !3, line: 790, type: !150)
!6272 = distinct !DILexicalBlock(scope: !6273, file: !3, line: 790, column: 2)
!6273 = distinct !DILexicalBlock(scope: !6268, file: !3, line: 790, column: 2)
!6274 = !DILocation(line: 790, column: 2, scope: !6272)
!6275 = !DILocation(line: 790, column: 2, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !6272, file: !3, line: 790, column: 2)
!6277 = !DILocation(line: 790, column: 2, scope: !6273)
!6278 = !DILocation(line: 790, column: 2, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6273, file: !3, line: 790, column: 2)
!6280 = !DILocation(line: 791, column: 24, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6279, file: !3, line: 790, column: 51)
!6282 = !DILocation(line: 791, column: 3, scope: !6281)
!6283 = !DILocation(line: 792, column: 2, scope: !6281)
!6284 = !DILocalVariable(name: "__mptr", scope: !6285, file: !3, line: 790, type: !150)
!6285 = distinct !DILexicalBlock(scope: !6279, file: !3, line: 790, column: 2)
!6286 = !DILocation(line: 790, column: 2, scope: !6285)
!6287 = !DILocation(line: 790, column: 2, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6285, file: !3, line: 790, column: 2)
!6289 = distinct !{!6289, !6277, !6290}
!6290 = !DILocation(line: 792, column: 2, scope: !6273)
!6291 = !DILocation(line: 793, column: 1, scope: !6268)
!6292 = distinct !DISubprogram(name: "acpi_pci_link_resume", scope: !3, file: !3, line: 778, type: !4652, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!6293 = !DILocalVariable(name: "link", arg: 1, scope: !6292, file: !3, line: 778, type: !151)
!6294 = !DILocation(line: 778, column: 55, scope: !6292)
!6295 = !DILocation(line: 780, column: 6, scope: !6296)
!6296 = distinct !DILexicalBlock(scope: !6292, file: !3, line: 780, column: 6)
!6297 = !DILocation(line: 780, column: 12, scope: !6296)
!6298 = !DILocation(line: 780, column: 19, scope: !6296)
!6299 = !DILocation(line: 780, column: 22, scope: !6296)
!6300 = !DILocation(line: 780, column: 28, scope: !6296)
!6301 = !DILocation(line: 780, column: 32, scope: !6296)
!6302 = !DILocation(line: 780, column: 39, scope: !6296)
!6303 = !DILocation(line: 780, column: 42, scope: !6296)
!6304 = !DILocation(line: 780, column: 48, scope: !6296)
!6305 = !DILocation(line: 780, column: 52, scope: !6296)
!6306 = !DILocation(line: 780, column: 6, scope: !6292)
!6307 = !DILocation(line: 781, column: 29, scope: !6296)
!6308 = !DILocation(line: 781, column: 35, scope: !6296)
!6309 = !DILocation(line: 781, column: 41, scope: !6296)
!6310 = !DILocation(line: 781, column: 45, scope: !6296)
!6311 = !DILocation(line: 781, column: 11, scope: !6296)
!6312 = !DILocation(line: 781, column: 3, scope: !6296)
!6313 = !DILocation(line: 783, column: 2, scope: !6292)
!6314 = !DILocation(line: 784, column: 1, scope: !6292)
!6315 = distinct !DISubprogram(name: "acpi_pci_link_add", scope: !3, file: !3, line: 720, type: !4309, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!6316 = !DILocalVariable(name: "device", arg: 1, scope: !6315, file: !3, line: 720, type: !162)
!6317 = !DILocation(line: 720, column: 50, scope: !6315)
!6318 = !DILocalVariable(name: "not_used", arg: 2, scope: !6315, file: !3, line: 721, type: !3461)
!6319 = !DILocation(line: 721, column: 38, scope: !6315)
!6320 = !DILocalVariable(name: "result", scope: !6315, file: !3, line: 723, type: !167)
!6321 = !DILocation(line: 723, column: 6, scope: !6315)
!6322 = !DILocalVariable(name: "link", scope: !6315, file: !3, line: 724, type: !151)
!6323 = !DILocation(line: 724, column: 24, scope: !6315)
!6324 = !DILocalVariable(name: "i", scope: !6315, file: !3, line: 725, type: !167)
!6325 = !DILocation(line: 725, column: 6, scope: !6315)
!6326 = !DILocalVariable(name: "found", scope: !6315, file: !3, line: 726, type: !167)
!6327 = !DILocation(line: 726, column: 6, scope: !6315)
!6328 = !DILocation(line: 728, column: 9, scope: !6315)
!6329 = !DILocation(line: 728, column: 7, scope: !6315)
!6330 = !DILocation(line: 729, column: 7, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !6315, file: !3, line: 729, column: 6)
!6332 = !DILocation(line: 729, column: 6, scope: !6315)
!6333 = !DILocation(line: 730, column: 3, scope: !6331)
!6334 = !DILocation(line: 732, column: 17, scope: !6315)
!6335 = !DILocation(line: 732, column: 2, scope: !6315)
!6336 = !DILocation(line: 732, column: 8, scope: !6315)
!6337 = !DILocation(line: 732, column: 15, scope: !6315)
!6338 = !DILocation(line: 733, column: 9, scope: !6315)
!6339 = !DILocation(line: 733, column: 2, scope: !6315)
!6340 = !DILocation(line: 734, column: 9, scope: !6315)
!6341 = !DILocation(line: 734, column: 2, scope: !6315)
!6342 = !DILocation(line: 735, column: 24, scope: !6315)
!6343 = !DILocation(line: 735, column: 2, scope: !6315)
!6344 = !DILocation(line: 735, column: 10, scope: !6315)
!6345 = !DILocation(line: 735, column: 22, scope: !6315)
!6346 = !DILocation(line: 737, column: 2, scope: !6315)
!6347 = !DILocation(line: 738, column: 38, scope: !6315)
!6348 = !DILocation(line: 738, column: 11, scope: !6315)
!6349 = !DILocation(line: 738, column: 9, scope: !6315)
!6350 = !DILocation(line: 739, column: 6, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6315, file: !3, line: 739, column: 6)
!6352 = !DILocation(line: 739, column: 6, scope: !6315)
!6353 = !DILocation(line: 740, column: 3, scope: !6351)
!6354 = !DILocation(line: 743, column: 28, scope: !6315)
!6355 = !DILocation(line: 743, column: 2, scope: !6315)
!6356 = !DILocation(line: 745, column: 43, scope: !6315)
!6357 = !DILocation(line: 746, column: 9, scope: !6315)
!6358 = !DILocation(line: 745, column: 2, scope: !6315)
!6359 = !DILocation(line: 747, column: 9, scope: !6360)
!6360 = distinct !DILexicalBlock(scope: !6315, file: !3, line: 747, column: 2)
!6361 = !DILocation(line: 747, column: 7, scope: !6360)
!6362 = !DILocation(line: 747, column: 14, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6360, file: !3, line: 747, column: 2)
!6364 = !DILocation(line: 747, column: 18, scope: !6363)
!6365 = !DILocation(line: 747, column: 24, scope: !6363)
!6366 = !DILocation(line: 747, column: 28, scope: !6363)
!6367 = !DILocation(line: 747, column: 16, scope: !6363)
!6368 = !DILocation(line: 747, column: 2, scope: !6360)
!6369 = !DILocation(line: 748, column: 7, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6371, file: !3, line: 748, column: 7)
!6371 = distinct !DILexicalBlock(scope: !6363, file: !3, line: 747, column: 49)
!6372 = !DILocation(line: 748, column: 13, scope: !6370)
!6373 = !DILocation(line: 748, column: 17, scope: !6370)
!6374 = !DILocation(line: 748, column: 27, scope: !6370)
!6375 = !DILocation(line: 748, column: 33, scope: !6370)
!6376 = !DILocation(line: 748, column: 37, scope: !6370)
!6377 = !DILocation(line: 748, column: 46, scope: !6370)
!6378 = !DILocation(line: 748, column: 24, scope: !6370)
!6379 = !DILocation(line: 748, column: 7, scope: !6371)
!6380 = !DILocation(line: 749, column: 29, scope: !6381)
!6381 = distinct !DILexicalBlock(scope: !6370, file: !3, line: 748, column: 50)
!6382 = !DILocation(line: 749, column: 35, scope: !6381)
!6383 = !DILocation(line: 749, column: 39, scope: !6381)
!6384 = !DILocation(line: 749, column: 48, scope: !6381)
!6385 = !DILocation(line: 749, column: 4, scope: !6381)
!6386 = !DILocation(line: 750, column: 10, scope: !6381)
!6387 = !DILocation(line: 751, column: 3, scope: !6381)
!6388 = !DILocation(line: 752, column: 28, scope: !6370)
!6389 = !DILocation(line: 752, column: 34, scope: !6370)
!6390 = !DILocation(line: 752, column: 38, scope: !6370)
!6391 = !DILocation(line: 752, column: 47, scope: !6370)
!6392 = !DILocation(line: 752, column: 4, scope: !6370)
!6393 = !DILocation(line: 753, column: 2, scope: !6371)
!6394 = !DILocation(line: 747, column: 45, scope: !6363)
!6395 = !DILocation(line: 747, column: 2, scope: !6363)
!6396 = distinct !{!6396, !6368, !6397}
!6397 = !DILocation(line: 753, column: 2, scope: !6360)
!6398 = !DILocation(line: 755, column: 2, scope: !6315)
!6399 = !DILocation(line: 757, column: 7, scope: !6400)
!6400 = distinct !DILexicalBlock(scope: !6315, file: !3, line: 757, column: 6)
!6401 = !DILocation(line: 757, column: 6, scope: !6315)
!6402 = !DILocation(line: 758, column: 28, scope: !6400)
!6403 = !DILocation(line: 758, column: 34, scope: !6400)
!6404 = !DILocation(line: 758, column: 38, scope: !6400)
!6405 = !DILocation(line: 758, column: 3, scope: !6400)
!6406 = !DILocation(line: 760, column: 7, scope: !6407)
!6407 = distinct !DILexicalBlock(scope: !6315, file: !3, line: 760, column: 6)
!6408 = !DILocation(line: 760, column: 13, scope: !6407)
!6409 = !DILocation(line: 760, column: 21, scope: !6407)
!6410 = !DILocation(line: 760, column: 28, scope: !6407)
!6411 = !DILocation(line: 760, column: 6, scope: !6315)
!6412 = !DILocation(line: 761, column: 3, scope: !6407)
!6413 = !DILocation(line: 763, column: 2, scope: !6315)
!6414 = !DILocation(line: 765, column: 17, scope: !6315)
!6415 = !DILocation(line: 765, column: 23, scope: !6315)
!6416 = !DILocation(line: 765, column: 2, scope: !6315)
!6417 = !DILabel(scope: !6315, name: "end", file: !3, line: 767)
!6418 = !DILocation(line: 767, column: 7, scope: !6315)
!6419 = !DILocation(line: 769, column: 23, scope: !6315)
!6420 = !DILocation(line: 769, column: 31, scope: !6315)
!6421 = !DILocation(line: 769, column: 2, scope: !6315)
!6422 = !DILocation(line: 770, column: 2, scope: !6315)
!6423 = !DILocation(line: 772, column: 6, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6315, file: !3, line: 772, column: 6)
!6425 = !DILocation(line: 772, column: 6, scope: !6315)
!6426 = !DILocation(line: 773, column: 9, scope: !6424)
!6427 = !DILocation(line: 773, column: 3, scope: !6424)
!6428 = !DILocation(line: 775, column: 9, scope: !6315)
!6429 = !DILocation(line: 775, column: 16, scope: !6315)
!6430 = !DILocation(line: 775, column: 22, scope: !6315)
!6431 = !DILocation(line: 775, column: 2, scope: !6315)
!6432 = !DILocation(line: 776, column: 1, scope: !6315)
!6433 = distinct !DISubprogram(name: "acpi_pci_link_remove", scope: !3, file: !3, line: 795, type: !4313, scopeLine: 796, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!6434 = !DILocalVariable(name: "device", arg: 1, scope: !6433, file: !3, line: 795, type: !162)
!6435 = !DILocation(line: 795, column: 54, scope: !6433)
!6436 = !DILocalVariable(name: "link", scope: !6433, file: !3, line: 797, type: !151)
!6437 = !DILocation(line: 797, column: 24, scope: !6433)
!6438 = !DILocation(line: 799, column: 26, scope: !6433)
!6439 = !DILocation(line: 799, column: 9, scope: !6433)
!6440 = !DILocation(line: 799, column: 7, scope: !6433)
!6441 = !DILocation(line: 801, column: 2, scope: !6433)
!6442 = !DILocation(line: 802, column: 12, scope: !6433)
!6443 = !DILocation(line: 802, column: 18, scope: !6433)
!6444 = !DILocation(line: 802, column: 2, scope: !6433)
!6445 = !DILocation(line: 803, column: 2, scope: !6433)
!6446 = !DILocation(line: 805, column: 8, scope: !6433)
!6447 = !DILocation(line: 805, column: 2, scope: !6433)
!6448 = !DILocation(line: 806, column: 1, scope: !6433)
!6449 = distinct !DISubprogram(name: "acpi_pci_link_get_possible", scope: !3, file: !3, line: 154, type: !4652, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!6450 = !DILocalVariable(name: "link", arg: 1, scope: !6449, file: !3, line: 154, type: !151)
!6451 = !DILocation(line: 154, column: 61, scope: !6449)
!6452 = !DILocalVariable(name: "status", scope: !6449, file: !3, line: 156, type: !4387)
!6453 = !DILocation(line: 156, column: 14, scope: !6449)
!6454 = !DILocation(line: 158, column: 31, scope: !6449)
!6455 = !DILocation(line: 158, column: 37, scope: !6449)
!6456 = !DILocation(line: 158, column: 45, scope: !6449)
!6457 = !DILocation(line: 159, column: 40, scope: !6449)
!6458 = !DILocation(line: 158, column: 11, scope: !6449)
!6459 = !DILocation(line: 158, column: 9, scope: !6449)
!6460 = !DILocation(line: 160, column: 6, scope: !6461)
!6461 = distinct !DILexicalBlock(scope: !6449, file: !3, line: 160, column: 6)
!6462 = !DILocation(line: 160, column: 6, scope: !6449)
!6463 = !DILocation(line: 161, column: 3, scope: !6464)
!6464 = distinct !DILexicalBlock(scope: !6465, file: !3, line: 161, column: 3)
!6465 = distinct !DILexicalBlock(scope: !6466, file: !3, line: 161, column: 3)
!6466 = distinct !DILexicalBlock(scope: !6461, file: !3, line: 160, column: 28)
!6467 = !DILocation(line: 161, column: 3, scope: !6465)
!6468 = !DILocation(line: 162, column: 3, scope: !6466)
!6469 = !DILocation(line: 169, column: 2, scope: !6449)
!6470 = !DILocation(line: 170, column: 1, scope: !6449)
!6471 = distinct !DISubprogram(name: "list_add_tail", scope: !6472, file: !6472, line: 98, type: !6473, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!6472 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!6473 = !DISubroutineType(types: !6474)
!6474 = !{null, !159, !159}
!6475 = !DILocalVariable(name: "new", arg: 1, scope: !6471, file: !6472, line: 98, type: !159)
!6476 = !DILocation(line: 98, column: 52, scope: !6471)
!6477 = !DILocalVariable(name: "head", arg: 2, scope: !6471, file: !6472, line: 98, type: !159)
!6478 = !DILocation(line: 98, column: 75, scope: !6471)
!6479 = !DILocation(line: 100, column: 13, scope: !6471)
!6480 = !DILocation(line: 100, column: 18, scope: !6471)
!6481 = !DILocation(line: 100, column: 24, scope: !6471)
!6482 = !DILocation(line: 100, column: 30, scope: !6471)
!6483 = !DILocation(line: 100, column: 2, scope: !6471)
!6484 = !DILocation(line: 101, column: 1, scope: !6471)
!6485 = distinct !DISubprogram(name: "acpi_pci_link_check_possible", scope: !3, file: !3, line: 84, type: !6075, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!6486 = !DILocalVariable(name: "resource", arg: 1, scope: !6485, file: !3, line: 84, type: !6077)
!6487 = !DILocation(line: 84, column: 71, scope: !6485)
!6488 = !DILocalVariable(name: "context", arg: 2, scope: !6485, file: !3, line: 85, type: !150)
!6489 = !DILocation(line: 85, column: 13, scope: !6485)
!6490 = !DILocalVariable(name: "link", scope: !6485, file: !3, line: 87, type: !151)
!6491 = !DILocation(line: 87, column: 24, scope: !6485)
!6492 = !DILocation(line: 87, column: 31, scope: !6485)
!6493 = !DILocalVariable(name: "i", scope: !6485, file: !3, line: 88, type: !407)
!6494 = !DILocation(line: 88, column: 6, scope: !6485)
!6495 = !DILocation(line: 90, column: 10, scope: !6485)
!6496 = !DILocation(line: 90, column: 20, scope: !6485)
!6497 = !DILocation(line: 90, column: 2, scope: !6485)
!6498 = !DILocation(line: 93, column: 3, scope: !6499)
!6499 = distinct !DILexicalBlock(scope: !6485, file: !3, line: 90, column: 26)
!6500 = !DILocalVariable(name: "p", scope: !6501, file: !3, line: 96, type: !6092)
!6501 = distinct !DILexicalBlock(scope: !6499, file: !3, line: 95, column: 3)
!6502 = !DILocation(line: 96, column: 30, scope: !6501)
!6503 = !DILocation(line: 96, column: 35, scope: !6501)
!6504 = !DILocation(line: 96, column: 45, scope: !6501)
!6505 = !DILocation(line: 96, column: 50, scope: !6501)
!6506 = !DILocation(line: 97, column: 9, scope: !6507)
!6507 = distinct !DILexicalBlock(scope: !6501, file: !3, line: 97, column: 8)
!6508 = !DILocation(line: 97, column: 11, scope: !6507)
!6509 = !DILocation(line: 97, column: 15, scope: !6507)
!6510 = !DILocation(line: 97, column: 18, scope: !6507)
!6511 = !DILocation(line: 97, column: 8, scope: !6501)
!6512 = !DILocation(line: 100, column: 5, scope: !6513)
!6513 = distinct !DILexicalBlock(scope: !6507, file: !3, line: 97, column: 35)
!6514 = !DILocation(line: 102, column: 11, scope: !6515)
!6515 = distinct !DILexicalBlock(scope: !6501, file: !3, line: 102, column: 4)
!6516 = !DILocation(line: 102, column: 9, scope: !6515)
!6517 = !DILocation(line: 103, column: 10, scope: !6518)
!6518 = distinct !DILexicalBlock(scope: !6515, file: !3, line: 102, column: 4)
!6519 = !DILocation(line: 103, column: 14, scope: !6518)
!6520 = !DILocation(line: 103, column: 17, scope: !6518)
!6521 = !DILocation(line: 103, column: 12, scope: !6518)
!6522 = !DILocation(line: 104, column: 10, scope: !6518)
!6523 = !DILocation(line: 104, column: 13, scope: !6518)
!6524 = !DILocation(line: 104, column: 15, scope: !6518)
!6525 = !DILocation(line: 0, scope: !6518)
!6526 = !DILocation(line: 102, column: 4, scope: !6515)
!6527 = !DILocation(line: 105, column: 10, scope: !6528)
!6528 = distinct !DILexicalBlock(scope: !6529, file: !3, line: 105, column: 9)
!6529 = distinct !DILexicalBlock(scope: !6518, file: !3, line: 104, column: 51)
!6530 = !DILocation(line: 105, column: 13, scope: !6528)
!6531 = !DILocation(line: 105, column: 24, scope: !6528)
!6532 = !DILocation(line: 105, column: 9, scope: !6529)
!6533 = !DILocation(line: 108, column: 13, scope: !6534)
!6534 = distinct !DILexicalBlock(scope: !6528, file: !3, line: 105, column: 28)
!6535 = !DILocation(line: 108, column: 16, scope: !6534)
!6536 = !DILocation(line: 108, column: 27, scope: !6534)
!6537 = !DILocation(line: 106, column: 6, scope: !6534)
!6538 = !DILocation(line: 109, column: 6, scope: !6534)
!6539 = !DILocation(line: 111, column: 29, scope: !6529)
!6540 = !DILocation(line: 111, column: 32, scope: !6529)
!6541 = !DILocation(line: 111, column: 43, scope: !6529)
!6542 = !DILocation(line: 111, column: 5, scope: !6529)
!6543 = !DILocation(line: 111, column: 11, scope: !6529)
!6544 = !DILocation(line: 111, column: 15, scope: !6529)
!6545 = !DILocation(line: 111, column: 24, scope: !6529)
!6546 = !DILocation(line: 111, column: 27, scope: !6529)
!6547 = !DILocation(line: 112, column: 5, scope: !6529)
!6548 = !DILocation(line: 112, column: 11, scope: !6529)
!6549 = !DILocation(line: 112, column: 15, scope: !6529)
!6550 = !DILocation(line: 112, column: 29, scope: !6529)
!6551 = !DILocation(line: 113, column: 4, scope: !6529)
!6552 = !DILocation(line: 104, column: 47, scope: !6518)
!6553 = !DILocation(line: 102, column: 4, scope: !6518)
!6554 = distinct !{!6554, !6526, !6555}
!6555 = !DILocation(line: 113, column: 4, scope: !6515)
!6556 = !DILocation(line: 114, column: 27, scope: !6501)
!6557 = !DILocation(line: 114, column: 30, scope: !6501)
!6558 = !DILocation(line: 114, column: 4, scope: !6501)
!6559 = !DILocation(line: 114, column: 10, scope: !6501)
!6560 = !DILocation(line: 114, column: 14, scope: !6501)
!6561 = !DILocation(line: 114, column: 25, scope: !6501)
!6562 = !DILocation(line: 115, column: 25, scope: !6501)
!6563 = !DILocation(line: 115, column: 28, scope: !6501)
!6564 = !DILocation(line: 115, column: 4, scope: !6501)
!6565 = !DILocation(line: 115, column: 10, scope: !6501)
!6566 = !DILocation(line: 115, column: 14, scope: !6501)
!6567 = !DILocation(line: 115, column: 23, scope: !6501)
!6568 = !DILocation(line: 116, column: 4, scope: !6501)
!6569 = !DILocation(line: 116, column: 10, scope: !6501)
!6570 = !DILocation(line: 116, column: 14, scope: !6501)
!6571 = !DILocation(line: 116, column: 28, scope: !6501)
!6572 = !DILocation(line: 117, column: 4, scope: !6501)
!6573 = !DILocalVariable(name: "p", scope: !6574, file: !3, line: 121, type: !6112)
!6574 = distinct !DILexicalBlock(scope: !6499, file: !3, line: 120, column: 3)
!6575 = !DILocation(line: 121, column: 39, scope: !6574)
!6576 = !DILocation(line: 122, column: 9, scope: !6574)
!6577 = !DILocation(line: 122, column: 19, scope: !6574)
!6578 = !DILocation(line: 122, column: 24, scope: !6574)
!6579 = !DILocation(line: 123, column: 9, scope: !6580)
!6580 = distinct !DILexicalBlock(scope: !6574, file: !3, line: 123, column: 8)
!6581 = !DILocation(line: 123, column: 11, scope: !6580)
!6582 = !DILocation(line: 123, column: 15, scope: !6580)
!6583 = !DILocation(line: 123, column: 18, scope: !6580)
!6584 = !DILocation(line: 123, column: 8, scope: !6574)
!6585 = !DILocation(line: 124, column: 5, scope: !6586)
!6586 = distinct !DILexicalBlock(scope: !6580, file: !3, line: 123, column: 35)
!6587 = !DILocation(line: 126, column: 5, scope: !6586)
!6588 = !DILocation(line: 128, column: 11, scope: !6589)
!6589 = distinct !DILexicalBlock(scope: !6574, file: !3, line: 128, column: 4)
!6590 = !DILocation(line: 128, column: 9, scope: !6589)
!6591 = !DILocation(line: 129, column: 10, scope: !6592)
!6592 = distinct !DILexicalBlock(scope: !6589, file: !3, line: 128, column: 4)
!6593 = !DILocation(line: 129, column: 14, scope: !6592)
!6594 = !DILocation(line: 129, column: 17, scope: !6592)
!6595 = !DILocation(line: 129, column: 12, scope: !6592)
!6596 = !DILocation(line: 130, column: 10, scope: !6592)
!6597 = !DILocation(line: 130, column: 13, scope: !6592)
!6598 = !DILocation(line: 130, column: 15, scope: !6592)
!6599 = !DILocation(line: 0, scope: !6592)
!6600 = !DILocation(line: 128, column: 4, scope: !6589)
!6601 = !DILocation(line: 131, column: 10, scope: !6602)
!6602 = distinct !DILexicalBlock(scope: !6603, file: !3, line: 131, column: 9)
!6603 = distinct !DILexicalBlock(scope: !6592, file: !3, line: 130, column: 51)
!6604 = !DILocation(line: 131, column: 13, scope: !6602)
!6605 = !DILocation(line: 131, column: 24, scope: !6602)
!6606 = !DILocation(line: 131, column: 9, scope: !6603)
!6607 = !DILocation(line: 134, column: 13, scope: !6608)
!6608 = distinct !DILexicalBlock(scope: !6602, file: !3, line: 131, column: 28)
!6609 = !DILocation(line: 134, column: 16, scope: !6608)
!6610 = !DILocation(line: 134, column: 27, scope: !6608)
!6611 = !DILocation(line: 132, column: 6, scope: !6608)
!6612 = !DILocation(line: 135, column: 6, scope: !6608)
!6613 = !DILocation(line: 137, column: 29, scope: !6603)
!6614 = !DILocation(line: 137, column: 32, scope: !6603)
!6615 = !DILocation(line: 137, column: 43, scope: !6603)
!6616 = !DILocation(line: 137, column: 5, scope: !6603)
!6617 = !DILocation(line: 137, column: 11, scope: !6603)
!6618 = !DILocation(line: 137, column: 15, scope: !6603)
!6619 = !DILocation(line: 137, column: 24, scope: !6603)
!6620 = !DILocation(line: 137, column: 27, scope: !6603)
!6621 = !DILocation(line: 138, column: 5, scope: !6603)
!6622 = !DILocation(line: 138, column: 11, scope: !6603)
!6623 = !DILocation(line: 138, column: 15, scope: !6603)
!6624 = !DILocation(line: 138, column: 29, scope: !6603)
!6625 = !DILocation(line: 139, column: 4, scope: !6603)
!6626 = !DILocation(line: 130, column: 47, scope: !6592)
!6627 = !DILocation(line: 128, column: 4, scope: !6592)
!6628 = distinct !{!6628, !6600, !6629}
!6629 = !DILocation(line: 139, column: 4, scope: !6589)
!6630 = !DILocation(line: 140, column: 27, scope: !6574)
!6631 = !DILocation(line: 140, column: 30, scope: !6574)
!6632 = !DILocation(line: 140, column: 4, scope: !6574)
!6633 = !DILocation(line: 140, column: 10, scope: !6574)
!6634 = !DILocation(line: 140, column: 14, scope: !6574)
!6635 = !DILocation(line: 140, column: 25, scope: !6574)
!6636 = !DILocation(line: 141, column: 25, scope: !6574)
!6637 = !DILocation(line: 141, column: 28, scope: !6574)
!6638 = !DILocation(line: 141, column: 4, scope: !6574)
!6639 = !DILocation(line: 141, column: 10, scope: !6574)
!6640 = !DILocation(line: 141, column: 14, scope: !6574)
!6641 = !DILocation(line: 141, column: 23, scope: !6574)
!6642 = !DILocation(line: 142, column: 4, scope: !6574)
!6643 = !DILocation(line: 142, column: 10, scope: !6574)
!6644 = !DILocation(line: 142, column: 14, scope: !6574)
!6645 = !DILocation(line: 142, column: 28, scope: !6574)
!6646 = !DILocation(line: 143, column: 4, scope: !6574)
!6647 = !DILocation(line: 147, column: 10, scope: !6499)
!6648 = !DILocation(line: 147, column: 20, scope: !6499)
!6649 = !DILocation(line: 146, column: 3, scope: !6499)
!6650 = !DILocation(line: 148, column: 3, scope: !6499)
!6651 = !DILocation(line: 151, column: 2, scope: !6485)
!6652 = !DILocation(line: 152, column: 1, scope: !6485)
!6653 = distinct !DISubprogram(name: "__list_add", scope: !6472, file: !6472, line: 63, type: !6654, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!6654 = !DISubroutineType(types: !6655)
!6655 = !{null, !159, !159, !159}
!6656 = !DILocalVariable(name: "new", arg: 1, scope: !6653, file: !6472, line: 63, type: !159)
!6657 = !DILocation(line: 63, column: 49, scope: !6653)
!6658 = !DILocalVariable(name: "prev", arg: 2, scope: !6653, file: !6472, line: 64, type: !159)
!6659 = !DILocation(line: 64, column: 28, scope: !6653)
!6660 = !DILocalVariable(name: "next", arg: 3, scope: !6653, file: !6472, line: 65, type: !159)
!6661 = !DILocation(line: 65, column: 28, scope: !6653)
!6662 = !DILocation(line: 67, column: 24, scope: !6663)
!6663 = distinct !DILexicalBlock(scope: !6653, file: !6472, line: 67, column: 6)
!6664 = !DILocation(line: 67, column: 29, scope: !6663)
!6665 = !DILocation(line: 67, column: 35, scope: !6663)
!6666 = !DILocation(line: 67, column: 7, scope: !6663)
!6667 = !DILocation(line: 67, column: 6, scope: !6653)
!6668 = !DILocation(line: 68, column: 3, scope: !6663)
!6669 = !DILocation(line: 70, column: 15, scope: !6653)
!6670 = !DILocation(line: 70, column: 2, scope: !6653)
!6671 = !DILocation(line: 70, column: 8, scope: !6653)
!6672 = !DILocation(line: 70, column: 13, scope: !6653)
!6673 = !DILocation(line: 71, column: 14, scope: !6653)
!6674 = !DILocation(line: 71, column: 2, scope: !6653)
!6675 = !DILocation(line: 71, column: 7, scope: !6653)
!6676 = !DILocation(line: 71, column: 12, scope: !6653)
!6677 = !DILocation(line: 72, column: 14, scope: !6653)
!6678 = !DILocation(line: 72, column: 2, scope: !6653)
!6679 = !DILocation(line: 72, column: 7, scope: !6653)
!6680 = !DILocation(line: 72, column: 12, scope: !6653)
!6681 = !DILocation(line: 73, column: 2, scope: !6653)
!6682 = !DILocation(line: 73, column: 2, scope: !6683)
!6683 = distinct !DILexicalBlock(scope: !6653, file: !6472, line: 73, column: 2)
!6684 = !DILocation(line: 73, column: 2, scope: !6685)
!6685 = distinct !DILexicalBlock(scope: !6683, file: !6472, line: 73, column: 2)
!6686 = !DILocation(line: 73, column: 2, scope: !6687)
!6687 = distinct !DILexicalBlock(scope: !6683, file: !6472, line: 73, column: 2)
!6688 = !DILocation(line: 74, column: 1, scope: !6653)
!6689 = distinct !DISubprogram(name: "__list_add_valid", scope: !6472, file: !6472, line: 45, type: !6690, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!6690 = !DISubroutineType(types: !6691)
!6691 = !{!194, !159, !159, !159}
!6692 = !DILocalVariable(name: "new", arg: 1, scope: !6689, file: !6472, line: 45, type: !159)
!6693 = !DILocation(line: 45, column: 55, scope: !6689)
!6694 = !DILocalVariable(name: "prev", arg: 2, scope: !6689, file: !6472, line: 46, type: !159)
!6695 = !DILocation(line: 46, column: 23, scope: !6689)
!6696 = !DILocalVariable(name: "next", arg: 3, scope: !6689, file: !6472, line: 47, type: !159)
!6697 = !DILocation(line: 47, column: 23, scope: !6689)
!6698 = !DILocation(line: 49, column: 2, scope: !6689)
!6699 = distinct !DISubprogram(name: "list_del", scope: !6472, file: !6472, line: 144, type: !6700, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!6700 = !DISubroutineType(types: !6701)
!6701 = !{null, !159}
!6702 = !DILocalVariable(name: "entry", arg: 1, scope: !6699, file: !6472, line: 144, type: !159)
!6703 = !DILocation(line: 144, column: 47, scope: !6699)
!6704 = !DILocation(line: 146, column: 19, scope: !6699)
!6705 = !DILocation(line: 146, column: 2, scope: !6699)
!6706 = !DILocation(line: 147, column: 2, scope: !6699)
!6707 = !DILocation(line: 147, column: 9, scope: !6699)
!6708 = !DILocation(line: 147, column: 14, scope: !6699)
!6709 = !DILocation(line: 148, column: 2, scope: !6699)
!6710 = !DILocation(line: 148, column: 9, scope: !6699)
!6711 = !DILocation(line: 148, column: 14, scope: !6699)
!6712 = !DILocation(line: 149, column: 1, scope: !6699)
!6713 = distinct !DISubprogram(name: "__list_del_entry", scope: !6472, file: !6472, line: 130, type: !6700, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!6714 = !DILocalVariable(name: "entry", arg: 1, scope: !6713, file: !6472, line: 130, type: !159)
!6715 = !DILocation(line: 130, column: 55, scope: !6713)
!6716 = !DILocation(line: 132, column: 30, scope: !6717)
!6717 = distinct !DILexicalBlock(scope: !6713, file: !6472, line: 132, column: 6)
!6718 = !DILocation(line: 132, column: 7, scope: !6717)
!6719 = !DILocation(line: 132, column: 6, scope: !6713)
!6720 = !DILocation(line: 133, column: 3, scope: !6717)
!6721 = !DILocation(line: 135, column: 13, scope: !6713)
!6722 = !DILocation(line: 135, column: 20, scope: !6713)
!6723 = !DILocation(line: 135, column: 26, scope: !6713)
!6724 = !DILocation(line: 135, column: 33, scope: !6713)
!6725 = !DILocation(line: 135, column: 2, scope: !6713)
!6726 = !DILocation(line: 136, column: 1, scope: !6713)
!6727 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6472, file: !6472, line: 51, type: !6728, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!6728 = !DISubroutineType(types: !6729)
!6729 = !{!194, !159}
!6730 = !DILocalVariable(name: "entry", arg: 1, scope: !6727, file: !6472, line: 51, type: !159)
!6731 = !DILocation(line: 51, column: 61, scope: !6727)
!6732 = !DILocation(line: 53, column: 2, scope: !6727)
!6733 = distinct !DISubprogram(name: "__list_del", scope: !6472, file: !6472, line: 110, type: !6473, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !239)
!6734 = !DILocalVariable(name: "prev", arg: 1, scope: !6733, file: !6472, line: 110, type: !159)
!6735 = !DILocation(line: 110, column: 50, scope: !6733)
!6736 = !DILocalVariable(name: "next", arg: 2, scope: !6733, file: !6472, line: 110, type: !159)
!6737 = !DILocation(line: 110, column: 75, scope: !6733)
!6738 = !DILocation(line: 112, column: 15, scope: !6733)
!6739 = !DILocation(line: 112, column: 2, scope: !6733)
!6740 = !DILocation(line: 112, column: 8, scope: !6733)
!6741 = !DILocation(line: 112, column: 13, scope: !6733)
!6742 = !DILocation(line: 113, column: 2, scope: !6733)
!6743 = !DILocation(line: 113, column: 2, scope: !6744)
!6744 = distinct !DILexicalBlock(scope: !6733, file: !6472, line: 113, column: 2)
!6745 = !DILocation(line: 113, column: 2, scope: !6746)
!6746 = distinct !DILexicalBlock(scope: !6744, file: !6472, line: 113, column: 2)
!6747 = !DILocation(line: 113, column: 2, scope: !6748)
!6748 = distinct !DILexicalBlock(scope: !6744, file: !6472, line: 113, column: 2)
!6749 = !DILocation(line: 114, column: 1, scope: !6733)
