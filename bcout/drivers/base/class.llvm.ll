; ModuleID = '../bcout/drivers/base/class.llvm.bc'
source_filename = "drivers/base/class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.page = type { i64, %union.anon.3, %union.anon.53, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.53 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.54, i32 }
%union.anon.54 = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.block_device = type { i32, i32, %struct.inode*, %struct.super_block*, %struct.mutex, i8*, i8*, i32, i8, %struct.list_head, %struct.block_device*, i8, %struct.hd_struct*, i32, %struct.spinlock, %struct.gendisk*, %struct.backing_dev_info*, i32, %struct.mutex }
%struct.hd_struct = type { i64, i64, i64, %struct.disk_stats*, %struct.percpu_ref, %struct.device, %struct.kobject*, i32, i32, %struct.partition_meta_info*, %struct.rcu_work }
%struct.disk_stats = type opaque
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, %struct.device_driver*, i8*, %struct.device*, i8 }
%struct.klist = type { %struct.spinlock, %struct.list_head, void (%struct.klist_node*)*, void (%struct.klist_node*)* }
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.device_type = type { i8*, %struct.attribute_group**, {}*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.kgid_t = type { i32 }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, {}*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type { %struct.kset, %struct.kset*, %struct.list_head, %struct.mutex, %struct.kset*, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, %struct.bus_type*, %struct.kset, %struct.class* }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, %struct.module_kobject*, %struct.device_driver* }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs*, %struct.completion* }
%struct.module_param_attrs = type opaque
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [16 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, %struct.workqueue_struct* }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.disk_part_tbl*, %struct.hd_struct, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.rw_semaphore, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, %struct.kobject, i32, %struct.badblocks*, %struct.lockdep_map }
%struct.disk_part_tbl = type { %struct.callback_head, i32, %struct.hd_struct*, [0 x %struct.hd_struct*] }
%struct.block_device_operations = type opaque
%struct.request_queue = type opaque
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.backing_dev_info = type opaque
%struct.mtd_info = type opaque
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
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
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
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
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.32, %union.anon.33, i32 }
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
%struct.vm_struct = type opaque
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
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.kmem_cache = type opaque
%struct.class_attribute = type { %struct.attribute, i64 (%struct.class*, %struct.class_attribute*, i8*)*, i64 (%struct.class*, %struct.class_attribute*, i8*, i64)* }
%struct.class_dev_iter = type { %struct.klist_iter, %struct.device_type* }
%struct.klist_iter = type { %struct.klist*, %struct.klist_node* }
%struct.class_interface = type { %struct.list_head, %struct.class*, i32 (%struct.device*, %struct.class_interface*)*, void (%struct.device*, %struct.class_interface*)* }
%struct.class_attribute_string = type { %struct.class_attribute, i8* }
%struct.class_compat = type { %struct.kobject* }

@.str = private unnamed_addr constant [13 x i8] c"subsys mutex\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@sysfs_dev_char_kobj = external dso_local global %struct.kobject*, align 8
@class_kset = internal global %struct.kset* null, align 8, !dbg !0
@class_ktype = internal global %struct.kobj_type { void (%struct.kobject*)* @class_release, %struct.sysfs_ops* @class_sysfs_ops, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* @class_child_ns_type, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8, !dbg !3796
@.str.2 = private unnamed_addr constant [51 x i8] c"%s called for class '%s' before it was initialized\00", align 1
@__func__.class_for_each_device = private unnamed_addr constant [22 x i8] c"class_for_each_device\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"drivers/base/class.c\00", align 1
@__func__.class_find_device = private unnamed_addr constant [18 x i8] c"class_find_device\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@class_sysfs_ops = internal constant %struct.sysfs_ops { i64 (%struct.kobject*, %struct.attribute*, i8*)* @class_attr_show, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* @class_attr_store }, align 8, !dbg !3798
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.7 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @class_create_file_ns(%struct.class* %cls, %struct.class_attribute* %attr, i8* %ns) #0 !dbg !3805 {
entry:
  %cls.addr = alloca %struct.class*, align 8
  %attr.addr = alloca %struct.class_attribute*, align 8
  %ns.addr = alloca i8*, align 8
  %error = alloca i32, align 4
  store %struct.class* %cls, %struct.class** %cls.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %cls.addr, metadata !3810, metadata !DIExpression()), !dbg !3811
  store %struct.class_attribute* %attr, %struct.class_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class_attribute** %attr.addr, metadata !3812, metadata !DIExpression()), !dbg !3813
  store i8* %ns, i8** %ns.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ns.addr, metadata !3814, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.declare(metadata i32* %error, metadata !3816, metadata !DIExpression()), !dbg !3817
  %0 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !3818
  %tobool = icmp ne %struct.class* %0, null, !dbg !3818
  br i1 %tobool, label %if.then, label %if.else, !dbg !3820

if.then:                                          ; preds = %entry
  %1 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !3821
  %p = getelementptr inbounds %struct.class, %struct.class* %1, i32 0, i32 14, !dbg !3822
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !3822
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %2, i32 0, i32 0, !dbg !3823
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %subsys, i32 0, i32 2, !dbg !3824
  %3 = load %struct.class_attribute*, %struct.class_attribute** %attr.addr, align 8, !dbg !3825
  %attr1 = getelementptr inbounds %struct.class_attribute, %struct.class_attribute* %3, i32 0, i32 0, !dbg !3826
  %4 = load i8*, i8** %ns.addr, align 8, !dbg !3827
  %call = call i32 @sysfs_create_file_ns(%struct.kobject* %kobj, %struct.attribute* %attr1, i8* %4) #7, !dbg !3828
  store i32 %call, i32* %error, align 4, !dbg !3829
  br label %if.end, !dbg !3830

if.else:                                          ; preds = %entry
  store i32 -22, i32* %error, align 4, !dbg !3831
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %error, align 4, !dbg !3832
  ret i32 %5, !dbg !3833
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_file_ns(%struct.kobject*, %struct.attribute*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @class_remove_file_ns(%struct.class* %cls, %struct.class_attribute* %attr, i8* %ns) #0 !dbg !3834 {
entry:
  %cls.addr = alloca %struct.class*, align 8
  %attr.addr = alloca %struct.class_attribute*, align 8
  %ns.addr = alloca i8*, align 8
  store %struct.class* %cls, %struct.class** %cls.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %cls.addr, metadata !3837, metadata !DIExpression()), !dbg !3838
  store %struct.class_attribute* %attr, %struct.class_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class_attribute** %attr.addr, metadata !3839, metadata !DIExpression()), !dbg !3840
  store i8* %ns, i8** %ns.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ns.addr, metadata !3841, metadata !DIExpression()), !dbg !3842
  %0 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !3843
  %tobool = icmp ne %struct.class* %0, null, !dbg !3843
  br i1 %tobool, label %if.then, label %if.end, !dbg !3845

if.then:                                          ; preds = %entry
  %1 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !3846
  %p = getelementptr inbounds %struct.class, %struct.class* %1, i32 0, i32 14, !dbg !3847
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !3847
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %2, i32 0, i32 0, !dbg !3848
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %subsys, i32 0, i32 2, !dbg !3849
  %3 = load %struct.class_attribute*, %struct.class_attribute** %attr.addr, align 8, !dbg !3850
  %attr1 = getelementptr inbounds %struct.class_attribute, %struct.class_attribute* %3, i32 0, i32 0, !dbg !3851
  %4 = load i8*, i8** %ns.addr, align 8, !dbg !3852
  call void @sysfs_remove_file_ns(%struct.kobject* %kobj, %struct.attribute* %attr1, i8* %4) #7, !dbg !3853
  br label %if.end, !dbg !3853

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3854
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_file_ns(%struct.kobject*, %struct.attribute*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__class_register(%struct.class* %cls, %struct.lock_class_key* %key) #0 !dbg !3855 {
entry:
  %retval = alloca i32, align 4
  %cls.addr = alloca %struct.class*, align 8
  %key.addr = alloca %struct.lock_class_key*, align 8
  %cp = alloca %struct.subsys_private*, align 8
  %error = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.class* %cls, %struct.class** %cls.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %cls.addr, metadata !3859, metadata !DIExpression()), !dbg !3860
  store %struct.lock_class_key* %key, %struct.lock_class_key** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lock_class_key** %key.addr, metadata !3861, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.declare(metadata %struct.subsys_private** %cp, metadata !3863, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.declare(metadata i32* %error, metadata !3865, metadata !DIExpression()), !dbg !3866
  store i32 0, i32* %tmp, align 4, !dbg !3867
  %0 = load i32, i32* %tmp, align 4, !dbg !3870
  %call = call i8* @kzalloc(i64 360, i32 3264) #7, !dbg !3871
  %1 = bitcast i8* %call to %struct.subsys_private*, !dbg !3871
  store %struct.subsys_private* %1, %struct.subsys_private** %cp, align 8, !dbg !3872
  %2 = load %struct.subsys_private*, %struct.subsys_private** %cp, align 8, !dbg !3873
  %tobool = icmp ne %struct.subsys_private* %2, null, !dbg !3873
  br i1 %tobool, label %if.end, label %if.then, !dbg !3875

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !3876
  br label %return, !dbg !3876

if.end:                                           ; preds = %entry
  %3 = load %struct.subsys_private*, %struct.subsys_private** %cp, align 8, !dbg !3877
  %klist_devices = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %3, i32 0, i32 5, !dbg !3878
  call void @klist_init(%struct.klist* %klist_devices, void (%struct.klist_node*)* @klist_class_dev_get, void (%struct.klist_node*)* @klist_class_dev_put) #7, !dbg !3879
  %4 = load %struct.subsys_private*, %struct.subsys_private** %cp, align 8, !dbg !3880
  %interfaces = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %4, i32 0, i32 2, !dbg !3881
  call void @INIT_LIST_HEAD(%struct.list_head* %interfaces) #7, !dbg !3882
  %5 = load %struct.subsys_private*, %struct.subsys_private** %cp, align 8, !dbg !3883
  %glue_dirs = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %5, i32 0, i32 10, !dbg !3884
  call void @kset_init(%struct.kset* %glue_dirs) #7, !dbg !3885
  %6 = load %struct.subsys_private*, %struct.subsys_private** %cp, align 8, !dbg !3886
  %mutex = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %6, i32 0, i32 3, !dbg !3887
  %7 = load %struct.lock_class_key*, %struct.lock_class_key** %key.addr, align 8, !dbg !3888
  call void @__mutex_init(%struct.mutex* %mutex, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* %7) #7, !dbg !3889
  %8 = load %struct.subsys_private*, %struct.subsys_private** %cp, align 8, !dbg !3890
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %8, i32 0, i32 0, !dbg !3891
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %subsys, i32 0, i32 2, !dbg !3892
  %9 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !3893
  %name = getelementptr inbounds %struct.class, %struct.class* %9, i32 0, i32 0, !dbg !3894
  %10 = load i8*, i8** %name, align 8, !dbg !3894
  %call1 = call i32 (%struct.kobject*, i8*, ...) @kobject_set_name(%struct.kobject* %kobj, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %10) #7, !dbg !3895
  store i32 %call1, i32* %error, align 4, !dbg !3896
  %11 = load i32, i32* %error, align 4, !dbg !3897
  %tobool2 = icmp ne i32 %11, 0, !dbg !3897
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3899

if.then3:                                         ; preds = %if.end
  %12 = load %struct.subsys_private*, %struct.subsys_private** %cp, align 8, !dbg !3900
  %13 = bitcast %struct.subsys_private* %12 to i8*, !dbg !3900
  call void @kfree(i8* %13) #7, !dbg !3902
  %14 = load i32, i32* %error, align 4, !dbg !3903
  store i32 %14, i32* %retval, align 4, !dbg !3904
  br label %return, !dbg !3904

if.end4:                                          ; preds = %if.end
  %15 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !3905
  %dev_kobj = getelementptr inbounds %struct.class, %struct.class* %15, i32 0, i32 4, !dbg !3907
  %16 = load %struct.kobject*, %struct.kobject** %dev_kobj, align 8, !dbg !3907
  %tobool5 = icmp ne %struct.kobject* %16, null, !dbg !3905
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !3908

if.then6:                                         ; preds = %if.end4
  %17 = load %struct.kobject*, %struct.kobject** @sysfs_dev_char_kobj, align 8, !dbg !3909
  %18 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !3910
  %dev_kobj7 = getelementptr inbounds %struct.class, %struct.class* %18, i32 0, i32 4, !dbg !3911
  store %struct.kobject* %17, %struct.kobject** %dev_kobj7, align 8, !dbg !3912
  br label %if.end8, !dbg !3910

if.end8:                                          ; preds = %if.then6, %if.end4
  %19 = load %struct.kset*, %struct.kset** @class_kset, align 8, !dbg !3913
  %20 = load %struct.subsys_private*, %struct.subsys_private** %cp, align 8, !dbg !3915
  %subsys9 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %20, i32 0, i32 0, !dbg !3916
  %kobj10 = getelementptr inbounds %struct.kset, %struct.kset* %subsys9, i32 0, i32 2, !dbg !3917
  %kset = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj10, i32 0, i32 3, !dbg !3918
  store %struct.kset* %19, %struct.kset** %kset, align 8, !dbg !3919
  %21 = load %struct.subsys_private*, %struct.subsys_private** %cp, align 8, !dbg !3920
  %subsys11 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %21, i32 0, i32 0, !dbg !3921
  %kobj12 = getelementptr inbounds %struct.kset, %struct.kset* %subsys11, i32 0, i32 2, !dbg !3922
  %ktype = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj12, i32 0, i32 4, !dbg !3923
  store %struct.kobj_type* @class_ktype, %struct.kobj_type** %ktype, align 8, !dbg !3924
  %22 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !3925
  %23 = load %struct.subsys_private*, %struct.subsys_private** %cp, align 8, !dbg !3926
  %class = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %23, i32 0, i32 11, !dbg !3927
  store %struct.class* %22, %struct.class** %class, align 8, !dbg !3928
  %24 = load %struct.subsys_private*, %struct.subsys_private** %cp, align 8, !dbg !3929
  %25 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !3930
  %p = getelementptr inbounds %struct.class, %struct.class* %25, i32 0, i32 14, !dbg !3931
  store %struct.subsys_private* %24, %struct.subsys_private** %p, align 8, !dbg !3932
  %26 = load %struct.subsys_private*, %struct.subsys_private** %cp, align 8, !dbg !3933
  %subsys13 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %26, i32 0, i32 0, !dbg !3934
  %call14 = call i32 @kset_register(%struct.kset* %subsys13) #7, !dbg !3935
  store i32 %call14, i32* %error, align 4, !dbg !3936
  %27 = load i32, i32* %error, align 4, !dbg !3937
  %tobool15 = icmp ne i32 %27, 0, !dbg !3937
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !3939

if.then16:                                        ; preds = %if.end8
  %28 = load %struct.subsys_private*, %struct.subsys_private** %cp, align 8, !dbg !3940
  %29 = bitcast %struct.subsys_private* %28 to i8*, !dbg !3940
  call void @kfree(i8* %29) #7, !dbg !3942
  %30 = load i32, i32* %error, align 4, !dbg !3943
  store i32 %30, i32* %retval, align 4, !dbg !3944
  br label %return, !dbg !3944

if.end17:                                         ; preds = %if.end8
  %31 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !3945
  %call18 = call %struct.class* @class_get(%struct.class* %31) #7, !dbg !3946
  %32 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !3947
  %class_groups = getelementptr inbounds %struct.class, %struct.class* %32, i32 0, i32 2, !dbg !3948
  %33 = load %struct.attribute_group**, %struct.attribute_group*** %class_groups, align 8, !dbg !3948
  %call19 = call i32 @class_add_groups(%struct.class* %call18, %struct.attribute_group** %33) #7, !dbg !3949
  store i32 %call19, i32* %error, align 4, !dbg !3950
  %34 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !3951
  call void @class_put(%struct.class* %34) #7, !dbg !3952
  %35 = load i32, i32* %error, align 4, !dbg !3953
  store i32 %35, i32* %retval, align 4, !dbg !3954
  br label %return, !dbg !3954

return:                                           ; preds = %if.end17, %if.then16, %if.then3, %if.then
  %36 = load i32, i32* %retval, align 4, !dbg !3955
  ret i32 %36, !dbg !3955
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3956 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3959, metadata !DIExpression()), !dbg !3963
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3969, metadata !DIExpression()), !dbg !3970
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3971, metadata !DIExpression()), !dbg !3972
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3973, metadata !DIExpression()), !dbg !3974
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3975, metadata !DIExpression()), !dbg !3979
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3981, metadata !DIExpression()), !dbg !3985
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3987, metadata !DIExpression()), !dbg !3991
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3996, metadata !DIExpression()), !dbg !3997
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3998, metadata !DIExpression()), !dbg !3999
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4000, metadata !DIExpression()), !dbg !4001
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4002, metadata !DIExpression()), !dbg !4003
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4004, metadata !DIExpression()), !dbg !4005
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4006, metadata !DIExpression()), !dbg !4007
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4008, metadata !DIExpression()), !dbg !4009
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4010, metadata !DIExpression()), !dbg !4011
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4012, metadata !DIExpression()), !dbg !4013
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4014, metadata !DIExpression()), !dbg !4015
  %0 = load i64, i64* %size.addr, align 8, !dbg !4016
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4017
  %or = or i32 %1, 256, !dbg !4018
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4019
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !4020
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4021

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4022
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4023
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4024

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4025
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4026
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4027
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !4028
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4005
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4029
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4030
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4031
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4032
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4033
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4034
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !4035
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4035
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4035
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4035
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !4035
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4036
  br label %kmalloc.exit, !dbg !4036

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4037
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4038
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4038
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4040

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4041
  br label %kmalloc_index.exit.i, !dbg !4041

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4042
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4044
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4045

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4046
  br label %kmalloc_index.exit.i, !dbg !4046

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4047
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4049
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4050

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4051
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4052
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4053

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4054
  br label %kmalloc_index.exit.i, !dbg !4054

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4055
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4057
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4058

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4059
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4060
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4061

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4062
  br label %kmalloc_index.exit.i, !dbg !4062

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4063
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4065
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4066

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4067
  br label %kmalloc_index.exit.i, !dbg !4067

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4068
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4070
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4071

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4072
  br label %kmalloc_index.exit.i, !dbg !4072

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4073
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4075
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4076

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4077
  br label %kmalloc_index.exit.i, !dbg !4077

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4078
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4080
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4081

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4082
  br label %kmalloc_index.exit.i, !dbg !4082

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4083
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4085
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4086

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4087
  br label %kmalloc_index.exit.i, !dbg !4087

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4088
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4090
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4091

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4092
  br label %kmalloc_index.exit.i, !dbg !4092

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4093
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4095
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4096

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4097
  br label %kmalloc_index.exit.i, !dbg !4097

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4098
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4100
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4101

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4102
  br label %kmalloc_index.exit.i, !dbg !4102

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4103
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4105
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4106

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4107
  br label %kmalloc_index.exit.i, !dbg !4107

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4108
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4110
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4111

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4112
  br label %kmalloc_index.exit.i, !dbg !4112

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4113
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4115
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4116

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4117
  br label %kmalloc_index.exit.i, !dbg !4117

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4118
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4120
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4121

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4122
  br label %kmalloc_index.exit.i, !dbg !4122

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4123
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4125
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4126

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4127
  br label %kmalloc_index.exit.i, !dbg !4127

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4128
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4130
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4131

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4132
  br label %kmalloc_index.exit.i, !dbg !4132

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4133
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4135
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4136

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4137
  br label %kmalloc_index.exit.i, !dbg !4137

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4138
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4140
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4141

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4142
  br label %kmalloc_index.exit.i, !dbg !4142

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4143
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4145
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4146

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4147
  br label %kmalloc_index.exit.i, !dbg !4147

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4148
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4150
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4151

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4152
  br label %kmalloc_index.exit.i, !dbg !4152

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4153
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4155
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4156

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4157
  br label %kmalloc_index.exit.i, !dbg !4157

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4158
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4160
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4161

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4162
  br label %kmalloc_index.exit.i, !dbg !4162

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4163
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4165
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4166

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4167
  br label %kmalloc_index.exit.i, !dbg !4167

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4168
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4170
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4171

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4172
  br label %kmalloc_index.exit.i, !dbg !4172

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4173
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4175
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4176

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4177
  br label %kmalloc_index.exit.i, !dbg !4177

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4178
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4180
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4181

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4182
  br label %kmalloc_index.exit.i, !dbg !4182

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !4183, !srcloc !4186
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #8, !dbg !4187, !srcloc !4190
  unreachable, !dbg !4191

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4192
  store i32 %45, i32* %index.i, align 4, !dbg !4193
  %46 = load i32, i32* %index.i, align 4, !dbg !4194
  %tobool.i = icmp ne i32 %46, 0, !dbg !4194
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4196

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4197
  br label %kmalloc.exit, !dbg !4197

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4198
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4199
  %and.i.i = and i32 %48, 17, !dbg !4199
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4199
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4199
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4199
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4199
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4201

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4202
  br label %kmalloc_type.exit.i, !dbg !4202

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4203
  %and2.i.i = and i32 %49, 1, !dbg !4204
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4203
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4203
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4203
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4205
  br label %kmalloc_type.exit.i, !dbg !4205

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4206
  %idxprom.i = zext i32 %51 to i64, !dbg !4207
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4207
  %52 = load i32, i32* %index.i, align 4, !dbg !4208
  %idxprom6.i = zext i32 %52 to i64, !dbg !4207
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4207
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4207
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4209
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4210
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4211
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4212
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !4213
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4213
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4213
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4213
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !4213
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3974
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4214
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4215
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4216
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4217
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !4218
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4219
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4220
  store i8* %62, i8** %retval.i, align 8, !dbg !4221
  br label %kmalloc.exit, !dbg !4221

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4222
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4223
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !4224
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4224
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4224
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4224
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !4224
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4225
  br label %kmalloc.exit, !dbg !4225

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4226
  ret i8* %65, !dbg !4227
}

; Function Attrs: noredzone
declare dso_local void @klist_init(%struct.klist*, void (%struct.klist_node*)*, void (%struct.klist_node*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @klist_class_dev_get(%struct.klist_node* %n) #0 !dbg !4228 {
entry:
  %n.addr = alloca %struct.klist_node*, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.klist_node* %n, %struct.klist_node** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.klist_node** %n.addr, metadata !4229, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4231, metadata !DIExpression()), !dbg !4232
  %0 = load %struct.klist_node*, %struct.klist_node** %n.addr, align 8, !dbg !4233
  %call = call %struct.device* @klist_class_to_dev(%struct.klist_node* %0) #7, !dbg !4234
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !4232
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4235
  %call1 = call %struct.device* @get_device(%struct.device* %1) #7, !dbg !4236
  ret void, !dbg !4237
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @klist_class_dev_put(%struct.klist_node* %n) #0 !dbg !4238 {
entry:
  %n.addr = alloca %struct.klist_node*, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.klist_node* %n, %struct.klist_node** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.klist_node** %n.addr, metadata !4239, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4241, metadata !DIExpression()), !dbg !4242
  %0 = load %struct.klist_node*, %struct.klist_node** %n.addr, align 8, !dbg !4243
  %call = call %struct.device* @klist_class_to_dev(%struct.klist_node* %0) #7, !dbg !4244
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !4242
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4245
  call void @put_device(%struct.device* %1) #7, !dbg !4246
  ret void, !dbg !4247
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !4248 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4252, metadata !DIExpression()), !dbg !4253
  br label %do.body, !dbg !4254

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4255

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4257

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4255

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4259
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4259
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4259
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4259
  br label %do.end3, !dbg !4259

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4255

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4261
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4262
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4263
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4264
  ret void, !dbg !4265
}

; Function Attrs: noredzone
declare dso_local void @kset_init(%struct.kset*) #2

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noredzone
declare dso_local i32 @kobject_set_name(%struct.kobject*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @kset_register(%struct.kset*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @class_add_groups(%struct.class* %cls, %struct.attribute_group** %groups) #0 !dbg !4266 {
entry:
  %cls.addr = alloca %struct.class*, align 8
  %groups.addr = alloca %struct.attribute_group**, align 8
  store %struct.class* %cls, %struct.class** %cls.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %cls.addr, metadata !4269, metadata !DIExpression()), !dbg !4270
  store %struct.attribute_group** %groups, %struct.attribute_group*** %groups.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_group*** %groups.addr, metadata !4271, metadata !DIExpression()), !dbg !4272
  %0 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !4273
  %p = getelementptr inbounds %struct.class, %struct.class* %0, i32 0, i32 14, !dbg !4274
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !4274
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i32 0, i32 0, !dbg !4275
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %subsys, i32 0, i32 2, !dbg !4276
  %2 = load %struct.attribute_group**, %struct.attribute_group*** %groups.addr, align 8, !dbg !4277
  %call = call i32 @sysfs_create_groups(%struct.kobject* %kobj, %struct.attribute_group** %2) #7, !dbg !4278
  ret i32 %call, !dbg !4279
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.class* @class_get(%struct.class* %cls) #0 !dbg !4280 {
entry:
  %cls.addr = alloca %struct.class*, align 8
  store %struct.class* %cls, %struct.class** %cls.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %cls.addr, metadata !4283, metadata !DIExpression()), !dbg !4284
  %0 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !4285
  %tobool = icmp ne %struct.class* %0, null, !dbg !4285
  br i1 %tobool, label %if.then, label %if.end, !dbg !4287

if.then:                                          ; preds = %entry
  %1 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !4288
  %p = getelementptr inbounds %struct.class, %struct.class* %1, i32 0, i32 14, !dbg !4289
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !4289
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %2, i32 0, i32 0, !dbg !4290
  %call = call %struct.kset* @kset_get(%struct.kset* %subsys) #7, !dbg !4291
  br label %if.end, !dbg !4291

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !4292
  ret %struct.class* %3, !dbg !4293
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @class_put(%struct.class* %cls) #0 !dbg !4294 {
entry:
  %cls.addr = alloca %struct.class*, align 8
  store %struct.class* %cls, %struct.class** %cls.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %cls.addr, metadata !4295, metadata !DIExpression()), !dbg !4296
  %0 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !4297
  %tobool = icmp ne %struct.class* %0, null, !dbg !4297
  br i1 %tobool, label %if.then, label %if.end, !dbg !4299

if.then:                                          ; preds = %entry
  %1 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !4300
  %p = getelementptr inbounds %struct.class, %struct.class* %1, i32 0, i32 14, !dbg !4301
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !4301
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %2, i32 0, i32 0, !dbg !4302
  call void @kset_put(%struct.kset* %subsys) #7, !dbg !4303
  br label %if.end, !dbg !4303

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4304
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @class_unregister(%struct.class* %cls) #0 !dbg !4305 {
entry:
  %cls.addr = alloca %struct.class*, align 8
  %tmp = alloca i32, align 4
  store %struct.class* %cls, %struct.class** %cls.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %cls.addr, metadata !4306, metadata !DIExpression()), !dbg !4307
  store i32 0, i32* %tmp, align 4, !dbg !4308
  %0 = load i32, i32* %tmp, align 4, !dbg !4311
  %1 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !4312
  %2 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !4313
  %class_groups = getelementptr inbounds %struct.class, %struct.class* %2, i32 0, i32 2, !dbg !4314
  %3 = load %struct.attribute_group**, %struct.attribute_group*** %class_groups, align 8, !dbg !4314
  call void @class_remove_groups(%struct.class* %1, %struct.attribute_group** %3) #7, !dbg !4315
  %4 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !4316
  %p = getelementptr inbounds %struct.class, %struct.class* %4, i32 0, i32 14, !dbg !4317
  %5 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !4317
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %5, i32 0, i32 0, !dbg !4318
  call void @kset_unregister(%struct.kset* %subsys) #7, !dbg !4319
  ret void, !dbg !4320
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @class_remove_groups(%struct.class* %cls, %struct.attribute_group** %groups) #0 !dbg !4321 {
entry:
  %cls.addr = alloca %struct.class*, align 8
  %groups.addr = alloca %struct.attribute_group**, align 8
  store %struct.class* %cls, %struct.class** %cls.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %cls.addr, metadata !4324, metadata !DIExpression()), !dbg !4325
  store %struct.attribute_group** %groups, %struct.attribute_group*** %groups.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_group*** %groups.addr, metadata !4326, metadata !DIExpression()), !dbg !4327
  %0 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !4328
  %p = getelementptr inbounds %struct.class, %struct.class* %0, i32 0, i32 14, !dbg !4329
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !4329
  %subsys = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i32 0, i32 0, !dbg !4330
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %subsys, i32 0, i32 2, !dbg !4331
  %2 = load %struct.attribute_group**, %struct.attribute_group*** %groups.addr, align 8, !dbg !4332
  call void @sysfs_remove_groups(%struct.kobject* %kobj, %struct.attribute_group** %2) #7, !dbg !4333
  ret void, !dbg !4334
}

; Function Attrs: noredzone
declare dso_local void @kset_unregister(%struct.kset*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.class* @__class_create(%struct.module* %owner, i8* %name, %struct.lock_class_key* %key) #0 !dbg !4335 {
entry:
  %retval = alloca %struct.class*, align 8
  %owner.addr = alloca %struct.module*, align 8
  %name.addr = alloca i8*, align 8
  %key.addr = alloca %struct.lock_class_key*, align 8
  %cls = alloca %struct.class*, align 8
  %retval1 = alloca i32, align 4
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !4338, metadata !DIExpression()), !dbg !4339
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4340, metadata !DIExpression()), !dbg !4341
  store %struct.lock_class_key* %key, %struct.lock_class_key** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lock_class_key** %key.addr, metadata !4342, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.declare(metadata %struct.class** %cls, metadata !4344, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4346, metadata !DIExpression()), !dbg !4347
  %call = call i8* @kzalloc(i64 120, i32 3264) #7, !dbg !4348
  %0 = bitcast i8* %call to %struct.class*, !dbg !4348
  store %struct.class* %0, %struct.class** %cls, align 8, !dbg !4349
  %1 = load %struct.class*, %struct.class** %cls, align 8, !dbg !4350
  %tobool = icmp ne %struct.class* %1, null, !dbg !4350
  br i1 %tobool, label %if.end, label %if.then, !dbg !4352

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval1, align 4, !dbg !4353
  br label %error, !dbg !4355

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8, !dbg !4356
  %3 = load %struct.class*, %struct.class** %cls, align 8, !dbg !4357
  %name2 = getelementptr inbounds %struct.class, %struct.class* %3, i32 0, i32 0, !dbg !4358
  store i8* %2, i8** %name2, align 8, !dbg !4359
  %4 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !4360
  %5 = load %struct.class*, %struct.class** %cls, align 8, !dbg !4361
  %owner3 = getelementptr inbounds %struct.class, %struct.class* %5, i32 0, i32 1, !dbg !4362
  store %struct.module* %4, %struct.module** %owner3, align 8, !dbg !4363
  %6 = load %struct.class*, %struct.class** %cls, align 8, !dbg !4364
  %class_release = getelementptr inbounds %struct.class, %struct.class* %6, i32 0, i32 7, !dbg !4365
  store void (%struct.class*)* @class_create_release, void (%struct.class*)** %class_release, align 8, !dbg !4366
  %7 = load %struct.class*, %struct.class** %cls, align 8, !dbg !4367
  %8 = load %struct.lock_class_key*, %struct.lock_class_key** %key.addr, align 8, !dbg !4368
  %call4 = call i32 @__class_register(%struct.class* %7, %struct.lock_class_key* %8) #7, !dbg !4369
  store i32 %call4, i32* %retval1, align 4, !dbg !4370
  %9 = load i32, i32* %retval1, align 4, !dbg !4371
  %tobool5 = icmp ne i32 %9, 0, !dbg !4371
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4373

if.then6:                                         ; preds = %if.end
  br label %error, !dbg !4374

if.end7:                                          ; preds = %if.end
  %10 = load %struct.class*, %struct.class** %cls, align 8, !dbg !4375
  store %struct.class* %10, %struct.class** %retval, align 8, !dbg !4376
  br label %return, !dbg !4376

error:                                            ; preds = %if.then6, %if.then
  call void @llvm.dbg.label(metadata !4377), !dbg !4378
  %11 = load %struct.class*, %struct.class** %cls, align 8, !dbg !4379
  %12 = bitcast %struct.class* %11 to i8*, !dbg !4379
  call void @kfree(i8* %12) #7, !dbg !4380
  %13 = load i32, i32* %retval1, align 4, !dbg !4381
  %conv = sext i32 %13 to i64, !dbg !4381
  %call8 = call i8* @ERR_PTR(i64 %conv) #7, !dbg !4382
  %14 = bitcast i8* %call8 to %struct.class*, !dbg !4382
  store %struct.class* %14, %struct.class** %retval, align 8, !dbg !4383
  br label %return, !dbg !4383

return:                                           ; preds = %error, %if.end7
  %15 = load %struct.class*, %struct.class** %retval, align 8, !dbg !4384
  ret %struct.class* %15, !dbg !4384
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @class_create_release(%struct.class* %cls) #0 !dbg !4385 {
entry:
  %cls.addr = alloca %struct.class*, align 8
  %tmp = alloca i32, align 4
  store %struct.class* %cls, %struct.class** %cls.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %cls.addr, metadata !4386, metadata !DIExpression()), !dbg !4387
  store i32 0, i32* %tmp, align 4, !dbg !4388
  %0 = load i32, i32* %tmp, align 4, !dbg !4391
  %1 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !4392
  %2 = bitcast %struct.class* %1 to i8*, !dbg !4392
  call void @kfree(i8* %2) #7, !dbg !4393
  ret void, !dbg !4394
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !4395 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !4399, metadata !DIExpression()), !dbg !4400
  %0 = load i64, i64* %error.addr, align 8, !dbg !4401
  %1 = inttoptr i64 %0 to i8*, !dbg !4402
  ret i8* %1, !dbg !4403
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @class_destroy(%struct.class* %cls) #0 !dbg !4404 {
entry:
  %cls.addr = alloca %struct.class*, align 8
  store %struct.class* %cls, %struct.class** %cls.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %cls.addr, metadata !4405, metadata !DIExpression()), !dbg !4406
  %0 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !4407
  %cmp = icmp eq %struct.class* %0, null, !dbg !4409
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4410

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !4411
  %2 = bitcast %struct.class* %1 to i8*, !dbg !4411
  %call = call zeroext i1 @IS_ERR(i8* %2) #7, !dbg !4412
  br i1 %call, label %if.then, label %if.end, !dbg !4413

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !4414

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.class*, %struct.class** %cls.addr, align 8, !dbg !4415
  call void @class_unregister(%struct.class* %3) #7, !dbg !4416
  br label %return, !dbg !4417

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4417
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !4418 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4421, metadata !DIExpression()), !dbg !4422
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4423
  %1 = ptrtoint i8* %0 to i64, !dbg !4423
  %2 = inttoptr i64 %1 to i8*, !dbg !4423
  %3 = ptrtoint i8* %2 to i64, !dbg !4423
  %cmp = icmp uge i64 %3, -4095, !dbg !4423
  %lnot = xor i1 %cmp, true, !dbg !4423
  %lnot1 = xor i1 %lnot, true, !dbg !4423
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4423
  %conv = sext i32 %lnot.ext to i64, !dbg !4423
  %tobool = icmp ne i64 %conv, 0, !dbg !4423
  ret i1 %tobool, !dbg !4424
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @class_dev_iter_init(%struct.class_dev_iter* %iter, %struct.class* %class, %struct.device* %start, %struct.device_type* %type) #0 !dbg !4425 {
entry:
  %iter.addr = alloca %struct.class_dev_iter*, align 8
  %class.addr = alloca %struct.class*, align 8
  %start.addr = alloca %struct.device*, align 8
  %type.addr = alloca %struct.device_type*, align 8
  %start_knode = alloca %struct.klist_node*, align 8
  store %struct.class_dev_iter* %iter, %struct.class_dev_iter** %iter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class_dev_iter** %iter.addr, metadata !4438, metadata !DIExpression()), !dbg !4439
  store %struct.class* %class, %struct.class** %class.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %class.addr, metadata !4440, metadata !DIExpression()), !dbg !4441
  store %struct.device* %start, %struct.device** %start.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %start.addr, metadata !4442, metadata !DIExpression()), !dbg !4443
  store %struct.device_type* %type, %struct.device_type** %type.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_type** %type.addr, metadata !4444, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.declare(metadata %struct.klist_node** %start_knode, metadata !4446, metadata !DIExpression()), !dbg !4447
  store %struct.klist_node* null, %struct.klist_node** %start_knode, align 8, !dbg !4447
  %0 = load %struct.device*, %struct.device** %start.addr, align 8, !dbg !4448
  %tobool = icmp ne %struct.device* %0, null, !dbg !4448
  br i1 %tobool, label %if.then, label %if.end, !dbg !4450

if.then:                                          ; preds = %entry
  %1 = load %struct.device*, %struct.device** %start.addr, align 8, !dbg !4451
  %p = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 2, !dbg !4452
  %2 = load %struct.device_private*, %struct.device_private** %p, align 8, !dbg !4452
  %knode_class = getelementptr inbounds %struct.device_private, %struct.device_private* %2, i32 0, i32 4, !dbg !4453
  store %struct.klist_node* %knode_class, %struct.klist_node** %start_knode, align 8, !dbg !4454
  br label %if.end, !dbg !4455

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.class*, %struct.class** %class.addr, align 8, !dbg !4456
  %p1 = getelementptr inbounds %struct.class, %struct.class* %3, i32 0, i32 14, !dbg !4457
  %4 = load %struct.subsys_private*, %struct.subsys_private** %p1, align 8, !dbg !4457
  %klist_devices = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %4, i32 0, i32 5, !dbg !4458
  %5 = load %struct.class_dev_iter*, %struct.class_dev_iter** %iter.addr, align 8, !dbg !4459
  %ki = getelementptr inbounds %struct.class_dev_iter, %struct.class_dev_iter* %5, i32 0, i32 0, !dbg !4460
  %6 = load %struct.klist_node*, %struct.klist_node** %start_knode, align 8, !dbg !4461
  call void @klist_iter_init_node(%struct.klist* %klist_devices, %struct.klist_iter* %ki, %struct.klist_node* %6) #7, !dbg !4462
  %7 = load %struct.device_type*, %struct.device_type** %type.addr, align 8, !dbg !4463
  %8 = load %struct.class_dev_iter*, %struct.class_dev_iter** %iter.addr, align 8, !dbg !4464
  %type2 = getelementptr inbounds %struct.class_dev_iter, %struct.class_dev_iter* %8, i32 0, i32 1, !dbg !4465
  store %struct.device_type* %7, %struct.device_type** %type2, align 8, !dbg !4466
  ret void, !dbg !4467
}

; Function Attrs: noredzone
declare dso_local void @klist_iter_init_node(%struct.klist*, %struct.klist_iter*, %struct.klist_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device* @class_dev_iter_next(%struct.class_dev_iter* %iter) #0 !dbg !4468 {
entry:
  %retval = alloca %struct.device*, align 8
  %iter.addr = alloca %struct.class_dev_iter*, align 8
  %knode = alloca %struct.klist_node*, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.class_dev_iter* %iter, %struct.class_dev_iter** %iter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class_dev_iter** %iter.addr, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.declare(metadata %struct.klist_node** %knode, metadata !4473, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4475, metadata !DIExpression()), !dbg !4476
  br label %while.body, !dbg !4477

while.body:                                       ; preds = %entry, %if.end6
  %0 = load %struct.class_dev_iter*, %struct.class_dev_iter** %iter.addr, align 8, !dbg !4478
  %ki = getelementptr inbounds %struct.class_dev_iter, %struct.class_dev_iter* %0, i32 0, i32 0, !dbg !4480
  %call = call %struct.klist_node* @klist_next(%struct.klist_iter* %ki) #7, !dbg !4481
  store %struct.klist_node* %call, %struct.klist_node** %knode, align 8, !dbg !4482
  %1 = load %struct.klist_node*, %struct.klist_node** %knode, align 8, !dbg !4483
  %tobool = icmp ne %struct.klist_node* %1, null, !dbg !4483
  br i1 %tobool, label %if.end, label %if.then, !dbg !4485

if.then:                                          ; preds = %while.body
  store %struct.device* null, %struct.device** %retval, align 8, !dbg !4486
  br label %return, !dbg !4486

if.end:                                           ; preds = %while.body
  %2 = load %struct.klist_node*, %struct.klist_node** %knode, align 8, !dbg !4487
  %call1 = call %struct.device* @klist_class_to_dev(%struct.klist_node* %2) #7, !dbg !4488
  store %struct.device* %call1, %struct.device** %dev, align 8, !dbg !4489
  %3 = load %struct.class_dev_iter*, %struct.class_dev_iter** %iter.addr, align 8, !dbg !4490
  %type = getelementptr inbounds %struct.class_dev_iter, %struct.class_dev_iter* %3, i32 0, i32 1, !dbg !4492
  %4 = load %struct.device_type*, %struct.device_type** %type, align 8, !dbg !4492
  %tobool2 = icmp ne %struct.device_type* %4, null, !dbg !4490
  br i1 %tobool2, label %lor.lhs.false, label %if.then5, !dbg !4493

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.class_dev_iter*, %struct.class_dev_iter** %iter.addr, align 8, !dbg !4494
  %type3 = getelementptr inbounds %struct.class_dev_iter, %struct.class_dev_iter* %5, i32 0, i32 1, !dbg !4495
  %6 = load %struct.device_type*, %struct.device_type** %type3, align 8, !dbg !4495
  %7 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4496
  %type4 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 4, !dbg !4497
  %8 = load %struct.device_type*, %struct.device_type** %type4, align 8, !dbg !4497
  %cmp = icmp eq %struct.device_type* %6, %8, !dbg !4498
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !4499

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4500
  store %struct.device* %9, %struct.device** %retval, align 8, !dbg !4501
  br label %return, !dbg !4501

if.end6:                                          ; preds = %lor.lhs.false
  br label %while.body, !dbg !4477, !llvm.loop !4502

return:                                           ; preds = %if.then5, %if.then
  %10 = load %struct.device*, %struct.device** %retval, align 8, !dbg !4504
  ret %struct.device* %10, !dbg !4504
}

; Function Attrs: noredzone
declare dso_local %struct.klist_node* @klist_next(%struct.klist_iter*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @klist_class_to_dev(%struct.klist_node* %n) #0 !dbg !4505 {
entry:
  %n.addr = alloca %struct.klist_node*, align 8
  %p = alloca %struct.device_private*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.device_private*, align 8
  store %struct.klist_node* %n, %struct.klist_node** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.klist_node** %n.addr, metadata !4508, metadata !DIExpression()), !dbg !4509
  call void @llvm.dbg.declare(metadata %struct.device_private** %p, metadata !4510, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4512, metadata !DIExpression()), !dbg !4514
  %0 = load %struct.klist_node*, %struct.klist_node** %n.addr, align 8, !dbg !4514
  %1 = bitcast %struct.klist_node* %0 to i8*, !dbg !4514
  store i8* %1, i8** %__mptr, align 8, !dbg !4514
  br label %do.body, !dbg !4514

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4515

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4514
  %add.ptr = getelementptr i8, i8* %2, i64 -128, !dbg !4514
  %3 = bitcast i8* %add.ptr to %struct.device_private*, !dbg !4514
  store %struct.device_private* %3, %struct.device_private** %tmp, align 8, !dbg !4515
  %4 = load %struct.device_private*, %struct.device_private** %tmp, align 8, !dbg !4514
  store %struct.device_private* %4, %struct.device_private** %p, align 8, !dbg !4511
  %5 = load %struct.device_private*, %struct.device_private** %p, align 8, !dbg !4517
  %device = getelementptr inbounds %struct.device_private, %struct.device_private* %5, i32 0, i32 8, !dbg !4518
  %6 = load %struct.device*, %struct.device** %device, align 8, !dbg !4518
  ret %struct.device* %6, !dbg !4519
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @class_dev_iter_exit(%struct.class_dev_iter* %iter) #0 !dbg !4520 {
entry:
  %iter.addr = alloca %struct.class_dev_iter*, align 8
  store %struct.class_dev_iter* %iter, %struct.class_dev_iter** %iter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class_dev_iter** %iter.addr, metadata !4523, metadata !DIExpression()), !dbg !4524
  %0 = load %struct.class_dev_iter*, %struct.class_dev_iter** %iter.addr, align 8, !dbg !4525
  %ki = getelementptr inbounds %struct.class_dev_iter, %struct.class_dev_iter* %0, i32 0, i32 0, !dbg !4526
  call void @klist_iter_exit(%struct.klist_iter* %ki) #7, !dbg !4527
  ret void, !dbg !4528
}

; Function Attrs: noredzone
declare dso_local void @klist_iter_exit(%struct.klist_iter*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @class_for_each_device(%struct.class* %class, %struct.device* %start, i8* %data, i32 (%struct.device*, i8*)* %fn) #0 !dbg !4529 {
entry:
  %retval = alloca i32, align 4
  %class.addr = alloca %struct.class*, align 8
  %start.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %fn.addr = alloca i32 (%struct.device*, i8*)*, align 8
  %iter = alloca %struct.class_dev_iter, align 8
  %dev = alloca %struct.device*, align 8
  %error = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.class* %class, %struct.class** %class.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %class.addr, metadata !4535, metadata !DIExpression()), !dbg !4536
  store %struct.device* %start, %struct.device** %start.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %start.addr, metadata !4537, metadata !DIExpression()), !dbg !4538
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4539, metadata !DIExpression()), !dbg !4540
  store i32 (%struct.device*, i8*)* %fn, i32 (%struct.device*, i8*)** %fn.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.device*, i8*)** %fn.addr, metadata !4541, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.declare(metadata %struct.class_dev_iter* %iter, metadata !4543, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4545, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4547, metadata !DIExpression()), !dbg !4548
  store i32 0, i32* %error, align 4, !dbg !4548
  %0 = load %struct.class*, %struct.class** %class.addr, align 8, !dbg !4549
  %tobool = icmp ne %struct.class* %0, null, !dbg !4549
  br i1 %tobool, label %if.end, label %if.then, !dbg !4551

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4552
  br label %return, !dbg !4552

if.end:                                           ; preds = %entry
  %1 = load %struct.class*, %struct.class** %class.addr, align 8, !dbg !4553
  %p = getelementptr inbounds %struct.class, %struct.class* %1, i32 0, i32 14, !dbg !4555
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !4555
  %tobool1 = icmp ne %struct.subsys_private* %2, null, !dbg !4553
  br i1 %tobool1, label %if.end26, label %if.then2, !dbg !4556

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4557, metadata !DIExpression()), !dbg !4560
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !4560
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !4561
  %tobool3 = icmp ne i32 %3, 0, !dbg !4561
  %lnot = xor i1 %tobool3, true, !dbg !4561
  %lnot4 = xor i1 %lnot, true, !dbg !4561
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4561
  %conv = sext i32 %lnot.ext to i64, !dbg !4561
  %tobool5 = icmp ne i64 %conv, 0, !dbg !4561
  br i1 %tobool5, label %if.then6, label %if.end19, !dbg !4560

if.then6:                                         ; preds = %if.then2
  br label %do.body, !dbg !4561

do.body:                                          ; preds = %if.then6
  br label %do.body7, !dbg !4563

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !4565

do.end:                                           ; preds = %do.body7
  %4 = load %struct.class*, %struct.class** %class.addr, align 8, !dbg !4563
  %name = getelementptr inbounds %struct.class, %struct.class* %4, i32 0, i32 0, !dbg !4563
  %5 = load i8*, i8** %name, align 8, !dbg !4563
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.class_for_each_device, i64 0, i64 0), i8* %5) #7, !dbg !4563
  br label %do.body8, !dbg !4563

do.body8:                                         ; preds = %do.end
  br label %do.body9, !dbg !4567

do.body9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !4569

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !4567

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 363, i32 2313, i64 12) #8, !dbg !4571, !srcloc !4573
  br label %do.end12, !dbg !4571

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 239) #8, !dbg !4574, !srcloc !4576
  br label %do.body13, !dbg !4567

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !4577

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !4567

do.end15:                                         ; preds = %do.end14
  br label %do.body16, !dbg !4563

do.body16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !4579

do.end17:                                         ; preds = %do.body16
  br label %do.end18, !dbg !4563

do.end18:                                         ; preds = %do.end17
  br label %if.end19, !dbg !4563

if.end19:                                         ; preds = %do.end18, %if.then2
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !4560
  %tobool20 = icmp ne i32 %6, 0, !dbg !4560
  %lnot21 = xor i1 %tobool20, true, !dbg !4560
  %lnot23 = xor i1 %lnot21, true, !dbg !4560
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !4560
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !4560
  store i64 %conv25, i64* %tmp, align 8, !dbg !4561
  %7 = load i64, i64* %tmp, align 8, !dbg !4560
  store i32 -22, i32* %retval, align 4, !dbg !4581
  br label %return, !dbg !4581

if.end26:                                         ; preds = %if.end
  %8 = load %struct.class*, %struct.class** %class.addr, align 8, !dbg !4582
  %9 = load %struct.device*, %struct.device** %start.addr, align 8, !dbg !4583
  call void @class_dev_iter_init(%struct.class_dev_iter* %iter, %struct.class* %8, %struct.device* %9, %struct.device_type* null) #7, !dbg !4584
  br label %while.cond, !dbg !4585

while.cond:                                       ; preds = %if.end31, %if.end26
  %call = call %struct.device* @class_dev_iter_next(%struct.class_dev_iter* %iter) #7, !dbg !4586
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !4587
  %tobool27 = icmp ne %struct.device* %call, null, !dbg !4585
  br i1 %tobool27, label %while.body, label %while.end, !dbg !4585

while.body:                                       ; preds = %while.cond
  %10 = load i32 (%struct.device*, i8*)*, i32 (%struct.device*, i8*)** %fn.addr, align 8, !dbg !4588
  %11 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4590
  %12 = load i8*, i8** %data.addr, align 8, !dbg !4591
  %call28 = call i32 %10(%struct.device* %11, i8* %12) #7, !dbg !4588
  store i32 %call28, i32* %error, align 4, !dbg !4592
  %13 = load i32, i32* %error, align 4, !dbg !4593
  %tobool29 = icmp ne i32 %13, 0, !dbg !4593
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !4595

if.then30:                                        ; preds = %while.body
  br label %while.end, !dbg !4596

if.end31:                                         ; preds = %while.body
  br label %while.cond, !dbg !4585, !llvm.loop !4597

while.end:                                        ; preds = %if.then30, %while.cond
  call void @class_dev_iter_exit(%struct.class_dev_iter* %iter) #7, !dbg !4599
  %14 = load i32, i32* %error, align 4, !dbg !4600
  store i32 %14, i32* %retval, align 4, !dbg !4601
  br label %return, !dbg !4601

return:                                           ; preds = %while.end, %if.end19, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !4602
  ret i32 %15, !dbg !4602
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device* @class_find_device(%struct.class* %class, %struct.device* %start, i8* %data, i32 (%struct.device*, i8*)* %match) #0 !dbg !4603 {
entry:
  %retval = alloca %struct.device*, align 8
  %class.addr = alloca %struct.class*, align 8
  %start.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %match.addr = alloca i32 (%struct.device*, i8*)*, align 8
  %iter = alloca %struct.class_dev_iter, align 8
  %dev = alloca %struct.device*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.class* %class, %struct.class** %class.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %class.addr, metadata !4609, metadata !DIExpression()), !dbg !4610
  store %struct.device* %start, %struct.device** %start.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %start.addr, metadata !4611, metadata !DIExpression()), !dbg !4612
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4613, metadata !DIExpression()), !dbg !4614
  store i32 (%struct.device*, i8*)* %match, i32 (%struct.device*, i8*)** %match.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.device*, i8*)** %match.addr, metadata !4615, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.declare(metadata %struct.class_dev_iter* %iter, metadata !4617, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4619, metadata !DIExpression()), !dbg !4620
  %0 = load %struct.class*, %struct.class** %class.addr, align 8, !dbg !4621
  %tobool = icmp ne %struct.class* %0, null, !dbg !4621
  br i1 %tobool, label %if.end, label %if.then, !dbg !4623

if.then:                                          ; preds = %entry
  store %struct.device* null, %struct.device** %retval, align 8, !dbg !4624
  br label %return, !dbg !4624

if.end:                                           ; preds = %entry
  %1 = load %struct.class*, %struct.class** %class.addr, align 8, !dbg !4625
  %p = getelementptr inbounds %struct.class, %struct.class* %1, i32 0, i32 14, !dbg !4627
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !4627
  %tobool1 = icmp ne %struct.subsys_private* %2, null, !dbg !4625
  br i1 %tobool1, label %if.end26, label %if.then2, !dbg !4628

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4629, metadata !DIExpression()), !dbg !4632
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !4632
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !4633
  %tobool3 = icmp ne i32 %3, 0, !dbg !4633
  %lnot = xor i1 %tobool3, true, !dbg !4633
  %lnot4 = xor i1 %lnot, true, !dbg !4633
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4633
  %conv = sext i32 %lnot.ext to i64, !dbg !4633
  %tobool5 = icmp ne i64 %conv, 0, !dbg !4633
  br i1 %tobool5, label %if.then6, label %if.end19, !dbg !4632

if.then6:                                         ; preds = %if.then2
  br label %do.body, !dbg !4633

do.body:                                          ; preds = %if.then6
  br label %do.body7, !dbg !4635

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !4637

do.end:                                           ; preds = %do.body7
  %4 = load %struct.class*, %struct.class** %class.addr, align 8, !dbg !4635
  %name = getelementptr inbounds %struct.class, %struct.class* %4, i32 0, i32 0, !dbg !4635
  %5 = load i8*, i8** %name, align 8, !dbg !4635
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.class_find_device, i64 0, i64 0), i8* %5) #7, !dbg !4635
  br label %do.body8, !dbg !4635

do.body8:                                         ; preds = %do.end
  br label %do.body9, !dbg !4639

do.body9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !4641

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !4639

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 410, i32 2313, i64 12) #8, !dbg !4643, !srcloc !4645
  br label %do.end12, !dbg !4643

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 240) #8, !dbg !4646, !srcloc !4648
  br label %do.body13, !dbg !4639

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !4649

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !4639

do.end15:                                         ; preds = %do.end14
  br label %do.body16, !dbg !4635

do.body16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !4651

do.end17:                                         ; preds = %do.body16
  br label %do.end18, !dbg !4635

do.end18:                                         ; preds = %do.end17
  br label %if.end19, !dbg !4635

if.end19:                                         ; preds = %do.end18, %if.then2
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !4632
  %tobool20 = icmp ne i32 %6, 0, !dbg !4632
  %lnot21 = xor i1 %tobool20, true, !dbg !4632
  %lnot23 = xor i1 %lnot21, true, !dbg !4632
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !4632
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !4632
  store i64 %conv25, i64* %tmp, align 8, !dbg !4633
  %7 = load i64, i64* %tmp, align 8, !dbg !4632
  store %struct.device* null, %struct.device** %retval, align 8, !dbg !4653
  br label %return, !dbg !4653

if.end26:                                         ; preds = %if.end
  %8 = load %struct.class*, %struct.class** %class.addr, align 8, !dbg !4654
  %9 = load %struct.device*, %struct.device** %start.addr, align 8, !dbg !4655
  call void @class_dev_iter_init(%struct.class_dev_iter* %iter, %struct.class* %8, %struct.device* %9, %struct.device_type* null) #7, !dbg !4656
  br label %while.cond, !dbg !4657

while.cond:                                       ; preds = %if.end32, %if.end26
  %call = call %struct.device* @class_dev_iter_next(%struct.class_dev_iter* %iter) #7, !dbg !4658
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !4659
  %tobool27 = icmp ne %struct.device* %call, null, !dbg !4657
  br i1 %tobool27, label %while.body, label %while.end, !dbg !4657

while.body:                                       ; preds = %while.cond
  %10 = load i32 (%struct.device*, i8*)*, i32 (%struct.device*, i8*)** %match.addr, align 8, !dbg !4660
  %11 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4663
  %12 = load i8*, i8** %data.addr, align 8, !dbg !4664
  %call28 = call i32 %10(%struct.device* %11, i8* %12) #7, !dbg !4660
  %tobool29 = icmp ne i32 %call28, 0, !dbg !4660
  br i1 %tobool29, label %if.then30, label %if.end32, !dbg !4665

if.then30:                                        ; preds = %while.body
  %13 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4666
  %call31 = call %struct.device* @get_device(%struct.device* %13) #7, !dbg !4668
  br label %while.end, !dbg !4669

if.end32:                                         ; preds = %while.body
  br label %while.cond, !dbg !4657, !llvm.loop !4670

while.end:                                        ; preds = %if.then30, %while.cond
  call void @class_dev_iter_exit(%struct.class_dev_iter* %iter) #7, !dbg !4672
  %14 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4673
  store %struct.device* %14, %struct.device** %retval, align 8, !dbg !4674
  br label %return, !dbg !4674

return:                                           ; preds = %while.end, %if.end19, %if.then
  %15 = load %struct.device*, %struct.device** %retval, align 8, !dbg !4675
  ret %struct.device* %15, !dbg !4675
}

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @class_interface_register(%struct.class_interface* %class_intf) #0 !dbg !4676 {
entry:
  %retval = alloca i32, align 4
  %class_intf.addr = alloca %struct.class_interface*, align 8
  %parent = alloca %struct.class*, align 8
  %iter = alloca %struct.class_dev_iter, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.class_interface* %class_intf, %struct.class_interface** %class_intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class_interface** %class_intf.addr, metadata !4692, metadata !DIExpression()), !dbg !4693
  call void @llvm.dbg.declare(metadata %struct.class** %parent, metadata !4694, metadata !DIExpression()), !dbg !4695
  call void @llvm.dbg.declare(metadata %struct.class_dev_iter* %iter, metadata !4696, metadata !DIExpression()), !dbg !4697
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4698, metadata !DIExpression()), !dbg !4699
  %0 = load %struct.class_interface*, %struct.class_interface** %class_intf.addr, align 8, !dbg !4700
  %tobool = icmp ne %struct.class_interface* %0, null, !dbg !4700
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4702

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.class_interface*, %struct.class_interface** %class_intf.addr, align 8, !dbg !4703
  %class = getelementptr inbounds %struct.class_interface, %struct.class_interface* %1, i32 0, i32 1, !dbg !4704
  %2 = load %struct.class*, %struct.class** %class, align 8, !dbg !4704
  %tobool1 = icmp ne %struct.class* %2, null, !dbg !4703
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4705

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, i32* %retval, align 4, !dbg !4706
  br label %return, !dbg !4706

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.class_interface*, %struct.class_interface** %class_intf.addr, align 8, !dbg !4707
  %class2 = getelementptr inbounds %struct.class_interface, %struct.class_interface* %3, i32 0, i32 1, !dbg !4708
  %4 = load %struct.class*, %struct.class** %class2, align 8, !dbg !4708
  %call = call %struct.class* @class_get(%struct.class* %4) #7, !dbg !4709
  store %struct.class* %call, %struct.class** %parent, align 8, !dbg !4710
  %5 = load %struct.class*, %struct.class** %parent, align 8, !dbg !4711
  %tobool3 = icmp ne %struct.class* %5, null, !dbg !4711
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4713

if.then4:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !4714
  br label %return, !dbg !4714

if.end5:                                          ; preds = %if.end
  %6 = load %struct.class*, %struct.class** %parent, align 8, !dbg !4715
  %p = getelementptr inbounds %struct.class, %struct.class* %6, i32 0, i32 14, !dbg !4716
  %7 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !4716
  %mutex = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %7, i32 0, i32 3, !dbg !4717
  call void @mutex_lock(%struct.mutex* %mutex) #7, !dbg !4718
  %8 = load %struct.class_interface*, %struct.class_interface** %class_intf.addr, align 8, !dbg !4719
  %node = getelementptr inbounds %struct.class_interface, %struct.class_interface* %8, i32 0, i32 0, !dbg !4720
  %9 = load %struct.class*, %struct.class** %parent, align 8, !dbg !4721
  %p6 = getelementptr inbounds %struct.class, %struct.class* %9, i32 0, i32 14, !dbg !4722
  %10 = load %struct.subsys_private*, %struct.subsys_private** %p6, align 8, !dbg !4722
  %interfaces = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %10, i32 0, i32 2, !dbg !4723
  call void @list_add_tail(%struct.list_head* %node, %struct.list_head* %interfaces) #7, !dbg !4724
  %11 = load %struct.class_interface*, %struct.class_interface** %class_intf.addr, align 8, !dbg !4725
  %add_dev = getelementptr inbounds %struct.class_interface, %struct.class_interface* %11, i32 0, i32 2, !dbg !4727
  %12 = load i32 (%struct.device*, %struct.class_interface*)*, i32 (%struct.device*, %struct.class_interface*)** %add_dev, align 8, !dbg !4727
  %tobool7 = icmp ne i32 (%struct.device*, %struct.class_interface*)* %12, null, !dbg !4725
  br i1 %tobool7, label %if.then8, label %if.end13, !dbg !4728

if.then8:                                         ; preds = %if.end5
  %13 = load %struct.class*, %struct.class** %parent, align 8, !dbg !4729
  call void @class_dev_iter_init(%struct.class_dev_iter* %iter, %struct.class* %13, %struct.device* null, %struct.device_type* null) #7, !dbg !4731
  br label %while.cond, !dbg !4732

while.cond:                                       ; preds = %while.body, %if.then8
  %call9 = call %struct.device* @class_dev_iter_next(%struct.class_dev_iter* %iter) #7, !dbg !4733
  store %struct.device* %call9, %struct.device** %dev, align 8, !dbg !4734
  %tobool10 = icmp ne %struct.device* %call9, null, !dbg !4732
  br i1 %tobool10, label %while.body, label %while.end, !dbg !4732

while.body:                                       ; preds = %while.cond
  %14 = load %struct.class_interface*, %struct.class_interface** %class_intf.addr, align 8, !dbg !4735
  %add_dev11 = getelementptr inbounds %struct.class_interface, %struct.class_interface* %14, i32 0, i32 2, !dbg !4736
  %15 = load i32 (%struct.device*, %struct.class_interface*)*, i32 (%struct.device*, %struct.class_interface*)** %add_dev11, align 8, !dbg !4736
  %16 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4737
  %17 = load %struct.class_interface*, %struct.class_interface** %class_intf.addr, align 8, !dbg !4738
  %call12 = call i32 %15(%struct.device* %16, %struct.class_interface* %17) #7, !dbg !4735
  br label %while.cond, !dbg !4732, !llvm.loop !4739

while.end:                                        ; preds = %while.cond
  call void @class_dev_iter_exit(%struct.class_dev_iter* %iter) #7, !dbg !4741
  br label %if.end13, !dbg !4742

if.end13:                                         ; preds = %while.end, %if.end5
  %18 = load %struct.class*, %struct.class** %parent, align 8, !dbg !4743
  %p14 = getelementptr inbounds %struct.class, %struct.class* %18, i32 0, i32 14, !dbg !4744
  %19 = load %struct.subsys_private*, %struct.subsys_private** %p14, align 8, !dbg !4744
  %mutex15 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %19, i32 0, i32 3, !dbg !4745
  call void @mutex_unlock(%struct.mutex* %mutex15) #7, !dbg !4746
  store i32 0, i32* %retval, align 4, !dbg !4747
  br label %return, !dbg !4747

return:                                           ; preds = %if.end13, %if.then4, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !4748
  ret i32 %20, !dbg !4748
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4749 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4752, metadata !DIExpression()), !dbg !4753
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4754, metadata !DIExpression()), !dbg !4755
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4756
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4757
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4758
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4758
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4759
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #7, !dbg !4760
  ret void, !dbg !4761
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @class_interface_unregister(%struct.class_interface* %class_intf) #0 !dbg !4762 {
entry:
  %class_intf.addr = alloca %struct.class_interface*, align 8
  %parent = alloca %struct.class*, align 8
  %iter = alloca %struct.class_dev_iter, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.class_interface* %class_intf, %struct.class_interface** %class_intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class_interface** %class_intf.addr, metadata !4765, metadata !DIExpression()), !dbg !4766
  call void @llvm.dbg.declare(metadata %struct.class** %parent, metadata !4767, metadata !DIExpression()), !dbg !4768
  %0 = load %struct.class_interface*, %struct.class_interface** %class_intf.addr, align 8, !dbg !4769
  %class = getelementptr inbounds %struct.class_interface, %struct.class_interface* %0, i32 0, i32 1, !dbg !4770
  %1 = load %struct.class*, %struct.class** %class, align 8, !dbg !4770
  store %struct.class* %1, %struct.class** %parent, align 8, !dbg !4768
  call void @llvm.dbg.declare(metadata %struct.class_dev_iter* %iter, metadata !4771, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4773, metadata !DIExpression()), !dbg !4774
  %2 = load %struct.class*, %struct.class** %parent, align 8, !dbg !4775
  %tobool = icmp ne %struct.class* %2, null, !dbg !4775
  br i1 %tobool, label %if.end, label %if.then, !dbg !4777

if.then:                                          ; preds = %entry
  br label %return, !dbg !4778

if.end:                                           ; preds = %entry
  %3 = load %struct.class*, %struct.class** %parent, align 8, !dbg !4779
  %p = getelementptr inbounds %struct.class, %struct.class* %3, i32 0, i32 14, !dbg !4780
  %4 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8, !dbg !4780
  %mutex = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %4, i32 0, i32 3, !dbg !4781
  call void @mutex_lock(%struct.mutex* %mutex) #7, !dbg !4782
  %5 = load %struct.class_interface*, %struct.class_interface** %class_intf.addr, align 8, !dbg !4783
  %node = getelementptr inbounds %struct.class_interface, %struct.class_interface* %5, i32 0, i32 0, !dbg !4784
  call void @list_del_init(%struct.list_head* %node) #7, !dbg !4785
  %6 = load %struct.class_interface*, %struct.class_interface** %class_intf.addr, align 8, !dbg !4786
  %remove_dev = getelementptr inbounds %struct.class_interface, %struct.class_interface* %6, i32 0, i32 3, !dbg !4788
  %7 = load void (%struct.device*, %struct.class_interface*)*, void (%struct.device*, %struct.class_interface*)** %remove_dev, align 8, !dbg !4788
  %tobool1 = icmp ne void (%struct.device*, %struct.class_interface*)* %7, null, !dbg !4786
  br i1 %tobool1, label %if.then2, label %if.end5, !dbg !4789

if.then2:                                         ; preds = %if.end
  %8 = load %struct.class*, %struct.class** %parent, align 8, !dbg !4790
  call void @class_dev_iter_init(%struct.class_dev_iter* %iter, %struct.class* %8, %struct.device* null, %struct.device_type* null) #7, !dbg !4792
  br label %while.cond, !dbg !4793

while.cond:                                       ; preds = %while.body, %if.then2
  %call = call %struct.device* @class_dev_iter_next(%struct.class_dev_iter* %iter) #7, !dbg !4794
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !4795
  %tobool3 = icmp ne %struct.device* %call, null, !dbg !4793
  br i1 %tobool3, label %while.body, label %while.end, !dbg !4793

while.body:                                       ; preds = %while.cond
  %9 = load %struct.class_interface*, %struct.class_interface** %class_intf.addr, align 8, !dbg !4796
  %remove_dev4 = getelementptr inbounds %struct.class_interface, %struct.class_interface* %9, i32 0, i32 3, !dbg !4797
  %10 = load void (%struct.device*, %struct.class_interface*)*, void (%struct.device*, %struct.class_interface*)** %remove_dev4, align 8, !dbg !4797
  %11 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4798
  %12 = load %struct.class_interface*, %struct.class_interface** %class_intf.addr, align 8, !dbg !4799
  call void %10(%struct.device* %11, %struct.class_interface* %12) #7, !dbg !4796
  br label %while.cond, !dbg !4793, !llvm.loop !4800

while.end:                                        ; preds = %while.cond
  call void @class_dev_iter_exit(%struct.class_dev_iter* %iter) #7, !dbg !4802
  br label %if.end5, !dbg !4803

if.end5:                                          ; preds = %while.end, %if.end
  %13 = load %struct.class*, %struct.class** %parent, align 8, !dbg !4804
  %p6 = getelementptr inbounds %struct.class, %struct.class* %13, i32 0, i32 14, !dbg !4805
  %14 = load %struct.subsys_private*, %struct.subsys_private** %p6, align 8, !dbg !4805
  %mutex7 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %14, i32 0, i32 3, !dbg !4806
  call void @mutex_unlock(%struct.mutex* %mutex7) #7, !dbg !4807
  %15 = load %struct.class*, %struct.class** %parent, align 8, !dbg !4808
  call void @class_put(%struct.class* %15) #7, !dbg !4809
  br label %return, !dbg !4810

return:                                           ; preds = %if.end5, %if.then
  ret void, !dbg !4810
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del_init(%struct.list_head* %entry1) #0 !dbg !4811 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4812, metadata !DIExpression()), !dbg !4813
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4814
  call void @__list_del_entry(%struct.list_head* %0) #7, !dbg !4815
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4816
  call void @INIT_LIST_HEAD(%struct.list_head* %1) #7, !dbg !4817
  ret void, !dbg !4818
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @show_class_attr_string(%struct.class* %class, %struct.class_attribute* %attr, i8* %buf) #0 !dbg !4819 {
entry:
  %class.addr = alloca %struct.class*, align 8
  %attr.addr = alloca %struct.class_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %cs = alloca %struct.class_attribute_string*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.class_attribute_string*, align 8
  store %struct.class* %class, %struct.class** %class.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %class.addr, metadata !4820, metadata !DIExpression()), !dbg !4821
  store %struct.class_attribute* %attr, %struct.class_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class_attribute** %attr.addr, metadata !4822, metadata !DIExpression()), !dbg !4823
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4824, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.declare(metadata %struct.class_attribute_string** %cs, metadata !4826, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4828, metadata !DIExpression()), !dbg !4830
  %0 = load %struct.class_attribute*, %struct.class_attribute** %attr.addr, align 8, !dbg !4830
  %1 = bitcast %struct.class_attribute* %0 to i8*, !dbg !4830
  store i8* %1, i8** %__mptr, align 8, !dbg !4830
  br label %do.body, !dbg !4830

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4831

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4830
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4830
  %3 = bitcast i8* %add.ptr to %struct.class_attribute_string*, !dbg !4830
  store %struct.class_attribute_string* %3, %struct.class_attribute_string** %tmp, align 8, !dbg !4831
  %4 = load %struct.class_attribute_string*, %struct.class_attribute_string** %tmp, align 8, !dbg !4830
  store %struct.class_attribute_string* %4, %struct.class_attribute_string** %cs, align 8, !dbg !4833
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4834
  %6 = load %struct.class_attribute_string*, %struct.class_attribute_string** %cs, align 8, !dbg !4835
  %str = getelementptr inbounds %struct.class_attribute_string, %struct.class_attribute_string* %6, i32 0, i32 1, !dbg !4836
  %7 = load i8*, i8** %str, align 8, !dbg !4836
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %7) #7, !dbg !4837
  %conv = sext i32 %call to i64, !dbg !4837
  ret i64 %conv, !dbg !4838
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_emit(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.class_compat* @class_compat_register(i8* %name) #0 !dbg !4839 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3959, metadata !DIExpression()), !dbg !4846
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3969, metadata !DIExpression()), !dbg !4849
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3971, metadata !DIExpression()), !dbg !4850
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3973, metadata !DIExpression()), !dbg !4851
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3975, metadata !DIExpression()), !dbg !4852
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3981, metadata !DIExpression()), !dbg !4854
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3987, metadata !DIExpression()), !dbg !4856
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3996, metadata !DIExpression()), !dbg !4859
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3998, metadata !DIExpression()), !dbg !4860
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4000, metadata !DIExpression()), !dbg !4861
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4002, metadata !DIExpression()), !dbg !4862
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4004, metadata !DIExpression()), !dbg !4863
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4006, metadata !DIExpression()), !dbg !4864
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4008, metadata !DIExpression()), !dbg !4865
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4010, metadata !DIExpression()), !dbg !4866
  %retval = alloca %struct.class_compat*, align 8
  %name.addr = alloca i8*, align 8
  %cls = alloca %struct.class_compat*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4867, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.declare(metadata %struct.class_compat** %cls, metadata !4869, metadata !DIExpression()), !dbg !4870
  store i64 8, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !4871
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #8, !dbg !4872
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !4873

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4874
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !4875
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4876

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !4877
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !4878
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !4879
  %call.i.i = call i32 @get_order(i64 %5) #9, !dbg !4880
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4863
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !4881
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4882
  %8 = load i32, i32* %order.i.i, align 4, !dbg !4883
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4884
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4885
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4886
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #10, !dbg !4887
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4887
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4887
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4887
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !4887
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4888
  br label %kmalloc.exit, !dbg !4888

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !4889
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4890
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !4890
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4891

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4892
  br label %kmalloc_index.exit.i, !dbg !4892

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4893
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !4894
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4895

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4896
  br label %kmalloc_index.exit.i, !dbg !4896

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4897
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !4898
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4899

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4900
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !4901
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4902

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4903
  br label %kmalloc_index.exit.i, !dbg !4903

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4904
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !4905
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4906

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4907
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !4908
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4909

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4910
  br label %kmalloc_index.exit.i, !dbg !4910

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4911
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !4912
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4913

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4914
  br label %kmalloc_index.exit.i, !dbg !4914

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4915
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !4916
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4917

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4918
  br label %kmalloc_index.exit.i, !dbg !4918

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4919
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !4920
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4921

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4922
  br label %kmalloc_index.exit.i, !dbg !4922

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4923
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !4924
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4925

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4926
  br label %kmalloc_index.exit.i, !dbg !4926

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4927
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !4928
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4929

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4930
  br label %kmalloc_index.exit.i, !dbg !4930

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4931
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !4932
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4933

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4934
  br label %kmalloc_index.exit.i, !dbg !4934

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4935
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !4936
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4937

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4938
  br label %kmalloc_index.exit.i, !dbg !4938

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4939
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !4940
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4941

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4942
  br label %kmalloc_index.exit.i, !dbg !4942

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4943
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !4944
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4945

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4946
  br label %kmalloc_index.exit.i, !dbg !4946

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4947
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !4948
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4949

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4950
  br label %kmalloc_index.exit.i, !dbg !4950

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4951
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !4952
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4953

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4954
  br label %kmalloc_index.exit.i, !dbg !4954

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4955
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !4956
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4957

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4958
  br label %kmalloc_index.exit.i, !dbg !4958

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4959
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !4960
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4961

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4962
  br label %kmalloc_index.exit.i, !dbg !4962

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4963
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !4964
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4965

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4966
  br label %kmalloc_index.exit.i, !dbg !4966

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4967
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !4968
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4969

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4970
  br label %kmalloc_index.exit.i, !dbg !4970

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4971
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !4972
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4973

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4974
  br label %kmalloc_index.exit.i, !dbg !4974

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4975
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !4976
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4977

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4978
  br label %kmalloc_index.exit.i, !dbg !4978

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4979
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !4980
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4981

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4982
  br label %kmalloc_index.exit.i, !dbg !4982

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4983
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !4984
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4985

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4986
  br label %kmalloc_index.exit.i, !dbg !4986

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4987
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !4988
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4989

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4990
  br label %kmalloc_index.exit.i, !dbg !4990

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4991
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !4992
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4993

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4994
  br label %kmalloc_index.exit.i, !dbg !4994

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4995
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !4996
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4997

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4998
  br label %kmalloc_index.exit.i, !dbg !4998

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4999
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !5000
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5001

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5002
  br label %kmalloc_index.exit.i, !dbg !5002

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5003
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !5004
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5005

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5006
  br label %kmalloc_index.exit.i, !dbg !5006

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !5007, !srcloc !4186
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #8, !dbg !5008, !srcloc !4190
  unreachable, !dbg !5009

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !5010
  store i32 %43, i32* %index.i, align 4, !dbg !5011
  %44 = load i32, i32* %index.i, align 4, !dbg !5012
  %tobool.i = icmp ne i32 %44, 0, !dbg !5012
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5013

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5014
  br label %kmalloc.exit, !dbg !5014

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !5015
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5016
  %and.i.i = and i32 %46, 17, !dbg !5016
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5016
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5016
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5016
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5016
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5017

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5018
  br label %kmalloc_type.exit.i, !dbg !5018

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5019
  %and2.i.i = and i32 %47, 1, !dbg !5020
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5019
  %48 = zext i1 %tobool3.i.i to i64, !dbg !5019
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5019
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5021
  br label %kmalloc_type.exit.i, !dbg !5021

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !5022
  %idxprom.i = zext i32 %49 to i64, !dbg !5023
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5023
  %50 = load i32, i32* %index.i, align 4, !dbg !5024
  %idxprom6.i = zext i32 %50 to i64, !dbg !5023
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5023
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5023
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !5025
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !5026
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5027
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5028
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #10, !dbg !5029
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5029
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5029
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5029
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !5029
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4851
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5030
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !5031
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5032
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5033
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #10, !dbg !5034
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5035
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !5036
  store i8* %60, i8** %retval.i, align 8, !dbg !5037
  br label %kmalloc.exit, !dbg !5037

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !5038
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !5039
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #10, !dbg !5040
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5040
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5040
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5040
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !5040
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5041
  br label %kmalloc.exit, !dbg !5041

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !5042
  %64 = bitcast i8* %63 to %struct.class_compat*, !dbg !5043
  store %struct.class_compat* %64, %struct.class_compat** %cls, align 8, !dbg !5044
  %65 = load %struct.class_compat*, %struct.class_compat** %cls, align 8, !dbg !5045
  %tobool = icmp ne %struct.class_compat* %65, null, !dbg !5045
  br i1 %tobool, label %if.end, label %if.then, !dbg !5047

if.then:                                          ; preds = %kmalloc.exit
  store %struct.class_compat* null, %struct.class_compat** %retval, align 8, !dbg !5048
  br label %return, !dbg !5048

if.end:                                           ; preds = %kmalloc.exit
  %66 = load i8*, i8** %name.addr, align 8, !dbg !5049
  %67 = load %struct.kset*, %struct.kset** @class_kset, align 8, !dbg !5050
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %67, i32 0, i32 2, !dbg !5051
  %call1 = call %struct.kobject* @kobject_create_and_add(i8* %66, %struct.kobject* %kobj) #7, !dbg !5052
  %68 = load %struct.class_compat*, %struct.class_compat** %cls, align 8, !dbg !5053
  %kobj2 = getelementptr inbounds %struct.class_compat, %struct.class_compat* %68, i32 0, i32 0, !dbg !5054
  store %struct.kobject* %call1, %struct.kobject** %kobj2, align 8, !dbg !5055
  %69 = load %struct.class_compat*, %struct.class_compat** %cls, align 8, !dbg !5056
  %kobj3 = getelementptr inbounds %struct.class_compat, %struct.class_compat* %69, i32 0, i32 0, !dbg !5058
  %70 = load %struct.kobject*, %struct.kobject** %kobj3, align 8, !dbg !5058
  %tobool4 = icmp ne %struct.kobject* %70, null, !dbg !5056
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5059

if.then5:                                         ; preds = %if.end
  %71 = load %struct.class_compat*, %struct.class_compat** %cls, align 8, !dbg !5060
  %72 = bitcast %struct.class_compat* %71 to i8*, !dbg !5060
  call void @kfree(i8* %72) #7, !dbg !5062
  store %struct.class_compat* null, %struct.class_compat** %retval, align 8, !dbg !5063
  br label %return, !dbg !5063

if.end6:                                          ; preds = %if.end
  %73 = load %struct.class_compat*, %struct.class_compat** %cls, align 8, !dbg !5064
  store %struct.class_compat* %73, %struct.class_compat** %retval, align 8, !dbg !5065
  br label %return, !dbg !5065

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %74 = load %struct.class_compat*, %struct.class_compat** %retval, align 8, !dbg !5066
  ret %struct.class_compat* %74, !dbg !5066
}

; Function Attrs: noredzone
declare dso_local %struct.kobject* @kobject_create_and_add(i8*, %struct.kobject*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @class_compat_unregister(%struct.class_compat* %cls) #0 !dbg !5067 {
entry:
  %cls.addr = alloca %struct.class_compat*, align 8
  store %struct.class_compat* %cls, %struct.class_compat** %cls.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class_compat** %cls.addr, metadata !5070, metadata !DIExpression()), !dbg !5071
  %0 = load %struct.class_compat*, %struct.class_compat** %cls.addr, align 8, !dbg !5072
  %kobj = getelementptr inbounds %struct.class_compat, %struct.class_compat* %0, i32 0, i32 0, !dbg !5073
  %1 = load %struct.kobject*, %struct.kobject** %kobj, align 8, !dbg !5073
  call void @kobject_put(%struct.kobject* %1) #7, !dbg !5074
  %2 = load %struct.class_compat*, %struct.class_compat** %cls.addr, align 8, !dbg !5075
  %3 = bitcast %struct.class_compat* %2 to i8*, !dbg !5075
  call void @kfree(i8* %3) #7, !dbg !5076
  ret void, !dbg !5077
}

; Function Attrs: noredzone
declare dso_local void @kobject_put(%struct.kobject*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @class_compat_create_link(%struct.class_compat* %cls, %struct.device* %dev, %struct.device* %device_link) #0 !dbg !5078 {
entry:
  %retval = alloca i32, align 4
  %cls.addr = alloca %struct.class_compat*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %device_link.addr = alloca %struct.device*, align 8
  %error = alloca i32, align 4
  store %struct.class_compat* %cls, %struct.class_compat** %cls.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class_compat** %cls.addr, metadata !5081, metadata !DIExpression()), !dbg !5082
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5083, metadata !DIExpression()), !dbg !5084
  store %struct.device* %device_link, %struct.device** %device_link.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device_link.addr, metadata !5085, metadata !DIExpression()), !dbg !5086
  call void @llvm.dbg.declare(metadata i32* %error, metadata !5087, metadata !DIExpression()), !dbg !5088
  %0 = load %struct.class_compat*, %struct.class_compat** %cls.addr, align 8, !dbg !5089
  %kobj = getelementptr inbounds %struct.class_compat, %struct.class_compat* %0, i32 0, i32 0, !dbg !5090
  %1 = load %struct.kobject*, %struct.kobject** %kobj, align 8, !dbg !5090
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5091
  %kobj1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 0, !dbg !5092
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5093
  %call = call i8* @dev_name(%struct.device* %3) #7, !dbg !5094
  %call2 = call i32 @sysfs_create_link(%struct.kobject* %1, %struct.kobject* %kobj1, i8* %call) #7, !dbg !5095
  store i32 %call2, i32* %error, align 4, !dbg !5096
  %4 = load i32, i32* %error, align 4, !dbg !5097
  %tobool = icmp ne i32 %4, 0, !dbg !5097
  br i1 %tobool, label %if.then, label %if.end, !dbg !5099

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %error, align 4, !dbg !5100
  store i32 %5, i32* %retval, align 4, !dbg !5101
  br label %return, !dbg !5101

if.end:                                           ; preds = %entry
  %6 = load %struct.device*, %struct.device** %device_link.addr, align 8, !dbg !5102
  %tobool3 = icmp ne %struct.device* %6, null, !dbg !5102
  br i1 %tobool3, label %if.then4, label %if.end13, !dbg !5104

if.then4:                                         ; preds = %if.end
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5105
  %kobj5 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0, !dbg !5107
  %8 = load %struct.device*, %struct.device** %device_link.addr, align 8, !dbg !5108
  %kobj6 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0, !dbg !5109
  %call7 = call i32 @sysfs_create_link(%struct.kobject* %kobj5, %struct.kobject* %kobj6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !5110
  store i32 %call7, i32* %error, align 4, !dbg !5111
  %9 = load i32, i32* %error, align 4, !dbg !5112
  %tobool8 = icmp ne i32 %9, 0, !dbg !5112
  br i1 %tobool8, label %if.then9, label %if.end12, !dbg !5114

if.then9:                                         ; preds = %if.then4
  %10 = load %struct.class_compat*, %struct.class_compat** %cls.addr, align 8, !dbg !5115
  %kobj10 = getelementptr inbounds %struct.class_compat, %struct.class_compat* %10, i32 0, i32 0, !dbg !5116
  %11 = load %struct.kobject*, %struct.kobject** %kobj10, align 8, !dbg !5116
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5117
  %call11 = call i8* @dev_name(%struct.device* %12) #7, !dbg !5118
  call void @sysfs_remove_link(%struct.kobject* %11, i8* %call11) #7, !dbg !5119
  br label %if.end12, !dbg !5119

if.end12:                                         ; preds = %if.then9, %if.then4
  br label %if.end13, !dbg !5120

if.end13:                                         ; preds = %if.end12, %if.end
  %13 = load i32, i32* %error, align 4, !dbg !5121
  store i32 %13, i32* %retval, align 4, !dbg !5122
  br label %return, !dbg !5122

return:                                           ; preds = %if.end13, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !5123
  ret i32 %14, !dbg !5123
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_link(%struct.kobject*, %struct.kobject*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !5124 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5129, metadata !DIExpression()), !dbg !5130
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5131
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !5133
  %1 = load i8*, i8** %init_name, align 8, !dbg !5133
  %tobool = icmp ne i8* %1, null, !dbg !5131
  br i1 %tobool, label %if.then, label %if.end, !dbg !5134

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5135
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !5136
  %3 = load i8*, i8** %init_name1, align 8, !dbg !5136
  store i8* %3, i8** %retval, align 8, !dbg !5137
  br label %return, !dbg !5137

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5138
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !5139
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #7, !dbg !5140
  store i8* %call, i8** %retval, align 8, !dbg !5141
  br label %return, !dbg !5141

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !5142
  ret i8* %5, !dbg !5142
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_link(%struct.kobject*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @class_compat_remove_link(%struct.class_compat* %cls, %struct.device* %dev, %struct.device* %device_link) #0 !dbg !5143 {
entry:
  %cls.addr = alloca %struct.class_compat*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %device_link.addr = alloca %struct.device*, align 8
  store %struct.class_compat* %cls, %struct.class_compat** %cls.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class_compat** %cls.addr, metadata !5146, metadata !DIExpression()), !dbg !5147
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5148, metadata !DIExpression()), !dbg !5149
  store %struct.device* %device_link, %struct.device** %device_link.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device_link.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  %0 = load %struct.device*, %struct.device** %device_link.addr, align 8, !dbg !5152
  %tobool = icmp ne %struct.device* %0, null, !dbg !5152
  br i1 %tobool, label %if.then, label %if.end, !dbg !5154

if.then:                                          ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5155
  %kobj = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 0, !dbg !5156
  call void @sysfs_remove_link(%struct.kobject* %kobj, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !5157
  br label %if.end, !dbg !5157

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.class_compat*, %struct.class_compat** %cls.addr, align 8, !dbg !5158
  %kobj1 = getelementptr inbounds %struct.class_compat, %struct.class_compat* %2, i32 0, i32 0, !dbg !5159
  %3 = load %struct.kobject*, %struct.kobject** %kobj1, align 8, !dbg !5159
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5160
  %call = call i8* @dev_name(%struct.device* %4) #7, !dbg !5161
  call void @sysfs_remove_link(%struct.kobject* %3, i8* %call) #7, !dbg !5162
  ret void, !dbg !5163
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @classes_init() #3 section ".init.text" !dbg !5164 {
entry:
  %retval = alloca i32, align 4
  %call = call %struct.kset* @kset_create_and_add(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), %struct.kset_uevent_ops* null, %struct.kobject* null) #7, !dbg !5167
  store %struct.kset* %call, %struct.kset** @class_kset, align 8, !dbg !5168
  %0 = load %struct.kset*, %struct.kset** @class_kset, align 8, !dbg !5169
  %tobool = icmp ne %struct.kset* %0, null, !dbg !5169
  br i1 %tobool, label %if.end, label %if.then, !dbg !5171

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5172
  br label %return, !dbg !5172

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5173
  br label %return, !dbg !5173

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, align 4, !dbg !5174
  ret i32 %1, !dbg !5174
}

; Function Attrs: noredzone
declare dso_local %struct.kset* @kset_create_and_add(i8*, %struct.kset_uevent_ops*, %struct.kobject*) #2

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @class_release(%struct.kobject* %kobj) #0 !dbg !5175 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %cp = alloca %struct.subsys_private*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.subsys_private*, align 8
  %class = alloca %struct.class*, align 8
  %tmp2 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5176, metadata !DIExpression()), !dbg !5177
  call void @llvm.dbg.declare(metadata %struct.subsys_private** %cp, metadata !5178, metadata !DIExpression()), !dbg !5179
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5180, metadata !DIExpression()), !dbg !5182
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5182
  %1 = bitcast %struct.kobject* %0 to i8*, !dbg !5182
  store i8* %1, i8** %__mptr, align 8, !dbg !5182
  br label %do.body, !dbg !5182

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5183

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5182
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !5182
  %3 = bitcast i8* %add.ptr to %struct.subsys_private*, !dbg !5182
  store %struct.subsys_private* %3, %struct.subsys_private** %tmp, align 8, !dbg !5183
  %4 = load %struct.subsys_private*, %struct.subsys_private** %tmp, align 8, !dbg !5182
  store %struct.subsys_private* %4, %struct.subsys_private** %cp, align 8, !dbg !5179
  call void @llvm.dbg.declare(metadata %struct.class** %class, metadata !5185, metadata !DIExpression()), !dbg !5186
  %5 = load %struct.subsys_private*, %struct.subsys_private** %cp, align 8, !dbg !5187
  %class1 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %5, i32 0, i32 11, !dbg !5188
  %6 = load %struct.class*, %struct.class** %class1, align 8, !dbg !5188
  store %struct.class* %6, %struct.class** %class, align 8, !dbg !5186
  store i32 0, i32* %tmp2, align 4, !dbg !5189
  %7 = load i32, i32* %tmp2, align 4, !dbg !5192
  %8 = load %struct.class*, %struct.class** %class, align 8, !dbg !5193
  %class_release = getelementptr inbounds %struct.class, %struct.class* %8, i32 0, i32 7, !dbg !5195
  %9 = load void (%struct.class*)*, void (%struct.class*)** %class_release, align 8, !dbg !5195
  %tobool = icmp ne void (%struct.class*)* %9, null, !dbg !5193
  br i1 %tobool, label %if.then, label %if.else, !dbg !5196

if.then:                                          ; preds = %do.end
  %10 = load %struct.class*, %struct.class** %class, align 8, !dbg !5197
  %class_release3 = getelementptr inbounds %struct.class, %struct.class* %10, i32 0, i32 7, !dbg !5198
  %11 = load void (%struct.class*)*, void (%struct.class*)** %class_release3, align 8, !dbg !5198
  %12 = load %struct.class*, %struct.class** %class, align 8, !dbg !5199
  call void %11(%struct.class* %12) #7, !dbg !5197
  br label %if.end, !dbg !5197

if.else:                                          ; preds = %do.end
  store i32 0, i32* %tmp4, align 4, !dbg !5200
  %13 = load i32, i32* %tmp4, align 4, !dbg !5203
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct.subsys_private*, %struct.subsys_private** %cp, align 8, !dbg !5204
  %15 = bitcast %struct.subsys_private* %14 to i8*, !dbg !5204
  call void @kfree(i8* %15) #7, !dbg !5205
  ret void, !dbg !5206
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.kobj_ns_type_operations* @class_child_ns_type(%struct.kobject* %kobj) #0 !dbg !5207 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %cp = alloca %struct.subsys_private*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.subsys_private*, align 8
  %class = alloca %struct.class*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5208, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.declare(metadata %struct.subsys_private** %cp, metadata !5210, metadata !DIExpression()), !dbg !5211
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5212, metadata !DIExpression()), !dbg !5214
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5214
  %1 = bitcast %struct.kobject* %0 to i8*, !dbg !5214
  store i8* %1, i8** %__mptr, align 8, !dbg !5214
  br label %do.body, !dbg !5214

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5215

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5214
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !5214
  %3 = bitcast i8* %add.ptr to %struct.subsys_private*, !dbg !5214
  store %struct.subsys_private* %3, %struct.subsys_private** %tmp, align 8, !dbg !5215
  %4 = load %struct.subsys_private*, %struct.subsys_private** %tmp, align 8, !dbg !5214
  store %struct.subsys_private* %4, %struct.subsys_private** %cp, align 8, !dbg !5211
  call void @llvm.dbg.declare(metadata %struct.class** %class, metadata !5217, metadata !DIExpression()), !dbg !5218
  %5 = load %struct.subsys_private*, %struct.subsys_private** %cp, align 8, !dbg !5219
  %class1 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %5, i32 0, i32 11, !dbg !5220
  %6 = load %struct.class*, %struct.class** %class1, align 8, !dbg !5220
  store %struct.class* %6, %struct.class** %class, align 8, !dbg !5218
  %7 = load %struct.class*, %struct.class** %class, align 8, !dbg !5221
  %ns_type = getelementptr inbounds %struct.class, %struct.class* %7, i32 0, i32 10, !dbg !5222
  %8 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** %ns_type, align 8, !dbg !5222
  ret %struct.kobj_ns_type_operations* %8, !dbg !5223
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @class_attr_show(%struct.kobject* %kobj, %struct.attribute* %attr, i8* %buf) #0 !dbg !5224 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %class_attr = alloca %struct.class_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.class_attribute*, align 8
  %cp = alloca %struct.subsys_private*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.subsys_private*, align 8
  %ret = alloca i64, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5225, metadata !DIExpression()), !dbg !5226
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !5227, metadata !DIExpression()), !dbg !5228
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5229, metadata !DIExpression()), !dbg !5230
  call void @llvm.dbg.declare(metadata %struct.class_attribute** %class_attr, metadata !5231, metadata !DIExpression()), !dbg !5232
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5233, metadata !DIExpression()), !dbg !5235
  %0 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !5235
  %1 = bitcast %struct.attribute* %0 to i8*, !dbg !5235
  store i8* %1, i8** %__mptr, align 8, !dbg !5235
  br label %do.body, !dbg !5235

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5236

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5235
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5235
  %3 = bitcast i8* %add.ptr to %struct.class_attribute*, !dbg !5235
  store %struct.class_attribute* %3, %struct.class_attribute** %tmp, align 8, !dbg !5236
  %4 = load %struct.class_attribute*, %struct.class_attribute** %tmp, align 8, !dbg !5235
  store %struct.class_attribute* %4, %struct.class_attribute** %class_attr, align 8, !dbg !5232
  call void @llvm.dbg.declare(metadata %struct.subsys_private** %cp, metadata !5238, metadata !DIExpression()), !dbg !5239
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5240, metadata !DIExpression()), !dbg !5242
  %5 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5242
  %6 = bitcast %struct.kobject* %5 to i8*, !dbg !5242
  store i8* %6, i8** %__mptr1, align 8, !dbg !5242
  br label %do.body2, !dbg !5242

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !5243

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !5242
  %add.ptr5 = getelementptr i8, i8* %7, i64 -16, !dbg !5242
  %8 = bitcast i8* %add.ptr5 to %struct.subsys_private*, !dbg !5242
  store %struct.subsys_private* %8, %struct.subsys_private** %tmp4, align 8, !dbg !5243
  %9 = load %struct.subsys_private*, %struct.subsys_private** %tmp4, align 8, !dbg !5242
  store %struct.subsys_private* %9, %struct.subsys_private** %cp, align 8, !dbg !5239
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !5245, metadata !DIExpression()), !dbg !5246
  store i64 -5, i64* %ret, align 8, !dbg !5246
  %10 = load %struct.class_attribute*, %struct.class_attribute** %class_attr, align 8, !dbg !5247
  %show = getelementptr inbounds %struct.class_attribute, %struct.class_attribute* %10, i32 0, i32 1, !dbg !5249
  %11 = load i64 (%struct.class*, %struct.class_attribute*, i8*)*, i64 (%struct.class*, %struct.class_attribute*, i8*)** %show, align 8, !dbg !5249
  %tobool = icmp ne i64 (%struct.class*, %struct.class_attribute*, i8*)* %11, null, !dbg !5247
  br i1 %tobool, label %if.then, label %if.end, !dbg !5250

if.then:                                          ; preds = %do.end3
  %12 = load %struct.class_attribute*, %struct.class_attribute** %class_attr, align 8, !dbg !5251
  %show6 = getelementptr inbounds %struct.class_attribute, %struct.class_attribute* %12, i32 0, i32 1, !dbg !5252
  %13 = load i64 (%struct.class*, %struct.class_attribute*, i8*)*, i64 (%struct.class*, %struct.class_attribute*, i8*)** %show6, align 8, !dbg !5252
  %14 = load %struct.subsys_private*, %struct.subsys_private** %cp, align 8, !dbg !5253
  %class = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %14, i32 0, i32 11, !dbg !5254
  %15 = load %struct.class*, %struct.class** %class, align 8, !dbg !5254
  %16 = load %struct.class_attribute*, %struct.class_attribute** %class_attr, align 8, !dbg !5255
  %17 = load i8*, i8** %buf.addr, align 8, !dbg !5256
  %call = call i64 %13(%struct.class* %15, %struct.class_attribute* %16, i8* %17) #7, !dbg !5251
  store i64 %call, i64* %ret, align 8, !dbg !5257
  br label %if.end, !dbg !5258

if.end:                                           ; preds = %if.then, %do.end3
  %18 = load i64, i64* %ret, align 8, !dbg !5259
  ret i64 %18, !dbg !5260
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @class_attr_store(%struct.kobject* %kobj, %struct.attribute* %attr, i8* %buf, i64 %count) #0 !dbg !5261 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %class_attr = alloca %struct.class_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.class_attribute*, align 8
  %cp = alloca %struct.subsys_private*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.subsys_private*, align 8
  %ret = alloca i64, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5262, metadata !DIExpression()), !dbg !5263
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !5264, metadata !DIExpression()), !dbg !5265
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5266, metadata !DIExpression()), !dbg !5267
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5268, metadata !DIExpression()), !dbg !5269
  call void @llvm.dbg.declare(metadata %struct.class_attribute** %class_attr, metadata !5270, metadata !DIExpression()), !dbg !5271
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5272, metadata !DIExpression()), !dbg !5274
  %0 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !5274
  %1 = bitcast %struct.attribute* %0 to i8*, !dbg !5274
  store i8* %1, i8** %__mptr, align 8, !dbg !5274
  br label %do.body, !dbg !5274

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5275

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5274
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5274
  %3 = bitcast i8* %add.ptr to %struct.class_attribute*, !dbg !5274
  store %struct.class_attribute* %3, %struct.class_attribute** %tmp, align 8, !dbg !5275
  %4 = load %struct.class_attribute*, %struct.class_attribute** %tmp, align 8, !dbg !5274
  store %struct.class_attribute* %4, %struct.class_attribute** %class_attr, align 8, !dbg !5271
  call void @llvm.dbg.declare(metadata %struct.subsys_private** %cp, metadata !5277, metadata !DIExpression()), !dbg !5278
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5279, metadata !DIExpression()), !dbg !5281
  %5 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5281
  %6 = bitcast %struct.kobject* %5 to i8*, !dbg !5281
  store i8* %6, i8** %__mptr1, align 8, !dbg !5281
  br label %do.body2, !dbg !5281

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !5282

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !5281
  %add.ptr5 = getelementptr i8, i8* %7, i64 -16, !dbg !5281
  %8 = bitcast i8* %add.ptr5 to %struct.subsys_private*, !dbg !5281
  store %struct.subsys_private* %8, %struct.subsys_private** %tmp4, align 8, !dbg !5282
  %9 = load %struct.subsys_private*, %struct.subsys_private** %tmp4, align 8, !dbg !5281
  store %struct.subsys_private* %9, %struct.subsys_private** %cp, align 8, !dbg !5278
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !5284, metadata !DIExpression()), !dbg !5285
  store i64 -5, i64* %ret, align 8, !dbg !5285
  %10 = load %struct.class_attribute*, %struct.class_attribute** %class_attr, align 8, !dbg !5286
  %store = getelementptr inbounds %struct.class_attribute, %struct.class_attribute* %10, i32 0, i32 2, !dbg !5288
  %11 = load i64 (%struct.class*, %struct.class_attribute*, i8*, i64)*, i64 (%struct.class*, %struct.class_attribute*, i8*, i64)** %store, align 8, !dbg !5288
  %tobool = icmp ne i64 (%struct.class*, %struct.class_attribute*, i8*, i64)* %11, null, !dbg !5286
  br i1 %tobool, label %if.then, label %if.end, !dbg !5289

if.then:                                          ; preds = %do.end3
  %12 = load %struct.class_attribute*, %struct.class_attribute** %class_attr, align 8, !dbg !5290
  %store6 = getelementptr inbounds %struct.class_attribute, %struct.class_attribute* %12, i32 0, i32 2, !dbg !5291
  %13 = load i64 (%struct.class*, %struct.class_attribute*, i8*, i64)*, i64 (%struct.class*, %struct.class_attribute*, i8*, i64)** %store6, align 8, !dbg !5291
  %14 = load %struct.subsys_private*, %struct.subsys_private** %cp, align 8, !dbg !5292
  %class = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %14, i32 0, i32 11, !dbg !5293
  %15 = load %struct.class*, %struct.class** %class, align 8, !dbg !5293
  %16 = load %struct.class_attribute*, %struct.class_attribute** %class_attr, align 8, !dbg !5294
  %17 = load i8*, i8** %buf.addr, align 8, !dbg !5295
  %18 = load i64, i64* %count.addr, align 8, !dbg !5296
  %call = call i64 %13(%struct.class* %15, %struct.class_attribute* %16, i8* %17, i64 %18) #7, !dbg !5290
  store i64 %call, i64* %ret, align 8, !dbg !5297
  br label %if.end, !dbg !5298

if.end:                                           ; preds = %if.then, %do.end3
  %19 = load i64, i64* %ret, align 8, !dbg !5299
  ret i64 %19, !dbg !5300
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_groups(%struct.kobject*, %struct.attribute_group**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.kset* @kset_get(%struct.kset* %k) #0 !dbg !5301 {
entry:
  %k.addr = alloca %struct.kset*, align 8
  store %struct.kset* %k, %struct.kset** %k.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kset** %k.addr, metadata !5304, metadata !DIExpression()), !dbg !5305
  %0 = load %struct.kset*, %struct.kset** %k.addr, align 8, !dbg !5306
  %tobool = icmp ne %struct.kset* %0, null, !dbg !5306
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5306

cond.true:                                        ; preds = %entry
  %1 = load %struct.kset*, %struct.kset** %k.addr, align 8, !dbg !5307
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %1, i32 0, i32 2, !dbg !5308
  %call = call %struct.kobject* @kobject_get(%struct.kobject* %kobj) #7, !dbg !5309
  %call1 = call %struct.kset* @to_kset(%struct.kobject* %call) #7, !dbg !5310
  br label %cond.end, !dbg !5306

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5306

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.kset* [ %call1, %cond.true ], [ null, %cond.false ], !dbg !5306
  ret %struct.kset* %cond, !dbg !5311
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.kset* @to_kset(%struct.kobject* %kobj) #0 !dbg !5312 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.kset*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5315, metadata !DIExpression()), !dbg !5316
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5317
  %tobool = icmp ne %struct.kobject* %0, null, !dbg !5317
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5317

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5318, metadata !DIExpression()), !dbg !5320
  %1 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5320
  %2 = bitcast %struct.kobject* %1 to i8*, !dbg !5320
  store i8* %2, i8** %__mptr, align 8, !dbg !5320
  br label %do.body, !dbg !5320

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !5321

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5320
  %add.ptr = getelementptr i8, i8* %3, i64 -16, !dbg !5320
  %4 = bitcast i8* %add.ptr to %struct.kset*, !dbg !5320
  store %struct.kset* %4, %struct.kset** %tmp, align 8, !dbg !5321
  %5 = load %struct.kset*, %struct.kset** %tmp, align 8, !dbg !5320
  br label %cond.end, !dbg !5317

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5317

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.kset* [ %5, %do.end ], [ null, %cond.false ], !dbg !5317
  ret %struct.kset* %cond, !dbg !5323
}

; Function Attrs: noredzone
declare dso_local %struct.kobject* @kobject_get(%struct.kobject*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kset_put(%struct.kset* %k) #0 !dbg !5324 {
entry:
  %k.addr = alloca %struct.kset*, align 8
  store %struct.kset* %k, %struct.kset** %k.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kset** %k.addr, metadata !5327, metadata !DIExpression()), !dbg !5328
  %0 = load %struct.kset*, %struct.kset** %k.addr, align 8, !dbg !5329
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %0, i32 0, i32 2, !dbg !5330
  call void @kobject_put(%struct.kobject* %kobj) #7, !dbg !5331
  ret void, !dbg !5332
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_groups(%struct.kobject*, %struct.attribute_group**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5333 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5336, metadata !DIExpression()), !dbg !5337
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5338, metadata !DIExpression()), !dbg !5339
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5340, metadata !DIExpression()), !dbg !5341
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5342
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5344
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5345
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #7, !dbg !5346
  br i1 %call, label %if.end, label %if.then, !dbg !5347

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5348

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5349
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5350
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5351
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5352
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5353
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5354
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5355
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5356
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5357
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5358
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5359
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5360
  br label %do.body, !dbg !5361

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5362

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5364

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5362

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5366
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5366
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5366
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5366
  br label %do.end7, !dbg !5366

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5362

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5368
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5369 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5372, metadata !DIExpression()), !dbg !5373
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5374, metadata !DIExpression()), !dbg !5375
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5376, metadata !DIExpression()), !dbg !5377
  ret i1 true, !dbg !5378
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5379 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5380, metadata !DIExpression()), !dbg !5381
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5382
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #7, !dbg !5384
  br i1 %call, label %if.end, label %if.then, !dbg !5385

if.then:                                          ; preds = %entry
  br label %return, !dbg !5386

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5387
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5388
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5388
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5389
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5390
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5390
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #7, !dbg !5391
  br label %return, !dbg !5392

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5392
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5393 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5396, metadata !DIExpression()), !dbg !5397
  ret i1 true, !dbg !5398
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5399 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5400, metadata !DIExpression()), !dbg !5401
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5402, metadata !DIExpression()), !dbg !5403
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5404
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5405
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5406
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5407
  br label %do.body, !dbg !5408

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5409

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5411

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5409

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5413
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5413
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5413
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5413
  br label %do.end5, !dbg !5413

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5409

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5415
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !5416 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5420, metadata !DIExpression()), !dbg !5425
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5427, metadata !DIExpression()), !dbg !5428
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5429, metadata !DIExpression()), !dbg !5430
  %0 = load i64, i64* %size.addr, align 8, !dbg !5431
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5433
  br i1 %1, label %if.then, label %if.end447, !dbg !5434

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5435
  %tobool = icmp ne i64 %2, 0, !dbg !5435
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5438

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5439
  br label %return, !dbg !5439

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5440
  %cmp = icmp ult i64 %3, 4096, !dbg !5442
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5443

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5444
  br label %return, !dbg !5444

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub = sub i64 %4, 1, !dbg !5445
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5445
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5445

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub4 = sub i64 %6, 1, !dbg !5445
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5445
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5445

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub6 = sub i64 %8, 1, !dbg !5445
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5445
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5445

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5445

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub9 = sub i64 %9, 1, !dbg !5445
  %and = and i64 %sub9, -9223372036854775808, !dbg !5445
  %tobool10 = icmp ne i64 %and, 0, !dbg !5445
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5445

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5445

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub13 = sub i64 %10, 1, !dbg !5445
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5445
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5445
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5445

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5445

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub18 = sub i64 %11, 1, !dbg !5445
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5445
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5445
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5445

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5445

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub23 = sub i64 %12, 1, !dbg !5445
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5445
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5445
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5445

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5445

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub28 = sub i64 %13, 1, !dbg !5445
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5445
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5445
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5445

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5445

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub33 = sub i64 %14, 1, !dbg !5445
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5445
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5445
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5445

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5445

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub38 = sub i64 %15, 1, !dbg !5445
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5445
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5445
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5445

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5445

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub43 = sub i64 %16, 1, !dbg !5445
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5445
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5445
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5445

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5445

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub48 = sub i64 %17, 1, !dbg !5445
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5445
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5445
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5445

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5445

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub53 = sub i64 %18, 1, !dbg !5445
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5445
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5445
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5445

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5445

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub58 = sub i64 %19, 1, !dbg !5445
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5445
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5445
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5445

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5445

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub63 = sub i64 %20, 1, !dbg !5445
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5445
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5445
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5445

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5445

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub68 = sub i64 %21, 1, !dbg !5445
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5445
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5445
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5445

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5445

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub73 = sub i64 %22, 1, !dbg !5445
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5445
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5445
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5445

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5445

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub78 = sub i64 %23, 1, !dbg !5445
  %and79 = and i64 %sub78, 562949953421312, !dbg !5445
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5445
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5445

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5445

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub83 = sub i64 %24, 1, !dbg !5445
  %and84 = and i64 %sub83, 281474976710656, !dbg !5445
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5445
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5445

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5445

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub88 = sub i64 %25, 1, !dbg !5445
  %and89 = and i64 %sub88, 140737488355328, !dbg !5445
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5445
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5445

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5445

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub93 = sub i64 %26, 1, !dbg !5445
  %and94 = and i64 %sub93, 70368744177664, !dbg !5445
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5445
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5445

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5445

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub98 = sub i64 %27, 1, !dbg !5445
  %and99 = and i64 %sub98, 35184372088832, !dbg !5445
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5445
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5445

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5445

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub103 = sub i64 %28, 1, !dbg !5445
  %and104 = and i64 %sub103, 17592186044416, !dbg !5445
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5445
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5445

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5445

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub108 = sub i64 %29, 1, !dbg !5445
  %and109 = and i64 %sub108, 8796093022208, !dbg !5445
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5445
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5445

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5445

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub113 = sub i64 %30, 1, !dbg !5445
  %and114 = and i64 %sub113, 4398046511104, !dbg !5445
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5445
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5445

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5445

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub118 = sub i64 %31, 1, !dbg !5445
  %and119 = and i64 %sub118, 2199023255552, !dbg !5445
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5445
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5445

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5445

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub123 = sub i64 %32, 1, !dbg !5445
  %and124 = and i64 %sub123, 1099511627776, !dbg !5445
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5445
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5445

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5445

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub128 = sub i64 %33, 1, !dbg !5445
  %and129 = and i64 %sub128, 549755813888, !dbg !5445
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5445
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5445

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5445

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub133 = sub i64 %34, 1, !dbg !5445
  %and134 = and i64 %sub133, 274877906944, !dbg !5445
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5445
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5445

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5445

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub138 = sub i64 %35, 1, !dbg !5445
  %and139 = and i64 %sub138, 137438953472, !dbg !5445
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5445
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5445

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5445

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub143 = sub i64 %36, 1, !dbg !5445
  %and144 = and i64 %sub143, 68719476736, !dbg !5445
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5445
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5445

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5445

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub148 = sub i64 %37, 1, !dbg !5445
  %and149 = and i64 %sub148, 34359738368, !dbg !5445
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5445
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5445

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5445

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub153 = sub i64 %38, 1, !dbg !5445
  %and154 = and i64 %sub153, 17179869184, !dbg !5445
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5445
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5445

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5445

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub158 = sub i64 %39, 1, !dbg !5445
  %and159 = and i64 %sub158, 8589934592, !dbg !5445
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5445
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5445

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5445

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub163 = sub i64 %40, 1, !dbg !5445
  %and164 = and i64 %sub163, 4294967296, !dbg !5445
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5445
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5445

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5445

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub168 = sub i64 %41, 1, !dbg !5445
  %and169 = and i64 %sub168, 2147483648, !dbg !5445
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5445
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5445

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5445

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub173 = sub i64 %42, 1, !dbg !5445
  %and174 = and i64 %sub173, 1073741824, !dbg !5445
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5445
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5445

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5445

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub178 = sub i64 %43, 1, !dbg !5445
  %and179 = and i64 %sub178, 536870912, !dbg !5445
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5445
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5445

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5445

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub183 = sub i64 %44, 1, !dbg !5445
  %and184 = and i64 %sub183, 268435456, !dbg !5445
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5445
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5445

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5445

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub188 = sub i64 %45, 1, !dbg !5445
  %and189 = and i64 %sub188, 134217728, !dbg !5445
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5445
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5445

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5445

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub193 = sub i64 %46, 1, !dbg !5445
  %and194 = and i64 %sub193, 67108864, !dbg !5445
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5445
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5445

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5445

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub198 = sub i64 %47, 1, !dbg !5445
  %and199 = and i64 %sub198, 33554432, !dbg !5445
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5445
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5445

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5445

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub203 = sub i64 %48, 1, !dbg !5445
  %and204 = and i64 %sub203, 16777216, !dbg !5445
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5445
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5445

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5445

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub208 = sub i64 %49, 1, !dbg !5445
  %and209 = and i64 %sub208, 8388608, !dbg !5445
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5445
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5445

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5445

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub213 = sub i64 %50, 1, !dbg !5445
  %and214 = and i64 %sub213, 4194304, !dbg !5445
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5445
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5445

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5445

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub218 = sub i64 %51, 1, !dbg !5445
  %and219 = and i64 %sub218, 2097152, !dbg !5445
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5445
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5445

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5445

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub223 = sub i64 %52, 1, !dbg !5445
  %and224 = and i64 %sub223, 1048576, !dbg !5445
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5445
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5445

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5445

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub228 = sub i64 %53, 1, !dbg !5445
  %and229 = and i64 %sub228, 524288, !dbg !5445
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5445
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5445

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5445

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub233 = sub i64 %54, 1, !dbg !5445
  %and234 = and i64 %sub233, 262144, !dbg !5445
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5445
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5445

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5445

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub238 = sub i64 %55, 1, !dbg !5445
  %and239 = and i64 %sub238, 131072, !dbg !5445
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5445
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5445

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5445

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub243 = sub i64 %56, 1, !dbg !5445
  %and244 = and i64 %sub243, 65536, !dbg !5445
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5445
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5445

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5445

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub248 = sub i64 %57, 1, !dbg !5445
  %and249 = and i64 %sub248, 32768, !dbg !5445
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5445
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5445

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5445

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub253 = sub i64 %58, 1, !dbg !5445
  %and254 = and i64 %sub253, 16384, !dbg !5445
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5445
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5445

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5445

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub258 = sub i64 %59, 1, !dbg !5445
  %and259 = and i64 %sub258, 8192, !dbg !5445
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5445
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5445

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5445

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub263 = sub i64 %60, 1, !dbg !5445
  %and264 = and i64 %sub263, 4096, !dbg !5445
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5445
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5445

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5445

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub268 = sub i64 %61, 1, !dbg !5445
  %and269 = and i64 %sub268, 2048, !dbg !5445
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5445
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5445

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5445

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub273 = sub i64 %62, 1, !dbg !5445
  %and274 = and i64 %sub273, 1024, !dbg !5445
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5445
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5445

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5445

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub278 = sub i64 %63, 1, !dbg !5445
  %and279 = and i64 %sub278, 512, !dbg !5445
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5445
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5445

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5445

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub283 = sub i64 %64, 1, !dbg !5445
  %and284 = and i64 %sub283, 256, !dbg !5445
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5445
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5445

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5445

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub288 = sub i64 %65, 1, !dbg !5445
  %and289 = and i64 %sub288, 128, !dbg !5445
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5445
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5445

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5445

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub293 = sub i64 %66, 1, !dbg !5445
  %and294 = and i64 %sub293, 64, !dbg !5445
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5445
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5445

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5445

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub298 = sub i64 %67, 1, !dbg !5445
  %and299 = and i64 %sub298, 32, !dbg !5445
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5445
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5445

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5445

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub303 = sub i64 %68, 1, !dbg !5445
  %and304 = and i64 %sub303, 16, !dbg !5445
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5445
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5445

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5445

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub308 = sub i64 %69, 1, !dbg !5445
  %and309 = and i64 %sub308, 8, !dbg !5445
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5445
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5445

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5445

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub313 = sub i64 %70, 1, !dbg !5445
  %and314 = and i64 %sub313, 4, !dbg !5445
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5445
  %71 = zext i1 %tobool315 to i64, !dbg !5445
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5445
  br label %cond.end, !dbg !5445

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5445
  br label %cond.end317, !dbg !5445

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5445
  br label %cond.end319, !dbg !5445

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5445
  br label %cond.end321, !dbg !5445

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5445
  br label %cond.end323, !dbg !5445

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5445
  br label %cond.end325, !dbg !5445

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5445
  br label %cond.end327, !dbg !5445

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5445
  br label %cond.end329, !dbg !5445

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5445
  br label %cond.end331, !dbg !5445

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5445
  br label %cond.end333, !dbg !5445

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5445
  br label %cond.end335, !dbg !5445

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5445
  br label %cond.end337, !dbg !5445

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5445
  br label %cond.end339, !dbg !5445

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5445
  br label %cond.end341, !dbg !5445

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5445
  br label %cond.end343, !dbg !5445

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5445
  br label %cond.end345, !dbg !5445

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5445
  br label %cond.end347, !dbg !5445

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5445
  br label %cond.end349, !dbg !5445

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5445
  br label %cond.end351, !dbg !5445

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5445
  br label %cond.end353, !dbg !5445

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5445
  br label %cond.end355, !dbg !5445

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5445
  br label %cond.end357, !dbg !5445

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5445
  br label %cond.end359, !dbg !5445

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5445
  br label %cond.end361, !dbg !5445

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5445
  br label %cond.end363, !dbg !5445

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5445
  br label %cond.end365, !dbg !5445

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5445
  br label %cond.end367, !dbg !5445

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5445
  br label %cond.end369, !dbg !5445

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5445
  br label %cond.end371, !dbg !5445

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5445
  br label %cond.end373, !dbg !5445

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5445
  br label %cond.end375, !dbg !5445

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5445
  br label %cond.end377, !dbg !5445

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5445
  br label %cond.end379, !dbg !5445

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5445
  br label %cond.end381, !dbg !5445

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5445
  br label %cond.end383, !dbg !5445

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5445
  br label %cond.end385, !dbg !5445

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5445
  br label %cond.end387, !dbg !5445

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5445
  br label %cond.end389, !dbg !5445

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5445
  br label %cond.end391, !dbg !5445

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5445
  br label %cond.end393, !dbg !5445

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5445
  br label %cond.end395, !dbg !5445

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5445
  br label %cond.end397, !dbg !5445

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5445
  br label %cond.end399, !dbg !5445

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5445
  br label %cond.end401, !dbg !5445

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5445
  br label %cond.end403, !dbg !5445

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5445
  br label %cond.end405, !dbg !5445

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5445
  br label %cond.end407, !dbg !5445

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5445
  br label %cond.end409, !dbg !5445

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5445
  br label %cond.end411, !dbg !5445

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5445
  br label %cond.end413, !dbg !5445

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5445
  br label %cond.end415, !dbg !5445

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5445
  br label %cond.end417, !dbg !5445

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5445
  br label %cond.end419, !dbg !5445

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5445
  br label %cond.end421, !dbg !5445

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5445
  br label %cond.end423, !dbg !5445

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5445
  br label %cond.end425, !dbg !5445

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5445
  br label %cond.end427, !dbg !5445

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5445
  br label %cond.end429, !dbg !5445

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5445
  br label %cond.end431, !dbg !5445

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5445
  br label %cond.end433, !dbg !5445

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5445
  br label %cond.end435, !dbg !5445

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5445
  br label %cond.end437, !dbg !5445

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5445
  br label %cond.end440, !dbg !5445

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5445

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5445
  br label %cond.end444, !dbg !5445

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5445
  %sub443 = sub i64 %72, 1, !dbg !5445
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !5445
  br label %cond.end444, !dbg !5445

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5445
  %sub446 = sub i32 %cond445, 12, !dbg !5446
  %add = add i32 %sub446, 1, !dbg !5447
  store i32 %add, i32* %retval, align 4, !dbg !5448
  br label %return, !dbg !5448

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5449
  %dec = add i64 %73, -1, !dbg !5449
  store i64 %dec, i64* %size.addr, align 8, !dbg !5449
  %74 = load i64, i64* %size.addr, align 8, !dbg !5450
  %shr = lshr i64 %74, 12, !dbg !5450
  store i64 %shr, i64* %size.addr, align 8, !dbg !5450
  %75 = load i64, i64* %size.addr, align 8, !dbg !5451
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5428
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5452
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5453
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #11, !dbg !5452, !srcloc !5454
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5452
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5455
  %add.i = add i32 %79, 1, !dbg !5456
  store i32 %add.i, i32* %retval, align 4, !dbg !5457
  br label %return, !dbg !5457

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5458
  ret i32 %80, !dbg !5458
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !5459 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5420, metadata !DIExpression()), !dbg !5463
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5427, metadata !DIExpression()), !dbg !5465
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5466, metadata !DIExpression()), !dbg !5467
  %0 = load i64, i64* %n.addr, align 8, !dbg !5468
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5465
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5469
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5470
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #11, !dbg !5469, !srcloc !5454
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5469
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5471
  %add.i = add i32 %4, 1, !dbg !5472
  %sub = sub i32 %add.i, 1, !dbg !5473
  ret i32 %sub, !dbg !5474
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5475 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5479, metadata !DIExpression()), !dbg !5480
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5481, metadata !DIExpression()), !dbg !5482
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5483, metadata !DIExpression()), !dbg !5484
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5485, metadata !DIExpression()), !dbg !5486
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5487
  ret i8* %0, !dbg !5488
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !5489 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5494, metadata !DIExpression()), !dbg !5495
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5496
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !5497
  %1 = load i8*, i8** %name, align 8, !dbg !5497
  ret i8* %1, !dbg !5498
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3800, !3801, !3802, !3803}
!llvm.ident = !{!3804}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "class_kset", scope: !2, file: !3, line: 85, type: !168, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !105, globals: !3795, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/class.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !19, !25, !30, !36, !43, !49, !55, !62, !70, !76, !85, !93, !98}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !13, line: 15, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !20, line: 546, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!24 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !26, line: 65, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !31, line: 16, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !37, line: 59, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !40, !41, !42}
!39 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!40 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!42 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !44, line: 54, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!45 = !{!46, !47, !48}
!46 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!47 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !50, line: 44, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!51 = !{!52, !53, !54}
!52 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !56, line: 343, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!57 = !{!58, !59, !60, !61}
!58 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!61 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !63, line: 524, baseType: !7, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!64 = !{!65, !66, !67, !68, !69}
!65 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!66 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!67 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!68 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!69 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !63, line: 502, baseType: !7, size: 32, elements: !71)
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !77, line: 296, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!78 = !{!79, !80, !81, !82, !83, !84}
!79 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!80 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!81 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!82 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!83 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!84 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !86, line: 9, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!87 = !{!88, !89, !90, !91, !92}
!88 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!91 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!92 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 10, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97}
!96 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !99, line: 305, baseType: !7, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !102, !103, !104}
!101 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!105 = !{!106, !108, !109, !3793, !2774, !3787, !168, !253, !2664}
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !107, line: 148, baseType: !7)
!107 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class_attribute_string", file: !111, line: 226, size: 320, elements: !112)
!111 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!112 = !{!113, !3792}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !110, file: !111, line: 227, baseType: !114, size: 256)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class_attribute", file: !111, line: 191, size: 256, elements: !115)
!115 = !{!116, !127, !3788}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !114, file: !111, line: 192, baseType: !117, size: 128)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !118, line: 30, size: 128, elements: !119)
!118 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!119 = !{!120, !124}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !117, file: !118, line: 31, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !117, file: !118, line: 32, baseType: !125, size: 16, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !107, line: 19, baseType: !126)
!126 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !114, file: !111, line: 193, baseType: !128, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!131, !136, !3787, !215}
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !107, line: 60, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !133, line: 73, baseType: !134)
!133 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !133, line: 15, baseType: !135)
!135 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !111, line: 54, size: 960, elements: !138)
!138 = !{!139, !140, !144, !3763, !3764, !3765, !3766, !3770, !3774, !3775, !3776, !3777, !3781, !3785, !3786}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !137, file: !111, line: 55, baseType: !121, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !137, file: !111, line: 56, baseType: !141, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !143, line: 76, flags: DIFlagFwdDecl)
!143 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!144 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !137, file: !111, line: 58, baseType: !145, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !118, line: 84, size: 320, elements: !149)
!149 = !{!150, !151, !3741, !3760, !3761}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !148, file: !118, line: 85, baseType: !121, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !148, file: !118, line: 86, baseType: !152, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!125, !155, !245, !199}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !157, line: 64, size: 512, elements: !158)
!157 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!158 = !{!159, !160, !166, !167, !228, !315, !3735, !3736, !3737, !3738, !3739, !3740}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !156, file: !157, line: 65, baseType: !121, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !156, file: !157, line: 66, baseType: !161, size: 128, offset: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !107, line: 178, size: 128, elements: !162)
!162 = !{!163, !165}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !107, line: 179, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !161, file: !107, line: 179, baseType: !164, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !156, file: !157, line: 67, baseType: !155, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !156, file: !157, line: 68, baseType: !168, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !157, line: 192, size: 704, elements: !170)
!170 = !{!171, !172, !188, !189}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !169, file: !157, line: 193, baseType: !161, size: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !169, file: !157, line: 194, baseType: !173, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !174, line: 83, baseType: !175)
!174 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !174, line: 71, elements: !176)
!176 = !{!177}
!177 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !174, line: 72, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !175, file: !174, line: 72, elements: !179)
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !178, file: !174, line: 73, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !174, line: 20, elements: !182)
!182 = !{!183}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !181, file: !174, line: 21, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !185, line: 25, baseType: !186)
!185 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 25, elements: !187)
!187 = !{}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !169, file: !157, line: 195, baseType: !156, size: 512, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !169, file: !157, line: 196, baseType: !190, size: 64, offset: 640)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !157, line: 156, size: 192, elements: !193)
!193 = !{!194, !200, !205}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !192, file: !157, line: 157, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!199, !168, !155}
!199 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !192, file: !157, line: 158, baseType: !201, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!121, !168, !155}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !192, file: !157, line: 159, baseType: !206, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!199, !168, !155, !210}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !157, line: 148, size: 20736, elements: !212)
!212 = !{!213, !218, !222, !223, !227}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !211, file: !157, line: 149, baseType: !214, size: 192)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 192, elements: !216)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!216 = !{!217}
!217 = !DISubrange(count: 3)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !211, file: !157, line: 150, baseType: !219, size: 4096, offset: 192)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 4096, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !211, file: !157, line: 151, baseType: !199, size: 32, offset: 4288)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !211, file: !157, line: 152, baseType: !224, size: 16384, offset: 4320)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 16384, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 2048)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !211, file: !157, line: 153, baseType: !199, size: 32, offset: 20704)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !156, file: !157, line: 69, baseType: !229, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !157, line: 138, size: 448, elements: !231)
!231 = !{!232, !236, !254, !256, !257, !292, !296}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !230, file: !157, line: 139, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !155}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !230, file: !157, line: 140, baseType: !237, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !118, line: 230, size: 128, elements: !240)
!240 = !{!241, !246}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !239, file: !118, line: 231, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!131, !155, !245, !215}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !239, file: !118, line: 232, baseType: !247, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!131, !155, !245, !121, !250}
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !107, line: 55, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !133, line: 72, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !133, line: 16, baseType: !253)
!253 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !230, file: !157, line: 141, baseType: !255, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !230, file: !157, line: 142, baseType: !145, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !230, file: !157, line: 143, baseType: !258, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !155}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !264)
!264 = !{!265, !266, !272, !276, !284, !288}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !263, file: !6, line: 40, baseType: !5, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !263, file: !6, line: 41, baseType: !267, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !107, line: 30, baseType: !271)
!271 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !263, file: !6, line: 42, baseType: !273, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!108}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !263, file: !6, line: 43, baseType: !277, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!280, !282}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !263, file: !6, line: 44, baseType: !285, size: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!280}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !263, file: !6, line: 45, baseType: !289, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !108}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !230, file: !157, line: 144, baseType: !293, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!280, !155}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !230, file: !157, line: 145, baseType: !297, size: 64, offset: 384)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !155, !300, !308}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !302, line: 23, baseType: !303)
!302 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !302, line: 21, size: 32, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !303, file: !302, line: 22, baseType: !306, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !107, line: 32, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !133, line: 49, baseType: !7)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !302, line: 28, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !302, line: 26, size: 32, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !310, file: !302, line: 27, baseType: !313, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !107, line: 33, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !133, line: 50, baseType: !7)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !156, file: !157, line: 70, baseType: !316, size: 64, offset: 384)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !318, line: 123, size: 1024, elements: !319)
!318 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!319 = !{!320, !325, !326, !327, !328, !336, !337, !338, !3728, !3729, !3730, !3731, !3732}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !317, file: !318, line: 124, baseType: !321, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !107, line: 168, baseType: !322)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 166, size: 32, elements: !323)
!323 = !{!324}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !322, file: !107, line: 167, baseType: !199, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !317, file: !318, line: 125, baseType: !321, size: 32, offset: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !317, file: !318, line: 135, baseType: !316, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !317, file: !318, line: 136, baseType: !121, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !317, file: !318, line: 138, baseType: !329, size: 192, align: 64, offset: 192)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !330, line: 24, size: 192, align: 64, elements: !331)
!330 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!331 = !{!332, !333, !335}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !329, file: !330, line: 25, baseType: !253, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !329, file: !330, line: 26, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !329, file: !330, line: 27, baseType: !334, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !317, file: !318, line: 140, baseType: !280, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !317, file: !318, line: 141, baseType: !7, size: 32, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !318, line: 142, baseType: !339, size: 256, offset: 512)
!339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !317, file: !318, line: 142, size: 256, elements: !340)
!340 = !{!341, !409, !413}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !339, file: !318, line: 143, baseType: !342, size: 192)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !318, line: 91, size: 192, elements: !343)
!343 = !{!344, !345, !349}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !342, file: !318, line: 92, baseType: !253, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !342, file: !318, line: 94, baseType: !346, size: 64, offset: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !330, line: 31, size: 64, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !346, file: !330, line: 32, baseType: !334, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !342, file: !318, line: 100, baseType: !350, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !318, line: 180, size: 704, elements: !352)
!352 = !{!353, !354, !355, !368, !373, !374, !401, !402}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !351, file: !318, line: 182, baseType: !316, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !351, file: !318, line: 183, baseType: !7, size: 32, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !351, file: !318, line: 186, baseType: !356, size: 192, offset: 128)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !357, line: 19, size: 192, elements: !358)
!357 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!358 = !{!359, !366, !367}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !356, file: !357, line: 20, baseType: !360, size: 128)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !361, line: 292, size: 128, elements: !362)
!361 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!362 = !{!363, !364, !365}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !360, file: !361, line: 293, baseType: !173)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !360, file: !361, line: 295, baseType: !106, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !360, file: !361, line: 296, baseType: !108, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !356, file: !357, line: 21, baseType: !7, size: 32, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !356, file: !357, line: 22, baseType: !7, size: 32, offset: 160)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !351, file: !318, line: 187, baseType: !369, size: 32, offset: 320)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !370, line: 21, baseType: !371)
!370 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !372, line: 27, baseType: !7)
!372 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!373 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !351, file: !318, line: 188, baseType: !369, size: 32, offset: 352)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !351, file: !318, line: 189, baseType: !375, size: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !318, line: 168, size: 320, elements: !377)
!377 = !{!378, !385, !389, !393, !397}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !376, file: !318, line: 169, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!199, !382, !350}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !384, line: 539, flags: DIFlagFwdDecl)
!384 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!385 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !376, file: !318, line: 171, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!199, !316, !121, !125}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !376, file: !318, line: 173, baseType: !390, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!199, !316}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !376, file: !318, line: 174, baseType: !394, size: 64, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!199, !316, !316, !121}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !376, file: !318, line: 176, baseType: !398, size: 64, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!199, !382, !316, !350}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !351, file: !318, line: 192, baseType: !161, size: 128, offset: 448)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !351, file: !318, line: 194, baseType: !403, size: 128, offset: 576)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !404, line: 40, baseType: !405)
!404 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !404, line: 36, size: 128, elements: !406)
!406 = !{!407, !408}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !405, file: !404, line: 37, baseType: !173)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !405, file: !404, line: 38, baseType: !161, size: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !339, file: !318, line: 144, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !318, line: 103, size: 64, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !410, file: !318, line: 104, baseType: !316, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !339, file: !318, line: 145, baseType: !414, size: 256)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !318, line: 107, size: 256, elements: !415)
!415 = !{!416, !3723, !3726, !3727}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !414, file: !318, line: 108, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !318, line: 217, size: 768, elements: !420)
!420 = !{!421, !3688, !3692, !3696, !3700, !3704, !3708, !3712, !3713, !3714, !3715, !3719}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !419, file: !318, line: 222, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!199, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !318, line: 197, size: 1088, elements: !427)
!427 = !{!428, !429, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !426, file: !318, line: 199, baseType: !316, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !426, file: !318, line: 200, baseType: !430, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !77, line: 916, size: 1856, align: 32, elements: !432)
!432 = !{!433, !451, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3660, !3661, !3670, !3671, !3672, !3673, !3674, !3675, !3676}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !431, file: !77, line: 920, baseType: !434, size: 128)
!434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !77, line: 917, size: 128, elements: !435)
!435 = !{!436, !442}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !434, file: !77, line: 918, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !438, line: 58, size: 64, elements: !439)
!438 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !437, file: !438, line: 59, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !434, file: !77, line: 919, baseType: !443, size: 128, align: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !107, line: 216, size: 128, align: 64, elements: !444)
!444 = !{!445, !447}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !443, file: !107, line: 217, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !443, file: !107, line: 218, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !446}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !431, file: !77, line: 921, baseType: !452, size: 128, offset: 128)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !453, line: 8, size: 128, elements: !454)
!453 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!454 = !{!455, !459}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !452, file: !453, line: 9, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !458, line: 18, flags: DIFlagFwdDecl)
!458 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!459 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !452, file: !453, line: 10, baseType: !460, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !458, line: 89, size: 1536, elements: !462)
!462 = !{!463, !464, !474, !482, !483, !502, !3610, !3612, !3624, !3625, !3626, !3627, !3628, !3634, !3635, !3636}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !461, file: !458, line: 91, baseType: !7, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !461, file: !458, line: 92, baseType: !465, size: 32, offset: 32)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !466, line: 277, baseType: !467)
!466 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !466, line: 277, size: 32, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !467, file: !466, line: 277, baseType: !470, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !466, line: 70, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !466, line: 65, size: 32, elements: !472)
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !471, file: !466, line: 66, baseType: !7, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !461, file: !458, line: 93, baseType: !475, size: 128, offset: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !476, line: 38, size: 128, elements: !477)
!476 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!477 = !{!478, !480}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !475, file: !476, line: 39, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !475, file: !476, line: 39, baseType: !481, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !461, file: !458, line: 94, baseType: !460, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !461, file: !458, line: 95, baseType: !484, size: 128, offset: 256)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !458, line: 47, size: 128, elements: !485)
!485 = !{!486, !498}
!486 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !458, line: 48, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !458, line: 48, size: 64, elements: !488)
!488 = !{!489, !494}
!489 = !DIDerivedType(tag: DW_TAG_member, scope: !487, file: !458, line: 49, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !487, file: !458, line: 49, size: 64, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !490, file: !458, line: 50, baseType: !369, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !490, file: !458, line: 50, baseType: !369, size: 32, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !487, file: !458, line: 52, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !370, line: 23, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !372, line: 31, baseType: !497)
!497 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !484, file: !458, line: 54, baseType: !499, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!501 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !461, file: !458, line: 96, baseType: !503, size: 64, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !77, line: 610, size: 4224, elements: !505)
!505 = !{!506, !507, !508, !509, !510, !511, !654, !3321, !3322, !3323, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3586, !3594, !3595, !3596, !3606, !3607, !3608, !3609}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !504, file: !77, line: 611, baseType: !125, size: 16)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !504, file: !77, line: 612, baseType: !126, size: 16, offset: 16)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !504, file: !77, line: 613, baseType: !301, size: 32, offset: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !504, file: !77, line: 614, baseType: !309, size: 32, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !504, file: !77, line: 615, baseType: !7, size: 32, offset: 96)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !504, file: !77, line: 622, baseType: !512, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !77, line: 1864, size: 1536, align: 512, elements: !515)
!515 = !{!516, !520, !530, !534, !540, !544, !548, !552, !556, !560, !564, !565, !571, !575, !601, !630, !634, !640, !645, !649, !650}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !514, file: !77, line: 1865, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!460, !503, !460, !7}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !514, file: !77, line: 1866, baseType: !521, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!121, !460, !503, !524}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !526, line: 10, size: 128, elements: !527)
!526 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !525, file: !526, line: 11, baseType: !289, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !525, file: !526, line: 12, baseType: !108, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !514, file: !77, line: 1867, baseType: !531, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!199, !503, !199}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !514, file: !77, line: 1868, baseType: !535, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!538, !503, !199}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !77, line: 581, flags: DIFlagFwdDecl)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !514, file: !77, line: 1870, baseType: !541, size: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!199, !460, !215, !199}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !514, file: !77, line: 1872, baseType: !545, size: 64, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!199, !503, !460, !125, !270}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !514, file: !77, line: 1873, baseType: !549, size: 64, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!199, !460, !503, !460}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !514, file: !77, line: 1874, baseType: !553, size: 64, offset: 448)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!199, !503, !460}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !514, file: !77, line: 1875, baseType: !557, size: 64, offset: 512)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!199, !503, !460, !121}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !514, file: !77, line: 1876, baseType: !561, size: 64, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!199, !503, !460, !125}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !514, file: !77, line: 1877, baseType: !553, size: 64, offset: 640)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !514, file: !77, line: 1878, baseType: !566, size: 64, offset: 704)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!199, !503, !460, !125, !569}
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !107, line: 16, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !107, line: 13, baseType: !369)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !514, file: !77, line: 1879, baseType: !572, size: 64, offset: 768)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!199, !503, !460, !503, !460, !7}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !514, file: !77, line: 1881, baseType: !576, size: 64, offset: 832)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!199, !460, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !77, line: 219, size: 640, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !590, !598, !599, !600}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !580, file: !77, line: 220, baseType: !7, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !580, file: !77, line: 221, baseType: !125, size: 16, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !580, file: !77, line: 222, baseType: !301, size: 32, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !580, file: !77, line: 223, baseType: !309, size: 32, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !580, file: !77, line: 224, baseType: !587, size: 64, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !107, line: 46, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !133, line: 88, baseType: !589)
!589 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !580, file: !77, line: 225, baseType: !591, size: 128, offset: 192)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !592, line: 13, size: 128, elements: !593)
!592 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!593 = !{!594, !597}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !591, file: !592, line: 14, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !592, line: 8, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !372, line: 30, baseType: !589)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !591, file: !592, line: 15, baseType: !135, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !580, file: !77, line: 226, baseType: !591, size: 128, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !580, file: !77, line: 227, baseType: !591, size: 128, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !580, file: !77, line: 234, baseType: !430, size: 64, offset: 576)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !514, file: !77, line: 1882, baseType: !602, size: 64, offset: 896)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!199, !605, !607, !369, !7}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !609, line: 22, size: 1152, elements: !610)
!609 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!610 = !{!611, !612, !613, !614, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !608, file: !609, line: 23, baseType: !369, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !608, file: !609, line: 24, baseType: !125, size: 16, offset: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !608, file: !609, line: 25, baseType: !7, size: 32, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !608, file: !609, line: 26, baseType: !615, size: 32, offset: 96)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !107, line: 104, baseType: !369)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !608, file: !609, line: 27, baseType: !495, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !608, file: !609, line: 28, baseType: !495, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !608, file: !609, line: 37, baseType: !495, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !608, file: !609, line: 38, baseType: !569, size: 32, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !608, file: !609, line: 39, baseType: !569, size: 32, offset: 352)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !608, file: !609, line: 40, baseType: !301, size: 32, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !608, file: !609, line: 41, baseType: !309, size: 32, offset: 416)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !608, file: !609, line: 42, baseType: !587, size: 64, offset: 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !608, file: !609, line: 43, baseType: !591, size: 128, offset: 512)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !608, file: !609, line: 44, baseType: !591, size: 128, offset: 640)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !608, file: !609, line: 45, baseType: !591, size: 128, offset: 768)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !608, file: !609, line: 46, baseType: !591, size: 128, offset: 896)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !608, file: !609, line: 47, baseType: !495, size: 64, offset: 1024)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !608, file: !609, line: 48, baseType: !495, size: 64, offset: 1088)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !514, file: !77, line: 1883, baseType: !631, size: 64, offset: 960)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!131, !460, !215, !250}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !514, file: !77, line: 1884, baseType: !635, size: 64, offset: 1024)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!199, !503, !638, !495, !495}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !77, line: 50, flags: DIFlagFwdDecl)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !514, file: !77, line: 1886, baseType: !641, size: 64, offset: 1088)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!199, !503, !644, !199}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !514, file: !77, line: 1887, baseType: !646, size: 64, offset: 1152)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!199, !503, !460, !430, !7, !125}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !514, file: !77, line: 1890, baseType: !561, size: 64, offset: 1216)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !514, file: !77, line: 1891, baseType: !651, size: 64, offset: 1280)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!199, !503, !538, !199}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !504, file: !77, line: 623, baseType: !655, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !77, line: 1416, size: 9472, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663, !709, !2442, !2524, !2607, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2623, !2627, !2628, !3120, !3121, !3124, !3125, !3126, !3167, !3194, !3195, !3196, !3197, !3198, !3199, !3202, !3203, !3210, !3211, !3213, !3214, !3215, !3274, !3275, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !656, file: !77, line: 1417, baseType: !161, size: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !656, file: !77, line: 1418, baseType: !569, size: 32, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !656, file: !77, line: 1419, baseType: !501, size: 8, offset: 160)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !656, file: !77, line: 1420, baseType: !253, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !656, file: !77, line: 1421, baseType: !587, size: 64, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !656, file: !77, line: 1422, baseType: !664, size: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !77, line: 2228, size: 576, elements: !666)
!666 = !{!667, !668, !669, !675, !679, !683, !687, !688, !689, !699, !702, !703, !704, !706, !707, !708}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !665, file: !77, line: 2229, baseType: !121, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !665, file: !77, line: 2230, baseType: !199, size: 32, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !665, file: !77, line: 2238, baseType: !670, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!199, !673}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !318, line: 28, flags: DIFlagFwdDecl)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !665, file: !77, line: 2239, baseType: !676, size: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!678 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !77, line: 70, flags: DIFlagFwdDecl)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !665, file: !77, line: 2240, baseType: !680, size: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!460, !664, !199, !121, !108}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !665, file: !77, line: 2242, baseType: !684, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !655}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !665, file: !77, line: 2243, baseType: !141, size: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !665, file: !77, line: 2244, baseType: !664, size: 64, offset: 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !665, file: !77, line: 2245, baseType: !690, size: 64, offset: 512)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !107, line: 182, size: 64, elements: !691)
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !690, file: !107, line: 183, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !107, line: 186, size: 128, elements: !695)
!695 = !{!696, !697}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !694, file: !107, line: 187, baseType: !693, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !694, file: !107, line: 187, baseType: !698, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !665, file: !77, line: 2247, baseType: !700, offset: 576)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !701, line: 187, elements: !187)
!701 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!702 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !665, file: !77, line: 2248, baseType: !700, offset: 576)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !665, file: !77, line: 2249, baseType: !700, offset: 576)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !665, file: !77, line: 2250, baseType: !705, offset: 576)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, elements: !216)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !665, file: !77, line: 2252, baseType: !700, offset: 576)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !665, file: !77, line: 2253, baseType: !700, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !665, file: !77, line: 2254, baseType: !700, offset: 576)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !656, file: !77, line: 1423, baseType: !710, size: 64, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !712)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !77, line: 1935, size: 1472, elements: !713)
!713 = !{!714, !718, !722, !723, !727, !733, !737, !738, !739, !743, !747, !748, !749, !750, !756, !761, !762, !766, !767, !768, !769, !2426, !2441}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !712, file: !77, line: 1936, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!503, !655}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !712, file: !77, line: 1937, baseType: !719, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !503}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !712, file: !77, line: 1938, baseType: !719, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !712, file: !77, line: 1940, baseType: !724, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !503, !199}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !712, file: !77, line: 1941, baseType: !728, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!199, !503, !731}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 40, flags: DIFlagFwdDecl)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !712, file: !77, line: 1942, baseType: !734, size: 64, offset: 320)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!199, !503}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !712, file: !77, line: 1943, baseType: !719, size: 64, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !712, file: !77, line: 1944, baseType: !684, size: 64, offset: 448)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !712, file: !77, line: 1945, baseType: !740, size: 64, offset: 512)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!199, !655, !199}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !712, file: !77, line: 1946, baseType: !744, size: 64, offset: 576)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!199, !655}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !712, file: !77, line: 1947, baseType: !744, size: 64, offset: 640)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !712, file: !77, line: 1948, baseType: !744, size: 64, offset: 704)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !712, file: !77, line: 1949, baseType: !744, size: 64, offset: 768)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !712, file: !77, line: 1950, baseType: !751, size: 64, offset: 832)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!199, !460, !754}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !77, line: 57, flags: DIFlagFwdDecl)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !712, file: !77, line: 1951, baseType: !757, size: 64, offset: 896)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!199, !655, !760, !215}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !712, file: !77, line: 1952, baseType: !684, size: 64, offset: 960)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !712, file: !77, line: 1954, baseType: !763, size: 64, offset: 1024)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!199, !382, !460}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !712, file: !77, line: 1955, baseType: !763, size: 64, offset: 1088)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !712, file: !77, line: 1956, baseType: !763, size: 64, offset: 1152)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !712, file: !77, line: 1957, baseType: !763, size: 64, offset: 1216)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !712, file: !77, line: 1963, baseType: !770, size: 64, offset: 1280)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!199, !655, !773, !106}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !775, line: 68, size: 512, align: 128, elements: !776)
!775 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!776 = !{!777, !778, !2418, !2425}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !774, file: !775, line: 69, baseType: !253, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !775, line: 77, baseType: !779, size: 320, offset: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !774, file: !775, line: 77, size: 320, elements: !780)
!780 = !{!781, !948, !953, !981, !989, !995, !2349, !2417}
!781 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !775, line: 78, baseType: !782, size: 320)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !775, line: 78, size: 320, elements: !783)
!783 = !{!784, !785, !946, !947}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !782, file: !775, line: 84, baseType: !161, size: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !782, file: !775, line: 86, baseType: !786, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !77, line: 451, size: 1216, align: 64, elements: !788)
!788 = !{!789, !790, !791, !792, !793, !798, !814, !815, !816, !817, !939, !940, !943, !944, !945}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !787, file: !77, line: 452, baseType: !503, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !787, file: !77, line: 453, baseType: !360, size: 128, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !787, file: !77, line: 454, baseType: !106, size: 32, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !787, file: !77, line: 455, baseType: !321, size: 32, offset: 224)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !787, file: !77, line: 460, baseType: !794, size: 128, offset: 256)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !330, line: 125, size: 128, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !794, file: !330, line: 126, baseType: !346, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !794, file: !330, line: 127, baseType: !334, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !787, file: !77, line: 461, baseType: !799, size: 256, offset: 384)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !800, line: 35, size: 256, elements: !801)
!800 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!801 = !{!802, !810, !811, !813}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !799, file: !800, line: 36, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !804, line: 13, baseType: !805)
!804 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !107, line: 175, baseType: !806)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 173, size: 64, elements: !807)
!807 = !{!808}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !806, file: !107, line: 174, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !370, line: 22, baseType: !596)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !799, file: !800, line: 42, baseType: !803, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !799, file: !800, line: 46, baseType: !812, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !174, line: 29, baseType: !181)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !799, file: !800, line: 47, baseType: !161, size: 128, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !787, file: !77, line: 462, baseType: !253, size: 64, offset: 640)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !787, file: !77, line: 463, baseType: !253, size: 64, offset: 704)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !787, file: !77, line: 464, baseType: !253, size: 64, offset: 768)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !787, file: !77, line: 465, baseType: !818, size: 64, offset: 832)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !77, line: 367, size: 1408, elements: !821)
!821 = !{!822, !826, !830, !834, !838, !842, !848, !854, !858, !863, !867, !871, !875, !903, !907, !913, !914, !915, !919, !924, !928, !935}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !820, file: !77, line: 368, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!199, !773, !731}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !820, file: !77, line: 369, baseType: !827, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!199, !430, !773}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !820, file: !77, line: 372, baseType: !831, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!199, !786, !731}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !820, file: !77, line: 375, baseType: !835, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!199, !773}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !820, file: !77, line: 381, baseType: !839, size: 64, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!199, !430, !786, !164, !7}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !820, file: !77, line: 383, baseType: !843, size: 64, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !846}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !77, line: 290, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !820, file: !77, line: 385, baseType: !849, size: 64, offset: 384)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!199, !430, !786, !587, !7, !7, !852, !853}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !820, file: !77, line: 388, baseType: !855, size: 64, offset: 448)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!199, !430, !786, !587, !7, !7, !773, !108}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !820, file: !77, line: 393, baseType: !859, size: 64, offset: 512)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!862, !786, !862}
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !107, line: 125, baseType: !495)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !820, file: !77, line: 394, baseType: !864, size: 64, offset: 576)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !773, !7, !7}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !820, file: !77, line: 395, baseType: !868, size: 64, offset: 640)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!199, !773, !106}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !820, file: !77, line: 396, baseType: !872, size: 64, offset: 704)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !773}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !820, file: !77, line: 397, baseType: !876, size: 64, offset: 768)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!131, !879, !901}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !77, line: 320, size: 384, elements: !881)
!881 = !{!882, !883, !884, !888, !889, !890, !893, !894}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !880, file: !77, line: 321, baseType: !430, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !880, file: !77, line: 326, baseType: !587, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !880, file: !77, line: 327, baseType: !885, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !879, !135, !135}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !880, file: !77, line: 328, baseType: !108, size: 64, offset: 192)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !880, file: !77, line: 329, baseType: !199, size: 32, offset: 256)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !880, file: !77, line: 330, baseType: !891, size: 16, offset: 288)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !370, line: 19, baseType: !892)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !372, line: 24, baseType: !126)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !880, file: !77, line: 331, baseType: !891, size: 16, offset: 304)
!894 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !77, line: 332, baseType: !895, size: 64, offset: 320)
!895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !77, line: 332, size: 64, elements: !896)
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !895, file: !77, line: 333, baseType: !7, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !895, file: !77, line: 334, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !77, line: 334, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !77, line: 64, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !820, file: !77, line: 402, baseType: !904, size: 64, offset: 832)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!199, !786, !773, !773, !12}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !820, file: !77, line: 404, baseType: !908, size: 64, offset: 896)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!270, !773, !911}
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !912, line: 305, baseType: !7)
!912 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!913 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !820, file: !77, line: 405, baseType: !872, size: 64, offset: 960)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !820, file: !77, line: 406, baseType: !835, size: 64, offset: 1024)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !820, file: !77, line: 407, baseType: !916, size: 64, offset: 1088)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!199, !773, !253, !253}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !820, file: !77, line: 409, baseType: !920, size: 64, offset: 1152)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !773, !923, !923}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !820, file: !77, line: 410, baseType: !925, size: 64, offset: 1216)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!199, !786, !773}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !820, file: !77, line: 413, baseType: !929, size: 64, offset: 1280)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!199, !932, !430, !934}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !77, line: 61, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !820, file: !77, line: 415, baseType: !936, size: 64, offset: 1344)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{null, !430}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !787, file: !77, line: 466, baseType: !253, size: 64, offset: 896)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !787, file: !77, line: 467, baseType: !941, size: 32, offset: 960)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !942, line: 8, baseType: !369)
!942 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!943 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !787, file: !77, line: 468, baseType: !173, offset: 992)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !787, file: !77, line: 469, baseType: !161, size: 128, offset: 1024)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !787, file: !77, line: 470, baseType: !108, size: 64, offset: 1152)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !782, file: !775, line: 87, baseType: !253, size: 64, offset: 192)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !782, file: !775, line: 94, baseType: !253, size: 64, offset: 256)
!948 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !775, line: 96, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !775, line: 96, size: 64, elements: !950)
!950 = !{!951}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !949, file: !775, line: 101, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !107, line: 143, baseType: !495)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !775, line: 103, baseType: !954, size: 320)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !775, line: 103, size: 320, elements: !955)
!955 = !{!956, !966, !969, !970}
!956 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !775, line: 104, baseType: !957, size: 128)
!957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !954, file: !775, line: 104, size: 128, elements: !958)
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !957, file: !775, line: 105, baseType: !161, size: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !775, line: 106, baseType: !961, size: 128)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !957, file: !775, line: 106, size: 128, elements: !962)
!962 = !{!963, !964, !965}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !961, file: !775, line: 107, baseType: !773, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !961, file: !775, line: 109, baseType: !199, size: 32, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !961, file: !775, line: 110, baseType: !199, size: 32, offset: 96)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !954, file: !775, line: 117, baseType: !967, size: 64, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !775, line: 117, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !954, file: !775, line: 119, baseType: !108, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !775, line: 120, baseType: !971, size: 64, offset: 256)
!971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !954, file: !775, line: 120, size: 64, elements: !972)
!972 = !{!973, !974, !975}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !971, file: !775, line: 121, baseType: !108, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !971, file: !775, line: 122, baseType: !253, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !971, file: !775, line: 123, baseType: !976, size: 32)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !775, line: 123, size: 32, elements: !977)
!977 = !{!978, !979, !980}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !976, file: !775, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !976, file: !775, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !976, file: !775, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !775, line: 130, baseType: !982, size: 192)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !775, line: 130, size: 192, elements: !983)
!983 = !{!984, !985, !986, !987, !988}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !982, file: !775, line: 131, baseType: !253, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !982, file: !775, line: 134, baseType: !501, size: 8, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !982, file: !775, line: 135, baseType: !501, size: 8, offset: 72)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !982, file: !775, line: 136, baseType: !321, size: 32, offset: 96)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !982, file: !775, line: 137, baseType: !7, size: 32, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !775, line: 139, baseType: !990, size: 256)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !775, line: 139, size: 256, elements: !991)
!991 = !{!992, !993, !994}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !990, file: !775, line: 140, baseType: !253, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !990, file: !775, line: 141, baseType: !321, size: 32, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !990, file: !775, line: 143, baseType: !161, size: 128, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !775, line: 145, baseType: !996, size: 256)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !775, line: 145, size: 256, elements: !997)
!997 = !{!998, !999, !1001, !1002, !2348}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !996, file: !775, line: 146, baseType: !253, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !996, file: !775, line: 147, baseType: !1000, size: 64, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !384, line: 509, baseType: !773)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !996, file: !775, line: 148, baseType: !253, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !996, file: !775, line: 149, baseType: !1003, size: 64, offset: 192)
!1003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !996, file: !775, line: 149, size: 64, elements: !1004)
!1004 = !{!1005, !2347}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1003, file: !775, line: 150, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !775, line: 388, size: 7296, elements: !1008)
!1008 = !{!1009, !2343}
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !1007, file: !775, line: 389, baseType: !1010, size: 7296)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1007, file: !775, line: 389, size: 7296, elements: !1011)
!1011 = !{!1012, !1130, !1131, !1132, !1136, !1137, !1138, !1139, !1140, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1181, !1189, !1192, !1238, !1239, !2327, !2328, !2331, !2332, !2333, !2336, !2337, !2338, !2341, !2342}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1010, file: !775, line: 390, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !775, line: 305, size: 1472, elements: !1015)
!1015 = !{!1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1030, !1031, !1036, !1037, !1040, !1124, !1125, !1126, !1127, !1128}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1014, file: !775, line: 308, baseType: !253, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1014, file: !775, line: 309, baseType: !253, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1014, file: !775, line: 313, baseType: !1013, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1014, file: !775, line: 313, baseType: !1013, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1014, file: !775, line: 315, baseType: !329, size: 192, align: 64, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1014, file: !775, line: 323, baseType: !253, size: 64, offset: 448)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1014, file: !775, line: 327, baseType: !1006, size: 64, offset: 512)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1014, file: !775, line: 333, baseType: !1024, size: 64, offset: 576)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !384, line: 284, baseType: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !384, line: 284, size: 64, elements: !1026)
!1026 = !{!1027}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1025, file: !384, line: 284, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1029, line: 19, baseType: !253)
!1029 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1014, file: !775, line: 334, baseType: !253, size: 64, offset: 640)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1014, file: !775, line: 343, baseType: !1032, size: 256, offset: 704)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !775, line: 340, size: 256, elements: !1033)
!1033 = !{!1034, !1035}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1032, file: !775, line: 341, baseType: !329, size: 192, align: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1032, file: !775, line: 342, baseType: !253, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1014, file: !775, line: 351, baseType: !161, size: 128, offset: 960)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1014, file: !775, line: 353, baseType: !1038, size: 64, offset: 1088)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !775, line: 353, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1014, file: !775, line: 356, baseType: !1041, size: 64, offset: 1152)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1043)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !20, line: 557, size: 832, elements: !1044)
!1044 = !{!1045, !1049, !1050, !1054, !1058, !1098, !1102, !1106, !1110, !1111, !1112, !1116, !1120}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1043, file: !20, line: 558, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !1013}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1043, file: !20, line: 559, baseType: !1046, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1043, file: !20, line: 560, baseType: !1051, size: 64, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!199, !1013, !253}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1043, file: !20, line: 561, baseType: !1055, size: 64, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!199, !1013}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1043, file: !20, line: 562, baseType: !1059, size: 64, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!1062, !1063}
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !775, line: 682, baseType: !7)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !20, line: 508, size: 768, elements: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1071, !1078, !1085, !1091, !1092, !1093, !1095, !1097}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1064, file: !20, line: 509, baseType: !1013, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1064, file: !20, line: 510, baseType: !7, size: 32, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1064, file: !20, line: 511, baseType: !106, size: 32, offset: 96)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1064, file: !20, line: 512, baseType: !253, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1064, file: !20, line: 513, baseType: !253, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1064, file: !20, line: 514, baseType: !1072, size: 64, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !384, line: 385, baseType: !1074)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !384, line: 385, size: 64, elements: !1075)
!1075 = !{!1076}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1074, file: !384, line: 385, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1029, line: 15, baseType: !253)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1064, file: !20, line: 516, baseType: !1079, size: 64, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !384, line: 359, baseType: !1081)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !384, line: 359, size: 64, elements: !1082)
!1082 = !{!1083}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1081, file: !384, line: 359, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1029, line: 16, baseType: !253)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1064, file: !20, line: 519, baseType: !1086, size: 64, offset: 384)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1029, line: 21, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1029, line: 21, size: 64, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1087, file: !1029, line: 21, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1029, line: 14, baseType: !253)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1064, file: !20, line: 521, baseType: !773, size: 64, offset: 448)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1064, file: !20, line: 522, baseType: !773, size: 64, offset: 512)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1064, file: !20, line: 528, baseType: !1094, size: 64, offset: 576)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1064, file: !20, line: 532, baseType: !1096, size: 64, offset: 640)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1064, file: !20, line: 536, baseType: !1000, size: 64, offset: 704)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1043, file: !20, line: 563, baseType: !1099, size: 64, offset: 320)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!1062, !1063, !19}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1043, file: !20, line: 565, baseType: !1103, size: 64, offset: 384)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{null, !1063, !253, !253}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1043, file: !20, line: 567, baseType: !1107, size: 64, offset: 448)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!253, !1013}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1043, file: !20, line: 571, baseType: !1059, size: 64, offset: 512)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1043, file: !20, line: 574, baseType: !1059, size: 64, offset: 576)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1043, file: !20, line: 579, baseType: !1113, size: 64, offset: 640)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!199, !1013, !253, !108, !199, !199}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1043, file: !20, line: 585, baseType: !1117, size: 64, offset: 704)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!121, !1013}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1043, file: !20, line: 615, baseType: !1121, size: 64, offset: 768)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!773, !1013, !253}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1014, file: !775, line: 359, baseType: !253, size: 64, offset: 1216)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1014, file: !775, line: 361, baseType: !430, size: 64, offset: 1280)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1014, file: !775, line: 362, baseType: !108, size: 64, offset: 1344)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1014, file: !775, line: 365, baseType: !803, size: 64, offset: 1408)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1014, file: !775, line: 373, baseType: !1129, offset: 1472)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !775, line: 296, elements: !187)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1010, file: !775, line: 391, baseType: !346, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1010, file: !775, line: 392, baseType: !495, size: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1010, file: !775, line: 394, baseType: !1133, size: 64, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!253, !430, !253, !253, !253, !253}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1010, file: !775, line: 398, baseType: !253, size: 64, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1010, file: !775, line: 399, baseType: !253, size: 64, offset: 320)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1010, file: !775, line: 405, baseType: !253, size: 64, offset: 384)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1010, file: !775, line: 406, baseType: !253, size: 64, offset: 448)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1010, file: !775, line: 407, baseType: !1141, size: 64, offset: 512)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !384, line: 286, baseType: !1143)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !384, line: 286, size: 64, elements: !1144)
!1144 = !{!1145}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1143, file: !384, line: 286, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1029, line: 18, baseType: !253)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1010, file: !775, line: 416, baseType: !321, size: 32, offset: 576)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1010, file: !775, line: 428, baseType: !321, size: 32, offset: 608)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1010, file: !775, line: 437, baseType: !321, size: 32, offset: 640)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1010, file: !775, line: 447, baseType: !321, size: 32, offset: 672)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1010, file: !775, line: 450, baseType: !803, size: 64, offset: 704)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1010, file: !775, line: 452, baseType: !199, size: 32, offset: 768)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1010, file: !775, line: 454, baseType: !173, offset: 800)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1010, file: !775, line: 457, baseType: !799, size: 256, offset: 832)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1010, file: !775, line: 459, baseType: !161, size: 128, offset: 1088)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1010, file: !775, line: 466, baseType: !253, size: 64, offset: 1216)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1010, file: !775, line: 467, baseType: !253, size: 64, offset: 1280)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1010, file: !775, line: 469, baseType: !253, size: 64, offset: 1344)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1010, file: !775, line: 470, baseType: !253, size: 64, offset: 1408)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1010, file: !775, line: 471, baseType: !805, size: 64, offset: 1472)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1010, file: !775, line: 472, baseType: !253, size: 64, offset: 1536)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1010, file: !775, line: 473, baseType: !253, size: 64, offset: 1600)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1010, file: !775, line: 474, baseType: !253, size: 64, offset: 1664)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1010, file: !775, line: 475, baseType: !253, size: 64, offset: 1728)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1010, file: !775, line: 477, baseType: !173, offset: 1792)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1010, file: !775, line: 478, baseType: !253, size: 64, offset: 1792)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1010, file: !775, line: 478, baseType: !253, size: 64, offset: 1856)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1010, file: !775, line: 478, baseType: !253, size: 64, offset: 1920)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1010, file: !775, line: 478, baseType: !253, size: 64, offset: 1984)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1010, file: !775, line: 479, baseType: !253, size: 64, offset: 2048)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1010, file: !775, line: 479, baseType: !253, size: 64, offset: 2112)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1010, file: !775, line: 479, baseType: !253, size: 64, offset: 2176)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1010, file: !775, line: 480, baseType: !253, size: 64, offset: 2240)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1010, file: !775, line: 480, baseType: !253, size: 64, offset: 2304)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1010, file: !775, line: 480, baseType: !253, size: 64, offset: 2368)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1010, file: !775, line: 480, baseType: !253, size: 64, offset: 2432)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1010, file: !775, line: 482, baseType: !1178, size: 2816, offset: 2496)
!1178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 2816, elements: !1179)
!1179 = !{!1180}
!1180 = !DISubrange(count: 44)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1010, file: !775, line: 488, baseType: !1182, size: 256, offset: 5312)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1183, line: 60, size: 256, elements: !1184)
!1183 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1184 = !{!1185}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1182, file: !1183, line: 61, baseType: !1186, size: 256)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 256, elements: !1187)
!1187 = !{!1188}
!1188 = !DISubrange(count: 4)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1010, file: !775, line: 490, baseType: !1190, size: 64, offset: 5568)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !775, line: 490, flags: DIFlagFwdDecl)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1010, file: !775, line: 493, baseType: !1193, size: 896, offset: 5632)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1194, line: 53, baseType: !1195)
!1194 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1194, line: 13, size: 896, elements: !1196)
!1196 = !{!1197, !1198, !1199, !1200, !1203, !1204, !1211, !1212, !1232, !1233, !1234}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1195, file: !1194, line: 18, baseType: !495, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1195, file: !1194, line: 28, baseType: !805, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1195, file: !1194, line: 31, baseType: !799, size: 256, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1195, file: !1194, line: 32, baseType: !1201, size: 64, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1194, line: 32, flags: DIFlagFwdDecl)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1195, file: !1194, line: 37, baseType: !126, size: 16, offset: 448)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1195, file: !1194, line: 40, baseType: !1205, size: 192, offset: 512)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1206, line: 53, size: 192, elements: !1207)
!1206 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1207 = !{!1208, !1209, !1210}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1205, file: !1206, line: 54, baseType: !803, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1205, file: !1206, line: 55, baseType: !173, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1205, file: !1206, line: 59, baseType: !161, size: 128, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1195, file: !1194, line: 41, baseType: !108, size: 64, offset: 704)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1195, file: !1194, line: 42, baseType: !1213, size: 64, offset: 768)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1215)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1216, line: 13, size: 896, elements: !1217)
!1216 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1217 = !{!1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1215, file: !1216, line: 14, baseType: !108, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1215, file: !1216, line: 15, baseType: !253, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1215, file: !1216, line: 17, baseType: !253, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1215, file: !1216, line: 17, baseType: !253, size: 64, offset: 192)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1215, file: !1216, line: 19, baseType: !135, size: 64, offset: 256)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1215, file: !1216, line: 21, baseType: !135, size: 64, offset: 320)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1215, file: !1216, line: 22, baseType: !135, size: 64, offset: 384)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1215, file: !1216, line: 23, baseType: !135, size: 64, offset: 448)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1215, file: !1216, line: 24, baseType: !135, size: 64, offset: 512)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1215, file: !1216, line: 25, baseType: !135, size: 64, offset: 576)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1215, file: !1216, line: 26, baseType: !135, size: 64, offset: 640)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1215, file: !1216, line: 27, baseType: !135, size: 64, offset: 704)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1215, file: !1216, line: 28, baseType: !135, size: 64, offset: 768)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1215, file: !1216, line: 29, baseType: !135, size: 64, offset: 832)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1195, file: !1194, line: 44, baseType: !321, size: 32, offset: 832)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1195, file: !1194, line: 50, baseType: !891, size: 16, offset: 864)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1195, file: !1194, line: 51, baseType: !1235, size: 16, offset: 880)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !370, line: 18, baseType: !1236)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !372, line: 23, baseType: !1237)
!1237 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1010, file: !775, line: 495, baseType: !253, size: 64, offset: 6528)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1010, file: !775, line: 497, baseType: !1240, size: 64, offset: 6592)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !775, line: 381, size: 384, elements: !1242)
!1242 = !{!1243, !1244, !2326}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1241, file: !775, line: 382, baseType: !321, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1241, file: !775, line: 383, baseType: !1245, size: 128, offset: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !775, line: 376, size: 128, elements: !1246)
!1246 = !{!1247, !2324}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1245, file: !775, line: 377, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1250, line: 640, size: 48640, elements: !1251)
!1250 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1251 = !{!1252, !1258, !1260, !1261, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1278, !1296, !1307, !1392, !1393, !1394, !1405, !1406, !1408, !1409, !1410, !1411, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1490, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1522, !1524, !1525, !1526, !1538, !1539, !1540, !1541, !1542, !1543, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1567, !1572, !1756, !1757, !1758, !1759, !1763, !1766, !1769, !1772, !1775, !1778, !1879, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1925, !1926, !1927, !1928, !1929, !1934, !1935, !1936, !1939, !1940, !1943, !1946, !1949, !1952, !1995, !1998, !1999, !2078, !2079, !2082, !2083, !2086, !2087, !2088, !2092, !2093, !2094, !2107, !2108, !2109, !2119, !2124, !2127, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1249, file: !1250, line: 646, baseType: !1253, size: 128)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1254, line: 56, size: 128, elements: !1255)
!1254 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1255 = !{!1256, !1257}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1253, file: !1254, line: 57, baseType: !253, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1253, file: !1254, line: 58, baseType: !369, size: 32, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1249, file: !1250, line: 649, baseType: !1259, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !135)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1249, file: !1250, line: 657, baseType: !108, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1249, file: !1250, line: 658, baseType: !1262, size: 32, offset: 256)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1263, line: 113, baseType: !1264)
!1263 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1263, line: 111, size: 32, elements: !1265)
!1265 = !{!1266}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1264, file: !1263, line: 112, baseType: !321, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1249, file: !1250, line: 660, baseType: !7, size: 32, offset: 288)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1249, file: !1250, line: 661, baseType: !7, size: 32, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1249, file: !1250, line: 684, baseType: !199, size: 32, offset: 352)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1249, file: !1250, line: 686, baseType: !199, size: 32, offset: 384)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1249, file: !1250, line: 687, baseType: !199, size: 32, offset: 416)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1249, file: !1250, line: 688, baseType: !199, size: 32, offset: 448)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1249, file: !1250, line: 689, baseType: !7, size: 32, offset: 480)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1249, file: !1250, line: 691, baseType: !1275, size: 64, offset: 512)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1277)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1250, line: 691, flags: DIFlagFwdDecl)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1249, file: !1250, line: 692, baseType: !1279, size: 832, offset: 576)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1250, line: 451, size: 832, elements: !1280)
!1280 = !{!1281, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1279, file: !1250, line: 453, baseType: !1282, size: 128)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1250, line: 325, size: 128, elements: !1283)
!1283 = !{!1284, !1285}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1282, file: !1250, line: 326, baseType: !253, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1282, file: !1250, line: 327, baseType: !369, size: 32, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1279, file: !1250, line: 454, baseType: !329, size: 192, align: 64, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1279, file: !1250, line: 455, baseType: !161, size: 128, offset: 320)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1279, file: !1250, line: 456, baseType: !7, size: 32, offset: 448)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1279, file: !1250, line: 458, baseType: !495, size: 64, offset: 512)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1279, file: !1250, line: 459, baseType: !495, size: 64, offset: 576)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1279, file: !1250, line: 460, baseType: !495, size: 64, offset: 640)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1279, file: !1250, line: 461, baseType: !495, size: 64, offset: 704)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1279, file: !1250, line: 463, baseType: !495, size: 64, offset: 768)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1279, file: !1250, line: 465, baseType: !1295, offset: 832)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1250, line: 415, elements: !187)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1249, file: !1250, line: 693, baseType: !1297, size: 384, offset: 1408)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1250, line: 489, size: 384, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1302, !1303, !1304, !1305}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1297, file: !1250, line: 490, baseType: !161, size: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1297, file: !1250, line: 491, baseType: !253, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1297, file: !1250, line: 492, baseType: !253, size: 64, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1297, file: !1250, line: 493, baseType: !7, size: 32, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1297, file: !1250, line: 494, baseType: !126, size: 16, offset: 288)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1297, file: !1250, line: 495, baseType: !126, size: 16, offset: 304)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1297, file: !1250, line: 497, baseType: !1306, size: 64, offset: 320)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1249, file: !1250, line: 697, baseType: !1308, size: 1792, offset: 1792)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1250, line: 507, size: 1792, elements: !1309)
!1309 = !{!1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1389, !1390}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1308, file: !1250, line: 508, baseType: !329, size: 192, align: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1308, file: !1250, line: 515, baseType: !495, size: 64, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1308, file: !1250, line: 516, baseType: !495, size: 64, offset: 256)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1308, file: !1250, line: 517, baseType: !495, size: 64, offset: 320)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1308, file: !1250, line: 518, baseType: !495, size: 64, offset: 384)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1308, file: !1250, line: 519, baseType: !495, size: 64, offset: 448)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1308, file: !1250, line: 526, baseType: !809, size: 64, offset: 512)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1308, file: !1250, line: 527, baseType: !495, size: 64, offset: 576)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1308, file: !1250, line: 528, baseType: !7, size: 32, offset: 640)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1308, file: !1250, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1308, file: !1250, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1308, file: !1250, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1308, file: !1250, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1308, file: !1250, line: 563, baseType: !1324, size: 512, offset: 704)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !26, line: 118, size: 512, elements: !1325)
!1325 = !{!1326, !1334, !1335, !1340, !1383, !1386, !1387, !1388}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1324, file: !26, line: 119, baseType: !1327, size: 256)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1328, line: 9, size: 256, elements: !1329)
!1328 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1327, file: !1328, line: 10, baseType: !329, size: 192, align: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1327, file: !1328, line: 11, baseType: !1332, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1333, line: 29, baseType: !809)
!1333 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1324, file: !26, line: 120, baseType: !1332, size: 64, offset: 256)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1324, file: !26, line: 121, baseType: !1336, size: 64, offset: 320)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!25, !1339}
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1324, file: !26, line: 122, baseType: !1341, size: 64, offset: 384)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !26, line: 159, size: 512, align: 512, elements: !1343)
!1343 = !{!1344, !1364, !1365, !1368, !1373, !1374, !1378, !1382}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1342, file: !26, line: 160, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !26, line: 214, size: 4608, align: 512, elements: !1347)
!1347 = !{!1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1346, file: !26, line: 215, baseType: !812)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1346, file: !26, line: 216, baseType: !7, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1346, file: !26, line: 217, baseType: !7, size: 32, offset: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1346, file: !26, line: 218, baseType: !7, size: 32, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1346, file: !26, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1346, file: !26, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1346, file: !26, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1346, file: !26, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1346, file: !26, line: 233, baseType: !1332, size: 64, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1346, file: !26, line: 234, baseType: !1339, size: 64, offset: 192)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1346, file: !26, line: 235, baseType: !1332, size: 64, offset: 256)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1346, file: !26, line: 236, baseType: !1339, size: 64, offset: 320)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1346, file: !26, line: 237, baseType: !1361, size: 4096, offset: 512)
!1361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1342, size: 4096, elements: !1362)
!1362 = !{!1363}
!1363 = !DISubrange(count: 8)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1342, file: !26, line: 161, baseType: !7, size: 32, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1342, file: !26, line: 162, baseType: !1366, size: 32, offset: 96)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !107, line: 27, baseType: !1367)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !133, line: 96, baseType: !199)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1342, file: !26, line: 163, baseType: !1369, size: 32, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !466, line: 276, baseType: !1370)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !466, line: 276, size: 32, elements: !1371)
!1371 = !{!1372}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1370, file: !466, line: 276, baseType: !470, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1342, file: !26, line: 164, baseType: !1339, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1342, file: !26, line: 165, baseType: !1375, size: 128, offset: 256)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1328, line: 14, size: 128, elements: !1376)
!1376 = !{!1377}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1375, file: !1328, line: 15, baseType: !794, size: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1342, file: !26, line: 166, baseType: !1379, size: 64, offset: 384)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!1332}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1342, file: !26, line: 167, baseType: !1332, size: 64, offset: 448)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1324, file: !26, line: 123, baseType: !1384, size: 8, offset: 448)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !370, line: 17, baseType: !1385)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !372, line: 21, baseType: !501)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1324, file: !26, line: 124, baseType: !1384, size: 8, offset: 456)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1324, file: !26, line: 125, baseType: !1384, size: 8, offset: 464)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1324, file: !26, line: 126, baseType: !1384, size: 8, offset: 472)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1308, file: !1250, line: 572, baseType: !1324, size: 512, offset: 1216)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1308, file: !1250, line: 580, baseType: !1391, size: 64, offset: 1728)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1249, file: !1250, line: 721, baseType: !7, size: 32, offset: 3584)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1249, file: !1250, line: 722, baseType: !199, size: 32, offset: 3616)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1249, file: !1250, line: 723, baseType: !1395, size: 64, offset: 3648)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1397)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1398, line: 17, baseType: !1399)
!1398 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1398, line: 17, size: 64, elements: !1400)
!1400 = !{!1401}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1399, file: !1398, line: 17, baseType: !1402, size: 64)
!1402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 64, elements: !1403)
!1403 = !{!1404}
!1404 = !DISubrange(count: 1)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1249, file: !1250, line: 724, baseType: !1397, size: 64, offset: 3712)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1249, file: !1250, line: 749, baseType: !1407, offset: 3776)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1250, line: 290, elements: !187)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1249, file: !1250, line: 751, baseType: !161, size: 128, offset: 3776)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1249, file: !1250, line: 757, baseType: !1006, size: 64, offset: 3904)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1249, file: !1250, line: 758, baseType: !1006, size: 64, offset: 3968)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1249, file: !1250, line: 761, baseType: !1412, size: 320, offset: 4032)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1183, line: 34, size: 320, elements: !1413)
!1413 = !{!1414, !1415}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1412, file: !1183, line: 35, baseType: !495, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1412, file: !1183, line: 36, baseType: !1416, size: 256, offset: 64)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1013, size: 256, elements: !1187)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1249, file: !1250, line: 766, baseType: !199, size: 32, offset: 4352)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1249, file: !1250, line: 767, baseType: !199, size: 32, offset: 4384)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1249, file: !1250, line: 768, baseType: !199, size: 32, offset: 4416)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1249, file: !1250, line: 770, baseType: !199, size: 32, offset: 4448)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1249, file: !1250, line: 772, baseType: !253, size: 64, offset: 4480)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1249, file: !1250, line: 775, baseType: !7, size: 32, offset: 4544)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1249, file: !1250, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1249, file: !1250, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1249, file: !1250, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1249, file: !1250, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1249, file: !1250, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1249, file: !1250, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1249, file: !1250, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1249, file: !1250, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1249, file: !1250, line: 831, baseType: !253, size: 64, offset: 4672)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1249, file: !1250, line: 833, baseType: !1433, size: 384, offset: 4736)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !31, line: 25, size: 384, elements: !1434)
!1434 = !{!1435, !1440}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1433, file: !31, line: 26, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!135, !1439}
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, scope: !1433, file: !31, line: 27, baseType: !1441, size: 320, offset: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1433, file: !31, line: 27, size: 320, elements: !1442)
!1442 = !{!1443, !1453, !1480}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1441, file: !31, line: 36, baseType: !1444, size: 320)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1441, file: !31, line: 29, size: 320, elements: !1445)
!1445 = !{!1446, !1448, !1449, !1450, !1451, !1452}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1444, file: !31, line: 30, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1444, file: !31, line: 31, baseType: !369, size: 32, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1444, file: !31, line: 32, baseType: !369, size: 32, offset: 96)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1444, file: !31, line: 33, baseType: !369, size: 32, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1444, file: !31, line: 34, baseType: !495, size: 64, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1444, file: !31, line: 35, baseType: !1447, size: 64, offset: 256)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1441, file: !31, line: 46, baseType: !1454, size: 192)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1441, file: !31, line: 38, size: 192, elements: !1455)
!1455 = !{!1456, !1457, !1458, !1479}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1454, file: !31, line: 39, baseType: !1366, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1454, file: !31, line: 40, baseType: !30, size: 32, offset: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !31, line: 41, baseType: !1459, size: 64, offset: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !31, line: 41, size: 64, elements: !1460)
!1460 = !{!1461, !1469}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1459, file: !31, line: 42, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1464, line: 7, size: 128, elements: !1465)
!1464 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1465 = !{!1466, !1468}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1463, file: !1464, line: 8, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !133, line: 93, baseType: !589)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1463, file: !1464, line: 9, baseType: !589, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1459, file: !31, line: 43, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1472, line: 7, size: 64, elements: !1473)
!1472 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1473 = !{!1474, !1478}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1471, file: !1472, line: 8, baseType: !1475, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1472, line: 5, baseType: !1476)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !370, line: 20, baseType: !1477)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !372, line: 26, baseType: !199)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1471, file: !1472, line: 9, baseType: !1476, size: 32, offset: 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1454, file: !31, line: 45, baseType: !495, size: 64, offset: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1441, file: !31, line: 54, baseType: !1481, size: 256)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1441, file: !31, line: 48, size: 256, elements: !1482)
!1482 = !{!1483, !1486, !1487, !1488, !1489}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1481, file: !31, line: 49, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !31, line: 14, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1481, file: !31, line: 50, baseType: !199, size: 32, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1481, file: !31, line: 51, baseType: !199, size: 32, offset: 96)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1481, file: !31, line: 52, baseType: !253, size: 64, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1481, file: !31, line: 53, baseType: !253, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1249, file: !1250, line: 835, baseType: !1491, size: 32, offset: 5120)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !107, line: 22, baseType: !1492)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !133, line: 28, baseType: !199)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1249, file: !1250, line: 836, baseType: !1491, size: 32, offset: 5152)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1249, file: !1250, line: 840, baseType: !253, size: 64, offset: 5184)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1249, file: !1250, line: 849, baseType: !1248, size: 64, offset: 5248)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1249, file: !1250, line: 852, baseType: !1248, size: 64, offset: 5312)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1249, file: !1250, line: 857, baseType: !161, size: 128, offset: 5376)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1249, file: !1250, line: 858, baseType: !161, size: 128, offset: 5504)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1249, file: !1250, line: 859, baseType: !1248, size: 64, offset: 5632)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1249, file: !1250, line: 867, baseType: !161, size: 128, offset: 5696)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1249, file: !1250, line: 868, baseType: !161, size: 128, offset: 5824)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1249, file: !1250, line: 871, baseType: !1503, size: 64, offset: 5952)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !86, line: 59, size: 768, elements: !1505)
!1505 = !{!1506, !1507, !1508, !1509, !1511, !1512, !1513, !1514}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1504, file: !86, line: 61, baseType: !1262, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1504, file: !86, line: 62, baseType: !7, size: 32, offset: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1504, file: !86, line: 63, baseType: !173, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1504, file: !86, line: 65, baseType: !1510, size: 256, offset: 64)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 256, elements: !1187)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1504, file: !86, line: 66, baseType: !690, size: 64, offset: 320)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1504, file: !86, line: 68, baseType: !403, size: 128, offset: 384)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1504, file: !86, line: 69, baseType: !443, size: 128, align: 64, offset: 512)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1504, file: !86, line: 70, baseType: !1515, size: 128, offset: 640)
!1515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1516, size: 128, elements: !1403)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !86, line: 54, size: 128, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1516, file: !86, line: 55, baseType: !199, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1516, file: !86, line: 56, baseType: !1520, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !86, line: 56, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1249, file: !1250, line: 872, baseType: !1523, size: 512, offset: 6016)
!1523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !694, size: 512, elements: !1187)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1249, file: !1250, line: 873, baseType: !161, size: 128, offset: 6528)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1249, file: !1250, line: 874, baseType: !161, size: 128, offset: 6656)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1249, file: !1250, line: 876, baseType: !1527, size: 64, offset: 6784)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1529, line: 26, size: 192, elements: !1530)
!1529 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1528, file: !1529, line: 27, baseType: !7, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1528, file: !1529, line: 28, baseType: !1533, size: 128, offset: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1534, line: 43, size: 128, elements: !1535)
!1534 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1535 = !{!1536, !1537}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1533, file: !1534, line: 44, baseType: !812)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1533, file: !1534, line: 45, baseType: !161, size: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1249, file: !1250, line: 879, baseType: !760, size: 64, offset: 6848)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1249, file: !1250, line: 882, baseType: !760, size: 64, offset: 6912)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1249, file: !1250, line: 884, baseType: !495, size: 64, offset: 6976)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1249, file: !1250, line: 885, baseType: !495, size: 64, offset: 7040)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1249, file: !1250, line: 890, baseType: !495, size: 64, offset: 7104)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1249, file: !1250, line: 891, baseType: !1544, size: 128, offset: 7168)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1250, line: 242, size: 128, elements: !1545)
!1545 = !{!1546, !1547, !1548}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1544, file: !1250, line: 244, baseType: !495, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1544, file: !1250, line: 245, baseType: !495, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1544, file: !1250, line: 246, baseType: !812, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1249, file: !1250, line: 900, baseType: !253, size: 64, offset: 7296)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1249, file: !1250, line: 901, baseType: !253, size: 64, offset: 7360)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1249, file: !1250, line: 904, baseType: !495, size: 64, offset: 7424)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1249, file: !1250, line: 907, baseType: !495, size: 64, offset: 7488)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1249, file: !1250, line: 910, baseType: !253, size: 64, offset: 7552)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1249, file: !1250, line: 911, baseType: !253, size: 64, offset: 7616)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1249, file: !1250, line: 914, baseType: !1556, size: 640, offset: 7680)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1557, line: 123, size: 640, elements: !1558)
!1557 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1558 = !{!1559, !1565, !1566}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1556, file: !1557, line: 124, baseType: !1560, size: 576)
!1560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1561, size: 576, elements: !216)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1557, line: 108, size: 192, elements: !1562)
!1562 = !{!1563, !1564}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1561, file: !1557, line: 109, baseType: !495, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1561, file: !1557, line: 110, baseType: !1375, size: 128, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1556, file: !1557, line: 125, baseType: !7, size: 32, offset: 576)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1556, file: !1557, line: 126, baseType: !7, size: 32, offset: 608)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1249, file: !1250, line: 917, baseType: !1568, size: 192, offset: 8320)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1557, line: 134, size: 192, elements: !1569)
!1569 = !{!1570, !1571}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1568, file: !1557, line: 135, baseType: !443, size: 128, align: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1568, file: !1557, line: 136, baseType: !7, size: 32, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1249, file: !1250, line: 923, baseType: !1573, size: 64, offset: 8512)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1575)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1576, line: 111, size: 1280, elements: !1577)
!1576 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1577 = !{!1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1597, !1598, !1599, !1600, !1601, !1602, !1709, !1710, !1711, !1712, !1738, !1741, !1751}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1575, file: !1576, line: 112, baseType: !321, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1575, file: !1576, line: 120, baseType: !301, size: 32, offset: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1575, file: !1576, line: 121, baseType: !309, size: 32, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1575, file: !1576, line: 122, baseType: !301, size: 32, offset: 96)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1575, file: !1576, line: 123, baseType: !309, size: 32, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1575, file: !1576, line: 124, baseType: !301, size: 32, offset: 160)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1575, file: !1576, line: 125, baseType: !309, size: 32, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1575, file: !1576, line: 126, baseType: !301, size: 32, offset: 224)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1575, file: !1576, line: 127, baseType: !309, size: 32, offset: 256)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1575, file: !1576, line: 128, baseType: !7, size: 32, offset: 288)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1575, file: !1576, line: 129, baseType: !1589, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1590, line: 26, baseType: !1591)
!1590 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1590, line: 24, size: 64, elements: !1592)
!1592 = !{!1593}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1591, file: !1590, line: 25, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 64, elements: !1595)
!1595 = !{!1596}
!1596 = !DISubrange(count: 2)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1575, file: !1576, line: 130, baseType: !1589, size: 64, offset: 384)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1575, file: !1576, line: 131, baseType: !1589, size: 64, offset: 448)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1575, file: !1576, line: 132, baseType: !1589, size: 64, offset: 512)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1575, file: !1576, line: 133, baseType: !1589, size: 64, offset: 576)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1575, file: !1576, line: 135, baseType: !501, size: 8, offset: 640)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1575, file: !1576, line: 137, baseType: !1603, size: 64, offset: 704)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1605, line: 189, size: 1664, elements: !1606)
!1605 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1606 = !{!1607, !1608, !1611, !1616, !1617, !1620, !1621, !1626, !1627, !1628, !1629, !1631, !1632, !1633, !1634, !1635, !1673, !1694}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1604, file: !1605, line: 190, baseType: !1262, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1604, file: !1605, line: 191, baseType: !1609, size: 32, offset: 32)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1605, line: 28, baseType: !1610)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !107, line: 98, baseType: !1476)
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1604, file: !1605, line: 192, baseType: !1612, size: 192, offset: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1604, file: !1605, line: 192, size: 192, elements: !1613)
!1613 = !{!1614, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1612, file: !1605, line: 193, baseType: !161, size: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1612, file: !1605, line: 194, baseType: !329, size: 192, align: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1604, file: !1605, line: 199, baseType: !799, size: 256, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1604, file: !1605, line: 200, baseType: !1618, size: 64, offset: 512)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1605, line: 200, flags: DIFlagFwdDecl)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1604, file: !1605, line: 201, baseType: !108, size: 64, offset: 576)
!1621 = !DIDerivedType(tag: DW_TAG_member, scope: !1604, file: !1605, line: 202, baseType: !1622, size: 64, offset: 640)
!1622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1604, file: !1605, line: 202, size: 64, elements: !1623)
!1623 = !{!1624, !1625}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1622, file: !1605, line: 203, baseType: !595, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1622, file: !1605, line: 204, baseType: !595, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1604, file: !1605, line: 206, baseType: !595, size: 64, offset: 704)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1604, file: !1605, line: 207, baseType: !301, size: 32, offset: 768)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1604, file: !1605, line: 208, baseType: !309, size: 32, offset: 800)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1604, file: !1605, line: 209, baseType: !1630, size: 32, offset: 832)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1605, line: 31, baseType: !615)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1604, file: !1605, line: 210, baseType: !126, size: 16, offset: 864)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1604, file: !1605, line: 211, baseType: !126, size: 16, offset: 880)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1604, file: !1605, line: 215, baseType: !1237, size: 16, offset: 896)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1604, file: !1605, line: 222, baseType: !253, size: 64, offset: 960)
!1635 = !DIDerivedType(tag: DW_TAG_member, scope: !1604, file: !1605, line: 239, baseType: !1636, size: 320, offset: 1024)
!1636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1604, file: !1605, line: 239, size: 320, elements: !1637)
!1637 = !{!1638, !1665}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1636, file: !1605, line: 240, baseType: !1639, size: 320)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1605, line: 108, size: 320, elements: !1640)
!1640 = !{!1641, !1642, !1654, !1657, !1664}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1639, file: !1605, line: 110, baseType: !253, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1639, file: !1605, line: 111, baseType: !1643, size: 64, offset: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1639, file: !1605, line: 111, size: 64, elements: !1644)
!1644 = !{!1645, !1653}
!1645 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !1605, line: 112, baseType: !1646, size: 64)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1643, file: !1605, line: 112, size: 64, elements: !1647)
!1647 = !{!1648, !1649}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1646, file: !1605, line: 114, baseType: !891, size: 16)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1646, file: !1605, line: 115, baseType: !1650, size: 48, offset: 16)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 48, elements: !1651)
!1651 = !{!1652}
!1652 = !DISubrange(count: 6)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1643, file: !1605, line: 121, baseType: !253, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1639, file: !1605, line: 123, baseType: !1655, size: 64, offset: 128)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1605, line: 96, flags: DIFlagFwdDecl)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1639, file: !1605, line: 124, baseType: !1658, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1605, line: 102, size: 192, elements: !1660)
!1660 = !{!1661, !1662, !1663}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1659, file: !1605, line: 103, baseType: !443, size: 128, align: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1659, file: !1605, line: 104, baseType: !1262, size: 32, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1659, file: !1605, line: 105, baseType: !270, size: 8, offset: 160)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1639, file: !1605, line: 125, baseType: !121, size: 64, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1636, file: !1605, line: 241, baseType: !1666, size: 320)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1636, file: !1605, line: 241, size: 320, elements: !1667)
!1667 = !{!1668, !1669, !1670, !1671, !1672}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1666, file: !1605, line: 242, baseType: !253, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1666, file: !1605, line: 243, baseType: !253, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1666, file: !1605, line: 244, baseType: !1655, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1666, file: !1605, line: 245, baseType: !1658, size: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1666, file: !1605, line: 246, baseType: !215, size: 64, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !1604, file: !1605, line: 254, baseType: !1674, size: 256, offset: 1344)
!1674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1604, file: !1605, line: 254, size: 256, elements: !1675)
!1675 = !{!1676, !1682}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1674, file: !1605, line: 255, baseType: !1677, size: 256)
!1677 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1605, line: 128, size: 256, elements: !1678)
!1678 = !{!1679, !1680}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1677, file: !1605, line: 129, baseType: !108, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1677, file: !1605, line: 130, baseType: !1681, size: 256)
!1681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !1187)
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !1605, line: 256, baseType: !1683, size: 256)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1674, file: !1605, line: 256, size: 256, elements: !1684)
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1683, file: !1605, line: 258, baseType: !161, size: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1683, file: !1605, line: 259, baseType: !1687, size: 128, offset: 128)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1688, line: 22, size: 128, elements: !1689)
!1688 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1689 = !{!1690, !1693}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1687, file: !1688, line: 23, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1688, line: 23, flags: DIFlagFwdDecl)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1687, file: !1688, line: 24, baseType: !253, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1604, file: !1605, line: 274, baseType: !1695, size: 64, offset: 1600)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1605, line: 170, size: 192, elements: !1697)
!1697 = !{!1698, !1707, !1708}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1696, file: !1605, line: 171, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1605, line: 165, baseType: !1700)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!199, !1603, !1703, !1705, !1603}
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1656)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1677)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1696, file: !1605, line: 172, baseType: !1603, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1696, file: !1605, line: 173, baseType: !1655, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1575, file: !1576, line: 138, baseType: !1603, size: 64, offset: 768)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1575, file: !1576, line: 139, baseType: !1603, size: 64, offset: 832)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1575, file: !1576, line: 140, baseType: !1603, size: 64, offset: 896)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1575, file: !1576, line: 145, baseType: !1713, size: 64, offset: 960)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1715, line: 13, size: 896, elements: !1716)
!1715 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1716 = !{!1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1714, file: !1715, line: 14, baseType: !1262, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1714, file: !1715, line: 15, baseType: !321, size: 32, offset: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1714, file: !1715, line: 16, baseType: !321, size: 32, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1714, file: !1715, line: 21, baseType: !803, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1714, file: !1715, line: 27, baseType: !253, size: 64, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1714, file: !1715, line: 28, baseType: !253, size: 64, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1714, file: !1715, line: 29, baseType: !803, size: 64, offset: 320)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1714, file: !1715, line: 32, baseType: !694, size: 128, offset: 384)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1714, file: !1715, line: 33, baseType: !301, size: 32, offset: 512)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1714, file: !1715, line: 37, baseType: !803, size: 64, offset: 576)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1714, file: !1715, line: 44, baseType: !1728, size: 256, offset: 640)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1729, line: 15, size: 256, elements: !1730)
!1729 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1730 = !{!1731, !1732, !1733, !1734, !1735, !1736, !1737}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1728, file: !1729, line: 16, baseType: !812)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1728, file: !1729, line: 18, baseType: !199, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1728, file: !1729, line: 19, baseType: !199, size: 32, offset: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1728, file: !1729, line: 20, baseType: !199, size: 32, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1728, file: !1729, line: 21, baseType: !199, size: 32, offset: 96)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1728, file: !1729, line: 22, baseType: !253, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1728, file: !1729, line: 23, baseType: !253, size: 64, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1575, file: !1576, line: 146, baseType: !1739, size: 64, offset: 1024)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !775, line: 516, flags: DIFlagFwdDecl)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1575, file: !1576, line: 147, baseType: !1742, size: 64, offset: 1088)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1576, line: 25, size: 64, elements: !1744)
!1744 = !{!1745, !1746, !1747}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1743, file: !1576, line: 26, baseType: !321, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1743, file: !1576, line: 27, baseType: !199, size: 32, offset: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1743, file: !1576, line: 28, baseType: !1748, offset: 64)
!1748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, elements: !1749)
!1749 = !{!1750}
!1750 = !DISubrange(count: 0)
!1751 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !1576, line: 149, baseType: !1752, size: 128, offset: 1152)
!1752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !1576, line: 149, size: 128, elements: !1753)
!1753 = !{!1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1752, file: !1576, line: 150, baseType: !199, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1752, file: !1576, line: 151, baseType: !443, size: 128, align: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1249, file: !1250, line: 926, baseType: !1573, size: 64, offset: 8576)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1249, file: !1250, line: 929, baseType: !1573, size: 64, offset: 8640)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1249, file: !1250, line: 933, baseType: !1603, size: 64, offset: 8704)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1249, file: !1250, line: 943, baseType: !1760, size: 128, offset: 8768)
!1760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 128, elements: !1761)
!1761 = !{!1762}
!1762 = !DISubrange(count: 16)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1249, file: !1250, line: 945, baseType: !1764, size: 64, offset: 8896)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1250, line: 49, flags: DIFlagFwdDecl)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1249, file: !1250, line: 956, baseType: !1767, size: 64, offset: 8960)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1250, line: 45, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1249, file: !1250, line: 959, baseType: !1770, size: 64, offset: 9024)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1250, line: 959, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1249, file: !1250, line: 962, baseType: !1773, size: 64, offset: 9088)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1250, line: 66, flags: DIFlagFwdDecl)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1249, file: !1250, line: 966, baseType: !1776, size: 64, offset: 9152)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1250, line: 50, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1249, file: !1250, line: 969, baseType: !1779, size: 64, offset: 9216)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1781, line: 82, size: 7296, elements: !1782)
!1781 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1788, !1789, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1818, !1827, !1828, !1830, !1831, !1832, !1835, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1865, !1866, !1873, !1874, !1875, !1876, !1877, !1878}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1780, file: !1781, line: 83, baseType: !1262, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1780, file: !1781, line: 84, baseType: !321, size: 32, offset: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1780, file: !1781, line: 85, baseType: !199, size: 32, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1780, file: !1781, line: 86, baseType: !161, size: 128, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1780, file: !1781, line: 88, baseType: !403, size: 128, offset: 256)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1780, file: !1781, line: 91, baseType: !1248, size: 64, offset: 384)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1780, file: !1781, line: 94, baseType: !1790, size: 192, offset: 448)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1791, line: 30, size: 192, elements: !1792)
!1791 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1792 = !{!1793, !1794}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1790, file: !1791, line: 31, baseType: !161, size: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1790, file: !1791, line: 32, baseType: !1795, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1796, line: 25, baseType: !1797)
!1796 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1796, line: 23, size: 64, elements: !1798)
!1798 = !{!1799}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1797, file: !1796, line: 24, baseType: !1402, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1780, file: !1781, line: 97, baseType: !690, size: 64, offset: 640)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1780, file: !1781, line: 100, baseType: !199, size: 32, offset: 704)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1780, file: !1781, line: 106, baseType: !199, size: 32, offset: 736)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1780, file: !1781, line: 107, baseType: !1248, size: 64, offset: 768)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1780, file: !1781, line: 110, baseType: !199, size: 32, offset: 832)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1780, file: !1781, line: 111, baseType: !7, size: 32, offset: 864)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1780, file: !1781, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1780, file: !1781, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1780, file: !1781, line: 128, baseType: !199, size: 32, offset: 928)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1780, file: !1781, line: 129, baseType: !161, size: 128, offset: 960)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1780, file: !1781, line: 132, baseType: !1324, size: 512, offset: 1088)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1780, file: !1781, line: 133, baseType: !1332, size: 64, offset: 1600)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1780, file: !1781, line: 140, baseType: !1813, size: 256, offset: 1664)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1814, size: 256, elements: !1595)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1781, line: 38, size: 128, elements: !1815)
!1815 = !{!1816, !1817}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1814, file: !1781, line: 39, baseType: !495, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1814, file: !1781, line: 40, baseType: !495, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1780, file: !1781, line: 146, baseType: !1819, size: 192, offset: 1920)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1781, line: 66, size: 192, elements: !1820)
!1820 = !{!1821}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1819, file: !1781, line: 67, baseType: !1822, size: 192)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1781, line: 47, size: 192, elements: !1823)
!1823 = !{!1824, !1825, !1826}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1822, file: !1781, line: 48, baseType: !805, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1822, file: !1781, line: 49, baseType: !805, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1822, file: !1781, line: 50, baseType: !805, size: 64, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1780, file: !1781, line: 150, baseType: !1556, size: 640, offset: 2112)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1780, file: !1781, line: 153, baseType: !1829, size: 256, offset: 2752)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1503, size: 256, elements: !1187)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1780, file: !1781, line: 159, baseType: !1503, size: 64, offset: 3008)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1780, file: !1781, line: 162, baseType: !199, size: 32, offset: 3072)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1780, file: !1781, line: 164, baseType: !1833, size: 64, offset: 3136)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1781, line: 164, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1780, file: !1781, line: 175, baseType: !1836, size: 32, offset: 3200)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !466, line: 805, baseType: !1837)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !466, line: 798, size: 32, elements: !1838)
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1837, file: !466, line: 803, baseType: !465, size: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1837, file: !466, line: 804, baseType: !173, offset: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1780, file: !1781, line: 176, baseType: !495, size: 64, offset: 3264)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1780, file: !1781, line: 176, baseType: !495, size: 64, offset: 3328)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1780, file: !1781, line: 176, baseType: !495, size: 64, offset: 3392)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1780, file: !1781, line: 176, baseType: !495, size: 64, offset: 3456)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1780, file: !1781, line: 177, baseType: !495, size: 64, offset: 3520)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1780, file: !1781, line: 178, baseType: !495, size: 64, offset: 3584)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1780, file: !1781, line: 179, baseType: !1544, size: 128, offset: 3648)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1780, file: !1781, line: 180, baseType: !253, size: 64, offset: 3776)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1780, file: !1781, line: 180, baseType: !253, size: 64, offset: 3840)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1780, file: !1781, line: 180, baseType: !253, size: 64, offset: 3904)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1780, file: !1781, line: 180, baseType: !253, size: 64, offset: 3968)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1780, file: !1781, line: 181, baseType: !253, size: 64, offset: 4032)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1780, file: !1781, line: 181, baseType: !253, size: 64, offset: 4096)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1780, file: !1781, line: 181, baseType: !253, size: 64, offset: 4160)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1780, file: !1781, line: 181, baseType: !253, size: 64, offset: 4224)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1780, file: !1781, line: 182, baseType: !253, size: 64, offset: 4288)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1780, file: !1781, line: 182, baseType: !253, size: 64, offset: 4352)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1780, file: !1781, line: 182, baseType: !253, size: 64, offset: 4416)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1780, file: !1781, line: 182, baseType: !253, size: 64, offset: 4480)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1780, file: !1781, line: 183, baseType: !253, size: 64, offset: 4544)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1780, file: !1781, line: 183, baseType: !253, size: 64, offset: 4608)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1780, file: !1781, line: 184, baseType: !1863, offset: 4672)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1864, line: 12, elements: !187)
!1864 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1780, file: !1781, line: 192, baseType: !497, size: 64, offset: 4672)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1780, file: !1781, line: 203, baseType: !1867, size: 2048, offset: 4736)
!1867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1868, size: 2048, elements: !1761)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1869, line: 43, size: 128, elements: !1870)
!1869 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1870 = !{!1871, !1872}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1868, file: !1869, line: 44, baseType: !252, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1868, file: !1869, line: 45, baseType: !252, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1780, file: !1781, line: 220, baseType: !270, size: 8, offset: 6784)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1780, file: !1781, line: 221, baseType: !1237, size: 16, offset: 6800)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1780, file: !1781, line: 222, baseType: !1237, size: 16, offset: 6816)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1780, file: !1781, line: 224, baseType: !1006, size: 64, offset: 6848)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1780, file: !1781, line: 227, baseType: !1205, size: 192, offset: 6912)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1780, file: !1781, line: 233, baseType: !1205, size: 192, offset: 7104)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1249, file: !1250, line: 970, baseType: !1880, size: 64, offset: 9280)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1781, line: 20, size: 16576, elements: !1882)
!1882 = !{!1883, !1884, !1885, !1886}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1881, file: !1781, line: 21, baseType: !173)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1881, file: !1781, line: 22, baseType: !1262, size: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1881, file: !1781, line: 23, baseType: !403, size: 128, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1881, file: !1781, line: 24, baseType: !1887, size: 16384, offset: 192)
!1887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1888, size: 16384, elements: !220)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1791, line: 49, size: 256, elements: !1889)
!1889 = !{!1890}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1888, file: !1791, line: 50, baseType: !1891, size: 256)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1791, line: 35, size: 256, elements: !1892)
!1892 = !{!1893, !1900, !1901, !1907}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1891, file: !1791, line: 37, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1895, line: 19, baseType: !1896)
!1895 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1895, line: 18, baseType: !1898)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{null, !199}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1891, file: !1791, line: 38, baseType: !253, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1891, file: !1791, line: 44, baseType: !1902, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1895, line: 22, baseType: !1903)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1895, line: 21, baseType: !1905)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1891, file: !1791, line: 46, baseType: !1795, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1249, file: !1250, line: 971, baseType: !1795, size: 64, offset: 9344)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1249, file: !1250, line: 972, baseType: !1795, size: 64, offset: 9408)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1249, file: !1250, line: 974, baseType: !1795, size: 64, offset: 9472)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1249, file: !1250, line: 975, baseType: !1790, size: 192, offset: 9536)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1249, file: !1250, line: 976, baseType: !253, size: 64, offset: 9728)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1249, file: !1250, line: 977, baseType: !250, size: 64, offset: 9792)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1249, file: !1250, line: 978, baseType: !7, size: 32, offset: 9856)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1249, file: !1250, line: 980, baseType: !446, size: 64, offset: 9920)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1249, file: !1250, line: 989, baseType: !1917, size: 128, offset: 9984)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1918, line: 35, size: 128, elements: !1919)
!1918 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1919 = !{!1920, !1921, !1922}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1917, file: !1918, line: 36, baseType: !199, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1917, file: !1918, line: 37, baseType: !321, size: 32, offset: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1917, file: !1918, line: 38, baseType: !1923, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1918, line: 23, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1249, file: !1250, line: 992, baseType: !495, size: 64, offset: 10112)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1249, file: !1250, line: 993, baseType: !495, size: 64, offset: 10176)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1249, file: !1250, line: 996, baseType: !173, offset: 10240)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1249, file: !1250, line: 999, baseType: !812, offset: 10240)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1249, file: !1250, line: 1001, baseType: !1930, size: 64, offset: 10240)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1250, line: 636, size: 64, elements: !1931)
!1931 = !{!1932}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1930, file: !1250, line: 637, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1249, file: !1250, line: 1005, baseType: !794, size: 128, offset: 10304)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1249, file: !1250, line: 1007, baseType: !1248, size: 64, offset: 10432)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1249, file: !1250, line: 1009, baseType: !1937, size: 64, offset: 10496)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1250, line: 1009, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1249, file: !1250, line: 1043, baseType: !108, size: 64, offset: 10560)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1249, file: !1250, line: 1046, baseType: !1941, size: 64, offset: 10624)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1250, line: 41, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1249, file: !1250, line: 1050, baseType: !1944, size: 64, offset: 10688)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1250, line: 42, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1249, file: !1250, line: 1054, baseType: !1947, size: 64, offset: 10752)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1250, line: 55, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1249, file: !1250, line: 1056, baseType: !1950, size: 64, offset: 10816)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1250, line: 40, flags: DIFlagFwdDecl)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1249, file: !1250, line: 1058, baseType: !1953, size: 64, offset: 10880)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1955, line: 99, size: 704, elements: !1956)
!1955 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1956 = !{!1957, !1958, !1959, !1960, !1961, !1962, !1963, !1982, !1983}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1954, file: !1955, line: 100, baseType: !803, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1954, file: !1955, line: 101, baseType: !321, size: 32, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1954, file: !1955, line: 102, baseType: !321, size: 32, offset: 96)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1954, file: !1955, line: 105, baseType: !173, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1954, file: !1955, line: 107, baseType: !126, size: 16, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1954, file: !1955, line: 109, baseType: !360, size: 128, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1954, file: !1955, line: 110, baseType: !1964, size: 64, offset: 320)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1955, line: 73, size: 448, elements: !1966)
!1966 = !{!1967, !1970, !1971, !1976, !1981}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1965, file: !1955, line: 74, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1955, line: 74, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1965, file: !1955, line: 75, baseType: !1953, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, scope: !1965, file: !1955, line: 83, baseType: !1972, size: 128, offset: 128)
!1972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1965, file: !1955, line: 83, size: 128, elements: !1973)
!1973 = !{!1974, !1975}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1972, file: !1955, line: 84, baseType: !161, size: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1972, file: !1955, line: 85, baseType: !967, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, scope: !1965, file: !1955, line: 87, baseType: !1977, size: 128, offset: 256)
!1977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1965, file: !1955, line: 87, size: 128, elements: !1978)
!1978 = !{!1979, !1980}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1977, file: !1955, line: 88, baseType: !694, size: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1977, file: !1955, line: 89, baseType: !443, size: 128, align: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1965, file: !1955, line: 92, baseType: !7, size: 32, offset: 384)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1954, file: !1955, line: 111, baseType: !690, size: 64, offset: 384)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1954, file: !1955, line: 113, baseType: !1984, size: 256, offset: 448)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1985, line: 102, size: 256, elements: !1986)
!1985 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1986 = !{!1987, !1988, !1989}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1984, file: !1985, line: 103, baseType: !803, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1984, file: !1985, line: 104, baseType: !161, size: 128, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1984, file: !1985, line: 105, baseType: !1990, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1985, line: 21, baseType: !1991)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !1994}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1249, file: !1250, line: 1061, baseType: !1996, size: 64, offset: 10944)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1250, line: 43, flags: DIFlagFwdDecl)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1249, file: !1250, line: 1064, baseType: !253, size: 64, offset: 11008)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1249, file: !1250, line: 1065, baseType: !2000, size: 64, offset: 11072)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1791, line: 14, baseType: !2002)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1791, line: 12, size: 384, elements: !2003)
!2003 = !{!2004}
!2004 = !DIDerivedType(tag: DW_TAG_member, scope: !2002, file: !1791, line: 13, baseType: !2005, size: 384)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2002, file: !1791, line: 13, size: 384, elements: !2006)
!2006 = !{!2007, !2008, !2009, !2010}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2005, file: !1791, line: 13, baseType: !199, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2005, file: !1791, line: 13, baseType: !199, size: 32, offset: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2005, file: !1791, line: 13, baseType: !199, size: 32, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2005, file: !1791, line: 13, baseType: !2011, size: 256, offset: 128)
!2011 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2012, line: 32, size: 256, elements: !2013)
!2012 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2013 = !{!2014, !2019, !2032, !2038, !2047, !2067, !2072}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2011, file: !2012, line: 37, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !2012, line: 34, size: 64, elements: !2016)
!2016 = !{!2017, !2018}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2015, file: !2012, line: 35, baseType: !1492, size: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2015, file: !2012, line: 36, baseType: !307, size: 32, offset: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2011, file: !2012, line: 45, baseType: !2020, size: 192)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !2012, line: 40, size: 192, elements: !2021)
!2021 = !{!2022, !2024, !2025, !2031}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2020, file: !2012, line: 41, baseType: !2023, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !133, line: 95, baseType: !199)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2020, file: !2012, line: 42, baseType: !199, size: 32, offset: 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2020, file: !2012, line: 43, baseType: !2026, size: 64, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2012, line: 11, baseType: !2027)
!2027 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2012, line: 8, size: 64, elements: !2028)
!2028 = !{!2029, !2030}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2027, file: !2012, line: 9, baseType: !199, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2027, file: !2012, line: 10, baseType: !108, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2020, file: !2012, line: 44, baseType: !199, size: 32, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2011, file: !2012, line: 52, baseType: !2033, size: 128)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !2012, line: 48, size: 128, elements: !2034)
!2034 = !{!2035, !2036, !2037}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2033, file: !2012, line: 49, baseType: !1492, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2033, file: !2012, line: 50, baseType: !307, size: 32, offset: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2033, file: !2012, line: 51, baseType: !2026, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2011, file: !2012, line: 61, baseType: !2039, size: 256)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !2012, line: 55, size: 256, elements: !2040)
!2040 = !{!2041, !2042, !2043, !2044, !2046}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2039, file: !2012, line: 56, baseType: !1492, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2039, file: !2012, line: 57, baseType: !307, size: 32, offset: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2039, file: !2012, line: 58, baseType: !199, size: 32, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2039, file: !2012, line: 59, baseType: !2045, size: 64, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !133, line: 94, baseType: !134)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2039, file: !2012, line: 60, baseType: !2045, size: 64, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2011, file: !2012, line: 95, baseType: !2048, size: 256)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !2012, line: 64, size: 256, elements: !2049)
!2049 = !{!2050, !2051}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2048, file: !2012, line: 65, baseType: !108, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, scope: !2048, file: !2012, line: 77, baseType: !2052, size: 192, offset: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2048, file: !2012, line: 77, size: 192, elements: !2053)
!2053 = !{!2054, !2055, !2062}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2052, file: !2012, line: 82, baseType: !1237, size: 16)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2052, file: !2012, line: 88, baseType: !2056, size: 192)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2052, file: !2012, line: 84, size: 192, elements: !2057)
!2057 = !{!2058, !2060, !2061}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2056, file: !2012, line: 85, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 64, elements: !1362)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2056, file: !2012, line: 86, baseType: !108, size: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2056, file: !2012, line: 87, baseType: !108, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2052, file: !2012, line: 93, baseType: !2063, size: 96)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2052, file: !2012, line: 90, size: 96, elements: !2064)
!2064 = !{!2065, !2066}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2063, file: !2012, line: 91, baseType: !2059, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2063, file: !2012, line: 92, baseType: !371, size: 32, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2011, file: !2012, line: 101, baseType: !2068, size: 128)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !2012, line: 98, size: 128, elements: !2069)
!2069 = !{!2070, !2071}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2068, file: !2012, line: 99, baseType: !135, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2068, file: !2012, line: 100, baseType: !199, size: 32, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2011, file: !2012, line: 108, baseType: !2073, size: 128)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !2012, line: 104, size: 128, elements: !2074)
!2074 = !{!2075, !2076, !2077}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2073, file: !2012, line: 105, baseType: !108, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2073, file: !2012, line: 106, baseType: !199, size: 32, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2073, file: !2012, line: 107, baseType: !7, size: 32, offset: 96)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1249, file: !1250, line: 1067, baseType: !1863, offset: 11136)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1249, file: !1250, line: 1099, baseType: !2080, size: 64, offset: 11136)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1250, line: 56, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1249, file: !1250, line: 1103, baseType: !161, size: 128, offset: 11200)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1249, file: !1250, line: 1104, baseType: !2084, size: 64, offset: 11328)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1250, line: 46, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1249, file: !1250, line: 1105, baseType: !1205, size: 192, offset: 11392)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1249, file: !1250, line: 1106, baseType: !7, size: 32, offset: 11584)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1249, file: !1250, line: 1109, baseType: !2089, size: 128, offset: 11648)
!2089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2090, size: 128, elements: !1595)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1250, line: 51, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1249, file: !1250, line: 1110, baseType: !1205, size: 192, offset: 11776)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1249, file: !1250, line: 1111, baseType: !161, size: 128, offset: 11968)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1249, file: !1250, line: 1173, baseType: !2095, size: 64, offset: 12096)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2097, line: 62, size: 256, align: 256, elements: !2098)
!2097 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2098 = !{!2099, !2100, !2101, !2106}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2096, file: !2097, line: 75, baseType: !371, size: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2096, file: !2097, line: 90, baseType: !371, size: 32, offset: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2096, file: !2097, line: 124, baseType: !2102, size: 64, offset: 64)
!2102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2096, file: !2097, line: 109, size: 64, elements: !2103)
!2103 = !{!2104, !2105}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2102, file: !2097, line: 110, baseType: !496, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2102, file: !2097, line: 112, baseType: !496, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2096, file: !2097, line: 144, baseType: !371, size: 32, offset: 128)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1249, file: !1250, line: 1174, baseType: !369, size: 32, offset: 12160)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1249, file: !1250, line: 1179, baseType: !253, size: 64, offset: 12224)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1249, file: !1250, line: 1182, baseType: !2110, size: 128, offset: 12288)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1183, line: 76, size: 128, elements: !2111)
!2111 = !{!2112, !2117, !2118}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2110, file: !1183, line: 85, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2114, line: 7, size: 64, elements: !2115)
!2114 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2115 = !{!2116}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2113, file: !2114, line: 12, baseType: !1399, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2110, file: !1183, line: 88, baseType: !270, size: 8, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2110, file: !1183, line: 95, baseType: !270, size: 8, offset: 72)
!2119 = !DIDerivedType(tag: DW_TAG_member, scope: !1249, file: !1250, line: 1184, baseType: !2120, size: 128, offset: 12416)
!2120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1249, file: !1250, line: 1184, size: 128, elements: !2121)
!2121 = !{!2122, !2123}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2120, file: !1250, line: 1185, baseType: !1262, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2120, file: !1250, line: 1186, baseType: !443, size: 128, align: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1249, file: !1250, line: 1190, baseType: !2125, size: 64, offset: 12544)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1250, line: 53, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1249, file: !1250, line: 1192, baseType: !2128, size: 128, offset: 12608)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1183, line: 64, size: 128, elements: !2129)
!2129 = !{!2130, !2131, !2132}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2128, file: !1183, line: 65, baseType: !773, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2128, file: !1183, line: 67, baseType: !371, size: 32, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2128, file: !1183, line: 68, baseType: !371, size: 32, offset: 96)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1249, file: !1250, line: 1206, baseType: !199, size: 32, offset: 12736)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1249, file: !1250, line: 1207, baseType: !199, size: 32, offset: 12768)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1249, file: !1250, line: 1209, baseType: !253, size: 64, offset: 12800)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1249, file: !1250, line: 1219, baseType: !495, size: 64, offset: 12864)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1249, file: !1250, line: 1220, baseType: !495, size: 64, offset: 12928)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1249, file: !1250, line: 1317, baseType: !199, size: 32, offset: 12992)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1249, file: !1250, line: 1319, baseType: !1248, size: 64, offset: 13056)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1249, file: !1250, line: 1322, baseType: !2141, size: 64, offset: 13120)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1250, line: 1322, flags: DIFlagFwdDecl)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1249, file: !1250, line: 1326, baseType: !1262, size: 32, offset: 13184)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1249, file: !1250, line: 1342, baseType: !108, size: 64, offset: 13248)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1249, file: !1250, line: 1343, baseType: !496, size: 64, offset: 13312)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1249, file: !1250, line: 1344, baseType: !495, size: 64, offset: 13376)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1249, file: !1250, line: 1345, baseType: !496, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1249, file: !1250, line: 1346, baseType: !496, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1249, file: !1250, line: 1347, baseType: !496, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1249, file: !1250, line: 1348, baseType: !443, size: 128, align: 64, offset: 13504)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1249, file: !1250, line: 1358, baseType: !2152, size: 34816, offset: 13824)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2153, line: 485, size: 34816, elements: !2154)
!2153 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2154 = !{!2155, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2184, !2185, !2186, !2187, !2188, !2189, !2192, !2193, !2194}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2152, file: !2153, line: 487, baseType: !2156, size: 192)
!2156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2157, size: 192, elements: !216)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2158, line: 16, size: 64, elements: !2159)
!2158 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2159 = !{!2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2157, file: !2158, line: 17, baseType: !891, size: 16)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2157, file: !2158, line: 18, baseType: !891, size: 16, offset: 16)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2157, file: !2158, line: 19, baseType: !891, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2157, file: !2158, line: 19, baseType: !891, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2157, file: !2158, line: 19, baseType: !891, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2157, file: !2158, line: 19, baseType: !891, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2157, file: !2158, line: 19, baseType: !891, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2157, file: !2158, line: 20, baseType: !891, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2157, file: !2158, line: 20, baseType: !891, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2157, file: !2158, line: 20, baseType: !891, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2157, file: !2158, line: 20, baseType: !891, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2157, file: !2158, line: 20, baseType: !891, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2157, file: !2158, line: 20, baseType: !891, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2152, file: !2153, line: 491, baseType: !253, size: 64, offset: 192)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2152, file: !2153, line: 495, baseType: !126, size: 16, offset: 256)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2152, file: !2153, line: 496, baseType: !126, size: 16, offset: 272)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2152, file: !2153, line: 497, baseType: !126, size: 16, offset: 288)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2152, file: !2153, line: 498, baseType: !126, size: 16, offset: 304)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2152, file: !2153, line: 502, baseType: !253, size: 64, offset: 320)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2152, file: !2153, line: 503, baseType: !253, size: 64, offset: 384)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2152, file: !2153, line: 514, baseType: !2181, size: 256, offset: 448)
!2181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2182, size: 256, elements: !1187)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2153, line: 483, flags: DIFlagFwdDecl)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2152, file: !2153, line: 516, baseType: !253, size: 64, offset: 704)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2152, file: !2153, line: 518, baseType: !253, size: 64, offset: 768)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2152, file: !2153, line: 520, baseType: !253, size: 64, offset: 832)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2152, file: !2153, line: 521, baseType: !253, size: 64, offset: 896)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2152, file: !2153, line: 522, baseType: !253, size: 64, offset: 960)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2152, file: !2153, line: 528, baseType: !2190, size: 64, offset: 1024)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2153, line: 10, flags: DIFlagFwdDecl)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2152, file: !2153, line: 535, baseType: !253, size: 64, offset: 1088)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2152, file: !2153, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2152, file: !2153, line: 540, baseType: !2195, size: 33280, offset: 1536)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2196, line: 317, size: 33280, elements: !2197)
!2196 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2197 = !{!2198, !2199, !2200}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2195, file: !2196, line: 330, baseType: !7, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2195, file: !2196, line: 337, baseType: !253, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2195, file: !2196, line: 348, baseType: !2201, size: 32768, offset: 512)
!2201 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2196, line: 304, size: 32768, elements: !2202)
!2202 = !{!2203, !2218, !2257, !2307, !2320}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2201, file: !2196, line: 305, baseType: !2204, size: 896)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2196, line: 12, size: 896, elements: !2205)
!2205 = !{!2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2217}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2204, file: !2196, line: 13, baseType: !369, size: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2204, file: !2196, line: 14, baseType: !369, size: 32, offset: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2204, file: !2196, line: 15, baseType: !369, size: 32, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2204, file: !2196, line: 16, baseType: !369, size: 32, offset: 96)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2204, file: !2196, line: 17, baseType: !369, size: 32, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2204, file: !2196, line: 18, baseType: !369, size: 32, offset: 160)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2204, file: !2196, line: 19, baseType: !369, size: 32, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2204, file: !2196, line: 22, baseType: !2214, size: 640, offset: 224)
!2214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 640, elements: !2215)
!2215 = !{!2216}
!2216 = !DISubrange(count: 20)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2204, file: !2196, line: 25, baseType: !369, size: 32, offset: 864)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2201, file: !2196, line: 306, baseType: !2219, size: 4096, align: 128)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2196, line: 34, size: 4096, align: 128, elements: !2220)
!2220 = !{!2221, !2222, !2223, !2224, !2225, !2240, !2241, !2242, !2246, !2248, !2252}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2219, file: !2196, line: 35, baseType: !891, size: 16)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2219, file: !2196, line: 36, baseType: !891, size: 16, offset: 16)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2219, file: !2196, line: 37, baseType: !891, size: 16, offset: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2219, file: !2196, line: 38, baseType: !891, size: 16, offset: 48)
!2225 = !DIDerivedType(tag: DW_TAG_member, scope: !2219, file: !2196, line: 39, baseType: !2226, size: 128, offset: 64)
!2226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2219, file: !2196, line: 39, size: 128, elements: !2227)
!2227 = !{!2228, !2233}
!2228 = !DIDerivedType(tag: DW_TAG_member, scope: !2226, file: !2196, line: 40, baseType: !2229, size: 128)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2226, file: !2196, line: 40, size: 128, elements: !2230)
!2230 = !{!2231, !2232}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2229, file: !2196, line: 41, baseType: !495, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2229, file: !2196, line: 42, baseType: !495, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, scope: !2226, file: !2196, line: 44, baseType: !2234, size: 128)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2226, file: !2196, line: 44, size: 128, elements: !2235)
!2235 = !{!2236, !2237, !2238, !2239}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2234, file: !2196, line: 45, baseType: !369, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2234, file: !2196, line: 46, baseType: !369, size: 32, offset: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2234, file: !2196, line: 47, baseType: !369, size: 32, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2234, file: !2196, line: 48, baseType: !369, size: 32, offset: 96)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2219, file: !2196, line: 51, baseType: !369, size: 32, offset: 192)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2219, file: !2196, line: 52, baseType: !369, size: 32, offset: 224)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2219, file: !2196, line: 55, baseType: !2243, size: 1024, offset: 256)
!2243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 1024, elements: !2244)
!2244 = !{!2245}
!2245 = !DISubrange(count: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2219, file: !2196, line: 58, baseType: !2247, size: 2048, offset: 1280)
!2247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 2048, elements: !220)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2219, file: !2196, line: 60, baseType: !2249, size: 384, offset: 3328)
!2249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 384, elements: !2250)
!2250 = !{!2251}
!2251 = !DISubrange(count: 12)
!2252 = !DIDerivedType(tag: DW_TAG_member, scope: !2219, file: !2196, line: 62, baseType: !2253, size: 384, offset: 3712)
!2253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2219, file: !2196, line: 62, size: 384, elements: !2254)
!2254 = !{!2255, !2256}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2253, file: !2196, line: 63, baseType: !2249, size: 384)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2253, file: !2196, line: 64, baseType: !2249, size: 384)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2201, file: !2196, line: 307, baseType: !2258, size: 1088)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2196, line: 79, size: 1088, elements: !2259)
!2259 = !{!2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2306}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2258, file: !2196, line: 80, baseType: !369, size: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2258, file: !2196, line: 81, baseType: !369, size: 32, offset: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2258, file: !2196, line: 82, baseType: !369, size: 32, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2258, file: !2196, line: 83, baseType: !369, size: 32, offset: 96)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2258, file: !2196, line: 84, baseType: !369, size: 32, offset: 128)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2258, file: !2196, line: 85, baseType: !369, size: 32, offset: 160)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2258, file: !2196, line: 86, baseType: !369, size: 32, offset: 192)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2258, file: !2196, line: 88, baseType: !2214, size: 640, offset: 224)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2258, file: !2196, line: 89, baseType: !1384, size: 8, offset: 864)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2258, file: !2196, line: 90, baseType: !1384, size: 8, offset: 872)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2258, file: !2196, line: 91, baseType: !1384, size: 8, offset: 880)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2258, file: !2196, line: 92, baseType: !1384, size: 8, offset: 888)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2258, file: !2196, line: 93, baseType: !1384, size: 8, offset: 896)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2258, file: !2196, line: 94, baseType: !1384, size: 8, offset: 904)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2258, file: !2196, line: 95, baseType: !2275, size: 64, offset: 960)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2277, line: 11, size: 128, elements: !2278)
!2277 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2278 = !{!2279, !2280}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2276, file: !2277, line: 12, baseType: !135, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2276, file: !2277, line: 13, baseType: !2281, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2283, line: 56, size: 1344, elements: !2284)
!2283 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2284 = !{!2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2282, file: !2283, line: 61, baseType: !253, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2282, file: !2283, line: 62, baseType: !253, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2282, file: !2283, line: 63, baseType: !253, size: 64, offset: 128)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2282, file: !2283, line: 64, baseType: !253, size: 64, offset: 192)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2282, file: !2283, line: 65, baseType: !253, size: 64, offset: 256)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2282, file: !2283, line: 66, baseType: !253, size: 64, offset: 320)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2282, file: !2283, line: 68, baseType: !253, size: 64, offset: 384)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2282, file: !2283, line: 69, baseType: !253, size: 64, offset: 448)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2282, file: !2283, line: 70, baseType: !253, size: 64, offset: 512)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2282, file: !2283, line: 71, baseType: !253, size: 64, offset: 576)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2282, file: !2283, line: 72, baseType: !253, size: 64, offset: 640)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2282, file: !2283, line: 73, baseType: !253, size: 64, offset: 704)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2282, file: !2283, line: 74, baseType: !253, size: 64, offset: 768)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2282, file: !2283, line: 75, baseType: !253, size: 64, offset: 832)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2282, file: !2283, line: 76, baseType: !253, size: 64, offset: 896)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2282, file: !2283, line: 81, baseType: !253, size: 64, offset: 960)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2282, file: !2283, line: 83, baseType: !253, size: 64, offset: 1024)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2282, file: !2283, line: 84, baseType: !253, size: 64, offset: 1088)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2282, file: !2283, line: 85, baseType: !253, size: 64, offset: 1152)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2282, file: !2283, line: 86, baseType: !253, size: 64, offset: 1216)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2282, file: !2283, line: 87, baseType: !253, size: 64, offset: 1280)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2258, file: !2196, line: 96, baseType: !369, size: 32, offset: 1024)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2201, file: !2196, line: 308, baseType: !2308, size: 4608, align: 512)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2196, line: 289, size: 4608, align: 512, elements: !2309)
!2309 = !{!2310, !2311, !2318}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2308, file: !2196, line: 290, baseType: !2219, size: 4096, align: 128)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2308, file: !2196, line: 291, baseType: !2312, size: 512, offset: 4096)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2196, line: 268, size: 512, elements: !2313)
!2313 = !{!2314, !2315, !2316}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2312, file: !2196, line: 269, baseType: !495, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2312, file: !2196, line: 270, baseType: !495, size: 64, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2312, file: !2196, line: 271, baseType: !2317, size: 384, offset: 128)
!2317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 384, elements: !1651)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2308, file: !2196, line: 292, baseType: !2319, offset: 4608)
!2319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, elements: !1749)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2201, file: !2196, line: 309, baseType: !2321, size: 32768)
!2321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 32768, elements: !2322)
!2322 = !{!2323}
!2323 = !DISubrange(count: 4096)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1245, file: !775, line: 378, baseType: !2325, size: 64, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1241, file: !775, line: 384, baseType: !1528, size: 192, offset: 192)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1010, file: !775, line: 500, baseType: !173, offset: 6656)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1010, file: !775, line: 501, baseType: !2329, size: 64, offset: 6656)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !775, line: 387, flags: DIFlagFwdDecl)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1010, file: !775, line: 516, baseType: !1739, size: 64, offset: 6720)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1010, file: !775, line: 519, baseType: !430, size: 64, offset: 6784)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1010, file: !775, line: 521, baseType: !2334, size: 64, offset: 6848)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !775, line: 521, flags: DIFlagFwdDecl)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1010, file: !775, line: 545, baseType: !321, size: 32, offset: 6912)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1010, file: !775, line: 548, baseType: !270, size: 8, offset: 6944)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1010, file: !775, line: 550, baseType: !2339, offset: 6952)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2340, line: 142, elements: !187)
!2340 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1010, file: !775, line: 554, baseType: !1984, size: 256, offset: 6976)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1010, file: !775, line: 557, baseType: !369, size: 32, offset: 7232)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1007, file: !775, line: 565, baseType: !2344, offset: 7296)
!2344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, elements: !2345)
!2345 = !{!2346}
!2346 = !DISubrange(count: -1)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1003, file: !775, line: 151, baseType: !321, size: 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !996, file: !775, line: 156, baseType: !173, offset: 256)
!2349 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !775, line: 159, baseType: !2350, size: 128)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !775, line: 159, size: 128, elements: !2351)
!2351 = !{!2352, !2416}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2350, file: !775, line: 161, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !37, line: 110, size: 1152, elements: !2355)
!2355 = !{!2356, !2366, !2387, !2388, !2389, !2390, !2391, !2403, !2404, !2405}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2354, file: !37, line: 111, baseType: !2357, size: 384)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !37, line: 19, size: 384, elements: !2358)
!2358 = !{!2359, !2361, !2362, !2363, !2364, !2365}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2357, file: !37, line: 20, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2357, file: !37, line: 21, baseType: !2360, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2357, file: !37, line: 22, baseType: !2360, size: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2357, file: !37, line: 23, baseType: !253, size: 64, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2357, file: !37, line: 24, baseType: !253, size: 64, offset: 256)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2357, file: !37, line: 25, baseType: !253, size: 64, offset: 320)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2354, file: !37, line: 112, baseType: !2367, size: 64, offset: 384)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2369, line: 105, size: 128, elements: !2370)
!2369 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2370 = !{!2371, !2372}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2368, file: !2369, line: 110, baseType: !253, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2368, file: !2369, line: 118, baseType: !2373, size: 64, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2369, line: 95, size: 448, elements: !2375)
!2375 = !{!2376, !2377, !2382, !2383, !2384, !2385, !2386}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2374, file: !2369, line: 96, baseType: !803, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2374, file: !2369, line: 97, baseType: !2378, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2369, line: 60, baseType: !2380)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{null, !2367}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2374, file: !2369, line: 98, baseType: !2378, size: 64, offset: 128)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2374, file: !2369, line: 99, baseType: !270, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2374, file: !2369, line: 100, baseType: !270, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2374, file: !2369, line: 101, baseType: !443, size: 128, align: 64, offset: 256)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2374, file: !2369, line: 102, baseType: !2367, size: 64, offset: 384)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2354, file: !37, line: 113, baseType: !2368, size: 128, offset: 448)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2354, file: !37, line: 114, baseType: !1528, size: 192, offset: 576)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2354, file: !37, line: 115, baseType: !36, size: 32, offset: 768)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2354, file: !37, line: 116, baseType: !7, size: 32, offset: 800)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2354, file: !37, line: 117, baseType: !2392, size: 64, offset: 832)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2394)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !37, line: 67, size: 256, elements: !2395)
!2395 = !{!2396, !2397, !2401, !2402}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2394, file: !37, line: 73, baseType: !872, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2394, file: !37, line: 78, baseType: !2398, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{null, !2353}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2394, file: !37, line: 83, baseType: !2398, size: 64, offset: 128)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2394, file: !37, line: 89, baseType: !1059, size: 64, offset: 192)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2354, file: !37, line: 118, baseType: !108, size: 64, offset: 896)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2354, file: !37, line: 119, baseType: !199, size: 32, offset: 960)
!2405 = !DIDerivedType(tag: DW_TAG_member, scope: !2354, file: !37, line: 120, baseType: !2406, size: 128, offset: 1024)
!2406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2354, file: !37, line: 120, size: 128, elements: !2407)
!2407 = !{!2408, !2414}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2406, file: !37, line: 121, baseType: !2409, size: 128)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2410, line: 6, size: 128, elements: !2411)
!2410 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2411 = !{!2412, !2413}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2409, file: !2410, line: 7, baseType: !495, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2409, file: !2410, line: 8, baseType: !495, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2406, file: !37, line: 122, baseType: !2415)
!2415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2409, elements: !1749)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2350, file: !775, line: 162, baseType: !108, size: 64, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !779, file: !775, line: 176, baseType: !443, size: 128, align: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !775, line: 179, baseType: !2419, size: 32, offset: 384)
!2419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !774, file: !775, line: 179, size: 32, elements: !2420)
!2420 = !{!2421, !2422, !2423, !2424}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2419, file: !775, line: 184, baseType: !321, size: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2419, file: !775, line: 192, baseType: !7, size: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2419, file: !775, line: 194, baseType: !7, size: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2419, file: !775, line: 195, baseType: !199, size: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !774, file: !775, line: 199, baseType: !321, size: 32, offset: 416)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !712, file: !77, line: 1964, baseType: !2427, size: 64, offset: 1344)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!135, !655, !2430}
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2432, line: 12, size: 256, elements: !2433)
!2432 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2433 = !{!2434, !2435, !2436, !2437, !2438}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2431, file: !2432, line: 13, baseType: !106, size: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2431, file: !2432, line: 16, baseType: !199, size: 32, offset: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2431, file: !2432, line: 23, baseType: !253, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2431, file: !2432, line: 30, baseType: !253, size: 64, offset: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2431, file: !2432, line: 33, baseType: !2439, size: 64, offset: 192)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !775, line: 27, flags: DIFlagFwdDecl)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !712, file: !77, line: 1966, baseType: !2427, size: 64, offset: 1408)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !656, file: !77, line: 1424, baseType: !2443, size: 64, offset: 448)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2445)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !44, line: 322, size: 704, elements: !2446)
!2446 = !{!2447, !2493, !2497, !2501, !2502, !2503, !2504, !2505, !2510, !2515, !2519}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2445, file: !44, line: 323, baseType: !2448, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!199, !2451}
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !44, line: 294, size: 1600, elements: !2453)
!2453 = !{!2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2478, !2479, !2480}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2452, file: !44, line: 295, baseType: !694, size: 128)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2452, file: !44, line: 296, baseType: !161, size: 128, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2452, file: !44, line: 297, baseType: !161, size: 128, offset: 256)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2452, file: !44, line: 298, baseType: !161, size: 128, offset: 384)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2452, file: !44, line: 299, baseType: !1205, size: 192, offset: 512)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2452, file: !44, line: 300, baseType: !173, offset: 704)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2452, file: !44, line: 301, baseType: !321, size: 32, offset: 704)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2452, file: !44, line: 302, baseType: !655, size: 64, offset: 768)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2452, file: !44, line: 303, baseType: !2463, size: 64, offset: 832)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !44, line: 68, size: 64, elements: !2464)
!2464 = !{!2465, !2477}
!2465 = !DIDerivedType(tag: DW_TAG_member, scope: !2463, file: !44, line: 69, baseType: !2466, size: 32)
!2466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2463, file: !44, line: 69, size: 32, elements: !2467)
!2467 = !{!2468, !2469, !2470}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2466, file: !44, line: 70, baseType: !301, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2466, file: !44, line: 71, baseType: !309, size: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2466, file: !44, line: 72, baseType: !2471, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2472, line: 24, baseType: !2473)
!2472 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2472, line: 22, size: 32, elements: !2474)
!2474 = !{!2475}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2473, file: !2472, line: 23, baseType: !2476, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2472, line: 20, baseType: !307)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2463, file: !44, line: 74, baseType: !43, size: 32, offset: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2452, file: !44, line: 304, baseType: !587, size: 64, offset: 896)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2452, file: !44, line: 305, baseType: !253, size: 64, offset: 960)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2452, file: !44, line: 306, baseType: !2481, size: 576, offset: 1024)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !44, line: 205, size: 576, elements: !2482)
!2482 = !{!2483, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2481, file: !44, line: 206, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !44, line: 66, baseType: !589)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2481, file: !44, line: 207, baseType: !2484, size: 64, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2481, file: !44, line: 208, baseType: !2484, size: 64, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2481, file: !44, line: 209, baseType: !2484, size: 64, offset: 192)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2481, file: !44, line: 210, baseType: !2484, size: 64, offset: 256)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2481, file: !44, line: 211, baseType: !2484, size: 64, offset: 320)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2481, file: !44, line: 212, baseType: !2484, size: 64, offset: 384)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2481, file: !44, line: 213, baseType: !595, size: 64, offset: 448)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2481, file: !44, line: 214, baseType: !595, size: 64, offset: 512)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2445, file: !44, line: 324, baseType: !2494, size: 64, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!2451, !655, !199}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2445, file: !44, line: 325, baseType: !2498, size: 64, offset: 128)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{null, !2451}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2445, file: !44, line: 326, baseType: !2448, size: 64, offset: 192)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2445, file: !44, line: 327, baseType: !2448, size: 64, offset: 256)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2445, file: !44, line: 328, baseType: !2448, size: 64, offset: 320)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2445, file: !44, line: 329, baseType: !740, size: 64, offset: 384)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2445, file: !44, line: 332, baseType: !2506, size: 64, offset: 448)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!2509, !503}
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2445, file: !44, line: 333, baseType: !2511, size: 64, offset: 512)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!199, !503, !2514}
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2445, file: !44, line: 335, baseType: !2516, size: 64, offset: 576)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!199, !503, !2509}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2445, file: !44, line: 337, baseType: !2520, size: 64, offset: 640)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!199, !655, !2523}
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !656, file: !77, line: 1425, baseType: !2525, size: 64, offset: 512)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2527)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !44, line: 428, size: 704, elements: !2528)
!2528 = !{!2529, !2533, !2534, !2538, !2539, !2540, !2555, !2578, !2582, !2583, !2606}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2527, file: !44, line: 429, baseType: !2530, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!199, !655, !199, !199, !605}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2527, file: !44, line: 430, baseType: !740, size: 64, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2527, file: !44, line: 431, baseType: !2535, size: 64, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!199, !655, !7}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2527, file: !44, line: 432, baseType: !2535, size: 64, offset: 192)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2527, file: !44, line: 433, baseType: !740, size: 64, offset: 256)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2527, file: !44, line: 434, baseType: !2541, size: 64, offset: 320)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!199, !655, !199, !2544}
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !44, line: 415, size: 256, elements: !2546)
!2546 = !{!2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2545, file: !44, line: 416, baseType: !199, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2545, file: !44, line: 417, baseType: !7, size: 32, offset: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2545, file: !44, line: 418, baseType: !7, size: 32, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2545, file: !44, line: 420, baseType: !7, size: 32, offset: 96)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2545, file: !44, line: 421, baseType: !7, size: 32, offset: 128)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2545, file: !44, line: 422, baseType: !7, size: 32, offset: 160)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2545, file: !44, line: 423, baseType: !7, size: 32, offset: 192)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2545, file: !44, line: 424, baseType: !7, size: 32, offset: 224)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2527, file: !44, line: 435, baseType: !2556, size: 64, offset: 384)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!199, !655, !2463, !2559}
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !44, line: 343, size: 960, elements: !2561)
!2561 = !{!2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2560, file: !44, line: 344, baseType: !199, size: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2560, file: !44, line: 345, baseType: !495, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2560, file: !44, line: 346, baseType: !495, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2560, file: !44, line: 347, baseType: !495, size: 64, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2560, file: !44, line: 348, baseType: !495, size: 64, offset: 256)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2560, file: !44, line: 349, baseType: !495, size: 64, offset: 320)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2560, file: !44, line: 350, baseType: !495, size: 64, offset: 384)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2560, file: !44, line: 351, baseType: !809, size: 64, offset: 448)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2560, file: !44, line: 353, baseType: !809, size: 64, offset: 512)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2560, file: !44, line: 354, baseType: !199, size: 32, offset: 576)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2560, file: !44, line: 355, baseType: !199, size: 32, offset: 608)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2560, file: !44, line: 356, baseType: !495, size: 64, offset: 640)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2560, file: !44, line: 357, baseType: !495, size: 64, offset: 704)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2560, file: !44, line: 358, baseType: !495, size: 64, offset: 768)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2560, file: !44, line: 359, baseType: !809, size: 64, offset: 832)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2560, file: !44, line: 360, baseType: !199, size: 32, offset: 896)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2527, file: !44, line: 436, baseType: !2579, size: 64, offset: 448)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!199, !655, !2523, !2559}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2527, file: !44, line: 438, baseType: !2556, size: 64, offset: 512)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2527, file: !44, line: 439, baseType: !2584, size: 64, offset: 576)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!199, !655, !2587}
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !44, line: 409, size: 1408, elements: !2589)
!2589 = !{!2590, !2591}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2588, file: !44, line: 410, baseType: !7, size: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2588, file: !44, line: 411, baseType: !2592, size: 1344, offset: 64)
!2592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2593, size: 1344, elements: !216)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !44, line: 395, size: 448, elements: !2594)
!2594 = !{!2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2605}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2593, file: !44, line: 396, baseType: !7, size: 32)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2593, file: !44, line: 397, baseType: !7, size: 32, offset: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2593, file: !44, line: 399, baseType: !7, size: 32, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2593, file: !44, line: 400, baseType: !7, size: 32, offset: 96)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2593, file: !44, line: 401, baseType: !7, size: 32, offset: 128)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2593, file: !44, line: 402, baseType: !7, size: 32, offset: 160)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2593, file: !44, line: 403, baseType: !7, size: 32, offset: 192)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2593, file: !44, line: 404, baseType: !497, size: 64, offset: 256)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2593, file: !44, line: 405, baseType: !2604, size: 64, offset: 320)
!2604 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !107, line: 126, baseType: !495)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2593, file: !44, line: 406, baseType: !2604, size: 64, offset: 384)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2527, file: !44, line: 440, baseType: !2535, size: 64, offset: 640)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !656, file: !77, line: 1426, baseType: !2608, size: 64, offset: 576)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2610)
!2610 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !77, line: 49, flags: DIFlagFwdDecl)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !656, file: !77, line: 1427, baseType: !253, size: 64, offset: 640)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !656, file: !77, line: 1428, baseType: !253, size: 64, offset: 704)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !656, file: !77, line: 1429, baseType: !253, size: 64, offset: 768)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !656, file: !77, line: 1430, baseType: !460, size: 64, offset: 832)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !656, file: !77, line: 1431, baseType: !799, size: 256, offset: 896)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !656, file: !77, line: 1432, baseType: !199, size: 32, offset: 1152)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !656, file: !77, line: 1433, baseType: !321, size: 32, offset: 1184)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !656, file: !77, line: 1437, baseType: !2619, size: 64, offset: 1216)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2622)
!2622 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !77, line: 1437, flags: DIFlagFwdDecl)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !656, file: !77, line: 1449, baseType: !2624, size: 64, offset: 1280)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !476, line: 34, size: 64, elements: !2625)
!2625 = !{!2626}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2624, file: !476, line: 35, baseType: !479, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !656, file: !77, line: 1450, baseType: !161, size: 128, offset: 1344)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !656, file: !77, line: 1451, baseType: !2629, size: 64, offset: 1472)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2631, line: 22, size: 1344, elements: !2632)
!2631 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/lizy2001/genbc/linux")
!2632 = !{!2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !3070, !3071, !3072, !3117, !3118, !3119}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2630, file: !2631, line: 23, baseType: !569, size: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2630, file: !2631, line: 24, baseType: !199, size: 32, offset: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2630, file: !2631, line: 25, baseType: !503, size: 64, offset: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "bd_super", scope: !2630, file: !2631, line: 26, baseType: !655, size: 64, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "bd_mutex", scope: !2630, file: !2631, line: 27, baseType: !1205, size: 192, offset: 192)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2630, file: !2631, line: 28, baseType: !108, size: 64, offset: 384)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2630, file: !2631, line: 29, baseType: !108, size: 64, offset: 448)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2630, file: !2631, line: 30, baseType: !199, size: 32, offset: 512)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2630, file: !2631, line: 31, baseType: !270, size: 8, offset: 544)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_disks", scope: !2630, file: !2631, line: 33, baseType: !161, size: 128, offset: 576)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "bd_contains", scope: !2630, file: !2631, line: 35, baseType: !2629, size: 64, offset: 704)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2630, file: !2631, line: 36, baseType: !1384, size: 8, offset: 768)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part", scope: !2630, file: !2631, line: 37, baseType: !2646, size: 64, offset: 832)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hd_struct", file: !2648, line: 53, size: 6592, elements: !2649)
!2648 = !DIFile(filename: "./include/linux/genhd.h", directory: "/home/lizy2001/genbc/linux")
!2649 = !{!2650, !2651, !2652, !2653, !2656, !2657, !3049, !3050, !3051, !3052, !3062}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "start_sect", scope: !2647, file: !2648, line: 54, baseType: !862, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sects", scope: !2647, file: !2648, line: 60, baseType: !862, size: 64, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !2647, file: !2648, line: 64, baseType: !253, size: 64, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dkstats", scope: !2647, file: !2648, line: 65, baseType: !2654, size: 64, offset: 192)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2648, line: 65, flags: DIFlagFwdDecl)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2647, file: !2648, line: 66, baseType: !2368, size: 128, offset: 256)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "__dev", scope: !2647, file: !2648, line: 68, baseType: !2658, size: 5568, offset: 384)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !56, line: 461, size: 5568, elements: !2659)
!2659 = !{!2660, !2661, !2663, !2851, !2852, !2867, !2868, !2869, !2870, !2871, !2872, !2881, !2986, !2999, !3002, !3003, !3007, !3009, !3010, !3011, !3015, !3021, !3022, !3025, !3029, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3042, !3045, !3046, !3047, !3048}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2658, file: !56, line: 462, baseType: !156, size: 512)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2658, file: !56, line: 463, baseType: !2662, size: 64, offset: 512)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2658, file: !56, line: 465, baseType: !2664, size: 64, offset: 576)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !2666, line: 88, size: 1664, elements: !2667)
!2666 = !DIFile(filename: "drivers/base/base.h", directory: "/home/lizy2001/genbc/linux")
!2667 = !{!2668, !2689, !2690, !2691, !2692, !2693, !2694, !2848, !2849, !2850}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "klist_children", scope: !2665, file: !2666, line: 89, baseType: !2669, size: 256, align: 64)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist", file: !2670, line: 18, size: 256, align: 64, elements: !2671)
!2670 = !DIFile(filename: "./include/linux/klist.h", directory: "/home/lizy2001/genbc/linux")
!2671 = !{!2672, !2673, !2674, !2688}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "k_lock", scope: !2669, file: !2670, line: 19, baseType: !173)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "k_list", scope: !2669, file: !2670, line: 20, baseType: !161, size: 128)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2669, file: !2670, line: 21, baseType: !2675, size: 64, offset: 128)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{null, !2678}
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_node", file: !2670, line: 37, size: 256, elements: !2680)
!2680 = !{!2681, !2682, !2683}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "n_klist", scope: !2679, file: !2670, line: 38, baseType: !108, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "n_node", scope: !2679, file: !2670, line: 39, baseType: !161, size: 128, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "n_ref", scope: !2679, file: !2670, line: 40, baseType: !2684, size: 32, offset: 192)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2685, line: 19, size: 32, elements: !2686)
!2685 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2686 = !{!2687}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2684, file: !2685, line: 20, baseType: !1262, size: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2669, file: !2670, line: 22, baseType: !2675, size: 64, offset: 192)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "knode_parent", scope: !2665, file: !2666, line: 90, baseType: !2679, size: 256, offset: 256)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "knode_driver", scope: !2665, file: !2666, line: 91, baseType: !2679, size: 256, offset: 512)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !2665, file: !2666, line: 92, baseType: !2679, size: 256, offset: 768)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "knode_class", scope: !2665, file: !2666, line: 93, baseType: !2679, size: 256, offset: 1024)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe", scope: !2665, file: !2666, line: 94, baseType: !161, size: 128, offset: 1280)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "async_driver", scope: !2665, file: !2666, line: 95, baseType: !2695, size: 64, offset: 1408)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !50, line: 95, size: 1152, elements: !2697)
!2697 = !{!2698, !2699, !2806, !2807, !2808, !2809, !2810, !2814, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2696, file: !50, line: 96, baseType: !121, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2696, file: !50, line: 97, baseType: !2700, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2702, line: 82, size: 1408, elements: !2703)
!2702 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!2703 = !{!2704, !2705, !2706, !2707, !2708, !2709, !2710, !2714, !2718, !2722, !2726, !2727, !2728, !2729, !2730, !2738, !2739, !2740, !2741, !2769, !2773, !2804, !2805}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2701, file: !2702, line: 83, baseType: !121, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2701, file: !2702, line: 84, baseType: !121, size: 64, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !2701, file: !2702, line: 85, baseType: !2662, size: 64, offset: 128)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2701, file: !2702, line: 86, baseType: !145, size: 64, offset: 192)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2701, file: !2702, line: 87, baseType: !145, size: 64, offset: 256)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2701, file: !2702, line: 88, baseType: !145, size: 64, offset: 320)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2701, file: !2702, line: 90, baseType: !2711, size: 64, offset: 384)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!199, !2662, !2695}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2701, file: !2702, line: 91, baseType: !2715, size: 64, offset: 448)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!199, !2662, !210}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2701, file: !2702, line: 92, baseType: !2719, size: 64, offset: 512)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!199, !2662}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2701, file: !2702, line: 93, baseType: !2723, size: 64, offset: 576)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{null, !2662}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2701, file: !2702, line: 94, baseType: !2719, size: 64, offset: 640)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2701, file: !2702, line: 95, baseType: !2723, size: 64, offset: 704)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2701, file: !2702, line: 97, baseType: !2719, size: 64, offset: 768)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2701, file: !2702, line: 98, baseType: !2719, size: 64, offset: 832)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2701, file: !2702, line: 100, baseType: !2731, size: 64, offset: 896)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!199, !2662, !2734}
!2734 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !63, line: 52, baseType: !2735)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !63, line: 50, size: 32, elements: !2736)
!2736 = !{!2737}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2735, file: !63, line: 51, baseType: !199, size: 32)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2701, file: !2702, line: 101, baseType: !2719, size: 64, offset: 960)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2701, file: !2702, line: 103, baseType: !2719, size: 64, offset: 1024)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2701, file: !2702, line: 105, baseType: !2719, size: 64, offset: 1088)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2701, file: !2702, line: 107, baseType: !2742, size: 64, offset: 1152)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2744)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !63, line: 278, size: 1472, elements: !2745)
!2745 = !{!2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2744, file: !63, line: 279, baseType: !2719, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2744, file: !63, line: 280, baseType: !2723, size: 64, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2744, file: !63, line: 281, baseType: !2719, size: 64, offset: 128)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2744, file: !63, line: 282, baseType: !2719, size: 64, offset: 192)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2744, file: !63, line: 283, baseType: !2719, size: 64, offset: 256)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2744, file: !63, line: 284, baseType: !2719, size: 64, offset: 320)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2744, file: !63, line: 285, baseType: !2719, size: 64, offset: 384)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2744, file: !63, line: 286, baseType: !2719, size: 64, offset: 448)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2744, file: !63, line: 287, baseType: !2719, size: 64, offset: 512)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2744, file: !63, line: 288, baseType: !2719, size: 64, offset: 576)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2744, file: !63, line: 289, baseType: !2719, size: 64, offset: 640)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2744, file: !63, line: 290, baseType: !2719, size: 64, offset: 704)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2744, file: !63, line: 291, baseType: !2719, size: 64, offset: 768)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2744, file: !63, line: 292, baseType: !2719, size: 64, offset: 832)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2744, file: !63, line: 293, baseType: !2719, size: 64, offset: 896)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2744, file: !63, line: 294, baseType: !2719, size: 64, offset: 960)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2744, file: !63, line: 295, baseType: !2719, size: 64, offset: 1024)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2744, file: !63, line: 296, baseType: !2719, size: 64, offset: 1088)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2744, file: !63, line: 297, baseType: !2719, size: 64, offset: 1152)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2744, file: !63, line: 298, baseType: !2719, size: 64, offset: 1216)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2744, file: !63, line: 299, baseType: !2719, size: 64, offset: 1280)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2744, file: !63, line: 300, baseType: !2719, size: 64, offset: 1344)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2744, file: !63, line: 301, baseType: !2719, size: 64, offset: 1408)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2701, file: !2702, line: 109, baseType: !2770, size: 64, offset: 1216)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2772)
!2772 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2702, line: 109, flags: DIFlagFwdDecl)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2701, file: !2702, line: 111, baseType: !2774, size: 64, offset: 1280)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !2666, line: 40, size: 2880, elements: !2776)
!2776 = !{!2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2800, !2801, !2802, !2803}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !2775, file: !2666, line: 41, baseType: !169, size: 704)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "devices_kset", scope: !2775, file: !2666, line: 42, baseType: !168, size: 64, offset: 704)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "interfaces", scope: !2775, file: !2666, line: 43, baseType: !161, size: 128, offset: 768)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2775, file: !2666, line: 44, baseType: !1205, size: 192, offset: 896)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_kset", scope: !2775, file: !2666, line: 46, baseType: !168, size: 64, offset: 1088)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !2775, file: !2666, line: 47, baseType: !2669, size: 256, align: 64, offset: 1152)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "klist_drivers", scope: !2775, file: !2666, line: 48, baseType: !2669, size: 256, align: 64, offset: 1408)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "bus_notifier", scope: !2775, file: !2666, line: 49, baseType: !2785, size: 320, offset: 1664)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !2786, line: 65, size: 320, elements: !2787)
!2786 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!2787 = !{!2788, !2789}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !2785, file: !2786, line: 66, baseType: !799, size: 256)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2785, file: !2786, line: 67, baseType: !2790, size: 64, offset: 256)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2786, line: 54, size: 192, elements: !2792)
!2792 = !{!2793, !2798, !2799}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2791, file: !2786, line: 55, baseType: !2794, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2786, line: 51, baseType: !2795)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!199, !2790, !253, !108}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2791, file: !2786, line: 56, baseType: !2790, size: 64, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2791, file: !2786, line: 57, baseType: !199, size: 32, offset: 128)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !2775, file: !2666, line: 50, baseType: !7, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2775, file: !2666, line: 51, baseType: !2700, size: 64, offset: 2048)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "glue_dirs", scope: !2775, file: !2666, line: 53, baseType: !169, size: 704, offset: 2112)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2775, file: !2666, line: 54, baseType: !136, size: 64, offset: 2816)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !2701, file: !2702, line: 112, baseType: !700, offset: 1344)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2701, file: !2702, line: 114, baseType: !270, size: 8, offset: 1344)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2696, file: !50, line: 99, baseType: !141, size: 64, offset: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2696, file: !50, line: 100, baseType: !121, size: 64, offset: 192)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2696, file: !50, line: 102, baseType: !270, size: 8, offset: 256)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2696, file: !50, line: 103, baseType: !49, size: 32, offset: 288)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2696, file: !50, line: 105, baseType: !2811, size: 64, offset: 320)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2813)
!2813 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !50, line: 105, flags: DIFlagFwdDecl)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2696, file: !50, line: 106, baseType: !2815, size: 64, offset: 384)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2817)
!2817 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !50, line: 106, flags: DIFlagFwdDecl)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2696, file: !50, line: 108, baseType: !2719, size: 64, offset: 448)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2696, file: !50, line: 109, baseType: !2723, size: 64, offset: 512)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2696, file: !50, line: 110, baseType: !2719, size: 64, offset: 576)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2696, file: !50, line: 111, baseType: !2723, size: 64, offset: 640)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2696, file: !50, line: 112, baseType: !2731, size: 64, offset: 704)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2696, file: !50, line: 113, baseType: !2719, size: 64, offset: 768)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2696, file: !50, line: 114, baseType: !145, size: 64, offset: 832)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2696, file: !50, line: 115, baseType: !145, size: 64, offset: 896)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2696, file: !50, line: 117, baseType: !2742, size: 64, offset: 960)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2696, file: !50, line: 118, baseType: !2723, size: 64, offset: 1024)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2696, file: !50, line: 120, baseType: !2829, size: 64, offset: 1088)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !2666, line: 58, size: 1152, elements: !2831)
!2831 = !{!2832, !2833, !2834, !2835, !2847}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2830, file: !2666, line: 59, baseType: !156, size: 512)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !2830, file: !2666, line: 60, baseType: !2669, size: 256, align: 64, offset: 512)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !2830, file: !2666, line: 61, baseType: !2679, size: 256, offset: 768)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !2830, file: !2666, line: 62, baseType: !2836, size: 64, offset: 1024)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !2838, line: 46, size: 768, elements: !2839)
!2838 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!2839 = !{!2840, !2841, !2842, !2843, !2846}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2837, file: !2838, line: 47, baseType: !156, size: 512)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2837, file: !2838, line: 48, baseType: !141, size: 64, offset: 512)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !2837, file: !2838, line: 49, baseType: !155, size: 64, offset: 576)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !2837, file: !2838, line: 50, baseType: !2844, size: 64, offset: 640)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !2838, line: 50, flags: DIFlagFwdDecl)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !2837, file: !2838, line: 51, baseType: !1527, size: 64, offset: 704)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2830, file: !2666, line: 63, baseType: !2695, size: 64, offset: 1088)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe_reason", scope: !2665, file: !2666, line: 96, baseType: !215, size: 64, offset: 1472)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2665, file: !2666, line: 97, baseType: !2662, size: 64, offset: 1536)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !2665, file: !2666, line: 98, baseType: !1384, size: 1, offset: 1600, flags: DIFlagBitField, extraData: i64 1600)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2658, file: !56, line: 467, baseType: !121, size: 64, offset: 640)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2658, file: !56, line: 468, baseType: !2853, size: 64, offset: 704)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2855)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !56, line: 87, size: 384, elements: !2856)
!2856 = !{!2857, !2858, !2859, !2860, !2865, !2866}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2855, file: !56, line: 88, baseType: !121, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2855, file: !56, line: 89, baseType: !145, size: 64, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2855, file: !56, line: 90, baseType: !2715, size: 64, offset: 128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2855, file: !56, line: 91, baseType: !2861, size: 64, offset: 192)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!215, !2662, !2864, !300, !308}
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2855, file: !56, line: 93, baseType: !2723, size: 64, offset: 256)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2855, file: !56, line: 95, baseType: !2742, size: 64, offset: 320)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2658, file: !56, line: 470, baseType: !2700, size: 64, offset: 768)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2658, file: !56, line: 471, baseType: !2695, size: 64, offset: 832)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2658, file: !56, line: 473, baseType: !108, size: 64, offset: 896)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2658, file: !56, line: 475, baseType: !108, size: 64, offset: 960)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2658, file: !56, line: 480, baseType: !1205, size: 192, offset: 1024)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2658, file: !56, line: 484, baseType: !2873, size: 576, offset: 1216)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !56, line: 361, size: 576, elements: !2874)
!2874 = !{!2875, !2876, !2877, !2878, !2879, !2880}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2873, file: !56, line: 362, baseType: !161, size: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2873, file: !56, line: 363, baseType: !161, size: 128, offset: 128)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !2873, file: !56, line: 364, baseType: !161, size: 128, offset: 256)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !2873, file: !56, line: 365, baseType: !161, size: 128, offset: 384)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !2873, file: !56, line: 366, baseType: !270, size: 8, offset: 512)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2873, file: !56, line: 367, baseType: !55, size: 32, offset: 544)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2658, file: !56, line: 485, baseType: !2882, size: 2304, offset: 1792)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !63, line: 565, size: 2304, elements: !2883)
!2883 = !{!2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2979, !2983}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2882, file: !63, line: 566, baseType: !2734, size: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2882, file: !63, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2882, file: !63, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2882, file: !63, line: 569, baseType: !270, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2882, file: !63, line: 570, baseType: !270, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2882, file: !63, line: 571, baseType: !270, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2882, file: !63, line: 572, baseType: !270, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2882, file: !63, line: 573, baseType: !270, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2882, file: !63, line: 574, baseType: !270, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2882, file: !63, line: 575, baseType: !270, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2882, file: !63, line: 576, baseType: !270, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2882, file: !63, line: 577, baseType: !369, size: 32, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2882, file: !63, line: 578, baseType: !173, offset: 96)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2882, file: !63, line: 580, baseType: !161, size: 128, offset: 128)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2882, file: !63, line: 581, baseType: !1528, size: 192, offset: 256)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2882, file: !63, line: 582, baseType: !2900, size: 64, offset: 448)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2902, line: 43, size: 1472, elements: !2903)
!2902 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!2903 = !{!2904, !2905, !2906, !2907, !2908, !2911, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2901, file: !2902, line: 44, baseType: !121, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2901, file: !2902, line: 45, baseType: !199, size: 32, offset: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2901, file: !2902, line: 46, baseType: !161, size: 128, offset: 128)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2901, file: !2902, line: 47, baseType: !173, offset: 256)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2901, file: !2902, line: 48, baseType: !2909, size: 64, offset: 256)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !63, line: 533, flags: DIFlagFwdDecl)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2901, file: !2902, line: 49, baseType: !2912, size: 320, offset: 320)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2913, line: 11, size: 320, elements: !2914)
!2913 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2914 = !{!2915, !2916, !2917, !2922}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2912, file: !2913, line: 16, baseType: !694, size: 128)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2912, file: !2913, line: 17, baseType: !253, size: 64, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2912, file: !2913, line: 18, baseType: !2918, size: 64, offset: 192)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{null, !2921}
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2912, file: !2913, line: 19, baseType: !369, size: 32, offset: 256)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2901, file: !2902, line: 50, baseType: !253, size: 64, offset: 640)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2901, file: !2902, line: 51, baseType: !1332, size: 64, offset: 704)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2901, file: !2902, line: 52, baseType: !1332, size: 64, offset: 768)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2901, file: !2902, line: 53, baseType: !1332, size: 64, offset: 832)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2901, file: !2902, line: 54, baseType: !1332, size: 64, offset: 896)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2901, file: !2902, line: 55, baseType: !1332, size: 64, offset: 960)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2901, file: !2902, line: 56, baseType: !253, size: 64, offset: 1024)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2901, file: !2902, line: 57, baseType: !253, size: 64, offset: 1088)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2901, file: !2902, line: 58, baseType: !253, size: 64, offset: 1152)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2901, file: !2902, line: 59, baseType: !253, size: 64, offset: 1216)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2901, file: !2902, line: 60, baseType: !253, size: 64, offset: 1280)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2901, file: !2902, line: 61, baseType: !2662, size: 64, offset: 1344)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2901, file: !2902, line: 62, baseType: !270, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2901, file: !2902, line: 63, baseType: !270, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2882, file: !63, line: 583, baseType: !270, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2882, file: !63, line: 584, baseType: !270, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2882, file: !63, line: 585, baseType: !270, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2882, file: !63, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2882, file: !63, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2882, file: !63, line: 592, baseType: !1324, size: 512, offset: 576)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2882, file: !63, line: 593, baseType: !495, size: 64, offset: 1088)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2882, file: !63, line: 594, baseType: !1984, size: 256, offset: 1152)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2882, file: !63, line: 595, baseType: !403, size: 128, offset: 1408)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2882, file: !63, line: 596, baseType: !2909, size: 64, offset: 1536)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2882, file: !63, line: 597, baseType: !321, size: 32, offset: 1600)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2882, file: !63, line: 598, baseType: !321, size: 32, offset: 1632)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2882, file: !63, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2882, file: !63, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2882, file: !63, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2882, file: !63, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2882, file: !63, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2882, file: !63, line: 604, baseType: !270, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2882, file: !63, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2882, file: !63, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2882, file: !63, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2882, file: !63, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2882, file: !63, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2882, file: !63, line: 610, baseType: !7, size: 32, offset: 1696)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2882, file: !63, line: 611, baseType: !62, size: 32, offset: 1728)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2882, file: !63, line: 612, baseType: !70, size: 32, offset: 1760)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2882, file: !63, line: 613, baseType: !199, size: 32, offset: 1792)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2882, file: !63, line: 614, baseType: !199, size: 32, offset: 1824)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2882, file: !63, line: 615, baseType: !495, size: 64, offset: 1856)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2882, file: !63, line: 616, baseType: !495, size: 64, offset: 1920)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2882, file: !63, line: 617, baseType: !495, size: 64, offset: 1984)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2882, file: !63, line: 618, baseType: !495, size: 64, offset: 2048)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2882, file: !63, line: 620, baseType: !2970, size: 64, offset: 2112)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !63, line: 536, size: 256, elements: !2972)
!2972 = !{!2973, !2974, !2975, !2976}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2971, file: !63, line: 537, baseType: !173)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2971, file: !63, line: 538, baseType: !7, size: 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2971, file: !63, line: 540, baseType: !161, size: 128, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2971, file: !63, line: 543, baseType: !2977, size: 64, offset: 192)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !63, line: 534, flags: DIFlagFwdDecl)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2882, file: !63, line: 621, baseType: !2980, size: 64, offset: 2176)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{null, !2662, !1476}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2882, file: !63, line: 622, baseType: !2984, size: 64, offset: 2240)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !63, line: 622, flags: DIFlagFwdDecl)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2658, file: !56, line: 486, baseType: !2987, size: 64, offset: 4096)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !63, line: 642, size: 1792, elements: !2989)
!2989 = !{!2990, !2991, !2992, !2996, !2997, !2998}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2988, file: !63, line: 643, baseType: !2744, size: 1472)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2988, file: !63, line: 644, baseType: !2719, size: 64, offset: 1472)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2988, file: !63, line: 645, baseType: !2993, size: 64, offset: 1536)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{null, !2662, !270}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2988, file: !63, line: 646, baseType: !2719, size: 64, offset: 1600)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2988, file: !63, line: 647, baseType: !2723, size: 64, offset: 1664)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2988, file: !63, line: 648, baseType: !2723, size: 64, offset: 1728)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !2658, file: !56, line: 493, baseType: !3000, size: 64, offset: 4160)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !56, line: 493, flags: DIFlagFwdDecl)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !2658, file: !56, line: 499, baseType: !161, size: 128, offset: 4224)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2658, file: !56, line: 502, baseType: !3004, size: 64, offset: 4352)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3006)
!3006 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !56, line: 502, flags: DIFlagFwdDecl)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2658, file: !56, line: 504, baseType: !3008, size: 64, offset: 4416)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2658, file: !56, line: 505, baseType: !495, size: 64, offset: 4480)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2658, file: !56, line: 510, baseType: !495, size: 64, offset: 4544)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2658, file: !56, line: 511, baseType: !3012, size: 64, offset: 4608)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3014)
!3014 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !56, line: 511, flags: DIFlagFwdDecl)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2658, file: !56, line: 513, baseType: !3016, size: 64, offset: 4672)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !56, line: 288, size: 128, elements: !3018)
!3018 = !{!3019, !3020}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3017, file: !56, line: 293, baseType: !7, size: 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3017, file: !56, line: 294, baseType: !253, size: 64, offset: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2658, file: !56, line: 515, baseType: !161, size: 128, offset: 4736)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2658, file: !56, line: 526, baseType: !3023, offset: 4864)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3024, line: 5, elements: !187)
!3024 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2658, file: !56, line: 528, baseType: !3026, size: 64, offset: 4864)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3028, line: 14, flags: DIFlagFwdDecl)
!3028 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2658, file: !56, line: 529, baseType: !3030, size: 64, offset: 4928)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2702, line: 22, flags: DIFlagFwdDecl)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2658, file: !56, line: 534, baseType: !569, size: 32, offset: 4992)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2658, file: !56, line: 535, baseType: !369, size: 32, offset: 5024)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2658, file: !56, line: 537, baseType: !173, offset: 5056)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2658, file: !56, line: 538, baseType: !161, size: 128, offset: 5056)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2658, file: !56, line: 540, baseType: !136, size: 64, offset: 5184)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2658, file: !56, line: 541, baseType: !145, size: 64, offset: 5248)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2658, file: !56, line: 543, baseType: !2723, size: 64, offset: 5312)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2658, file: !56, line: 544, baseType: !3040, size: 64, offset: 5376)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !56, line: 45, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2658, file: !56, line: 545, baseType: !3043, size: 64, offset: 5440)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !56, line: 47, flags: DIFlagFwdDecl)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2658, file: !56, line: 547, baseType: !270, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2658, file: !56, line: 548, baseType: !270, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2658, file: !56, line: 549, baseType: !270, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2658, file: !56, line: 550, baseType: !270, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "holder_dir", scope: !2647, file: !2648, line: 69, baseType: !155, size: 64, offset: 5952)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2647, file: !2648, line: 70, baseType: !199, size: 32, offset: 6016)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "partno", scope: !2647, file: !2648, line: 70, baseType: !199, size: 32, offset: 6048)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2647, file: !2648, line: 71, baseType: !3053, size: 64, offset: 6080)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2648, line: 48, size: 808, elements: !3055)
!3055 = !{!3056, !3060}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !3054, file: !2648, line: 49, baseType: !3057, size: 296)
!3057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 296, elements: !3058)
!3058 = !{!3059}
!3059 = !DISubrange(count: 37)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !3054, file: !2648, line: 50, baseType: !3061, size: 512, offset: 296)
!3061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 512, elements: !220)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_work", scope: !2647, file: !2648, line: 75, baseType: !3063, size: 448, offset: 6144)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1985, line: 124, size: 448, elements: !3064)
!3064 = !{!3065, !3066, !3067}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3063, file: !1985, line: 125, baseType: !1984, size: 256)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3063, file: !1985, line: 126, baseType: !443, size: 128, align: 64, offset: 256)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3063, file: !1985, line: 129, baseType: !3068, size: 64, offset: 384)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1985, line: 18, flags: DIFlagFwdDecl)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part_count", scope: !2630, file: !2631, line: 39, baseType: !7, size: 32, offset: 896)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2630, file: !2631, line: 41, baseType: !173, offset: 928)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2630, file: !2631, line: 42, baseType: !3073, size: 64, offset: 960)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2648, line: 167, size: 8512, elements: !3075)
!3075 = !{!3076, !3077, !3078, !3079, !3081, !3082, !3083, !3092, !3093, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3106, !3107, !3110, !3111, !3112, !3115}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3074, file: !2648, line: 171, baseType: !199, size: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !3074, file: !2648, line: 172, baseType: !199, size: 32, offset: 32)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !3074, file: !2648, line: 173, baseType: !199, size: 32, offset: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !3074, file: !2648, line: 176, baseType: !3080, size: 256, offset: 96)
!3080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 256, elements: !2244)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3074, file: !2648, line: 178, baseType: !126, size: 16, offset: 352)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !3074, file: !2648, line: 179, baseType: !126, size: 16, offset: 368)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !3074, file: !2648, line: 186, baseType: !3084, size: 64, offset: 384)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "disk_part_tbl", file: !2648, line: 149, size: 256, elements: !3086)
!3086 = !{!3087, !3088, !3089, !3090}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3085, file: !2648, line: 150, baseType: !443, size: 128, align: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3085, file: !2648, line: 151, baseType: !199, size: 32, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "last_lookup", scope: !3085, file: !2648, line: 152, baseType: !2646, size: 64, offset: 192)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !3085, file: !2648, line: 153, baseType: !3091, offset: 256)
!3091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2646, elements: !2345)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !3074, file: !2648, line: 187, baseType: !2647, size: 6592, offset: 448)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !3074, file: !2648, line: 189, baseType: !3094, size: 64, offset: 7040)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3096)
!3096 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !2648, line: 189, flags: DIFlagFwdDecl)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !3074, file: !2648, line: 190, baseType: !1968, size: 64, offset: 7104)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !3074, file: !2648, line: 191, baseType: !108, size: 64, offset: 7168)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3074, file: !2648, line: 193, baseType: !199, size: 32, offset: 7232)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3074, file: !2648, line: 194, baseType: !253, size: 64, offset: 7296)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_sem", scope: !3074, file: !2648, line: 196, baseType: !799, size: 256, offset: 7360)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !3074, file: !2648, line: 197, baseType: !155, size: 64, offset: 7616)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !3074, file: !2648, line: 199, baseType: !3104, size: 64, offset: 7680)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !2648, line: 199, flags: DIFlagFwdDecl)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !3074, file: !2648, line: 200, baseType: !321, size: 32, offset: 7744)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !3074, file: !2648, line: 201, baseType: !3108, size: 64, offset: 7808)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !2648, line: 156, flags: DIFlagFwdDecl)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "integrity_kobj", scope: !3074, file: !2648, line: 203, baseType: !156, size: 512, offset: 7872)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3074, file: !2648, line: 208, baseType: !199, size: 32, offset: 8384)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !3074, file: !2648, line: 209, baseType: !3113, size: 64, offset: 8448)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !2648, line: 157, flags: DIFlagFwdDecl)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !3074, file: !2648, line: 210, baseType: !3116, offset: 8512)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !701, line: 192, elements: !187)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "bd_bdi", scope: !2630, file: !2631, line: 43, baseType: !1950, size: 64, offset: 1024)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2630, file: !2631, line: 46, baseType: !199, size: 32, offset: 1088)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2630, file: !2631, line: 48, baseType: !1205, size: 192, offset: 1152)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !656, file: !77, line: 1452, baseType: !1950, size: 64, offset: 1536)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !656, file: !77, line: 1453, baseType: !3122, size: 64, offset: 1600)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !77, line: 1453, flags: DIFlagFwdDecl)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !656, file: !77, line: 1454, baseType: !694, size: 128, offset: 1664)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !656, file: !77, line: 1455, baseType: !7, size: 32, offset: 1792)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !656, file: !77, line: 1456, baseType: !3127, size: 2432, offset: 1856)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !44, line: 518, size: 2432, elements: !3128)
!3128 = !{!3129, !3130, !3131, !3133, !3165}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3127, file: !44, line: 519, baseType: !7, size: 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3127, file: !44, line: 520, baseType: !799, size: 256, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3127, file: !44, line: 521, baseType: !3132, size: 192, offset: 320)
!3132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 192, elements: !216)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3127, file: !44, line: 522, baseType: !3134, size: 1728, offset: 512)
!3134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3135, size: 1728, elements: !216)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !44, line: 222, size: 576, elements: !3136)
!3136 = !{!3137, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3135, file: !44, line: 223, baseType: !3138, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !44, line: 443, size: 256, elements: !3140)
!3140 = !{!3141, !3142, !3155, !3156}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3139, file: !44, line: 444, baseType: !199, size: 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3139, file: !44, line: 445, baseType: !3143, size: 64, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3145)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !44, line: 310, size: 512, elements: !3146)
!3146 = !{!3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3145, file: !44, line: 311, baseType: !740, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3145, file: !44, line: 312, baseType: !740, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3145, file: !44, line: 313, baseType: !740, size: 64, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3145, file: !44, line: 314, baseType: !740, size: 64, offset: 192)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3145, file: !44, line: 315, baseType: !2448, size: 64, offset: 256)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3145, file: !44, line: 316, baseType: !2448, size: 64, offset: 320)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3145, file: !44, line: 317, baseType: !2448, size: 64, offset: 384)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3145, file: !44, line: 318, baseType: !2520, size: 64, offset: 448)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3139, file: !44, line: 446, baseType: !141, size: 64, offset: 128)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3139, file: !44, line: 447, baseType: !3138, size: 64, offset: 192)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3135, file: !44, line: 224, baseType: !199, size: 32, offset: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3135, file: !44, line: 226, baseType: !161, size: 128, offset: 128)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3135, file: !44, line: 227, baseType: !253, size: 64, offset: 256)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3135, file: !44, line: 228, baseType: !7, size: 32, offset: 320)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3135, file: !44, line: 229, baseType: !7, size: 32, offset: 352)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3135, file: !44, line: 230, baseType: !2484, size: 64, offset: 384)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3135, file: !44, line: 231, baseType: !2484, size: 64, offset: 448)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3135, file: !44, line: 232, baseType: !108, size: 64, offset: 512)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3127, file: !44, line: 523, baseType: !3166, size: 192, offset: 2240)
!3166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3143, size: 192, elements: !216)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !656, file: !77, line: 1458, baseType: !3168, size: 2112, offset: 4288)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !77, line: 1410, size: 2112, elements: !3169)
!3169 = !{!3170, !3171, !3172}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3168, file: !77, line: 1411, baseType: !199, size: 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !3168, file: !77, line: 1412, baseType: !403, size: 128, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3168, file: !77, line: 1413, baseType: !3173, size: 1920, offset: 192)
!3173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3174, size: 1920, elements: !216)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3175, line: 12, size: 640, elements: !3176)
!3175 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!3176 = !{!3177, !3185, !3187, !3192, !3193}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3174, file: !3175, line: 13, baseType: !3178, size: 320)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3179, line: 17, size: 320, elements: !3180)
!3179 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!3180 = !{!3181, !3182, !3183, !3184}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3178, file: !3179, line: 18, baseType: !199, size: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3178, file: !3179, line: 19, baseType: !199, size: 32, offset: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3178, file: !3179, line: 20, baseType: !403, size: 128, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3178, file: !3179, line: 22, baseType: !443, size: 128, align: 64, offset: 192)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3174, file: !3175, line: 14, baseType: !3186, size: 64, offset: 320)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3174, file: !3175, line: 15, baseType: !3188, size: 64, offset: 384)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3189, line: 16, size: 64, elements: !3190)
!3189 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3190 = !{!3191}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3188, file: !3189, line: 17, baseType: !1248, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3174, file: !3175, line: 16, baseType: !403, size: 128, offset: 448)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3174, file: !3175, line: 17, baseType: !321, size: 32, offset: 576)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !656, file: !77, line: 1465, baseType: !108, size: 64, offset: 6400)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !656, file: !77, line: 1468, baseType: !369, size: 32, offset: 6464)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !656, file: !77, line: 1470, baseType: !595, size: 64, offset: 6528)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !656, file: !77, line: 1471, baseType: !595, size: 64, offset: 6592)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !656, file: !77, line: 1473, baseType: !371, size: 32, offset: 6656)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !656, file: !77, line: 1474, baseType: !3200, size: 64, offset: 6720)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !77, line: 603, flags: DIFlagFwdDecl)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !656, file: !77, line: 1477, baseType: !3080, size: 256, offset: 6784)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !656, file: !77, line: 1478, baseType: !3204, size: 128, offset: 7040)
!3204 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3205, line: 18, baseType: !3206)
!3205 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3205, line: 16, size: 128, elements: !3207)
!3207 = !{!3208}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3206, file: !3205, line: 17, baseType: !3209, size: 128)
!3209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1385, size: 128, elements: !1761)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !656, file: !77, line: 1480, baseType: !7, size: 32, offset: 7168)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !656, file: !77, line: 1481, baseType: !3212, size: 32, offset: 7200)
!3212 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !107, line: 150, baseType: !7)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !656, file: !77, line: 1487, baseType: !1205, size: 192, offset: 7232)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !656, file: !77, line: 1493, baseType: !121, size: 64, offset: 7424)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !656, file: !77, line: 1495, baseType: !3216, size: 64, offset: 7488)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3218)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !458, line: 135, size: 1024, align: 512, elements: !3219)
!3219 = !{!3220, !3224, !3225, !3232, !3238, !3242, !3246, !3250, !3251, !3255, !3259, !3264, !3268}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3218, file: !458, line: 136, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!199, !460, !7}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3218, file: !458, line: 137, baseType: !3221, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3218, file: !458, line: 138, baseType: !3226, size: 64, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!199, !3229, !3231}
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3218, file: !458, line: 139, baseType: !3233, size: 64, offset: 192)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!199, !3229, !7, !121, !3236}
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3218, file: !458, line: 141, baseType: !3239, size: 64, offset: 256)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!199, !3229}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3218, file: !458, line: 142, baseType: !3243, size: 64, offset: 320)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!199, !460}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3218, file: !458, line: 143, baseType: !3247, size: 64, offset: 384)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{null, !460}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3218, file: !458, line: 144, baseType: !3247, size: 64, offset: 448)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3218, file: !458, line: 145, baseType: !3252, size: 64, offset: 512)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{null, !460, !503}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3218, file: !458, line: 146, baseType: !3256, size: 64, offset: 576)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!215, !460, !215, !199}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3218, file: !458, line: 147, baseType: !3260, size: 64, offset: 640)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!456, !3263}
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3218, file: !458, line: 148, baseType: !3265, size: 64, offset: 704)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!199, !605, !270}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3218, file: !458, line: 149, baseType: !3269, size: 64, offset: 768)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!460, !460, !3272}
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !656, file: !77, line: 1500, baseType: !199, size: 32, offset: 7552)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !656, file: !77, line: 1502, baseType: !3276, size: 448, offset: 7616)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2432, line: 60, size: 448, elements: !3277)
!3277 = !{!3278, !3283, !3284, !3285, !3286, !3287, !3288}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3276, file: !2432, line: 61, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!253, !3282, !2430}
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3276, file: !2432, line: 63, baseType: !3279, size: 64, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3276, file: !2432, line: 66, baseType: !135, size: 64, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3276, file: !2432, line: 67, baseType: !199, size: 32, offset: 192)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3276, file: !2432, line: 68, baseType: !7, size: 32, offset: 224)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3276, file: !2432, line: 71, baseType: !161, size: 128, offset: 256)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3276, file: !2432, line: 77, baseType: !3289, size: 64, offset: 384)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !656, file: !77, line: 1505, baseType: !803, size: 64, offset: 8064)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !656, file: !77, line: 1508, baseType: !803, size: 64, offset: 8128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !656, file: !77, line: 1511, baseType: !199, size: 32, offset: 8192)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !656, file: !77, line: 1514, baseType: !941, size: 32, offset: 8224)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !656, file: !77, line: 1517, baseType: !3068, size: 64, offset: 8256)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !656, file: !77, line: 1518, baseType: !690, size: 64, offset: 8320)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !656, file: !77, line: 1525, baseType: !1739, size: 64, offset: 8384)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !656, file: !77, line: 1532, baseType: !3298, size: 64, offset: 8448)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3299, line: 52, size: 64, elements: !3300)
!3299 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3300 = !{!3301}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3298, file: !3299, line: 53, baseType: !3302, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3299, line: 40, size: 256, elements: !3304)
!3304 = !{!3305, !3306, !3311}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3303, file: !3299, line: 42, baseType: !173)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3303, file: !3299, line: 44, baseType: !3307, size: 192)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3299, line: 28, size: 192, elements: !3308)
!3308 = !{!3309, !3310}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3307, file: !3299, line: 29, baseType: !161, size: 128)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3307, file: !3299, line: 31, baseType: !135, size: 64, offset: 128)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3303, file: !3299, line: 49, baseType: !135, size: 64, offset: 192)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !656, file: !77, line: 1533, baseType: !3298, size: 64, offset: 8512)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !656, file: !77, line: 1534, baseType: !443, size: 128, align: 64, offset: 8576)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !656, file: !77, line: 1535, baseType: !1984, size: 256, offset: 8704)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !656, file: !77, line: 1537, baseType: !1205, size: 192, offset: 8960)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !656, file: !77, line: 1542, baseType: !199, size: 32, offset: 9152)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !656, file: !77, line: 1545, baseType: !173, offset: 9184)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !656, file: !77, line: 1546, baseType: !161, size: 128, offset: 9216)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !656, file: !77, line: 1548, baseType: !173, offset: 9344)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !656, file: !77, line: 1549, baseType: !161, size: 128, offset: 9344)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !504, file: !77, line: 624, baseType: !786, size: 64, offset: 256)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !504, file: !77, line: 631, baseType: !253, size: 64, offset: 320)
!3323 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !77, line: 639, baseType: !3324, size: 32, offset: 384)
!3324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !504, file: !77, line: 639, size: 32, elements: !3325)
!3325 = !{!3326, !3328}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3324, file: !77, line: 640, baseType: !3327, size: 32)
!3327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3324, file: !77, line: 641, baseType: !7, size: 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !504, file: !77, line: 643, baseType: !569, size: 32, offset: 416)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !504, file: !77, line: 644, baseType: !587, size: 64, offset: 448)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !504, file: !77, line: 645, baseType: !591, size: 128, offset: 512)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !504, file: !77, line: 646, baseType: !591, size: 128, offset: 640)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !504, file: !77, line: 647, baseType: !591, size: 128, offset: 768)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !504, file: !77, line: 648, baseType: !173, offset: 896)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !504, file: !77, line: 649, baseType: !126, size: 16, offset: 896)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !504, file: !77, line: 650, baseType: !1384, size: 8, offset: 912)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !504, file: !77, line: 651, baseType: !1384, size: 8, offset: 920)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !504, file: !77, line: 652, baseType: !2604, size: 64, offset: 960)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !504, file: !77, line: 659, baseType: !253, size: 64, offset: 1024)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !504, file: !77, line: 660, baseType: !799, size: 256, offset: 1088)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !504, file: !77, line: 662, baseType: !253, size: 64, offset: 1344)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !504, file: !77, line: 663, baseType: !253, size: 64, offset: 1408)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !504, file: !77, line: 665, baseType: !694, size: 128, offset: 1472)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !504, file: !77, line: 666, baseType: !161, size: 128, offset: 1600)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !504, file: !77, line: 675, baseType: !161, size: 128, offset: 1728)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !504, file: !77, line: 676, baseType: !161, size: 128, offset: 1856)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !504, file: !77, line: 677, baseType: !161, size: 128, offset: 1984)
!3348 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !77, line: 678, baseType: !3349, size: 128, offset: 2112)
!3349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !504, file: !77, line: 678, size: 128, elements: !3350)
!3350 = !{!3351, !3352}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3349, file: !77, line: 679, baseType: !690, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3349, file: !77, line: 680, baseType: !443, size: 128, align: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !504, file: !77, line: 682, baseType: !805, size: 64, offset: 2240)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !504, file: !77, line: 683, baseType: !805, size: 64, offset: 2304)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !504, file: !77, line: 684, baseType: !321, size: 32, offset: 2368)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !504, file: !77, line: 685, baseType: !321, size: 32, offset: 2400)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !504, file: !77, line: 686, baseType: !321, size: 32, offset: 2432)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !504, file: !77, line: 688, baseType: !321, size: 32, offset: 2464)
!3359 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !77, line: 690, baseType: !3360, size: 64, offset: 2496)
!3360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !504, file: !77, line: 690, size: 64, elements: !3361)
!3361 = !{!3362, !3585}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3360, file: !77, line: 691, baseType: !3363, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3365)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !77, line: 1822, size: 2048, elements: !3366)
!3366 = !{!3367, !3368, !3372, !3377, !3381, !3382, !3383, !3387, !3400, !3401, !3409, !3413, !3414, !3418, !3419, !3423, !3428, !3429, !3433, !3437, !3545, !3549, !3550, !3554, !3555, !3559, !3563, !3568, !3572, !3576, !3580, !3584}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3365, file: !77, line: 1823, baseType: !141, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3365, file: !77, line: 1824, baseType: !3369, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!587, !430, !587, !199}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3365, file: !77, line: 1825, baseType: !3373, size: 64, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!131, !430, !215, !250, !3376}
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3365, file: !77, line: 1826, baseType: !3378, size: 64, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!131, !430, !121, !250, !3376}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3365, file: !77, line: 1827, baseType: !876, size: 64, offset: 256)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3365, file: !77, line: 1828, baseType: !876, size: 64, offset: 320)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3365, file: !77, line: 1829, baseType: !3384, size: 64, offset: 384)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!199, !879, !270}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3365, file: !77, line: 1830, baseType: !3388, size: 64, offset: 448)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!199, !430, !3391}
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !77, line: 1776, size: 128, elements: !3393)
!3393 = !{!3394, !3399}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3392, file: !77, line: 1777, baseType: !3395, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !77, line: 1773, baseType: !3396)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!199, !3391, !121, !199, !587, !495, !7}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3392, file: !77, line: 1778, baseType: !587, size: 64, offset: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3365, file: !77, line: 1831, baseType: !3388, size: 64, offset: 512)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3365, file: !77, line: 1832, baseType: !3402, size: 64, offset: 576)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!3405, !430, !3407}
!3405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3406, line: 52, baseType: !7)
!3406 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !318, line: 27, flags: DIFlagFwdDecl)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3365, file: !77, line: 1833, baseType: !3410, size: 64, offset: 640)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!135, !430, !7, !253}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3365, file: !77, line: 1834, baseType: !3410, size: 64, offset: 704)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3365, file: !77, line: 1835, baseType: !3415, size: 64, offset: 768)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!199, !430, !1013}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3365, file: !77, line: 1836, baseType: !253, size: 64, offset: 832)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3365, file: !77, line: 1837, baseType: !3420, size: 64, offset: 896)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!199, !503, !430}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3365, file: !77, line: 1838, baseType: !3424, size: 64, offset: 960)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!199, !430, !3427}
!3427 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !77, line: 1007, baseType: !108)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3365, file: !77, line: 1839, baseType: !3420, size: 64, offset: 1024)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3365, file: !77, line: 1840, baseType: !3430, size: 64, offset: 1088)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!199, !430, !587, !587, !199}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3365, file: !77, line: 1841, baseType: !3434, size: 64, offset: 1152)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!199, !199, !430, !199}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3365, file: !77, line: 1842, baseType: !3438, size: 64, offset: 1216)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!199, !430, !199, !3441}
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !77, line: 1062, size: 1664, elements: !3443)
!3443 = !{!3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3475, !3476, !3477, !3490, !3521}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3442, file: !77, line: 1063, baseType: !3441, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3442, file: !77, line: 1064, baseType: !161, size: 128, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3442, file: !77, line: 1065, baseType: !694, size: 128, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3442, file: !77, line: 1066, baseType: !161, size: 128, offset: 320)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3442, file: !77, line: 1069, baseType: !161, size: 128, offset: 448)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3442, file: !77, line: 1072, baseType: !3427, size: 64, offset: 576)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3442, file: !77, line: 1073, baseType: !7, size: 32, offset: 640)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3442, file: !77, line: 1074, baseType: !501, size: 8, offset: 672)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3442, file: !77, line: 1075, baseType: !7, size: 32, offset: 704)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3442, file: !77, line: 1076, baseType: !199, size: 32, offset: 736)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3442, file: !77, line: 1077, baseType: !403, size: 128, offset: 768)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3442, file: !77, line: 1078, baseType: !430, size: 64, offset: 896)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3442, file: !77, line: 1079, baseType: !587, size: 64, offset: 960)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3442, file: !77, line: 1080, baseType: !587, size: 64, offset: 1024)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3442, file: !77, line: 1082, baseType: !3459, size: 64, offset: 1088)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !77, line: 1314, size: 320, elements: !3461)
!3461 = !{!3462, !3470, !3471, !3472, !3473, !3474}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3460, file: !77, line: 1315, baseType: !3463)
!3463 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3464, line: 20, baseType: !3465)
!3464 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3464, line: 11, elements: !3466)
!3466 = !{!3467}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3465, file: !3464, line: 12, baseType: !3468)
!3468 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !185, line: 33, baseType: !3469)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 31, elements: !187)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3460, file: !77, line: 1316, baseType: !199, size: 32)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3460, file: !77, line: 1317, baseType: !199, size: 32, offset: 32)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3460, file: !77, line: 1318, baseType: !3459, size: 64, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3460, file: !77, line: 1319, baseType: !430, size: 64, offset: 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3460, file: !77, line: 1320, baseType: !443, size: 128, align: 64, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3442, file: !77, line: 1084, baseType: !253, size: 64, offset: 1152)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3442, file: !77, line: 1085, baseType: !253, size: 64, offset: 1216)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3442, file: !77, line: 1087, baseType: !3478, size: 64, offset: 1280)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3480)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !77, line: 1011, size: 128, elements: !3481)
!3481 = !{!3482, !3486}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3480, file: !77, line: 1012, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{null, !3441, !3441}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3480, file: !77, line: 1013, baseType: !3487, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{null, !3441}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3442, file: !77, line: 1088, baseType: !3491, size: 64, offset: 1344)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3493)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !77, line: 1016, size: 512, elements: !3494)
!3494 = !{!3495, !3499, !3503, !3504, !3508, !3512, !3516, !3520}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3493, file: !77, line: 1017, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!3427, !3427}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3493, file: !77, line: 1018, baseType: !3500, size: 64, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{null, !3427}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3493, file: !77, line: 1019, baseType: !3487, size: 64, offset: 128)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3493, file: !77, line: 1020, baseType: !3505, size: 64, offset: 192)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!199, !3441, !199}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3493, file: !77, line: 1021, baseType: !3509, size: 64, offset: 256)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!270, !3441}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3493, file: !77, line: 1022, baseType: !3513, size: 64, offset: 320)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!199, !3441, !199, !164}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3493, file: !77, line: 1023, baseType: !3517, size: 64, offset: 384)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{null, !3441, !853}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3493, file: !77, line: 1024, baseType: !3509, size: 64, offset: 448)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3442, file: !77, line: 1097, baseType: !3522, size: 256, offset: 1408)
!3522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3442, file: !77, line: 1089, size: 256, elements: !3523)
!3523 = !{!3524, !3533, !3539}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3522, file: !77, line: 1090, baseType: !3525, size: 256)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3526, line: 10, size: 256, elements: !3527)
!3526 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3527 = !{!3528, !3529, !3532}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3525, file: !3526, line: 11, baseType: !369, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3525, file: !3526, line: 12, baseType: !3530, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3526, line: 5, flags: DIFlagFwdDecl)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3525, file: !3526, line: 13, baseType: !161, size: 128, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3522, file: !77, line: 1091, baseType: !3534, size: 64)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3526, line: 17, size: 64, elements: !3535)
!3535 = !{!3536}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3534, file: !3526, line: 18, baseType: !3537, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3526, line: 16, flags: DIFlagFwdDecl)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3522, file: !77, line: 1096, baseType: !3540, size: 192)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3522, file: !77, line: 1092, size: 192, elements: !3541)
!3541 = !{!3542, !3543, !3544}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3540, file: !77, line: 1093, baseType: !161, size: 128)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3540, file: !77, line: 1094, baseType: !199, size: 32, offset: 128)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3540, file: !77, line: 1095, baseType: !7, size: 32, offset: 160)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3365, file: !77, line: 1843, baseType: !3546, size: 64, offset: 1280)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!131, !430, !773, !199, !250, !3376, !199}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3365, file: !77, line: 1844, baseType: !1133, size: 64, offset: 1344)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3365, file: !77, line: 1845, baseType: !3551, size: 64, offset: 1408)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!199, !199}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3365, file: !77, line: 1846, baseType: !3438, size: 64, offset: 1472)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3365, file: !77, line: 1847, baseType: !3556, size: 64, offset: 1536)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!131, !2125, !430, !3376, !250, !7}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3365, file: !77, line: 1848, baseType: !3560, size: 64, offset: 1600)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!131, !430, !3376, !2125, !250, !7}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3365, file: !77, line: 1849, baseType: !3564, size: 64, offset: 1664)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!199, !430, !135, !3567, !853}
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3365, file: !77, line: 1850, baseType: !3569, size: 64, offset: 1728)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!135, !430, !199, !587, !587}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3365, file: !77, line: 1852, baseType: !3573, size: 64, offset: 1792)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{null, !382, !430}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3365, file: !77, line: 1856, baseType: !3577, size: 64, offset: 1856)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!131, !430, !587, !430, !587, !250, !7}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3365, file: !77, line: 1858, baseType: !3581, size: 64, offset: 1920)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!587, !430, !587, !430, !587, !587, !7}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3365, file: !77, line: 1861, baseType: !3430, size: 64, offset: 1984)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3360, file: !77, line: 692, baseType: !719, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !504, file: !77, line: 694, baseType: !3587, size: 64, offset: 2560)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !77, line: 1100, size: 384, elements: !3589)
!3589 = !{!3590, !3591, !3592, !3593}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3588, file: !77, line: 1101, baseType: !173)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3588, file: !77, line: 1102, baseType: !161, size: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3588, file: !77, line: 1103, baseType: !161, size: 128, offset: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3588, file: !77, line: 1104, baseType: !161, size: 128, offset: 256)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !504, file: !77, line: 695, baseType: !787, size: 1216, align: 64, offset: 2624)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !504, file: !77, line: 696, baseType: !161, size: 128, offset: 3840)
!3596 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !77, line: 697, baseType: !3597, size: 64, offset: 3968)
!3597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !504, file: !77, line: 697, size: 64, elements: !3598)
!3598 = !{!3599, !3600, !3601, !3604, !3605}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3597, file: !77, line: 698, baseType: !2125, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3597, file: !77, line: 699, baseType: !2629, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3597, file: !77, line: 700, baseType: !3602, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !77, line: 700, flags: DIFlagFwdDecl)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3597, file: !77, line: 701, baseType: !215, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3597, file: !77, line: 702, baseType: !7, size: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !504, file: !77, line: 705, baseType: !371, size: 32, offset: 4032)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !504, file: !77, line: 708, baseType: !371, size: 32, offset: 4064)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !504, file: !77, line: 709, baseType: !3200, size: 64, offset: 4096)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !504, file: !77, line: 720, baseType: !108, size: 64, offset: 4160)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !461, file: !458, line: 98, baseType: !3611, size: 256, offset: 448)
!3611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 256, elements: !2244)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !461, file: !458, line: 101, baseType: !3613, size: 32, offset: 704)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3614, line: 25, size: 32, elements: !3615)
!3614 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3615 = !{!3616}
!3616 = !DIDerivedType(tag: DW_TAG_member, scope: !3613, file: !3614, line: 26, baseType: !3617, size: 32)
!3617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3613, file: !3614, line: 26, size: 32, elements: !3618)
!3618 = !{!3619}
!3619 = !DIDerivedType(tag: DW_TAG_member, scope: !3617, file: !3614, line: 30, baseType: !3620, size: 32)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3617, file: !3614, line: 30, size: 32, elements: !3621)
!3621 = !{!3622, !3623}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3620, file: !3614, line: 31, baseType: !173)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3620, file: !3614, line: 32, baseType: !199, size: 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !461, file: !458, line: 102, baseType: !3216, size: 64, offset: 768)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !461, file: !458, line: 103, baseType: !655, size: 64, offset: 832)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !461, file: !458, line: 104, baseType: !253, size: 64, offset: 896)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !461, file: !458, line: 105, baseType: !108, size: 64, offset: 960)
!3628 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !458, line: 107, baseType: !3629, size: 128, offset: 1024)
!3629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !461, file: !458, line: 107, size: 128, elements: !3630)
!3630 = !{!3631, !3632}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3629, file: !458, line: 108, baseType: !161, size: 128)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3629, file: !458, line: 109, baseType: !3633, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !461, file: !458, line: 111, baseType: !161, size: 128, offset: 1152)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !461, file: !458, line: 112, baseType: !161, size: 128, offset: 1280)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !461, file: !458, line: 120, baseType: !3637, size: 128, offset: 1408)
!3637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !461, file: !458, line: 116, size: 128, elements: !3638)
!3638 = !{!3639, !3640, !3641}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3637, file: !458, line: 117, baseType: !694, size: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3637, file: !458, line: 118, baseType: !475, size: 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3637, file: !458, line: 119, baseType: !443, size: 128, align: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !431, file: !77, line: 922, baseType: !503, size: 64, offset: 256)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !431, file: !77, line: 923, baseType: !3363, size: 64, offset: 320)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !431, file: !77, line: 929, baseType: !173, offset: 384)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !431, file: !77, line: 930, baseType: !76, size: 32, offset: 384)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !431, file: !77, line: 931, baseType: !803, size: 64, offset: 448)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !431, file: !77, line: 932, baseType: !7, size: 32, offset: 512)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !431, file: !77, line: 933, baseType: !3212, size: 32, offset: 544)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !431, file: !77, line: 934, baseType: !1205, size: 192, offset: 576)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !431, file: !77, line: 935, baseType: !587, size: 64, offset: 768)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !431, file: !77, line: 936, baseType: !3652, size: 192, offset: 832)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !77, line: 885, size: 192, elements: !3653)
!3653 = !{!3654, !3655, !3656, !3657, !3658, !3659}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3652, file: !77, line: 886, baseType: !3463)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3652, file: !77, line: 887, baseType: !1503, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3652, file: !77, line: 888, baseType: !85, size: 32, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3652, file: !77, line: 889, baseType: !301, size: 32, offset: 96)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3652, file: !77, line: 889, baseType: !301, size: 32, offset: 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3652, file: !77, line: 890, baseType: !199, size: 32, offset: 160)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !431, file: !77, line: 937, baseType: !1573, size: 64, offset: 1024)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !431, file: !77, line: 938, baseType: !3662, size: 256, offset: 1088)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !77, line: 896, size: 256, elements: !3663)
!3663 = !{!3664, !3665, !3666, !3667, !3668, !3669}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3662, file: !77, line: 897, baseType: !253, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3662, file: !77, line: 898, baseType: !7, size: 32, offset: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3662, file: !77, line: 899, baseType: !7, size: 32, offset: 96)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3662, file: !77, line: 902, baseType: !7, size: 32, offset: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3662, file: !77, line: 903, baseType: !7, size: 32, offset: 160)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3662, file: !77, line: 904, baseType: !587, size: 64, offset: 192)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !431, file: !77, line: 940, baseType: !495, size: 64, offset: 1344)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !431, file: !77, line: 945, baseType: !108, size: 64, offset: 1408)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !431, file: !77, line: 949, baseType: !161, size: 128, offset: 1472)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !431, file: !77, line: 950, baseType: !161, size: 128, offset: 1600)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !431, file: !77, line: 952, baseType: !786, size: 64, offset: 1728)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !431, file: !77, line: 953, baseType: !941, size: 32, offset: 1792)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !431, file: !77, line: 954, baseType: !941, size: 32, offset: 1824)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !426, file: !318, line: 201, baseType: !382, size: 64, offset: 128)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !426, file: !318, line: 202, baseType: !108, size: 64, offset: 192)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !426, file: !318, line: 205, baseType: !1205, size: 192, offset: 256)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !426, file: !318, line: 206, baseType: !1205, size: 192, offset: 448)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !426, file: !318, line: 207, baseType: !199, size: 32, offset: 640)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !426, file: !318, line: 208, baseType: !161, size: 128, offset: 704)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !426, file: !318, line: 209, baseType: !215, size: 64, offset: 832)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !426, file: !318, line: 211, baseType: !250, size: 64, offset: 896)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !426, file: !318, line: 212, baseType: !270, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !426, file: !318, line: 213, baseType: !270, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !426, file: !318, line: 214, baseType: !1041, size: 64, offset: 1024)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !419, file: !318, line: 223, baseType: !3689, size: 64, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{null, !425}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !419, file: !318, line: 236, baseType: !3693, size: 64, offset: 128)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!199, !382, !108}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !419, file: !318, line: 238, baseType: !3697, size: 64, offset: 192)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!108, !382, !3376}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !419, file: !318, line: 239, baseType: !3701, size: 64, offset: 256)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!108, !382, !108, !3376}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !419, file: !318, line: 240, baseType: !3705, size: 64, offset: 320)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{null, !382, !108}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !419, file: !318, line: 242, baseType: !3709, size: 64, offset: 384)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!131, !425, !215, !250, !587}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !419, file: !318, line: 252, baseType: !250, size: 64, offset: 448)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !419, file: !318, line: 259, baseType: !270, size: 8, offset: 512)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !419, file: !318, line: 260, baseType: !3709, size: 64, offset: 576)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !419, file: !318, line: 263, baseType: !3716, size: 64, offset: 640)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!3405, !425, !3407}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !419, file: !318, line: 266, baseType: !3720, size: 64, offset: 704)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!199, !425, !1013}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !414, file: !318, line: 109, baseType: !3724, size: 64, offset: 64)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !318, line: 31, flags: DIFlagFwdDecl)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !414, file: !318, line: 110, baseType: !587, size: 64, offset: 128)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !414, file: !318, line: 111, baseType: !316, size: 64, offset: 192)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !317, file: !318, line: 148, baseType: !108, size: 64, offset: 768)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !317, file: !318, line: 154, baseType: !495, size: 64, offset: 832)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !318, line: 156, baseType: !126, size: 16, offset: 896)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !317, file: !318, line: 157, baseType: !125, size: 16, offset: 912)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !317, file: !318, line: 158, baseType: !3733, size: 64, offset: 960)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !318, line: 32, flags: DIFlagFwdDecl)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !156, file: !157, line: 71, baseType: !2684, size: 32, offset: 448)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !156, file: !157, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !156, file: !157, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !156, file: !157, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !156, file: !157, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !156, file: !157, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !148, file: !118, line: 88, baseType: !3742, size: 64, offset: 128)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!125, !155, !3745, !199}
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !118, line: 168, size: 448, elements: !3747)
!3747 = !{!3748, !3749, !3750, !3751, !3755, !3756}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3746, file: !118, line: 169, baseType: !117, size: 128)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3746, file: !118, line: 170, baseType: !250, size: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3746, file: !118, line: 171, baseType: !108, size: 64, offset: 192)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3746, file: !118, line: 172, baseType: !3752, size: 64, offset: 256)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!131, !430, !155, !3745, !215, !587, !250}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3746, file: !118, line: 174, baseType: !3752, size: 64, offset: 320)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3746, file: !118, line: 176, baseType: !3757, size: 64, offset: 384)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!199, !430, !155, !3745, !1013}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !148, file: !118, line: 90, baseType: !255, size: 64, offset: 192)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !148, file: !118, line: 91, baseType: !3762, size: 64, offset: 256)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !137, file: !111, line: 59, baseType: !145, size: 64, offset: 192)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !137, file: !111, line: 60, baseType: !155, size: 64, offset: 256)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !137, file: !111, line: 62, baseType: !2715, size: 64, offset: 320)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !137, file: !111, line: 63, baseType: !3767, size: 64, offset: 384)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!215, !2662, !2864}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !137, file: !111, line: 65, baseType: !3771, size: 64, offset: 448)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{null, !136}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !137, file: !111, line: 66, baseType: !2723, size: 64, offset: 512)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !137, file: !111, line: 68, baseType: !2719, size: 64, offset: 576)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !137, file: !111, line: 70, baseType: !261, size: 64, offset: 640)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !137, file: !111, line: 71, baseType: !3778, size: 64, offset: 704)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!280, !2662}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !137, file: !111, line: 73, baseType: !3782, size: 64, offset: 768)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{null, !2662, !300, !308}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !137, file: !111, line: 75, baseType: !2742, size: 64, offset: 832)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !137, file: !111, line: 77, baseType: !2774, size: 64, offset: 896)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !114, file: !111, line: 195, baseType: !3789, size: 64, offset: 192)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!131, !136, !3787, !121, !250}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !110, file: !111, line: 228, baseType: !215, size: 64, offset: 256)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !164)
!3795 = !{!0, !3796, !3798}
!3796 = !DIGlobalVariableExpression(var: !3797, expr: !DIExpression())
!3797 = distinct !DIGlobalVariable(name: "class_ktype", scope: !2, file: !3, line: 78, type: !230, isLocal: true, isDefinition: true)
!3798 = !DIGlobalVariableExpression(var: !3799, expr: !DIExpression())
!3799 = distinct !DIGlobalVariable(name: "class_sysfs_ops", scope: !2, file: !3, line: 73, type: !238, isLocal: true, isDefinition: true)
!3800 = !{i32 7, !"Dwarf Version", i32 4}
!3801 = !{i32 2, !"Debug Info Version", i32 3}
!3802 = !{i32 1, !"wchar_size", i32 2}
!3803 = !{i32 1, !"Code Model", i32 2}
!3804 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3805 = distinct !DISubprogram(name: "class_create_file_ns", scope: !3, file: !3, line: 88, type: !3806, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!199, !136, !3808, !280}
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!3810 = !DILocalVariable(name: "cls", arg: 1, scope: !3805, file: !3, line: 88, type: !136)
!3811 = !DILocation(line: 88, column: 40, scope: !3805)
!3812 = !DILocalVariable(name: "attr", arg: 2, scope: !3805, file: !3, line: 88, type: !3808)
!3813 = !DILocation(line: 88, column: 75, scope: !3805)
!3814 = !DILocalVariable(name: "ns", arg: 3, scope: !3805, file: !3, line: 89, type: !280)
!3815 = !DILocation(line: 89, column: 17, scope: !3805)
!3816 = !DILocalVariable(name: "error", scope: !3805, file: !3, line: 91, type: !199)
!3817 = !DILocation(line: 91, column: 6, scope: !3805)
!3818 = !DILocation(line: 93, column: 6, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 93, column: 6)
!3820 = !DILocation(line: 93, column: 6, scope: !3805)
!3821 = !DILocation(line: 94, column: 33, scope: !3819)
!3822 = !DILocation(line: 94, column: 38, scope: !3819)
!3823 = !DILocation(line: 94, column: 41, scope: !3819)
!3824 = !DILocation(line: 94, column: 48, scope: !3819)
!3825 = !DILocation(line: 95, column: 12, scope: !3819)
!3826 = !DILocation(line: 95, column: 18, scope: !3819)
!3827 = !DILocation(line: 95, column: 24, scope: !3819)
!3828 = !DILocation(line: 94, column: 11, scope: !3819)
!3829 = !DILocation(line: 94, column: 9, scope: !3819)
!3830 = !DILocation(line: 94, column: 3, scope: !3819)
!3831 = !DILocation(line: 97, column: 9, scope: !3819)
!3832 = !DILocation(line: 98, column: 9, scope: !3805)
!3833 = !DILocation(line: 98, column: 2, scope: !3805)
!3834 = distinct !DISubprogram(name: "class_remove_file_ns", scope: !3, file: !3, line: 101, type: !3835, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{null, !136, !3808, !280}
!3837 = !DILocalVariable(name: "cls", arg: 1, scope: !3834, file: !3, line: 101, type: !136)
!3838 = !DILocation(line: 101, column: 41, scope: !3834)
!3839 = !DILocalVariable(name: "attr", arg: 2, scope: !3834, file: !3, line: 101, type: !3808)
!3840 = !DILocation(line: 101, column: 76, scope: !3834)
!3841 = !DILocalVariable(name: "ns", arg: 3, scope: !3834, file: !3, line: 102, type: !280)
!3842 = !DILocation(line: 102, column: 18, scope: !3834)
!3843 = !DILocation(line: 104, column: 6, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3834, file: !3, line: 104, column: 6)
!3845 = !DILocation(line: 104, column: 6, scope: !3834)
!3846 = !DILocation(line: 105, column: 25, scope: !3844)
!3847 = !DILocation(line: 105, column: 30, scope: !3844)
!3848 = !DILocation(line: 105, column: 33, scope: !3844)
!3849 = !DILocation(line: 105, column: 40, scope: !3844)
!3850 = !DILocation(line: 105, column: 47, scope: !3844)
!3851 = !DILocation(line: 105, column: 53, scope: !3844)
!3852 = !DILocation(line: 105, column: 59, scope: !3844)
!3853 = !DILocation(line: 105, column: 3, scope: !3844)
!3854 = !DILocation(line: 106, column: 1, scope: !3834)
!3855 = distinct !DISubprogram(name: "__class_register", scope: !3, file: !3, line: 153, type: !3856, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!199, !136, !3858}
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!3859 = !DILocalVariable(name: "cls", arg: 1, scope: !3855, file: !3, line: 153, type: !136)
!3860 = !DILocation(line: 153, column: 36, scope: !3855)
!3861 = !DILocalVariable(name: "key", arg: 2, scope: !3855, file: !3, line: 153, type: !3858)
!3862 = !DILocation(line: 153, column: 64, scope: !3855)
!3863 = !DILocalVariable(name: "cp", scope: !3855, file: !3, line: 155, type: !2774)
!3864 = !DILocation(line: 155, column: 25, scope: !3855)
!3865 = !DILocalVariable(name: "error", scope: !3855, file: !3, line: 156, type: !199)
!3866 = !DILocation(line: 156, column: 6, scope: !3855)
!3867 = !DILocation(line: 158, column: 2, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3869, file: !3, line: 158, column: 2)
!3869 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 158, column: 2)
!3870 = !DILocation(line: 158, column: 2, scope: !3869)
!3871 = !DILocation(line: 160, column: 7, scope: !3855)
!3872 = !DILocation(line: 160, column: 5, scope: !3855)
!3873 = !DILocation(line: 161, column: 7, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 161, column: 6)
!3875 = !DILocation(line: 161, column: 6, scope: !3855)
!3876 = !DILocation(line: 162, column: 3, scope: !3874)
!3877 = !DILocation(line: 163, column: 14, scope: !3855)
!3878 = !DILocation(line: 163, column: 18, scope: !3855)
!3879 = !DILocation(line: 163, column: 2, scope: !3855)
!3880 = !DILocation(line: 164, column: 18, scope: !3855)
!3881 = !DILocation(line: 164, column: 22, scope: !3855)
!3882 = !DILocation(line: 164, column: 2, scope: !3855)
!3883 = !DILocation(line: 165, column: 13, scope: !3855)
!3884 = !DILocation(line: 165, column: 17, scope: !3855)
!3885 = !DILocation(line: 165, column: 2, scope: !3855)
!3886 = !DILocation(line: 166, column: 16, scope: !3855)
!3887 = !DILocation(line: 166, column: 20, scope: !3855)
!3888 = !DILocation(line: 166, column: 43, scope: !3855)
!3889 = !DILocation(line: 166, column: 2, scope: !3855)
!3890 = !DILocation(line: 167, column: 28, scope: !3855)
!3891 = !DILocation(line: 167, column: 32, scope: !3855)
!3892 = !DILocation(line: 167, column: 39, scope: !3855)
!3893 = !DILocation(line: 167, column: 51, scope: !3855)
!3894 = !DILocation(line: 167, column: 56, scope: !3855)
!3895 = !DILocation(line: 167, column: 10, scope: !3855)
!3896 = !DILocation(line: 167, column: 8, scope: !3855)
!3897 = !DILocation(line: 168, column: 6, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 168, column: 6)
!3899 = !DILocation(line: 168, column: 6, scope: !3855)
!3900 = !DILocation(line: 169, column: 9, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3898, file: !3, line: 168, column: 13)
!3902 = !DILocation(line: 169, column: 3, scope: !3901)
!3903 = !DILocation(line: 170, column: 10, scope: !3901)
!3904 = !DILocation(line: 170, column: 3, scope: !3901)
!3905 = !DILocation(line: 174, column: 7, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 174, column: 6)
!3907 = !DILocation(line: 174, column: 12, scope: !3906)
!3908 = !DILocation(line: 174, column: 6, scope: !3855)
!3909 = !DILocation(line: 175, column: 19, scope: !3906)
!3910 = !DILocation(line: 175, column: 3, scope: !3906)
!3911 = !DILocation(line: 175, column: 8, scope: !3906)
!3912 = !DILocation(line: 175, column: 17, scope: !3906)
!3913 = !DILocation(line: 180, column: 26, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 179, column: 6)
!3915 = !DILocation(line: 180, column: 3, scope: !3914)
!3916 = !DILocation(line: 180, column: 7, scope: !3914)
!3917 = !DILocation(line: 180, column: 14, scope: !3914)
!3918 = !DILocation(line: 180, column: 19, scope: !3914)
!3919 = !DILocation(line: 180, column: 24, scope: !3914)
!3920 = !DILocation(line: 184, column: 2, scope: !3855)
!3921 = !DILocation(line: 184, column: 6, scope: !3855)
!3922 = !DILocation(line: 184, column: 13, scope: !3855)
!3923 = !DILocation(line: 184, column: 18, scope: !3855)
!3924 = !DILocation(line: 184, column: 24, scope: !3855)
!3925 = !DILocation(line: 185, column: 14, scope: !3855)
!3926 = !DILocation(line: 185, column: 2, scope: !3855)
!3927 = !DILocation(line: 185, column: 6, scope: !3855)
!3928 = !DILocation(line: 185, column: 12, scope: !3855)
!3929 = !DILocation(line: 186, column: 11, scope: !3855)
!3930 = !DILocation(line: 186, column: 2, scope: !3855)
!3931 = !DILocation(line: 186, column: 7, scope: !3855)
!3932 = !DILocation(line: 186, column: 9, scope: !3855)
!3933 = !DILocation(line: 188, column: 25, scope: !3855)
!3934 = !DILocation(line: 188, column: 29, scope: !3855)
!3935 = !DILocation(line: 188, column: 10, scope: !3855)
!3936 = !DILocation(line: 188, column: 8, scope: !3855)
!3937 = !DILocation(line: 189, column: 6, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 189, column: 6)
!3939 = !DILocation(line: 189, column: 6, scope: !3855)
!3940 = !DILocation(line: 190, column: 9, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3938, file: !3, line: 189, column: 13)
!3942 = !DILocation(line: 190, column: 3, scope: !3941)
!3943 = !DILocation(line: 191, column: 10, scope: !3941)
!3944 = !DILocation(line: 191, column: 3, scope: !3941)
!3945 = !DILocation(line: 193, column: 37, scope: !3855)
!3946 = !DILocation(line: 193, column: 27, scope: !3855)
!3947 = !DILocation(line: 193, column: 43, scope: !3855)
!3948 = !DILocation(line: 193, column: 48, scope: !3855)
!3949 = !DILocation(line: 193, column: 10, scope: !3855)
!3950 = !DILocation(line: 193, column: 8, scope: !3855)
!3951 = !DILocation(line: 194, column: 12, scope: !3855)
!3952 = !DILocation(line: 194, column: 2, scope: !3855)
!3953 = !DILocation(line: 195, column: 9, scope: !3855)
!3954 = !DILocation(line: 195, column: 2, scope: !3855)
!3955 = !DILocation(line: 196, column: 1, scope: !3855)
!3956 = distinct !DISubprogram(name: "kzalloc", scope: !99, file: !99, line: 662, type: !3957, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!108, !250, !106}
!3959 = !DILocalVariable(name: "s", arg: 1, scope: !3960, file: !99, line: 445, type: !967)
!3960 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !99, file: !99, line: 445, type: !3961, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!108, !967, !106, !250}
!3963 = !DILocation(line: 445, column: 72, scope: !3960, inlinedAt: !3964)
!3964 = distinct !DILocation(line: 552, column: 10, scope: !3965, inlinedAt: !3968)
!3965 = distinct !DILexicalBlock(scope: !3966, file: !99, line: 540, column: 34)
!3966 = distinct !DILexicalBlock(scope: !3967, file: !99, line: 540, column: 6)
!3967 = distinct !DISubprogram(name: "kmalloc", scope: !99, file: !99, line: 538, type: !3957, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3968 = distinct !DILocation(line: 664, column: 9, scope: !3956)
!3969 = !DILocalVariable(name: "flags", arg: 2, scope: !3960, file: !99, line: 446, type: !106)
!3970 = !DILocation(line: 446, column: 9, scope: !3960, inlinedAt: !3964)
!3971 = !DILocalVariable(name: "size", arg: 3, scope: !3960, file: !99, line: 446, type: !250)
!3972 = !DILocation(line: 446, column: 23, scope: !3960, inlinedAt: !3964)
!3973 = !DILocalVariable(name: "ret", scope: !3960, file: !99, line: 448, type: !108)
!3974 = !DILocation(line: 448, column: 8, scope: !3960, inlinedAt: !3964)
!3975 = !DILocalVariable(name: "flags", arg: 1, scope: !3976, file: !99, line: 318, type: !106)
!3976 = distinct !DISubprogram(name: "kmalloc_type", scope: !99, file: !99, line: 318, type: !3977, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!98, !106}
!3979 = !DILocation(line: 318, column: 67, scope: !3976, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 553, column: 20, scope: !3965, inlinedAt: !3968)
!3981 = !DILocalVariable(name: "size", arg: 1, scope: !3982, file: !99, line: 346, type: !250)
!3982 = distinct !DISubprogram(name: "kmalloc_index", scope: !99, file: !99, line: 346, type: !3983, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!7, !250}
!3985 = !DILocation(line: 346, column: 58, scope: !3982, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 547, column: 11, scope: !3965, inlinedAt: !3968)
!3987 = !DILocalVariable(name: "size", arg: 1, scope: !3988, file: !99, line: 472, type: !250)
!3988 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !99, file: !99, line: 472, type: !3989, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!108, !250, !106, !7}
!3991 = !DILocation(line: 472, column: 28, scope: !3988, inlinedAt: !3992)
!3992 = distinct !DILocation(line: 481, column: 9, scope: !3993, inlinedAt: !3994)
!3993 = distinct !DISubprogram(name: "kmalloc_large", scope: !99, file: !99, line: 478, type: !3957, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!3994 = distinct !DILocation(line: 545, column: 11, scope: !3995, inlinedAt: !3968)
!3995 = distinct !DILexicalBlock(scope: !3965, file: !99, line: 544, column: 7)
!3996 = !DILocalVariable(name: "flags", arg: 2, scope: !3988, file: !99, line: 472, type: !106)
!3997 = !DILocation(line: 472, column: 40, scope: !3988, inlinedAt: !3992)
!3998 = !DILocalVariable(name: "order", arg: 3, scope: !3988, file: !99, line: 472, type: !7)
!3999 = !DILocation(line: 472, column: 60, scope: !3988, inlinedAt: !3992)
!4000 = !DILocalVariable(name: "size", arg: 1, scope: !3993, file: !99, line: 478, type: !250)
!4001 = !DILocation(line: 478, column: 51, scope: !3993, inlinedAt: !3994)
!4002 = !DILocalVariable(name: "flags", arg: 2, scope: !3993, file: !99, line: 478, type: !106)
!4003 = !DILocation(line: 478, column: 63, scope: !3993, inlinedAt: !3994)
!4004 = !DILocalVariable(name: "order", scope: !3993, file: !99, line: 480, type: !7)
!4005 = !DILocation(line: 480, column: 15, scope: !3993, inlinedAt: !3994)
!4006 = !DILocalVariable(name: "size", arg: 1, scope: !3967, file: !99, line: 538, type: !250)
!4007 = !DILocation(line: 538, column: 45, scope: !3967, inlinedAt: !3968)
!4008 = !DILocalVariable(name: "flags", arg: 2, scope: !3967, file: !99, line: 538, type: !106)
!4009 = !DILocation(line: 538, column: 57, scope: !3967, inlinedAt: !3968)
!4010 = !DILocalVariable(name: "index", scope: !3965, file: !99, line: 542, type: !7)
!4011 = !DILocation(line: 542, column: 16, scope: !3965, inlinedAt: !3968)
!4012 = !DILocalVariable(name: "size", arg: 1, scope: !3956, file: !99, line: 662, type: !250)
!4013 = !DILocation(line: 662, column: 36, scope: !3956)
!4014 = !DILocalVariable(name: "flags", arg: 2, scope: !3956, file: !99, line: 662, type: !106)
!4015 = !DILocation(line: 662, column: 48, scope: !3956)
!4016 = !DILocation(line: 664, column: 17, scope: !3956)
!4017 = !DILocation(line: 664, column: 23, scope: !3956)
!4018 = !DILocation(line: 664, column: 29, scope: !3956)
!4019 = !DILocation(line: 540, column: 27, scope: !3966, inlinedAt: !3968)
!4020 = !DILocation(line: 540, column: 6, scope: !3966, inlinedAt: !3968)
!4021 = !DILocation(line: 540, column: 6, scope: !3967, inlinedAt: !3968)
!4022 = !DILocation(line: 544, column: 7, scope: !3995, inlinedAt: !3968)
!4023 = !DILocation(line: 544, column: 12, scope: !3995, inlinedAt: !3968)
!4024 = !DILocation(line: 544, column: 7, scope: !3965, inlinedAt: !3968)
!4025 = !DILocation(line: 545, column: 25, scope: !3995, inlinedAt: !3968)
!4026 = !DILocation(line: 545, column: 31, scope: !3995, inlinedAt: !3968)
!4027 = !DILocation(line: 480, column: 33, scope: !3993, inlinedAt: !3994)
!4028 = !DILocation(line: 480, column: 23, scope: !3993, inlinedAt: !3994)
!4029 = !DILocation(line: 481, column: 29, scope: !3993, inlinedAt: !3994)
!4030 = !DILocation(line: 481, column: 35, scope: !3993, inlinedAt: !3994)
!4031 = !DILocation(line: 481, column: 42, scope: !3993, inlinedAt: !3994)
!4032 = !DILocation(line: 474, column: 23, scope: !3988, inlinedAt: !3992)
!4033 = !DILocation(line: 474, column: 29, scope: !3988, inlinedAt: !3992)
!4034 = !DILocation(line: 474, column: 36, scope: !3988, inlinedAt: !3992)
!4035 = !DILocation(line: 474, column: 9, scope: !3988, inlinedAt: !3992)
!4036 = !DILocation(line: 545, column: 4, scope: !3995, inlinedAt: !3968)
!4037 = !DILocation(line: 547, column: 25, scope: !3965, inlinedAt: !3968)
!4038 = !DILocation(line: 348, column: 7, scope: !4039, inlinedAt: !3986)
!4039 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 348, column: 6)
!4040 = !DILocation(line: 348, column: 6, scope: !3982, inlinedAt: !3986)
!4041 = !DILocation(line: 349, column: 3, scope: !4039, inlinedAt: !3986)
!4042 = !DILocation(line: 351, column: 6, scope: !4043, inlinedAt: !3986)
!4043 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 351, column: 6)
!4044 = !DILocation(line: 351, column: 11, scope: !4043, inlinedAt: !3986)
!4045 = !DILocation(line: 351, column: 6, scope: !3982, inlinedAt: !3986)
!4046 = !DILocation(line: 352, column: 3, scope: !4043, inlinedAt: !3986)
!4047 = !DILocation(line: 354, column: 32, scope: !4048, inlinedAt: !3986)
!4048 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 354, column: 6)
!4049 = !DILocation(line: 354, column: 37, scope: !4048, inlinedAt: !3986)
!4050 = !DILocation(line: 354, column: 42, scope: !4048, inlinedAt: !3986)
!4051 = !DILocation(line: 354, column: 45, scope: !4048, inlinedAt: !3986)
!4052 = !DILocation(line: 354, column: 50, scope: !4048, inlinedAt: !3986)
!4053 = !DILocation(line: 354, column: 6, scope: !3982, inlinedAt: !3986)
!4054 = !DILocation(line: 355, column: 3, scope: !4048, inlinedAt: !3986)
!4055 = !DILocation(line: 356, column: 32, scope: !4056, inlinedAt: !3986)
!4056 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 356, column: 6)
!4057 = !DILocation(line: 356, column: 37, scope: !4056, inlinedAt: !3986)
!4058 = !DILocation(line: 356, column: 43, scope: !4056, inlinedAt: !3986)
!4059 = !DILocation(line: 356, column: 46, scope: !4056, inlinedAt: !3986)
!4060 = !DILocation(line: 356, column: 51, scope: !4056, inlinedAt: !3986)
!4061 = !DILocation(line: 356, column: 6, scope: !3982, inlinedAt: !3986)
!4062 = !DILocation(line: 357, column: 3, scope: !4056, inlinedAt: !3986)
!4063 = !DILocation(line: 358, column: 6, scope: !4064, inlinedAt: !3986)
!4064 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 358, column: 6)
!4065 = !DILocation(line: 358, column: 11, scope: !4064, inlinedAt: !3986)
!4066 = !DILocation(line: 358, column: 6, scope: !3982, inlinedAt: !3986)
!4067 = !DILocation(line: 358, column: 26, scope: !4064, inlinedAt: !3986)
!4068 = !DILocation(line: 359, column: 6, scope: !4069, inlinedAt: !3986)
!4069 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 359, column: 6)
!4070 = !DILocation(line: 359, column: 11, scope: !4069, inlinedAt: !3986)
!4071 = !DILocation(line: 359, column: 6, scope: !3982, inlinedAt: !3986)
!4072 = !DILocation(line: 359, column: 26, scope: !4069, inlinedAt: !3986)
!4073 = !DILocation(line: 360, column: 6, scope: !4074, inlinedAt: !3986)
!4074 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 360, column: 6)
!4075 = !DILocation(line: 360, column: 11, scope: !4074, inlinedAt: !3986)
!4076 = !DILocation(line: 360, column: 6, scope: !3982, inlinedAt: !3986)
!4077 = !DILocation(line: 360, column: 26, scope: !4074, inlinedAt: !3986)
!4078 = !DILocation(line: 361, column: 6, scope: !4079, inlinedAt: !3986)
!4079 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 361, column: 6)
!4080 = !DILocation(line: 361, column: 11, scope: !4079, inlinedAt: !3986)
!4081 = !DILocation(line: 361, column: 6, scope: !3982, inlinedAt: !3986)
!4082 = !DILocation(line: 361, column: 26, scope: !4079, inlinedAt: !3986)
!4083 = !DILocation(line: 362, column: 6, scope: !4084, inlinedAt: !3986)
!4084 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 362, column: 6)
!4085 = !DILocation(line: 362, column: 11, scope: !4084, inlinedAt: !3986)
!4086 = !DILocation(line: 362, column: 6, scope: !3982, inlinedAt: !3986)
!4087 = !DILocation(line: 362, column: 26, scope: !4084, inlinedAt: !3986)
!4088 = !DILocation(line: 363, column: 6, scope: !4089, inlinedAt: !3986)
!4089 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 363, column: 6)
!4090 = !DILocation(line: 363, column: 11, scope: !4089, inlinedAt: !3986)
!4091 = !DILocation(line: 363, column: 6, scope: !3982, inlinedAt: !3986)
!4092 = !DILocation(line: 363, column: 26, scope: !4089, inlinedAt: !3986)
!4093 = !DILocation(line: 364, column: 6, scope: !4094, inlinedAt: !3986)
!4094 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 364, column: 6)
!4095 = !DILocation(line: 364, column: 11, scope: !4094, inlinedAt: !3986)
!4096 = !DILocation(line: 364, column: 6, scope: !3982, inlinedAt: !3986)
!4097 = !DILocation(line: 364, column: 26, scope: !4094, inlinedAt: !3986)
!4098 = !DILocation(line: 365, column: 6, scope: !4099, inlinedAt: !3986)
!4099 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 365, column: 6)
!4100 = !DILocation(line: 365, column: 11, scope: !4099, inlinedAt: !3986)
!4101 = !DILocation(line: 365, column: 6, scope: !3982, inlinedAt: !3986)
!4102 = !DILocation(line: 365, column: 26, scope: !4099, inlinedAt: !3986)
!4103 = !DILocation(line: 366, column: 6, scope: !4104, inlinedAt: !3986)
!4104 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 366, column: 6)
!4105 = !DILocation(line: 366, column: 11, scope: !4104, inlinedAt: !3986)
!4106 = !DILocation(line: 366, column: 6, scope: !3982, inlinedAt: !3986)
!4107 = !DILocation(line: 366, column: 26, scope: !4104, inlinedAt: !3986)
!4108 = !DILocation(line: 367, column: 6, scope: !4109, inlinedAt: !3986)
!4109 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 367, column: 6)
!4110 = !DILocation(line: 367, column: 11, scope: !4109, inlinedAt: !3986)
!4111 = !DILocation(line: 367, column: 6, scope: !3982, inlinedAt: !3986)
!4112 = !DILocation(line: 367, column: 26, scope: !4109, inlinedAt: !3986)
!4113 = !DILocation(line: 368, column: 6, scope: !4114, inlinedAt: !3986)
!4114 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 368, column: 6)
!4115 = !DILocation(line: 368, column: 11, scope: !4114, inlinedAt: !3986)
!4116 = !DILocation(line: 368, column: 6, scope: !3982, inlinedAt: !3986)
!4117 = !DILocation(line: 368, column: 26, scope: !4114, inlinedAt: !3986)
!4118 = !DILocation(line: 369, column: 6, scope: !4119, inlinedAt: !3986)
!4119 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 369, column: 6)
!4120 = !DILocation(line: 369, column: 11, scope: !4119, inlinedAt: !3986)
!4121 = !DILocation(line: 369, column: 6, scope: !3982, inlinedAt: !3986)
!4122 = !DILocation(line: 369, column: 26, scope: !4119, inlinedAt: !3986)
!4123 = !DILocation(line: 370, column: 6, scope: !4124, inlinedAt: !3986)
!4124 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 370, column: 6)
!4125 = !DILocation(line: 370, column: 11, scope: !4124, inlinedAt: !3986)
!4126 = !DILocation(line: 370, column: 6, scope: !3982, inlinedAt: !3986)
!4127 = !DILocation(line: 370, column: 26, scope: !4124, inlinedAt: !3986)
!4128 = !DILocation(line: 371, column: 6, scope: !4129, inlinedAt: !3986)
!4129 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 371, column: 6)
!4130 = !DILocation(line: 371, column: 11, scope: !4129, inlinedAt: !3986)
!4131 = !DILocation(line: 371, column: 6, scope: !3982, inlinedAt: !3986)
!4132 = !DILocation(line: 371, column: 26, scope: !4129, inlinedAt: !3986)
!4133 = !DILocation(line: 372, column: 6, scope: !4134, inlinedAt: !3986)
!4134 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 372, column: 6)
!4135 = !DILocation(line: 372, column: 11, scope: !4134, inlinedAt: !3986)
!4136 = !DILocation(line: 372, column: 6, scope: !3982, inlinedAt: !3986)
!4137 = !DILocation(line: 372, column: 26, scope: !4134, inlinedAt: !3986)
!4138 = !DILocation(line: 373, column: 6, scope: !4139, inlinedAt: !3986)
!4139 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 373, column: 6)
!4140 = !DILocation(line: 373, column: 11, scope: !4139, inlinedAt: !3986)
!4141 = !DILocation(line: 373, column: 6, scope: !3982, inlinedAt: !3986)
!4142 = !DILocation(line: 373, column: 26, scope: !4139, inlinedAt: !3986)
!4143 = !DILocation(line: 374, column: 6, scope: !4144, inlinedAt: !3986)
!4144 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 374, column: 6)
!4145 = !DILocation(line: 374, column: 11, scope: !4144, inlinedAt: !3986)
!4146 = !DILocation(line: 374, column: 6, scope: !3982, inlinedAt: !3986)
!4147 = !DILocation(line: 374, column: 26, scope: !4144, inlinedAt: !3986)
!4148 = !DILocation(line: 375, column: 6, scope: !4149, inlinedAt: !3986)
!4149 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 375, column: 6)
!4150 = !DILocation(line: 375, column: 11, scope: !4149, inlinedAt: !3986)
!4151 = !DILocation(line: 375, column: 6, scope: !3982, inlinedAt: !3986)
!4152 = !DILocation(line: 375, column: 27, scope: !4149, inlinedAt: !3986)
!4153 = !DILocation(line: 376, column: 6, scope: !4154, inlinedAt: !3986)
!4154 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 376, column: 6)
!4155 = !DILocation(line: 376, column: 11, scope: !4154, inlinedAt: !3986)
!4156 = !DILocation(line: 376, column: 6, scope: !3982, inlinedAt: !3986)
!4157 = !DILocation(line: 376, column: 32, scope: !4154, inlinedAt: !3986)
!4158 = !DILocation(line: 377, column: 6, scope: !4159, inlinedAt: !3986)
!4159 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 377, column: 6)
!4160 = !DILocation(line: 377, column: 11, scope: !4159, inlinedAt: !3986)
!4161 = !DILocation(line: 377, column: 6, scope: !3982, inlinedAt: !3986)
!4162 = !DILocation(line: 377, column: 32, scope: !4159, inlinedAt: !3986)
!4163 = !DILocation(line: 378, column: 6, scope: !4164, inlinedAt: !3986)
!4164 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 378, column: 6)
!4165 = !DILocation(line: 378, column: 11, scope: !4164, inlinedAt: !3986)
!4166 = !DILocation(line: 378, column: 6, scope: !3982, inlinedAt: !3986)
!4167 = !DILocation(line: 378, column: 32, scope: !4164, inlinedAt: !3986)
!4168 = !DILocation(line: 379, column: 6, scope: !4169, inlinedAt: !3986)
!4169 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 379, column: 6)
!4170 = !DILocation(line: 379, column: 11, scope: !4169, inlinedAt: !3986)
!4171 = !DILocation(line: 379, column: 6, scope: !3982, inlinedAt: !3986)
!4172 = !DILocation(line: 379, column: 33, scope: !4169, inlinedAt: !3986)
!4173 = !DILocation(line: 380, column: 6, scope: !4174, inlinedAt: !3986)
!4174 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 380, column: 6)
!4175 = !DILocation(line: 380, column: 11, scope: !4174, inlinedAt: !3986)
!4176 = !DILocation(line: 380, column: 6, scope: !3982, inlinedAt: !3986)
!4177 = !DILocation(line: 380, column: 33, scope: !4174, inlinedAt: !3986)
!4178 = !DILocation(line: 381, column: 6, scope: !4179, inlinedAt: !3986)
!4179 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 381, column: 6)
!4180 = !DILocation(line: 381, column: 11, scope: !4179, inlinedAt: !3986)
!4181 = !DILocation(line: 381, column: 6, scope: !3982, inlinedAt: !3986)
!4182 = !DILocation(line: 381, column: 33, scope: !4179, inlinedAt: !3986)
!4183 = !DILocation(line: 382, column: 2, scope: !4184, inlinedAt: !3986)
!4184 = distinct !DILexicalBlock(scope: !4185, file: !99, line: 382, column: 2)
!4185 = distinct !DILexicalBlock(scope: !3982, file: !99, line: 382, column: 2)
!4186 = !{i32 -2143551628, i32 -2143551599, i32 -2143551553, i32 -2143551495, i32 -2143551441, i32 -2143551387, i32 -2143551332, i32 -2143551301}
!4187 = !DILocation(line: 382, column: 2, scope: !4188, inlinedAt: !3986)
!4188 = distinct !DILexicalBlock(scope: !4189, file: !99, line: 382, column: 2)
!4189 = distinct !DILexicalBlock(scope: !4185, file: !99, line: 382, column: 2)
!4190 = !{i32 -2143550858, i32 -2143550851, i32 -2143550797, i32 -2143550766, i32 -2143550736}
!4191 = !DILocation(line: 382, column: 2, scope: !4189, inlinedAt: !3986)
!4192 = !DILocation(line: 386, column: 1, scope: !3982, inlinedAt: !3986)
!4193 = !DILocation(line: 547, column: 9, scope: !3965, inlinedAt: !3968)
!4194 = !DILocation(line: 549, column: 8, scope: !4195, inlinedAt: !3968)
!4195 = distinct !DILexicalBlock(scope: !3965, file: !99, line: 549, column: 7)
!4196 = !DILocation(line: 549, column: 7, scope: !3965, inlinedAt: !3968)
!4197 = !DILocation(line: 550, column: 4, scope: !4195, inlinedAt: !3968)
!4198 = !DILocation(line: 553, column: 33, scope: !3965, inlinedAt: !3968)
!4199 = !DILocation(line: 325, column: 6, scope: !4200, inlinedAt: !3980)
!4200 = distinct !DILexicalBlock(scope: !3976, file: !99, line: 325, column: 6)
!4201 = !DILocation(line: 325, column: 6, scope: !3976, inlinedAt: !3980)
!4202 = !DILocation(line: 326, column: 3, scope: !4200, inlinedAt: !3980)
!4203 = !DILocation(line: 332, column: 9, scope: !3976, inlinedAt: !3980)
!4204 = !DILocation(line: 332, column: 15, scope: !3976, inlinedAt: !3980)
!4205 = !DILocation(line: 332, column: 2, scope: !3976, inlinedAt: !3980)
!4206 = !DILocation(line: 336, column: 1, scope: !3976, inlinedAt: !3980)
!4207 = !DILocation(line: 553, column: 5, scope: !3965, inlinedAt: !3968)
!4208 = !DILocation(line: 553, column: 41, scope: !3965, inlinedAt: !3968)
!4209 = !DILocation(line: 554, column: 5, scope: !3965, inlinedAt: !3968)
!4210 = !DILocation(line: 554, column: 12, scope: !3965, inlinedAt: !3968)
!4211 = !DILocation(line: 448, column: 31, scope: !3960, inlinedAt: !3964)
!4212 = !DILocation(line: 448, column: 34, scope: !3960, inlinedAt: !3964)
!4213 = !DILocation(line: 448, column: 14, scope: !3960, inlinedAt: !3964)
!4214 = !DILocation(line: 450, column: 22, scope: !3960, inlinedAt: !3964)
!4215 = !DILocation(line: 450, column: 25, scope: !3960, inlinedAt: !3964)
!4216 = !DILocation(line: 450, column: 30, scope: !3960, inlinedAt: !3964)
!4217 = !DILocation(line: 450, column: 36, scope: !3960, inlinedAt: !3964)
!4218 = !DILocation(line: 450, column: 8, scope: !3960, inlinedAt: !3964)
!4219 = !DILocation(line: 450, column: 6, scope: !3960, inlinedAt: !3964)
!4220 = !DILocation(line: 451, column: 9, scope: !3960, inlinedAt: !3964)
!4221 = !DILocation(line: 552, column: 3, scope: !3965, inlinedAt: !3968)
!4222 = !DILocation(line: 557, column: 19, scope: !3967, inlinedAt: !3968)
!4223 = !DILocation(line: 557, column: 25, scope: !3967, inlinedAt: !3968)
!4224 = !DILocation(line: 557, column: 9, scope: !3967, inlinedAt: !3968)
!4225 = !DILocation(line: 557, column: 2, scope: !3967, inlinedAt: !3968)
!4226 = !DILocation(line: 558, column: 1, scope: !3967, inlinedAt: !3968)
!4227 = !DILocation(line: 664, column: 2, scope: !3956)
!4228 = distinct !DISubprogram(name: "klist_class_dev_get", scope: !3, file: !3, line: 127, type: !2676, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4229 = !DILocalVariable(name: "n", arg: 1, scope: !4228, file: !3, line: 127, type: !2678)
!4230 = !DILocation(line: 127, column: 52, scope: !4228)
!4231 = !DILocalVariable(name: "dev", scope: !4228, file: !3, line: 129, type: !2662)
!4232 = !DILocation(line: 129, column: 17, scope: !4228)
!4233 = !DILocation(line: 129, column: 42, scope: !4228)
!4234 = !DILocation(line: 129, column: 23, scope: !4228)
!4235 = !DILocation(line: 131, column: 13, scope: !4228)
!4236 = !DILocation(line: 131, column: 2, scope: !4228)
!4237 = !DILocation(line: 132, column: 1, scope: !4228)
!4238 = distinct !DISubprogram(name: "klist_class_dev_put", scope: !3, file: !3, line: 134, type: !2676, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4239 = !DILocalVariable(name: "n", arg: 1, scope: !4238, file: !3, line: 134, type: !2678)
!4240 = !DILocation(line: 134, column: 52, scope: !4238)
!4241 = !DILocalVariable(name: "dev", scope: !4238, file: !3, line: 136, type: !2662)
!4242 = !DILocation(line: 136, column: 17, scope: !4238)
!4243 = !DILocation(line: 136, column: 42, scope: !4238)
!4244 = !DILocation(line: 136, column: 23, scope: !4238)
!4245 = !DILocation(line: 138, column: 13, scope: !4238)
!4246 = !DILocation(line: 138, column: 2, scope: !4238)
!4247 = !DILocation(line: 139, column: 1, scope: !4238)
!4248 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4249, file: !4249, line: 33, type: !4250, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4249 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4250 = !DISubroutineType(types: !4251)
!4251 = !{null, !164}
!4252 = !DILocalVariable(name: "list", arg: 1, scope: !4248, file: !4249, line: 33, type: !164)
!4253 = !DILocation(line: 33, column: 53, scope: !4248)
!4254 = !DILocation(line: 35, column: 2, scope: !4248)
!4255 = !DILocation(line: 35, column: 2, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4248, file: !4249, line: 35, column: 2)
!4257 = !DILocation(line: 35, column: 2, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4256, file: !4249, line: 35, column: 2)
!4259 = !DILocation(line: 35, column: 2, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4256, file: !4249, line: 35, column: 2)
!4261 = !DILocation(line: 36, column: 15, scope: !4248)
!4262 = !DILocation(line: 36, column: 2, scope: !4248)
!4263 = !DILocation(line: 36, column: 8, scope: !4248)
!4264 = !DILocation(line: 36, column: 13, scope: !4248)
!4265 = !DILocation(line: 37, column: 1, scope: !4248)
!4266 = distinct !DISubprogram(name: "class_add_groups", scope: !3, file: !3, line: 141, type: !4267, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!199, !136, !145}
!4269 = !DILocalVariable(name: "cls", arg: 1, scope: !4266, file: !3, line: 141, type: !136)
!4270 = !DILocation(line: 141, column: 43, scope: !4266)
!4271 = !DILocalVariable(name: "groups", arg: 2, scope: !4266, file: !3, line: 142, type: !145)
!4272 = !DILocation(line: 142, column: 39, scope: !4266)
!4273 = !DILocation(line: 144, column: 30, scope: !4266)
!4274 = !DILocation(line: 144, column: 35, scope: !4266)
!4275 = !DILocation(line: 144, column: 38, scope: !4266)
!4276 = !DILocation(line: 144, column: 45, scope: !4266)
!4277 = !DILocation(line: 144, column: 51, scope: !4266)
!4278 = !DILocation(line: 144, column: 9, scope: !4266)
!4279 = !DILocation(line: 144, column: 2, scope: !4266)
!4280 = distinct !DISubprogram(name: "class_get", scope: !3, file: !3, line: 108, type: !4281, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!136, !136}
!4283 = !DILocalVariable(name: "cls", arg: 1, scope: !4280, file: !3, line: 108, type: !136)
!4284 = !DILocation(line: 108, column: 46, scope: !4280)
!4285 = !DILocation(line: 110, column: 6, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4280, file: !3, line: 110, column: 6)
!4287 = !DILocation(line: 110, column: 6, scope: !4280)
!4288 = !DILocation(line: 111, column: 13, scope: !4286)
!4289 = !DILocation(line: 111, column: 18, scope: !4286)
!4290 = !DILocation(line: 111, column: 21, scope: !4286)
!4291 = !DILocation(line: 111, column: 3, scope: !4286)
!4292 = !DILocation(line: 112, column: 9, scope: !4280)
!4293 = !DILocation(line: 112, column: 2, scope: !4280)
!4294 = distinct !DISubprogram(name: "class_put", scope: !3, file: !3, line: 115, type: !3772, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4295 = !DILocalVariable(name: "cls", arg: 1, scope: !4294, file: !3, line: 115, type: !136)
!4296 = !DILocation(line: 115, column: 37, scope: !4294)
!4297 = !DILocation(line: 117, column: 6, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4294, file: !3, line: 117, column: 6)
!4299 = !DILocation(line: 117, column: 6, scope: !4294)
!4300 = !DILocation(line: 118, column: 13, scope: !4298)
!4301 = !DILocation(line: 118, column: 18, scope: !4298)
!4302 = !DILocation(line: 118, column: 21, scope: !4298)
!4303 = !DILocation(line: 118, column: 3, scope: !4298)
!4304 = !DILocation(line: 119, column: 1, scope: !4294)
!4305 = distinct !DISubprogram(name: "class_unregister", scope: !3, file: !3, line: 199, type: !3772, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4306 = !DILocalVariable(name: "cls", arg: 1, scope: !4305, file: !3, line: 199, type: !136)
!4307 = !DILocation(line: 199, column: 37, scope: !4305)
!4308 = !DILocation(line: 201, column: 2, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 201, column: 2)
!4310 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 201, column: 2)
!4311 = !DILocation(line: 201, column: 2, scope: !4310)
!4312 = !DILocation(line: 202, column: 22, scope: !4305)
!4313 = !DILocation(line: 202, column: 27, scope: !4305)
!4314 = !DILocation(line: 202, column: 32, scope: !4305)
!4315 = !DILocation(line: 202, column: 2, scope: !4305)
!4316 = !DILocation(line: 203, column: 19, scope: !4305)
!4317 = !DILocation(line: 203, column: 24, scope: !4305)
!4318 = !DILocation(line: 203, column: 27, scope: !4305)
!4319 = !DILocation(line: 203, column: 2, scope: !4305)
!4320 = !DILocation(line: 204, column: 1, scope: !4305)
!4321 = distinct !DISubprogram(name: "class_remove_groups", scope: !3, file: !3, line: 147, type: !4322, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{null, !136, !145}
!4324 = !DILocalVariable(name: "cls", arg: 1, scope: !4321, file: !3, line: 147, type: !136)
!4325 = !DILocation(line: 147, column: 47, scope: !4321)
!4326 = !DILocalVariable(name: "groups", arg: 2, scope: !4321, file: !3, line: 148, type: !145)
!4327 = !DILocation(line: 148, column: 36, scope: !4321)
!4328 = !DILocation(line: 150, column: 30, scope: !4321)
!4329 = !DILocation(line: 150, column: 35, scope: !4321)
!4330 = !DILocation(line: 150, column: 38, scope: !4321)
!4331 = !DILocation(line: 150, column: 45, scope: !4321)
!4332 = !DILocation(line: 150, column: 51, scope: !4321)
!4333 = !DILocation(line: 150, column: 9, scope: !4321)
!4334 = !DILocation(line: 150, column: 2, scope: !4321)
!4335 = distinct !DISubprogram(name: "__class_create", scope: !3, file: !3, line: 226, type: !4336, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!136, !141, !121, !3858}
!4338 = !DILocalVariable(name: "owner", arg: 1, scope: !4335, file: !3, line: 226, type: !141)
!4339 = !DILocation(line: 226, column: 45, scope: !4335)
!4340 = !DILocalVariable(name: "name", arg: 2, scope: !4335, file: !3, line: 226, type: !121)
!4341 = !DILocation(line: 226, column: 64, scope: !4335)
!4342 = !DILocalVariable(name: "key", arg: 3, scope: !4335, file: !3, line: 227, type: !3858)
!4343 = !DILocation(line: 227, column: 32, scope: !4335)
!4344 = !DILocalVariable(name: "cls", scope: !4335, file: !3, line: 229, type: !136)
!4345 = !DILocation(line: 229, column: 16, scope: !4335)
!4346 = !DILocalVariable(name: "retval", scope: !4335, file: !3, line: 230, type: !199)
!4347 = !DILocation(line: 230, column: 6, scope: !4335)
!4348 = !DILocation(line: 232, column: 8, scope: !4335)
!4349 = !DILocation(line: 232, column: 6, scope: !4335)
!4350 = !DILocation(line: 233, column: 7, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 233, column: 6)
!4352 = !DILocation(line: 233, column: 6, scope: !4335)
!4353 = !DILocation(line: 234, column: 10, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 233, column: 12)
!4355 = !DILocation(line: 235, column: 3, scope: !4354)
!4356 = !DILocation(line: 238, column: 14, scope: !4335)
!4357 = !DILocation(line: 238, column: 2, scope: !4335)
!4358 = !DILocation(line: 238, column: 7, scope: !4335)
!4359 = !DILocation(line: 238, column: 12, scope: !4335)
!4360 = !DILocation(line: 239, column: 15, scope: !4335)
!4361 = !DILocation(line: 239, column: 2, scope: !4335)
!4362 = !DILocation(line: 239, column: 7, scope: !4335)
!4363 = !DILocation(line: 239, column: 13, scope: !4335)
!4364 = !DILocation(line: 240, column: 2, scope: !4335)
!4365 = !DILocation(line: 240, column: 7, scope: !4335)
!4366 = !DILocation(line: 240, column: 21, scope: !4335)
!4367 = !DILocation(line: 242, column: 28, scope: !4335)
!4368 = !DILocation(line: 242, column: 33, scope: !4335)
!4369 = !DILocation(line: 242, column: 11, scope: !4335)
!4370 = !DILocation(line: 242, column: 9, scope: !4335)
!4371 = !DILocation(line: 243, column: 6, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 243, column: 6)
!4373 = !DILocation(line: 243, column: 6, scope: !4335)
!4374 = !DILocation(line: 244, column: 3, scope: !4372)
!4375 = !DILocation(line: 246, column: 9, scope: !4335)
!4376 = !DILocation(line: 246, column: 2, scope: !4335)
!4377 = !DILabel(scope: !4335, name: "error", file: !3, line: 248)
!4378 = !DILocation(line: 248, column: 1, scope: !4335)
!4379 = !DILocation(line: 249, column: 8, scope: !4335)
!4380 = !DILocation(line: 249, column: 2, scope: !4335)
!4381 = !DILocation(line: 250, column: 17, scope: !4335)
!4382 = !DILocation(line: 250, column: 9, scope: !4335)
!4383 = !DILocation(line: 250, column: 2, scope: !4335)
!4384 = !DILocation(line: 251, column: 1, scope: !4335)
!4385 = distinct !DISubprogram(name: "class_create_release", scope: !3, file: !3, line: 206, type: !3772, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4386 = !DILocalVariable(name: "cls", arg: 1, scope: !4385, file: !3, line: 206, type: !136)
!4387 = !DILocation(line: 206, column: 48, scope: !4385)
!4388 = !DILocation(line: 208, column: 2, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4390, file: !3, line: 208, column: 2)
!4390 = distinct !DILexicalBlock(scope: !4385, file: !3, line: 208, column: 2)
!4391 = !DILocation(line: 208, column: 2, scope: !4390)
!4392 = !DILocation(line: 209, column: 8, scope: !4385)
!4393 = !DILocation(line: 209, column: 2, scope: !4385)
!4394 = !DILocation(line: 210, column: 1, scope: !4385)
!4395 = distinct !DISubprogram(name: "ERR_PTR", scope: !4396, file: !4396, line: 24, type: !4397, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4396 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!108, !135}
!4399 = !DILocalVariable(name: "error", arg: 1, scope: !4395, file: !4396, line: 24, type: !135)
!4400 = !DILocation(line: 24, column: 48, scope: !4395)
!4401 = !DILocation(line: 26, column: 18, scope: !4395)
!4402 = !DILocation(line: 26, column: 9, scope: !4395)
!4403 = !DILocation(line: 26, column: 2, scope: !4395)
!4404 = distinct !DISubprogram(name: "class_destroy", scope: !3, file: !3, line: 261, type: !3772, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4405 = !DILocalVariable(name: "cls", arg: 1, scope: !4404, file: !3, line: 261, type: !136)
!4406 = !DILocation(line: 261, column: 34, scope: !4404)
!4407 = !DILocation(line: 263, column: 7, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 263, column: 6)
!4409 = !DILocation(line: 263, column: 11, scope: !4408)
!4410 = !DILocation(line: 263, column: 20, scope: !4408)
!4411 = !DILocation(line: 263, column: 31, scope: !4408)
!4412 = !DILocation(line: 263, column: 24, scope: !4408)
!4413 = !DILocation(line: 263, column: 6, scope: !4404)
!4414 = !DILocation(line: 264, column: 3, scope: !4408)
!4415 = !DILocation(line: 266, column: 19, scope: !4404)
!4416 = !DILocation(line: 266, column: 2, scope: !4404)
!4417 = !DILocation(line: 267, column: 1, scope: !4404)
!4418 = distinct !DISubprogram(name: "IS_ERR", scope: !4396, file: !4396, line: 34, type: !4419, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!270, !280}
!4421 = !DILocalVariable(name: "ptr", arg: 1, scope: !4418, file: !4396, line: 34, type: !280)
!4422 = !DILocation(line: 34, column: 60, scope: !4418)
!4423 = !DILocation(line: 36, column: 9, scope: !4418)
!4424 = !DILocation(line: 36, column: 2, scope: !4418)
!4425 = distinct !DISubprogram(name: "class_dev_iter_init", scope: !3, file: !3, line: 281, type: !4426, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{null, !4428, !136, !2662, !2853}
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class_dev_iter", file: !111, line: 80, size: 192, elements: !4430)
!4430 = !{!4431, !4437}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "ki", scope: !4429, file: !111, line: 81, baseType: !4432, size: 128)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_iter", file: !2670, line: 54, size: 128, elements: !4433)
!4433 = !{!4434, !4436}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "i_klist", scope: !4432, file: !2670, line: 55, baseType: !4435, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "i_cur", scope: !4432, file: !2670, line: 56, baseType: !2678, size: 64, offset: 64)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4429, file: !111, line: 82, baseType: !2853, size: 64, offset: 128)
!4438 = !DILocalVariable(name: "iter", arg: 1, scope: !4425, file: !3, line: 281, type: !4428)
!4439 = !DILocation(line: 281, column: 49, scope: !4425)
!4440 = !DILocalVariable(name: "class", arg: 2, scope: !4425, file: !3, line: 281, type: !136)
!4441 = !DILocation(line: 281, column: 69, scope: !4425)
!4442 = !DILocalVariable(name: "start", arg: 3, scope: !4425, file: !3, line: 282, type: !2662)
!4443 = !DILocation(line: 282, column: 20, scope: !4425)
!4444 = !DILocalVariable(name: "type", arg: 4, scope: !4425, file: !3, line: 282, type: !2853)
!4445 = !DILocation(line: 282, column: 53, scope: !4425)
!4446 = !DILocalVariable(name: "start_knode", scope: !4425, file: !3, line: 284, type: !2678)
!4447 = !DILocation(line: 284, column: 21, scope: !4425)
!4448 = !DILocation(line: 286, column: 6, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 286, column: 6)
!4450 = !DILocation(line: 286, column: 6, scope: !4425)
!4451 = !DILocation(line: 287, column: 18, scope: !4449)
!4452 = !DILocation(line: 287, column: 25, scope: !4449)
!4453 = !DILocation(line: 287, column: 28, scope: !4449)
!4454 = !DILocation(line: 287, column: 15, scope: !4449)
!4455 = !DILocation(line: 287, column: 3, scope: !4449)
!4456 = !DILocation(line: 288, column: 24, scope: !4425)
!4457 = !DILocation(line: 288, column: 31, scope: !4425)
!4458 = !DILocation(line: 288, column: 34, scope: !4425)
!4459 = !DILocation(line: 288, column: 50, scope: !4425)
!4460 = !DILocation(line: 288, column: 56, scope: !4425)
!4461 = !DILocation(line: 288, column: 60, scope: !4425)
!4462 = !DILocation(line: 288, column: 2, scope: !4425)
!4463 = !DILocation(line: 289, column: 15, scope: !4425)
!4464 = !DILocation(line: 289, column: 2, scope: !4425)
!4465 = !DILocation(line: 289, column: 8, scope: !4425)
!4466 = !DILocation(line: 289, column: 13, scope: !4425)
!4467 = !DILocation(line: 290, column: 1, scope: !4425)
!4468 = distinct !DISubprogram(name: "class_dev_iter_next", scope: !3, file: !3, line: 305, type: !4469, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!2662, !4428}
!4471 = !DILocalVariable(name: "iter", arg: 1, scope: !4468, file: !3, line: 305, type: !4428)
!4472 = !DILocation(line: 305, column: 59, scope: !4468)
!4473 = !DILocalVariable(name: "knode", scope: !4468, file: !3, line: 307, type: !2678)
!4474 = !DILocation(line: 307, column: 21, scope: !4468)
!4475 = !DILocalVariable(name: "dev", scope: !4468, file: !3, line: 308, type: !2662)
!4476 = !DILocation(line: 308, column: 17, scope: !4468)
!4477 = !DILocation(line: 310, column: 2, scope: !4468)
!4478 = !DILocation(line: 311, column: 23, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4468, file: !3, line: 310, column: 12)
!4480 = !DILocation(line: 311, column: 29, scope: !4479)
!4481 = !DILocation(line: 311, column: 11, scope: !4479)
!4482 = !DILocation(line: 311, column: 9, scope: !4479)
!4483 = !DILocation(line: 312, column: 8, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4479, file: !3, line: 312, column: 7)
!4485 = !DILocation(line: 312, column: 7, scope: !4479)
!4486 = !DILocation(line: 313, column: 4, scope: !4484)
!4487 = !DILocation(line: 314, column: 28, scope: !4479)
!4488 = !DILocation(line: 314, column: 9, scope: !4479)
!4489 = !DILocation(line: 314, column: 7, scope: !4479)
!4490 = !DILocation(line: 315, column: 8, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4479, file: !3, line: 315, column: 7)
!4492 = !DILocation(line: 315, column: 14, scope: !4491)
!4493 = !DILocation(line: 315, column: 19, scope: !4491)
!4494 = !DILocation(line: 315, column: 22, scope: !4491)
!4495 = !DILocation(line: 315, column: 28, scope: !4491)
!4496 = !DILocation(line: 315, column: 36, scope: !4491)
!4497 = !DILocation(line: 315, column: 41, scope: !4491)
!4498 = !DILocation(line: 315, column: 33, scope: !4491)
!4499 = !DILocation(line: 315, column: 7, scope: !4479)
!4500 = !DILocation(line: 316, column: 11, scope: !4491)
!4501 = !DILocation(line: 316, column: 4, scope: !4491)
!4502 = distinct !{!4502, !4477, !4503}
!4503 = !DILocation(line: 317, column: 2, scope: !4468)
!4504 = !DILocation(line: 318, column: 1, scope: !4468)
!4505 = distinct !DISubprogram(name: "klist_class_to_dev", scope: !3, file: !3, line: 121, type: !4506, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!2662, !2678}
!4508 = !DILocalVariable(name: "n", arg: 1, scope: !4505, file: !3, line: 121, type: !2678)
!4509 = !DILocation(line: 121, column: 61, scope: !4505)
!4510 = !DILocalVariable(name: "p", scope: !4505, file: !3, line: 123, type: !2664)
!4511 = !DILocation(line: 123, column: 25, scope: !4505)
!4512 = !DILocalVariable(name: "__mptr", scope: !4513, file: !3, line: 123, type: !108)
!4513 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 123, column: 29)
!4514 = !DILocation(line: 123, column: 29, scope: !4513)
!4515 = !DILocation(line: 123, column: 29, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 123, column: 29)
!4517 = !DILocation(line: 124, column: 9, scope: !4505)
!4518 = !DILocation(line: 124, column: 12, scope: !4505)
!4519 = !DILocation(line: 124, column: 2, scope: !4505)
!4520 = distinct !DISubprogram(name: "class_dev_iter_exit", scope: !3, file: !3, line: 328, type: !4521, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{null, !4428}
!4523 = !DILocalVariable(name: "iter", arg: 1, scope: !4520, file: !3, line: 328, type: !4428)
!4524 = !DILocation(line: 328, column: 49, scope: !4520)
!4525 = !DILocation(line: 330, column: 19, scope: !4520)
!4526 = !DILocation(line: 330, column: 25, scope: !4520)
!4527 = !DILocation(line: 330, column: 2, scope: !4520)
!4528 = !DILocation(line: 331, column: 1, scope: !4520)
!4529 = distinct !DISubprogram(name: "class_for_each_device", scope: !3, file: !3, line: 352, type: !4530, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!199, !136, !2662, !108, !4532}
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!199, !2662, !108}
!4535 = !DILocalVariable(name: "class", arg: 1, scope: !4529, file: !3, line: 352, type: !136)
!4536 = !DILocation(line: 352, column: 41, scope: !4529)
!4537 = !DILocalVariable(name: "start", arg: 2, scope: !4529, file: !3, line: 352, type: !2662)
!4538 = !DILocation(line: 352, column: 63, scope: !4529)
!4539 = !DILocalVariable(name: "data", arg: 3, scope: !4529, file: !3, line: 353, type: !108)
!4540 = !DILocation(line: 353, column: 12, scope: !4529)
!4541 = !DILocalVariable(name: "fn", arg: 4, scope: !4529, file: !3, line: 353, type: !4532)
!4542 = !DILocation(line: 353, column: 24, scope: !4529)
!4543 = !DILocalVariable(name: "iter", scope: !4529, file: !3, line: 355, type: !4429)
!4544 = !DILocation(line: 355, column: 24, scope: !4529)
!4545 = !DILocalVariable(name: "dev", scope: !4529, file: !3, line: 356, type: !2662)
!4546 = !DILocation(line: 356, column: 17, scope: !4529)
!4547 = !DILocalVariable(name: "error", scope: !4529, file: !3, line: 357, type: !199)
!4548 = !DILocation(line: 357, column: 6, scope: !4529)
!4549 = !DILocation(line: 359, column: 7, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4529, file: !3, line: 359, column: 6)
!4551 = !DILocation(line: 359, column: 6, scope: !4529)
!4552 = !DILocation(line: 360, column: 3, scope: !4550)
!4553 = !DILocation(line: 361, column: 7, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4529, file: !3, line: 361, column: 6)
!4555 = !DILocation(line: 361, column: 14, scope: !4554)
!4556 = !DILocation(line: 361, column: 6, scope: !4529)
!4557 = !DILocalVariable(name: "__ret_warn_on", scope: !4558, file: !3, line: 362, type: !199)
!4558 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 362, column: 3)
!4559 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 361, column: 17)
!4560 = !DILocation(line: 362, column: 3, scope: !4558)
!4561 = !DILocation(line: 362, column: 3, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 362, column: 3)
!4563 = !DILocation(line: 362, column: 3, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 362, column: 3)
!4565 = !DILocation(line: 362, column: 3, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 362, column: 3)
!4567 = !DILocation(line: 362, column: 3, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 362, column: 3)
!4569 = !DILocation(line: 362, column: 3, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4568, file: !3, line: 362, column: 3)
!4571 = !DILocation(line: 362, column: 3, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4568, file: !3, line: 362, column: 3)
!4573 = !{i32 -2142187696, i32 -2142187667, i32 -2142187621, i32 -2142187563, i32 -2142187509, i32 -2142187455, i32 -2142187400, i32 -2142187369}
!4574 = !DILocation(line: 362, column: 3, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4568, file: !3, line: 362, column: 3)
!4576 = !{i32 -2142186956, i32 -2142186949, i32 -2142186897, i32 -2142186866, i32 -2142186836}
!4577 = !DILocation(line: 362, column: 3, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4568, file: !3, line: 362, column: 3)
!4579 = !DILocation(line: 362, column: 3, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 362, column: 3)
!4581 = !DILocation(line: 364, column: 3, scope: !4559)
!4582 = !DILocation(line: 367, column: 29, scope: !4529)
!4583 = !DILocation(line: 367, column: 36, scope: !4529)
!4584 = !DILocation(line: 367, column: 2, scope: !4529)
!4585 = !DILocation(line: 368, column: 2, scope: !4529)
!4586 = !DILocation(line: 368, column: 16, scope: !4529)
!4587 = !DILocation(line: 368, column: 14, scope: !4529)
!4588 = !DILocation(line: 369, column: 11, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4529, file: !3, line: 368, column: 45)
!4590 = !DILocation(line: 369, column: 14, scope: !4589)
!4591 = !DILocation(line: 369, column: 19, scope: !4589)
!4592 = !DILocation(line: 369, column: 9, scope: !4589)
!4593 = !DILocation(line: 370, column: 7, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4589, file: !3, line: 370, column: 7)
!4595 = !DILocation(line: 370, column: 7, scope: !4589)
!4596 = !DILocation(line: 371, column: 4, scope: !4594)
!4597 = distinct !{!4597, !4585, !4598}
!4598 = !DILocation(line: 372, column: 2, scope: !4529)
!4599 = !DILocation(line: 373, column: 2, scope: !4529)
!4600 = !DILocation(line: 375, column: 9, scope: !4529)
!4601 = !DILocation(line: 375, column: 2, scope: !4529)
!4602 = !DILocation(line: 376, column: 1, scope: !4529)
!4603 = distinct !DISubprogram(name: "class_find_device", scope: !3, file: !3, line: 399, type: !4604, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!2662, !136, !2662, !280, !4606}
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!199, !2662, !280}
!4609 = !DILocalVariable(name: "class", arg: 1, scope: !4603, file: !3, line: 399, type: !136)
!4610 = !DILocation(line: 399, column: 48, scope: !4603)
!4611 = !DILocalVariable(name: "start", arg: 2, scope: !4603, file: !3, line: 399, type: !2662)
!4612 = !DILocation(line: 399, column: 70, scope: !4603)
!4613 = !DILocalVariable(name: "data", arg: 3, scope: !4603, file: !3, line: 400, type: !280)
!4614 = !DILocation(line: 400, column: 18, scope: !4603)
!4615 = !DILocalVariable(name: "match", arg: 4, scope: !4603, file: !3, line: 401, type: !4606)
!4616 = !DILocation(line: 401, column: 12, scope: !4603)
!4617 = !DILocalVariable(name: "iter", scope: !4603, file: !3, line: 403, type: !4429)
!4618 = !DILocation(line: 403, column: 24, scope: !4603)
!4619 = !DILocalVariable(name: "dev", scope: !4603, file: !3, line: 404, type: !2662)
!4620 = !DILocation(line: 404, column: 17, scope: !4603)
!4621 = !DILocation(line: 406, column: 7, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 406, column: 6)
!4623 = !DILocation(line: 406, column: 6, scope: !4603)
!4624 = !DILocation(line: 407, column: 3, scope: !4622)
!4625 = !DILocation(line: 408, column: 7, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 408, column: 6)
!4627 = !DILocation(line: 408, column: 14, scope: !4626)
!4628 = !DILocation(line: 408, column: 6, scope: !4603)
!4629 = !DILocalVariable(name: "__ret_warn_on", scope: !4630, file: !3, line: 409, type: !199)
!4630 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 409, column: 3)
!4631 = distinct !DILexicalBlock(scope: !4626, file: !3, line: 408, column: 17)
!4632 = !DILocation(line: 409, column: 3, scope: !4630)
!4633 = !DILocation(line: 409, column: 3, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4630, file: !3, line: 409, column: 3)
!4635 = !DILocation(line: 409, column: 3, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 409, column: 3)
!4637 = !DILocation(line: 409, column: 3, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4636, file: !3, line: 409, column: 3)
!4639 = !DILocation(line: 409, column: 3, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4636, file: !3, line: 409, column: 3)
!4641 = !DILocation(line: 409, column: 3, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 409, column: 3)
!4643 = !DILocation(line: 409, column: 3, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 409, column: 3)
!4645 = !{i32 -2142185749, i32 -2142185720, i32 -2142185674, i32 -2142185616, i32 -2142185562, i32 -2142185508, i32 -2142185453, i32 -2142185422}
!4646 = !DILocation(line: 409, column: 3, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 409, column: 3)
!4648 = !{i32 -2142185009, i32 -2142185002, i32 -2142184950, i32 -2142184919, i32 -2142184889}
!4649 = !DILocation(line: 409, column: 3, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 409, column: 3)
!4651 = !DILocation(line: 409, column: 3, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4636, file: !3, line: 409, column: 3)
!4653 = !DILocation(line: 411, column: 3, scope: !4631)
!4654 = !DILocation(line: 414, column: 29, scope: !4603)
!4655 = !DILocation(line: 414, column: 36, scope: !4603)
!4656 = !DILocation(line: 414, column: 2, scope: !4603)
!4657 = !DILocation(line: 415, column: 2, scope: !4603)
!4658 = !DILocation(line: 415, column: 16, scope: !4603)
!4659 = !DILocation(line: 415, column: 14, scope: !4603)
!4660 = !DILocation(line: 416, column: 7, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4662, file: !3, line: 416, column: 7)
!4662 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 415, column: 45)
!4663 = !DILocation(line: 416, column: 13, scope: !4661)
!4664 = !DILocation(line: 416, column: 18, scope: !4661)
!4665 = !DILocation(line: 416, column: 7, scope: !4662)
!4666 = !DILocation(line: 417, column: 15, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 416, column: 25)
!4668 = !DILocation(line: 417, column: 4, scope: !4667)
!4669 = !DILocation(line: 418, column: 4, scope: !4667)
!4670 = distinct !{!4670, !4657, !4671}
!4671 = !DILocation(line: 420, column: 2, scope: !4603)
!4672 = !DILocation(line: 421, column: 2, scope: !4603)
!4673 = !DILocation(line: 423, column: 9, scope: !4603)
!4674 = !DILocation(line: 423, column: 2, scope: !4603)
!4675 = !DILocation(line: 424, column: 1, scope: !4603)
!4676 = distinct !DISubprogram(name: "class_interface_register", scope: !3, file: !3, line: 427, type: !4677, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{!199, !4679}
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class_interface", file: !111, line: 241, size: 320, elements: !4681)
!4681 = !{!4682, !4683, !4684, !4688}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4680, file: !111, line: 242, baseType: !161, size: 128)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4680, file: !111, line: 243, baseType: !136, size: 64, offset: 128)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "add_dev", scope: !4680, file: !111, line: 245, baseType: !4685, size: 64, offset: 192)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!199, !2662, !4679}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "remove_dev", scope: !4680, file: !111, line: 246, baseType: !4689, size: 64, offset: 256)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{null, !2662, !4679}
!4692 = !DILocalVariable(name: "class_intf", arg: 1, scope: !4676, file: !3, line: 427, type: !4679)
!4693 = !DILocation(line: 427, column: 54, scope: !4676)
!4694 = !DILocalVariable(name: "parent", scope: !4676, file: !3, line: 429, type: !136)
!4695 = !DILocation(line: 429, column: 16, scope: !4676)
!4696 = !DILocalVariable(name: "iter", scope: !4676, file: !3, line: 430, type: !4429)
!4697 = !DILocation(line: 430, column: 24, scope: !4676)
!4698 = !DILocalVariable(name: "dev", scope: !4676, file: !3, line: 431, type: !2662)
!4699 = !DILocation(line: 431, column: 17, scope: !4676)
!4700 = !DILocation(line: 433, column: 7, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 433, column: 6)
!4702 = !DILocation(line: 433, column: 18, scope: !4701)
!4703 = !DILocation(line: 433, column: 22, scope: !4701)
!4704 = !DILocation(line: 433, column: 34, scope: !4701)
!4705 = !DILocation(line: 433, column: 6, scope: !4676)
!4706 = !DILocation(line: 434, column: 3, scope: !4701)
!4707 = !DILocation(line: 436, column: 21, scope: !4676)
!4708 = !DILocation(line: 436, column: 33, scope: !4676)
!4709 = !DILocation(line: 436, column: 11, scope: !4676)
!4710 = !DILocation(line: 436, column: 9, scope: !4676)
!4711 = !DILocation(line: 437, column: 7, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 437, column: 6)
!4713 = !DILocation(line: 437, column: 6, scope: !4676)
!4714 = !DILocation(line: 438, column: 3, scope: !4712)
!4715 = !DILocation(line: 440, column: 14, scope: !4676)
!4716 = !DILocation(line: 440, column: 22, scope: !4676)
!4717 = !DILocation(line: 440, column: 25, scope: !4676)
!4718 = !DILocation(line: 440, column: 2, scope: !4676)
!4719 = !DILocation(line: 441, column: 17, scope: !4676)
!4720 = !DILocation(line: 441, column: 29, scope: !4676)
!4721 = !DILocation(line: 441, column: 36, scope: !4676)
!4722 = !DILocation(line: 441, column: 44, scope: !4676)
!4723 = !DILocation(line: 441, column: 47, scope: !4676)
!4724 = !DILocation(line: 441, column: 2, scope: !4676)
!4725 = !DILocation(line: 442, column: 6, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 442, column: 6)
!4727 = !DILocation(line: 442, column: 18, scope: !4726)
!4728 = !DILocation(line: 442, column: 6, scope: !4676)
!4729 = !DILocation(line: 443, column: 30, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4726, file: !3, line: 442, column: 27)
!4731 = !DILocation(line: 443, column: 3, scope: !4730)
!4732 = !DILocation(line: 444, column: 3, scope: !4730)
!4733 = !DILocation(line: 444, column: 17, scope: !4730)
!4734 = !DILocation(line: 444, column: 15, scope: !4730)
!4735 = !DILocation(line: 445, column: 4, scope: !4730)
!4736 = !DILocation(line: 445, column: 16, scope: !4730)
!4737 = !DILocation(line: 445, column: 24, scope: !4730)
!4738 = !DILocation(line: 445, column: 29, scope: !4730)
!4739 = distinct !{!4739, !4732, !4740}
!4740 = !DILocation(line: 445, column: 39, scope: !4730)
!4741 = !DILocation(line: 446, column: 3, scope: !4730)
!4742 = !DILocation(line: 447, column: 2, scope: !4730)
!4743 = !DILocation(line: 448, column: 16, scope: !4676)
!4744 = !DILocation(line: 448, column: 24, scope: !4676)
!4745 = !DILocation(line: 448, column: 27, scope: !4676)
!4746 = !DILocation(line: 448, column: 2, scope: !4676)
!4747 = !DILocation(line: 450, column: 2, scope: !4676)
!4748 = !DILocation(line: 451, column: 1, scope: !4676)
!4749 = distinct !DISubprogram(name: "list_add_tail", scope: !4249, file: !4249, line: 98, type: !4750, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{null, !164, !164}
!4752 = !DILocalVariable(name: "new", arg: 1, scope: !4749, file: !4249, line: 98, type: !164)
!4753 = !DILocation(line: 98, column: 52, scope: !4749)
!4754 = !DILocalVariable(name: "head", arg: 2, scope: !4749, file: !4249, line: 98, type: !164)
!4755 = !DILocation(line: 98, column: 75, scope: !4749)
!4756 = !DILocation(line: 100, column: 13, scope: !4749)
!4757 = !DILocation(line: 100, column: 18, scope: !4749)
!4758 = !DILocation(line: 100, column: 24, scope: !4749)
!4759 = !DILocation(line: 100, column: 30, scope: !4749)
!4760 = !DILocation(line: 100, column: 2, scope: !4749)
!4761 = !DILocation(line: 101, column: 1, scope: !4749)
!4762 = distinct !DISubprogram(name: "class_interface_unregister", scope: !3, file: !3, line: 453, type: !4763, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4763 = !DISubroutineType(types: !4764)
!4764 = !{null, !4679}
!4765 = !DILocalVariable(name: "class_intf", arg: 1, scope: !4762, file: !3, line: 453, type: !4679)
!4766 = !DILocation(line: 453, column: 57, scope: !4762)
!4767 = !DILocalVariable(name: "parent", scope: !4762, file: !3, line: 455, type: !136)
!4768 = !DILocation(line: 455, column: 16, scope: !4762)
!4769 = !DILocation(line: 455, column: 25, scope: !4762)
!4770 = !DILocation(line: 455, column: 37, scope: !4762)
!4771 = !DILocalVariable(name: "iter", scope: !4762, file: !3, line: 456, type: !4429)
!4772 = !DILocation(line: 456, column: 24, scope: !4762)
!4773 = !DILocalVariable(name: "dev", scope: !4762, file: !3, line: 457, type: !2662)
!4774 = !DILocation(line: 457, column: 17, scope: !4762)
!4775 = !DILocation(line: 459, column: 7, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 459, column: 6)
!4777 = !DILocation(line: 459, column: 6, scope: !4762)
!4778 = !DILocation(line: 460, column: 3, scope: !4776)
!4779 = !DILocation(line: 462, column: 14, scope: !4762)
!4780 = !DILocation(line: 462, column: 22, scope: !4762)
!4781 = !DILocation(line: 462, column: 25, scope: !4762)
!4782 = !DILocation(line: 462, column: 2, scope: !4762)
!4783 = !DILocation(line: 463, column: 17, scope: !4762)
!4784 = !DILocation(line: 463, column: 29, scope: !4762)
!4785 = !DILocation(line: 463, column: 2, scope: !4762)
!4786 = !DILocation(line: 464, column: 6, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 464, column: 6)
!4788 = !DILocation(line: 464, column: 18, scope: !4787)
!4789 = !DILocation(line: 464, column: 6, scope: !4762)
!4790 = !DILocation(line: 465, column: 30, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4787, file: !3, line: 464, column: 30)
!4792 = !DILocation(line: 465, column: 3, scope: !4791)
!4793 = !DILocation(line: 466, column: 3, scope: !4791)
!4794 = !DILocation(line: 466, column: 17, scope: !4791)
!4795 = !DILocation(line: 466, column: 15, scope: !4791)
!4796 = !DILocation(line: 467, column: 4, scope: !4791)
!4797 = !DILocation(line: 467, column: 16, scope: !4791)
!4798 = !DILocation(line: 467, column: 27, scope: !4791)
!4799 = !DILocation(line: 467, column: 32, scope: !4791)
!4800 = distinct !{!4800, !4793, !4801}
!4801 = !DILocation(line: 467, column: 42, scope: !4791)
!4802 = !DILocation(line: 468, column: 3, scope: !4791)
!4803 = !DILocation(line: 469, column: 2, scope: !4791)
!4804 = !DILocation(line: 470, column: 16, scope: !4762)
!4805 = !DILocation(line: 470, column: 24, scope: !4762)
!4806 = !DILocation(line: 470, column: 27, scope: !4762)
!4807 = !DILocation(line: 470, column: 2, scope: !4762)
!4808 = !DILocation(line: 472, column: 12, scope: !4762)
!4809 = !DILocation(line: 472, column: 2, scope: !4762)
!4810 = !DILocation(line: 473, column: 1, scope: !4762)
!4811 = distinct !DISubprogram(name: "list_del_init", scope: !4249, file: !4249, line: 202, type: !4250, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4812 = !DILocalVariable(name: "entry", arg: 1, scope: !4811, file: !4249, line: 202, type: !164)
!4813 = !DILocation(line: 202, column: 52, scope: !4811)
!4814 = !DILocation(line: 204, column: 19, scope: !4811)
!4815 = !DILocation(line: 204, column: 2, scope: !4811)
!4816 = !DILocation(line: 205, column: 17, scope: !4811)
!4817 = !DILocation(line: 205, column: 2, scope: !4811)
!4818 = !DILocation(line: 206, column: 1, scope: !4811)
!4819 = distinct !DISubprogram(name: "show_class_attr_string", scope: !3, file: !3, line: 475, type: !129, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4820 = !DILocalVariable(name: "class", arg: 1, scope: !4819, file: !3, line: 475, type: !136)
!4821 = !DILocation(line: 475, column: 46, scope: !4819)
!4822 = !DILocalVariable(name: "attr", arg: 2, scope: !4819, file: !3, line: 476, type: !3787)
!4823 = !DILocation(line: 476, column: 35, scope: !4819)
!4824 = !DILocalVariable(name: "buf", arg: 3, scope: !4819, file: !3, line: 476, type: !215)
!4825 = !DILocation(line: 476, column: 47, scope: !4819)
!4826 = !DILocalVariable(name: "cs", scope: !4819, file: !3, line: 478, type: !109)
!4827 = !DILocation(line: 478, column: 33, scope: !4819)
!4828 = !DILocalVariable(name: "__mptr", scope: !4829, file: !3, line: 480, type: !108)
!4829 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 480, column: 7)
!4830 = !DILocation(line: 480, column: 7, scope: !4829)
!4831 = !DILocation(line: 480, column: 7, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4829, file: !3, line: 480, column: 7)
!4833 = !DILocation(line: 480, column: 5, scope: !4819)
!4834 = !DILocation(line: 481, column: 20, scope: !4819)
!4835 = !DILocation(line: 481, column: 33, scope: !4819)
!4836 = !DILocation(line: 481, column: 37, scope: !4819)
!4837 = !DILocation(line: 481, column: 9, scope: !4819)
!4838 = !DILocation(line: 481, column: 2, scope: !4819)
!4839 = distinct !DISubprogram(name: "class_compat_register", scope: !3, file: !3, line: 497, type: !4840, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!4840 = !DISubroutineType(types: !4841)
!4841 = !{!4842, !121}
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class_compat", file: !3, line: 486, size: 64, elements: !4844)
!4844 = !{!4845}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4843, file: !3, line: 487, baseType: !155, size: 64)
!4846 = !DILocation(line: 445, column: 72, scope: !3960, inlinedAt: !4847)
!4847 = distinct !DILocation(line: 552, column: 10, scope: !3965, inlinedAt: !4848)
!4848 = distinct !DILocation(line: 501, column: 8, scope: !4839)
!4849 = !DILocation(line: 446, column: 9, scope: !3960, inlinedAt: !4847)
!4850 = !DILocation(line: 446, column: 23, scope: !3960, inlinedAt: !4847)
!4851 = !DILocation(line: 448, column: 8, scope: !3960, inlinedAt: !4847)
!4852 = !DILocation(line: 318, column: 67, scope: !3976, inlinedAt: !4853)
!4853 = distinct !DILocation(line: 553, column: 20, scope: !3965, inlinedAt: !4848)
!4854 = !DILocation(line: 346, column: 58, scope: !3982, inlinedAt: !4855)
!4855 = distinct !DILocation(line: 547, column: 11, scope: !3965, inlinedAt: !4848)
!4856 = !DILocation(line: 472, column: 28, scope: !3988, inlinedAt: !4857)
!4857 = distinct !DILocation(line: 481, column: 9, scope: !3993, inlinedAt: !4858)
!4858 = distinct !DILocation(line: 545, column: 11, scope: !3995, inlinedAt: !4848)
!4859 = !DILocation(line: 472, column: 40, scope: !3988, inlinedAt: !4857)
!4860 = !DILocation(line: 472, column: 60, scope: !3988, inlinedAt: !4857)
!4861 = !DILocation(line: 478, column: 51, scope: !3993, inlinedAt: !4858)
!4862 = !DILocation(line: 478, column: 63, scope: !3993, inlinedAt: !4858)
!4863 = !DILocation(line: 480, column: 15, scope: !3993, inlinedAt: !4858)
!4864 = !DILocation(line: 538, column: 45, scope: !3967, inlinedAt: !4848)
!4865 = !DILocation(line: 538, column: 57, scope: !3967, inlinedAt: !4848)
!4866 = !DILocation(line: 542, column: 16, scope: !3965, inlinedAt: !4848)
!4867 = !DILocalVariable(name: "name", arg: 1, scope: !4839, file: !3, line: 497, type: !121)
!4868 = !DILocation(line: 497, column: 56, scope: !4839)
!4869 = !DILocalVariable(name: "cls", scope: !4839, file: !3, line: 499, type: !4842)
!4870 = !DILocation(line: 499, column: 23, scope: !4839)
!4871 = !DILocation(line: 540, column: 27, scope: !3966, inlinedAt: !4848)
!4872 = !DILocation(line: 540, column: 6, scope: !3966, inlinedAt: !4848)
!4873 = !DILocation(line: 540, column: 6, scope: !3967, inlinedAt: !4848)
!4874 = !DILocation(line: 544, column: 7, scope: !3995, inlinedAt: !4848)
!4875 = !DILocation(line: 544, column: 12, scope: !3995, inlinedAt: !4848)
!4876 = !DILocation(line: 544, column: 7, scope: !3965, inlinedAt: !4848)
!4877 = !DILocation(line: 545, column: 25, scope: !3995, inlinedAt: !4848)
!4878 = !DILocation(line: 545, column: 31, scope: !3995, inlinedAt: !4848)
!4879 = !DILocation(line: 480, column: 33, scope: !3993, inlinedAt: !4858)
!4880 = !DILocation(line: 480, column: 23, scope: !3993, inlinedAt: !4858)
!4881 = !DILocation(line: 481, column: 29, scope: !3993, inlinedAt: !4858)
!4882 = !DILocation(line: 481, column: 35, scope: !3993, inlinedAt: !4858)
!4883 = !DILocation(line: 481, column: 42, scope: !3993, inlinedAt: !4858)
!4884 = !DILocation(line: 474, column: 23, scope: !3988, inlinedAt: !4857)
!4885 = !DILocation(line: 474, column: 29, scope: !3988, inlinedAt: !4857)
!4886 = !DILocation(line: 474, column: 36, scope: !3988, inlinedAt: !4857)
!4887 = !DILocation(line: 474, column: 9, scope: !3988, inlinedAt: !4857)
!4888 = !DILocation(line: 545, column: 4, scope: !3995, inlinedAt: !4848)
!4889 = !DILocation(line: 547, column: 25, scope: !3965, inlinedAt: !4848)
!4890 = !DILocation(line: 348, column: 7, scope: !4039, inlinedAt: !4855)
!4891 = !DILocation(line: 348, column: 6, scope: !3982, inlinedAt: !4855)
!4892 = !DILocation(line: 349, column: 3, scope: !4039, inlinedAt: !4855)
!4893 = !DILocation(line: 351, column: 6, scope: !4043, inlinedAt: !4855)
!4894 = !DILocation(line: 351, column: 11, scope: !4043, inlinedAt: !4855)
!4895 = !DILocation(line: 351, column: 6, scope: !3982, inlinedAt: !4855)
!4896 = !DILocation(line: 352, column: 3, scope: !4043, inlinedAt: !4855)
!4897 = !DILocation(line: 354, column: 32, scope: !4048, inlinedAt: !4855)
!4898 = !DILocation(line: 354, column: 37, scope: !4048, inlinedAt: !4855)
!4899 = !DILocation(line: 354, column: 42, scope: !4048, inlinedAt: !4855)
!4900 = !DILocation(line: 354, column: 45, scope: !4048, inlinedAt: !4855)
!4901 = !DILocation(line: 354, column: 50, scope: !4048, inlinedAt: !4855)
!4902 = !DILocation(line: 354, column: 6, scope: !3982, inlinedAt: !4855)
!4903 = !DILocation(line: 355, column: 3, scope: !4048, inlinedAt: !4855)
!4904 = !DILocation(line: 356, column: 32, scope: !4056, inlinedAt: !4855)
!4905 = !DILocation(line: 356, column: 37, scope: !4056, inlinedAt: !4855)
!4906 = !DILocation(line: 356, column: 43, scope: !4056, inlinedAt: !4855)
!4907 = !DILocation(line: 356, column: 46, scope: !4056, inlinedAt: !4855)
!4908 = !DILocation(line: 356, column: 51, scope: !4056, inlinedAt: !4855)
!4909 = !DILocation(line: 356, column: 6, scope: !3982, inlinedAt: !4855)
!4910 = !DILocation(line: 357, column: 3, scope: !4056, inlinedAt: !4855)
!4911 = !DILocation(line: 358, column: 6, scope: !4064, inlinedAt: !4855)
!4912 = !DILocation(line: 358, column: 11, scope: !4064, inlinedAt: !4855)
!4913 = !DILocation(line: 358, column: 6, scope: !3982, inlinedAt: !4855)
!4914 = !DILocation(line: 358, column: 26, scope: !4064, inlinedAt: !4855)
!4915 = !DILocation(line: 359, column: 6, scope: !4069, inlinedAt: !4855)
!4916 = !DILocation(line: 359, column: 11, scope: !4069, inlinedAt: !4855)
!4917 = !DILocation(line: 359, column: 6, scope: !3982, inlinedAt: !4855)
!4918 = !DILocation(line: 359, column: 26, scope: !4069, inlinedAt: !4855)
!4919 = !DILocation(line: 360, column: 6, scope: !4074, inlinedAt: !4855)
!4920 = !DILocation(line: 360, column: 11, scope: !4074, inlinedAt: !4855)
!4921 = !DILocation(line: 360, column: 6, scope: !3982, inlinedAt: !4855)
!4922 = !DILocation(line: 360, column: 26, scope: !4074, inlinedAt: !4855)
!4923 = !DILocation(line: 361, column: 6, scope: !4079, inlinedAt: !4855)
!4924 = !DILocation(line: 361, column: 11, scope: !4079, inlinedAt: !4855)
!4925 = !DILocation(line: 361, column: 6, scope: !3982, inlinedAt: !4855)
!4926 = !DILocation(line: 361, column: 26, scope: !4079, inlinedAt: !4855)
!4927 = !DILocation(line: 362, column: 6, scope: !4084, inlinedAt: !4855)
!4928 = !DILocation(line: 362, column: 11, scope: !4084, inlinedAt: !4855)
!4929 = !DILocation(line: 362, column: 6, scope: !3982, inlinedAt: !4855)
!4930 = !DILocation(line: 362, column: 26, scope: !4084, inlinedAt: !4855)
!4931 = !DILocation(line: 363, column: 6, scope: !4089, inlinedAt: !4855)
!4932 = !DILocation(line: 363, column: 11, scope: !4089, inlinedAt: !4855)
!4933 = !DILocation(line: 363, column: 6, scope: !3982, inlinedAt: !4855)
!4934 = !DILocation(line: 363, column: 26, scope: !4089, inlinedAt: !4855)
!4935 = !DILocation(line: 364, column: 6, scope: !4094, inlinedAt: !4855)
!4936 = !DILocation(line: 364, column: 11, scope: !4094, inlinedAt: !4855)
!4937 = !DILocation(line: 364, column: 6, scope: !3982, inlinedAt: !4855)
!4938 = !DILocation(line: 364, column: 26, scope: !4094, inlinedAt: !4855)
!4939 = !DILocation(line: 365, column: 6, scope: !4099, inlinedAt: !4855)
!4940 = !DILocation(line: 365, column: 11, scope: !4099, inlinedAt: !4855)
!4941 = !DILocation(line: 365, column: 6, scope: !3982, inlinedAt: !4855)
!4942 = !DILocation(line: 365, column: 26, scope: !4099, inlinedAt: !4855)
!4943 = !DILocation(line: 366, column: 6, scope: !4104, inlinedAt: !4855)
!4944 = !DILocation(line: 366, column: 11, scope: !4104, inlinedAt: !4855)
!4945 = !DILocation(line: 366, column: 6, scope: !3982, inlinedAt: !4855)
!4946 = !DILocation(line: 366, column: 26, scope: !4104, inlinedAt: !4855)
!4947 = !DILocation(line: 367, column: 6, scope: !4109, inlinedAt: !4855)
!4948 = !DILocation(line: 367, column: 11, scope: !4109, inlinedAt: !4855)
!4949 = !DILocation(line: 367, column: 6, scope: !3982, inlinedAt: !4855)
!4950 = !DILocation(line: 367, column: 26, scope: !4109, inlinedAt: !4855)
!4951 = !DILocation(line: 368, column: 6, scope: !4114, inlinedAt: !4855)
!4952 = !DILocation(line: 368, column: 11, scope: !4114, inlinedAt: !4855)
!4953 = !DILocation(line: 368, column: 6, scope: !3982, inlinedAt: !4855)
!4954 = !DILocation(line: 368, column: 26, scope: !4114, inlinedAt: !4855)
!4955 = !DILocation(line: 369, column: 6, scope: !4119, inlinedAt: !4855)
!4956 = !DILocation(line: 369, column: 11, scope: !4119, inlinedAt: !4855)
!4957 = !DILocation(line: 369, column: 6, scope: !3982, inlinedAt: !4855)
!4958 = !DILocation(line: 369, column: 26, scope: !4119, inlinedAt: !4855)
!4959 = !DILocation(line: 370, column: 6, scope: !4124, inlinedAt: !4855)
!4960 = !DILocation(line: 370, column: 11, scope: !4124, inlinedAt: !4855)
!4961 = !DILocation(line: 370, column: 6, scope: !3982, inlinedAt: !4855)
!4962 = !DILocation(line: 370, column: 26, scope: !4124, inlinedAt: !4855)
!4963 = !DILocation(line: 371, column: 6, scope: !4129, inlinedAt: !4855)
!4964 = !DILocation(line: 371, column: 11, scope: !4129, inlinedAt: !4855)
!4965 = !DILocation(line: 371, column: 6, scope: !3982, inlinedAt: !4855)
!4966 = !DILocation(line: 371, column: 26, scope: !4129, inlinedAt: !4855)
!4967 = !DILocation(line: 372, column: 6, scope: !4134, inlinedAt: !4855)
!4968 = !DILocation(line: 372, column: 11, scope: !4134, inlinedAt: !4855)
!4969 = !DILocation(line: 372, column: 6, scope: !3982, inlinedAt: !4855)
!4970 = !DILocation(line: 372, column: 26, scope: !4134, inlinedAt: !4855)
!4971 = !DILocation(line: 373, column: 6, scope: !4139, inlinedAt: !4855)
!4972 = !DILocation(line: 373, column: 11, scope: !4139, inlinedAt: !4855)
!4973 = !DILocation(line: 373, column: 6, scope: !3982, inlinedAt: !4855)
!4974 = !DILocation(line: 373, column: 26, scope: !4139, inlinedAt: !4855)
!4975 = !DILocation(line: 374, column: 6, scope: !4144, inlinedAt: !4855)
!4976 = !DILocation(line: 374, column: 11, scope: !4144, inlinedAt: !4855)
!4977 = !DILocation(line: 374, column: 6, scope: !3982, inlinedAt: !4855)
!4978 = !DILocation(line: 374, column: 26, scope: !4144, inlinedAt: !4855)
!4979 = !DILocation(line: 375, column: 6, scope: !4149, inlinedAt: !4855)
!4980 = !DILocation(line: 375, column: 11, scope: !4149, inlinedAt: !4855)
!4981 = !DILocation(line: 375, column: 6, scope: !3982, inlinedAt: !4855)
!4982 = !DILocation(line: 375, column: 27, scope: !4149, inlinedAt: !4855)
!4983 = !DILocation(line: 376, column: 6, scope: !4154, inlinedAt: !4855)
!4984 = !DILocation(line: 376, column: 11, scope: !4154, inlinedAt: !4855)
!4985 = !DILocation(line: 376, column: 6, scope: !3982, inlinedAt: !4855)
!4986 = !DILocation(line: 376, column: 32, scope: !4154, inlinedAt: !4855)
!4987 = !DILocation(line: 377, column: 6, scope: !4159, inlinedAt: !4855)
!4988 = !DILocation(line: 377, column: 11, scope: !4159, inlinedAt: !4855)
!4989 = !DILocation(line: 377, column: 6, scope: !3982, inlinedAt: !4855)
!4990 = !DILocation(line: 377, column: 32, scope: !4159, inlinedAt: !4855)
!4991 = !DILocation(line: 378, column: 6, scope: !4164, inlinedAt: !4855)
!4992 = !DILocation(line: 378, column: 11, scope: !4164, inlinedAt: !4855)
!4993 = !DILocation(line: 378, column: 6, scope: !3982, inlinedAt: !4855)
!4994 = !DILocation(line: 378, column: 32, scope: !4164, inlinedAt: !4855)
!4995 = !DILocation(line: 379, column: 6, scope: !4169, inlinedAt: !4855)
!4996 = !DILocation(line: 379, column: 11, scope: !4169, inlinedAt: !4855)
!4997 = !DILocation(line: 379, column: 6, scope: !3982, inlinedAt: !4855)
!4998 = !DILocation(line: 379, column: 33, scope: !4169, inlinedAt: !4855)
!4999 = !DILocation(line: 380, column: 6, scope: !4174, inlinedAt: !4855)
!5000 = !DILocation(line: 380, column: 11, scope: !4174, inlinedAt: !4855)
!5001 = !DILocation(line: 380, column: 6, scope: !3982, inlinedAt: !4855)
!5002 = !DILocation(line: 380, column: 33, scope: !4174, inlinedAt: !4855)
!5003 = !DILocation(line: 381, column: 6, scope: !4179, inlinedAt: !4855)
!5004 = !DILocation(line: 381, column: 11, scope: !4179, inlinedAt: !4855)
!5005 = !DILocation(line: 381, column: 6, scope: !3982, inlinedAt: !4855)
!5006 = !DILocation(line: 381, column: 33, scope: !4179, inlinedAt: !4855)
!5007 = !DILocation(line: 382, column: 2, scope: !4184, inlinedAt: !4855)
!5008 = !DILocation(line: 382, column: 2, scope: !4188, inlinedAt: !4855)
!5009 = !DILocation(line: 382, column: 2, scope: !4189, inlinedAt: !4855)
!5010 = !DILocation(line: 386, column: 1, scope: !3982, inlinedAt: !4855)
!5011 = !DILocation(line: 547, column: 9, scope: !3965, inlinedAt: !4848)
!5012 = !DILocation(line: 549, column: 8, scope: !4195, inlinedAt: !4848)
!5013 = !DILocation(line: 549, column: 7, scope: !3965, inlinedAt: !4848)
!5014 = !DILocation(line: 550, column: 4, scope: !4195, inlinedAt: !4848)
!5015 = !DILocation(line: 553, column: 33, scope: !3965, inlinedAt: !4848)
!5016 = !DILocation(line: 325, column: 6, scope: !4200, inlinedAt: !4853)
!5017 = !DILocation(line: 325, column: 6, scope: !3976, inlinedAt: !4853)
!5018 = !DILocation(line: 326, column: 3, scope: !4200, inlinedAt: !4853)
!5019 = !DILocation(line: 332, column: 9, scope: !3976, inlinedAt: !4853)
!5020 = !DILocation(line: 332, column: 15, scope: !3976, inlinedAt: !4853)
!5021 = !DILocation(line: 332, column: 2, scope: !3976, inlinedAt: !4853)
!5022 = !DILocation(line: 336, column: 1, scope: !3976, inlinedAt: !4853)
!5023 = !DILocation(line: 553, column: 5, scope: !3965, inlinedAt: !4848)
!5024 = !DILocation(line: 553, column: 41, scope: !3965, inlinedAt: !4848)
!5025 = !DILocation(line: 554, column: 5, scope: !3965, inlinedAt: !4848)
!5026 = !DILocation(line: 554, column: 12, scope: !3965, inlinedAt: !4848)
!5027 = !DILocation(line: 448, column: 31, scope: !3960, inlinedAt: !4847)
!5028 = !DILocation(line: 448, column: 34, scope: !3960, inlinedAt: !4847)
!5029 = !DILocation(line: 448, column: 14, scope: !3960, inlinedAt: !4847)
!5030 = !DILocation(line: 450, column: 22, scope: !3960, inlinedAt: !4847)
!5031 = !DILocation(line: 450, column: 25, scope: !3960, inlinedAt: !4847)
!5032 = !DILocation(line: 450, column: 30, scope: !3960, inlinedAt: !4847)
!5033 = !DILocation(line: 450, column: 36, scope: !3960, inlinedAt: !4847)
!5034 = !DILocation(line: 450, column: 8, scope: !3960, inlinedAt: !4847)
!5035 = !DILocation(line: 450, column: 6, scope: !3960, inlinedAt: !4847)
!5036 = !DILocation(line: 451, column: 9, scope: !3960, inlinedAt: !4847)
!5037 = !DILocation(line: 552, column: 3, scope: !3965, inlinedAt: !4848)
!5038 = !DILocation(line: 557, column: 19, scope: !3967, inlinedAt: !4848)
!5039 = !DILocation(line: 557, column: 25, scope: !3967, inlinedAt: !4848)
!5040 = !DILocation(line: 557, column: 9, scope: !3967, inlinedAt: !4848)
!5041 = !DILocation(line: 557, column: 2, scope: !3967, inlinedAt: !4848)
!5042 = !DILocation(line: 558, column: 1, scope: !3967, inlinedAt: !4848)
!5043 = !DILocation(line: 501, column: 8, scope: !4839)
!5044 = !DILocation(line: 501, column: 6, scope: !4839)
!5045 = !DILocation(line: 502, column: 7, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 502, column: 6)
!5047 = !DILocation(line: 502, column: 6, scope: !4839)
!5048 = !DILocation(line: 503, column: 3, scope: !5046)
!5049 = !DILocation(line: 504, column: 37, scope: !4839)
!5050 = !DILocation(line: 504, column: 44, scope: !4839)
!5051 = !DILocation(line: 504, column: 56, scope: !4839)
!5052 = !DILocation(line: 504, column: 14, scope: !4839)
!5053 = !DILocation(line: 504, column: 2, scope: !4839)
!5054 = !DILocation(line: 504, column: 7, scope: !4839)
!5055 = !DILocation(line: 504, column: 12, scope: !4839)
!5056 = !DILocation(line: 505, column: 7, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 505, column: 6)
!5058 = !DILocation(line: 505, column: 12, scope: !5057)
!5059 = !DILocation(line: 505, column: 6, scope: !4839)
!5060 = !DILocation(line: 506, column: 9, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5057, file: !3, line: 505, column: 18)
!5062 = !DILocation(line: 506, column: 3, scope: !5061)
!5063 = !DILocation(line: 507, column: 3, scope: !5061)
!5064 = !DILocation(line: 509, column: 9, scope: !4839)
!5065 = !DILocation(line: 509, column: 2, scope: !4839)
!5066 = !DILocation(line: 510, column: 1, scope: !4839)
!5067 = distinct !DISubprogram(name: "class_compat_unregister", scope: !3, file: !3, line: 517, type: !5068, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5068 = !DISubroutineType(types: !5069)
!5069 = !{null, !4842}
!5070 = !DILocalVariable(name: "cls", arg: 1, scope: !5067, file: !3, line: 517, type: !4842)
!5071 = !DILocation(line: 517, column: 51, scope: !5067)
!5072 = !DILocation(line: 519, column: 14, scope: !5067)
!5073 = !DILocation(line: 519, column: 19, scope: !5067)
!5074 = !DILocation(line: 519, column: 2, scope: !5067)
!5075 = !DILocation(line: 520, column: 8, scope: !5067)
!5076 = !DILocation(line: 520, column: 2, scope: !5067)
!5077 = !DILocation(line: 521, column: 1, scope: !5067)
!5078 = distinct !DISubprogram(name: "class_compat_create_link", scope: !3, file: !3, line: 531, type: !5079, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!199, !4842, !2662, !2662}
!5081 = !DILocalVariable(name: "cls", arg: 1, scope: !5078, file: !3, line: 531, type: !4842)
!5082 = !DILocation(line: 531, column: 51, scope: !5078)
!5083 = !DILocalVariable(name: "dev", arg: 2, scope: !5078, file: !3, line: 531, type: !2662)
!5084 = !DILocation(line: 531, column: 71, scope: !5078)
!5085 = !DILocalVariable(name: "device_link", arg: 3, scope: !5078, file: !3, line: 532, type: !2662)
!5086 = !DILocation(line: 532, column: 24, scope: !5078)
!5087 = !DILocalVariable(name: "error", scope: !5078, file: !3, line: 534, type: !199)
!5088 = !DILocation(line: 534, column: 6, scope: !5078)
!5089 = !DILocation(line: 536, column: 28, scope: !5078)
!5090 = !DILocation(line: 536, column: 33, scope: !5078)
!5091 = !DILocation(line: 536, column: 40, scope: !5078)
!5092 = !DILocation(line: 536, column: 45, scope: !5078)
!5093 = !DILocation(line: 536, column: 60, scope: !5078)
!5094 = !DILocation(line: 536, column: 51, scope: !5078)
!5095 = !DILocation(line: 536, column: 10, scope: !5078)
!5096 = !DILocation(line: 536, column: 8, scope: !5078)
!5097 = !DILocation(line: 537, column: 6, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 537, column: 6)
!5099 = !DILocation(line: 537, column: 6, scope: !5078)
!5100 = !DILocation(line: 538, column: 10, scope: !5098)
!5101 = !DILocation(line: 538, column: 3, scope: !5098)
!5102 = !DILocation(line: 545, column: 6, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 545, column: 6)
!5104 = !DILocation(line: 545, column: 6, scope: !5078)
!5105 = !DILocation(line: 546, column: 30, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5103, file: !3, line: 545, column: 19)
!5107 = !DILocation(line: 546, column: 35, scope: !5106)
!5108 = !DILocation(line: 546, column: 42, scope: !5106)
!5109 = !DILocation(line: 546, column: 55, scope: !5106)
!5110 = !DILocation(line: 546, column: 11, scope: !5106)
!5111 = !DILocation(line: 546, column: 9, scope: !5106)
!5112 = !DILocation(line: 548, column: 7, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 548, column: 7)
!5114 = !DILocation(line: 548, column: 7, scope: !5106)
!5115 = !DILocation(line: 549, column: 22, scope: !5113)
!5116 = !DILocation(line: 549, column: 27, scope: !5113)
!5117 = !DILocation(line: 549, column: 42, scope: !5113)
!5118 = !DILocation(line: 549, column: 33, scope: !5113)
!5119 = !DILocation(line: 549, column: 4, scope: !5113)
!5120 = !DILocation(line: 550, column: 2, scope: !5106)
!5121 = !DILocation(line: 552, column: 9, scope: !5078)
!5122 = !DILocation(line: 552, column: 2, scope: !5078)
!5123 = !DILocation(line: 553, column: 1, scope: !5078)
!5124 = distinct !DISubprogram(name: "dev_name", scope: !56, file: !56, line: 609, type: !5125, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{!121, !5127}
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2658)
!5129 = !DILocalVariable(name: "dev", arg: 1, scope: !5124, file: !56, line: 609, type: !5127)
!5130 = !DILocation(line: 609, column: 57, scope: !5124)
!5131 = !DILocation(line: 612, column: 6, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5124, file: !56, line: 612, column: 6)
!5133 = !DILocation(line: 612, column: 11, scope: !5132)
!5134 = !DILocation(line: 612, column: 6, scope: !5124)
!5135 = !DILocation(line: 613, column: 10, scope: !5132)
!5136 = !DILocation(line: 613, column: 15, scope: !5132)
!5137 = !DILocation(line: 613, column: 3, scope: !5132)
!5138 = !DILocation(line: 615, column: 23, scope: !5124)
!5139 = !DILocation(line: 615, column: 28, scope: !5124)
!5140 = !DILocation(line: 615, column: 9, scope: !5124)
!5141 = !DILocation(line: 615, column: 2, scope: !5124)
!5142 = !DILocation(line: 616, column: 1, scope: !5124)
!5143 = distinct !DISubprogram(name: "class_compat_remove_link", scope: !3, file: !3, line: 564, type: !5144, scopeLine: 566, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5144 = !DISubroutineType(types: !5145)
!5145 = !{null, !4842, !2662, !2662}
!5146 = !DILocalVariable(name: "cls", arg: 1, scope: !5143, file: !3, line: 564, type: !4842)
!5147 = !DILocation(line: 564, column: 52, scope: !5143)
!5148 = !DILocalVariable(name: "dev", arg: 2, scope: !5143, file: !3, line: 564, type: !2662)
!5149 = !DILocation(line: 564, column: 72, scope: !5143)
!5150 = !DILocalVariable(name: "device_link", arg: 3, scope: !5143, file: !3, line: 565, type: !2662)
!5151 = !DILocation(line: 565, column: 25, scope: !5143)
!5152 = !DILocation(line: 567, column: 6, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5143, file: !3, line: 567, column: 6)
!5154 = !DILocation(line: 567, column: 6, scope: !5143)
!5155 = !DILocation(line: 568, column: 22, scope: !5153)
!5156 = !DILocation(line: 568, column: 27, scope: !5153)
!5157 = !DILocation(line: 568, column: 3, scope: !5153)
!5158 = !DILocation(line: 569, column: 20, scope: !5143)
!5159 = !DILocation(line: 569, column: 25, scope: !5143)
!5160 = !DILocation(line: 569, column: 40, scope: !5143)
!5161 = !DILocation(line: 569, column: 31, scope: !5143)
!5162 = !DILocation(line: 569, column: 2, scope: !5143)
!5163 = !DILocation(line: 570, column: 1, scope: !5143)
!5164 = distinct !DISubprogram(name: "classes_init", scope: !3, file: !3, line: 573, type: !5165, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5165 = !DISubroutineType(types: !5166)
!5166 = !{!199}
!5167 = !DILocation(line: 575, column: 15, scope: !5164)
!5168 = !DILocation(line: 575, column: 13, scope: !5164)
!5169 = !DILocation(line: 576, column: 7, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 576, column: 6)
!5171 = !DILocation(line: 576, column: 6, scope: !5164)
!5172 = !DILocation(line: 577, column: 3, scope: !5170)
!5173 = !DILocation(line: 578, column: 2, scope: !5164)
!5174 = !DILocation(line: 579, column: 1, scope: !5164)
!5175 = distinct !DISubprogram(name: "class_release", scope: !3, file: !3, line: 49, type: !234, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5176 = !DILocalVariable(name: "kobj", arg: 1, scope: !5175, file: !3, line: 49, type: !155)
!5177 = !DILocation(line: 49, column: 43, scope: !5175)
!5178 = !DILocalVariable(name: "cp", scope: !5175, file: !3, line: 51, type: !2774)
!5179 = !DILocation(line: 51, column: 25, scope: !5175)
!5180 = !DILocalVariable(name: "__mptr", scope: !5181, file: !3, line: 51, type: !108)
!5181 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 51, column: 30)
!5182 = !DILocation(line: 51, column: 30, scope: !5181)
!5183 = !DILocation(line: 51, column: 30, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 51, column: 30)
!5185 = !DILocalVariable(name: "class", scope: !5175, file: !3, line: 52, type: !136)
!5186 = !DILocation(line: 52, column: 16, scope: !5175)
!5187 = !DILocation(line: 52, column: 24, scope: !5175)
!5188 = !DILocation(line: 52, column: 28, scope: !5175)
!5189 = !DILocation(line: 54, column: 2, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 54, column: 2)
!5191 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 54, column: 2)
!5192 = !DILocation(line: 54, column: 2, scope: !5191)
!5193 = !DILocation(line: 56, column: 6, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 56, column: 6)
!5195 = !DILocation(line: 56, column: 13, scope: !5194)
!5196 = !DILocation(line: 56, column: 6, scope: !5175)
!5197 = !DILocation(line: 57, column: 3, scope: !5194)
!5198 = !DILocation(line: 57, column: 10, scope: !5194)
!5199 = !DILocation(line: 57, column: 24, scope: !5194)
!5200 = !DILocation(line: 59, column: 3, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 59, column: 3)
!5202 = distinct !DILexicalBlock(scope: !5194, file: !3, line: 59, column: 3)
!5203 = !DILocation(line: 59, column: 3, scope: !5202)
!5204 = !DILocation(line: 62, column: 8, scope: !5175)
!5205 = !DILocation(line: 62, column: 2, scope: !5175)
!5206 = !DILocation(line: 63, column: 1, scope: !5175)
!5207 = distinct !DISubprogram(name: "class_child_ns_type", scope: !3, file: !3, line: 65, type: !259, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5208 = !DILocalVariable(name: "kobj", arg: 1, scope: !5207, file: !3, line: 65, type: !155)
!5209 = !DILocation(line: 65, column: 82, scope: !5207)
!5210 = !DILocalVariable(name: "cp", scope: !5207, file: !3, line: 67, type: !2774)
!5211 = !DILocation(line: 67, column: 25, scope: !5207)
!5212 = !DILocalVariable(name: "__mptr", scope: !5213, file: !3, line: 67, type: !108)
!5213 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 67, column: 30)
!5214 = !DILocation(line: 67, column: 30, scope: !5213)
!5215 = !DILocation(line: 67, column: 30, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 67, column: 30)
!5217 = !DILocalVariable(name: "class", scope: !5207, file: !3, line: 68, type: !136)
!5218 = !DILocation(line: 68, column: 16, scope: !5207)
!5219 = !DILocation(line: 68, column: 24, scope: !5207)
!5220 = !DILocation(line: 68, column: 28, scope: !5207)
!5221 = !DILocation(line: 70, column: 9, scope: !5207)
!5222 = !DILocation(line: 70, column: 16, scope: !5207)
!5223 = !DILocation(line: 70, column: 2, scope: !5207)
!5224 = distinct !DISubprogram(name: "class_attr_show", scope: !3, file: !3, line: 25, type: !243, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5225 = !DILocalVariable(name: "kobj", arg: 1, scope: !5224, file: !3, line: 25, type: !155)
!5226 = !DILocation(line: 25, column: 48, scope: !5224)
!5227 = !DILocalVariable(name: "attr", arg: 2, scope: !5224, file: !3, line: 25, type: !245)
!5228 = !DILocation(line: 25, column: 72, scope: !5224)
!5229 = !DILocalVariable(name: "buf", arg: 3, scope: !5224, file: !3, line: 26, type: !215)
!5230 = !DILocation(line: 26, column: 17, scope: !5224)
!5231 = !DILocalVariable(name: "class_attr", scope: !5224, file: !3, line: 28, type: !3787)
!5232 = !DILocation(line: 28, column: 26, scope: !5224)
!5233 = !DILocalVariable(name: "__mptr", scope: !5234, file: !3, line: 28, type: !108)
!5234 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 28, column: 39)
!5235 = !DILocation(line: 28, column: 39, scope: !5234)
!5236 = !DILocation(line: 28, column: 39, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 28, column: 39)
!5238 = !DILocalVariable(name: "cp", scope: !5224, file: !3, line: 29, type: !2774)
!5239 = !DILocation(line: 29, column: 25, scope: !5224)
!5240 = !DILocalVariable(name: "__mptr", scope: !5241, file: !3, line: 29, type: !108)
!5241 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 29, column: 30)
!5242 = !DILocation(line: 29, column: 30, scope: !5241)
!5243 = !DILocation(line: 29, column: 30, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5241, file: !3, line: 29, column: 30)
!5245 = !DILocalVariable(name: "ret", scope: !5224, file: !3, line: 30, type: !131)
!5246 = !DILocation(line: 30, column: 10, scope: !5224)
!5247 = !DILocation(line: 32, column: 6, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 32, column: 6)
!5249 = !DILocation(line: 32, column: 18, scope: !5248)
!5250 = !DILocation(line: 32, column: 6, scope: !5224)
!5251 = !DILocation(line: 33, column: 9, scope: !5248)
!5252 = !DILocation(line: 33, column: 21, scope: !5248)
!5253 = !DILocation(line: 33, column: 26, scope: !5248)
!5254 = !DILocation(line: 33, column: 30, scope: !5248)
!5255 = !DILocation(line: 33, column: 37, scope: !5248)
!5256 = !DILocation(line: 33, column: 49, scope: !5248)
!5257 = !DILocation(line: 33, column: 7, scope: !5248)
!5258 = !DILocation(line: 33, column: 3, scope: !5248)
!5259 = !DILocation(line: 34, column: 9, scope: !5224)
!5260 = !DILocation(line: 34, column: 2, scope: !5224)
!5261 = distinct !DISubprogram(name: "class_attr_store", scope: !3, file: !3, line: 37, type: !248, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5262 = !DILocalVariable(name: "kobj", arg: 1, scope: !5261, file: !3, line: 37, type: !155)
!5263 = !DILocation(line: 37, column: 49, scope: !5261)
!5264 = !DILocalVariable(name: "attr", arg: 2, scope: !5261, file: !3, line: 37, type: !245)
!5265 = !DILocation(line: 37, column: 73, scope: !5261)
!5266 = !DILocalVariable(name: "buf", arg: 3, scope: !5261, file: !3, line: 38, type: !121)
!5267 = !DILocation(line: 38, column: 17, scope: !5261)
!5268 = !DILocalVariable(name: "count", arg: 4, scope: !5261, file: !3, line: 38, type: !250)
!5269 = !DILocation(line: 38, column: 29, scope: !5261)
!5270 = !DILocalVariable(name: "class_attr", scope: !5261, file: !3, line: 40, type: !3787)
!5271 = !DILocation(line: 40, column: 26, scope: !5261)
!5272 = !DILocalVariable(name: "__mptr", scope: !5273, file: !3, line: 40, type: !108)
!5273 = distinct !DILexicalBlock(scope: !5261, file: !3, line: 40, column: 39)
!5274 = !DILocation(line: 40, column: 39, scope: !5273)
!5275 = !DILocation(line: 40, column: 39, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5273, file: !3, line: 40, column: 39)
!5277 = !DILocalVariable(name: "cp", scope: !5261, file: !3, line: 41, type: !2774)
!5278 = !DILocation(line: 41, column: 25, scope: !5261)
!5279 = !DILocalVariable(name: "__mptr", scope: !5280, file: !3, line: 41, type: !108)
!5280 = distinct !DILexicalBlock(scope: !5261, file: !3, line: 41, column: 30)
!5281 = !DILocation(line: 41, column: 30, scope: !5280)
!5282 = !DILocation(line: 41, column: 30, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 41, column: 30)
!5284 = !DILocalVariable(name: "ret", scope: !5261, file: !3, line: 42, type: !131)
!5285 = !DILocation(line: 42, column: 10, scope: !5261)
!5286 = !DILocation(line: 44, column: 6, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5261, file: !3, line: 44, column: 6)
!5288 = !DILocation(line: 44, column: 18, scope: !5287)
!5289 = !DILocation(line: 44, column: 6, scope: !5261)
!5290 = !DILocation(line: 45, column: 9, scope: !5287)
!5291 = !DILocation(line: 45, column: 21, scope: !5287)
!5292 = !DILocation(line: 45, column: 27, scope: !5287)
!5293 = !DILocation(line: 45, column: 31, scope: !5287)
!5294 = !DILocation(line: 45, column: 38, scope: !5287)
!5295 = !DILocation(line: 45, column: 50, scope: !5287)
!5296 = !DILocation(line: 45, column: 55, scope: !5287)
!5297 = !DILocation(line: 45, column: 7, scope: !5287)
!5298 = !DILocation(line: 45, column: 3, scope: !5287)
!5299 = !DILocation(line: 46, column: 9, scope: !5261)
!5300 = !DILocation(line: 46, column: 2, scope: !5261)
!5301 = distinct !DISubprogram(name: "kset_get", scope: !157, file: !157, line: 211, type: !5302, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5302 = !DISubroutineType(types: !5303)
!5303 = !{!168, !168}
!5304 = !DILocalVariable(name: "k", arg: 1, scope: !5301, file: !157, line: 211, type: !168)
!5305 = !DILocation(line: 211, column: 50, scope: !5301)
!5306 = !DILocation(line: 213, column: 9, scope: !5301)
!5307 = !DILocation(line: 213, column: 34, scope: !5301)
!5308 = !DILocation(line: 213, column: 37, scope: !5301)
!5309 = !DILocation(line: 213, column: 21, scope: !5301)
!5310 = !DILocation(line: 213, column: 13, scope: !5301)
!5311 = !DILocation(line: 213, column: 2, scope: !5301)
!5312 = distinct !DISubprogram(name: "to_kset", scope: !157, file: !157, line: 206, type: !5313, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5313 = !DISubroutineType(types: !5314)
!5314 = !{!168, !155}
!5315 = !DILocalVariable(name: "kobj", arg: 1, scope: !5312, file: !157, line: 206, type: !155)
!5316 = !DILocation(line: 206, column: 52, scope: !5312)
!5317 = !DILocation(line: 208, column: 9, scope: !5312)
!5318 = !DILocalVariable(name: "__mptr", scope: !5319, file: !157, line: 208, type: !108)
!5319 = distinct !DILexicalBlock(scope: !5312, file: !157, line: 208, column: 16)
!5320 = !DILocation(line: 208, column: 16, scope: !5319)
!5321 = !DILocation(line: 208, column: 16, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5319, file: !157, line: 208, column: 16)
!5323 = !DILocation(line: 208, column: 2, scope: !5312)
!5324 = distinct !DISubprogram(name: "kset_put", scope: !157, file: !157, line: 216, type: !5325, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5325 = !DISubroutineType(types: !5326)
!5326 = !{null, !168}
!5327 = !DILocalVariable(name: "k", arg: 1, scope: !5324, file: !157, line: 216, type: !168)
!5328 = !DILocation(line: 216, column: 42, scope: !5324)
!5329 = !DILocation(line: 218, column: 15, scope: !5324)
!5330 = !DILocation(line: 218, column: 18, scope: !5324)
!5331 = !DILocation(line: 218, column: 2, scope: !5324)
!5332 = !DILocation(line: 219, column: 1, scope: !5324)
!5333 = distinct !DISubprogram(name: "__list_add", scope: !4249, file: !4249, line: 63, type: !5334, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5334 = !DISubroutineType(types: !5335)
!5335 = !{null, !164, !164, !164}
!5336 = !DILocalVariable(name: "new", arg: 1, scope: !5333, file: !4249, line: 63, type: !164)
!5337 = !DILocation(line: 63, column: 49, scope: !5333)
!5338 = !DILocalVariable(name: "prev", arg: 2, scope: !5333, file: !4249, line: 64, type: !164)
!5339 = !DILocation(line: 64, column: 28, scope: !5333)
!5340 = !DILocalVariable(name: "next", arg: 3, scope: !5333, file: !4249, line: 65, type: !164)
!5341 = !DILocation(line: 65, column: 28, scope: !5333)
!5342 = !DILocation(line: 67, column: 24, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5333, file: !4249, line: 67, column: 6)
!5344 = !DILocation(line: 67, column: 29, scope: !5343)
!5345 = !DILocation(line: 67, column: 35, scope: !5343)
!5346 = !DILocation(line: 67, column: 7, scope: !5343)
!5347 = !DILocation(line: 67, column: 6, scope: !5333)
!5348 = !DILocation(line: 68, column: 3, scope: !5343)
!5349 = !DILocation(line: 70, column: 15, scope: !5333)
!5350 = !DILocation(line: 70, column: 2, scope: !5333)
!5351 = !DILocation(line: 70, column: 8, scope: !5333)
!5352 = !DILocation(line: 70, column: 13, scope: !5333)
!5353 = !DILocation(line: 71, column: 14, scope: !5333)
!5354 = !DILocation(line: 71, column: 2, scope: !5333)
!5355 = !DILocation(line: 71, column: 7, scope: !5333)
!5356 = !DILocation(line: 71, column: 12, scope: !5333)
!5357 = !DILocation(line: 72, column: 14, scope: !5333)
!5358 = !DILocation(line: 72, column: 2, scope: !5333)
!5359 = !DILocation(line: 72, column: 7, scope: !5333)
!5360 = !DILocation(line: 72, column: 12, scope: !5333)
!5361 = !DILocation(line: 73, column: 2, scope: !5333)
!5362 = !DILocation(line: 73, column: 2, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5333, file: !4249, line: 73, column: 2)
!5364 = !DILocation(line: 73, column: 2, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5363, file: !4249, line: 73, column: 2)
!5366 = !DILocation(line: 73, column: 2, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5363, file: !4249, line: 73, column: 2)
!5368 = !DILocation(line: 74, column: 1, scope: !5333)
!5369 = distinct !DISubprogram(name: "__list_add_valid", scope: !4249, file: !4249, line: 45, type: !5370, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5370 = !DISubroutineType(types: !5371)
!5371 = !{!270, !164, !164, !164}
!5372 = !DILocalVariable(name: "new", arg: 1, scope: !5369, file: !4249, line: 45, type: !164)
!5373 = !DILocation(line: 45, column: 55, scope: !5369)
!5374 = !DILocalVariable(name: "prev", arg: 2, scope: !5369, file: !4249, line: 46, type: !164)
!5375 = !DILocation(line: 46, column: 23, scope: !5369)
!5376 = !DILocalVariable(name: "next", arg: 3, scope: !5369, file: !4249, line: 47, type: !164)
!5377 = !DILocation(line: 47, column: 23, scope: !5369)
!5378 = !DILocation(line: 49, column: 2, scope: !5369)
!5379 = distinct !DISubprogram(name: "__list_del_entry", scope: !4249, file: !4249, line: 130, type: !4250, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5380 = !DILocalVariable(name: "entry", arg: 1, scope: !5379, file: !4249, line: 130, type: !164)
!5381 = !DILocation(line: 130, column: 55, scope: !5379)
!5382 = !DILocation(line: 132, column: 30, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5379, file: !4249, line: 132, column: 6)
!5384 = !DILocation(line: 132, column: 7, scope: !5383)
!5385 = !DILocation(line: 132, column: 6, scope: !5379)
!5386 = !DILocation(line: 133, column: 3, scope: !5383)
!5387 = !DILocation(line: 135, column: 13, scope: !5379)
!5388 = !DILocation(line: 135, column: 20, scope: !5379)
!5389 = !DILocation(line: 135, column: 26, scope: !5379)
!5390 = !DILocation(line: 135, column: 33, scope: !5379)
!5391 = !DILocation(line: 135, column: 2, scope: !5379)
!5392 = !DILocation(line: 136, column: 1, scope: !5379)
!5393 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4249, file: !4249, line: 51, type: !5394, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5394 = !DISubroutineType(types: !5395)
!5395 = !{!270, !164}
!5396 = !DILocalVariable(name: "entry", arg: 1, scope: !5393, file: !4249, line: 51, type: !164)
!5397 = !DILocation(line: 51, column: 61, scope: !5393)
!5398 = !DILocation(line: 53, column: 2, scope: !5393)
!5399 = distinct !DISubprogram(name: "__list_del", scope: !4249, file: !4249, line: 110, type: !4750, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5400 = !DILocalVariable(name: "prev", arg: 1, scope: !5399, file: !4249, line: 110, type: !164)
!5401 = !DILocation(line: 110, column: 50, scope: !5399)
!5402 = !DILocalVariable(name: "next", arg: 2, scope: !5399, file: !4249, line: 110, type: !164)
!5403 = !DILocation(line: 110, column: 75, scope: !5399)
!5404 = !DILocation(line: 112, column: 15, scope: !5399)
!5405 = !DILocation(line: 112, column: 2, scope: !5399)
!5406 = !DILocation(line: 112, column: 8, scope: !5399)
!5407 = !DILocation(line: 112, column: 13, scope: !5399)
!5408 = !DILocation(line: 113, column: 2, scope: !5399)
!5409 = !DILocation(line: 113, column: 2, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5399, file: !4249, line: 113, column: 2)
!5411 = !DILocation(line: 113, column: 2, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5410, file: !4249, line: 113, column: 2)
!5413 = !DILocation(line: 113, column: 2, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5410, file: !4249, line: 113, column: 2)
!5415 = !DILocation(line: 114, column: 1, scope: !5399)
!5416 = distinct !DISubprogram(name: "get_order", scope: !5417, file: !5417, line: 29, type: !5418, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5417 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5418 = !DISubroutineType(types: !5419)
!5419 = !{!199, !253}
!5420 = !DILocalVariable(name: "x", arg: 1, scope: !5421, file: !5422, line: 366, type: !496)
!5421 = distinct !DISubprogram(name: "fls64", scope: !5422, file: !5422, line: 366, type: !5423, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5422 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5423 = !DISubroutineType(types: !5424)
!5424 = !{!199, !496}
!5425 = !DILocation(line: 366, column: 40, scope: !5421, inlinedAt: !5426)
!5426 = distinct !DILocation(line: 46, column: 9, scope: !5416)
!5427 = !DILocalVariable(name: "bitpos", scope: !5421, file: !5422, line: 368, type: !199)
!5428 = !DILocation(line: 368, column: 6, scope: !5421, inlinedAt: !5426)
!5429 = !DILocalVariable(name: "size", arg: 1, scope: !5416, file: !5417, line: 29, type: !253)
!5430 = !DILocation(line: 29, column: 63, scope: !5416)
!5431 = !DILocation(line: 31, column: 27, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5416, file: !5417, line: 31, column: 6)
!5433 = !DILocation(line: 31, column: 6, scope: !5432)
!5434 = !DILocation(line: 31, column: 6, scope: !5416)
!5435 = !DILocation(line: 32, column: 8, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5437, file: !5417, line: 32, column: 7)
!5437 = distinct !DILexicalBlock(scope: !5432, file: !5417, line: 31, column: 34)
!5438 = !DILocation(line: 32, column: 7, scope: !5437)
!5439 = !DILocation(line: 33, column: 4, scope: !5436)
!5440 = !DILocation(line: 35, column: 7, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5437, file: !5417, line: 35, column: 7)
!5442 = !DILocation(line: 35, column: 12, scope: !5441)
!5443 = !DILocation(line: 35, column: 7, scope: !5437)
!5444 = !DILocation(line: 36, column: 4, scope: !5441)
!5445 = !DILocation(line: 38, column: 10, scope: !5437)
!5446 = !DILocation(line: 38, column: 28, scope: !5437)
!5447 = !DILocation(line: 38, column: 41, scope: !5437)
!5448 = !DILocation(line: 38, column: 3, scope: !5437)
!5449 = !DILocation(line: 41, column: 6, scope: !5416)
!5450 = !DILocation(line: 42, column: 7, scope: !5416)
!5451 = !DILocation(line: 46, column: 15, scope: !5416)
!5452 = !DILocation(line: 374, column: 2, scope: !5421, inlinedAt: !5426)
!5453 = !DILocation(line: 376, column: 14, scope: !5421, inlinedAt: !5426)
!5454 = !{i32 303710}
!5455 = !DILocation(line: 377, column: 9, scope: !5421, inlinedAt: !5426)
!5456 = !DILocation(line: 377, column: 16, scope: !5421, inlinedAt: !5426)
!5457 = !DILocation(line: 46, column: 2, scope: !5416)
!5458 = !DILocation(line: 48, column: 1, scope: !5416)
!5459 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5460, file: !5460, line: 30, type: !5461, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5460 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5461 = !DISubroutineType(types: !5462)
!5462 = !{!199, !495}
!5463 = !DILocation(line: 366, column: 40, scope: !5421, inlinedAt: !5464)
!5464 = distinct !DILocation(line: 32, column: 9, scope: !5459)
!5465 = !DILocation(line: 368, column: 6, scope: !5421, inlinedAt: !5464)
!5466 = !DILocalVariable(name: "n", arg: 1, scope: !5459, file: !5460, line: 30, type: !495)
!5467 = !DILocation(line: 30, column: 21, scope: !5459)
!5468 = !DILocation(line: 32, column: 15, scope: !5459)
!5469 = !DILocation(line: 374, column: 2, scope: !5421, inlinedAt: !5464)
!5470 = !DILocation(line: 376, column: 14, scope: !5421, inlinedAt: !5464)
!5471 = !DILocation(line: 377, column: 9, scope: !5421, inlinedAt: !5464)
!5472 = !DILocation(line: 377, column: 16, scope: !5421, inlinedAt: !5464)
!5473 = !DILocation(line: 32, column: 18, scope: !5459)
!5474 = !DILocation(line: 32, column: 2, scope: !5459)
!5475 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5476, file: !5476, line: 137, type: !5477, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5476 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5477 = !DISubroutineType(types: !5478)
!5478 = !{!108, !967, !280, !250, !106}
!5479 = !DILocalVariable(name: "s", arg: 1, scope: !5475, file: !5476, line: 137, type: !967)
!5480 = !DILocation(line: 137, column: 54, scope: !5475)
!5481 = !DILocalVariable(name: "object", arg: 2, scope: !5475, file: !5476, line: 137, type: !280)
!5482 = !DILocation(line: 137, column: 69, scope: !5475)
!5483 = !DILocalVariable(name: "size", arg: 3, scope: !5475, file: !5476, line: 138, type: !250)
!5484 = !DILocation(line: 138, column: 12, scope: !5475)
!5485 = !DILocalVariable(name: "flags", arg: 4, scope: !5475, file: !5476, line: 138, type: !106)
!5486 = !DILocation(line: 138, column: 24, scope: !5475)
!5487 = !DILocation(line: 140, column: 17, scope: !5475)
!5488 = !DILocation(line: 140, column: 2, scope: !5475)
!5489 = distinct !DISubprogram(name: "kobject_name", scope: !157, file: !157, line: 88, type: !5490, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !187)
!5490 = !DISubroutineType(types: !5491)
!5491 = !{!121, !5492}
!5492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5493, size: 64)
!5493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!5494 = !DILocalVariable(name: "kobj", arg: 1, scope: !5489, file: !157, line: 88, type: !5492)
!5495 = !DILocation(line: 88, column: 62, scope: !5489)
!5496 = !DILocation(line: 90, column: 9, scope: !5489)
!5497 = !DILocation(line: 90, column: 15, scope: !5489)
!5498 = !DILocation(line: 90, column: 2, scope: !5489)
