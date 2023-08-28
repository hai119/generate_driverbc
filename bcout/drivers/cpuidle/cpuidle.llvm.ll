; ModuleID = '../bcout/drivers/cpuidle/cpuidle.llvm.bc'
source_filename = "drivers/cpuidle/cpuidle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall1.init\22, \22a\22\09"
module asm "__initcall_cpuidle_init1:\09\09\09"
module asm ".long\09cpuidle_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_kobj*], %struct.cpuidle_driver_kobj*, %struct.cpuidle_device_kobj*, %struct.list_head }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpuidle_state_kobj = type opaque
%struct.cpuidle_driver_kobj = type opaque
%struct.cpuidle_device_kobj = type opaque
%struct.cpuidle_governor = type { [16 x i8], %struct.list_head, i32, i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*)*, void (%struct.cpuidle_driver*, %struct.cpuidle_device*)*, i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*, i8*)*, void (%struct.cpuidle_device*, i32)* }
%struct.cpuidle_driver = type { i8*, %struct.module*, i8, [10 x %struct.cpuidle_state], i32, i32, %struct.cpumask*, i8* }
%struct.module = type opaque
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)*, i32 (%struct.cpuidle_device*, i32)*, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* }
%struct.cpumask = type { [1 x i64] }
%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.kparam_string = type { i32, i8* }
%struct.paravirt_patch_template = type { %struct.pv_init_ops, %struct.pv_time_ops, %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_init_ops = type { i32 (i8, i8*, i64, i32)* }
%struct.pv_time_ops = type { i64 ()*, i64 (i32)* }
%struct.pv_cpu_ops = type { void ()*, i64 (i32)*, void (i32, i64)*, i64 ()*, void (i64)*, void (i64)*, void ()*, void (%struct.desc_ptr*)*, void (%struct.desc_ptr*)*, void (i8*, i32)*, i64 ()*, void (%struct.thread_struct*, i32)*, void (i32)*, void (%struct.desc_struct*, i32, i8*)*, void (%struct.desc_struct*, i32, i8*, i32)*, void (%struct.gate_struct*, i32, %struct.gate_struct*)*, void (%struct.desc_struct*, i32)*, void (%struct.desc_struct*, i32)*, void (i64)*, void ()*, void ()*, void ()*, void (i32*, i32*, i32*, i32*)*, i64 (i32)*, void (i32, i32, i32)*, i64 (i32, i32*)*, i32 (i32, i32, i32)*, i64 (i32)*, void ()*, void ()*, void ()*, void (%struct.task_struct*)*, void (%struct.task_struct*)* }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, %struct.perf_event*, %struct.pmu*, i8*, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, %struct.perf_event_context*, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, %struct.perf_event*, i32, i32, %struct.list_head, %struct.task_struct*, %struct.mutex, %struct.atomic_t, %struct.perf_buffer*, %struct.list_head, i64, i32, %struct.wait_queue_head, %struct.fasync_struct*, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, %struct.perf_addr_filter_range*, i64, %struct.perf_event*, void (%struct.perf_event*)*, %struct.callback_head, %struct.pid_namespace*, i64, i64 ()*, void (%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*)*, i8*, %struct.list_head }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.pmu = type { %struct.list_head, %struct.module*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, i8*, i32, i32, i32*, %struct.perf_cpu_context*, %struct.atomic_t, i32, i32, i32, void (%struct.pmu*)*, void (%struct.pmu*)*, i32 (%struct.perf_event*)*, void (%struct.perf_event*, %struct.mm_struct*)*, void (%struct.perf_event*, %struct.mm_struct*)*, i32 (%struct.perf_event*, i32)*, void (%struct.perf_event*, i32)*, void (%struct.perf_event*, i32)*, void (%struct.perf_event*, i32)*, void (%struct.perf_event*)*, void (%struct.pmu*, i32)*, i32 (%struct.pmu*)*, void (%struct.pmu*)*, i32 (%struct.perf_event*)*, void (%struct.perf_event_context*, i1)*, %struct.kmem_cache*, void (%struct.perf_event_context*, %struct.perf_event_context*)*, i8* (%struct.perf_event*, i8**, i32, i1)*, void (i8*)*, i64 (%struct.perf_event*, %struct.perf_output_handle*, i64)*, i32 (%struct.list_head*)*, void (%struct.perf_event*)*, i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)*, i32 (%struct.perf_event*, i64)* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.45, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.45 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.42, %struct.list_head, %struct.list_head, %union.anon.43 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.kstatfs = type opaque
%struct.page = type { i64, %union.anon.3, %union.anon.32, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.32 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.33, i32 }
%union.anon.33 = type { %struct.kuid_t }
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
%struct.block_device = type { i32, i32, %struct.inode*, %struct.super_block*, %struct.mutex, i8*, i8*, i32, i8, %struct.list_head, %struct.block_device*, i8, %struct.hd_struct*, i32, %struct.spinlock, %struct.gendisk*, %struct.backing_dev_info*, i32, %struct.mutex }
%struct.hd_struct = type { i64, i64, i64, %struct.disk_stats*, %struct.percpu_ref, %struct.device, %struct.kobject*, i32, i32, %struct.partition_meta_info*, %struct.rcu_work }
%struct.disk_stats = type opaque
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, %struct.workqueue_struct* }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.disk_part_tbl*, %struct.hd_struct, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.rw_semaphore, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, %struct.kobject, i32, %struct.badblocks*, %struct.lockdep_map }
%struct.disk_part_tbl = type { %struct.callback_head, i32, %struct.hd_struct*, [0 x %struct.hd_struct*] }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops* }
%struct.bio = type { %struct.bio*, %struct.gendisk*, i32, i16, i16, i16, i8, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.78, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.78 = type { %struct.bio_integrity_payload* }
%struct.bio_integrity_payload = type { %struct.bio*, %struct.bvec_iter, i16, i16, i16, i16, %struct.bvec_iter, %struct.work_struct, %struct.bio_vec*, [0 x %struct.bio_vec] }
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct* }
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, %struct.backing_dev_info*, i8*, i64, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.kobject, %struct.kobject*, %struct.blk_integrity, %struct.device*, i32, i32, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.list_head, %struct.queue_limits, i32, i32, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.bsg_class_device, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.79, %union.anon.80, %union.anon.81, %struct.gendisk*, %struct.hd_struct*, i64, i64, i16, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.84, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.79 = type { %struct.hlist_node }
%union.anon.80 = type { %struct.rb_node }
%union.anon.81 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.84 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %union.anon.85, void (i8*)*, i8* }
%union.anon.85 = type { %struct.__call_single_node }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.63, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.63 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.blk_mq_hw_ctx*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.87, %union.anon.88, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%union.anon.87 = type { %struct.list_head }
%union.anon.88 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type opaque
%struct.blk_mq_ctx = type opaque
%struct.blk_integrity = type { %struct.blk_integrity_profile*, i8, i8, i8, i8 }
%struct.blk_integrity_profile = type { i8 (%struct.blk_integrity_iter*)*, i8 (%struct.blk_integrity_iter*)*, void (%struct.request*)*, void (%struct.request*, i32)*, i8* }
%struct.blk_integrity_iter = type { i8*, i8*, i64, i32, i16, i8* }
%struct.blk_stat_callback = type opaque
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.queue_limits = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type opaque
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.bsg_class_device = type { %struct.device*, i32, %struct.request_queue*, %struct.bsg_ops* }
%struct.bsg_ops = type { i32 (%struct.sg_io_v4*)*, i32 (%struct.request*, %struct.sg_io_v4*, i32)*, i32 (%struct.request*, %struct.sg_io_v4*)*, void (%struct.request*)* }
%struct.sg_io_v4 = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.blk_mq_tag_set = type opaque
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { i64 }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.mtd_info = type opaque
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.fsnotify_mark_connector = type opaque
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.atomic_t, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, %struct.list_head, %struct.key*, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [10 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19, [48 x i8] }
%struct.anon.19 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32 }
%struct.proc_ns_operations = type opaque
%struct.key = type { %struct.refcount_struct, i32, %union.anon.20, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.21, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.22, %union.anon.26, %struct.key_restriction* }
%union.anon.20 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.21 = type { i64 }
%union.anon.22 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.23, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.23 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.26 = type { %union.key_payload }
%union.key_payload = type { [4 x i8*] }
%struct.key_restriction = type { i32 (%struct.key*, %struct.key_type*, %union.key_payload*, %struct.key*)*, %struct.key*, %struct.key_type* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.28, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, i32, [10 x %struct.atomic_t] }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%union.anon.42 = type { %struct.list_head }
%union.anon.43 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.34, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.35, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.36, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.39, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.34 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.35 = type { %struct.callback_head }
%union.anon.36 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, i64, i32, i32 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type opaque
%struct.swap_info_struct = type { i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.39 = type { %struct.pipe_inode_info* }
%struct.pipe_inode_info = type opaque
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type { %struct.desc_struct*, i32, i32 }
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.pgprot = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.37 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.37 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.44 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.44 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [16 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.timerqueue_head = type { %struct.rb_root_cached }
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
%struct.dev_pm_qos_request = type { i32, %union.anon.46, %struct.device* }
%union.anon.46 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, %struct.freq_constraints* }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.perf_cpu_context = type { %struct.perf_event_context, %struct.perf_event_context*, i32, i32, %struct.raw_spinlock, %struct.hrtimer, i64, i32, i32, i32, i32, %struct.perf_event**, [2 x %struct.perf_event*] }
%struct.perf_event_context = type { %struct.pmu*, %struct.raw_spinlock, %struct.mutex, %struct.list_head, %struct.perf_event_groups, %struct.perf_event_groups, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, %struct.refcount_struct, %struct.task_struct*, i64, i64, %struct.perf_event_context*, i64, i64, i32, i8*, %struct.callback_head }
%struct.perf_event_groups = type { %struct.rb_root, i64 }
%struct.kmem_cache = type opaque
%struct.perf_output_handle = type { %struct.perf_event*, %struct.perf_buffer*, i64, i64, i64, %union.anon.47, i32 }
%union.anon.47 = type { i8* }
%struct.local64_t = type { %struct.local_t }
%struct.local_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.48, i64, i64, i64, %union.anon.49, i32, %union.anon.50, %union.anon.51, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32 }
%union.anon.48 = type { i64 }
%union.anon.49 = type { i32 }
%union.anon.50 = type { i64 }
%union.anon.51 = type { i64 }
%struct.hw_perf_event = type { %union.anon.52, %struct.task_struct*, i8*, i64, i32, %struct.local64_t, i64, %union.anon.59, i64, i64, i64, i64 }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { i64, i64, i64, i64, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type { i64, %struct.local64_t }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.101, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics }
%struct.load_weight = type { i64, i32 }
%struct.sched_statistics = type {}
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, %struct.sched_rt_entity* }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, %struct.sched_dl_entity* }
%struct.sched_info = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.73 }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { i32*, i32, i32, i32, i64, i32* }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type { %struct.refcount_struct, %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
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
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.93 }
%struct.anon.93 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.100, i32, [12 x i8] }
%union.anon.100 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.101 = type { %struct.callback_head }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
%struct.perf_buffer = type opaque
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.irq_work = type { %union.anon.62, void (%struct.irq_work*)* }
%union.anon.62 = type { %struct.__call_single_node }
%struct.atomic_t = type { i32 }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.perf_addr_filter_range = type { i64, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.pid_namespace = type { %struct.kref, %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.perf_sample_data = type { i64, %struct.perf_raw_record*, %struct.perf_branch_stack*, i64, i64, i64, %union.perf_mem_data_src, i64, i64, %struct.anon.67, i64, i64, i64, %struct.anon.68, %struct.perf_callchain_entry*, i64, %struct.perf_regs, %struct.perf_regs, i64, i64, i64, [8 x i8] }
%struct.perf_raw_record = type { %struct.perf_raw_frag, i32 }
%struct.perf_raw_frag = type <{ %union.anon.65, i64 (i8*, i8*, i64, i64)*, i8*, i32 }>
%union.anon.65 = type { %struct.perf_raw_frag* }
%struct.perf_branch_stack = type { i64, i64, [0 x %struct.perf_branch_entry] }
%struct.perf_branch_entry = type { i64, i64, i64 }
%union.perf_mem_data_src = type { i64 }
%struct.anon.67 = type { i32, i32 }
%struct.anon.68 = type { i32, i32 }
%struct.perf_callchain_entry = type { i64, [0 x i64] }
%struct.perf_regs = type { i64, %struct.pt_regs* }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.69, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.72 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { i64, i64 }
%union.anon.72 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.flush_tlb_info = type { %struct.mm_struct*, i64, i64, i64, i32, i8 }
%struct.mmu_gather = type opaque
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque

@cpuidle_lock = dso_local global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @cpuidle_lock to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @cpuidle_lock to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !0
@cpuidle_detected_devices = dso_local global %struct.list_head { %struct.list_head* @cpuidle_detected_devices, %struct.list_head* @cpuidle_detected_devices }, align 8, !dbg !80
@off = internal global i32 0, section ".data..read_mostly", align 4, !dbg !171
@initialized = internal global i32 0, section ".data..read_mostly", align 4, !dbg !173
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1
@cpuidle_devices = dso_local global %struct.cpuidle_device* null, section ".data", align 8, !dbg !165
@.str.1 = private unnamed_addr constant [26 x i8] c"drivers/cpuidle/cpuidle.c\00", align 1
@cpuidle_curr_governor = external dso_local global %struct.cpuidle_governor*, align 8
@enabled_devices = internal global i32 0, align 4, !dbg !169
@cpuidle_dev = dso_local global %struct.cpuidle_device zeroinitializer, section ".data", align 8, !dbg !167
@.str.2 = private unnamed_addr constant [37 x i8] c"\013failed to register cpuidle driver\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"\013Failed to register cpuidle device for cpu%d\0A\00", align 1
@__param_str_off = internal constant [12 x i8] c"cpuidle.off\00", align 1, !dbg !175
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@__param_off = internal constant %struct.kernel_param { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__param_str_off, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.0 { i8* bitcast (i32* @off to i8*) } }, section "__param", align 8, !dbg !82
@__UNIQUE_ID_offtype312 = internal constant [25 x i8] c"cpuidle.parmtype=off:int\00", section ".modinfo", align 1, !dbg !151
@__param_str_governor = internal constant [17 x i8] c"cpuidle.governor\00", align 16, !dbg !180
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 8
@__param_string_governor = internal constant %struct.kparam_string { i32 16, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @param_governor, i32 0, i32 0) }, align 8, !dbg !185
@__param_governor = internal constant { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, { %struct.kparam_string* } } { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__param_str_governor, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_string, i16 292, i8 -1, i8 0, { %struct.kparam_string* } { %struct.kparam_string* @__param_string_governor } }, section "__param", align 8, !dbg !156
@__UNIQUE_ID_governortype313 = internal constant [33 x i8] c"cpuidle.parmtype=governor:string\00", section ".modinfo", align 1, !dbg !158
@__UNIQUE_ID___addressable_cpuidle_init314 = internal global i8* bitcast (i32 ()* @cpuidle_init to i8*), section ".discard.addressable", align 8, !dbg !163
@.str.4 = private unnamed_addr constant [22 x i8] c"include/linux/ktime.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@param_governor = external dso_local global [0 x i8], align 1
@cpu_subsys = external dso_local global %struct.bus_type, align 8
@llvm.used = appending global [5 x i8*] [i8* bitcast (%struct.kernel_param* @__param_off to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_offtype312, i32 0, i32 0), i8* bitcast ({ i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, { %struct.kparam_string* } }* @__param_governor to i8*), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__UNIQUE_ID_governortype313, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_cpuidle_init314 to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cpuidle_disabled() #0 !dbg !220 {
entry:
  %0 = load i32, i32* @off, align 4, !dbg !223
  ret i32 %0, !dbg !224
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @disable_cpuidle() #0 !dbg !225 {
entry:
  store i32 1, i32* @off, align 4, !dbg !228
  ret void, !dbg !229
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @cpuidle_not_available(%struct.cpuidle_driver* %drv, %struct.cpuidle_device* %dev) #0 !dbg !230 {
entry:
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !280, metadata !DIExpression()), !dbg !281
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !282, metadata !DIExpression()), !dbg !283
  %0 = load i32, i32* @off, align 4, !dbg !284
  %tobool = icmp ne i32 %0, 0, !dbg !284
  br i1 %tobool, label %lor.end, label %lor.lhs.false, !dbg !285

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @initialized, align 4, !dbg !286
  %tobool1 = icmp ne i32 %1, 0, !dbg !286
  br i1 %tobool1, label %lor.lhs.false2, label %lor.end, !dbg !287

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !288
  %tobool3 = icmp ne %struct.cpuidle_driver* %2, null, !dbg !288
  br i1 %tobool3, label %lor.lhs.false4, label %lor.end, !dbg !289

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !290
  %tobool5 = icmp ne %struct.cpuidle_device* %3, null, !dbg !290
  br i1 %tobool5, label %lor.rhs, label %lor.end, !dbg !291

lor.rhs:                                          ; preds = %lor.lhs.false4
  %4 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !292
  %5 = bitcast %struct.cpuidle_device* %4 to i8*, !dbg !293
  %bf.load = load i8, i8* %5, align 8, !dbg !293
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !293
  %bf.clear = and i8 %bf.lshr, 1, !dbg !293
  %bf.cast = zext i8 %bf.clear to i32, !dbg !293
  %tobool6 = icmp ne i32 %bf.cast, 0, !dbg !294
  %lnot = xor i1 %tobool6, true, !dbg !294
  br label %lor.end, !dbg !291

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %6 = phi i1 [ true, %lor.lhs.false4 ], [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %lnot, %lor.rhs ]
  ret i1 %6, !dbg !295
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cpuidle_play_dead() #0 !dbg !296 {
entry:
  %retval = alloca i32, align 4
  %dev = alloca %struct.cpuidle_device*, align 8
  %tmp = alloca %struct.cpuidle_device*, align 8
  %pscr_ret__ = alloca %struct.cpuidle_device*, align 8
  %__vpp_verify = alloca i8*, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp1 = alloca %struct.cpuidle_device*, align 8
  %tmp2 = alloca %struct.cpuidle_device*, align 8
  %drv = alloca %struct.cpuidle_driver*, align 8
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev, metadata !297, metadata !DIExpression()), !dbg !298
  call void @__this_cpu_preempt_check(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #8, !dbg !299
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %pscr_ret__, metadata !301, metadata !DIExpression()), !dbg !303
  br label %do.body, !dbg !303

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !304, metadata !DIExpression()), !dbg !308
  store i8* null, i8** %__vpp_verify, align 8, !dbg !308
  %0 = load i8*, i8** %__vpp_verify, align 8, !dbg !308
  br label %do.end, !dbg !308

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %pfo_val__, metadata !309, metadata !DIExpression()), !dbg !311
  %1 = call i64 asm "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(%struct.cpuidle_device** @cpuidle_devices) #5, !dbg !311, !srcloc !312
  store i64 %1, i64* %pfo_val__, align 8, !dbg !311
  %2 = load i64, i64* %pfo_val__, align 8, !dbg !311
  %3 = inttoptr i64 %2 to %struct.cpuidle_device*, !dbg !311
  store %struct.cpuidle_device* %3, %struct.cpuidle_device** %tmp1, align 8, !dbg !311
  %4 = load %struct.cpuidle_device*, %struct.cpuidle_device** %tmp1, align 8, !dbg !311
  store %struct.cpuidle_device* %4, %struct.cpuidle_device** %pscr_ret__, align 8, !dbg !303
  %5 = load %struct.cpuidle_device*, %struct.cpuidle_device** %pscr_ret__, align 8, !dbg !303
  store %struct.cpuidle_device* %5, %struct.cpuidle_device** %tmp2, align 8, !dbg !303
  %6 = load %struct.cpuidle_device*, %struct.cpuidle_device** %tmp2, align 8, !dbg !303
  store %struct.cpuidle_device* %6, %struct.cpuidle_device** %tmp, align 8, !dbg !299
  %7 = load %struct.cpuidle_device*, %struct.cpuidle_device** %tmp, align 8, !dbg !299
  store %struct.cpuidle_device* %7, %struct.cpuidle_device** %dev, align 8, !dbg !298
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv, metadata !313, metadata !DIExpression()), !dbg !314
  %8 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !315
  %call = call %struct.cpuidle_driver* @cpuidle_get_cpu_driver(%struct.cpuidle_device* %8) #8, !dbg !316
  store %struct.cpuidle_driver* %call, %struct.cpuidle_driver** %drv, align 8, !dbg !314
  call void @llvm.dbg.declare(metadata i32* %i, metadata !317, metadata !DIExpression()), !dbg !318
  %9 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !319
  %tobool = icmp ne %struct.cpuidle_driver* %9, null, !dbg !319
  br i1 %tobool, label %if.end, label %if.then, !dbg !321

if.then:                                          ; preds = %do.end
  store i32 -19, i32* %retval, align 4, !dbg !322
  br label %return, !dbg !322

if.end:                                           ; preds = %do.end
  %10 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !323
  %state_count = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %10, i32 0, i32 4, !dbg !325
  %11 = load i32, i32* %state_count, align 8, !dbg !325
  %sub = sub i32 %11, 1, !dbg !326
  store i32 %sub, i32* %i, align 4, !dbg !327
  br label %for.cond, !dbg !328

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i, align 4, !dbg !329
  %cmp = icmp sge i32 %12, 0, !dbg !331
  br i1 %cmp, label %for.body, label %for.end, !dbg !332

for.body:                                         ; preds = %for.cond
  %13 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !333
  %states = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %13, i32 0, i32 3, !dbg !335
  %14 = load i32, i32* %i, align 4, !dbg !336
  %idxprom = sext i32 %14 to i64, !dbg !333
  %arrayidx = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states, i64 0, i64 %idxprom, !dbg !333
  %enter_dead = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %arrayidx, i32 0, i32 9, !dbg !337
  %15 = load i32 (%struct.cpuidle_device*, i32)*, i32 (%struct.cpuidle_device*, i32)** %enter_dead, align 8, !dbg !337
  %tobool3 = icmp ne i32 (%struct.cpuidle_device*, i32)* %15, null, !dbg !333
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !338

if.then4:                                         ; preds = %for.body
  %16 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !339
  %states5 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %16, i32 0, i32 3, !dbg !340
  %17 = load i32, i32* %i, align 4, !dbg !341
  %idxprom6 = sext i32 %17 to i64, !dbg !339
  %arrayidx7 = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states5, i64 0, i64 %idxprom6, !dbg !339
  %enter_dead8 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %arrayidx7, i32 0, i32 9, !dbg !342
  %18 = load i32 (%struct.cpuidle_device*, i32)*, i32 (%struct.cpuidle_device*, i32)** %enter_dead8, align 8, !dbg !342
  %19 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !343
  %20 = load i32, i32* %i, align 4, !dbg !344
  %call9 = call i32 %18(%struct.cpuidle_device* %19, i32 %20) #8, !dbg !339
  store i32 %call9, i32* %retval, align 4, !dbg !345
  br label %return, !dbg !345

if.end10:                                         ; preds = %for.body
  br label %for.inc, !dbg !337

for.inc:                                          ; preds = %if.end10
  %21 = load i32, i32* %i, align 4, !dbg !346
  %dec = add i32 %21, -1, !dbg !346
  store i32 %dec, i32* %i, align 4, !dbg !346
  br label %for.cond, !dbg !347, !llvm.loop !348

for.end:                                          ; preds = %for.cond
  store i32 -19, i32* %retval, align 4, !dbg !350
  br label %return, !dbg !350

return:                                           ; preds = %for.end, %if.then4, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !351
  ret i32 %22, !dbg !351
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__this_cpu_preempt_check(i8* %op) #0 !dbg !352 {
entry:
  %op.addr = alloca i8*, align 8
  store i8* %op, i8** %op.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %op.addr, metadata !356, metadata !DIExpression()), !dbg !357
  ret void, !dbg !358
}

; Function Attrs: noredzone
declare dso_local %struct.cpuidle_driver* @cpuidle_get_cpu_driver(%struct.cpuidle_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @cpuidle_use_deepest_state(i64 %latency_limit_ns) #0 !dbg !359 {
entry:
  %latency_limit_ns.addr = alloca i64, align 8
  %dev = alloca %struct.cpuidle_device*, align 8
  store i64 %latency_limit_ns, i64* %latency_limit_ns.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %latency_limit_ns.addr, metadata !362, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev, metadata !364, metadata !DIExpression()), !dbg !365
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !366, !srcloc !367
  %call = call %struct.cpuidle_device* @cpuidle_get_device() #8, !dbg !368
  store %struct.cpuidle_device* %call, %struct.cpuidle_device** %dev, align 8, !dbg !369
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !370
  %tobool = icmp ne %struct.cpuidle_device* %0, null, !dbg !370
  br i1 %tobool, label %if.then, label %if.end, !dbg !372

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %latency_limit_ns.addr, align 8, !dbg !373
  %2 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !374
  %forced_idle_latency_limit_ns = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %2, i32 0, i32 6, !dbg !375
  store i64 %1, i64* %forced_idle_latency_limit_ns, align 8, !dbg !376
  br label %if.end, !dbg !374

if.end:                                           ; preds = %if.then, %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !377, !srcloc !378
  ret void, !dbg !379
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.cpuidle_device* @cpuidle_get_device() #0 !dbg !380 {
entry:
  %tmp = alloca %struct.cpuidle_device*, align 8
  %pscr_ret__ = alloca %struct.cpuidle_device*, align 8
  %__vpp_verify = alloca i8*, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp1 = alloca %struct.cpuidle_device*, align 8
  %tmp2 = alloca %struct.cpuidle_device*, align 8
  call void @__this_cpu_preempt_check(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #8, !dbg !383
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %pscr_ret__, metadata !385, metadata !DIExpression()), !dbg !387
  br label %do.body, !dbg !387

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !388, metadata !DIExpression()), !dbg !390
  store i8* null, i8** %__vpp_verify, align 8, !dbg !390
  %0 = load i8*, i8** %__vpp_verify, align 8, !dbg !390
  br label %do.end, !dbg !390

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %pfo_val__, metadata !391, metadata !DIExpression()), !dbg !393
  %1 = call i64 asm "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(%struct.cpuidle_device** @cpuidle_devices) #5, !dbg !393, !srcloc !394
  store i64 %1, i64* %pfo_val__, align 8, !dbg !393
  %2 = load i64, i64* %pfo_val__, align 8, !dbg !393
  %3 = inttoptr i64 %2 to %struct.cpuidle_device*, !dbg !393
  store %struct.cpuidle_device* %3, %struct.cpuidle_device** %tmp1, align 8, !dbg !393
  %4 = load %struct.cpuidle_device*, %struct.cpuidle_device** %tmp1, align 8, !dbg !393
  store %struct.cpuidle_device* %4, %struct.cpuidle_device** %pscr_ret__, align 8, !dbg !387
  %5 = load %struct.cpuidle_device*, %struct.cpuidle_device** %pscr_ret__, align 8, !dbg !387
  store %struct.cpuidle_device* %5, %struct.cpuidle_device** %tmp2, align 8, !dbg !387
  %6 = load %struct.cpuidle_device*, %struct.cpuidle_device** %tmp2, align 8, !dbg !387
  store %struct.cpuidle_device* %6, %struct.cpuidle_device** %tmp, align 8, !dbg !383
  %7 = load %struct.cpuidle_device*, %struct.cpuidle_device** %tmp, align 8, !dbg !383
  ret %struct.cpuidle_device* %7, !dbg !395
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cpuidle_find_deepest_state(%struct.cpuidle_driver* %drv, %struct.cpuidle_device* %dev, i64 %latency_limit_ns) #0 !dbg !396 {
entry:
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %latency_limit_ns.addr = alloca i64, align 8
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !399, metadata !DIExpression()), !dbg !400
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !401, metadata !DIExpression()), !dbg !402
  store i64 %latency_limit_ns, i64* %latency_limit_ns.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %latency_limit_ns.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !405
  %1 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !406
  %2 = load i64, i64* %latency_limit_ns.addr, align 8, !dbg !407
  %call = call i32 @find_deepest_state(%struct.cpuidle_driver* %0, %struct.cpuidle_device* %1, i64 %2, i32 0, i1 zeroext false) #8, !dbg !408
  ret i32 %call, !dbg !409
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @find_deepest_state(%struct.cpuidle_driver* %drv, %struct.cpuidle_device* %dev, i64 %max_latency_ns, i32 %forbidden_flags, i1 zeroext %s2idle) #0 !dbg !410 {
entry:
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %max_latency_ns.addr = alloca i64, align 8
  %forbidden_flags.addr = alloca i32, align 4
  %s2idle.addr = alloca i8, align 1
  %latency_req = alloca i64, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %s = alloca %struct.cpuidle_state*, align 8
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !413, metadata !DIExpression()), !dbg !414
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !415, metadata !DIExpression()), !dbg !416
  store i64 %max_latency_ns, i64* %max_latency_ns.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %max_latency_ns.addr, metadata !417, metadata !DIExpression()), !dbg !418
  store i32 %forbidden_flags, i32* %forbidden_flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %forbidden_flags.addr, metadata !419, metadata !DIExpression()), !dbg !420
  %frombool = zext i1 %s2idle to i8
  store i8 %frombool, i8* %s2idle.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %s2idle.addr, metadata !421, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.declare(metadata i64* %latency_req, metadata !423, metadata !DIExpression()), !dbg !424
  store i64 0, i64* %latency_req, align 8, !dbg !424
  call void @llvm.dbg.declare(metadata i32* %i, metadata !425, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !427, metadata !DIExpression()), !dbg !428
  store i32 0, i32* %ret, align 4, !dbg !428
  store i32 1, i32* %i, align 4, !dbg !429
  br label %for.cond, !dbg !431

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !432
  %1 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !434
  %state_count = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %1, i32 0, i32 4, !dbg !435
  %2 = load i32, i32* %state_count, align 8, !dbg !435
  %cmp = icmp slt i32 %0, %2, !dbg !436
  br i1 %cmp, label %for.body, label %for.end, !dbg !437

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %s, metadata !438, metadata !DIExpression()), !dbg !441
  %3 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !442
  %states = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %3, i32 0, i32 3, !dbg !443
  %4 = load i32, i32* %i, align 4, !dbg !444
  %idxprom = sext i32 %4 to i64, !dbg !442
  %arrayidx = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states, i64 0, i64 %idxprom, !dbg !442
  store %struct.cpuidle_state* %arrayidx, %struct.cpuidle_state** %s, align 8, !dbg !441
  %5 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !445
  %states_usage = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %5, i32 0, i32 7, !dbg !447
  %6 = load i32, i32* %i, align 4, !dbg !448
  %idxprom1 = sext i32 %6 to i64, !dbg !445
  %arrayidx2 = getelementptr [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_usage]* %states_usage, i64 0, i64 %idxprom1, !dbg !445
  %disable = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %arrayidx2, i32 0, i32 0, !dbg !449
  %7 = load i64, i64* %disable, align 8, !dbg !449
  %tobool = icmp ne i64 %7, 0, !dbg !445
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !450

lor.lhs.false:                                    ; preds = %for.body
  %8 = load %struct.cpuidle_state*, %struct.cpuidle_state** %s, align 8, !dbg !451
  %exit_latency_ns = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %8, i32 0, i32 2, !dbg !452
  %9 = load i64, i64* %exit_latency_ns, align 8, !dbg !452
  %10 = load i64, i64* %latency_req, align 8, !dbg !453
  %cmp3 = icmp ule i64 %9, %10, !dbg !454
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !455

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %11 = load %struct.cpuidle_state*, %struct.cpuidle_state** %s, align 8, !dbg !456
  %exit_latency_ns5 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %11, i32 0, i32 2, !dbg !457
  %12 = load i64, i64* %exit_latency_ns5, align 8, !dbg !457
  %13 = load i64, i64* %max_latency_ns.addr, align 8, !dbg !458
  %cmp6 = icmp ugt i64 %12, %13, !dbg !459
  br i1 %cmp6, label %if.then, label %lor.lhs.false7, !dbg !460

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %14 = load %struct.cpuidle_state*, %struct.cpuidle_state** %s, align 8, !dbg !461
  %flags = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %14, i32 0, i32 4, !dbg !462
  %15 = load i32, i32* %flags, align 8, !dbg !462
  %16 = load i32, i32* %forbidden_flags.addr, align 4, !dbg !463
  %and = and i32 %15, %16, !dbg !464
  %tobool8 = icmp ne i32 %and, 0, !dbg !464
  br i1 %tobool8, label %if.then, label %lor.lhs.false9, !dbg !465

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %17 = load i8, i8* %s2idle.addr, align 1, !dbg !466
  %tobool10 = trunc i8 %17 to i1, !dbg !466
  br i1 %tobool10, label %land.lhs.true, label %if.end, !dbg !467

land.lhs.true:                                    ; preds = %lor.lhs.false9
  %18 = load %struct.cpuidle_state*, %struct.cpuidle_state** %s, align 8, !dbg !468
  %enter_s2idle = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %18, i32 0, i32 10, !dbg !469
  %19 = load i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)*, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)** %enter_s2idle, align 8, !dbg !469
  %tobool11 = icmp ne i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* %19, null, !dbg !468
  br i1 %tobool11, label %if.end, label %if.then, !dbg !470

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false, %for.body
  br label %for.inc, !dbg !471

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false9
  %20 = load %struct.cpuidle_state*, %struct.cpuidle_state** %s, align 8, !dbg !472
  %exit_latency_ns12 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %20, i32 0, i32 2, !dbg !473
  %21 = load i64, i64* %exit_latency_ns12, align 8, !dbg !473
  store i64 %21, i64* %latency_req, align 8, !dbg !474
  %22 = load i32, i32* %i, align 4, !dbg !475
  store i32 %22, i32* %ret, align 4, !dbg !476
  br label %for.inc, !dbg !477

for.inc:                                          ; preds = %if.end, %if.then
  %23 = load i32, i32* %i, align 4, !dbg !478
  %inc = add i32 %23, 1, !dbg !478
  store i32 %inc, i32* %i, align 4, !dbg !478
  br label %for.cond, !dbg !479, !llvm.loop !480

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %ret, align 4, !dbg !482
  ret i32 %24, !dbg !483
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cpuidle_enter_s2idle(%struct.cpuidle_driver* %drv, %struct.cpuidle_device* %dev) #0 !dbg !484 {
entry:
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %index = alloca i32, align 4
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !487, metadata !DIExpression()), !dbg !488
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !489, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.declare(metadata i32* %index, metadata !491, metadata !DIExpression()), !dbg !492
  %0 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !493
  %1 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !494
  %call = call i32 @find_deepest_state(%struct.cpuidle_driver* %0, %struct.cpuidle_device* %1, i64 -1, i32 0, i1 zeroext true) #8, !dbg !495
  store i32 %call, i32* %index, align 4, !dbg !496
  %2 = load i32, i32* %index, align 4, !dbg !497
  %cmp = icmp sgt i32 %2, 0, !dbg !499
  br i1 %cmp, label %if.then, label %if.end, !dbg !500

if.then:                                          ; preds = %entry
  %3 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !501
  %4 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !503
  %5 = load i32, i32* %index, align 4, !dbg !504
  call void @enter_s2idle_proper(%struct.cpuidle_driver* %3, %struct.cpuidle_device* %4, i32 %5) #8, !dbg !505
  br label %do.body, !dbg !506

do.body:                                          ; preds = %if.then
  call void @arch_local_irq_enable() #8, !dbg !507
  br label %do.end, !dbg !507

do.end:                                           ; preds = %do.body
  br label %if.end, !dbg !509

if.end:                                           ; preds = %do.end, %entry
  %6 = load i32, i32* %index, align 4, !dbg !510
  ret i32 %6, !dbg !511
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enter_s2idle_proper(%struct.cpuidle_driver* %drv, %struct.cpuidle_device* %dev, i32 %index) #0 !dbg !512 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !515, metadata !DIExpression()), !dbg !520
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %index.addr = alloca i32, align 4
  %time_start = alloca i64, align 8
  %time_end = alloca i64, align 8
  %target_state = alloca %struct.cpuidle_state*, align 8
  %__ret_warn_on = alloca i32, align 4
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %tmp35 = alloca i64, align 8
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !526, metadata !DIExpression()), !dbg !527
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !528, metadata !DIExpression()), !dbg !529
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.declare(metadata i64* %time_start, metadata !532, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.declare(metadata i64* %time_end, metadata !534, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %target_state, metadata !536, metadata !DIExpression()), !dbg !537
  %0 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !538
  %states = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %0, i32 0, i32 3, !dbg !539
  %1 = load i32, i32* %index.addr, align 4, !dbg !540
  %idxprom = sext i32 %1 to i64, !dbg !538
  %arrayidx = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states, i64 0, i64 %idxprom, !dbg !538
  store %struct.cpuidle_state* %arrayidx, %struct.cpuidle_state** %target_state, align 8, !dbg !537
  %call = call i64 @local_clock() #8, !dbg !541
  %call1 = call i64 @ns_to_ktime(i64 %call) #8, !dbg !542
  store i64 %call1, i64* %time_start, align 8, !dbg !543
  call void @tick_freeze() #8, !dbg !544
  br label %do.body, !dbg !545

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !546

do.end:                                           ; preds = %do.body
  %2 = load %struct.cpuidle_state*, %struct.cpuidle_state** %target_state, align 8, !dbg !548
  %flags = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %2, i32 0, i32 4, !dbg !550
  %3 = load i32, i32* %flags, align 8, !dbg !550
  %conv = zext i32 %3 to i64, !dbg !548
  %and = and i64 %conv, 64, !dbg !551
  %tobool = icmp ne i64 %and, 0, !dbg !551
  br i1 %tobool, label %if.end, label %if.then, !dbg !552

if.then:                                          ; preds = %do.end
  call void @rcu_idle_enter() #8, !dbg !553
  br label %if.end, !dbg !553

if.end:                                           ; preds = %if.then, %do.end
  %4 = load %struct.cpuidle_state*, %struct.cpuidle_state** %target_state, align 8, !dbg !554
  %enter_s2idle = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %4, i32 0, i32 10, !dbg !555
  %5 = load i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)*, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)** %enter_s2idle, align 8, !dbg !555
  %6 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !556
  %7 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !557
  %8 = load i32, i32* %index.addr, align 4, !dbg !558
  %call2 = call i32 %5(%struct.cpuidle_device* %6, %struct.cpuidle_driver* %7, i32 %8) #8, !dbg !554
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !559, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !561, metadata !DIExpression()), !dbg !562
  br label %do.body3, !dbg !562

do.body3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !563, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !567, metadata !DIExpression()), !dbg !566
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !566
  %conv4 = zext i1 %cmp to i32, !dbg !566
  store i32 1, i32* %tmp, align 4, !dbg !566
  %9 = load i32, i32* %tmp, align 4, !dbg !566
  %call5 = call i64 @arch_local_save_flags() #8, !dbg !568
  store i64 %call5, i64* %_flags, align 8, !dbg !568
  br label %do.end6, !dbg !568

do.end6:                                          ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy8, metadata !569, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.declare(metadata i64* %__dummy29, metadata !572, metadata !DIExpression()), !dbg !571
  %cmp10 = icmp eq i64* %__dummy8, %__dummy29, !dbg !571
  %conv11 = zext i1 %cmp10 to i32, !dbg !571
  store i32 1, i32* %tmp12, align 4, !dbg !571
  %10 = load i32, i32* %tmp12, align 4, !dbg !571
  %11 = load i64, i64* %_flags, align 8, !dbg !573
  store i64 %11, i64* %flags.addr.i, align 8
  %12 = load i64, i64* %flags.addr.i, align 8, !dbg !574
  %and.i = and i64 %12, 512, !dbg !575
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !576
  %lnot.i = xor i1 %tobool.i, true, !dbg !576
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !576
  store i32 %lnot.ext.i, i32* %tmp13, align 4, !dbg !573
  %13 = load i32, i32* %tmp13, align 4, !dbg !573
  store i32 %13, i32* %tmp7, align 4, !dbg !568
  %14 = load i32, i32* %tmp7, align 4, !dbg !562
  %tobool15 = icmp ne i32 %14, 0, !dbg !560
  %lnot = xor i1 %tobool15, true, !dbg !560
  %lnot16 = xor i1 %lnot, true, !dbg !560
  %lnot17 = xor i1 %lnot16, true, !dbg !560
  %lnot.ext = zext i1 %lnot17 to i32, !dbg !560
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !560
  %15 = load i32, i32* %__ret_warn_on, align 4, !dbg !577
  %tobool18 = icmp ne i32 %15, 0, !dbg !577
  %lnot19 = xor i1 %tobool18, true, !dbg !577
  %lnot21 = xor i1 %lnot19, true, !dbg !577
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !577
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !577
  %tobool24 = icmp ne i64 %conv23, 0, !dbg !577
  br i1 %tobool24, label %if.then25, label %if.end34, !dbg !560

if.then25:                                        ; preds = %do.end6
  br label %do.body26, !dbg !577

do.body26:                                        ; preds = %if.then25
  br label %do.body27, !dbg !579

do.body27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !581

do.end28:                                         ; preds = %do.body27
  br label %do.body29, !dbg !579

do.body29:                                        ; preds = %do.end28
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 155, i32 2307, i64 12) #6, !dbg !583, !srcloc !585
  br label %do.end30, !dbg !583

do.end30:                                         ; preds = %do.body29
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 308) #6, !dbg !586, !srcloc !588
  br label %do.body31, !dbg !579

do.body31:                                        ; preds = %do.end30
  br label %do.end32, !dbg !589

do.end32:                                         ; preds = %do.body31
  br label %do.end33, !dbg !579

do.end33:                                         ; preds = %do.end32
  br label %if.end34, !dbg !579

if.end34:                                         ; preds = %do.end33, %do.end6
  %16 = load i32, i32* %__ret_warn_on, align 4, !dbg !560
  %tobool36 = icmp ne i32 %16, 0, !dbg !560
  %lnot37 = xor i1 %tobool36, true, !dbg !560
  %lnot39 = xor i1 %lnot37, true, !dbg !560
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !560
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !560
  store i64 %conv41, i64* %tmp35, align 8, !dbg !577
  %17 = load i64, i64* %tmp35, align 8, !dbg !560
  %tobool42 = icmp ne i64 %17, 0, !dbg !591
  br i1 %tobool42, label %if.then43, label %if.end46, !dbg !592

if.then43:                                        ; preds = %if.end34
  br label %do.body44, !dbg !593

do.body44:                                        ; preds = %if.then43
  call void @arch_local_irq_disable() #8, !dbg !594
  br label %do.end45, !dbg !594

do.end45:                                         ; preds = %do.body44
  br label %if.end46, !dbg !594

if.end46:                                         ; preds = %do.end45, %if.end34
  %18 = load %struct.cpuidle_state*, %struct.cpuidle_state** %target_state, align 8, !dbg !596
  %flags47 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %18, i32 0, i32 4, !dbg !598
  %19 = load i32, i32* %flags47, align 8, !dbg !598
  %conv48 = zext i32 %19 to i64, !dbg !596
  %and49 = and i64 %conv48, 64, !dbg !599
  %tobool50 = icmp ne i64 %and49, 0, !dbg !599
  br i1 %tobool50, label %if.end52, label %if.then51, !dbg !600

if.then51:                                        ; preds = %if.end46
  call void @rcu_idle_exit() #8, !dbg !601
  br label %if.end52, !dbg !601

if.end52:                                         ; preds = %if.then51, %if.end46
  call void @tick_unfreeze() #8, !dbg !602
  br label %do.body53, !dbg !603

do.body53:                                        ; preds = %if.end52
  br label %do.end54, !dbg !604

do.end54:                                         ; preds = %do.body53
  %call55 = call i64 @local_clock() #8, !dbg !606
  %call56 = call i64 @ns_to_ktime(i64 %call55) #8, !dbg !607
  store i64 %call56, i64* %time_end, align 8, !dbg !608
  %20 = load i64, i64* %time_end, align 8, !dbg !609
  %21 = load i64, i64* %time_start, align 8, !dbg !610
  %call57 = call i64 @ktime_us_delta(i64 %20, i64 %21) #8, !dbg !611
  %22 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !612
  %states_usage = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %22, i32 0, i32 7, !dbg !613
  %23 = load i32, i32* %index.addr, align 4, !dbg !614
  %idxprom58 = sext i32 %23 to i64, !dbg !612
  %arrayidx59 = getelementptr [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_usage]* %states_usage, i64 0, i64 %idxprom58, !dbg !612
  %s2idle_time = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %arrayidx59, i32 0, i32 7, !dbg !615
  %24 = load i64, i64* %s2idle_time, align 8, !dbg !616
  %add = add i64 %24, %call57, !dbg !616
  store i64 %add, i64* %s2idle_time, align 8, !dbg !616
  %25 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !617
  %states_usage60 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %25, i32 0, i32 7, !dbg !618
  %26 = load i32, i32* %index.addr, align 4, !dbg !619
  %idxprom61 = sext i32 %26 to i64, !dbg !617
  %arrayidx62 = getelementptr [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_usage]* %states_usage60, i64 0, i64 %idxprom61, !dbg !617
  %s2idle_usage = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %arrayidx62, i32 0, i32 6, !dbg !620
  %27 = load i64, i64* %s2idle_usage, align 8, !dbg !621
  %inc = add i64 %27, 1, !dbg !621
  store i64 %inc, i64* %s2idle_usage, align 8, !dbg !621
  ret void, !dbg !622
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !623 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !625, metadata !DIExpression()), !dbg !627
  %0 = load i64, i64* %__edi, align 8, !dbg !627
  store i64 %0, i64* %__edi, align 8, !dbg !627
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !628, metadata !DIExpression()), !dbg !627
  %1 = load i64, i64* %__esi, align 8, !dbg !627
  store i64 %1, i64* %__esi, align 8, !dbg !627
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !629, metadata !DIExpression()), !dbg !627
  %2 = load i64, i64* %__edx, align 8, !dbg !627
  store i64 %2, i64* %__edx, align 8, !dbg !627
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !630, metadata !DIExpression()), !dbg !627
  %3 = load i64, i64* %__ecx, align 8, !dbg !627
  store i64 %3, i64* %__ecx, align 8, !dbg !627
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !631, metadata !DIExpression()), !dbg !627
  %4 = load i64, i64* %__eax, align 8, !dbg !627
  store i64 %4, i64* %__eax, align 8, !dbg !627
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !627
  %6 = call i64 @llvm.read_register.i64(metadata !214), !dbg !627
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #6, !dbg !627, !srcloc !632
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !627
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !627
  store i64 %asmresult, i64* %__eax, align 8, !dbg !627
  call void @llvm.write_register.i64(metadata !214, i64 %asmresult1), !dbg !627
  ret void, !dbg !633
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cpuidle_enter_state(%struct.cpuidle_device* %dev, %struct.cpuidle_driver* %drv, i32 %index) #0 !dbg !634 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !515, metadata !DIExpression()), !dbg !635
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %index.addr = alloca i32, align 4
  %entered_state = alloca i32, align 4
  %target_state = alloca %struct.cpuidle_state*, align 8
  %broadcast = alloca i8, align 1
  %time_start = alloca i64, align 8
  %time_end = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp46 = alloca i32, align 4
  %__dummy47 = alloca i64, align 8
  %__dummy248 = alloca i64, align 8
  %tmp51 = alloca i32, align 4
  %tmp52 = alloca i32, align 4
  %tmp75 = alloca i64, align 8
  %diff = alloca i64, align 8
  %delay = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !643, metadata !DIExpression()), !dbg !644
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !645, metadata !DIExpression()), !dbg !646
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !647, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.declare(metadata i32* %entered_state, metadata !649, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %target_state, metadata !651, metadata !DIExpression()), !dbg !652
  %0 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !653
  %states = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %0, i32 0, i32 3, !dbg !654
  %1 = load i32, i32* %index.addr, align 4, !dbg !655
  %idxprom = sext i32 %1 to i64, !dbg !653
  %arrayidx = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states, i64 0, i64 %idxprom, !dbg !653
  store %struct.cpuidle_state* %arrayidx, %struct.cpuidle_state** %target_state, align 8, !dbg !652
  call void @llvm.dbg.declare(metadata i8* %broadcast, metadata !656, metadata !DIExpression()), !dbg !657
  %2 = load %struct.cpuidle_state*, %struct.cpuidle_state** %target_state, align 8, !dbg !658
  %flags = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %2, i32 0, i32 4, !dbg !659
  %3 = load i32, i32* %flags, align 8, !dbg !659
  %conv = zext i32 %3 to i64, !dbg !658
  %and = and i64 %conv, 4, !dbg !660
  %tobool = icmp ne i64 %and, 0, !dbg !661
  %lnot = xor i1 %tobool, true, !dbg !661
  %lnot1 = xor i1 %lnot, true, !dbg !662
  %frombool = zext i1 %lnot1 to i8, !dbg !657
  store i8 %frombool, i8* %broadcast, align 1, !dbg !657
  call void @llvm.dbg.declare(metadata i64* %time_start, metadata !663, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.declare(metadata i64* %time_end, metadata !665, metadata !DIExpression()), !dbg !666
  %4 = load i8, i8* %broadcast, align 1, !dbg !667
  %tobool2 = trunc i8 %4 to i1, !dbg !667
  br i1 %tobool2, label %land.lhs.true, label %if.end11, !dbg !669

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @tick_broadcast_enter() #8, !dbg !670
  %tobool4 = icmp ne i32 %call, 0, !dbg !670
  br i1 %tobool4, label %if.then, label %if.end11, !dbg !671

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !672
  %6 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !674
  %7 = load %struct.cpuidle_state*, %struct.cpuidle_state** %target_state, align 8, !dbg !675
  %exit_latency_ns = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %7, i32 0, i32 2, !dbg !676
  %8 = load i64, i64* %exit_latency_ns, align 8, !dbg !676
  %call5 = call i32 @find_deepest_state(%struct.cpuidle_driver* %5, %struct.cpuidle_device* %6, i64 %8, i32 4, i1 zeroext false) #8, !dbg !677
  store i32 %call5, i32* %index.addr, align 4, !dbg !678
  %9 = load i32, i32* %index.addr, align 4, !dbg !679
  %cmp = icmp slt i32 %9, 0, !dbg !681
  br i1 %cmp, label %if.then7, label %if.end, !dbg !682

if.then7:                                         ; preds = %if.then
  call void @default_idle_call() #8, !dbg !683
  store i32 -16, i32* %retval, align 4, !dbg !685
  br label %return, !dbg !685

if.end:                                           ; preds = %if.then
  %10 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !686
  %states8 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %10, i32 0, i32 3, !dbg !687
  %11 = load i32, i32* %index.addr, align 4, !dbg !688
  %idxprom9 = sext i32 %11 to i64, !dbg !686
  %arrayidx10 = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states8, i64 0, i64 %idxprom9, !dbg !686
  store %struct.cpuidle_state* %arrayidx10, %struct.cpuidle_state** %target_state, align 8, !dbg !689
  store i8 0, i8* %broadcast, align 1, !dbg !690
  br label %if.end11, !dbg !691

if.end11:                                         ; preds = %if.end, %land.lhs.true, %entry
  %12 = load %struct.cpuidle_state*, %struct.cpuidle_state** %target_state, align 8, !dbg !692
  %flags12 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %12, i32 0, i32 4, !dbg !694
  %13 = load i32, i32* %flags12, align 8, !dbg !694
  %conv13 = zext i32 %13 to i64, !dbg !692
  %and14 = and i64 %conv13, 32, !dbg !695
  %tobool15 = icmp ne i64 %and14, 0, !dbg !695
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !696

if.then16:                                        ; preds = %if.end11
  %14 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !697
  %cpu = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %14, i32 0, i32 1, !dbg !698
  %15 = load i32, i32* %cpu, align 4, !dbg !698
  call void @leave_mm(i32 %15) #8, !dbg !699
  br label %if.end17, !dbg !699

if.end17:                                         ; preds = %if.then16, %if.end11
  %16 = load %struct.cpuidle_state*, %struct.cpuidle_state** %target_state, align 8, !dbg !700
  call void @sched_idle_set_state(%struct.cpuidle_state* %16) #8, !dbg !701
  %17 = load i32, i32* %index.addr, align 4, !dbg !702
  %18 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !703
  %cpu18 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %18, i32 0, i32 1, !dbg !704
  %19 = load i32, i32* %cpu18, align 4, !dbg !704
  call void @trace_cpu_idle(i32 %17, i32 %19) #8, !dbg !705
  %call19 = call i64 @local_clock() #8, !dbg !706
  %call20 = call i64 @ns_to_ktime(i64 %call19) #8, !dbg !707
  store i64 %call20, i64* %time_start, align 8, !dbg !708
  br label %do.body, !dbg !709

do.body:                                          ; preds = %if.end17
  br label %do.end, !dbg !710

do.end:                                           ; preds = %do.body
  %20 = load %struct.cpuidle_state*, %struct.cpuidle_state** %target_state, align 8, !dbg !712
  %flags21 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %20, i32 0, i32 4, !dbg !714
  %21 = load i32, i32* %flags21, align 8, !dbg !714
  %conv22 = zext i32 %21 to i64, !dbg !712
  %and23 = and i64 %conv22, 64, !dbg !715
  %tobool24 = icmp ne i64 %and23, 0, !dbg !715
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !716

if.then25:                                        ; preds = %do.end
  call void @rcu_idle_enter() #8, !dbg !717
  br label %if.end26, !dbg !717

if.end26:                                         ; preds = %if.then25, %do.end
  %22 = load %struct.cpuidle_state*, %struct.cpuidle_state** %target_state, align 8, !dbg !718
  %enter = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %22, i32 0, i32 8, !dbg !719
  %23 = load i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)*, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)** %enter, align 8, !dbg !719
  %24 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !720
  %25 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !721
  %26 = load i32, i32* %index.addr, align 4, !dbg !722
  %call27 = call i32 %23(%struct.cpuidle_device* %24, %struct.cpuidle_driver* %25, i32 %26) #8, !dbg !718
  store i32 %call27, i32* %entered_state, align 4, !dbg !723
  %27 = load %struct.cpuidle_state*, %struct.cpuidle_state** %target_state, align 8, !dbg !724
  %flags28 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %27, i32 0, i32 4, !dbg !726
  %28 = load i32, i32* %flags28, align 8, !dbg !726
  %conv29 = zext i32 %28 to i64, !dbg !724
  %and30 = and i64 %conv29, 64, !dbg !727
  %tobool31 = icmp ne i64 %and30, 0, !dbg !727
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !728

if.then32:                                        ; preds = %if.end26
  call void @rcu_idle_exit() #8, !dbg !729
  br label %if.end33, !dbg !729

if.end33:                                         ; preds = %if.then32, %if.end26
  br label %do.body34, !dbg !730

do.body34:                                        ; preds = %if.end33
  br label %do.end35, !dbg !731

do.end35:                                         ; preds = %do.body34
  call void @sched_clock_idle_wakeup_event() #8, !dbg !733
  %call36 = call i64 @local_clock() #8, !dbg !734
  %call37 = call i64 @ns_to_ktime(i64 %call36) #8, !dbg !735
  store i64 %call37, i64* %time_end, align 8, !dbg !736
  %29 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !737
  %cpu38 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %29, i32 0, i32 1, !dbg !738
  %30 = load i32, i32* %cpu38, align 4, !dbg !738
  call void @trace_cpu_idle(i32 -1, i32 %30) #8, !dbg !739
  call void @sched_idle_set_state(%struct.cpuidle_state* null) #8, !dbg !740
  %31 = load i8, i8* %broadcast, align 1, !dbg !741
  %tobool39 = trunc i8 %31 to i1, !dbg !741
  br i1 %tobool39, label %if.then40, label %if.end87, !dbg !742

if.then40:                                        ; preds = %do.end35
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !743, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !745, metadata !DIExpression()), !dbg !746
  br label %do.body41, !dbg !746

do.body41:                                        ; preds = %if.then40
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !747, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !751, metadata !DIExpression()), !dbg !750
  %cmp42 = icmp eq i64* %__dummy, %__dummy2, !dbg !750
  %conv43 = zext i1 %cmp42 to i32, !dbg !750
  store i32 1, i32* %tmp, align 4, !dbg !750
  %32 = load i32, i32* %tmp, align 4, !dbg !750
  %call44 = call i64 @arch_local_save_flags() #8, !dbg !752
  store i64 %call44, i64* %_flags, align 8, !dbg !752
  br label %do.end45, !dbg !752

do.end45:                                         ; preds = %do.body41
  call void @llvm.dbg.declare(metadata i64* %__dummy47, metadata !753, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.declare(metadata i64* %__dummy248, metadata !756, metadata !DIExpression()), !dbg !755
  %cmp49 = icmp eq i64* %__dummy47, %__dummy248, !dbg !755
  %conv50 = zext i1 %cmp49 to i32, !dbg !755
  store i32 1, i32* %tmp51, align 4, !dbg !755
  %33 = load i32, i32* %tmp51, align 4, !dbg !755
  %34 = load i64, i64* %_flags, align 8, !dbg !757
  store i64 %34, i64* %flags.addr.i, align 8
  %35 = load i64, i64* %flags.addr.i, align 8, !dbg !758
  %and.i = and i64 %35, 512, !dbg !759
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !760
  %lnot.i = xor i1 %tobool.i, true, !dbg !760
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !760
  store i32 %lnot.ext.i, i32* %tmp52, align 4, !dbg !757
  %36 = load i32, i32* %tmp52, align 4, !dbg !757
  store i32 %36, i32* %tmp46, align 4, !dbg !752
  %37 = load i32, i32* %tmp46, align 4, !dbg !746
  %tobool54 = icmp ne i32 %37, 0, !dbg !744
  %lnot55 = xor i1 %tobool54, true, !dbg !744
  %lnot56 = xor i1 %lnot55, true, !dbg !744
  %lnot57 = xor i1 %lnot56, true, !dbg !744
  %lnot.ext = zext i1 %lnot57 to i32, !dbg !744
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !744
  %38 = load i32, i32* %__ret_warn_on, align 4, !dbg !761
  %tobool58 = icmp ne i32 %38, 0, !dbg !761
  %lnot59 = xor i1 %tobool58, true, !dbg !761
  %lnot61 = xor i1 %lnot59, true, !dbg !761
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !761
  %conv63 = sext i32 %lnot.ext62 to i64, !dbg !761
  %tobool64 = icmp ne i64 %conv63, 0, !dbg !761
  br i1 %tobool64, label %if.then65, label %if.end74, !dbg !744

if.then65:                                        ; preds = %do.end45
  br label %do.body66, !dbg !761

do.body66:                                        ; preds = %if.then65
  br label %do.body67, !dbg !763

do.body67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !765

do.end68:                                         ; preds = %do.body67
  br label %do.body69, !dbg !763

do.body69:                                        ; preds = %do.end68
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 250, i32 2307, i64 12) #6, !dbg !767, !srcloc !769
  br label %do.end70, !dbg !767

do.end70:                                         ; preds = %do.body69
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 309) #6, !dbg !770, !srcloc !772
  br label %do.body71, !dbg !763

do.body71:                                        ; preds = %do.end70
  br label %do.end72, !dbg !773

do.end72:                                         ; preds = %do.body71
  br label %do.end73, !dbg !763

do.end73:                                         ; preds = %do.end72
  br label %if.end74, !dbg !763

if.end74:                                         ; preds = %do.end73, %do.end45
  %39 = load i32, i32* %__ret_warn_on, align 4, !dbg !744
  %tobool76 = icmp ne i32 %39, 0, !dbg !744
  %lnot77 = xor i1 %tobool76, true, !dbg !744
  %lnot79 = xor i1 %lnot77, true, !dbg !744
  %lnot.ext80 = zext i1 %lnot79 to i32, !dbg !744
  %conv81 = sext i32 %lnot.ext80 to i64, !dbg !744
  store i64 %conv81, i64* %tmp75, align 8, !dbg !761
  %40 = load i64, i64* %tmp75, align 8, !dbg !744
  %tobool82 = icmp ne i64 %40, 0, !dbg !775
  br i1 %tobool82, label %if.then83, label %if.end86, !dbg !776

if.then83:                                        ; preds = %if.end74
  br label %do.body84, !dbg !777

do.body84:                                        ; preds = %if.then83
  call void @arch_local_irq_disable() #8, !dbg !778
  br label %do.end85, !dbg !778

do.end85:                                         ; preds = %do.body84
  br label %if.end86, !dbg !778

if.end86:                                         ; preds = %do.end85, %if.end74
  call void @tick_broadcast_exit() #8, !dbg !780
  br label %if.end87, !dbg !781

if.end87:                                         ; preds = %if.end86, %do.end35
  %41 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !782
  %42 = load i32, i32* %index.addr, align 4, !dbg !784
  %call88 = call zeroext i1 @cpuidle_state_is_coupled(%struct.cpuidle_driver* %41, i32 %42) #8, !dbg !785
  br i1 %call88, label %if.end92, label %if.then89, !dbg !786

if.then89:                                        ; preds = %if.end87
  br label %do.body90, !dbg !787

do.body90:                                        ; preds = %if.then89
  call void @arch_local_irq_enable() #8, !dbg !788
  br label %do.end91, !dbg !788

do.end91:                                         ; preds = %do.body90
  br label %if.end92, !dbg !788

if.end92:                                         ; preds = %do.end91, %if.end87
  %43 = load i32, i32* %entered_state, align 4, !dbg !790
  %cmp93 = icmp sge i32 %43, 0, !dbg !792
  br i1 %cmp93, label %if.then95, label %if.else157, !dbg !793

if.then95:                                        ; preds = %if.end92
  call void @llvm.dbg.declare(metadata i64* %diff, metadata !794, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.declare(metadata i64* %delay, metadata !797, metadata !DIExpression()), !dbg !798
  %44 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !799
  %states96 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %44, i32 0, i32 3, !dbg !800
  %45 = load i32, i32* %entered_state, align 4, !dbg !801
  %idxprom97 = sext i32 %45 to i64, !dbg !799
  %arrayidx98 = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states96, i64 0, i64 %idxprom97, !dbg !799
  %exit_latency_ns99 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %arrayidx98, i32 0, i32 2, !dbg !802
  %46 = load i64, i64* %exit_latency_ns99, align 8, !dbg !802
  store i64 %46, i64* %delay, align 8, !dbg !798
  call void @llvm.dbg.declare(metadata i32* %i, metadata !803, metadata !DIExpression()), !dbg !804
  %47 = load i64, i64* %time_end, align 8, !dbg !805
  %48 = load i64, i64* %time_start, align 8, !dbg !805
  %sub = sub i64 %47, %48, !dbg !805
  store i64 %sub, i64* %diff, align 8, !dbg !806
  %49 = load i64, i64* %diff, align 8, !dbg !807
  %50 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !808
  %last_residency_ns = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %50, i32 0, i32 4, !dbg !809
  store i64 %49, i64* %last_residency_ns, align 8, !dbg !810
  %51 = load i64, i64* %diff, align 8, !dbg !811
  %52 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !812
  %states_usage = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %52, i32 0, i32 7, !dbg !813
  %53 = load i32, i32* %entered_state, align 4, !dbg !814
  %idxprom100 = sext i32 %53 to i64, !dbg !812
  %arrayidx101 = getelementptr [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_usage]* %states_usage, i64 0, i64 %idxprom100, !dbg !812
  %time_ns = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %arrayidx101, i32 0, i32 2, !dbg !815
  %54 = load i64, i64* %time_ns, align 8, !dbg !816
  %add = add i64 %54, %51, !dbg !816
  store i64 %add, i64* %time_ns, align 8, !dbg !816
  %55 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !817
  %states_usage102 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %55, i32 0, i32 7, !dbg !818
  %56 = load i32, i32* %entered_state, align 4, !dbg !819
  %idxprom103 = sext i32 %56 to i64, !dbg !817
  %arrayidx104 = getelementptr [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_usage]* %states_usage102, i64 0, i64 %idxprom103, !dbg !817
  %usage = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %arrayidx104, i32 0, i32 1, !dbg !820
  %57 = load i64, i64* %usage, align 8, !dbg !821
  %inc = add i64 %57, 1, !dbg !821
  store i64 %inc, i64* %usage, align 8, !dbg !821
  %58 = load i64, i64* %diff, align 8, !dbg !822
  %59 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !824
  %states105 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %59, i32 0, i32 3, !dbg !825
  %60 = load i32, i32* %entered_state, align 4, !dbg !826
  %idxprom106 = sext i32 %60 to i64, !dbg !824
  %arrayidx107 = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states105, i64 0, i64 %idxprom106, !dbg !824
  %target_residency_ns = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %arrayidx107, i32 0, i32 3, !dbg !827
  %61 = load i64, i64* %target_residency_ns, align 8, !dbg !827
  %cmp108 = icmp ult i64 %58, %61, !dbg !828
  br i1 %cmp108, label %if.then110, label %if.else, !dbg !829

if.then110:                                       ; preds = %if.then95
  %62 = load i32, i32* %entered_state, align 4, !dbg !830
  %sub111 = sub i32 %62, 1, !dbg !833
  store i32 %sub111, i32* %i, align 4, !dbg !834
  br label %for.cond, !dbg !835

for.cond:                                         ; preds = %for.inc, %if.then110
  %63 = load i32, i32* %i, align 4, !dbg !836
  %cmp112 = icmp sge i32 %63, 0, !dbg !838
  br i1 %cmp112, label %for.body, label %for.end, !dbg !839

for.body:                                         ; preds = %for.cond
  %64 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !840
  %states_usage114 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %64, i32 0, i32 7, !dbg !843
  %65 = load i32, i32* %i, align 4, !dbg !844
  %idxprom115 = sext i32 %65 to i64, !dbg !840
  %arrayidx116 = getelementptr [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_usage]* %states_usage114, i64 0, i64 %idxprom115, !dbg !840
  %disable = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %arrayidx116, i32 0, i32 0, !dbg !845
  %66 = load i64, i64* %disable, align 8, !dbg !845
  %tobool117 = icmp ne i64 %66, 0, !dbg !840
  br i1 %tobool117, label %if.then118, label %if.end119, !dbg !846

if.then118:                                       ; preds = %for.body
  br label %for.inc, !dbg !847

if.end119:                                        ; preds = %for.body
  %67 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !848
  %states_usage120 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %67, i32 0, i32 7, !dbg !849
  %68 = load i32, i32* %entered_state, align 4, !dbg !850
  %idxprom121 = sext i32 %68 to i64, !dbg !848
  %arrayidx122 = getelementptr [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_usage]* %states_usage120, i64 0, i64 %idxprom121, !dbg !848
  %above = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %arrayidx122, i32 0, i32 3, !dbg !851
  %69 = load i64, i64* %above, align 8, !dbg !852
  %inc123 = add i64 %69, 1, !dbg !852
  store i64 %inc123, i64* %above, align 8, !dbg !852
  br label %for.end, !dbg !853

for.inc:                                          ; preds = %if.then118
  %70 = load i32, i32* %i, align 4, !dbg !854
  %dec = add i32 %70, -1, !dbg !854
  store i32 %dec, i32* %i, align 4, !dbg !854
  br label %for.cond, !dbg !855, !llvm.loop !856

for.end:                                          ; preds = %if.end119, %for.cond
  br label %if.end156, !dbg !858

if.else:                                          ; preds = %if.then95
  %71 = load i64, i64* %diff, align 8, !dbg !859
  %72 = load i64, i64* %delay, align 8, !dbg !861
  %cmp124 = icmp sgt i64 %71, %72, !dbg !862
  br i1 %cmp124, label %if.then126, label %if.end155, !dbg !863

if.then126:                                       ; preds = %if.else
  %73 = load i32, i32* %entered_state, align 4, !dbg !864
  %add127 = add i32 %73, 1, !dbg !867
  store i32 %add127, i32* %i, align 4, !dbg !868
  br label %for.cond128, !dbg !869

for.cond128:                                      ; preds = %for.inc152, %if.then126
  %74 = load i32, i32* %i, align 4, !dbg !870
  %75 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !872
  %state_count = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %75, i32 0, i32 4, !dbg !873
  %76 = load i32, i32* %state_count, align 8, !dbg !873
  %cmp129 = icmp slt i32 %74, %76, !dbg !874
  br i1 %cmp129, label %for.body131, label %for.end154, !dbg !875

for.body131:                                      ; preds = %for.cond128
  %77 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !876
  %states_usage132 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %77, i32 0, i32 7, !dbg !879
  %78 = load i32, i32* %i, align 4, !dbg !880
  %idxprom133 = sext i32 %78 to i64, !dbg !876
  %arrayidx134 = getelementptr [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_usage]* %states_usage132, i64 0, i64 %idxprom133, !dbg !876
  %disable135 = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %arrayidx134, i32 0, i32 0, !dbg !881
  %79 = load i64, i64* %disable135, align 8, !dbg !881
  %tobool136 = icmp ne i64 %79, 0, !dbg !876
  br i1 %tobool136, label %if.then137, label %if.end138, !dbg !882

if.then137:                                       ; preds = %for.body131
  br label %for.inc152, !dbg !883

if.end138:                                        ; preds = %for.body131
  %80 = load i64, i64* %diff, align 8, !dbg !884
  %81 = load i64, i64* %delay, align 8, !dbg !886
  %sub139 = sub i64 %80, %81, !dbg !887
  %82 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !888
  %states140 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %82, i32 0, i32 3, !dbg !889
  %83 = load i32, i32* %i, align 4, !dbg !890
  %idxprom141 = sext i32 %83 to i64, !dbg !888
  %arrayidx142 = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states140, i64 0, i64 %idxprom141, !dbg !888
  %target_residency_ns143 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %arrayidx142, i32 0, i32 3, !dbg !891
  %84 = load i64, i64* %target_residency_ns143, align 8, !dbg !891
  %cmp144 = icmp uge i64 %sub139, %84, !dbg !892
  br i1 %cmp144, label %if.then146, label %if.end151, !dbg !893

if.then146:                                       ; preds = %if.end138
  %85 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !894
  %states_usage147 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %85, i32 0, i32 7, !dbg !895
  %86 = load i32, i32* %entered_state, align 4, !dbg !896
  %idxprom148 = sext i32 %86 to i64, !dbg !894
  %arrayidx149 = getelementptr [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_usage]* %states_usage147, i64 0, i64 %idxprom148, !dbg !894
  %below = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %arrayidx149, i32 0, i32 4, !dbg !897
  %87 = load i64, i64* %below, align 8, !dbg !898
  %inc150 = add i64 %87, 1, !dbg !898
  store i64 %inc150, i64* %below, align 8, !dbg !898
  br label %if.end151, !dbg !894

if.end151:                                        ; preds = %if.then146, %if.end138
  br label %for.end154, !dbg !899

for.inc152:                                       ; preds = %if.then137
  %88 = load i32, i32* %i, align 4, !dbg !900
  %inc153 = add i32 %88, 1, !dbg !900
  store i32 %inc153, i32* %i, align 4, !dbg !900
  br label %for.cond128, !dbg !901, !llvm.loop !902

for.end154:                                       ; preds = %if.end151, %for.cond128
  br label %if.end155, !dbg !904

if.end155:                                        ; preds = %for.end154, %if.else
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %for.end
  br label %if.end163, !dbg !905

if.else157:                                       ; preds = %if.end92
  %89 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !906
  %last_residency_ns158 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %89, i32 0, i32 4, !dbg !908
  store i64 0, i64* %last_residency_ns158, align 8, !dbg !909
  %90 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !910
  %states_usage159 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %90, i32 0, i32 7, !dbg !911
  %91 = load i32, i32* %index.addr, align 4, !dbg !912
  %idxprom160 = sext i32 %91 to i64, !dbg !910
  %arrayidx161 = getelementptr [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_usage]* %states_usage159, i64 0, i64 %idxprom160, !dbg !910
  %rejected = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %arrayidx161, i32 0, i32 5, !dbg !913
  %92 = load i64, i64* %rejected, align 8, !dbg !914
  %inc162 = add i64 %92, 1, !dbg !914
  store i64 %inc162, i64* %rejected, align 8, !dbg !914
  br label %if.end163

if.end163:                                        ; preds = %if.else157, %if.end156
  %93 = load i32, i32* %entered_state, align 4, !dbg !915
  store i32 %93, i32* %retval, align 4, !dbg !916
  br label %return, !dbg !916

return:                                           ; preds = %if.end163, %if.then7
  %94 = load i32, i32* %retval, align 4, !dbg !917
  ret i32 %94, !dbg !917
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tick_broadcast_enter() #0 !dbg !918 {
entry:
  %call = call i32 @tick_broadcast_oneshot_control(i32 1) #8, !dbg !919
  ret i32 %call, !dbg !920
}

; Function Attrs: noredzone
declare dso_local void @default_idle_call() #2

; Function Attrs: noredzone
declare dso_local void @leave_mm(i32) #2

; Function Attrs: noredzone
declare dso_local void @sched_idle_set_state(%struct.cpuidle_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_cpu_idle(i32 %state, i32 %cpu_id) #0 !dbg !921 {
entry:
  %state.addr = alloca i32, align 4
  %cpu_id.addr = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !925, metadata !DIExpression()), !dbg !926
  store i32 %cpu_id, i32* %cpu_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu_id.addr, metadata !927, metadata !DIExpression()), !dbg !926
  ret void, !dbg !926
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ns_to_ktime(i64 %ns) #0 !dbg !928 {
entry:
  %ns.addr = alloca i64, align 8
  store i64 %ns, i64* %ns.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ns.addr, metadata !931, metadata !DIExpression()), !dbg !932
  %0 = load i64, i64* %ns.addr, align 8, !dbg !933
  ret i64 %0, !dbg !934
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @local_clock() #0 !dbg !935 {
entry:
  %call = call i64 @sched_clock_cpu(i32 0) #8, !dbg !939
  ret i64 %call, !dbg !940
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rcu_idle_enter() #0 !dbg !941 {
entry:
  ret void, !dbg !943
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rcu_idle_exit() #0 !dbg !944 {
entry:
  ret void, !dbg !945
}

; Function Attrs: noredzone
declare dso_local void @sched_clock_idle_wakeup_event() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !946 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !949, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !952, metadata !DIExpression()), !dbg !951
  %0 = load i64, i64* %__edi, align 8, !dbg !951
  store i64 %0, i64* %__edi, align 8, !dbg !951
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !953, metadata !DIExpression()), !dbg !951
  %1 = load i64, i64* %__esi, align 8, !dbg !951
  store i64 %1, i64* %__esi, align 8, !dbg !951
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !954, metadata !DIExpression()), !dbg !951
  %2 = load i64, i64* %__edx, align 8, !dbg !951
  store i64 %2, i64* %__edx, align 8, !dbg !951
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !955, metadata !DIExpression()), !dbg !951
  %3 = load i64, i64* %__ecx, align 8, !dbg !951
  store i64 %3, i64* %__ecx, align 8, !dbg !951
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !956, metadata !DIExpression()), !dbg !951
  %4 = load i64, i64* %__eax, align 8, !dbg !951
  store i64 %4, i64* %__eax, align 8, !dbg !951
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !951
  %6 = call i64 @llvm.read_register.i64(metadata !214), !dbg !957
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #6, !dbg !957, !srcloc !960
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !957
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !957
  store i64 %asmresult, i64* %__eax, align 8, !dbg !957
  call void @llvm.write_register.i64(metadata !214, i64 %asmresult1), !dbg !957
  %8 = load i64, i64* %__eax, align 8, !dbg !957
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !961, metadata !DIExpression()), !dbg !963
  store i64 -1, i64* %__mask, align 8, !dbg !963
  %9 = load i64, i64* %__mask, align 8, !dbg !963
  store i64 %9, i64* %tmp, align 8, !dbg !963
  %10 = load i64, i64* %tmp, align 8, !dbg !963
  %and = and i64 %8, %10, !dbg !957
  store i64 %and, i64* %__ret, align 8, !dbg !957
  %11 = load i64, i64* %__ret, align 8, !dbg !951
  store i64 %11, i64* %tmp2, align 8, !dbg !964
  %12 = load i64, i64* %tmp2, align 8, !dbg !951
  ret i64 %12, !dbg !965
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !966 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !967, metadata !DIExpression()), !dbg !969
  %0 = load i64, i64* %__edi, align 8, !dbg !969
  store i64 %0, i64* %__edi, align 8, !dbg !969
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !970, metadata !DIExpression()), !dbg !969
  %1 = load i64, i64* %__esi, align 8, !dbg !969
  store i64 %1, i64* %__esi, align 8, !dbg !969
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !971, metadata !DIExpression()), !dbg !969
  %2 = load i64, i64* %__edx, align 8, !dbg !969
  store i64 %2, i64* %__edx, align 8, !dbg !969
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !972, metadata !DIExpression()), !dbg !969
  %3 = load i64, i64* %__ecx, align 8, !dbg !969
  store i64 %3, i64* %__ecx, align 8, !dbg !969
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !973, metadata !DIExpression()), !dbg !969
  %4 = load i64, i64* %__eax, align 8, !dbg !969
  store i64 %4, i64* %__eax, align 8, !dbg !969
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !969
  %6 = call i64 @llvm.read_register.i64(metadata !214), !dbg !969
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #6, !dbg !969, !srcloc !974
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !969
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !969
  store i64 %asmresult, i64* %__eax, align 8, !dbg !969
  call void @llvm.write_register.i64(metadata !214, i64 %asmresult1), !dbg !969
  ret void, !dbg !975
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tick_broadcast_exit() #0 !dbg !976 {
entry:
  %call = call i32 @tick_broadcast_oneshot_control(i32 0) #8, !dbg !977
  ret void, !dbg !978
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @cpuidle_state_is_coupled(%struct.cpuidle_driver* %drv, i32 %state) #0 !dbg !979 {
entry:
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %state.addr = alloca i32, align 4
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !983, metadata !DIExpression()), !dbg !984
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !985, metadata !DIExpression()), !dbg !986
  ret i1 false, !dbg !987
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cpuidle_select(%struct.cpuidle_driver* %drv, %struct.cpuidle_device* %dev, i8* %stop_tick) #0 !dbg !988 {
entry:
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %stop_tick.addr = alloca i8*, align 8
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !992, metadata !DIExpression()), !dbg !993
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !994, metadata !DIExpression()), !dbg !995
  store i8* %stop_tick, i8** %stop_tick.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %stop_tick.addr, metadata !996, metadata !DIExpression()), !dbg !997
  %0 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** @cpuidle_curr_governor, align 8, !dbg !998
  %select = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %0, i32 0, i32 5, !dbg !999
  %1 = load i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*, i8*)*, i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*, i8*)** %select, align 8, !dbg !999
  %2 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !1000
  %3 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1001
  %4 = load i8*, i8** %stop_tick.addr, align 8, !dbg !1002
  %call = call i32 %1(%struct.cpuidle_driver* %2, %struct.cpuidle_device* %3, i8* %4) #8, !dbg !998
  ret i32 %call, !dbg !1003
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cpuidle_enter(%struct.cpuidle_driver* %drv, %struct.cpuidle_device* %dev, i32 %index) #0 !dbg !1004 {
entry:
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %index.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !1007, metadata !DIExpression()), !dbg !1008
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !1009, metadata !DIExpression()), !dbg !1010
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !1011, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1013, metadata !DIExpression()), !dbg !1014
  store i32 0, i32* %ret, align 4, !dbg !1014
  br label %do.body, !dbg !1015

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1016

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1018

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1016

do.body2:                                         ; preds = %do.end
  %call = call i64 @tick_nohz_get_next_hrtimer() #8, !dbg !1020
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1020
  %next_hrtimer = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %0, i32 0, i32 2, !dbg !1020
  store volatile i64 %call, i64* %next_hrtimer, align 8, !dbg !1020
  br label %do.end3, !dbg !1020

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1016

do.end4:                                          ; preds = %do.end3
  %1 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !1022
  %2 = load i32, i32* %index.addr, align 4, !dbg !1024
  %call5 = call zeroext i1 @cpuidle_state_is_coupled(%struct.cpuidle_driver* %1, i32 %2) #8, !dbg !1025
  br i1 %call5, label %if.then, label %if.else, !dbg !1026

if.then:                                          ; preds = %do.end4
  %3 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1027
  %4 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !1028
  %5 = load i32, i32* %index.addr, align 4, !dbg !1029
  %call6 = call i32 @cpuidle_enter_state_coupled(%struct.cpuidle_device* %3, %struct.cpuidle_driver* %4, i32 %5) #8, !dbg !1030
  store i32 %call6, i32* %ret, align 4, !dbg !1031
  br label %if.end, !dbg !1032

if.else:                                          ; preds = %do.end4
  %6 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1033
  %7 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !1034
  %8 = load i32, i32* %index.addr, align 4, !dbg !1035
  %call7 = call i32 @cpuidle_enter_state(%struct.cpuidle_device* %6, %struct.cpuidle_driver* %7, i32 %8) #8, !dbg !1036
  store i32 %call7, i32* %ret, align 4, !dbg !1037
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body8, !dbg !1038

do.body8:                                         ; preds = %if.end
  br label %do.body9, !dbg !1039

do.body9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !1041

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !1039

do.body11:                                        ; preds = %do.end10
  %9 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1043
  %next_hrtimer12 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %9, i32 0, i32 2, !dbg !1043
  store volatile i64 0, i64* %next_hrtimer12, align 8, !dbg !1043
  br label %do.end13, !dbg !1043

do.end13:                                         ; preds = %do.body11
  br label %do.end14, !dbg !1039

do.end14:                                         ; preds = %do.end13
  %10 = load i32, i32* %ret, align 4, !dbg !1045
  ret i32 %10, !dbg !1046
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @tick_nohz_get_next_hrtimer() #0 !dbg !1047 {
entry:
  %call = call i64 @ktime_get() #8, !dbg !1050
  %add = add i64 %call, 4000000, !dbg !1050
  ret i64 %add, !dbg !1051
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpuidle_enter_state_coupled(%struct.cpuidle_device* %dev, %struct.cpuidle_driver* %drv, i32 %next_state) #0 !dbg !1052 {
entry:
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %next_state.addr = alloca i32, align 4
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !1053, metadata !DIExpression()), !dbg !1054
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !1055, metadata !DIExpression()), !dbg !1056
  store i32 %next_state, i32* %next_state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %next_state.addr, metadata !1057, metadata !DIExpression()), !dbg !1058
  ret i32 -1, !dbg !1059
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @cpuidle_reflect(%struct.cpuidle_device* %dev, i32 %index) #0 !dbg !1060 {
entry:
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %index.addr = alloca i32, align 4
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !1063, metadata !DIExpression()), !dbg !1064
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !1065, metadata !DIExpression()), !dbg !1066
  %0 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** @cpuidle_curr_governor, align 8, !dbg !1067
  %reflect = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %0, i32 0, i32 6, !dbg !1069
  %1 = load void (%struct.cpuidle_device*, i32)*, void (%struct.cpuidle_device*, i32)** %reflect, align 8, !dbg !1069
  %tobool = icmp ne void (%struct.cpuidle_device*, i32)* %1, null, !dbg !1067
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1070

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %index.addr, align 4, !dbg !1071
  %cmp = icmp sge i32 %2, 0, !dbg !1072
  br i1 %cmp, label %if.then, label %if.end, !dbg !1073

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** @cpuidle_curr_governor, align 8, !dbg !1074
  %reflect1 = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %3, i32 0, i32 6, !dbg !1075
  %4 = load void (%struct.cpuidle_device*, i32)*, void (%struct.cpuidle_device*, i32)** %reflect1, align 8, !dbg !1075
  %5 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1076
  %6 = load i32, i32* %index.addr, align 4, !dbg !1077
  call void %4(%struct.cpuidle_device* %5, i32 %6) #8, !dbg !1074
  br label %if.end, !dbg !1074

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !1078
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @cpuidle_poll_time(%struct.cpuidle_driver* %drv, %struct.cpuidle_device* %dev) #0 !dbg !1079 {
entry:
  %retval = alloca i64, align 8
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %i = alloca i32, align 4
  %limit_ns = alloca i64, align 8
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !1082, metadata !DIExpression()), !dbg !1083
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !1084, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1086, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.declare(metadata i64* %limit_ns, metadata !1088, metadata !DIExpression()), !dbg !1089
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1090
  %poll_limit_ns = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %0, i32 0, i32 5, !dbg !1092
  %1 = load i64, i64* %poll_limit_ns, align 8, !dbg !1092
  %tobool = icmp ne i64 %1, 0, !dbg !1090
  br i1 %tobool, label %if.then, label %if.end, !dbg !1093

if.then:                                          ; preds = %entry
  %2 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1094
  %poll_limit_ns1 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %2, i32 0, i32 5, !dbg !1095
  %3 = load i64, i64* %poll_limit_ns1, align 8, !dbg !1095
  store i64 %3, i64* %retval, align 8, !dbg !1096
  br label %return, !dbg !1096

if.end:                                           ; preds = %entry
  store i64 4000000, i64* %limit_ns, align 8, !dbg !1097
  store i32 1, i32* %i, align 4, !dbg !1098
  br label %for.cond, !dbg !1100

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4, !dbg !1101
  %5 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !1103
  %state_count = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %5, i32 0, i32 4, !dbg !1104
  %6 = load i32, i32* %state_count, align 8, !dbg !1104
  %cmp = icmp slt i32 %4, %6, !dbg !1105
  br i1 %cmp, label %for.body, label %for.end, !dbg !1106

for.body:                                         ; preds = %for.cond
  %7 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1107
  %states_usage = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %7, i32 0, i32 7, !dbg !1110
  %8 = load i32, i32* %i, align 4, !dbg !1111
  %idxprom = sext i32 %8 to i64, !dbg !1107
  %arrayidx = getelementptr [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_usage]* %states_usage, i64 0, i64 %idxprom, !dbg !1107
  %disable = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %arrayidx, i32 0, i32 0, !dbg !1112
  %9 = load i64, i64* %disable, align 8, !dbg !1112
  %tobool2 = icmp ne i64 %9, 0, !dbg !1107
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1113

if.then3:                                         ; preds = %for.body
  br label %for.inc, !dbg !1114

if.end4:                                          ; preds = %for.body
  %10 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !1115
  %states = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %10, i32 0, i32 3, !dbg !1116
  %11 = load i32, i32* %i, align 4, !dbg !1117
  %idxprom5 = sext i32 %11 to i64, !dbg !1115
  %arrayidx6 = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states, i64 0, i64 %idxprom5, !dbg !1115
  %target_residency_ns = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %arrayidx6, i32 0, i32 3, !dbg !1118
  %12 = load i64, i64* %target_residency_ns, align 8, !dbg !1118
  store i64 %12, i64* %limit_ns, align 8, !dbg !1119
  br label %for.end, !dbg !1120

for.inc:                                          ; preds = %if.then3
  %13 = load i32, i32* %i, align 4, !dbg !1121
  %inc = add i32 %13, 1, !dbg !1121
  store i32 %inc, i32* %i, align 4, !dbg !1121
  br label %for.cond, !dbg !1122, !llvm.loop !1123

for.end:                                          ; preds = %if.end4, %for.cond
  %14 = load i64, i64* %limit_ns, align 8, !dbg !1125
  %15 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1126
  %poll_limit_ns7 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %15, i32 0, i32 5, !dbg !1127
  store i64 %14, i64* %poll_limit_ns7, align 8, !dbg !1128
  %16 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1129
  %poll_limit_ns8 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %16, i32 0, i32 5, !dbg !1130
  %17 = load i64, i64* %poll_limit_ns8, align 8, !dbg !1130
  store i64 %17, i64* %retval, align 8, !dbg !1131
  br label %return, !dbg !1131

return:                                           ; preds = %for.end, %if.then
  %18 = load i64, i64* %retval, align 8, !dbg !1132
  ret i64 %18, !dbg !1132
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @cpuidle_install_idle_handler() #0 !dbg !1133 {
entry:
  %0 = load i32, i32* @enabled_devices, align 4, !dbg !1134
  %tobool = icmp ne i32 %0, 0, !dbg !1134
  br i1 %tobool, label %if.then, label %if.end, !dbg !1136

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !1137, !srcloc !1139
  store i32 1, i32* @initialized, align 4, !dbg !1140
  br label %if.end, !dbg !1141

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1142
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @cpuidle_uninstall_idle_handler() #0 !dbg !1143 {
entry:
  %0 = load i32, i32* @enabled_devices, align 4, !dbg !1144
  %tobool = icmp ne i32 %0, 0, !dbg !1144
  br i1 %tobool, label %if.then, label %if.end, !dbg !1146

if.then:                                          ; preds = %entry
  store i32 0, i32* @initialized, align 4, !dbg !1147
  call void @wake_up_all_idle_cpus() #8, !dbg !1149
  br label %if.end, !dbg !1150

if.end:                                           ; preds = %if.then, %entry
  call void @synchronize_rcu() #8, !dbg !1151
  ret void, !dbg !1152
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @wake_up_all_idle_cpus() #0 !dbg !1153 {
entry:
  ret void, !dbg !1155
}

; Function Attrs: noredzone
declare dso_local void @synchronize_rcu() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @cpuidle_pause_and_lock() #0 !dbg !1156 {
entry:
  call void @mutex_lock(%struct.mutex* @cpuidle_lock) #8, !dbg !1157
  call void @cpuidle_uninstall_idle_handler() #8, !dbg !1158
  ret void, !dbg !1159
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @cpuidle_resume_and_unlock() #0 !dbg !1160 {
entry:
  call void @cpuidle_install_idle_handler() #8, !dbg !1161
  call void @mutex_unlock(%struct.mutex* @cpuidle_lock) #8, !dbg !1162
  ret void, !dbg !1163
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @cpuidle_pause() #0 !dbg !1164 {
entry:
  call void @mutex_lock(%struct.mutex* @cpuidle_lock) #8, !dbg !1165
  call void @cpuidle_uninstall_idle_handler() #8, !dbg !1166
  call void @mutex_unlock(%struct.mutex* @cpuidle_lock) #8, !dbg !1167
  ret void, !dbg !1168
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @cpuidle_resume() #0 !dbg !1169 {
entry:
  call void @mutex_lock(%struct.mutex* @cpuidle_lock) #8, !dbg !1170
  call void @cpuidle_install_idle_handler() #8, !dbg !1171
  call void @mutex_unlock(%struct.mutex* @cpuidle_lock) #8, !dbg !1172
  ret void, !dbg !1173
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cpuidle_enable_device(%struct.cpuidle_device* %dev) #0 !dbg !1174 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %ret = alloca i32, align 4
  %drv = alloca %struct.cpuidle_driver*, align 8
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !1177, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1179, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv, metadata !1181, metadata !DIExpression()), !dbg !1182
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1183
  %tobool = icmp ne %struct.cpuidle_device* %0, null, !dbg !1183
  br i1 %tobool, label %if.end, label %if.then, !dbg !1185

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !1186
  br label %return, !dbg !1186

if.end:                                           ; preds = %entry
  %1 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1187
  %2 = bitcast %struct.cpuidle_device* %1 to i8*, !dbg !1189
  %bf.load = load i8, i8* %2, align 8, !dbg !1189
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !1189
  %bf.clear = and i8 %bf.lshr, 1, !dbg !1189
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1189
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !1187
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1190

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1191
  br label %return, !dbg !1191

if.end3:                                          ; preds = %if.end
  %3 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** @cpuidle_curr_governor, align 8, !dbg !1192
  %tobool4 = icmp ne %struct.cpuidle_governor* %3, null, !dbg !1192
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !1194

if.then5:                                         ; preds = %if.end3
  store i32 -5, i32* %retval, align 4, !dbg !1195
  br label %return, !dbg !1195

if.end6:                                          ; preds = %if.end3
  %4 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1196
  %call = call %struct.cpuidle_driver* @cpuidle_get_cpu_driver(%struct.cpuidle_device* %4) #8, !dbg !1197
  store %struct.cpuidle_driver* %call, %struct.cpuidle_driver** %drv, align 8, !dbg !1198
  %5 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !1199
  %tobool7 = icmp ne %struct.cpuidle_driver* %5, null, !dbg !1199
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !1201

if.then8:                                         ; preds = %if.end6
  store i32 -5, i32* %retval, align 4, !dbg !1202
  br label %return, !dbg !1202

if.end9:                                          ; preds = %if.end6
  %6 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1203
  %7 = bitcast %struct.cpuidle_device* %6 to i8*, !dbg !1205
  %bf.load10 = load i8, i8* %7, align 8, !dbg !1205
  %bf.clear11 = and i8 %bf.load10, 1, !dbg !1205
  %bf.cast12 = zext i8 %bf.clear11 to i32, !dbg !1205
  %tobool13 = icmp ne i32 %bf.cast12, 0, !dbg !1203
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !1206

if.then14:                                        ; preds = %if.end9
  store i32 -22, i32* %retval, align 4, !dbg !1207
  br label %return, !dbg !1207

if.end15:                                         ; preds = %if.end9
  %8 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1208
  %call16 = call i32 @cpuidle_add_device_sysfs(%struct.cpuidle_device* %8) #8, !dbg !1209
  store i32 %call16, i32* %ret, align 4, !dbg !1210
  %9 = load i32, i32* %ret, align 4, !dbg !1211
  %tobool17 = icmp ne i32 %9, 0, !dbg !1211
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !1213

if.then18:                                        ; preds = %if.end15
  %10 = load i32, i32* %ret, align 4, !dbg !1214
  store i32 %10, i32* %retval, align 4, !dbg !1215
  br label %return, !dbg !1215

if.end19:                                         ; preds = %if.end15
  %11 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** @cpuidle_curr_governor, align 8, !dbg !1216
  %enable = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %11, i32 0, i32 3, !dbg !1218
  %12 = load i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*)*, i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*)** %enable, align 8, !dbg !1218
  %tobool20 = icmp ne i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*)* %12, null, !dbg !1216
  br i1 %tobool20, label %if.then21, label %if.end27, !dbg !1219

if.then21:                                        ; preds = %if.end19
  %13 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** @cpuidle_curr_governor, align 8, !dbg !1220
  %enable22 = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %13, i32 0, i32 3, !dbg !1222
  %14 = load i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*)*, i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*)** %enable22, align 8, !dbg !1222
  %15 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !1223
  %16 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1224
  %call23 = call i32 %14(%struct.cpuidle_driver* %15, %struct.cpuidle_device* %16) #8, !dbg !1220
  store i32 %call23, i32* %ret, align 4, !dbg !1225
  %17 = load i32, i32* %ret, align 4, !dbg !1226
  %tobool24 = icmp ne i32 %17, 0, !dbg !1226
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !1228

if.then25:                                        ; preds = %if.then21
  br label %fail_sysfs, !dbg !1229

if.end26:                                         ; preds = %if.then21
  br label %if.end27, !dbg !1230

if.end27:                                         ; preds = %if.end26, %if.end19
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !1231, !srcloc !1232
  %18 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1233
  %19 = bitcast %struct.cpuidle_device* %18 to i8*, !dbg !1234
  %bf.load28 = load i8, i8* %19, align 8, !dbg !1235
  %bf.clear29 = and i8 %bf.load28, -3, !dbg !1235
  %bf.set = or i8 %bf.clear29, 2, !dbg !1235
  store i8 %bf.set, i8* %19, align 8, !dbg !1235
  %20 = load i32, i32* @enabled_devices, align 4, !dbg !1236
  %inc = add i32 %20, 1, !dbg !1236
  store i32 %inc, i32* @enabled_devices, align 4, !dbg !1236
  store i32 0, i32* %retval, align 4, !dbg !1237
  br label %return, !dbg !1237

fail_sysfs:                                       ; preds = %if.then25
  call void @llvm.dbg.label(metadata !1238), !dbg !1239
  %21 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1240
  call void @cpuidle_remove_device_sysfs(%struct.cpuidle_device* %21) #8, !dbg !1241
  %22 = load i32, i32* %ret, align 4, !dbg !1242
  store i32 %22, i32* %retval, align 4, !dbg !1243
  br label %return, !dbg !1243

return:                                           ; preds = %fail_sysfs, %if.end27, %if.then18, %if.then14, %if.then8, %if.then5, %if.then2, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !1244
  ret i32 %23, !dbg !1244
}

; Function Attrs: noredzone
declare dso_local i32 @cpuidle_add_device_sysfs(%struct.cpuidle_device*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @cpuidle_remove_device_sysfs(%struct.cpuidle_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @cpuidle_disable_device(%struct.cpuidle_device* %dev) #0 !dbg !1245 {
entry:
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %drv = alloca %struct.cpuidle_driver*, align 8
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !1248, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv, metadata !1250, metadata !DIExpression()), !dbg !1251
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1252
  %call = call %struct.cpuidle_driver* @cpuidle_get_cpu_driver(%struct.cpuidle_device* %0) #8, !dbg !1253
  store %struct.cpuidle_driver* %call, %struct.cpuidle_driver** %drv, align 8, !dbg !1251
  %1 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1254
  %tobool = icmp ne %struct.cpuidle_device* %1, null, !dbg !1254
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1256

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1257
  %3 = bitcast %struct.cpuidle_device* %2 to i8*, !dbg !1258
  %bf.load = load i8, i8* %3, align 8, !dbg !1258
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !1258
  %bf.clear = and i8 %bf.lshr, 1, !dbg !1258
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1258
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !1257
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1259

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !1260

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !1261
  %tobool2 = icmp ne %struct.cpuidle_driver* %4, null, !dbg !1261
  br i1 %tobool2, label %lor.lhs.false3, label %if.then5, !dbg !1263

lor.lhs.false3:                                   ; preds = %if.end
  %5 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** @cpuidle_curr_governor, align 8, !dbg !1264
  %tobool4 = icmp ne %struct.cpuidle_governor* %5, null, !dbg !1264
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !1265

if.then5:                                         ; preds = %lor.lhs.false3, %if.end
  br label %return, !dbg !1266

if.end6:                                          ; preds = %lor.lhs.false3
  %6 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1267
  %7 = bitcast %struct.cpuidle_device* %6 to i8*, !dbg !1268
  %bf.load7 = load i8, i8* %7, align 8, !dbg !1269
  %bf.clear8 = and i8 %bf.load7, -3, !dbg !1269
  store i8 %bf.clear8, i8* %7, align 8, !dbg !1269
  %8 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** @cpuidle_curr_governor, align 8, !dbg !1270
  %disable = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %8, i32 0, i32 4, !dbg !1272
  %9 = load void (%struct.cpuidle_driver*, %struct.cpuidle_device*)*, void (%struct.cpuidle_driver*, %struct.cpuidle_device*)** %disable, align 8, !dbg !1272
  %tobool9 = icmp ne void (%struct.cpuidle_driver*, %struct.cpuidle_device*)* %9, null, !dbg !1270
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !1273

if.then10:                                        ; preds = %if.end6
  %10 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** @cpuidle_curr_governor, align 8, !dbg !1274
  %disable11 = getelementptr inbounds %struct.cpuidle_governor, %struct.cpuidle_governor* %10, i32 0, i32 4, !dbg !1275
  %11 = load void (%struct.cpuidle_driver*, %struct.cpuidle_device*)*, void (%struct.cpuidle_driver*, %struct.cpuidle_device*)** %disable11, align 8, !dbg !1275
  %12 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !1276
  %13 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1277
  call void %11(%struct.cpuidle_driver* %12, %struct.cpuidle_device* %13) #8, !dbg !1274
  br label %if.end12, !dbg !1274

if.end12:                                         ; preds = %if.then10, %if.end6
  %14 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1278
  call void @cpuidle_remove_device_sysfs(%struct.cpuidle_device* %14) #8, !dbg !1279
  %15 = load i32, i32* @enabled_devices, align 4, !dbg !1280
  %dec = add i32 %15, -1, !dbg !1280
  store i32 %dec, i32* @enabled_devices, align 4, !dbg !1280
  br label %return, !dbg !1281

return:                                           ; preds = %if.end12, %if.then5, %if.then
  ret void, !dbg !1281
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cpuidle_register_device(%struct.cpuidle_device* %dev) #0 !dbg !1282 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %ret = alloca i32, align 4
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !1283, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1285, metadata !DIExpression()), !dbg !1286
  store i32 -16, i32* %ret, align 4, !dbg !1286
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1287
  %tobool = icmp ne %struct.cpuidle_device* %0, null, !dbg !1287
  br i1 %tobool, label %if.end, label %if.then, !dbg !1289

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !1290
  br label %return, !dbg !1290

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* @cpuidle_lock) #8, !dbg !1291
  %1 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1292
  %2 = bitcast %struct.cpuidle_device* %1 to i8*, !dbg !1294
  %bf.load = load i8, i8* %2, align 8, !dbg !1294
  %bf.clear = and i8 %bf.load, 1, !dbg !1294
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1294
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !1292
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1295

if.then2:                                         ; preds = %if.end
  br label %out_unlock, !dbg !1296

if.end3:                                          ; preds = %if.end
  %3 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1297
  call void @__cpuidle_device_init(%struct.cpuidle_device* %3) #8, !dbg !1298
  %4 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1299
  %call = call i32 @__cpuidle_register_device(%struct.cpuidle_device* %4) #8, !dbg !1300
  store i32 %call, i32* %ret, align 4, !dbg !1301
  %5 = load i32, i32* %ret, align 4, !dbg !1302
  %tobool4 = icmp ne i32 %5, 0, !dbg !1302
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1304

if.then5:                                         ; preds = %if.end3
  br label %out_unlock, !dbg !1305

if.end6:                                          ; preds = %if.end3
  %6 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1306
  %call7 = call i32 @cpuidle_add_sysfs(%struct.cpuidle_device* %6) #8, !dbg !1307
  store i32 %call7, i32* %ret, align 4, !dbg !1308
  %7 = load i32, i32* %ret, align 4, !dbg !1309
  %tobool8 = icmp ne i32 %7, 0, !dbg !1309
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1311

if.then9:                                         ; preds = %if.end6
  br label %out_unregister, !dbg !1312

if.end10:                                         ; preds = %if.end6
  %8 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1313
  %call11 = call i32 @cpuidle_enable_device(%struct.cpuidle_device* %8) #8, !dbg !1314
  store i32 %call11, i32* %ret, align 4, !dbg !1315
  %9 = load i32, i32* %ret, align 4, !dbg !1316
  %tobool12 = icmp ne i32 %9, 0, !dbg !1316
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !1318

if.then13:                                        ; preds = %if.end10
  br label %out_sysfs, !dbg !1319

if.end14:                                         ; preds = %if.end10
  call void @cpuidle_install_idle_handler() #8, !dbg !1320
  br label %out_unlock, !dbg !1320

out_unlock:                                       ; preds = %out_unregister, %if.end14, %if.then5, %if.then2
  call void @llvm.dbg.label(metadata !1321), !dbg !1322
  call void @mutex_unlock(%struct.mutex* @cpuidle_lock) #8, !dbg !1323
  %10 = load i32, i32* %ret, align 4, !dbg !1324
  store i32 %10, i32* %retval, align 4, !dbg !1325
  br label %return, !dbg !1325

out_sysfs:                                        ; preds = %if.then13
  call void @llvm.dbg.label(metadata !1326), !dbg !1327
  %11 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1328
  call void @cpuidle_remove_sysfs(%struct.cpuidle_device* %11) #8, !dbg !1329
  br label %out_unregister, !dbg !1329

out_unregister:                                   ; preds = %out_sysfs, %if.then9
  call void @llvm.dbg.label(metadata !1330), !dbg !1331
  %12 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1332
  call void @__cpuidle_unregister_device(%struct.cpuidle_device* %12) #8, !dbg !1333
  br label %out_unlock, !dbg !1334

return:                                           ; preds = %out_unlock, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !1335
  ret i32 %13, !dbg !1335
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__cpuidle_device_init(%struct.cpuidle_device* %dev) #0 !dbg !1336 {
entry:
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !1337, metadata !DIExpression()), !dbg !1338
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1339
  %states_usage = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %0, i32 0, i32 7, !dbg !1340
  %arraydecay = getelementptr inbounds [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_usage]* %states_usage, i64 0, i64 0, !dbg !1341
  %1 = bitcast %struct.cpuidle_state_usage* %arraydecay to i8*, !dbg !1341
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 640, i1 false), !dbg !1341
  %2 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1342
  %last_residency_ns = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %2, i32 0, i32 4, !dbg !1343
  store i64 0, i64* %last_residency_ns, align 8, !dbg !1344
  %3 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1345
  %next_hrtimer = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %3, i32 0, i32 2, !dbg !1346
  store i64 0, i64* %next_hrtimer, align 8, !dbg !1347
  ret void, !dbg !1348
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__cpuidle_register_device(%struct.cpuidle_device* %dev) #0 !dbg !1349 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %drv = alloca %struct.cpuidle_driver*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca %struct.cpuidle_device**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp20 = alloca %struct.cpuidle_device**, align 8
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !1350, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv, metadata !1352, metadata !DIExpression()), !dbg !1353
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1354
  %call = call %struct.cpuidle_driver* @cpuidle_get_cpu_driver(%struct.cpuidle_device* %0) #8, !dbg !1355
  store %struct.cpuidle_driver* %call, %struct.cpuidle_driver** %drv, align 8, !dbg !1353
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1356, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1358, metadata !DIExpression()), !dbg !1359
  %1 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !1360
  %owner = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %1, i32 0, i32 1, !dbg !1362
  %2 = load %struct.module*, %struct.module** %owner, align 8, !dbg !1362
  %call1 = call zeroext i1 @try_module_get(%struct.module* %2) #8, !dbg !1363
  br i1 %call1, label %if.end, label %if.then, !dbg !1364

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !1365
  br label %return, !dbg !1365

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !1366
  br label %for.cond, !dbg !1368

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !1369
  %4 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !1371
  %state_count = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %4, i32 0, i32 4, !dbg !1372
  %5 = load i32, i32* %state_count, align 8, !dbg !1372
  %cmp = icmp slt i32 %3, %5, !dbg !1373
  br i1 %cmp, label %for.body, label %for.end, !dbg !1374

for.body:                                         ; preds = %for.cond
  %6 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !1375
  %states = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %6, i32 0, i32 3, !dbg !1378
  %7 = load i32, i32* %i, align 4, !dbg !1379
  %idxprom = sext i32 %7 to i64, !dbg !1375
  %arrayidx = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states, i64 0, i64 %idxprom, !dbg !1375
  %flags = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %arrayidx, i32 0, i32 4, !dbg !1380
  %8 = load i32, i32* %flags, align 8, !dbg !1380
  %conv = zext i32 %8 to i64, !dbg !1375
  %and = and i64 %conv, 8, !dbg !1381
  %tobool = icmp ne i64 %and, 0, !dbg !1381
  br i1 %tobool, label %if.then2, label %if.end5, !dbg !1382

if.then2:                                         ; preds = %for.body
  %9 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1383
  %states_usage = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %9, i32 0, i32 7, !dbg !1384
  %10 = load i32, i32* %i, align 4, !dbg !1385
  %idxprom3 = sext i32 %10 to i64, !dbg !1383
  %arrayidx4 = getelementptr [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_usage]* %states_usage, i64 0, i64 %idxprom3, !dbg !1383
  %disable = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %arrayidx4, i32 0, i32 0, !dbg !1386
  %11 = load i64, i64* %disable, align 8, !dbg !1387
  %or = or i64 %11, 2, !dbg !1387
  store i64 %or, i64* %disable, align 8, !dbg !1387
  br label %if.end5, !dbg !1383

if.end5:                                          ; preds = %if.then2, %for.body
  %12 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !1388
  %states6 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %12, i32 0, i32 3, !dbg !1390
  %13 = load i32, i32* %i, align 4, !dbg !1391
  %idxprom7 = sext i32 %13 to i64, !dbg !1388
  %arrayidx8 = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states6, i64 0, i64 %idxprom7, !dbg !1388
  %flags9 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %arrayidx8, i32 0, i32 4, !dbg !1392
  %14 = load i32, i32* %flags9, align 8, !dbg !1392
  %conv10 = zext i32 %14 to i64, !dbg !1388
  %and11 = and i64 %conv10, 16, !dbg !1393
  %tobool12 = icmp ne i64 %and11, 0, !dbg !1393
  br i1 %tobool12, label %if.then13, label %if.end19, !dbg !1394

if.then13:                                        ; preds = %if.end5
  %15 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1395
  %states_usage14 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %15, i32 0, i32 7, !dbg !1396
  %16 = load i32, i32* %i, align 4, !dbg !1397
  %idxprom15 = sext i32 %16 to i64, !dbg !1395
  %arrayidx16 = getelementptr [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_usage]* %states_usage14, i64 0, i64 %idxprom15, !dbg !1395
  %disable17 = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %arrayidx16, i32 0, i32 0, !dbg !1398
  %17 = load i64, i64* %disable17, align 8, !dbg !1399
  %or18 = or i64 %17, 1, !dbg !1399
  store i64 %or18, i64* %disable17, align 8, !dbg !1399
  br label %if.end19, !dbg !1395

if.end19:                                         ; preds = %if.then13, %if.end5
  br label %for.inc, !dbg !1400

for.inc:                                          ; preds = %if.end19
  %18 = load i32, i32* %i, align 4, !dbg !1401
  %inc = add i32 %18, 1, !dbg !1401
  store i32 %inc, i32* %i, align 4, !dbg !1401
  br label %for.cond, !dbg !1402, !llvm.loop !1403

for.end:                                          ; preds = %for.cond
  %19 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1405
  %20 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1406
  %cpu = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %20, i32 0, i32 1, !dbg !1406
  %21 = load i32, i32* %cpu, align 4, !dbg !1406
  br label %do.body, !dbg !1408

do.body:                                          ; preds = %for.end
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !1410, metadata !DIExpression()), !dbg !1412
  store i8* null, i8** %__vpp_verify, align 8, !dbg !1412
  %22 = load i8*, i8** %__vpp_verify, align 8, !dbg !1412
  br label %do.end, !dbg !1412

do.end:                                           ; preds = %do.body
  store %struct.cpuidle_device** @cpuidle_devices, %struct.cpuidle_device*** %tmp20, align 8, !dbg !1412
  %23 = load %struct.cpuidle_device**, %struct.cpuidle_device*** %tmp20, align 8, !dbg !1408
  store %struct.cpuidle_device** %23, %struct.cpuidle_device*** %tmp, align 8, !dbg !1406
  %24 = load %struct.cpuidle_device**, %struct.cpuidle_device*** %tmp, align 8, !dbg !1406
  store %struct.cpuidle_device* %19, %struct.cpuidle_device** %24, align 8, !dbg !1413
  %25 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1414
  %device_list = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %25, i32 0, i32 11, !dbg !1415
  call void @list_add(%struct.list_head* %device_list, %struct.list_head* @cpuidle_detected_devices) #8, !dbg !1416
  %26 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1417
  %call21 = call i32 @cpuidle_coupled_register_device(%struct.cpuidle_device* %26) #8, !dbg !1418
  store i32 %call21, i32* %ret, align 4, !dbg !1419
  %27 = load i32, i32* %ret, align 4, !dbg !1420
  %tobool22 = icmp ne i32 %27, 0, !dbg !1420
  br i1 %tobool22, label %if.then23, label %if.else, !dbg !1422

if.then23:                                        ; preds = %do.end
  %28 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1423
  call void @__cpuidle_unregister_device(%struct.cpuidle_device* %28) #8, !dbg !1424
  br label %if.end24, !dbg !1424

if.else:                                          ; preds = %do.end
  %29 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1425
  %30 = bitcast %struct.cpuidle_device* %29 to i8*, !dbg !1426
  %bf.load = load i8, i8* %30, align 8, !dbg !1427
  %bf.clear = and i8 %bf.load, -2, !dbg !1427
  %bf.set = or i8 %bf.clear, 1, !dbg !1427
  store i8 %bf.set, i8* %30, align 8, !dbg !1427
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then23
  %31 = load i32, i32* %ret, align 4, !dbg !1428
  store i32 %31, i32* %retval, align 4, !dbg !1429
  br label %return, !dbg !1429

return:                                           ; preds = %if.end24, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !1430
  ret i32 %32, !dbg !1430
}

; Function Attrs: noredzone
declare dso_local i32 @cpuidle_add_sysfs(%struct.cpuidle_device*) #2

; Function Attrs: noredzone
declare dso_local void @cpuidle_remove_sysfs(%struct.cpuidle_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__cpuidle_unregister_device(%struct.cpuidle_device* %dev) #0 !dbg !1431 {
entry:
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %drv = alloca %struct.cpuidle_driver*, align 8
  %tmp = alloca %struct.cpuidle_device**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.cpuidle_device**, align 8
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !1432, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv, metadata !1434, metadata !DIExpression()), !dbg !1435
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1436
  %call = call %struct.cpuidle_driver* @cpuidle_get_cpu_driver(%struct.cpuidle_device* %0) #8, !dbg !1437
  store %struct.cpuidle_driver* %call, %struct.cpuidle_driver** %drv, align 8, !dbg !1435
  %1 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1438
  %device_list = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %1, i32 0, i32 11, !dbg !1439
  call void @list_del(%struct.list_head* %device_list) #8, !dbg !1440
  %2 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1441
  %cpu = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %2, i32 0, i32 1, !dbg !1441
  %3 = load i32, i32* %cpu, align 4, !dbg !1441
  br label %do.body, !dbg !1443

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !1445, metadata !DIExpression()), !dbg !1447
  store i8* null, i8** %__vpp_verify, align 8, !dbg !1447
  %4 = load i8*, i8** %__vpp_verify, align 8, !dbg !1447
  br label %do.end, !dbg !1447

do.end:                                           ; preds = %do.body
  store %struct.cpuidle_device** @cpuidle_devices, %struct.cpuidle_device*** %tmp1, align 8, !dbg !1447
  %5 = load %struct.cpuidle_device**, %struct.cpuidle_device*** %tmp1, align 8, !dbg !1443
  store %struct.cpuidle_device** %5, %struct.cpuidle_device*** %tmp, align 8, !dbg !1441
  %6 = load %struct.cpuidle_device**, %struct.cpuidle_device*** %tmp, align 8, !dbg !1441
  store %struct.cpuidle_device* null, %struct.cpuidle_device** %6, align 8, !dbg !1448
  %7 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !1449
  %owner = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %7, i32 0, i32 1, !dbg !1450
  %8 = load %struct.module*, %struct.module** %owner, align 8, !dbg !1450
  call void @module_put(%struct.module* %8) #8, !dbg !1451
  %9 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1452
  %10 = bitcast %struct.cpuidle_device* %9 to i8*, !dbg !1453
  %bf.load = load i8, i8* %10, align 8, !dbg !1454
  %bf.clear = and i8 %bf.load, -2, !dbg !1454
  store i8 %bf.clear, i8* %10, align 8, !dbg !1454
  ret void, !dbg !1455
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @cpuidle_unregister_device(%struct.cpuidle_device* %dev) #0 !dbg !1456 {
entry:
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !1457, metadata !DIExpression()), !dbg !1458
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1459
  %tobool = icmp ne %struct.cpuidle_device* %0, null, !dbg !1459
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1461

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1462
  %2 = bitcast %struct.cpuidle_device* %1 to i8*, !dbg !1463
  %bf.load = load i8, i8* %2, align 8, !dbg !1463
  %bf.clear = and i8 %bf.load, 1, !dbg !1463
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1463
  %cmp = icmp eq i32 %bf.cast, 0, !dbg !1464
  br i1 %cmp, label %if.then, label %if.end, !dbg !1465

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !1466

if.end:                                           ; preds = %lor.lhs.false
  call void @cpuidle_pause_and_lock() #8, !dbg !1467
  %3 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1468
  call void @cpuidle_disable_device(%struct.cpuidle_device* %3) #8, !dbg !1469
  %4 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1470
  call void @cpuidle_remove_sysfs(%struct.cpuidle_device* %4) #8, !dbg !1471
  %5 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1472
  call void @__cpuidle_unregister_device(%struct.cpuidle_device* %5) #8, !dbg !1473
  %6 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1474
  call void @cpuidle_coupled_unregister_device(%struct.cpuidle_device* %6) #8, !dbg !1475
  call void @cpuidle_resume_and_unlock() #8, !dbg !1476
  br label %return, !dbg !1477

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1477
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpuidle_coupled_unregister_device(%struct.cpuidle_device* %dev) #0 !dbg !1478 {
entry:
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !1479, metadata !DIExpression()), !dbg !1480
  ret void, !dbg !1481
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @cpuidle_unregister(%struct.cpuidle_driver* %drv) #0 !dbg !1482 {
entry:
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %cpu = alloca i32, align 4
  %device = alloca %struct.cpuidle_device*, align 8
  %tmp = alloca %struct.cpuidle_device*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.cpuidle_device*, align 8
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !1485, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !1487, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %device, metadata !1489, metadata !DIExpression()), !dbg !1490
  store i32 0, i32* %cpu, align 4, !dbg !1491
  br label %for.cond, !dbg !1491

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %cpu, align 4, !dbg !1493
  %cmp = icmp slt i32 %0, 1, !dbg !1493
  br i1 %cmp, label %for.body, label %for.end, !dbg !1491

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %cpu, align 4, !dbg !1495
  br label %do.body, !dbg !1498

do.body:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !1500, metadata !DIExpression()), !dbg !1502
  store i8* null, i8** %__vpp_verify, align 8, !dbg !1502
  %2 = load i8*, i8** %__vpp_verify, align 8, !dbg !1502
  br label %do.end, !dbg !1502

do.end:                                           ; preds = %do.body
  store %struct.cpuidle_device* @cpuidle_dev, %struct.cpuidle_device** %tmp1, align 8, !dbg !1502
  %3 = load %struct.cpuidle_device*, %struct.cpuidle_device** %tmp1, align 8, !dbg !1498
  store %struct.cpuidle_device* %3, %struct.cpuidle_device** %tmp, align 8, !dbg !1495
  %4 = load %struct.cpuidle_device*, %struct.cpuidle_device** %tmp, align 8, !dbg !1495
  store %struct.cpuidle_device* %4, %struct.cpuidle_device** %device, align 8, !dbg !1503
  %5 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device, align 8, !dbg !1504
  call void @cpuidle_unregister_device(%struct.cpuidle_device* %5) #8, !dbg !1505
  br label %for.inc, !dbg !1506

for.inc:                                          ; preds = %do.end
  %6 = load i32, i32* %cpu, align 4, !dbg !1493
  %inc = add i32 %6, 1, !dbg !1493
  store i32 %inc, i32* %cpu, align 4, !dbg !1493
  %7 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !1493
  %cpumask = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %7, i32 0, i32 6, !dbg !1493
  %8 = load %struct.cpumask*, %struct.cpumask** %cpumask, align 8, !dbg !1493
  br label %for.cond, !dbg !1493, !llvm.loop !1507

for.end:                                          ; preds = %for.cond
  %9 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !1509
  call void @cpuidle_unregister_driver(%struct.cpuidle_driver* %9) #8, !dbg !1510
  ret void, !dbg !1511
}

; Function Attrs: noredzone
declare dso_local void @cpuidle_unregister_driver(%struct.cpuidle_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cpuidle_register(%struct.cpuidle_driver* %drv, %struct.cpumask* %coupled_cpus) #0 !dbg !1512 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %coupled_cpus.addr = alloca %struct.cpumask*, align 8
  %ret = alloca i32, align 4
  %cpu = alloca i32, align 4
  %device = alloca %struct.cpuidle_device*, align 8
  %tmp = alloca %struct.cpuidle_device*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp2 = alloca %struct.cpuidle_device*, align 8
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !1518, metadata !DIExpression()), !dbg !1519
  store %struct.cpumask* %coupled_cpus, %struct.cpumask** %coupled_cpus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %coupled_cpus.addr, metadata !1520, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1522, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !1524, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %device, metadata !1526, metadata !DIExpression()), !dbg !1527
  %0 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !1528
  %call = call i32 @cpuidle_register_driver(%struct.cpuidle_driver* %0) #8, !dbg !1529
  store i32 %call, i32* %ret, align 4, !dbg !1530
  %1 = load i32, i32* %ret, align 4, !dbg !1531
  %tobool = icmp ne i32 %1, 0, !dbg !1531
  br i1 %tobool, label %if.then, label %if.end, !dbg !1533

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1534
  %2 = load i32, i32* %ret, align 4, !dbg !1536
  store i32 %2, i32* %retval, align 4, !dbg !1537
  br label %return, !dbg !1537

if.end:                                           ; preds = %entry
  store i32 0, i32* %cpu, align 4, !dbg !1538
  br label %for.cond, !dbg !1538

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %cpu, align 4, !dbg !1540
  %cmp = icmp slt i32 %3, 1, !dbg !1540
  br i1 %cmp, label %for.body, label %for.end, !dbg !1538

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %cpu, align 4, !dbg !1542
  br label %do.body, !dbg !1545

do.body:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !1547, metadata !DIExpression()), !dbg !1549
  store i8* null, i8** %__vpp_verify, align 8, !dbg !1549
  %5 = load i8*, i8** %__vpp_verify, align 8, !dbg !1549
  br label %do.end, !dbg !1549

do.end:                                           ; preds = %do.body
  store %struct.cpuidle_device* @cpuidle_dev, %struct.cpuidle_device** %tmp2, align 8, !dbg !1549
  %6 = load %struct.cpuidle_device*, %struct.cpuidle_device** %tmp2, align 8, !dbg !1545
  store %struct.cpuidle_device* %6, %struct.cpuidle_device** %tmp, align 8, !dbg !1542
  %7 = load %struct.cpuidle_device*, %struct.cpuidle_device** %tmp, align 8, !dbg !1542
  store %struct.cpuidle_device* %7, %struct.cpuidle_device** %device, align 8, !dbg !1550
  %8 = load i32, i32* %cpu, align 4, !dbg !1551
  %9 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device, align 8, !dbg !1552
  %cpu3 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %9, i32 0, i32 1, !dbg !1553
  store i32 %8, i32* %cpu3, align 4, !dbg !1554
  %10 = load %struct.cpuidle_device*, %struct.cpuidle_device** %device, align 8, !dbg !1555
  %call4 = call i32 @cpuidle_register_device(%struct.cpuidle_device* %10) #8, !dbg !1556
  store i32 %call4, i32* %ret, align 4, !dbg !1557
  %11 = load i32, i32* %ret, align 4, !dbg !1558
  %tobool5 = icmp ne i32 %11, 0, !dbg !1558
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !1560

if.then6:                                         ; preds = %do.end
  br label %for.inc, !dbg !1561

if.end7:                                          ; preds = %do.end
  %12 = load i32, i32* %cpu, align 4, !dbg !1562
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %12) #9, !dbg !1562
  %13 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !1563
  call void @cpuidle_unregister(%struct.cpuidle_driver* %13) #8, !dbg !1564
  br label %for.end, !dbg !1565

for.inc:                                          ; preds = %if.then6
  %14 = load i32, i32* %cpu, align 4, !dbg !1540
  %inc = add i32 %14, 1, !dbg !1540
  store i32 %inc, i32* %cpu, align 4, !dbg !1540
  %15 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !1540
  %cpumask = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %15, i32 0, i32 6, !dbg !1540
  %16 = load %struct.cpumask*, %struct.cpumask** %cpumask, align 8, !dbg !1540
  br label %for.cond, !dbg !1540, !llvm.loop !1566

for.end:                                          ; preds = %if.end7, %for.cond
  %17 = load i32, i32* %ret, align 4, !dbg !1568
  store i32 %17, i32* %retval, align 4, !dbg !1569
  br label %return, !dbg !1569

return:                                           ; preds = %for.end, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !1570
  ret i32 %18, !dbg !1570
}

; Function Attrs: noredzone
declare dso_local i32 @cpuidle_register_driver(%struct.cpuidle_driver*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @cpuidle_init() #4 section ".init.text" !dbg !1571 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @cpuidle_disabled() #8, !dbg !1572
  %tobool = icmp ne i32 %call, 0, !dbg !1572
  br i1 %tobool, label %if.then, label %if.end, !dbg !1574

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !1575
  br label %return, !dbg !1575

if.end:                                           ; preds = %entry
  %0 = load %struct.device*, %struct.device** getelementptr inbounds (%struct.bus_type, %struct.bus_type* @cpu_subsys, i32 0, i32 2), align 8, !dbg !1576
  %call1 = call i32 @cpuidle_add_interface(%struct.device* %0) #8, !dbg !1577
  store i32 %call1, i32* %retval, align 4, !dbg !1578
  br label %return, !dbg !1578

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, align 4, !dbg !1579
  ret i32 %1, !dbg !1579
}

; Function Attrs: noredzone
declare dso_local void @tick_freeze() #2

; Function Attrs: noredzone
declare dso_local void @tick_unfreeze() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_us_delta(i64 %later, i64 %earlier) #0 !dbg !1580 {
entry:
  %later.addr = alloca i64, align 8
  %earlier.addr = alloca i64, align 8
  store i64 %later, i64* %later.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %later.addr, metadata !1584, metadata !DIExpression()), !dbg !1585
  store i64 %earlier, i64* %earlier.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %earlier.addr, metadata !1586, metadata !DIExpression()), !dbg !1587
  %0 = load i64, i64* %later.addr, align 8, !dbg !1588
  %1 = load i64, i64* %earlier.addr, align 8, !dbg !1588
  %sub = sub i64 %0, %1, !dbg !1588
  %call = call i64 @ktime_to_us(i64 %sub) #8, !dbg !1589
  ret i64 %call, !dbg !1590
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_to_us(i64 %kt) #0 !dbg !1591 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !1594, metadata !DIExpression()), !dbg !1595
  %0 = load i64, i64* %kt.addr, align 8, !dbg !1596
  %call = call i64 @ktime_divns(i64 %0, i64 1000) #8, !dbg !1597
  ret i64 %call, !dbg !1598
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_divns(i64 %kt, i64 %div) #0 !dbg !1599 {
entry:
  %kt.addr = alloca i64, align 8
  %div.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !1602, metadata !DIExpression()), !dbg !1603
  store i64 %div, i64* %div.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %div.addr, metadata !1604, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !1606, metadata !DIExpression()), !dbg !1608
  %0 = load i64, i64* %div.addr, align 8, !dbg !1608
  %cmp = icmp slt i64 %0, 0, !dbg !1608
  %lnot = xor i1 %cmp, true, !dbg !1608
  %lnot1 = xor i1 %lnot, true, !dbg !1608
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1608
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !1608
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !1609
  %tobool = icmp ne i32 %1, 0, !dbg !1609
  %lnot2 = xor i1 %tobool, true, !dbg !1609
  %lnot4 = xor i1 %lnot2, true, !dbg !1609
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !1609
  %conv = sext i32 %lnot.ext5 to i64, !dbg !1609
  %tobool6 = icmp ne i64 %conv, 0, !dbg !1609
  br i1 %tobool6, label %if.then, label %if.end, !dbg !1608

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1609

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !1611

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !1613

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !1611

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 154, i32 2305, i64 12) #6, !dbg !1615, !srcloc !1617
  br label %do.end9, !dbg !1615

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 42) #6, !dbg !1618, !srcloc !1620
  br label %do.body10, !dbg !1611

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !1621

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !1611

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !1611

if.end:                                           ; preds = %do.end12, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !1608
  %tobool13 = icmp ne i32 %2, 0, !dbg !1608
  %lnot14 = xor i1 %tobool13, true, !dbg !1608
  %lnot16 = xor i1 %lnot14, true, !dbg !1608
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !1608
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !1608
  store i64 %conv18, i64* %tmp, align 8, !dbg !1609
  %3 = load i64, i64* %tmp, align 8, !dbg !1608
  %4 = load i64, i64* %kt.addr, align 8, !dbg !1623
  %5 = load i64, i64* %div.addr, align 8, !dbg !1624
  %div19 = sdiv i64 %4, %5, !dbg !1625
  ret i64 %div19, !dbg !1626
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noredzone
declare dso_local i32 @tick_broadcast_oneshot_control(i32) #2

; Function Attrs: noredzone
declare dso_local i64 @sched_clock_cpu(i32) #2

; Function Attrs: noredzone
declare dso_local i64 @ktime_get() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !1627 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !1631, metadata !DIExpression()), !dbg !1632
  ret i1 true, !dbg !1633
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !1634 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !1638, metadata !DIExpression()), !dbg !1639
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !1640, metadata !DIExpression()), !dbg !1641
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1642
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !1643
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !1644
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !1645
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !1645
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #8, !dbg !1646
  ret void, !dbg !1647
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpuidle_coupled_register_device(%struct.cpuidle_device* %dev) #0 !dbg !1648 {
entry:
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !1649, metadata !DIExpression()), !dbg !1650
  ret i32 0, !dbg !1651
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !1652 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !1655, metadata !DIExpression()), !dbg !1656
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !1657, metadata !DIExpression()), !dbg !1658
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !1659, metadata !DIExpression()), !dbg !1660
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1661
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1663
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1664
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !1665
  br i1 %call, label %if.end, label %if.then, !dbg !1666

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !1667

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1668
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1669
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !1670
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !1671
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1672
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1673
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !1674
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !1675
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1676
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1677
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !1678
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !1679
  br label %do.body, !dbg !1680

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !1681

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !1683

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !1681

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1685
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1685
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !1685
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !1685
  br label %do.end7, !dbg !1685

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !1681

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !1687
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !1688 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !1691, metadata !DIExpression()), !dbg !1692
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !1693, metadata !DIExpression()), !dbg !1694
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !1695, metadata !DIExpression()), !dbg !1696
  ret i1 true, !dbg !1697
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !1698 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !1701, metadata !DIExpression()), !dbg !1702
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1703
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !1704
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1705
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !1706
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !1707
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1708
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !1709
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !1710
  ret void, !dbg !1711
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !1712 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !1715, metadata !DIExpression()), !dbg !1716
  ret void, !dbg !1717
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !1718 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !1719, metadata !DIExpression()), !dbg !1720
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1721
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #8, !dbg !1723
  br i1 %call, label %if.end, label %if.then, !dbg !1724

if.then:                                          ; preds = %entry
  br label %return, !dbg !1725

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1726
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !1727
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !1727
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1728
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !1729
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !1729
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #8, !dbg !1730
  br label %return, !dbg !1731

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1731
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !1732 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !1735, metadata !DIExpression()), !dbg !1736
  ret i1 true, !dbg !1737
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !1738 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !1739, metadata !DIExpression()), !dbg !1740
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !1741, metadata !DIExpression()), !dbg !1742
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1743
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1744
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !1745
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !1746
  br label %do.body, !dbg !1747

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !1748

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !1750

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !1748

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1752
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1752
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !1752
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !1752
  br label %do.end5, !dbg !1752

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !1748

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !1754
}

; Function Attrs: noredzone
declare dso_local i32 @cpuidle_add_interface(%struct.device*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!214}
!llvm.module.flags = !{!215, !216, !217, !218}
!llvm.ident = !{!219}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cpuidle_lock", scope: !2, file: !3, line: 33, type: !187, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !16, globals: !79, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/cpuidle/cpuidle.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tick_broadcast_state", file: !12, line: 60, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/tick.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "TICK_BROADCAST_EXIT", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "TICK_BROADCAST_ENTER", value: 1, isUnsigned: true)
!16 = !{!17, !73, !18, !74, !37, !75, !77}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device", file: !20, line: 92, size: 6400, elements: !21)
!20 = !DIFile(filename: "./include/linux/cpuidle.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !23, !24, !25, !26, !34, !36, !40, !41, !42, !56, !60, !63, !66}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !19, file: !20, line: 93, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !19, file: !20, line: 94, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "poll_time_limit", scope: !19, file: !20, line: 95, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !19, file: !20, line: 96, baseType: !7, size: 32, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "next_hrtimer", scope: !19, file: !20, line: 97, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !28, line: 29, baseType: !29)
!28 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !30, line: 22, baseType: !31)
!30 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !32, line: 30, baseType: !33)
!32 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!33 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "last_state_idx", scope: !19, file: !20, line: 99, baseType: !35, size: 32, offset: 128)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "last_residency_ns", scope: !19, file: !20, line: 100, baseType: !37, size: 64, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !30, line: 23, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !32, line: 31, baseType: !39)
!39 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "poll_limit_ns", scope: !19, file: !20, line: 101, baseType: !37, size: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "forced_idle_latency_limit_ns", scope: !19, file: !20, line: 102, baseType: !37, size: 64, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "states_usage", scope: !19, file: !20, line: 103, baseType: !43, size: 5120, offset: 384)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 5120, elements: !54)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_usage", file: !20, line: 35, size: 512, elements: !45)
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !44, file: !20, line: 36, baseType: !39, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !44, file: !20, line: 37, baseType: !39, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !44, file: !20, line: 38, baseType: !37, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "above", scope: !44, file: !20, line: 39, baseType: !39, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "below", scope: !44, file: !20, line: 40, baseType: !39, size: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "rejected", scope: !44, file: !20, line: 41, baseType: !39, size: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_usage", scope: !44, file: !20, line: 43, baseType: !39, size: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_time", scope: !44, file: !20, line: 44, baseType: !39, size: 64, offset: 448)
!54 = !{!55}
!55 = !DISubrange(count: 10)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "kobjs", scope: !19, file: !20, line: 104, baseType: !57, size: 640, offset: 5504)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 640, elements: !54)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_kobj", file: !20, line: 89, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_driver", scope: !19, file: !20, line: 105, baseType: !61, size: 64, offset: 6144)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver_kobj", file: !20, line: 90, flags: DIFlagFwdDecl)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_dev", scope: !19, file: !20, line: 106, baseType: !64, size: 64, offset: 6208)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device_kobj", file: !20, line: 88, flags: DIFlagFwdDecl)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !19, file: !20, line: 107, baseType: !67, size: 128, offset: 6272)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !68, line: 178, size: 128, elements: !69)
!68 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!69 = !{!70, !72}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !67, file: !68, line: 179, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !67, file: !68, line: 179, baseType: !71, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!74 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !71)
!79 = !{!0, !80, !82, !151, !156, !158, !163, !165, !167, !169, !171, !173, !175, !180, !185}
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "cpuidle_detected_devices", scope: !2, file: !3, line: 34, type: !67, isLocal: false, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "__param_off", scope: !2, file: !3, line: 756, type: !84, isLocal: true, isDefinition: true, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !86, line: 69, size: 320, elements: !87)
!86 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!87 = !{!88, !92, !96, !116, !121, !125, !129}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !85, file: !86, line: 70, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !85, file: !86, line: 71, baseType: !93, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !95, line: 76, flags: DIFlagFwdDecl)
!95 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !85, file: !86, line: 72, baseType: !97, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !86, line: 47, size: 256, elements: !100)
!100 = !{!101, !102, !107, !112}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !99, file: !86, line: 49, baseType: !7, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !99, file: !86, line: 51, baseType: !103, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!35, !89, !106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !99, file: !86, line: 53, baseType: !108, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!35, !111, !106}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !99, file: !86, line: 55, baseType: !113, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !73}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !85, file: !86, line: 73, baseType: !117, size: 16, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !30, line: 19, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !32, line: 24, baseType: !120)
!120 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !85, file: !86, line: 74, baseType: !122, size: 8, offset: 208)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !30, line: 16, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !32, line: 20, baseType: !124)
!124 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !85, file: !86, line: 75, baseType: !126, size: 8, offset: 216)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !30, line: 17, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !32, line: 21, baseType: !128)
!128 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!129 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !86, line: 76, baseType: !130, size: 64, offset: 256)
!130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !86, line: 76, size: 64, elements: !131)
!131 = !{!132, !133, !140}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !130, file: !86, line: 77, baseType: !73, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !130, file: !86, line: 78, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !86, line: 86, size: 128, elements: !137)
!137 = !{!138, !139}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !136, file: !86, line: 87, baseType: !7, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !136, file: !86, line: 88, baseType: !111, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !130, file: !86, line: 79, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !86, line: 92, size: 256, elements: !144)
!144 = !{!145, !146, !147, !149, !150}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !143, file: !86, line: 94, baseType: !7, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !143, file: !86, line: 95, baseType: !7, size: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !143, file: !86, line: 96, baseType: !148, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !143, file: !86, line: 97, baseType: !97, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !143, file: !86, line: 98, baseType: !73, size: 64, offset: 192)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_offtype312", scope: !2, file: !3, line: 756, type: !153, isLocal: true, isDefinition: true, align: 8)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 200, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 25)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "__param_governor", scope: !2, file: !3, line: 757, type: !84, isLocal: true, isDefinition: true, align: 64)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_governortype313", scope: !2, file: !3, line: 757, type: !160, isLocal: true, isDefinition: true, align: 8)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 264, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 33)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpuidle_init314", scope: !2, file: !3, line: 758, type: !73, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "cpuidle_devices", scope: !2, file: !3, line: 30, type: !18, isLocal: false, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "cpuidle_dev", scope: !2, file: !3, line: 31, type: !19, isLocal: false, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "enabled_devices", scope: !2, file: !3, line: 36, type: !35, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "off", scope: !2, file: !3, line: 37, type: !35, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "initialized", scope: !2, file: !3, line: 38, type: !35, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "__param_str_off", scope: !2, file: !3, line: 756, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 96, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 12)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "__param_str_governor", scope: !2, file: !3, line: 757, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 136, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 17)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "__param_string_governor", scope: !2, file: !3, line: 757, type: !135, isLocal: true, isDefinition: true)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !188, line: 53, size: 192, elements: !189)
!188 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!189 = !{!190, !197, !213}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !187, file: !188, line: 54, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !192, line: 13, baseType: !193)
!192 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !68, line: 175, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 173, size: 64, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !194, file: !68, line: 174, baseType: !29, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !187, file: !188, line: 55, baseType: !198, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !199, line: 83, baseType: !200)
!199 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !199, line: 71, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, scope: !200, file: !199, line: 72, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !200, file: !199, line: 72, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !203, file: !199, line: 73, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !199, line: 20, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !206, file: !199, line: 21, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !210, line: 25, baseType: !211)
!210 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 25, elements: !212)
!212 = !{}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !187, file: !188, line: 59, baseType: !67, size: 128, offset: 64)
!214 = !{!"rsp"}
!215 = !{i32 7, !"Dwarf Version", i32 4}
!216 = !{i32 2, !"Debug Info Version", i32 3}
!217 = !{i32 1, !"wchar_size", i32 2}
!218 = !{i32 1, !"Code Model", i32 2}
!219 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!220 = distinct !DISubprogram(name: "cpuidle_disabled", scope: !3, file: !3, line: 40, type: !221, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!221 = !DISubroutineType(types: !222)
!222 = !{!35}
!223 = !DILocation(line: 42, column: 9, scope: !220)
!224 = !DILocation(line: 42, column: 2, scope: !220)
!225 = distinct !DISubprogram(name: "disable_cpuidle", scope: !3, file: !3, line: 44, type: !226, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!226 = !DISubroutineType(types: !227)
!227 = !{null}
!228 = !DILocation(line: 46, column: 6, scope: !225)
!229 = !DILocation(line: 47, column: 1, scope: !225)
!230 = distinct !DISubprogram(name: "cpuidle_not_available", scope: !3, file: !3, line: 49, type: !231, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !235, !18}
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !68, line: 30, baseType: !234)
!234 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver", file: !20, line: 122, size: 8704, elements: !237)
!237 = !{!238, !239, !240, !241, !268, !269, !270, !279}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !236, file: !20, line: 123, baseType: !89, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !236, file: !20, line: 124, baseType: !93, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "bctimer", scope: !236, file: !20, line: 127, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !236, file: !20, line: 129, baseType: !242, size: 8320, offset: 192)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 8320, elements: !54)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state", file: !20, line: 48, size: 832, elements: !244)
!244 = !{!245, !249, !253, !254, !255, !256, !257, !258, !259, !263, !267}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !243, file: !20, line: 49, baseType: !246, size: 128)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 128, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 16)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !243, file: !20, line: 50, baseType: !250, size: 256, offset: 128)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 256, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency_ns", scope: !243, file: !20, line: 52, baseType: !37, size: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency_ns", scope: !243, file: !20, line: 53, baseType: !37, size: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !243, file: !20, line: 54, baseType: !7, size: 32, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency", scope: !243, file: !20, line: 55, baseType: !7, size: 32, offset: 544)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "power_usage", scope: !243, file: !20, line: 56, baseType: !35, size: 32, offset: 576)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency", scope: !243, file: !20, line: 57, baseType: !7, size: 32, offset: 608)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "enter", scope: !243, file: !20, line: 59, baseType: !260, size: 64, offset: 640)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!35, !18, !235, !35}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "enter_dead", scope: !243, file: !20, line: 63, baseType: !264, size: 64, offset: 704)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!35, !18, !35}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "enter_s2idle", scope: !243, file: !20, line: 73, baseType: !260, size: 64, offset: 768)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !236, file: !20, line: 130, baseType: !35, size: 32, offset: 8512)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "safe_state_index", scope: !236, file: !20, line: 131, baseType: !35, size: 32, offset: 8544)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !236, file: !20, line: 134, baseType: !271, size: 64, offset: 8576)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !273, line: 17, size: 64, elements: !274)
!273 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !272, file: !273, line: 17, baseType: !276, size: 64)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 64, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 1)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !236, file: !20, line: 137, baseType: !89, size: 64, offset: 8640)
!280 = !DILocalVariable(name: "drv", arg: 1, scope: !230, file: !3, line: 49, type: !235)
!281 = !DILocation(line: 49, column: 51, scope: !230)
!282 = !DILocalVariable(name: "dev", arg: 2, scope: !230, file: !3, line: 50, type: !18)
!283 = !DILocation(line: 50, column: 30, scope: !230)
!284 = !DILocation(line: 52, column: 9, scope: !230)
!285 = !DILocation(line: 52, column: 13, scope: !230)
!286 = !DILocation(line: 52, column: 17, scope: !230)
!287 = !DILocation(line: 52, column: 29, scope: !230)
!288 = !DILocation(line: 52, column: 33, scope: !230)
!289 = !DILocation(line: 52, column: 37, scope: !230)
!290 = !DILocation(line: 52, column: 41, scope: !230)
!291 = !DILocation(line: 52, column: 45, scope: !230)
!292 = !DILocation(line: 52, column: 49, scope: !230)
!293 = !DILocation(line: 52, column: 54, scope: !230)
!294 = !DILocation(line: 52, column: 48, scope: !230)
!295 = !DILocation(line: 52, column: 2, scope: !230)
!296 = distinct !DISubprogram(name: "cpuidle_play_dead", scope: !3, file: !3, line: 60, type: !221, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!297 = !DILocalVariable(name: "dev", scope: !296, file: !3, line: 62, type: !18)
!298 = !DILocation(line: 62, column: 25, scope: !296)
!299 = !DILocation(line: 62, column: 31, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !3, line: 62, column: 31)
!301 = !DILocalVariable(name: "pscr_ret__", scope: !302, file: !3, line: 62, type: !18)
!302 = distinct !DILexicalBlock(scope: !300, file: !3, line: 62, column: 31)
!303 = !DILocation(line: 62, column: 31, scope: !302)
!304 = !DILocalVariable(name: "__vpp_verify", scope: !305, file: !3, line: 62, type: !306)
!305 = distinct !DILexicalBlock(scope: !302, file: !3, line: 62, column: 31)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!308 = !DILocation(line: 62, column: 31, scope: !305)
!309 = !DILocalVariable(name: "pfo_val__", scope: !310, file: !3, line: 62, type: !37)
!310 = distinct !DILexicalBlock(scope: !302, file: !3, line: 62, column: 31)
!311 = !DILocation(line: 62, column: 31, scope: !310)
!312 = !{i32 -2139965241}
!313 = !DILocalVariable(name: "drv", scope: !296, file: !3, line: 63, type: !235)
!314 = !DILocation(line: 63, column: 25, scope: !296)
!315 = !DILocation(line: 63, column: 54, scope: !296)
!316 = !DILocation(line: 63, column: 31, scope: !296)
!317 = !DILocalVariable(name: "i", scope: !296, file: !3, line: 64, type: !35)
!318 = !DILocation(line: 64, column: 6, scope: !296)
!319 = !DILocation(line: 66, column: 7, scope: !320)
!320 = distinct !DILexicalBlock(scope: !296, file: !3, line: 66, column: 6)
!321 = !DILocation(line: 66, column: 6, scope: !296)
!322 = !DILocation(line: 67, column: 3, scope: !320)
!323 = !DILocation(line: 70, column: 11, scope: !324)
!324 = distinct !DILexicalBlock(scope: !296, file: !3, line: 70, column: 2)
!325 = !DILocation(line: 70, column: 16, scope: !324)
!326 = !DILocation(line: 70, column: 28, scope: !324)
!327 = !DILocation(line: 70, column: 9, scope: !324)
!328 = !DILocation(line: 70, column: 7, scope: !324)
!329 = !DILocation(line: 70, column: 33, scope: !330)
!330 = distinct !DILexicalBlock(scope: !324, file: !3, line: 70, column: 2)
!331 = !DILocation(line: 70, column: 35, scope: !330)
!332 = !DILocation(line: 70, column: 2, scope: !324)
!333 = !DILocation(line: 71, column: 7, scope: !334)
!334 = distinct !DILexicalBlock(scope: !330, file: !3, line: 71, column: 7)
!335 = !DILocation(line: 71, column: 12, scope: !334)
!336 = !DILocation(line: 71, column: 19, scope: !334)
!337 = !DILocation(line: 71, column: 22, scope: !334)
!338 = !DILocation(line: 71, column: 7, scope: !330)
!339 = !DILocation(line: 72, column: 11, scope: !334)
!340 = !DILocation(line: 72, column: 16, scope: !334)
!341 = !DILocation(line: 72, column: 23, scope: !334)
!342 = !DILocation(line: 72, column: 26, scope: !334)
!343 = !DILocation(line: 72, column: 37, scope: !334)
!344 = !DILocation(line: 72, column: 42, scope: !334)
!345 = !DILocation(line: 72, column: 4, scope: !334)
!346 = !DILocation(line: 70, column: 42, scope: !330)
!347 = !DILocation(line: 70, column: 2, scope: !330)
!348 = distinct !{!348, !332, !349}
!349 = !DILocation(line: 72, column: 43, scope: !324)
!350 = !DILocation(line: 74, column: 2, scope: !296)
!351 = !DILocation(line: 75, column: 1, scope: !296)
!352 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !353, file: !353, line: 313, type: !354, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!353 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/lizy2001/genbc/linux")
!354 = !DISubroutineType(types: !355)
!355 = !{null, !89}
!356 = !DILocalVariable(name: "op", arg: 1, scope: !352, file: !353, line: 313, type: !89)
!357 = !DILocation(line: 313, column: 57, scope: !352)
!358 = !DILocation(line: 313, column: 63, scope: !352)
!359 = distinct !DISubprogram(name: "cpuidle_use_deepest_state", scope: !3, file: !3, line: 110, type: !360, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !37}
!362 = !DILocalVariable(name: "latency_limit_ns", arg: 1, scope: !359, file: !3, line: 110, type: !37)
!363 = !DILocation(line: 110, column: 36, scope: !359)
!364 = !DILocalVariable(name: "dev", scope: !359, file: !3, line: 112, type: !18)
!365 = !DILocation(line: 112, column: 25, scope: !359)
!366 = !DILocation(line: 114, column: 2, scope: !359)
!367 = !{i32 -2139965101}
!368 = !DILocation(line: 115, column: 8, scope: !359)
!369 = !DILocation(line: 115, column: 6, scope: !359)
!370 = !DILocation(line: 116, column: 6, scope: !371)
!371 = distinct !DILexicalBlock(scope: !359, file: !3, line: 116, column: 6)
!372 = !DILocation(line: 116, column: 6, scope: !359)
!373 = !DILocation(line: 117, column: 39, scope: !371)
!374 = !DILocation(line: 117, column: 3, scope: !371)
!375 = !DILocation(line: 117, column: 8, scope: !371)
!376 = !DILocation(line: 117, column: 37, scope: !371)
!377 = !DILocation(line: 118, column: 2, scope: !359)
!378 = !{i32 -2139965053}
!379 = !DILocation(line: 119, column: 1, scope: !359)
!380 = distinct !DISubprogram(name: "cpuidle_get_device", scope: !20, file: !20, line: 173, type: !381, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!381 = !DISubroutineType(types: !382)
!382 = !{!18}
!383 = !DILocation(line: 174, column: 9, scope: !384)
!384 = distinct !DILexicalBlock(scope: !380, file: !20, line: 174, column: 9)
!385 = !DILocalVariable(name: "pscr_ret__", scope: !386, file: !20, line: 174, type: !18)
!386 = distinct !DILexicalBlock(scope: !384, file: !20, line: 174, column: 9)
!387 = !DILocation(line: 174, column: 9, scope: !386)
!388 = !DILocalVariable(name: "__vpp_verify", scope: !389, file: !20, line: 174, type: !306)
!389 = distinct !DILexicalBlock(scope: !386, file: !20, line: 174, column: 9)
!390 = !DILocation(line: 174, column: 9, scope: !389)
!391 = !DILocalVariable(name: "pfo_val__", scope: !392, file: !20, line: 174, type: !37)
!392 = distinct !DILexicalBlock(scope: !386, file: !20, line: 174, column: 9)
!393 = !DILocation(line: 174, column: 9, scope: !392)
!394 = !{i32 -2143525915}
!395 = !DILocation(line: 174, column: 2, scope: !380)
!396 = distinct !DISubprogram(name: "cpuidle_find_deepest_state", scope: !3, file: !3, line: 129, type: !397, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!397 = !DISubroutineType(types: !398)
!398 = !{!35, !235, !18, !37}
!399 = !DILocalVariable(name: "drv", arg: 1, scope: !396, file: !3, line: 129, type: !235)
!400 = !DILocation(line: 129, column: 55, scope: !396)
!401 = !DILocalVariable(name: "dev", arg: 2, scope: !396, file: !3, line: 130, type: !18)
!402 = !DILocation(line: 130, column: 34, scope: !396)
!403 = !DILocalVariable(name: "latency_limit_ns", arg: 3, scope: !396, file: !3, line: 131, type: !37)
!404 = !DILocation(line: 131, column: 15, scope: !396)
!405 = !DILocation(line: 133, column: 28, scope: !396)
!406 = !DILocation(line: 133, column: 33, scope: !396)
!407 = !DILocation(line: 133, column: 38, scope: !396)
!408 = !DILocation(line: 133, column: 9, scope: !396)
!409 = !DILocation(line: 133, column: 2, scope: !396)
!410 = distinct !DISubprogram(name: "find_deepest_state", scope: !3, file: !3, line: 77, type: !411, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!411 = !DISubroutineType(types: !412)
!412 = !{!35, !235, !18, !37, !7, !233}
!413 = !DILocalVariable(name: "drv", arg: 1, scope: !410, file: !3, line: 77, type: !235)
!414 = !DILocation(line: 77, column: 54, scope: !410)
!415 = !DILocalVariable(name: "dev", arg: 2, scope: !410, file: !3, line: 78, type: !18)
!416 = !DILocation(line: 78, column: 33, scope: !410)
!417 = !DILocalVariable(name: "max_latency_ns", arg: 3, scope: !410, file: !3, line: 79, type: !37)
!418 = !DILocation(line: 79, column: 14, scope: !410)
!419 = !DILocalVariable(name: "forbidden_flags", arg: 4, scope: !410, file: !3, line: 80, type: !7)
!420 = !DILocation(line: 80, column: 23, scope: !410)
!421 = !DILocalVariable(name: "s2idle", arg: 5, scope: !410, file: !3, line: 81, type: !233)
!422 = !DILocation(line: 81, column: 15, scope: !410)
!423 = !DILocalVariable(name: "latency_req", scope: !410, file: !3, line: 83, type: !37)
!424 = !DILocation(line: 83, column: 6, scope: !410)
!425 = !DILocalVariable(name: "i", scope: !410, file: !3, line: 84, type: !35)
!426 = !DILocation(line: 84, column: 6, scope: !410)
!427 = !DILocalVariable(name: "ret", scope: !410, file: !3, line: 84, type: !35)
!428 = !DILocation(line: 84, column: 9, scope: !410)
!429 = !DILocation(line: 86, column: 9, scope: !430)
!430 = distinct !DILexicalBlock(scope: !410, file: !3, line: 86, column: 2)
!431 = !DILocation(line: 86, column: 7, scope: !430)
!432 = !DILocation(line: 86, column: 14, scope: !433)
!433 = distinct !DILexicalBlock(scope: !430, file: !3, line: 86, column: 2)
!434 = !DILocation(line: 86, column: 18, scope: !433)
!435 = !DILocation(line: 86, column: 23, scope: !433)
!436 = !DILocation(line: 86, column: 16, scope: !433)
!437 = !DILocation(line: 86, column: 2, scope: !430)
!438 = !DILocalVariable(name: "s", scope: !439, file: !3, line: 87, type: !440)
!439 = distinct !DILexicalBlock(scope: !433, file: !3, line: 86, column: 41)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!441 = !DILocation(line: 87, column: 25, scope: !439)
!442 = !DILocation(line: 87, column: 30, scope: !439)
!443 = !DILocation(line: 87, column: 35, scope: !439)
!444 = !DILocation(line: 87, column: 42, scope: !439)
!445 = !DILocation(line: 89, column: 7, scope: !446)
!446 = distinct !DILexicalBlock(scope: !439, file: !3, line: 89, column: 7)
!447 = !DILocation(line: 89, column: 12, scope: !446)
!448 = !DILocation(line: 89, column: 25, scope: !446)
!449 = !DILocation(line: 89, column: 28, scope: !446)
!450 = !DILocation(line: 89, column: 36, scope: !446)
!451 = !DILocation(line: 90, column: 7, scope: !446)
!452 = !DILocation(line: 90, column: 10, scope: !446)
!453 = !DILocation(line: 90, column: 29, scope: !446)
!454 = !DILocation(line: 90, column: 26, scope: !446)
!455 = !DILocation(line: 90, column: 41, scope: !446)
!456 = !DILocation(line: 91, column: 7, scope: !446)
!457 = !DILocation(line: 91, column: 10, scope: !446)
!458 = !DILocation(line: 91, column: 28, scope: !446)
!459 = !DILocation(line: 91, column: 26, scope: !446)
!460 = !DILocation(line: 91, column: 43, scope: !446)
!461 = !DILocation(line: 92, column: 8, scope: !446)
!462 = !DILocation(line: 92, column: 11, scope: !446)
!463 = !DILocation(line: 92, column: 19, scope: !446)
!464 = !DILocation(line: 92, column: 17, scope: !446)
!465 = !DILocation(line: 92, column: 36, scope: !446)
!466 = !DILocation(line: 93, column: 8, scope: !446)
!467 = !DILocation(line: 93, column: 15, scope: !446)
!468 = !DILocation(line: 93, column: 19, scope: !446)
!469 = !DILocation(line: 93, column: 22, scope: !446)
!470 = !DILocation(line: 89, column: 7, scope: !439)
!471 = !DILocation(line: 94, column: 4, scope: !446)
!472 = !DILocation(line: 96, column: 17, scope: !439)
!473 = !DILocation(line: 96, column: 20, scope: !439)
!474 = !DILocation(line: 96, column: 15, scope: !439)
!475 = !DILocation(line: 97, column: 9, scope: !439)
!476 = !DILocation(line: 97, column: 7, scope: !439)
!477 = !DILocation(line: 98, column: 2, scope: !439)
!478 = !DILocation(line: 86, column: 37, scope: !433)
!479 = !DILocation(line: 86, column: 2, scope: !433)
!480 = distinct !{!480, !437, !481}
!481 = !DILocation(line: 98, column: 2, scope: !430)
!482 = !DILocation(line: 99, column: 9, scope: !410)
!483 = !DILocation(line: 99, column: 2, scope: !410)
!484 = distinct !DISubprogram(name: "cpuidle_enter_s2idle", scope: !3, file: !3, line: 176, type: !485, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!485 = !DISubroutineType(types: !486)
!486 = !{!35, !235, !18}
!487 = !DILocalVariable(name: "drv", arg: 1, scope: !484, file: !3, line: 176, type: !235)
!488 = !DILocation(line: 176, column: 49, scope: !484)
!489 = !DILocalVariable(name: "dev", arg: 2, scope: !484, file: !3, line: 176, type: !18)
!490 = !DILocation(line: 176, column: 77, scope: !484)
!491 = !DILocalVariable(name: "index", scope: !484, file: !3, line: 178, type: !35)
!492 = !DILocation(line: 178, column: 6, scope: !484)
!493 = !DILocation(line: 185, column: 29, scope: !484)
!494 = !DILocation(line: 185, column: 34, scope: !484)
!495 = !DILocation(line: 185, column: 10, scope: !484)
!496 = !DILocation(line: 185, column: 8, scope: !484)
!497 = !DILocation(line: 186, column: 6, scope: !498)
!498 = distinct !DILexicalBlock(scope: !484, file: !3, line: 186, column: 6)
!499 = !DILocation(line: 186, column: 12, scope: !498)
!500 = !DILocation(line: 186, column: 6, scope: !484)
!501 = !DILocation(line: 187, column: 23, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !3, line: 186, column: 17)
!503 = !DILocation(line: 187, column: 28, scope: !502)
!504 = !DILocation(line: 187, column: 33, scope: !502)
!505 = !DILocation(line: 187, column: 3, scope: !502)
!506 = !DILocation(line: 188, column: 3, scope: !502)
!507 = !DILocation(line: 188, column: 3, scope: !508)
!508 = distinct !DILexicalBlock(scope: !502, file: !3, line: 188, column: 3)
!509 = !DILocation(line: 189, column: 2, scope: !502)
!510 = !DILocation(line: 190, column: 9, scope: !484)
!511 = !DILocation(line: 190, column: 2, scope: !484)
!512 = distinct !DISubprogram(name: "enter_s2idle_proper", scope: !3, file: !3, line: 137, type: !513, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !235, !18, !35}
!515 = !DILocalVariable(name: "flags", arg: 1, scope: !516, file: !517, line: 162, type: !74)
!516 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !517, file: !517, line: 162, type: !518, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!517 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!518 = !DISubroutineType(types: !519)
!519 = !{!35, !74}
!520 = !DILocation(line: 162, column: 67, scope: !516, inlinedAt: !521)
!521 = distinct !DILocation(line: 155, column: 6, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !3, line: 155, column: 6)
!523 = distinct !DILexicalBlock(scope: !524, file: !3, line: 155, column: 6)
!524 = distinct !DILexicalBlock(scope: !525, file: !3, line: 155, column: 6)
!525 = distinct !DILexicalBlock(scope: !512, file: !3, line: 155, column: 6)
!526 = !DILocalVariable(name: "drv", arg: 1, scope: !512, file: !3, line: 137, type: !235)
!527 = !DILocation(line: 137, column: 56, scope: !512)
!528 = !DILocalVariable(name: "dev", arg: 2, scope: !512, file: !3, line: 138, type: !18)
!529 = !DILocation(line: 138, column: 28, scope: !512)
!530 = !DILocalVariable(name: "index", arg: 3, scope: !512, file: !3, line: 138, type: !35)
!531 = !DILocation(line: 138, column: 37, scope: !512)
!532 = !DILocalVariable(name: "time_start", scope: !512, file: !3, line: 140, type: !27)
!533 = !DILocation(line: 140, column: 10, scope: !512)
!534 = !DILocalVariable(name: "time_end", scope: !512, file: !3, line: 140, type: !27)
!535 = !DILocation(line: 140, column: 22, scope: !512)
!536 = !DILocalVariable(name: "target_state", scope: !512, file: !3, line: 141, type: !440)
!537 = !DILocation(line: 141, column: 24, scope: !512)
!538 = !DILocation(line: 141, column: 40, scope: !512)
!539 = !DILocation(line: 141, column: 45, scope: !512)
!540 = !DILocation(line: 141, column: 52, scope: !512)
!541 = !DILocation(line: 143, column: 27, scope: !512)
!542 = !DILocation(line: 143, column: 15, scope: !512)
!543 = !DILocation(line: 143, column: 13, scope: !512)
!544 = !DILocation(line: 145, column: 2, scope: !512)
!545 = !DILocation(line: 151, column: 2, scope: !512)
!546 = !DILocation(line: 151, column: 2, scope: !547)
!547 = distinct !DILexicalBlock(scope: !512, file: !3, line: 151, column: 2)
!548 = !DILocation(line: 152, column: 8, scope: !549)
!549 = distinct !DILexicalBlock(scope: !512, file: !3, line: 152, column: 6)
!550 = !DILocation(line: 152, column: 22, scope: !549)
!551 = !DILocation(line: 152, column: 28, scope: !549)
!552 = !DILocation(line: 152, column: 6, scope: !512)
!553 = !DILocation(line: 153, column: 3, scope: !549)
!554 = !DILocation(line: 154, column: 2, scope: !512)
!555 = !DILocation(line: 154, column: 16, scope: !512)
!556 = !DILocation(line: 154, column: 29, scope: !512)
!557 = !DILocation(line: 154, column: 34, scope: !512)
!558 = !DILocation(line: 154, column: 39, scope: !512)
!559 = !DILocalVariable(name: "__ret_warn_on", scope: !524, file: !3, line: 155, type: !35)
!560 = !DILocation(line: 155, column: 6, scope: !524)
!561 = !DILocalVariable(name: "_flags", scope: !523, file: !3, line: 155, type: !74)
!562 = !DILocation(line: 155, column: 6, scope: !523)
!563 = !DILocalVariable(name: "__dummy", scope: !564, file: !3, line: 155, type: !74)
!564 = distinct !DILexicalBlock(scope: !565, file: !3, line: 155, column: 6)
!565 = distinct !DILexicalBlock(scope: !523, file: !3, line: 155, column: 6)
!566 = !DILocation(line: 155, column: 6, scope: !564)
!567 = !DILocalVariable(name: "__dummy2", scope: !564, file: !3, line: 155, type: !74)
!568 = !DILocation(line: 155, column: 6, scope: !565)
!569 = !DILocalVariable(name: "__dummy", scope: !570, file: !3, line: 155, type: !74)
!570 = distinct !DILexicalBlock(scope: !522, file: !3, line: 155, column: 6)
!571 = !DILocation(line: 155, column: 6, scope: !570)
!572 = !DILocalVariable(name: "__dummy2", scope: !570, file: !3, line: 155, type: !74)
!573 = !DILocation(line: 155, column: 6, scope: !522)
!574 = !DILocation(line: 164, column: 11, scope: !516, inlinedAt: !521)
!575 = !DILocation(line: 164, column: 17, scope: !516, inlinedAt: !521)
!576 = !DILocation(line: 164, column: 9, scope: !516, inlinedAt: !521)
!577 = !DILocation(line: 155, column: 6, scope: !578)
!578 = distinct !DILexicalBlock(scope: !524, file: !3, line: 155, column: 6)
!579 = !DILocation(line: 155, column: 6, scope: !580)
!580 = distinct !DILexicalBlock(scope: !578, file: !3, line: 155, column: 6)
!581 = !DILocation(line: 155, column: 6, scope: !582)
!582 = distinct !DILexicalBlock(scope: !580, file: !3, line: 155, column: 6)
!583 = !DILocation(line: 155, column: 6, scope: !584)
!584 = distinct !DILexicalBlock(scope: !580, file: !3, line: 155, column: 6)
!585 = !{i32 -2139963529, i32 -2139963500, i32 -2139963454, i32 -2139963396, i32 -2139963342, i32 -2139963288, i32 -2139963233, i32 -2139963202}
!586 = !DILocation(line: 155, column: 6, scope: !587)
!587 = distinct !DILexicalBlock(scope: !580, file: !3, line: 155, column: 6)
!588 = !{i32 -2139962784, i32 -2139962777, i32 -2139962725, i32 -2139962694, i32 -2139962664}
!589 = !DILocation(line: 155, column: 6, scope: !590)
!590 = distinct !DILexicalBlock(scope: !580, file: !3, line: 155, column: 6)
!591 = !DILocation(line: 155, column: 6, scope: !525)
!592 = !DILocation(line: 155, column: 6, scope: !512)
!593 = !DILocation(line: 156, column: 3, scope: !525)
!594 = !DILocation(line: 156, column: 3, scope: !595)
!595 = distinct !DILexicalBlock(scope: !525, file: !3, line: 156, column: 3)
!596 = !DILocation(line: 157, column: 8, scope: !597)
!597 = distinct !DILexicalBlock(scope: !512, file: !3, line: 157, column: 6)
!598 = !DILocation(line: 157, column: 22, scope: !597)
!599 = !DILocation(line: 157, column: 28, scope: !597)
!600 = !DILocation(line: 157, column: 6, scope: !512)
!601 = !DILocation(line: 158, column: 3, scope: !597)
!602 = !DILocation(line: 159, column: 2, scope: !512)
!603 = !DILocation(line: 160, column: 2, scope: !512)
!604 = !DILocation(line: 160, column: 2, scope: !605)
!605 = distinct !DILexicalBlock(scope: !512, file: !3, line: 160, column: 2)
!606 = !DILocation(line: 162, column: 25, scope: !512)
!607 = !DILocation(line: 162, column: 13, scope: !512)
!608 = !DILocation(line: 162, column: 11, scope: !512)
!609 = !DILocation(line: 164, column: 57, scope: !512)
!610 = !DILocation(line: 164, column: 67, scope: !512)
!611 = !DILocation(line: 164, column: 42, scope: !512)
!612 = !DILocation(line: 164, column: 2, scope: !512)
!613 = !DILocation(line: 164, column: 7, scope: !512)
!614 = !DILocation(line: 164, column: 20, scope: !512)
!615 = !DILocation(line: 164, column: 27, scope: !512)
!616 = !DILocation(line: 164, column: 39, scope: !512)
!617 = !DILocation(line: 165, column: 2, scope: !512)
!618 = !DILocation(line: 165, column: 7, scope: !512)
!619 = !DILocation(line: 165, column: 20, scope: !512)
!620 = !DILocation(line: 165, column: 27, scope: !512)
!621 = !DILocation(line: 165, column: 39, scope: !512)
!622 = !DILocation(line: 166, column: 1, scope: !512)
!623 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !624, file: !624, line: 661, type: !226, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!624 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!625 = !DILocalVariable(name: "__edi", scope: !626, file: !624, line: 663, type: !74)
!626 = distinct !DILexicalBlock(scope: !623, file: !624, line: 663, column: 2)
!627 = !DILocation(line: 663, column: 2, scope: !626)
!628 = !DILocalVariable(name: "__esi", scope: !626, file: !624, line: 663, type: !74)
!629 = !DILocalVariable(name: "__edx", scope: !626, file: !624, line: 663, type: !74)
!630 = !DILocalVariable(name: "__ecx", scope: !626, file: !624, line: 663, type: !74)
!631 = !DILocalVariable(name: "__eax", scope: !626, file: !624, line: 663, type: !74)
!632 = !{i32 -2145853414, i32 -2145852684, i32 -2145852450, i32 -2145852399, i32 -2145852371, i32 -2145852346, i32 -2145852662, i32 -2145852649, i32 -2145852211, i32 -2145852092, i32 -2145852557, i32 -2145852530, i32 -2145852502, i32 -2145852472}
!633 = !DILocation(line: 664, column: 1, scope: !623)
!634 = distinct !DISubprogram(name: "cpuidle_enter_state", scope: !3, file: !3, line: 200, type: !261, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!635 = !DILocation(line: 162, column: 67, scope: !516, inlinedAt: !636)
!636 = distinct !DILocation(line: 250, column: 7, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !3, line: 250, column: 7)
!638 = distinct !DILexicalBlock(scope: !639, file: !3, line: 250, column: 7)
!639 = distinct !DILexicalBlock(scope: !640, file: !3, line: 250, column: 7)
!640 = distinct !DILexicalBlock(scope: !641, file: !3, line: 250, column: 7)
!641 = distinct !DILexicalBlock(scope: !642, file: !3, line: 249, column: 17)
!642 = distinct !DILexicalBlock(scope: !634, file: !3, line: 249, column: 6)
!643 = !DILocalVariable(name: "dev", arg: 1, scope: !634, file: !3, line: 200, type: !18)
!644 = !DILocation(line: 200, column: 48, scope: !634)
!645 = !DILocalVariable(name: "drv", arg: 2, scope: !634, file: !3, line: 200, type: !235)
!646 = !DILocation(line: 200, column: 76, scope: !634)
!647 = !DILocalVariable(name: "index", arg: 3, scope: !634, file: !3, line: 201, type: !35)
!648 = !DILocation(line: 201, column: 8, scope: !634)
!649 = !DILocalVariable(name: "entered_state", scope: !634, file: !3, line: 203, type: !35)
!650 = !DILocation(line: 203, column: 6, scope: !634)
!651 = !DILocalVariable(name: "target_state", scope: !634, file: !3, line: 205, type: !440)
!652 = !DILocation(line: 205, column: 24, scope: !634)
!653 = !DILocation(line: 205, column: 40, scope: !634)
!654 = !DILocation(line: 205, column: 45, scope: !634)
!655 = !DILocation(line: 205, column: 52, scope: !634)
!656 = !DILocalVariable(name: "broadcast", scope: !634, file: !3, line: 206, type: !233)
!657 = !DILocation(line: 206, column: 7, scope: !634)
!658 = !DILocation(line: 206, column: 22, scope: !634)
!659 = !DILocation(line: 206, column: 36, scope: !634)
!660 = !DILocation(line: 206, column: 42, scope: !634)
!661 = !DILocation(line: 206, column: 20, scope: !634)
!662 = !DILocation(line: 206, column: 19, scope: !634)
!663 = !DILocalVariable(name: "time_start", scope: !634, file: !3, line: 207, type: !27)
!664 = !DILocation(line: 207, column: 10, scope: !634)
!665 = !DILocalVariable(name: "time_end", scope: !634, file: !3, line: 207, type: !27)
!666 = !DILocation(line: 207, column: 22, scope: !634)
!667 = !DILocation(line: 214, column: 6, scope: !668)
!668 = distinct !DILexicalBlock(scope: !634, file: !3, line: 214, column: 6)
!669 = !DILocation(line: 214, column: 16, scope: !668)
!670 = !DILocation(line: 214, column: 19, scope: !668)
!671 = !DILocation(line: 214, column: 6, scope: !634)
!672 = !DILocation(line: 215, column: 30, scope: !673)
!673 = distinct !DILexicalBlock(scope: !668, file: !3, line: 214, column: 43)
!674 = !DILocation(line: 215, column: 35, scope: !673)
!675 = !DILocation(line: 215, column: 40, scope: !673)
!676 = !DILocation(line: 215, column: 54, scope: !673)
!677 = !DILocation(line: 215, column: 11, scope: !673)
!678 = !DILocation(line: 215, column: 9, scope: !673)
!679 = !DILocation(line: 217, column: 7, scope: !680)
!680 = distinct !DILexicalBlock(scope: !673, file: !3, line: 217, column: 7)
!681 = !DILocation(line: 217, column: 13, scope: !680)
!682 = !DILocation(line: 217, column: 7, scope: !673)
!683 = !DILocation(line: 218, column: 4, scope: !684)
!684 = distinct !DILexicalBlock(scope: !680, file: !3, line: 217, column: 18)
!685 = !DILocation(line: 219, column: 4, scope: !684)
!686 = !DILocation(line: 221, column: 19, scope: !673)
!687 = !DILocation(line: 221, column: 24, scope: !673)
!688 = !DILocation(line: 221, column: 31, scope: !673)
!689 = !DILocation(line: 221, column: 16, scope: !673)
!690 = !DILocation(line: 222, column: 13, scope: !673)
!691 = !DILocation(line: 223, column: 2, scope: !673)
!692 = !DILocation(line: 225, column: 6, scope: !693)
!693 = distinct !DILexicalBlock(scope: !634, file: !3, line: 225, column: 6)
!694 = !DILocation(line: 225, column: 20, scope: !693)
!695 = !DILocation(line: 225, column: 26, scope: !693)
!696 = !DILocation(line: 225, column: 6, scope: !634)
!697 = !DILocation(line: 226, column: 12, scope: !693)
!698 = !DILocation(line: 226, column: 17, scope: !693)
!699 = !DILocation(line: 226, column: 3, scope: !693)
!700 = !DILocation(line: 229, column: 23, scope: !634)
!701 = !DILocation(line: 229, column: 2, scope: !634)
!702 = !DILocation(line: 231, column: 17, scope: !634)
!703 = !DILocation(line: 231, column: 24, scope: !634)
!704 = !DILocation(line: 231, column: 29, scope: !634)
!705 = !DILocation(line: 231, column: 2, scope: !634)
!706 = !DILocation(line: 232, column: 27, scope: !634)
!707 = !DILocation(line: 232, column: 15, scope: !634)
!708 = !DILocation(line: 232, column: 13, scope: !634)
!709 = !DILocation(line: 234, column: 2, scope: !634)
!710 = !DILocation(line: 234, column: 2, scope: !711)
!711 = distinct !DILexicalBlock(scope: !634, file: !3, line: 234, column: 2)
!712 = !DILocation(line: 235, column: 8, scope: !713)
!713 = distinct !DILexicalBlock(scope: !634, file: !3, line: 235, column: 6)
!714 = !DILocation(line: 235, column: 22, scope: !713)
!715 = !DILocation(line: 235, column: 28, scope: !713)
!716 = !DILocation(line: 235, column: 6, scope: !634)
!717 = !DILocation(line: 236, column: 3, scope: !713)
!718 = !DILocation(line: 237, column: 18, scope: !634)
!719 = !DILocation(line: 237, column: 32, scope: !634)
!720 = !DILocation(line: 237, column: 38, scope: !634)
!721 = !DILocation(line: 237, column: 43, scope: !634)
!722 = !DILocation(line: 237, column: 48, scope: !634)
!723 = !DILocation(line: 237, column: 16, scope: !634)
!724 = !DILocation(line: 238, column: 8, scope: !725)
!725 = distinct !DILexicalBlock(scope: !634, file: !3, line: 238, column: 6)
!726 = !DILocation(line: 238, column: 22, scope: !725)
!727 = !DILocation(line: 238, column: 28, scope: !725)
!728 = !DILocation(line: 238, column: 6, scope: !634)
!729 = !DILocation(line: 239, column: 3, scope: !725)
!730 = !DILocation(line: 240, column: 2, scope: !634)
!731 = !DILocation(line: 240, column: 2, scope: !732)
!732 = distinct !DILexicalBlock(scope: !634, file: !3, line: 240, column: 2)
!733 = !DILocation(line: 242, column: 2, scope: !634)
!734 = !DILocation(line: 243, column: 25, scope: !634)
!735 = !DILocation(line: 243, column: 13, scope: !634)
!736 = !DILocation(line: 243, column: 11, scope: !634)
!737 = !DILocation(line: 244, column: 33, scope: !634)
!738 = !DILocation(line: 244, column: 38, scope: !634)
!739 = !DILocation(line: 244, column: 2, scope: !634)
!740 = !DILocation(line: 247, column: 2, scope: !634)
!741 = !DILocation(line: 249, column: 6, scope: !642)
!742 = !DILocation(line: 249, column: 6, scope: !634)
!743 = !DILocalVariable(name: "__ret_warn_on", scope: !639, file: !3, line: 250, type: !35)
!744 = !DILocation(line: 250, column: 7, scope: !639)
!745 = !DILocalVariable(name: "_flags", scope: !638, file: !3, line: 250, type: !74)
!746 = !DILocation(line: 250, column: 7, scope: !638)
!747 = !DILocalVariable(name: "__dummy", scope: !748, file: !3, line: 250, type: !74)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 250, column: 7)
!749 = distinct !DILexicalBlock(scope: !638, file: !3, line: 250, column: 7)
!750 = !DILocation(line: 250, column: 7, scope: !748)
!751 = !DILocalVariable(name: "__dummy2", scope: !748, file: !3, line: 250, type: !74)
!752 = !DILocation(line: 250, column: 7, scope: !749)
!753 = !DILocalVariable(name: "__dummy", scope: !754, file: !3, line: 250, type: !74)
!754 = distinct !DILexicalBlock(scope: !637, file: !3, line: 250, column: 7)
!755 = !DILocation(line: 250, column: 7, scope: !754)
!756 = !DILocalVariable(name: "__dummy2", scope: !754, file: !3, line: 250, type: !74)
!757 = !DILocation(line: 250, column: 7, scope: !637)
!758 = !DILocation(line: 164, column: 11, scope: !516, inlinedAt: !636)
!759 = !DILocation(line: 164, column: 17, scope: !516, inlinedAt: !636)
!760 = !DILocation(line: 164, column: 9, scope: !516, inlinedAt: !636)
!761 = !DILocation(line: 250, column: 7, scope: !762)
!762 = distinct !DILexicalBlock(scope: !639, file: !3, line: 250, column: 7)
!763 = !DILocation(line: 250, column: 7, scope: !764)
!764 = distinct !DILexicalBlock(scope: !762, file: !3, line: 250, column: 7)
!765 = !DILocation(line: 250, column: 7, scope: !766)
!766 = distinct !DILexicalBlock(scope: !764, file: !3, line: 250, column: 7)
!767 = !DILocation(line: 250, column: 7, scope: !768)
!768 = distinct !DILexicalBlock(scope: !764, file: !3, line: 250, column: 7)
!769 = !{i32 -2139960446, i32 -2139960417, i32 -2139960371, i32 -2139960313, i32 -2139960259, i32 -2139960205, i32 -2139960150, i32 -2139960119}
!770 = !DILocation(line: 250, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !764, file: !3, line: 250, column: 7)
!772 = !{i32 -2139959701, i32 -2139959694, i32 -2139959642, i32 -2139959611, i32 -2139959581}
!773 = !DILocation(line: 250, column: 7, scope: !774)
!774 = distinct !DILexicalBlock(scope: !764, file: !3, line: 250, column: 7)
!775 = !DILocation(line: 250, column: 7, scope: !640)
!776 = !DILocation(line: 250, column: 7, scope: !641)
!777 = !DILocation(line: 251, column: 4, scope: !640)
!778 = !DILocation(line: 251, column: 4, scope: !779)
!779 = distinct !DILexicalBlock(scope: !640, file: !3, line: 251, column: 4)
!780 = !DILocation(line: 253, column: 3, scope: !641)
!781 = !DILocation(line: 254, column: 2, scope: !641)
!782 = !DILocation(line: 256, column: 32, scope: !783)
!783 = distinct !DILexicalBlock(scope: !634, file: !3, line: 256, column: 6)
!784 = !DILocation(line: 256, column: 37, scope: !783)
!785 = !DILocation(line: 256, column: 7, scope: !783)
!786 = !DILocation(line: 256, column: 6, scope: !634)
!787 = !DILocation(line: 257, column: 3, scope: !783)
!788 = !DILocation(line: 257, column: 3, scope: !789)
!789 = distinct !DILexicalBlock(scope: !783, file: !3, line: 257, column: 3)
!790 = !DILocation(line: 259, column: 6, scope: !791)
!791 = distinct !DILexicalBlock(scope: !634, file: !3, line: 259, column: 6)
!792 = !DILocation(line: 259, column: 20, scope: !791)
!793 = !DILocation(line: 259, column: 6, scope: !634)
!794 = !DILocalVariable(name: "diff", scope: !795, file: !3, line: 260, type: !29)
!795 = distinct !DILexicalBlock(scope: !791, file: !3, line: 259, column: 26)
!796 = !DILocation(line: 260, column: 7, scope: !795)
!797 = !DILocalVariable(name: "delay", scope: !795, file: !3, line: 260, type: !29)
!798 = !DILocation(line: 260, column: 13, scope: !795)
!799 = !DILocation(line: 260, column: 21, scope: !795)
!800 = !DILocation(line: 260, column: 26, scope: !795)
!801 = !DILocation(line: 260, column: 33, scope: !795)
!802 = !DILocation(line: 260, column: 48, scope: !795)
!803 = !DILocalVariable(name: "i", scope: !795, file: !3, line: 261, type: !35)
!804 = !DILocation(line: 261, column: 7, scope: !795)
!805 = !DILocation(line: 268, column: 10, scope: !795)
!806 = !DILocation(line: 268, column: 8, scope: !795)
!807 = !DILocation(line: 270, column: 28, scope: !795)
!808 = !DILocation(line: 270, column: 3, scope: !795)
!809 = !DILocation(line: 270, column: 8, scope: !795)
!810 = !DILocation(line: 270, column: 26, scope: !795)
!811 = !DILocation(line: 271, column: 47, scope: !795)
!812 = !DILocation(line: 271, column: 3, scope: !795)
!813 = !DILocation(line: 271, column: 8, scope: !795)
!814 = !DILocation(line: 271, column: 21, scope: !795)
!815 = !DILocation(line: 271, column: 36, scope: !795)
!816 = !DILocation(line: 271, column: 44, scope: !795)
!817 = !DILocation(line: 272, column: 3, scope: !795)
!818 = !DILocation(line: 272, column: 8, scope: !795)
!819 = !DILocation(line: 272, column: 21, scope: !795)
!820 = !DILocation(line: 272, column: 36, scope: !795)
!821 = !DILocation(line: 272, column: 41, scope: !795)
!822 = !DILocation(line: 274, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !795, file: !3, line: 274, column: 7)
!824 = !DILocation(line: 274, column: 14, scope: !823)
!825 = !DILocation(line: 274, column: 19, scope: !823)
!826 = !DILocation(line: 274, column: 26, scope: !823)
!827 = !DILocation(line: 274, column: 41, scope: !823)
!828 = !DILocation(line: 274, column: 12, scope: !823)
!829 = !DILocation(line: 274, column: 7, scope: !795)
!830 = !DILocation(line: 275, column: 13, scope: !831)
!831 = distinct !DILexicalBlock(scope: !832, file: !3, line: 275, column: 4)
!832 = distinct !DILexicalBlock(scope: !823, file: !3, line: 274, column: 62)
!833 = !DILocation(line: 275, column: 27, scope: !831)
!834 = !DILocation(line: 275, column: 11, scope: !831)
!835 = !DILocation(line: 275, column: 9, scope: !831)
!836 = !DILocation(line: 275, column: 32, scope: !837)
!837 = distinct !DILexicalBlock(scope: !831, file: !3, line: 275, column: 4)
!838 = !DILocation(line: 275, column: 34, scope: !837)
!839 = !DILocation(line: 275, column: 4, scope: !831)
!840 = !DILocation(line: 276, column: 9, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 276, column: 9)
!842 = distinct !DILexicalBlock(scope: !837, file: !3, line: 275, column: 45)
!843 = !DILocation(line: 276, column: 14, scope: !841)
!844 = !DILocation(line: 276, column: 27, scope: !841)
!845 = !DILocation(line: 276, column: 30, scope: !841)
!846 = !DILocation(line: 276, column: 9, scope: !842)
!847 = !DILocation(line: 277, column: 6, scope: !841)
!848 = !DILocation(line: 280, column: 5, scope: !842)
!849 = !DILocation(line: 280, column: 10, scope: !842)
!850 = !DILocation(line: 280, column: 23, scope: !842)
!851 = !DILocation(line: 280, column: 38, scope: !842)
!852 = !DILocation(line: 280, column: 43, scope: !842)
!853 = !DILocation(line: 281, column: 5, scope: !842)
!854 = !DILocation(line: 275, column: 41, scope: !837)
!855 = !DILocation(line: 275, column: 4, scope: !837)
!856 = distinct !{!856, !839, !857}
!857 = !DILocation(line: 282, column: 4, scope: !831)
!858 = !DILocation(line: 283, column: 3, scope: !832)
!859 = !DILocation(line: 283, column: 14, scope: !860)
!860 = distinct !DILexicalBlock(scope: !823, file: !3, line: 283, column: 14)
!861 = !DILocation(line: 283, column: 21, scope: !860)
!862 = !DILocation(line: 283, column: 19, scope: !860)
!863 = !DILocation(line: 283, column: 14, scope: !823)
!864 = !DILocation(line: 284, column: 13, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !3, line: 284, column: 4)
!866 = distinct !DILexicalBlock(scope: !860, file: !3, line: 283, column: 28)
!867 = !DILocation(line: 284, column: 27, scope: !865)
!868 = !DILocation(line: 284, column: 11, scope: !865)
!869 = !DILocation(line: 284, column: 9, scope: !865)
!870 = !DILocation(line: 284, column: 32, scope: !871)
!871 = distinct !DILexicalBlock(scope: !865, file: !3, line: 284, column: 4)
!872 = !DILocation(line: 284, column: 36, scope: !871)
!873 = !DILocation(line: 284, column: 41, scope: !871)
!874 = !DILocation(line: 284, column: 34, scope: !871)
!875 = !DILocation(line: 284, column: 4, scope: !865)
!876 = !DILocation(line: 285, column: 9, scope: !877)
!877 = distinct !DILexicalBlock(scope: !878, file: !3, line: 285, column: 9)
!878 = distinct !DILexicalBlock(scope: !871, file: !3, line: 284, column: 59)
!879 = !DILocation(line: 285, column: 14, scope: !877)
!880 = !DILocation(line: 285, column: 27, scope: !877)
!881 = !DILocation(line: 285, column: 30, scope: !877)
!882 = !DILocation(line: 285, column: 9, scope: !878)
!883 = !DILocation(line: 286, column: 6, scope: !877)
!884 = !DILocation(line: 292, column: 9, scope: !885)
!885 = distinct !DILexicalBlock(scope: !878, file: !3, line: 292, column: 9)
!886 = !DILocation(line: 292, column: 16, scope: !885)
!887 = !DILocation(line: 292, column: 14, scope: !885)
!888 = !DILocation(line: 292, column: 25, scope: !885)
!889 = !DILocation(line: 292, column: 30, scope: !885)
!890 = !DILocation(line: 292, column: 37, scope: !885)
!891 = !DILocation(line: 292, column: 40, scope: !885)
!892 = !DILocation(line: 292, column: 22, scope: !885)
!893 = !DILocation(line: 292, column: 9, scope: !878)
!894 = !DILocation(line: 293, column: 6, scope: !885)
!895 = !DILocation(line: 293, column: 11, scope: !885)
!896 = !DILocation(line: 293, column: 24, scope: !885)
!897 = !DILocation(line: 293, column: 39, scope: !885)
!898 = !DILocation(line: 293, column: 44, scope: !885)
!899 = !DILocation(line: 295, column: 5, scope: !878)
!900 = !DILocation(line: 284, column: 55, scope: !871)
!901 = !DILocation(line: 284, column: 4, scope: !871)
!902 = distinct !{!902, !875, !903}
!903 = !DILocation(line: 296, column: 4, scope: !865)
!904 = !DILocation(line: 297, column: 3, scope: !866)
!905 = !DILocation(line: 298, column: 2, scope: !795)
!906 = !DILocation(line: 299, column: 3, scope: !907)
!907 = distinct !DILexicalBlock(scope: !791, file: !3, line: 298, column: 9)
!908 = !DILocation(line: 299, column: 8, scope: !907)
!909 = !DILocation(line: 299, column: 26, scope: !907)
!910 = !DILocation(line: 300, column: 3, scope: !907)
!911 = !DILocation(line: 300, column: 8, scope: !907)
!912 = !DILocation(line: 300, column: 21, scope: !907)
!913 = !DILocation(line: 300, column: 28, scope: !907)
!914 = !DILocation(line: 300, column: 36, scope: !907)
!915 = !DILocation(line: 303, column: 9, scope: !634)
!916 = !DILocation(line: 303, column: 2, scope: !634)
!917 = !DILocation(line: 304, column: 1, scope: !634)
!918 = distinct !DISubprogram(name: "tick_broadcast_enter", scope: !12, file: !12, line: 98, type: !221, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!919 = !DILocation(line: 100, column: 9, scope: !918)
!920 = !DILocation(line: 100, column: 2, scope: !918)
!921 = distinct !DISubprogram(name: "trace_cpu_idle", scope: !922, file: !922, line: 36, type: !923, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!922 = !DIFile(filename: "./include/trace/events/power.h", directory: "/home/lizy2001/genbc/linux")
!923 = !DISubroutineType(types: !924)
!924 = !{null, !7, !7}
!925 = !DILocalVariable(name: "state", arg: 1, scope: !921, file: !922, line: 36, type: !7)
!926 = !DILocation(line: 36, column: 1, scope: !921)
!927 = !DILocalVariable(name: "cpu_id", arg: 2, scope: !921, file: !922, line: 36, type: !7)
!928 = distinct !DISubprogram(name: "ns_to_ktime", scope: !28, file: !28, line: 222, type: !929, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!929 = !DISubroutineType(types: !930)
!930 = !{!27, !37}
!931 = !DILocalVariable(name: "ns", arg: 1, scope: !928, file: !28, line: 222, type: !37)
!932 = !DILocation(line: 222, column: 39, scope: !928)
!933 = !DILocation(line: 224, column: 9, scope: !928)
!934 = !DILocation(line: 224, column: 2, scope: !928)
!935 = distinct !DISubprogram(name: "local_clock", scope: !936, file: !936, line: 82, type: !937, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!936 = !DIFile(filename: "./include/linux/sched/clock.h", directory: "/home/lizy2001/genbc/linux")
!937 = !DISubroutineType(types: !938)
!938 = !{!37}
!939 = !DILocation(line: 84, column: 9, scope: !935)
!940 = !DILocation(line: 84, column: 2, scope: !935)
!941 = distinct !DISubprogram(name: "rcu_idle_enter", scope: !942, file: !942, line: 84, type: !226, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!942 = !DIFile(filename: "./include/linux/rcutiny.h", directory: "/home/lizy2001/genbc/linux")
!943 = !DILocation(line: 84, column: 43, scope: !941)
!944 = distinct !DISubprogram(name: "rcu_idle_exit", scope: !942, file: !942, line: 85, type: !226, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!945 = !DILocation(line: 85, column: 42, scope: !944)
!946 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !624, file: !624, line: 646, type: !947, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!947 = !DISubroutineType(types: !948)
!948 = !{!74}
!949 = !DILocalVariable(name: "__ret", scope: !950, file: !624, line: 648, type: !74)
!950 = distinct !DILexicalBlock(scope: !946, file: !624, line: 648, column: 9)
!951 = !DILocation(line: 648, column: 9, scope: !950)
!952 = !DILocalVariable(name: "__edi", scope: !950, file: !624, line: 648, type: !74)
!953 = !DILocalVariable(name: "__esi", scope: !950, file: !624, line: 648, type: !74)
!954 = !DILocalVariable(name: "__edx", scope: !950, file: !624, line: 648, type: !74)
!955 = !DILocalVariable(name: "__ecx", scope: !950, file: !624, line: 648, type: !74)
!956 = !DILocalVariable(name: "__eax", scope: !950, file: !624, line: 648, type: !74)
!957 = !DILocation(line: 648, column: 9, scope: !958)
!958 = distinct !DILexicalBlock(scope: !959, file: !624, line: 648, column: 9)
!959 = distinct !DILexicalBlock(scope: !950, file: !624, line: 648, column: 9)
!960 = !{i32 -2145863092, i32 -2145860777, i32 -2145860543, i32 -2145860492, i32 -2145860464, i32 -2145860439, i32 -2145860755, i32 -2145860742, i32 -2145860304, i32 -2145860185, i32 -2145860650, i32 -2145860623, i32 -2145860595, i32 -2145860565}
!961 = !DILocalVariable(name: "__mask", scope: !962, file: !624, line: 648, type: !74)
!962 = distinct !DILexicalBlock(scope: !958, file: !624, line: 648, column: 9)
!963 = !DILocation(line: 648, column: 9, scope: !962)
!964 = !DILocation(line: 648, column: 9, scope: !959)
!965 = !DILocation(line: 648, column: 2, scope: !946)
!966 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !624, file: !624, line: 656, type: !226, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!967 = !DILocalVariable(name: "__edi", scope: !968, file: !624, line: 658, type: !74)
!968 = distinct !DILexicalBlock(scope: !966, file: !624, line: 658, column: 2)
!969 = !DILocation(line: 658, column: 2, scope: !968)
!970 = !DILocalVariable(name: "__esi", scope: !968, file: !624, line: 658, type: !74)
!971 = !DILocalVariable(name: "__edx", scope: !968, file: !624, line: 658, type: !74)
!972 = !DILocalVariable(name: "__ecx", scope: !968, file: !624, line: 658, type: !74)
!973 = !DILocalVariable(name: "__eax", scope: !968, file: !624, line: 658, type: !74)
!974 = !{i32 -2145855998, i32 -2145855266, i32 -2145855032, i32 -2145854981, i32 -2145854953, i32 -2145854928, i32 -2145855244, i32 -2145855231, i32 -2145854793, i32 -2145854674, i32 -2145855139, i32 -2145855112, i32 -2145855084, i32 -2145855054}
!975 = !DILocation(line: 659, column: 1, scope: !966)
!976 = distinct !DISubprogram(name: "tick_broadcast_exit", scope: !12, file: !12, line: 102, type: !226, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!977 = !DILocation(line: 104, column: 2, scope: !976)
!978 = !DILocation(line: 105, column: 1, scope: !976)
!979 = distinct !DISubprogram(name: "cpuidle_state_is_coupled", scope: !980, file: !980, line: 49, type: !981, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!980 = !DIFile(filename: "drivers/cpuidle/cpuidle.h", directory: "/home/lizy2001/genbc/linux")
!981 = !DISubroutineType(types: !982)
!982 = !{!233, !235, !35}
!983 = !DILocalVariable(name: "drv", arg: 1, scope: !979, file: !980, line: 49, type: !235)
!984 = !DILocation(line: 49, column: 54, scope: !979)
!985 = !DILocalVariable(name: "state", arg: 2, scope: !979, file: !980, line: 49, type: !35)
!986 = !DILocation(line: 49, column: 63, scope: !979)
!987 = !DILocation(line: 51, column: 2, scope: !979)
!988 = distinct !DISubprogram(name: "cpuidle_select", scope: !3, file: !3, line: 319, type: !989, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!989 = !DISubroutineType(types: !990)
!990 = !{!35, !235, !18, !991}
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!992 = !DILocalVariable(name: "drv", arg: 1, scope: !988, file: !3, line: 319, type: !235)
!993 = !DILocation(line: 319, column: 43, scope: !988)
!994 = !DILocalVariable(name: "dev", arg: 2, scope: !988, file: !3, line: 319, type: !18)
!995 = !DILocation(line: 319, column: 71, scope: !988)
!996 = !DILocalVariable(name: "stop_tick", arg: 3, scope: !988, file: !3, line: 320, type: !991)
!997 = !DILocation(line: 320, column: 12, scope: !988)
!998 = !DILocation(line: 322, column: 9, scope: !988)
!999 = !DILocation(line: 322, column: 32, scope: !988)
!1000 = !DILocation(line: 322, column: 39, scope: !988)
!1001 = !DILocation(line: 322, column: 44, scope: !988)
!1002 = !DILocation(line: 322, column: 49, scope: !988)
!1003 = !DILocation(line: 322, column: 2, scope: !988)
!1004 = distinct !DISubprogram(name: "cpuidle_enter", scope: !3, file: !3, line: 335, type: !1005, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!35, !235, !18, !35}
!1007 = !DILocalVariable(name: "drv", arg: 1, scope: !1004, file: !3, line: 335, type: !235)
!1008 = !DILocation(line: 335, column: 42, scope: !1004)
!1009 = !DILocalVariable(name: "dev", arg: 2, scope: !1004, file: !3, line: 335, type: !18)
!1010 = !DILocation(line: 335, column: 70, scope: !1004)
!1011 = !DILocalVariable(name: "index", arg: 3, scope: !1004, file: !3, line: 336, type: !35)
!1012 = !DILocation(line: 336, column: 9, scope: !1004)
!1013 = !DILocalVariable(name: "ret", scope: !1004, file: !3, line: 338, type: !35)
!1014 = !DILocation(line: 338, column: 6, scope: !1004)
!1015 = !DILocation(line: 346, column: 2, scope: !1004)
!1016 = !DILocation(line: 346, column: 2, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 346, column: 2)
!1018 = !DILocation(line: 346, column: 2, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 346, column: 2)
!1020 = !DILocation(line: 346, column: 2, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 346, column: 2)
!1022 = !DILocation(line: 348, column: 31, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 348, column: 6)
!1024 = !DILocation(line: 348, column: 36, scope: !1023)
!1025 = !DILocation(line: 348, column: 6, scope: !1023)
!1026 = !DILocation(line: 348, column: 6, scope: !1004)
!1027 = !DILocation(line: 349, column: 37, scope: !1023)
!1028 = !DILocation(line: 349, column: 42, scope: !1023)
!1029 = !DILocation(line: 349, column: 47, scope: !1023)
!1030 = !DILocation(line: 349, column: 9, scope: !1023)
!1031 = !DILocation(line: 349, column: 7, scope: !1023)
!1032 = !DILocation(line: 349, column: 3, scope: !1023)
!1033 = !DILocation(line: 351, column: 29, scope: !1023)
!1034 = !DILocation(line: 351, column: 34, scope: !1023)
!1035 = !DILocation(line: 351, column: 39, scope: !1023)
!1036 = !DILocation(line: 351, column: 9, scope: !1023)
!1037 = !DILocation(line: 351, column: 7, scope: !1023)
!1038 = !DILocation(line: 353, column: 2, scope: !1004)
!1039 = !DILocation(line: 353, column: 2, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 353, column: 2)
!1041 = !DILocation(line: 353, column: 2, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 353, column: 2)
!1043 = !DILocation(line: 353, column: 2, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 353, column: 2)
!1045 = !DILocation(line: 354, column: 9, scope: !1004)
!1046 = !DILocation(line: 354, column: 2, scope: !1004)
!1047 = distinct !DISubprogram(name: "tick_nohz_get_next_hrtimer", scope: !12, file: !12, line: 160, type: !1048, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!27}
!1050 = !DILocation(line: 163, column: 9, scope: !1047)
!1051 = !DILocation(line: 163, column: 2, scope: !1047)
!1052 = distinct !DISubprogram(name: "cpuidle_enter_state_coupled", scope: !980, file: !980, line: 59, type: !261, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1053 = !DILocalVariable(name: "dev", arg: 1, scope: !1052, file: !980, line: 59, type: !18)
!1054 = !DILocation(line: 59, column: 70, scope: !1052)
!1055 = !DILocalVariable(name: "drv", arg: 2, scope: !1052, file: !980, line: 60, type: !235)
!1056 = !DILocation(line: 60, column: 26, scope: !1052)
!1057 = !DILocalVariable(name: "next_state", arg: 3, scope: !1052, file: !980, line: 60, type: !35)
!1058 = !DILocation(line: 60, column: 35, scope: !1052)
!1059 = !DILocation(line: 62, column: 2, scope: !1052)
!1060 = distinct !DISubprogram(name: "cpuidle_reflect", scope: !3, file: !3, line: 365, type: !1061, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{null, !18, !35}
!1063 = !DILocalVariable(name: "dev", arg: 1, scope: !1060, file: !3, line: 365, type: !18)
!1064 = !DILocation(line: 365, column: 45, scope: !1060)
!1065 = !DILocalVariable(name: "index", arg: 2, scope: !1060, file: !3, line: 365, type: !35)
!1066 = !DILocation(line: 365, column: 54, scope: !1060)
!1067 = !DILocation(line: 367, column: 6, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 367, column: 6)
!1069 = !DILocation(line: 367, column: 29, scope: !1068)
!1070 = !DILocation(line: 367, column: 37, scope: !1068)
!1071 = !DILocation(line: 367, column: 40, scope: !1068)
!1072 = !DILocation(line: 367, column: 46, scope: !1068)
!1073 = !DILocation(line: 367, column: 6, scope: !1060)
!1074 = !DILocation(line: 368, column: 3, scope: !1068)
!1075 = !DILocation(line: 368, column: 26, scope: !1068)
!1076 = !DILocation(line: 368, column: 34, scope: !1068)
!1077 = !DILocation(line: 368, column: 39, scope: !1068)
!1078 = !DILocation(line: 369, column: 1, scope: !1060)
!1079 = distinct !DISubprogram(name: "cpuidle_poll_time", scope: !3, file: !3, line: 379, type: !1080, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!37, !235, !18}
!1082 = !DILocalVariable(name: "drv", arg: 1, scope: !1079, file: !3, line: 379, type: !235)
!1083 = !DILocation(line: 379, column: 46, scope: !1079)
!1084 = !DILocalVariable(name: "dev", arg: 2, scope: !1079, file: !3, line: 380, type: !18)
!1085 = !DILocation(line: 380, column: 32, scope: !1079)
!1086 = !DILocalVariable(name: "i", scope: !1079, file: !3, line: 382, type: !35)
!1087 = !DILocation(line: 382, column: 6, scope: !1079)
!1088 = !DILocalVariable(name: "limit_ns", scope: !1079, file: !3, line: 383, type: !37)
!1089 = !DILocation(line: 383, column: 6, scope: !1079)
!1090 = !DILocation(line: 385, column: 6, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 385, column: 6)
!1092 = !DILocation(line: 385, column: 11, scope: !1091)
!1093 = !DILocation(line: 385, column: 6, scope: !1079)
!1094 = !DILocation(line: 386, column: 10, scope: !1091)
!1095 = !DILocation(line: 386, column: 15, scope: !1091)
!1096 = !DILocation(line: 386, column: 3, scope: !1091)
!1097 = !DILocation(line: 388, column: 11, scope: !1079)
!1098 = !DILocation(line: 389, column: 9, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 389, column: 2)
!1100 = !DILocation(line: 389, column: 7, scope: !1099)
!1101 = !DILocation(line: 389, column: 14, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 389, column: 2)
!1103 = !DILocation(line: 389, column: 18, scope: !1102)
!1104 = !DILocation(line: 389, column: 23, scope: !1102)
!1105 = !DILocation(line: 389, column: 16, scope: !1102)
!1106 = !DILocation(line: 389, column: 2, scope: !1099)
!1107 = !DILocation(line: 390, column: 7, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 390, column: 7)
!1109 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 389, column: 41)
!1110 = !DILocation(line: 390, column: 12, scope: !1108)
!1111 = !DILocation(line: 390, column: 25, scope: !1108)
!1112 = !DILocation(line: 390, column: 28, scope: !1108)
!1113 = !DILocation(line: 390, column: 7, scope: !1109)
!1114 = !DILocation(line: 391, column: 4, scope: !1108)
!1115 = !DILocation(line: 393, column: 14, scope: !1109)
!1116 = !DILocation(line: 393, column: 19, scope: !1109)
!1117 = !DILocation(line: 393, column: 26, scope: !1109)
!1118 = !DILocation(line: 393, column: 29, scope: !1109)
!1119 = !DILocation(line: 393, column: 12, scope: !1109)
!1120 = !DILocation(line: 394, column: 3, scope: !1109)
!1121 = !DILocation(line: 389, column: 37, scope: !1102)
!1122 = !DILocation(line: 389, column: 2, scope: !1102)
!1123 = distinct !{!1123, !1106, !1124}
!1124 = !DILocation(line: 395, column: 2, scope: !1099)
!1125 = !DILocation(line: 397, column: 23, scope: !1079)
!1126 = !DILocation(line: 397, column: 2, scope: !1079)
!1127 = !DILocation(line: 397, column: 7, scope: !1079)
!1128 = !DILocation(line: 397, column: 21, scope: !1079)
!1129 = !DILocation(line: 399, column: 9, scope: !1079)
!1130 = !DILocation(line: 399, column: 14, scope: !1079)
!1131 = !DILocation(line: 399, column: 2, scope: !1079)
!1132 = !DILocation(line: 400, column: 1, scope: !1079)
!1133 = distinct !DISubprogram(name: "cpuidle_install_idle_handler", scope: !3, file: !3, line: 405, type: !226, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1134 = !DILocation(line: 407, column: 6, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 407, column: 6)
!1136 = !DILocation(line: 407, column: 6, scope: !1133)
!1137 = !DILocation(line: 409, column: 3, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 407, column: 23)
!1139 = !{i32 -2139956444}
!1140 = !DILocation(line: 410, column: 15, scope: !1138)
!1141 = !DILocation(line: 411, column: 2, scope: !1138)
!1142 = !DILocation(line: 412, column: 1, scope: !1133)
!1143 = distinct !DISubprogram(name: "cpuidle_uninstall_idle_handler", scope: !3, file: !3, line: 417, type: !226, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1144 = !DILocation(line: 419, column: 6, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 419, column: 6)
!1146 = !DILocation(line: 419, column: 6, scope: !1143)
!1147 = !DILocation(line: 420, column: 15, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 419, column: 23)
!1149 = !DILocation(line: 421, column: 3, scope: !1148)
!1150 = !DILocation(line: 422, column: 2, scope: !1148)
!1151 = !DILocation(line: 428, column: 2, scope: !1143)
!1152 = !DILocation(line: 429, column: 1, scope: !1143)
!1153 = distinct !DISubprogram(name: "wake_up_all_idle_cpus", scope: !1154, file: !1154, line: 184, type: !226, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1154 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/lizy2001/genbc/linux")
!1155 = !DILocation(line: 184, column: 51, scope: !1153)
!1156 = distinct !DISubprogram(name: "cpuidle_pause_and_lock", scope: !3, file: !3, line: 434, type: !226, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1157 = !DILocation(line: 436, column: 2, scope: !1156)
!1158 = !DILocation(line: 437, column: 2, scope: !1156)
!1159 = !DILocation(line: 438, column: 1, scope: !1156)
!1160 = distinct !DISubprogram(name: "cpuidle_resume_and_unlock", scope: !3, file: !3, line: 445, type: !226, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1161 = !DILocation(line: 447, column: 2, scope: !1160)
!1162 = !DILocation(line: 448, column: 2, scope: !1160)
!1163 = !DILocation(line: 449, column: 1, scope: !1160)
!1164 = distinct !DISubprogram(name: "cpuidle_pause", scope: !3, file: !3, line: 454, type: !226, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1165 = !DILocation(line: 456, column: 2, scope: !1164)
!1166 = !DILocation(line: 457, column: 2, scope: !1164)
!1167 = !DILocation(line: 458, column: 2, scope: !1164)
!1168 = !DILocation(line: 459, column: 1, scope: !1164)
!1169 = distinct !DISubprogram(name: "cpuidle_resume", scope: !3, file: !3, line: 462, type: !226, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1170 = !DILocation(line: 464, column: 2, scope: !1169)
!1171 = !DILocation(line: 465, column: 2, scope: !1169)
!1172 = !DILocation(line: 466, column: 2, scope: !1169)
!1173 = !DILocation(line: 467, column: 1, scope: !1169)
!1174 = distinct !DISubprogram(name: "cpuidle_enable_device", scope: !3, file: !3, line: 476, type: !1175, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!35, !18}
!1177 = !DILocalVariable(name: "dev", arg: 1, scope: !1174, file: !3, line: 476, type: !18)
!1178 = !DILocation(line: 476, column: 50, scope: !1174)
!1179 = !DILocalVariable(name: "ret", scope: !1174, file: !3, line: 478, type: !35)
!1180 = !DILocation(line: 478, column: 6, scope: !1174)
!1181 = !DILocalVariable(name: "drv", scope: !1174, file: !3, line: 479, type: !235)
!1182 = !DILocation(line: 479, column: 25, scope: !1174)
!1183 = !DILocation(line: 481, column: 7, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 481, column: 6)
!1185 = !DILocation(line: 481, column: 6, scope: !1174)
!1186 = !DILocation(line: 482, column: 3, scope: !1184)
!1187 = !DILocation(line: 484, column: 6, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 484, column: 6)
!1189 = !DILocation(line: 484, column: 11, scope: !1188)
!1190 = !DILocation(line: 484, column: 6, scope: !1174)
!1191 = !DILocation(line: 485, column: 3, scope: !1188)
!1192 = !DILocation(line: 487, column: 7, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 487, column: 6)
!1194 = !DILocation(line: 487, column: 6, scope: !1174)
!1195 = !DILocation(line: 488, column: 3, scope: !1193)
!1196 = !DILocation(line: 490, column: 31, scope: !1174)
!1197 = !DILocation(line: 490, column: 8, scope: !1174)
!1198 = !DILocation(line: 490, column: 6, scope: !1174)
!1199 = !DILocation(line: 492, column: 7, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 492, column: 6)
!1201 = !DILocation(line: 492, column: 6, scope: !1174)
!1202 = !DILocation(line: 493, column: 3, scope: !1200)
!1203 = !DILocation(line: 495, column: 7, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 495, column: 6)
!1205 = !DILocation(line: 495, column: 12, scope: !1204)
!1206 = !DILocation(line: 495, column: 6, scope: !1174)
!1207 = !DILocation(line: 496, column: 3, scope: !1204)
!1208 = !DILocation(line: 498, column: 33, scope: !1174)
!1209 = !DILocation(line: 498, column: 8, scope: !1174)
!1210 = !DILocation(line: 498, column: 6, scope: !1174)
!1211 = !DILocation(line: 499, column: 6, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 499, column: 6)
!1213 = !DILocation(line: 499, column: 6, scope: !1174)
!1214 = !DILocation(line: 500, column: 10, scope: !1212)
!1215 = !DILocation(line: 500, column: 3, scope: !1212)
!1216 = !DILocation(line: 502, column: 6, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 502, column: 6)
!1218 = !DILocation(line: 502, column: 29, scope: !1217)
!1219 = !DILocation(line: 502, column: 6, scope: !1174)
!1220 = !DILocation(line: 503, column: 9, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 502, column: 37)
!1222 = !DILocation(line: 503, column: 32, scope: !1221)
!1223 = !DILocation(line: 503, column: 39, scope: !1221)
!1224 = !DILocation(line: 503, column: 44, scope: !1221)
!1225 = !DILocation(line: 503, column: 7, scope: !1221)
!1226 = !DILocation(line: 504, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 504, column: 7)
!1228 = !DILocation(line: 504, column: 7, scope: !1221)
!1229 = !DILocation(line: 505, column: 4, scope: !1227)
!1230 = !DILocation(line: 506, column: 2, scope: !1221)
!1231 = !DILocation(line: 508, column: 2, scope: !1174)
!1232 = !{i32 -2139956158}
!1233 = !DILocation(line: 510, column: 2, scope: !1174)
!1234 = !DILocation(line: 510, column: 7, scope: !1174)
!1235 = !DILocation(line: 510, column: 15, scope: !1174)
!1236 = !DILocation(line: 512, column: 17, scope: !1174)
!1237 = !DILocation(line: 513, column: 2, scope: !1174)
!1238 = !DILabel(scope: !1174, name: "fail_sysfs", file: !3, line: 515)
!1239 = !DILocation(line: 515, column: 1, scope: !1174)
!1240 = !DILocation(line: 516, column: 30, scope: !1174)
!1241 = !DILocation(line: 516, column: 2, scope: !1174)
!1242 = !DILocation(line: 518, column: 9, scope: !1174)
!1243 = !DILocation(line: 518, column: 2, scope: !1174)
!1244 = !DILocation(line: 519, column: 1, scope: !1174)
!1245 = distinct !DISubprogram(name: "cpuidle_disable_device", scope: !3, file: !3, line: 530, type: !1246, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{null, !18}
!1248 = !DILocalVariable(name: "dev", arg: 1, scope: !1245, file: !3, line: 530, type: !18)
!1249 = !DILocation(line: 530, column: 52, scope: !1245)
!1250 = !DILocalVariable(name: "drv", scope: !1245, file: !3, line: 532, type: !235)
!1251 = !DILocation(line: 532, column: 25, scope: !1245)
!1252 = !DILocation(line: 532, column: 54, scope: !1245)
!1253 = !DILocation(line: 532, column: 31, scope: !1245)
!1254 = !DILocation(line: 534, column: 7, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 534, column: 6)
!1256 = !DILocation(line: 534, column: 11, scope: !1255)
!1257 = !DILocation(line: 534, column: 15, scope: !1255)
!1258 = !DILocation(line: 534, column: 20, scope: !1255)
!1259 = !DILocation(line: 534, column: 6, scope: !1245)
!1260 = !DILocation(line: 535, column: 3, scope: !1255)
!1261 = !DILocation(line: 537, column: 7, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 537, column: 6)
!1263 = !DILocation(line: 537, column: 11, scope: !1262)
!1264 = !DILocation(line: 537, column: 15, scope: !1262)
!1265 = !DILocation(line: 537, column: 6, scope: !1245)
!1266 = !DILocation(line: 538, column: 3, scope: !1262)
!1267 = !DILocation(line: 540, column: 2, scope: !1245)
!1268 = !DILocation(line: 540, column: 7, scope: !1245)
!1269 = !DILocation(line: 540, column: 15, scope: !1245)
!1270 = !DILocation(line: 542, column: 6, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 542, column: 6)
!1272 = !DILocation(line: 542, column: 29, scope: !1271)
!1273 = !DILocation(line: 542, column: 6, scope: !1245)
!1274 = !DILocation(line: 543, column: 3, scope: !1271)
!1275 = !DILocation(line: 543, column: 26, scope: !1271)
!1276 = !DILocation(line: 543, column: 34, scope: !1271)
!1277 = !DILocation(line: 543, column: 39, scope: !1271)
!1278 = !DILocation(line: 545, column: 30, scope: !1245)
!1279 = !DILocation(line: 545, column: 2, scope: !1245)
!1280 = !DILocation(line: 546, column: 17, scope: !1245)
!1281 = !DILocation(line: 547, column: 1, scope: !1245)
!1282 = distinct !DISubprogram(name: "cpuidle_register_device", scope: !3, file: !3, line: 608, type: !1175, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1283 = !DILocalVariable(name: "dev", arg: 1, scope: !1282, file: !3, line: 608, type: !18)
!1284 = !DILocation(line: 608, column: 52, scope: !1282)
!1285 = !DILocalVariable(name: "ret", scope: !1282, file: !3, line: 610, type: !35)
!1286 = !DILocation(line: 610, column: 6, scope: !1282)
!1287 = !DILocation(line: 612, column: 7, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 612, column: 6)
!1289 = !DILocation(line: 612, column: 6, scope: !1282)
!1290 = !DILocation(line: 613, column: 3, scope: !1288)
!1291 = !DILocation(line: 615, column: 2, scope: !1282)
!1292 = !DILocation(line: 617, column: 6, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 617, column: 6)
!1294 = !DILocation(line: 617, column: 11, scope: !1293)
!1295 = !DILocation(line: 617, column: 6, scope: !1282)
!1296 = !DILocation(line: 618, column: 3, scope: !1293)
!1297 = !DILocation(line: 620, column: 24, scope: !1282)
!1298 = !DILocation(line: 620, column: 2, scope: !1282)
!1299 = !DILocation(line: 622, column: 34, scope: !1282)
!1300 = !DILocation(line: 622, column: 8, scope: !1282)
!1301 = !DILocation(line: 622, column: 6, scope: !1282)
!1302 = !DILocation(line: 623, column: 6, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 623, column: 6)
!1304 = !DILocation(line: 623, column: 6, scope: !1282)
!1305 = !DILocation(line: 624, column: 3, scope: !1303)
!1306 = !DILocation(line: 626, column: 26, scope: !1282)
!1307 = !DILocation(line: 626, column: 8, scope: !1282)
!1308 = !DILocation(line: 626, column: 6, scope: !1282)
!1309 = !DILocation(line: 627, column: 6, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 627, column: 6)
!1311 = !DILocation(line: 627, column: 6, scope: !1282)
!1312 = !DILocation(line: 628, column: 3, scope: !1310)
!1313 = !DILocation(line: 630, column: 30, scope: !1282)
!1314 = !DILocation(line: 630, column: 8, scope: !1282)
!1315 = !DILocation(line: 630, column: 6, scope: !1282)
!1316 = !DILocation(line: 631, column: 6, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 631, column: 6)
!1318 = !DILocation(line: 631, column: 6, scope: !1282)
!1319 = !DILocation(line: 632, column: 3, scope: !1317)
!1320 = !DILocation(line: 634, column: 2, scope: !1282)
!1321 = !DILabel(scope: !1282, name: "out_unlock", file: !3, line: 636)
!1322 = !DILocation(line: 636, column: 1, scope: !1282)
!1323 = !DILocation(line: 637, column: 2, scope: !1282)
!1324 = !DILocation(line: 639, column: 9, scope: !1282)
!1325 = !DILocation(line: 639, column: 2, scope: !1282)
!1326 = !DILabel(scope: !1282, name: "out_sysfs", file: !3, line: 641)
!1327 = !DILocation(line: 641, column: 1, scope: !1282)
!1328 = !DILocation(line: 642, column: 23, scope: !1282)
!1329 = !DILocation(line: 642, column: 2, scope: !1282)
!1330 = !DILabel(scope: !1282, name: "out_unregister", file: !3, line: 643)
!1331 = !DILocation(line: 643, column: 1, scope: !1282)
!1332 = !DILocation(line: 644, column: 30, scope: !1282)
!1333 = !DILocation(line: 644, column: 2, scope: !1282)
!1334 = !DILocation(line: 645, column: 2, scope: !1282)
!1335 = !DILocation(line: 646, column: 1, scope: !1282)
!1336 = distinct !DISubprogram(name: "__cpuidle_device_init", scope: !3, file: !3, line: 562, type: !1246, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1337 = !DILocalVariable(name: "dev", arg: 1, scope: !1336, file: !3, line: 562, type: !18)
!1338 = !DILocation(line: 562, column: 58, scope: !1336)
!1339 = !DILocation(line: 564, column: 9, scope: !1336)
!1340 = !DILocation(line: 564, column: 14, scope: !1336)
!1341 = !DILocation(line: 564, column: 2, scope: !1336)
!1342 = !DILocation(line: 565, column: 2, scope: !1336)
!1343 = !DILocation(line: 565, column: 7, scope: !1336)
!1344 = !DILocation(line: 565, column: 25, scope: !1336)
!1345 = !DILocation(line: 566, column: 2, scope: !1336)
!1346 = !DILocation(line: 566, column: 7, scope: !1336)
!1347 = !DILocation(line: 566, column: 20, scope: !1336)
!1348 = !DILocation(line: 567, column: 1, scope: !1336)
!1349 = distinct !DISubprogram(name: "__cpuidle_register_device", scope: !3, file: !3, line: 576, type: !1175, scopeLine: 577, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1350 = !DILocalVariable(name: "dev", arg: 1, scope: !1349, file: !3, line: 576, type: !18)
!1351 = !DILocation(line: 576, column: 61, scope: !1349)
!1352 = !DILocalVariable(name: "drv", scope: !1349, file: !3, line: 578, type: !235)
!1353 = !DILocation(line: 578, column: 25, scope: !1349)
!1354 = !DILocation(line: 578, column: 54, scope: !1349)
!1355 = !DILocation(line: 578, column: 31, scope: !1349)
!1356 = !DILocalVariable(name: "i", scope: !1349, file: !3, line: 579, type: !35)
!1357 = !DILocation(line: 579, column: 6, scope: !1349)
!1358 = !DILocalVariable(name: "ret", scope: !1349, file: !3, line: 579, type: !35)
!1359 = !DILocation(line: 579, column: 9, scope: !1349)
!1360 = !DILocation(line: 581, column: 22, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 581, column: 6)
!1362 = !DILocation(line: 581, column: 27, scope: !1361)
!1363 = !DILocation(line: 581, column: 7, scope: !1361)
!1364 = !DILocation(line: 581, column: 6, scope: !1349)
!1365 = !DILocation(line: 582, column: 3, scope: !1361)
!1366 = !DILocation(line: 584, column: 9, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 584, column: 2)
!1368 = !DILocation(line: 584, column: 7, scope: !1367)
!1369 = !DILocation(line: 584, column: 14, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 584, column: 2)
!1371 = !DILocation(line: 584, column: 18, scope: !1370)
!1372 = !DILocation(line: 584, column: 23, scope: !1370)
!1373 = !DILocation(line: 584, column: 16, scope: !1370)
!1374 = !DILocation(line: 584, column: 2, scope: !1367)
!1375 = !DILocation(line: 585, column: 7, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 585, column: 7)
!1377 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 584, column: 41)
!1378 = !DILocation(line: 585, column: 12, scope: !1376)
!1379 = !DILocation(line: 585, column: 19, scope: !1376)
!1380 = !DILocation(line: 585, column: 22, scope: !1376)
!1381 = !DILocation(line: 585, column: 28, scope: !1376)
!1382 = !DILocation(line: 585, column: 7, scope: !1377)
!1383 = !DILocation(line: 586, column: 4, scope: !1376)
!1384 = !DILocation(line: 586, column: 9, scope: !1376)
!1385 = !DILocation(line: 586, column: 22, scope: !1376)
!1386 = !DILocation(line: 586, column: 25, scope: !1376)
!1387 = !DILocation(line: 586, column: 33, scope: !1376)
!1388 = !DILocation(line: 588, column: 7, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 588, column: 7)
!1390 = !DILocation(line: 588, column: 12, scope: !1389)
!1391 = !DILocation(line: 588, column: 19, scope: !1389)
!1392 = !DILocation(line: 588, column: 22, scope: !1389)
!1393 = !DILocation(line: 588, column: 28, scope: !1389)
!1394 = !DILocation(line: 588, column: 7, scope: !1377)
!1395 = !DILocation(line: 589, column: 4, scope: !1389)
!1396 = !DILocation(line: 589, column: 9, scope: !1389)
!1397 = !DILocation(line: 589, column: 22, scope: !1389)
!1398 = !DILocation(line: 589, column: 25, scope: !1389)
!1399 = !DILocation(line: 589, column: 33, scope: !1389)
!1400 = !DILocation(line: 590, column: 2, scope: !1377)
!1401 = !DILocation(line: 584, column: 37, scope: !1370)
!1402 = !DILocation(line: 584, column: 2, scope: !1370)
!1403 = distinct !{!1403, !1374, !1404}
!1404 = !DILocation(line: 590, column: 2, scope: !1367)
!1405 = !DILocation(line: 592, column: 39, scope: !1349)
!1406 = !DILocation(line: 592, column: 2, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 592, column: 2)
!1408 = !DILocation(line: 592, column: 2, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 592, column: 2)
!1410 = !DILocalVariable(name: "__vpp_verify", scope: !1411, file: !3, line: 592, type: !306)
!1411 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 592, column: 2)
!1412 = !DILocation(line: 592, column: 2, scope: !1411)
!1413 = !DILocation(line: 592, column: 37, scope: !1349)
!1414 = !DILocation(line: 593, column: 12, scope: !1349)
!1415 = !DILocation(line: 593, column: 17, scope: !1349)
!1416 = !DILocation(line: 593, column: 2, scope: !1349)
!1417 = !DILocation(line: 595, column: 40, scope: !1349)
!1418 = !DILocation(line: 595, column: 8, scope: !1349)
!1419 = !DILocation(line: 595, column: 6, scope: !1349)
!1420 = !DILocation(line: 596, column: 6, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 596, column: 6)
!1422 = !DILocation(line: 596, column: 6, scope: !1349)
!1423 = !DILocation(line: 597, column: 31, scope: !1421)
!1424 = !DILocation(line: 597, column: 3, scope: !1421)
!1425 = !DILocation(line: 599, column: 3, scope: !1421)
!1426 = !DILocation(line: 599, column: 8, scope: !1421)
!1427 = !DILocation(line: 599, column: 19, scope: !1421)
!1428 = !DILocation(line: 601, column: 9, scope: !1349)
!1429 = !DILocation(line: 601, column: 2, scope: !1349)
!1430 = !DILocation(line: 602, column: 1, scope: !1349)
!1431 = distinct !DISubprogram(name: "__cpuidle_unregister_device", scope: !3, file: !3, line: 551, type: !1246, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1432 = !DILocalVariable(name: "dev", arg: 1, scope: !1431, file: !3, line: 551, type: !18)
!1433 = !DILocation(line: 551, column: 64, scope: !1431)
!1434 = !DILocalVariable(name: "drv", scope: !1431, file: !3, line: 553, type: !235)
!1435 = !DILocation(line: 553, column: 25, scope: !1431)
!1436 = !DILocation(line: 553, column: 54, scope: !1431)
!1437 = !DILocation(line: 553, column: 31, scope: !1431)
!1438 = !DILocation(line: 555, column: 12, scope: !1431)
!1439 = !DILocation(line: 555, column: 17, scope: !1431)
!1440 = !DILocation(line: 555, column: 2, scope: !1431)
!1441 = !DILocation(line: 556, column: 2, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 556, column: 2)
!1443 = !DILocation(line: 556, column: 2, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 556, column: 2)
!1445 = !DILocalVariable(name: "__vpp_verify", scope: !1446, file: !3, line: 556, type: !306)
!1446 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 556, column: 2)
!1447 = !DILocation(line: 556, column: 2, scope: !1446)
!1448 = !DILocation(line: 556, column: 37, scope: !1431)
!1449 = !DILocation(line: 557, column: 13, scope: !1431)
!1450 = !DILocation(line: 557, column: 18, scope: !1431)
!1451 = !DILocation(line: 557, column: 2, scope: !1431)
!1452 = !DILocation(line: 559, column: 2, scope: !1431)
!1453 = !DILocation(line: 559, column: 7, scope: !1431)
!1454 = !DILocation(line: 559, column: 18, scope: !1431)
!1455 = !DILocation(line: 560, column: 1, scope: !1431)
!1456 = distinct !DISubprogram(name: "cpuidle_unregister_device", scope: !3, file: !3, line: 654, type: !1246, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1457 = !DILocalVariable(name: "dev", arg: 1, scope: !1456, file: !3, line: 654, type: !18)
!1458 = !DILocation(line: 654, column: 55, scope: !1456)
!1459 = !DILocation(line: 656, column: 7, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 656, column: 6)
!1461 = !DILocation(line: 656, column: 11, scope: !1460)
!1462 = !DILocation(line: 656, column: 14, scope: !1460)
!1463 = !DILocation(line: 656, column: 19, scope: !1460)
!1464 = !DILocation(line: 656, column: 30, scope: !1460)
!1465 = !DILocation(line: 656, column: 6, scope: !1456)
!1466 = !DILocation(line: 657, column: 3, scope: !1460)
!1467 = !DILocation(line: 659, column: 2, scope: !1456)
!1468 = !DILocation(line: 661, column: 25, scope: !1456)
!1469 = !DILocation(line: 661, column: 2, scope: !1456)
!1470 = !DILocation(line: 663, column: 23, scope: !1456)
!1471 = !DILocation(line: 663, column: 2, scope: !1456)
!1472 = !DILocation(line: 665, column: 30, scope: !1456)
!1473 = !DILocation(line: 665, column: 2, scope: !1456)
!1474 = !DILocation(line: 667, column: 36, scope: !1456)
!1475 = !DILocation(line: 667, column: 2, scope: !1456)
!1476 = !DILocation(line: 669, column: 2, scope: !1456)
!1477 = !DILocation(line: 670, column: 1, scope: !1456)
!1478 = distinct !DISubprogram(name: "cpuidle_coupled_unregister_device", scope: !980, file: !980, line: 70, type: !1246, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1479 = !DILocalVariable(name: "dev", arg: 1, scope: !1478, file: !980, line: 70, type: !18)
!1480 = !DILocation(line: 70, column: 77, scope: !1478)
!1481 = !DILocation(line: 72, column: 1, scope: !1478)
!1482 = distinct !DISubprogram(name: "cpuidle_unregister", scope: !3, file: !3, line: 681, type: !1483, scopeLine: 682, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{null, !235}
!1485 = !DILocalVariable(name: "drv", arg: 1, scope: !1482, file: !3, line: 681, type: !235)
!1486 = !DILocation(line: 681, column: 48, scope: !1482)
!1487 = !DILocalVariable(name: "cpu", scope: !1482, file: !3, line: 683, type: !35)
!1488 = !DILocation(line: 683, column: 6, scope: !1482)
!1489 = !DILocalVariable(name: "device", scope: !1482, file: !3, line: 684, type: !18)
!1490 = !DILocation(line: 684, column: 25, scope: !1482)
!1491 = !DILocation(line: 686, column: 2, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 686, column: 2)
!1493 = !DILocation(line: 686, column: 2, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 686, column: 2)
!1495 = !DILocation(line: 687, column: 13, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 687, column: 13)
!1497 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 686, column: 34)
!1498 = !DILocation(line: 687, column: 13, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 687, column: 13)
!1500 = !DILocalVariable(name: "__vpp_verify", scope: !1501, file: !3, line: 687, type: !306)
!1501 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 687, column: 13)
!1502 = !DILocation(line: 687, column: 13, scope: !1501)
!1503 = !DILocation(line: 687, column: 10, scope: !1497)
!1504 = !DILocation(line: 688, column: 29, scope: !1497)
!1505 = !DILocation(line: 688, column: 3, scope: !1497)
!1506 = !DILocation(line: 689, column: 2, scope: !1497)
!1507 = distinct !{!1507, !1491, !1508}
!1508 = !DILocation(line: 689, column: 2, scope: !1492)
!1509 = !DILocation(line: 691, column: 28, scope: !1482)
!1510 = !DILocation(line: 691, column: 2, scope: !1482)
!1511 = !DILocation(line: 692, column: 1, scope: !1482)
!1512 = distinct !DISubprogram(name: "cpuidle_register", scope: !3, file: !3, line: 706, type: !1513, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!35, !235, !1515}
!1515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1516)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!1518 = !DILocalVariable(name: "drv", arg: 1, scope: !1512, file: !3, line: 706, type: !235)
!1519 = !DILocation(line: 706, column: 45, scope: !1512)
!1520 = !DILocalVariable(name: "coupled_cpus", arg: 2, scope: !1512, file: !3, line: 707, type: !1515)
!1521 = !DILocation(line: 707, column: 36, scope: !1512)
!1522 = !DILocalVariable(name: "ret", scope: !1512, file: !3, line: 709, type: !35)
!1523 = !DILocation(line: 709, column: 6, scope: !1512)
!1524 = !DILocalVariable(name: "cpu", scope: !1512, file: !3, line: 709, type: !35)
!1525 = !DILocation(line: 709, column: 11, scope: !1512)
!1526 = !DILocalVariable(name: "device", scope: !1512, file: !3, line: 710, type: !18)
!1527 = !DILocation(line: 710, column: 25, scope: !1512)
!1528 = !DILocation(line: 712, column: 32, scope: !1512)
!1529 = !DILocation(line: 712, column: 8, scope: !1512)
!1530 = !DILocation(line: 712, column: 6, scope: !1512)
!1531 = !DILocation(line: 713, column: 6, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 713, column: 6)
!1533 = !DILocation(line: 713, column: 6, scope: !1512)
!1534 = !DILocation(line: 714, column: 3, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 713, column: 11)
!1536 = !DILocation(line: 715, column: 10, scope: !1535)
!1537 = !DILocation(line: 715, column: 3, scope: !1535)
!1538 = !DILocation(line: 718, column: 2, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 718, column: 2)
!1540 = !DILocation(line: 718, column: 2, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 718, column: 2)
!1542 = !DILocation(line: 719, column: 13, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 719, column: 13)
!1544 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 718, column: 34)
!1545 = !DILocation(line: 719, column: 13, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 719, column: 13)
!1547 = !DILocalVariable(name: "__vpp_verify", scope: !1548, file: !3, line: 719, type: !306)
!1548 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 719, column: 13)
!1549 = !DILocation(line: 719, column: 13, scope: !1548)
!1550 = !DILocation(line: 719, column: 10, scope: !1544)
!1551 = !DILocation(line: 720, column: 17, scope: !1544)
!1552 = !DILocation(line: 720, column: 3, scope: !1544)
!1553 = !DILocation(line: 720, column: 11, scope: !1544)
!1554 = !DILocation(line: 720, column: 15, scope: !1544)
!1555 = !DILocation(line: 731, column: 33, scope: !1544)
!1556 = !DILocation(line: 731, column: 9, scope: !1544)
!1557 = !DILocation(line: 731, column: 7, scope: !1544)
!1558 = !DILocation(line: 732, column: 8, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 732, column: 7)
!1560 = !DILocation(line: 732, column: 7, scope: !1544)
!1561 = !DILocation(line: 733, column: 4, scope: !1559)
!1562 = !DILocation(line: 735, column: 3, scope: !1544)
!1563 = !DILocation(line: 737, column: 22, scope: !1544)
!1564 = !DILocation(line: 737, column: 3, scope: !1544)
!1565 = !DILocation(line: 738, column: 3, scope: !1544)
!1566 = distinct !{!1566, !1538, !1567}
!1567 = !DILocation(line: 739, column: 2, scope: !1539)
!1568 = !DILocation(line: 741, column: 9, scope: !1512)
!1569 = !DILocation(line: 741, column: 2, scope: !1512)
!1570 = !DILocation(line: 742, column: 1, scope: !1512)
!1571 = distinct !DISubprogram(name: "cpuidle_init", scope: !3, file: !3, line: 748, type: !221, scopeLine: 749, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1572 = !DILocation(line: 750, column: 6, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 750, column: 6)
!1574 = !DILocation(line: 750, column: 6, scope: !1571)
!1575 = !DILocation(line: 751, column: 3, scope: !1573)
!1576 = !DILocation(line: 753, column: 42, scope: !1571)
!1577 = !DILocation(line: 753, column: 9, scope: !1571)
!1578 = !DILocation(line: 753, column: 2, scope: !1571)
!1579 = !DILocation(line: 754, column: 1, scope: !1571)
!1580 = distinct !DISubprogram(name: "ktime_us_delta", scope: !28, file: !28, line: 169, type: !1581, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!29, !1583, !1583}
!1583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!1584 = !DILocalVariable(name: "later", arg: 1, scope: !1580, file: !28, line: 169, type: !1583)
!1585 = !DILocation(line: 169, column: 48, scope: !1580)
!1586 = !DILocalVariable(name: "earlier", arg: 2, scope: !1580, file: !28, line: 169, type: !1583)
!1587 = !DILocation(line: 169, column: 69, scope: !1580)
!1588 = !DILocation(line: 171, column: 27, scope: !1580)
!1589 = !DILocation(line: 171, column: 15, scope: !1580)
!1590 = !DILocation(line: 171, column: 8, scope: !1580)
!1591 = distinct !DISubprogram(name: "ktime_to_us", scope: !28, file: !28, line: 159, type: !1592, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!29, !1583}
!1594 = !DILocalVariable(name: "kt", arg: 1, scope: !1591, file: !28, line: 159, type: !1583)
!1595 = !DILocation(line: 159, column: 45, scope: !1591)
!1596 = !DILocation(line: 161, column: 21, scope: !1591)
!1597 = !DILocation(line: 161, column: 9, scope: !1591)
!1598 = !DILocation(line: 161, column: 2, scope: !1591)
!1599 = distinct !DISubprogram(name: "ktime_divns", scope: !28, file: !28, line: 148, type: !1600, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!29, !1583, !29}
!1602 = !DILocalVariable(name: "kt", arg: 1, scope: !1599, file: !28, line: 148, type: !1583)
!1603 = !DILocation(line: 148, column: 45, scope: !1599)
!1604 = !DILocalVariable(name: "div", arg: 2, scope: !1599, file: !28, line: 148, type: !29)
!1605 = !DILocation(line: 148, column: 53, scope: !1599)
!1606 = !DILocalVariable(name: "__ret_warn_on", scope: !1607, file: !28, line: 154, type: !35)
!1607 = distinct !DILexicalBlock(scope: !1599, file: !28, line: 154, column: 2)
!1608 = !DILocation(line: 154, column: 2, scope: !1607)
!1609 = !DILocation(line: 154, column: 2, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1607, file: !28, line: 154, column: 2)
!1611 = !DILocation(line: 154, column: 2, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1610, file: !28, line: 154, column: 2)
!1613 = !DILocation(line: 154, column: 2, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1612, file: !28, line: 154, column: 2)
!1615 = !DILocation(line: 154, column: 2, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !28, line: 154, column: 2)
!1617 = !{i32 -2145654336, i32 -2145654307, i32 -2145654261, i32 -2145654203, i32 -2145654149, i32 -2145654095, i32 -2145654040, i32 -2145654009}
!1618 = !DILocation(line: 154, column: 2, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1612, file: !28, line: 154, column: 2)
!1620 = !{i32 -2145653606, i32 -2145653599, i32 -2145653547, i32 -2145653516, i32 -2145653486}
!1621 = !DILocation(line: 154, column: 2, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1612, file: !28, line: 154, column: 2)
!1623 = !DILocation(line: 155, column: 9, scope: !1599)
!1624 = !DILocation(line: 155, column: 14, scope: !1599)
!1625 = !DILocation(line: 155, column: 12, scope: !1599)
!1626 = !DILocation(line: 155, column: 2, scope: !1599)
!1627 = distinct !DISubprogram(name: "try_module_get", scope: !1628, file: !1628, line: 751, type: !1629, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1628 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!233, !93}
!1631 = !DILocalVariable(name: "module", arg: 1, scope: !1627, file: !1628, line: 751, type: !93)
!1632 = !DILocation(line: 751, column: 50, scope: !1627)
!1633 = !DILocation(line: 753, column: 2, scope: !1627)
!1634 = distinct !DISubprogram(name: "list_add", scope: !1635, file: !1635, line: 84, type: !1636, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1635 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !71, !71}
!1638 = !DILocalVariable(name: "new", arg: 1, scope: !1634, file: !1635, line: 84, type: !71)
!1639 = !DILocation(line: 84, column: 47, scope: !1634)
!1640 = !DILocalVariable(name: "head", arg: 2, scope: !1634, file: !1635, line: 84, type: !71)
!1641 = !DILocation(line: 84, column: 70, scope: !1634)
!1642 = !DILocation(line: 86, column: 13, scope: !1634)
!1643 = !DILocation(line: 86, column: 18, scope: !1634)
!1644 = !DILocation(line: 86, column: 24, scope: !1634)
!1645 = !DILocation(line: 86, column: 30, scope: !1634)
!1646 = !DILocation(line: 86, column: 2, scope: !1634)
!1647 = !DILocation(line: 87, column: 1, scope: !1634)
!1648 = distinct !DISubprogram(name: "cpuidle_coupled_register_device", scope: !980, file: !980, line: 65, type: !1175, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1649 = !DILocalVariable(name: "dev", arg: 1, scope: !1648, file: !980, line: 65, type: !18)
!1650 = !DILocation(line: 65, column: 74, scope: !1648)
!1651 = !DILocation(line: 67, column: 2, scope: !1648)
!1652 = distinct !DISubprogram(name: "__list_add", scope: !1635, file: !1635, line: 63, type: !1653, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{null, !71, !71, !71}
!1655 = !DILocalVariable(name: "new", arg: 1, scope: !1652, file: !1635, line: 63, type: !71)
!1656 = !DILocation(line: 63, column: 49, scope: !1652)
!1657 = !DILocalVariable(name: "prev", arg: 2, scope: !1652, file: !1635, line: 64, type: !71)
!1658 = !DILocation(line: 64, column: 28, scope: !1652)
!1659 = !DILocalVariable(name: "next", arg: 3, scope: !1652, file: !1635, line: 65, type: !71)
!1660 = !DILocation(line: 65, column: 28, scope: !1652)
!1661 = !DILocation(line: 67, column: 24, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1652, file: !1635, line: 67, column: 6)
!1663 = !DILocation(line: 67, column: 29, scope: !1662)
!1664 = !DILocation(line: 67, column: 35, scope: !1662)
!1665 = !DILocation(line: 67, column: 7, scope: !1662)
!1666 = !DILocation(line: 67, column: 6, scope: !1652)
!1667 = !DILocation(line: 68, column: 3, scope: !1662)
!1668 = !DILocation(line: 70, column: 15, scope: !1652)
!1669 = !DILocation(line: 70, column: 2, scope: !1652)
!1670 = !DILocation(line: 70, column: 8, scope: !1652)
!1671 = !DILocation(line: 70, column: 13, scope: !1652)
!1672 = !DILocation(line: 71, column: 14, scope: !1652)
!1673 = !DILocation(line: 71, column: 2, scope: !1652)
!1674 = !DILocation(line: 71, column: 7, scope: !1652)
!1675 = !DILocation(line: 71, column: 12, scope: !1652)
!1676 = !DILocation(line: 72, column: 14, scope: !1652)
!1677 = !DILocation(line: 72, column: 2, scope: !1652)
!1678 = !DILocation(line: 72, column: 7, scope: !1652)
!1679 = !DILocation(line: 72, column: 12, scope: !1652)
!1680 = !DILocation(line: 73, column: 2, scope: !1652)
!1681 = !DILocation(line: 73, column: 2, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1652, file: !1635, line: 73, column: 2)
!1683 = !DILocation(line: 73, column: 2, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1682, file: !1635, line: 73, column: 2)
!1685 = !DILocation(line: 73, column: 2, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1682, file: !1635, line: 73, column: 2)
!1687 = !DILocation(line: 74, column: 1, scope: !1652)
!1688 = distinct !DISubprogram(name: "__list_add_valid", scope: !1635, file: !1635, line: 45, type: !1689, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!233, !71, !71, !71}
!1691 = !DILocalVariable(name: "new", arg: 1, scope: !1688, file: !1635, line: 45, type: !71)
!1692 = !DILocation(line: 45, column: 55, scope: !1688)
!1693 = !DILocalVariable(name: "prev", arg: 2, scope: !1688, file: !1635, line: 46, type: !71)
!1694 = !DILocation(line: 46, column: 23, scope: !1688)
!1695 = !DILocalVariable(name: "next", arg: 3, scope: !1688, file: !1635, line: 47, type: !71)
!1696 = !DILocation(line: 47, column: 23, scope: !1688)
!1697 = !DILocation(line: 49, column: 2, scope: !1688)
!1698 = distinct !DISubprogram(name: "list_del", scope: !1635, file: !1635, line: 144, type: !1699, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{null, !71}
!1701 = !DILocalVariable(name: "entry", arg: 1, scope: !1698, file: !1635, line: 144, type: !71)
!1702 = !DILocation(line: 144, column: 47, scope: !1698)
!1703 = !DILocation(line: 146, column: 19, scope: !1698)
!1704 = !DILocation(line: 146, column: 2, scope: !1698)
!1705 = !DILocation(line: 147, column: 2, scope: !1698)
!1706 = !DILocation(line: 147, column: 9, scope: !1698)
!1707 = !DILocation(line: 147, column: 14, scope: !1698)
!1708 = !DILocation(line: 148, column: 2, scope: !1698)
!1709 = !DILocation(line: 148, column: 9, scope: !1698)
!1710 = !DILocation(line: 148, column: 14, scope: !1698)
!1711 = !DILocation(line: 149, column: 1, scope: !1698)
!1712 = distinct !DISubprogram(name: "module_put", scope: !1628, file: !1628, line: 756, type: !1713, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{null, !93}
!1715 = !DILocalVariable(name: "module", arg: 1, scope: !1712, file: !1628, line: 756, type: !93)
!1716 = !DILocation(line: 756, column: 46, scope: !1712)
!1717 = !DILocation(line: 758, column: 1, scope: !1712)
!1718 = distinct !DISubprogram(name: "__list_del_entry", scope: !1635, file: !1635, line: 130, type: !1699, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1719 = !DILocalVariable(name: "entry", arg: 1, scope: !1718, file: !1635, line: 130, type: !71)
!1720 = !DILocation(line: 130, column: 55, scope: !1718)
!1721 = !DILocation(line: 132, column: 30, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1718, file: !1635, line: 132, column: 6)
!1723 = !DILocation(line: 132, column: 7, scope: !1722)
!1724 = !DILocation(line: 132, column: 6, scope: !1718)
!1725 = !DILocation(line: 133, column: 3, scope: !1722)
!1726 = !DILocation(line: 135, column: 13, scope: !1718)
!1727 = !DILocation(line: 135, column: 20, scope: !1718)
!1728 = !DILocation(line: 135, column: 26, scope: !1718)
!1729 = !DILocation(line: 135, column: 33, scope: !1718)
!1730 = !DILocation(line: 135, column: 2, scope: !1718)
!1731 = !DILocation(line: 136, column: 1, scope: !1718)
!1732 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !1635, file: !1635, line: 51, type: !1733, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!233, !71}
!1735 = !DILocalVariable(name: "entry", arg: 1, scope: !1732, file: !1635, line: 51, type: !71)
!1736 = !DILocation(line: 51, column: 61, scope: !1732)
!1737 = !DILocation(line: 53, column: 2, scope: !1732)
!1738 = distinct !DISubprogram(name: "__list_del", scope: !1635, file: !1635, line: 110, type: !1636, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!1739 = !DILocalVariable(name: "prev", arg: 1, scope: !1738, file: !1635, line: 110, type: !71)
!1740 = !DILocation(line: 110, column: 50, scope: !1738)
!1741 = !DILocalVariable(name: "next", arg: 2, scope: !1738, file: !1635, line: 110, type: !71)
!1742 = !DILocation(line: 110, column: 75, scope: !1738)
!1743 = !DILocation(line: 112, column: 15, scope: !1738)
!1744 = !DILocation(line: 112, column: 2, scope: !1738)
!1745 = !DILocation(line: 112, column: 8, scope: !1738)
!1746 = !DILocation(line: 112, column: 13, scope: !1738)
!1747 = !DILocation(line: 113, column: 2, scope: !1738)
!1748 = !DILocation(line: 113, column: 2, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1738, file: !1635, line: 113, column: 2)
!1750 = !DILocation(line: 113, column: 2, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1749, file: !1635, line: 113, column: 2)
!1752 = !DILocation(line: 113, column: 2, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !1635, line: 113, column: 2)
!1754 = !DILocation(line: 114, column: 1, scope: !1738)
