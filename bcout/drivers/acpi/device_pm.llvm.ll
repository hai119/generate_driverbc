; ModuleID = '../bcout/drivers/acpi/device_pm.llvm.bc'
source_filename = "drivers/acpi/device_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.69, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.69 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.65 }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.kstatfs = type opaque
%struct.page = type { i64, %union.anon.2, %union.anon.57, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.57 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.58, i32 }
%union.anon.58 = type { %struct.kuid_t }
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
%struct.bio = type { %struct.bio*, %struct.gendisk*, i32, i16, i16, i16, i8, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.35, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.35 = type { %struct.bio_integrity_payload* }
%struct.bio_integrity_payload = type { %struct.bio*, %struct.bvec_iter, i16, i16, i16, i16, %struct.bvec_iter, %struct.work_struct, %struct.bio_vec*, [0 x %struct.bio_vec] }
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct* }
%struct.kmem_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, %struct.backing_dev_info*, i8*, i64, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.kobject, %struct.kobject*, %struct.blk_integrity, %struct.device*, i32, i32, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.list_head, %struct.queue_limits, i32, i32, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.bsg_class_device, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.80, %union.anon.81, %union.anon.82, %struct.gendisk*, %struct.hd_struct*, i64, i64, i16, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.85, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.80 = type { %struct.hlist_node }
%union.anon.81 = type { %struct.rb_node }
%union.anon.82 = type { %struct.anon.84 }
%struct.anon.84 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.85 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %union.anon.86, void (i8*)*, i8* }
%union.anon.86 = type { %struct.__call_single_node }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.87, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.87 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.blk_mq_hw_ctx*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.36, %union.anon.37, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%union.anon.36 = type { %struct.list_head }
%union.anon.37 = type { %struct.hlist_node }
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
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.50, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type { %struct.refcount_struct, %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32 }
%struct.proc_ns_operations = type opaque
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, i32, [10 x %struct.atomic_t] }
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
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.38 }
%struct.anon.38 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.42 }
%struct.anon.42 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.49, i32, [12 x i8] }
%union.anon.49 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.50 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.51, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.54 }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { i64, i64 }
%union.anon.54 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.fsnotify_mark_connector = type opaque
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.atomic_t, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, %struct.list_head, %struct.key*, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [10 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.30 }
%union.anon.30 = type { %struct.anon.31, [48 x i8] }
%struct.anon.31 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.32, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%union.anon.67 = type { %struct.list_head }
%union.anon.68 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.60 = type { %struct.callback_head }
%union.anon.61 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, i64, i32, i32 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type opaque
%struct.swap_info_struct = type { i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.64 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.62 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.62 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.34 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.34 = type { %struct.callback_head }
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
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
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
%struct.dev_pm_qos_request = type { i32, %union.anon.70, %struct.device* }
%union.anon.70 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, %struct.freq_constraints* }
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
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%union.acpi_object = type { %struct.anon.76 }
%struct.anon.76 = type { i32, i32, i64, i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.78, i32, i32, %struct.list_head }
%struct.anon.78 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.79, i8, i8, i32 }
%struct.anon.79 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.proc_dir_entry = type opaque
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.acpi_buffer = type { i64, i8* }

@.str = private unnamed_addr constant [3 x i8] c"D0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"D1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"D2\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"D3hot\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"D3cold\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Power state %s not supported\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"Cannot transition to power state %s for parent in %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Cannot transition from %s to %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Failed to change power state to %s\0A\00", align 1
@acpi_pm_notifier_install_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @acpi_pm_notifier_install_lock to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @acpi_pm_notifier_install_lock to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !0
@acpi_pm_notifier_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @acpi_pm_notifier_lock to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @acpi_pm_notifier_lock to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !5301
@acpi_dev_pm_attach.special_pm_ids = internal constant [4 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"PNP0C0B\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"INT3404\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"INTC1044\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !5295
@acpi_general_pm_domain = internal global %struct.dev_pm_domain { %struct.dev_pm_ops { i32 (%struct.device*)* @acpi_subsys_prepare, void (%struct.device*)* @acpi_subsys_complete, i32 (%struct.device*)* @acpi_subsys_suspend, i32 (%struct.device*)* null, i32 (%struct.device*)* @acpi_subsys_freeze, i32 (%struct.device*)* null, i32 (%struct.device*)* @acpi_subsys_poweroff, i32 (%struct.device*)* null, i32 (%struct.device*)* @acpi_subsys_suspend_late, i32 (%struct.device*)* @acpi_subsys_resume_early, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @acpi_subsys_poweroff_late, i32 (%struct.device*)* @acpi_subsys_restore_early, i32 (%struct.device*)* @acpi_subsys_suspend_noirq, i32 (%struct.device*)* @acpi_subsys_resume_noirq, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @acpi_subsys_poweroff_noirq, i32 (%struct.device*)* null, i32 (%struct.device*)* @acpi_subsys_runtime_suspend, i32 (%struct.device*)* @acpi_subsys_runtime_resume, i32 (%struct.device*)* null }, i32 (%struct.device*)* null, void (%struct.device*, i1)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, void (%struct.device*)* null }, align 8, !dbg !5305
@.str.10 = private unnamed_addr constant [5 x i8] c"_PSC\00", align 1
@acpi_wakeup_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @acpi_wakeup_lock to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @acpi_wakeup_lock to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !5303
@pm_suspend_global_flags = external dso_local global i32, align 4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @acpi_power_state_string(i32 %state) #0 !dbg !5312 {
entry:
  %retval = alloca i8*, align 8
  %state.addr = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !5315, metadata !DIExpression()), !dbg !5316
  %0 = load i32, i32* %state.addr, align 4, !dbg !5317
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
  ], !dbg !5318

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %retval, align 8, !dbg !5319
  br label %return, !dbg !5319

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %retval, align 8, !dbg !5321
  br label %return, !dbg !5321

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %retval, align 8, !dbg !5322
  br label %return, !dbg !5322

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %retval, align 8, !dbg !5323
  br label %return, !dbg !5323

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %retval, align 8, !dbg !5324
  br label %return, !dbg !5324

sw.default:                                       ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %retval, align 8, !dbg !5325
  br label %return, !dbg !5325

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8, !dbg !5326
  ret i8* %1, !dbg !5326
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_device_get_power(%struct.acpi_device* %device, i32* %state) #0 !dbg !5327 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %state.addr = alloca i32*, align 8
  %result = alloca i32, align 4
  %error = alloca i32, align 4
  %psc = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !5330, metadata !DIExpression()), !dbg !5331
  store i32* %state, i32** %state.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %state.addr, metadata !5332, metadata !DIExpression()), !dbg !5333
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5334, metadata !DIExpression()), !dbg !5335
  store i32 255, i32* %result, align 4, !dbg !5335
  call void @llvm.dbg.declare(metadata i32* %error, metadata !5336, metadata !DIExpression()), !dbg !5337
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5338
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !5338
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5340

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32*, i32** %state.addr, align 8, !dbg !5341
  %tobool1 = icmp ne i32* %1, null, !dbg !5341
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5342

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5343
  br label %return, !dbg !5343

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5344
  %flags = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 9, !dbg !5346
  %3 = bitcast %struct.acpi_device_flags* %flags to i32*, !dbg !5347
  %bf.load = load i32, i32* %3, align 4, !dbg !5347
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !5347
  %bf.clear = and i32 %bf.lshr, 1, !dbg !5347
  %tobool2 = icmp ne i32 %bf.clear, 0, !dbg !5344
  br i1 %tobool2, label %if.end7, label %if.then3, !dbg !5348

if.then3:                                         ; preds = %if.end
  %4 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5349
  %parent = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 3, !dbg !5351
  %5 = load %struct.acpi_device*, %struct.acpi_device** %parent, align 8, !dbg !5351
  %tobool4 = icmp ne %struct.acpi_device* %5, null, !dbg !5349
  br i1 %tobool4, label %cond.true, label %cond.false, !dbg !5349

cond.true:                                        ; preds = %if.then3
  %6 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5352
  %parent5 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 3, !dbg !5353
  %7 = load %struct.acpi_device*, %struct.acpi_device** %parent5, align 8, !dbg !5353
  %power = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 11, !dbg !5354
  %state6 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power, i32 0, i32 0, !dbg !5355
  %8 = load i32, i32* %state6, align 8, !dbg !5355
  br label %cond.end, !dbg !5349

cond.false:                                       ; preds = %if.then3
  br label %cond.end, !dbg !5349

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ 0, %cond.false ], !dbg !5349
  %9 = load i32*, i32** %state.addr, align 8, !dbg !5356
  store i32 %cond, i32* %9, align 4, !dbg !5357
  br label %out, !dbg !5358

if.end7:                                          ; preds = %if.end
  %10 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5359
  %power8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 11, !dbg !5361
  %flags9 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power8, i32 0, i32 1, !dbg !5362
  %11 = bitcast %struct.acpi_device_power_flags* %flags9 to i32*, !dbg !5363
  %bf.load10 = load i32, i32* %11, align 4, !dbg !5363
  %bf.lshr11 = lshr i32 %bf.load10, 1, !dbg !5363
  %bf.clear12 = and i32 %bf.lshr11, 1, !dbg !5363
  %tobool13 = icmp ne i32 %bf.clear12, 0, !dbg !5359
  br i1 %tobool13, label %if.then14, label %if.end18, !dbg !5364

if.then14:                                        ; preds = %if.end7
  %12 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5365
  %call = call i32 @acpi_power_get_inferred_state(%struct.acpi_device* %12, i32* %result) #4, !dbg !5367
  store i32 %call, i32* %error, align 4, !dbg !5368
  %13 = load i32, i32* %error, align 4, !dbg !5369
  %tobool15 = icmp ne i32 %13, 0, !dbg !5369
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5371

if.then16:                                        ; preds = %if.then14
  %14 = load i32, i32* %error, align 4, !dbg !5372
  store i32 %14, i32* %retval, align 4, !dbg !5373
  br label %return, !dbg !5373

if.end17:                                         ; preds = %if.then14
  br label %if.end18, !dbg !5374

if.end18:                                         ; preds = %if.end17, %if.end7
  %15 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5375
  %power19 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 11, !dbg !5377
  %flags20 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power19, i32 0, i32 1, !dbg !5378
  %16 = bitcast %struct.acpi_device_power_flags* %flags20 to i32*, !dbg !5379
  %bf.load21 = load i32, i32* %16, align 4, !dbg !5379
  %bf.clear22 = and i32 %bf.load21, 1, !dbg !5379
  %tobool23 = icmp ne i32 %bf.clear22, 0, !dbg !5375
  br i1 %tobool23, label %if.then24, label %if.end40, !dbg !5380

if.then24:                                        ; preds = %if.end18
  call void @llvm.dbg.declare(metadata i32* %psc, metadata !5381, metadata !DIExpression()), !dbg !5383
  %17 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5384
  %call25 = call i32 @acpi_dev_pm_explicit_get(%struct.acpi_device* %17, i32* %psc) #4, !dbg !5385
  store i32 %call25, i32* %error, align 4, !dbg !5386
  %18 = load i32, i32* %error, align 4, !dbg !5387
  %tobool26 = icmp ne i32 %18, 0, !dbg !5387
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !5389

if.then27:                                        ; preds = %if.then24
  %19 = load i32, i32* %error, align 4, !dbg !5390
  store i32 %19, i32* %retval, align 4, !dbg !5391
  br label %return, !dbg !5391

if.end28:                                         ; preds = %if.then24
  %20 = load i32, i32* %psc, align 4, !dbg !5392
  %21 = load i32, i32* %result, align 4, !dbg !5394
  %cmp = icmp sgt i32 %20, %21, !dbg !5395
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !5396

land.lhs.true:                                    ; preds = %if.end28
  %22 = load i32, i32* %psc, align 4, !dbg !5397
  %cmp29 = icmp slt i32 %22, 4, !dbg !5398
  br i1 %cmp29, label %if.then30, label %if.else, !dbg !5399

if.then30:                                        ; preds = %land.lhs.true
  %23 = load i32, i32* %psc, align 4, !dbg !5400
  store i32 %23, i32* %result, align 4, !dbg !5401
  br label %if.end39, !dbg !5402

if.else:                                          ; preds = %land.lhs.true, %if.end28
  %24 = load i32, i32* %result, align 4, !dbg !5403
  %cmp31 = icmp eq i32 %24, 255, !dbg !5405
  br i1 %cmp31, label %if.then32, label %if.end38, !dbg !5406

if.then32:                                        ; preds = %if.else
  %25 = load i32, i32* %psc, align 4, !dbg !5407
  %cmp33 = icmp sgt i32 %25, 2, !dbg !5408
  br i1 %cmp33, label %cond.true34, label %cond.false35, !dbg !5407

cond.true34:                                      ; preds = %if.then32
  br label %cond.end36, !dbg !5407

cond.false35:                                     ; preds = %if.then32
  %26 = load i32, i32* %psc, align 4, !dbg !5409
  br label %cond.end36, !dbg !5407

cond.end36:                                       ; preds = %cond.false35, %cond.true34
  %cond37 = phi i32 [ 3, %cond.true34 ], [ %26, %cond.false35 ], !dbg !5407
  store i32 %cond37, i32* %result, align 4, !dbg !5410
  br label %if.end38, !dbg !5411

if.end38:                                         ; preds = %cond.end36, %if.else
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then30
  br label %if.end40, !dbg !5412

if.end40:                                         ; preds = %if.end39, %if.end18
  %27 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5413
  %power41 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %27, i32 0, i32 11, !dbg !5415
  %flags42 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power41, i32 0, i32 1, !dbg !5416
  %28 = bitcast %struct.acpi_device_power_flags* %flags42 to i32*, !dbg !5417
  %bf.load43 = load i32, i32* %28, align 4, !dbg !5417
  %bf.lshr44 = lshr i32 %bf.load43, 4, !dbg !5417
  %bf.clear45 = and i32 %bf.lshr44, 1, !dbg !5417
  %tobool46 = icmp ne i32 %bf.clear45, 0, !dbg !5413
  br i1 %tobool46, label %if.end61, label %land.lhs.true47, !dbg !5418

land.lhs.true47:                                  ; preds = %if.end40
  %29 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5419
  %parent48 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %29, i32 0, i32 3, !dbg !5420
  %30 = load %struct.acpi_device*, %struct.acpi_device** %parent48, align 8, !dbg !5420
  %tobool49 = icmp ne %struct.acpi_device* %30, null, !dbg !5419
  br i1 %tobool49, label %land.lhs.true50, label %if.end61, !dbg !5421

land.lhs.true50:                                  ; preds = %land.lhs.true47
  %31 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5422
  %parent51 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %31, i32 0, i32 3, !dbg !5423
  %32 = load %struct.acpi_device*, %struct.acpi_device** %parent51, align 8, !dbg !5423
  %power52 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 11, !dbg !5424
  %state53 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power52, i32 0, i32 0, !dbg !5425
  %33 = load i32, i32* %state53, align 8, !dbg !5425
  %cmp54 = icmp eq i32 %33, 255, !dbg !5426
  br i1 %cmp54, label %land.lhs.true55, label %if.end61, !dbg !5427

land.lhs.true55:                                  ; preds = %land.lhs.true50
  %34 = load i32, i32* %result, align 4, !dbg !5428
  %cmp56 = icmp eq i32 %34, 0, !dbg !5429
  br i1 %cmp56, label %if.then57, label %if.end61, !dbg !5430

if.then57:                                        ; preds = %land.lhs.true55
  %35 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5431
  %parent58 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %35, i32 0, i32 3, !dbg !5432
  %36 = load %struct.acpi_device*, %struct.acpi_device** %parent58, align 8, !dbg !5432
  %power59 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %36, i32 0, i32 11, !dbg !5433
  %state60 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power59, i32 0, i32 0, !dbg !5434
  store i32 0, i32* %state60, align 8, !dbg !5435
  br label %if.end61, !dbg !5431

if.end61:                                         ; preds = %if.then57, %land.lhs.true55, %land.lhs.true50, %land.lhs.true47, %if.end40
  %37 = load i32, i32* %result, align 4, !dbg !5436
  %38 = load i32*, i32** %state.addr, align 8, !dbg !5437
  store i32 %37, i32* %38, align 4, !dbg !5438
  br label %out, !dbg !5439

out:                                              ; preds = %if.end61, %cond.end
  call void @llvm.dbg.label(metadata !5440), !dbg !5441
  store i32 0, i32* %retval, align 4, !dbg !5442
  br label %return, !dbg !5442

return:                                           ; preds = %out, %if.then27, %if.then16, %if.then
  %39 = load i32, i32* %retval, align 4, !dbg !5443
  ret i32 %39, !dbg !5443
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_power_get_inferred_state(%struct.acpi_device*, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_dev_pm_explicit_get(%struct.acpi_device* %device, i32* %state) #0 !dbg !5444 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %state.addr = alloca i32*, align 8
  %psc = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !5445, metadata !DIExpression()), !dbg !5446
  store i32* %state, i32** %state.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %state.addr, metadata !5447, metadata !DIExpression()), !dbg !5448
  call void @llvm.dbg.declare(metadata i64* %psc, metadata !5449, metadata !DIExpression()), !dbg !5450
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5451, metadata !DIExpression()), !dbg !5452
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5453
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 1, !dbg !5454
  %1 = load i8*, i8** %handle, align 8, !dbg !5454
  %call = call i32 @acpi_evaluate_integer(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %struct.acpi_object_list* null, i64* %psc) #4, !dbg !5455
  store i32 %call, i32* %status, align 4, !dbg !5456
  %2 = load i32, i32* %status, align 4, !dbg !5457
  %tobool = icmp ne i32 %2, 0, !dbg !5457
  br i1 %tobool, label %if.then, label %if.end, !dbg !5459

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5460
  br label %return, !dbg !5460

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %psc, align 8, !dbg !5461
  %conv = trunc i64 %3 to i32, !dbg !5461
  %4 = load i32*, i32** %state.addr, align 8, !dbg !5462
  store i32 %conv, i32* %4, align 4, !dbg !5463
  store i32 0, i32* %retval, align 4, !dbg !5464
  br label %return, !dbg !5464

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5465
  ret i32 %5, !dbg !5465
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_device_set_power(%struct.acpi_device* %device, i32 %state) #0 !dbg !5466 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %state.addr = alloca i32, align 4
  %target_state = alloca i32, align 4
  %result = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cur_state = alloca i32, align 4
  %psc = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !5469, metadata !DIExpression()), !dbg !5470
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !5471, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.declare(metadata i32* %target_state, metadata !5473, metadata !DIExpression()), !dbg !5474
  %0 = load i32, i32* %state.addr, align 4, !dbg !5475
  store i32 %0, i32* %target_state, align 4, !dbg !5474
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5476, metadata !DIExpression()), !dbg !5477
  store i32 0, i32* %result, align 4, !dbg !5477
  %1 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5478
  %tobool = icmp ne %struct.acpi_device* %1, null, !dbg !5478
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5480

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5481
  %flags = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 9, !dbg !5482
  %3 = bitcast %struct.acpi_device_flags* %flags to i32*, !dbg !5483
  %bf.load = load i32, i32* %3, align 4, !dbg !5483
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !5483
  %bf.clear = and i32 %bf.lshr, 1, !dbg !5483
  %tobool1 = icmp ne i32 %bf.clear, 0, !dbg !5481
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !5484

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load i32, i32* %state.addr, align 4, !dbg !5485
  %cmp = icmp slt i32 %4, 0, !dbg !5486
  br i1 %cmp, label %if.then, label %lor.lhs.false3, !dbg !5487

lor.lhs.false3:                                   ; preds = %lor.lhs.false2
  %5 = load i32, i32* %state.addr, align 4, !dbg !5488
  %cmp4 = icmp sgt i32 %5, 4, !dbg !5489
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5490

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5491
  br label %return, !dbg !5491

if.end:                                           ; preds = %lor.lhs.false3
  store i32 0, i32* %tmp, align 4, !dbg !5492
  %6 = load i32, i32* %tmp, align 4, !dbg !5495
  %7 = load i32, i32* %state.addr, align 4, !dbg !5496
  %cmp5 = icmp sgt i32 %7, 0, !dbg !5498
  br i1 %cmp5, label %land.lhs.true, label %if.end9, !dbg !5499

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* %state.addr, align 4, !dbg !5500
  %9 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5501
  %power = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 11, !dbg !5502
  %state6 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power, i32 0, i32 0, !dbg !5503
  %10 = load i32, i32* %state6, align 8, !dbg !5503
  %cmp7 = icmp eq i32 %8, %10, !dbg !5504
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5505

if.then8:                                         ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !5506
  br label %return, !dbg !5506

if.end9:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i32, i32* %state.addr, align 4, !dbg !5508
  %cmp10 = icmp eq i32 %11, 4, !dbg !5510
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !5511

if.then11:                                        ; preds = %if.end9
  store i32 3, i32* %state.addr, align 4, !dbg !5512
  %12 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5514
  %power12 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 11, !dbg !5516
  %states = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power12, i32 0, i32 2, !dbg !5517
  %arrayidx = getelementptr [5 x %struct.acpi_device_power_state], [5 x %struct.acpi_device_power_state]* %states, i64 0, i64 4, !dbg !5514
  %flags13 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %arrayidx, i32 0, i32 0, !dbg !5518
  %13 = bitcast %struct.anon.78* %flags13 to i8*, !dbg !5519
  %bf.load14 = load i8, i8* %13, align 8, !dbg !5519
  %bf.clear15 = and i8 %bf.load14, 1, !dbg !5519
  %tobool16 = icmp ne i8 %bf.clear15, 0, !dbg !5514
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !5520

if.then17:                                        ; preds = %if.then11
  %14 = load i32, i32* %state.addr, align 4, !dbg !5521
  store i32 %14, i32* %target_state, align 4, !dbg !5522
  br label %if.end18, !dbg !5523

if.end18:                                         ; preds = %if.then17, %if.then11
  br label %if.end28, !dbg !5524

if.else:                                          ; preds = %if.end9
  %15 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5525
  %power19 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 11, !dbg !5527
  %states20 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power19, i32 0, i32 2, !dbg !5528
  %16 = load i32, i32* %state.addr, align 4, !dbg !5529
  %idxprom = sext i32 %16 to i64, !dbg !5525
  %arrayidx21 = getelementptr [5 x %struct.acpi_device_power_state], [5 x %struct.acpi_device_power_state]* %states20, i64 0, i64 %idxprom, !dbg !5525
  %flags22 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %arrayidx21, i32 0, i32 0, !dbg !5530
  %17 = bitcast %struct.anon.78* %flags22 to i8*, !dbg !5531
  %bf.load23 = load i8, i8* %17, align 8, !dbg !5531
  %bf.clear24 = and i8 %bf.load23, 1, !dbg !5531
  %tobool25 = icmp ne i8 %bf.clear24, 0, !dbg !5525
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !5532

if.then26:                                        ; preds = %if.else
  %18 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5533
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 21, !dbg !5533
  %19 = load i32, i32* %state.addr, align 4, !dbg !5533
  %call = call i8* @acpi_power_state_string(i32 %19) #4, !dbg !5533
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %call) #5, !dbg !5533
  store i32 -19, i32* %retval, align 4, !dbg !5535
  br label %return, !dbg !5535

if.end27:                                         ; preds = %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end18
  %20 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5536
  %power29 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 11, !dbg !5538
  %flags30 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power29, i32 0, i32 1, !dbg !5539
  %21 = bitcast %struct.acpi_device_power_flags* %flags30 to i32*, !dbg !5540
  %bf.load31 = load i32, i32* %21, align 4, !dbg !5540
  %bf.lshr32 = lshr i32 %bf.load31, 4, !dbg !5540
  %bf.clear33 = and i32 %bf.lshr32, 1, !dbg !5540
  %tobool34 = icmp ne i32 %bf.clear33, 0, !dbg !5536
  br i1 %tobool34, label %if.end49, label %land.lhs.true35, !dbg !5541

land.lhs.true35:                                  ; preds = %if.end28
  %22 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5542
  %parent = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 3, !dbg !5543
  %23 = load %struct.acpi_device*, %struct.acpi_device** %parent, align 8, !dbg !5543
  %tobool36 = icmp ne %struct.acpi_device* %23, null, !dbg !5542
  br i1 %tobool36, label %land.lhs.true37, label %if.end49, !dbg !5544

land.lhs.true37:                                  ; preds = %land.lhs.true35
  %24 = load i32, i32* %state.addr, align 4, !dbg !5545
  %25 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5546
  %parent38 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %25, i32 0, i32 3, !dbg !5547
  %26 = load %struct.acpi_device*, %struct.acpi_device** %parent38, align 8, !dbg !5547
  %power39 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 11, !dbg !5548
  %state40 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power39, i32 0, i32 0, !dbg !5549
  %27 = load i32, i32* %state40, align 8, !dbg !5549
  %cmp41 = icmp slt i32 %24, %27, !dbg !5550
  br i1 %cmp41, label %if.then42, label %if.end49, !dbg !5551

if.then42:                                        ; preds = %land.lhs.true37
  %28 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5552
  %dev43 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %28, i32 0, i32 21, !dbg !5552
  %29 = load i32, i32* %state.addr, align 4, !dbg !5552
  %call44 = call i8* @acpi_power_state_string(i32 %29) #4, !dbg !5552
  %30 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5552
  %parent45 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %30, i32 0, i32 3, !dbg !5552
  %31 = load %struct.acpi_device*, %struct.acpi_device** %parent45, align 8, !dbg !5552
  %power46 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %31, i32 0, i32 11, !dbg !5552
  %state47 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power46, i32 0, i32 0, !dbg !5552
  %32 = load i32, i32* %state47, align 8, !dbg !5552
  %call48 = call i8* @acpi_power_state_string(i32 %32) #4, !dbg !5552
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev43, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i8* %call44, i8* %call48) #5, !dbg !5552
  store i32 -19, i32* %retval, align 4, !dbg !5554
  br label %return, !dbg !5554

if.end49:                                         ; preds = %land.lhs.true37, %land.lhs.true35, %if.end28
  %33 = load i32, i32* %state.addr, align 4, !dbg !5555
  %cmp50 = icmp sgt i32 %33, 0, !dbg !5557
  br i1 %cmp50, label %if.then51, label %if.else80, !dbg !5558

if.then51:                                        ; preds = %if.end49
  %34 = load i32, i32* %state.addr, align 4, !dbg !5559
  %35 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5562
  %power52 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %35, i32 0, i32 11, !dbg !5563
  %state53 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power52, i32 0, i32 0, !dbg !5564
  %36 = load i32, i32* %state53, align 8, !dbg !5564
  %cmp54 = icmp slt i32 %34, %36, !dbg !5565
  br i1 %cmp54, label %if.then55, label %if.end61, !dbg !5566

if.then55:                                        ; preds = %if.then51
  %37 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5567
  %dev56 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %37, i32 0, i32 21, !dbg !5567
  %38 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5567
  %power57 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %38, i32 0, i32 11, !dbg !5567
  %state58 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power57, i32 0, i32 0, !dbg !5567
  %39 = load i32, i32* %state58, align 8, !dbg !5567
  %call59 = call i8* @acpi_power_state_string(i32 %39) #4, !dbg !5567
  %40 = load i32, i32* %state.addr, align 4, !dbg !5567
  %call60 = call i8* @acpi_power_state_string(i32 %40) #4, !dbg !5567
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %call59, i8* %call60) #5, !dbg !5567
  store i32 -19, i32* %retval, align 4, !dbg !5569
  br label %return, !dbg !5569

if.end61:                                         ; preds = %if.then51
  %41 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5570
  %power62 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %41, i32 0, i32 11, !dbg !5572
  %state63 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power62, i32 0, i32 0, !dbg !5573
  %42 = load i32, i32* %state63, align 8, !dbg !5573
  %cmp64 = icmp slt i32 %42, 3, !dbg !5574
  br i1 %cmp64, label %if.then65, label %if.end70, !dbg !5575

if.then65:                                        ; preds = %if.end61
  %43 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5576
  %44 = load i32, i32* %state.addr, align 4, !dbg !5578
  %call66 = call i32 @acpi_dev_pm_explicit_set(%struct.acpi_device* %43, i32 %44) #4, !dbg !5579
  store i32 %call66, i32* %result, align 4, !dbg !5580
  %45 = load i32, i32* %result, align 4, !dbg !5581
  %tobool67 = icmp ne i32 %45, 0, !dbg !5581
  br i1 %tobool67, label %if.then68, label %if.end69, !dbg !5583

if.then68:                                        ; preds = %if.then65
  br label %end, !dbg !5584

if.end69:                                         ; preds = %if.then65
  br label %if.end70, !dbg !5585

if.end70:                                         ; preds = %if.end69, %if.end61
  %46 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5586
  %power71 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %46, i32 0, i32 11, !dbg !5588
  %flags72 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power71, i32 0, i32 1, !dbg !5589
  %47 = bitcast %struct.acpi_device_power_flags* %flags72 to i32*, !dbg !5590
  %bf.load73 = load i32, i32* %47, align 4, !dbg !5590
  %bf.lshr74 = lshr i32 %bf.load73, 1, !dbg !5590
  %bf.clear75 = and i32 %bf.lshr74, 1, !dbg !5590
  %tobool76 = icmp ne i32 %bf.clear75, 0, !dbg !5586
  br i1 %tobool76, label %if.then77, label %if.end79, !dbg !5591

if.then77:                                        ; preds = %if.end70
  %48 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5592
  %49 = load i32, i32* %target_state, align 4, !dbg !5593
  %call78 = call i32 @acpi_power_transition(%struct.acpi_device* %48, i32 %49) #4, !dbg !5594
  store i32 %call78, i32* %result, align 4, !dbg !5595
  br label %if.end79, !dbg !5596

if.end79:                                         ; preds = %if.then77, %if.end70
  br label %if.end112, !dbg !5597

if.else80:                                        ; preds = %if.end49
  call void @llvm.dbg.declare(metadata i32* %cur_state, metadata !5598, metadata !DIExpression()), !dbg !5600
  %50 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5601
  %power81 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %50, i32 0, i32 11, !dbg !5602
  %state82 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power81, i32 0, i32 0, !dbg !5603
  %51 = load i32, i32* %state82, align 8, !dbg !5603
  store i32 %51, i32* %cur_state, align 4, !dbg !5600
  %52 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5604
  %power83 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %52, i32 0, i32 11, !dbg !5606
  %flags84 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power83, i32 0, i32 1, !dbg !5607
  %53 = bitcast %struct.acpi_device_power_flags* %flags84 to i32*, !dbg !5608
  %bf.load85 = load i32, i32* %53, align 4, !dbg !5608
  %bf.lshr86 = lshr i32 %bf.load85, 1, !dbg !5608
  %bf.clear87 = and i32 %bf.lshr86, 1, !dbg !5608
  %tobool88 = icmp ne i32 %bf.clear87, 0, !dbg !5604
  br i1 %tobool88, label %if.then89, label %if.end94, !dbg !5609

if.then89:                                        ; preds = %if.else80
  %54 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5610
  %call90 = call i32 @acpi_power_transition(%struct.acpi_device* %54, i32 0) #4, !dbg !5612
  store i32 %call90, i32* %result, align 4, !dbg !5613
  %55 = load i32, i32* %result, align 4, !dbg !5614
  %tobool91 = icmp ne i32 %55, 0, !dbg !5614
  br i1 %tobool91, label %if.then92, label %if.end93, !dbg !5616

if.then92:                                        ; preds = %if.then89
  br label %end, !dbg !5617

if.end93:                                         ; preds = %if.then89
  br label %if.end94, !dbg !5618

if.end94:                                         ; preds = %if.end93, %if.else80
  %56 = load i32, i32* %cur_state, align 4, !dbg !5619
  %cmp95 = icmp eq i32 %56, 0, !dbg !5621
  br i1 %cmp95, label %if.then96, label %if.end110, !dbg !5622

if.then96:                                        ; preds = %if.end94
  call void @llvm.dbg.declare(metadata i32* %psc, metadata !5623, metadata !DIExpression()), !dbg !5625
  %57 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5626
  %power97 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %57, i32 0, i32 11, !dbg !5628
  %flags98 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power97, i32 0, i32 1, !dbg !5629
  %58 = bitcast %struct.acpi_device_power_flags* %flags98 to i32*, !dbg !5630
  %bf.load99 = load i32, i32* %58, align 4, !dbg !5630
  %bf.clear100 = and i32 %bf.load99, 1, !dbg !5630
  %tobool101 = icmp ne i32 %bf.clear100, 0, !dbg !5626
  br i1 %tobool101, label %if.end103, label %if.then102, !dbg !5631

if.then102:                                       ; preds = %if.then96
  store i32 0, i32* %retval, align 4, !dbg !5632
  br label %return, !dbg !5632

if.end103:                                        ; preds = %if.then96
  %59 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5633
  %call104 = call i32 @acpi_dev_pm_explicit_get(%struct.acpi_device* %59, i32* %psc) #4, !dbg !5634
  store i32 %call104, i32* %result, align 4, !dbg !5635
  %60 = load i32, i32* %result, align 4, !dbg !5636
  %tobool105 = icmp ne i32 %60, 0, !dbg !5636
  br i1 %tobool105, label %if.then108, label %lor.lhs.false106, !dbg !5638

lor.lhs.false106:                                 ; preds = %if.end103
  %61 = load i32, i32* %psc, align 4, !dbg !5639
  %cmp107 = icmp eq i32 %61, 0, !dbg !5640
  br i1 %cmp107, label %if.then108, label %if.end109, !dbg !5641

if.then108:                                       ; preds = %lor.lhs.false106, %if.end103
  store i32 0, i32* %retval, align 4, !dbg !5642
  br label %return, !dbg !5642

if.end109:                                        ; preds = %lor.lhs.false106
  br label %if.end110, !dbg !5643

if.end110:                                        ; preds = %if.end109, %if.end94
  %62 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5644
  %call111 = call i32 @acpi_dev_pm_explicit_set(%struct.acpi_device* %62, i32 0) #4, !dbg !5645
  store i32 %call111, i32* %result, align 4, !dbg !5646
  br label %if.end112

if.end112:                                        ; preds = %if.end110, %if.end79
  br label %end, !dbg !5647

end:                                              ; preds = %if.end112, %if.then92, %if.then68
  call void @llvm.dbg.label(metadata !5648), !dbg !5649
  %63 = load i32, i32* %result, align 4, !dbg !5650
  %tobool113 = icmp ne i32 %63, 0, !dbg !5650
  br i1 %tobool113, label %if.then114, label %if.else117, !dbg !5652

if.then114:                                       ; preds = %end
  %64 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5653
  %dev115 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %64, i32 0, i32 21, !dbg !5653
  %65 = load i32, i32* %target_state, align 4, !dbg !5653
  %call116 = call i8* @acpi_power_state_string(i32 %65) #4, !dbg !5653
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev115, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* %call116) #5, !dbg !5653
  br label %if.end120, !dbg !5655

if.else117:                                       ; preds = %end
  %66 = load i32, i32* %target_state, align 4, !dbg !5656
  %67 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5658
  %power118 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %67, i32 0, i32 11, !dbg !5659
  %state119 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power118, i32 0, i32 0, !dbg !5660
  store i32 %66, i32* %state119, align 8, !dbg !5661
  br label %if.end120

if.end120:                                        ; preds = %if.else117, %if.then114
  %68 = load i32, i32* %result, align 4, !dbg !5662
  store i32 %68, i32* %retval, align 4, !dbg !5663
  br label %return, !dbg !5663

return:                                           ; preds = %if.end120, %if.then108, %if.then102, %if.then55, %if.then42, %if.then26, %if.then8, %if.then
  %69 = load i32, i32* %retval, align 4, !dbg !5664
  ret i32 %69, !dbg !5664
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_dev_pm_explicit_set(%struct.acpi_device* %adev, i32 %state) #0 !dbg !5665 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca %struct.acpi_device*, align 8
  %state.addr = alloca i32, align 4
  %method = alloca [5 x i8], align 1
  %status = alloca i32, align 4
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !5666, metadata !DIExpression()), !dbg !5667
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !5668, metadata !DIExpression()), !dbg !5669
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5670
  %power = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 11, !dbg !5672
  %states = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power, i32 0, i32 2, !dbg !5673
  %1 = load i32, i32* %state.addr, align 4, !dbg !5674
  %idxprom = sext i32 %1 to i64, !dbg !5670
  %arrayidx = getelementptr [5 x %struct.acpi_device_power_state], [5 x %struct.acpi_device_power_state]* %states, i64 0, i64 %idxprom, !dbg !5670
  %flags = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %arrayidx, i32 0, i32 0, !dbg !5675
  %2 = bitcast %struct.anon.78* %flags to i8*, !dbg !5676
  %bf.load = load i8, i8* %2, align 8, !dbg !5676
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5676
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5676
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !5670
  br i1 %tobool, label %if.then, label %if.end6, !dbg !5677

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [5 x i8]* %method, metadata !5678, metadata !DIExpression()), !dbg !5681
  %arrayinit.begin = getelementptr inbounds [5 x i8], [5 x i8]* %method, i64 0, i64 0, !dbg !5682
  store i8 95, i8* %arrayinit.begin, align 1, !dbg !5682
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !5682
  store i8 80, i8* %arrayinit.element, align 1, !dbg !5682
  %arrayinit.element1 = getelementptr inbounds i8, i8* %arrayinit.element, i64 1, !dbg !5682
  store i8 83, i8* %arrayinit.element1, align 1, !dbg !5682
  %arrayinit.element2 = getelementptr inbounds i8, i8* %arrayinit.element1, i64 1, !dbg !5682
  %3 = load i32, i32* %state.addr, align 4, !dbg !5683
  %add = add i32 48, %3, !dbg !5684
  %conv = trunc i32 %add to i8, !dbg !5685
  store i8 %conv, i8* %arrayinit.element2, align 1, !dbg !5682
  %arrayinit.element3 = getelementptr inbounds i8, i8* %arrayinit.element2, i64 1, !dbg !5682
  store i8 0, i8* %arrayinit.element3, align 1, !dbg !5682
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5686, metadata !DIExpression()), !dbg !5687
  %4 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5688
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 1, !dbg !5689
  %5 = load i8*, i8** %handle, align 8, !dbg !5689
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %method, i64 0, i64 0, !dbg !5690
  %call = call i32 @acpi_evaluate_object(i8* %5, i8* %arraydecay, %struct.acpi_object_list* null, %struct.acpi_buffer* null) #4, !dbg !5691
  store i32 %call, i32* %status, align 4, !dbg !5692
  %6 = load i32, i32* %status, align 4, !dbg !5693
  %tobool4 = icmp ne i32 %6, 0, !dbg !5693
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !5695

if.then5:                                         ; preds = %if.then
  store i32 -19, i32* %retval, align 4, !dbg !5696
  br label %return, !dbg !5696

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !5697

if.end6:                                          ; preds = %if.end, %entry
  store i32 0, i32* %retval, align 4, !dbg !5698
  br label %return, !dbg !5698

return:                                           ; preds = %if.end6, %if.then5
  %7 = load i32, i32* %retval, align 4, !dbg !5699
  ret i32 %7, !dbg !5699
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_power_transition(%struct.acpi_device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_bus_set_power(i8* %handle, i32 %state) #0 !dbg !5700 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %state.addr = alloca i32, align 4
  %device = alloca %struct.acpi_device*, align 8
  %result = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !5703, metadata !DIExpression()), !dbg !5704
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !5705, metadata !DIExpression()), !dbg !5706
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !5707, metadata !DIExpression()), !dbg !5708
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5709, metadata !DIExpression()), !dbg !5710
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !5711
  %call = call i32 @acpi_bus_get_device(i8* %0, %struct.acpi_device** %device) #4, !dbg !5712
  store i32 %call, i32* %result, align 4, !dbg !5713
  %1 = load i32, i32* %result, align 4, !dbg !5714
  %tobool = icmp ne i32 %1, 0, !dbg !5714
  br i1 %tobool, label %if.then, label %if.end, !dbg !5716

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %result, align 4, !dbg !5717
  store i32 %2, i32* %retval, align 4, !dbg !5718
  br label %return, !dbg !5718

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !5719
  %4 = load i32, i32* %state.addr, align 4, !dbg !5720
  %call1 = call i32 @acpi_device_set_power(%struct.acpi_device* %3, i32 %4) #4, !dbg !5721
  store i32 %call1, i32* %retval, align 4, !dbg !5722
  br label %return, !dbg !5722

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5723
  ret i32 %5, !dbg !5723
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_get_device(i8*, %struct.acpi_device**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_bus_init_power(%struct.acpi_device* %device) #0 !dbg !5724 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %state = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !5725, metadata !DIExpression()), !dbg !5726
  call void @llvm.dbg.declare(metadata i32* %state, metadata !5727, metadata !DIExpression()), !dbg !5728
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5729, metadata !DIExpression()), !dbg !5730
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5731
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !5731
  br i1 %tobool, label %if.end, label %if.then, !dbg !5733

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5734
  br label %return, !dbg !5734

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5735
  %power = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 11, !dbg !5736
  %state1 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power, i32 0, i32 0, !dbg !5737
  store i32 255, i32* %state1, align 8, !dbg !5738
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5739
  %call = call zeroext i1 @acpi_device_is_present(%struct.acpi_device* %2) #4, !dbg !5741
  br i1 %call, label %if.end3, label %if.then2, !dbg !5742

if.then2:                                         ; preds = %if.end
  %3 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5743
  %flags = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 9, !dbg !5745
  %4 = bitcast %struct.acpi_device_flags* %flags to i32*, !dbg !5746
  %bf.load = load i32, i32* %4, align 4, !dbg !5747
  %bf.clear = and i32 %bf.load, -33, !dbg !5747
  store i32 %bf.clear, i32* %4, align 4, !dbg !5747
  store i32 -6, i32* %retval, align 4, !dbg !5748
  br label %return, !dbg !5748

if.end3:                                          ; preds = %if.end
  %5 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5749
  %call4 = call i32 @acpi_device_get_power(%struct.acpi_device* %5, i32* %state) #4, !dbg !5750
  store i32 %call4, i32* %result, align 4, !dbg !5751
  %6 = load i32, i32* %result, align 4, !dbg !5752
  %tobool5 = icmp ne i32 %6, 0, !dbg !5752
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5754

if.then6:                                         ; preds = %if.end3
  %7 = load i32, i32* %result, align 4, !dbg !5755
  store i32 %7, i32* %retval, align 4, !dbg !5756
  br label %return, !dbg !5756

if.end7:                                          ; preds = %if.end3
  %8 = load i32, i32* %state, align 4, !dbg !5757
  %cmp = icmp slt i32 %8, 4, !dbg !5759
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !5760

land.lhs.true:                                    ; preds = %if.end7
  %9 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5761
  %power8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 11, !dbg !5762
  %flags9 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power8, i32 0, i32 1, !dbg !5763
  %10 = bitcast %struct.acpi_device_power_flags* %flags9 to i32*, !dbg !5764
  %bf.load10 = load i32, i32* %10, align 4, !dbg !5764
  %bf.lshr = lshr i32 %bf.load10, 1, !dbg !5764
  %bf.clear11 = and i32 %bf.lshr, 1, !dbg !5764
  %tobool12 = icmp ne i32 %bf.clear11, 0, !dbg !5761
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !5765

if.then13:                                        ; preds = %land.lhs.true
  %11 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5766
  %12 = load i32, i32* %state, align 4, !dbg !5768
  %call14 = call i32 @acpi_power_on_resources(%struct.acpi_device* %11, i32 %12) #4, !dbg !5769
  store i32 %call14, i32* %result, align 4, !dbg !5770
  %13 = load i32, i32* %result, align 4, !dbg !5771
  %tobool15 = icmp ne i32 %13, 0, !dbg !5771
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5773

if.then16:                                        ; preds = %if.then13
  %14 = load i32, i32* %result, align 4, !dbg !5774
  store i32 %14, i32* %retval, align 4, !dbg !5775
  br label %return, !dbg !5775

if.end17:                                         ; preds = %if.then13
  %15 = load i32, i32* %state, align 4, !dbg !5776
  %cmp18 = icmp eq i32 %15, 0, !dbg !5778
  br i1 %cmp18, label %if.then19, label %if.end24, !dbg !5779

if.then19:                                        ; preds = %if.end17
  %16 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5780
  %17 = load i32, i32* %state, align 4, !dbg !5782
  %call20 = call i32 @acpi_dev_pm_explicit_set(%struct.acpi_device* %16, i32 %17) #4, !dbg !5783
  store i32 %call20, i32* %result, align 4, !dbg !5784
  %18 = load i32, i32* %result, align 4, !dbg !5785
  %tobool21 = icmp ne i32 %18, 0, !dbg !5785
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !5787

if.then22:                                        ; preds = %if.then19
  %19 = load i32, i32* %result, align 4, !dbg !5788
  store i32 %19, i32* %retval, align 4, !dbg !5789
  br label %return, !dbg !5789

if.end23:                                         ; preds = %if.then19
  br label %if.end24, !dbg !5790

if.end24:                                         ; preds = %if.end23, %if.end17
  br label %if.end28, !dbg !5791

if.else:                                          ; preds = %land.lhs.true, %if.end7
  %20 = load i32, i32* %state, align 4, !dbg !5792
  %cmp25 = icmp eq i32 %20, 255, !dbg !5794
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !5795

if.then26:                                        ; preds = %if.else
  store i32 0, i32* %state, align 4, !dbg !5796
  br label %if.end27, !dbg !5798

if.end27:                                         ; preds = %if.then26, %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end24
  %21 = load i32, i32* %state, align 4, !dbg !5799
  %22 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5800
  %power29 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 11, !dbg !5801
  %state30 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power29, i32 0, i32 0, !dbg !5802
  store i32 %21, i32* %state30, align 8, !dbg !5803
  store i32 0, i32* %retval, align 4, !dbg !5804
  br label %return, !dbg !5804

return:                                           ; preds = %if.end28, %if.then22, %if.then16, %if.then6, %if.then2, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !5805
  ret i32 %23, !dbg !5805
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_device_is_present(%struct.acpi_device*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_power_on_resources(%struct.acpi_device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_device_fix_up_power(%struct.acpi_device* %device) #0 !dbg !5806 {
entry:
  %device.addr = alloca %struct.acpi_device*, align 8
  %ret = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !5807, metadata !DIExpression()), !dbg !5808
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5809, metadata !DIExpression()), !dbg !5810
  store i32 0, i32* %ret, align 4, !dbg !5810
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5811
  %power = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 11, !dbg !5813
  %flags = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power, i32 0, i32 1, !dbg !5814
  %1 = bitcast %struct.acpi_device_power_flags* %flags to i32*, !dbg !5815
  %bf.load = load i32, i32* %1, align 4, !dbg !5815
  %bf.lshr = lshr i32 %bf.load, 1, !dbg !5815
  %bf.clear = and i32 %bf.lshr, 1, !dbg !5815
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !5811
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5816

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5817
  %power1 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 11, !dbg !5818
  %flags2 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power1, i32 0, i32 1, !dbg !5819
  %3 = bitcast %struct.acpi_device_power_flags* %flags2 to i32*, !dbg !5820
  %bf.load3 = load i32, i32* %3, align 4, !dbg !5820
  %bf.clear4 = and i32 %bf.load3, 1, !dbg !5820
  %tobool5 = icmp ne i32 %bf.clear4, 0, !dbg !5817
  br i1 %tobool5, label %if.end, label %land.lhs.true6, !dbg !5821

land.lhs.true6:                                   ; preds = %land.lhs.true
  %4 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5822
  %power7 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 11, !dbg !5823
  %state = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power7, i32 0, i32 0, !dbg !5824
  %5 = load i32, i32* %state, align 8, !dbg !5824
  %cmp = icmp eq i32 %5, 0, !dbg !5825
  br i1 %cmp, label %if.then, label %if.end, !dbg !5826

if.then:                                          ; preds = %land.lhs.true6
  %6 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5827
  %call = call i32 @acpi_dev_pm_explicit_set(%struct.acpi_device* %6, i32 0) #4, !dbg !5828
  store i32 %call, i32* %ret, align 4, !dbg !5829
  br label %if.end, !dbg !5830

if.end:                                           ; preds = %if.then, %land.lhs.true6, %land.lhs.true, %entry
  %7 = load i32, i32* %ret, align 4, !dbg !5831
  ret i32 %7, !dbg !5832
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_device_update_power(%struct.acpi_device* %device, i32* %state_p) #0 !dbg !5833 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %state_p.addr = alloca i32*, align 8
  %state = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !5834, metadata !DIExpression()), !dbg !5835
  store i32* %state_p, i32** %state_p.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %state_p.addr, metadata !5836, metadata !DIExpression()), !dbg !5837
  call void @llvm.dbg.declare(metadata i32* %state, metadata !5838, metadata !DIExpression()), !dbg !5839
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5840, metadata !DIExpression()), !dbg !5841
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5842
  %power = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 11, !dbg !5844
  %state1 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power, i32 0, i32 0, !dbg !5845
  %1 = load i32, i32* %state1, align 8, !dbg !5845
  %cmp = icmp eq i32 %1, 255, !dbg !5846
  br i1 %cmp, label %if.then, label %if.end6, !dbg !5847

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5848
  %call = call i32 @acpi_bus_init_power(%struct.acpi_device* %2) #4, !dbg !5850
  store i32 %call, i32* %result, align 4, !dbg !5851
  %3 = load i32, i32* %result, align 4, !dbg !5852
  %tobool = icmp ne i32 %3, 0, !dbg !5852
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5854

land.lhs.true:                                    ; preds = %if.then
  %4 = load i32*, i32** %state_p.addr, align 8, !dbg !5855
  %tobool2 = icmp ne i32* %4, null, !dbg !5855
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !5856

if.then3:                                         ; preds = %land.lhs.true
  %5 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5857
  %power4 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 11, !dbg !5858
  %state5 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power4, i32 0, i32 0, !dbg !5859
  %6 = load i32, i32* %state5, align 8, !dbg !5859
  %7 = load i32*, i32** %state_p.addr, align 8, !dbg !5860
  store i32 %6, i32* %7, align 4, !dbg !5861
  br label %if.end, !dbg !5862

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  %8 = load i32, i32* %result, align 4, !dbg !5863
  store i32 %8, i32* %retval, align 4, !dbg !5864
  br label %return, !dbg !5864

if.end6:                                          ; preds = %entry
  %9 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5865
  %call7 = call i32 @acpi_device_get_power(%struct.acpi_device* %9, i32* %state) #4, !dbg !5866
  store i32 %call7, i32* %result, align 4, !dbg !5867
  %10 = load i32, i32* %result, align 4, !dbg !5868
  %tobool8 = icmp ne i32 %10, 0, !dbg !5868
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5870

if.then9:                                         ; preds = %if.end6
  %11 = load i32, i32* %result, align 4, !dbg !5871
  store i32 %11, i32* %retval, align 4, !dbg !5872
  br label %return, !dbg !5872

if.end10:                                         ; preds = %if.end6
  %12 = load i32, i32* %state, align 4, !dbg !5873
  %cmp11 = icmp eq i32 %12, 255, !dbg !5875
  br i1 %cmp11, label %if.then12, label %if.else, !dbg !5876

if.then12:                                        ; preds = %if.end10
  store i32 0, i32* %state, align 4, !dbg !5877
  %13 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5879
  %14 = load i32, i32* %state, align 4, !dbg !5880
  %call13 = call i32 @acpi_device_set_power(%struct.acpi_device* %13, i32 %14) #4, !dbg !5881
  store i32 %call13, i32* %result, align 4, !dbg !5882
  %15 = load i32, i32* %result, align 4, !dbg !5883
  %tobool14 = icmp ne i32 %15, 0, !dbg !5883
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5885

if.then15:                                        ; preds = %if.then12
  %16 = load i32, i32* %result, align 4, !dbg !5886
  store i32 %16, i32* %retval, align 4, !dbg !5887
  br label %return, !dbg !5887

if.end16:                                         ; preds = %if.then12
  br label %if.end27, !dbg !5888

if.else:                                          ; preds = %if.end10
  %17 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5889
  %power17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 11, !dbg !5892
  %flags = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power17, i32 0, i32 1, !dbg !5893
  %18 = bitcast %struct.acpi_device_power_flags* %flags to i32*, !dbg !5894
  %bf.load = load i32, i32* %18, align 4, !dbg !5894
  %bf.lshr = lshr i32 %bf.load, 1, !dbg !5894
  %bf.clear = and i32 %bf.lshr, 1, !dbg !5894
  %tobool18 = icmp ne i32 %bf.clear, 0, !dbg !5889
  br i1 %tobool18, label %if.then19, label %if.end24, !dbg !5895

if.then19:                                        ; preds = %if.else
  %19 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5896
  %20 = load i32, i32* %state, align 4, !dbg !5898
  %call20 = call i32 @acpi_power_transition(%struct.acpi_device* %19, i32 %20) #4, !dbg !5899
  store i32 %call20, i32* %result, align 4, !dbg !5900
  %21 = load i32, i32* %result, align 4, !dbg !5901
  %tobool21 = icmp ne i32 %21, 0, !dbg !5901
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !5903

if.then22:                                        ; preds = %if.then19
  %22 = load i32, i32* %result, align 4, !dbg !5904
  store i32 %22, i32* %retval, align 4, !dbg !5905
  br label %return, !dbg !5905

if.end23:                                         ; preds = %if.then19
  br label %if.end24, !dbg !5906

if.end24:                                         ; preds = %if.end23, %if.else
  %23 = load i32, i32* %state, align 4, !dbg !5907
  %24 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !5908
  %power25 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %24, i32 0, i32 11, !dbg !5909
  %state26 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power25, i32 0, i32 0, !dbg !5910
  store i32 %23, i32* %state26, align 8, !dbg !5911
  br label %if.end27

if.end27:                                         ; preds = %if.end24, %if.end16
  %25 = load i32*, i32** %state_p.addr, align 8, !dbg !5912
  %tobool28 = icmp ne i32* %25, null, !dbg !5912
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !5914

if.then29:                                        ; preds = %if.end27
  %26 = load i32, i32* %state, align 4, !dbg !5915
  %27 = load i32*, i32** %state_p.addr, align 8, !dbg !5916
  store i32 %26, i32* %27, align 4, !dbg !5917
  br label %if.end30, !dbg !5918

if.end30:                                         ; preds = %if.then29, %if.end27
  store i32 0, i32* %retval, align 4, !dbg !5919
  br label %return, !dbg !5919

return:                                           ; preds = %if.end30, %if.then22, %if.then15, %if.then9, %if.end
  %28 = load i32, i32* %retval, align 4, !dbg !5920
  ret i32 %28, !dbg !5920
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_bus_update_power(i8* %handle, i32* %state_p) #0 !dbg !5921 {
entry:
  %handle.addr = alloca i8*, align 8
  %state_p.addr = alloca i32*, align 8
  %device = alloca %struct.acpi_device*, align 8
  %result = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !5924, metadata !DIExpression()), !dbg !5925
  store i32* %state_p, i32** %state_p.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %state_p.addr, metadata !5926, metadata !DIExpression()), !dbg !5927
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !5928, metadata !DIExpression()), !dbg !5929
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5930, metadata !DIExpression()), !dbg !5931
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !5932
  %call = call i32 @acpi_bus_get_device(i8* %0, %struct.acpi_device** %device) #4, !dbg !5933
  store i32 %call, i32* %result, align 4, !dbg !5934
  %1 = load i32, i32* %result, align 4, !dbg !5935
  %tobool = icmp ne i32 %1, 0, !dbg !5935
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5935

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %result, align 4, !dbg !5936
  br label %cond.end, !dbg !5935

cond.false:                                       ; preds = %entry
  %3 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !5937
  %4 = load i32*, i32** %state_p.addr, align 8, !dbg !5938
  %call1 = call i32 @acpi_device_update_power(%struct.acpi_device* %3, i32* %4) #4, !dbg !5939
  br label %cond.end, !dbg !5935

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %call1, %cond.false ], !dbg !5935
  ret i32 %cond, !dbg !5940
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @acpi_bus_power_manageable(i8* %handle) #0 !dbg !5941 {
entry:
  %handle.addr = alloca i8*, align 8
  %device = alloca %struct.acpi_device*, align 8
  %result = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !5944, metadata !DIExpression()), !dbg !5945
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !5946, metadata !DIExpression()), !dbg !5947
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5948, metadata !DIExpression()), !dbg !5949
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !5950
  %call = call i32 @acpi_bus_get_device(i8* %0, %struct.acpi_device** %device) #4, !dbg !5951
  store i32 %call, i32* %result, align 4, !dbg !5952
  %1 = load i32, i32* %result, align 4, !dbg !5953
  %tobool = icmp ne i32 %1, 0, !dbg !5953
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5953

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5953

cond.false:                                       ; preds = %entry
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !5954
  %flags = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 9, !dbg !5955
  %3 = bitcast %struct.acpi_device_flags* %flags to i32*, !dbg !5956
  %bf.load = load i32, i32* %3, align 4, !dbg !5956
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !5956
  %bf.clear = and i32 %bf.lshr, 1, !dbg !5956
  br label %cond.end, !dbg !5953

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %bf.clear, %cond.false ], !dbg !5953
  %tobool1 = icmp ne i32 %cond, 0, !dbg !5953
  ret i1 %tobool1, !dbg !5957
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_pm_wakeup_event(%struct.device* %dev) #0 !dbg !5958 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5959, metadata !DIExpression()), !dbg !5960
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5961
  %call = call zeroext i1 @acpi_s2idle_wakeup() #4, !dbg !5962
  call void @pm_wakeup_dev_event(%struct.device* %0, i32 0, i1 zeroext %call) #4, !dbg !5963
  ret void, !dbg !5964
}

; Function Attrs: noredzone
declare dso_local void @pm_wakeup_dev_event(%struct.device*, i32, i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_s2idle_wakeup() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_add_pm_notifier(%struct.acpi_device* %adev, %struct.device* %dev, void (%struct.acpi_device_wakeup_context*)* %func) #0 !dbg !5965 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca %struct.acpi_device*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %func.addr = alloca void (%struct.acpi_device_wakeup_context*)*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !5968, metadata !DIExpression()), !dbg !5969
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5970, metadata !DIExpression()), !dbg !5971
  store void (%struct.acpi_device_wakeup_context*)* %func, void (%struct.acpi_device_wakeup_context*)** %func.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.acpi_device_wakeup_context*)** %func.addr, metadata !5972, metadata !DIExpression()), !dbg !5973
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5974, metadata !DIExpression()), !dbg !5975
  store i32 7, i32* %status, align 4, !dbg !5975
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5976
  %tobool = icmp ne %struct.device* %0, null, !dbg !5976
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5978

land.lhs.true:                                    ; preds = %entry
  %1 = load void (%struct.acpi_device_wakeup_context*)*, void (%struct.acpi_device_wakeup_context*)** %func.addr, align 8, !dbg !5979
  %tobool1 = icmp ne void (%struct.acpi_device_wakeup_context*)* %1, null, !dbg !5979
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5980

if.then:                                          ; preds = %land.lhs.true
  store i32 4097, i32* %retval, align 4, !dbg !5981
  br label %return, !dbg !5981

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @mutex_lock(%struct.mutex* @acpi_pm_notifier_install_lock) #4, !dbg !5982
  %2 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5983
  %wakeup = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 12, !dbg !5985
  %flags = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup, i32 0, i32 4, !dbg !5986
  %3 = bitcast %struct.acpi_device_wakeup_flags* %flags to i8*, !dbg !5987
  %bf.load = load i8, i8* %3, align 8, !dbg !5987
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5987
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5987
  %tobool2 = icmp ne i8 %bf.clear, 0, !dbg !5983
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5988

if.then3:                                         ; preds = %if.end
  br label %out, !dbg !5989

if.end4:                                          ; preds = %if.end
  %4 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5990
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 1, !dbg !5991
  %5 = load i8*, i8** %handle, align 8, !dbg !5991
  %call = call i32 @acpi_install_notify_handler(i8* %5, i32 1, void (i8*, i32, i8*)* @acpi_pm_notify_handler, i8* null) #4, !dbg !5992
  store i32 %call, i32* %status, align 4, !dbg !5993
  %6 = load i32, i32* %status, align 4, !dbg !5994
  %tobool5 = icmp ne i32 %6, 0, !dbg !5994
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5996

if.then6:                                         ; preds = %if.end4
  br label %out, !dbg !5997

if.end7:                                          ; preds = %if.end4
  call void @mutex_lock(%struct.mutex* @acpi_pm_notifier_lock) #4, !dbg !5998
  %7 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5999
  %dev8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 21, !dbg !6000
  %8 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6001
  %dev9 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 21, !dbg !6002
  %call10 = call i8* @dev_name(%struct.device* %dev9) #4, !dbg !6003
  %call11 = call %struct.wakeup_source* @wakeup_source_register(%struct.device* %dev8, i8* %call10) #4, !dbg !6004
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6005
  %wakeup12 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 12, !dbg !6006
  %ws = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup12, i32 0, i32 6, !dbg !6007
  store %struct.wakeup_source* %call11, %struct.wakeup_source** %ws, align 8, !dbg !6008
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6009
  %11 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6010
  %wakeup13 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 12, !dbg !6011
  %context = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup13, i32 0, i32 5, !dbg !6012
  %dev14 = getelementptr inbounds %struct.acpi_device_wakeup_context, %struct.acpi_device_wakeup_context* %context, i32 0, i32 1, !dbg !6013
  store %struct.device* %10, %struct.device** %dev14, align 8, !dbg !6014
  %12 = load void (%struct.acpi_device_wakeup_context*)*, void (%struct.acpi_device_wakeup_context*)** %func.addr, align 8, !dbg !6015
  %13 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6016
  %wakeup15 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 12, !dbg !6017
  %context16 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup15, i32 0, i32 5, !dbg !6018
  %func17 = getelementptr inbounds %struct.acpi_device_wakeup_context, %struct.acpi_device_wakeup_context* %context16, i32 0, i32 0, !dbg !6019
  store void (%struct.acpi_device_wakeup_context*)* %12, void (%struct.acpi_device_wakeup_context*)** %func17, align 8, !dbg !6020
  %14 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6021
  %wakeup18 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 12, !dbg !6022
  %flags19 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup18, i32 0, i32 4, !dbg !6023
  %15 = bitcast %struct.acpi_device_wakeup_flags* %flags19 to i8*, !dbg !6024
  %bf.load20 = load i8, i8* %15, align 8, !dbg !6025
  %bf.clear21 = and i8 %bf.load20, -3, !dbg !6025
  %bf.set = or i8 %bf.clear21, 2, !dbg !6025
  store i8 %bf.set, i8* %15, align 8, !dbg !6025
  call void @mutex_unlock(%struct.mutex* @acpi_pm_notifier_lock) #4, !dbg !6026
  br label %out, !dbg !6026

out:                                              ; preds = %if.end7, %if.then6, %if.then3
  call void @llvm.dbg.label(metadata !6027), !dbg !6028
  call void @mutex_unlock(%struct.mutex* @acpi_pm_notifier_install_lock) #4, !dbg !6029
  %16 = load i32, i32* %status, align 4, !dbg !6030
  store i32 %16, i32* %retval, align 4, !dbg !6031
  br label %return, !dbg !6031

return:                                           ; preds = %out, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !6032
  ret i32 %17, !dbg !6032
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_install_notify_handler(i8*, i32, void (i8*, i32, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_pm_notify_handler(i8* %handle, i32 %val, i8* %not_used) #0 !dbg !6033 {
entry:
  %handle.addr = alloca i8*, align 8
  %val.addr = alloca i32, align 4
  %not_used.addr = alloca i8*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %tmp = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !6036, metadata !DIExpression()), !dbg !6037
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6038, metadata !DIExpression()), !dbg !6039
  store i8* %not_used, i8** %not_used.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %not_used.addr, metadata !6040, metadata !DIExpression()), !dbg !6041
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !6042, metadata !DIExpression()), !dbg !6043
  %0 = load i32, i32* %val.addr, align 4, !dbg !6044
  %cmp = icmp ne i32 %0, 2, !dbg !6046
  br i1 %cmp, label %if.then, label %if.end, !dbg !6047

if.then:                                          ; preds = %entry
  br label %return, !dbg !6048

if.end:                                           ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !6049
  %1 = load i32, i32* %tmp, align 4, !dbg !6052
  %2 = load i8*, i8** %handle.addr, align 8, !dbg !6053
  %call = call %struct.acpi_device* @acpi_bus_get_acpi_device(i8* %2) #4, !dbg !6054
  store %struct.acpi_device* %call, %struct.acpi_device** %adev, align 8, !dbg !6055
  %3 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6056
  %tobool = icmp ne %struct.acpi_device* %3, null, !dbg !6056
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !6058

if.then1:                                         ; preds = %if.end
  br label %return, !dbg !6059

if.end2:                                          ; preds = %if.end
  call void @mutex_lock(%struct.mutex* @acpi_pm_notifier_lock) #4, !dbg !6060
  %4 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6061
  %wakeup = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 12, !dbg !6063
  %flags = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup, i32 0, i32 4, !dbg !6064
  %5 = bitcast %struct.acpi_device_wakeup_flags* %flags to i8*, !dbg !6065
  %bf.load = load i8, i8* %5, align 8, !dbg !6065
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !6065
  %bf.clear = and i8 %bf.lshr, 1, !dbg !6065
  %tobool3 = icmp ne i8 %bf.clear, 0, !dbg !6061
  br i1 %tobool3, label %if.then4, label %if.end17, !dbg !6066

if.then4:                                         ; preds = %if.end2
  %6 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6067
  %wakeup5 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 12, !dbg !6069
  %ws = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup5, i32 0, i32 6, !dbg !6070
  %7 = load %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8, !dbg !6070
  %call6 = call zeroext i1 @acpi_s2idle_wakeup() #4, !dbg !6071
  call void @pm_wakeup_ws_event(%struct.wakeup_source* %7, i32 0, i1 zeroext %call6) #4, !dbg !6072
  %8 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6073
  %wakeup7 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 12, !dbg !6075
  %context = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup7, i32 0, i32 5, !dbg !6076
  %func = getelementptr inbounds %struct.acpi_device_wakeup_context, %struct.acpi_device_wakeup_context* %context, i32 0, i32 0, !dbg !6077
  %9 = load void (%struct.acpi_device_wakeup_context*)*, void (%struct.acpi_device_wakeup_context*)** %func, align 8, !dbg !6077
  %tobool8 = icmp ne void (%struct.acpi_device_wakeup_context*)* %9, null, !dbg !6073
  br i1 %tobool8, label %if.then9, label %if.end16, !dbg !6078

if.then9:                                         ; preds = %if.then4
  store i32 0, i32* %tmp10, align 4, !dbg !6079
  %10 = load i32, i32* %tmp10, align 4, !dbg !6083
  %11 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6084
  %wakeup11 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 12, !dbg !6085
  %context12 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup11, i32 0, i32 5, !dbg !6086
  %func13 = getelementptr inbounds %struct.acpi_device_wakeup_context, %struct.acpi_device_wakeup_context* %context12, i32 0, i32 0, !dbg !6087
  %12 = load void (%struct.acpi_device_wakeup_context*)*, void (%struct.acpi_device_wakeup_context*)** %func13, align 8, !dbg !6087
  %13 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6088
  %wakeup14 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 12, !dbg !6089
  %context15 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup14, i32 0, i32 5, !dbg !6090
  call void %12(%struct.acpi_device_wakeup_context* %context15) #4, !dbg !6084
  br label %if.end16, !dbg !6091

if.end16:                                         ; preds = %if.then9, %if.then4
  br label %if.end17, !dbg !6092

if.end17:                                         ; preds = %if.end16, %if.end2
  call void @mutex_unlock(%struct.mutex* @acpi_pm_notifier_lock) #4, !dbg !6093
  %14 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6094
  call void @acpi_bus_put_acpi_device(%struct.acpi_device* %14) #4, !dbg !6095
  br label %return, !dbg !6096

return:                                           ; preds = %if.end17, %if.then1, %if.then
  ret void, !dbg !6096
}

; Function Attrs: noredzone
declare dso_local %struct.wakeup_source* @wakeup_source_register(%struct.device*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !6097 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6100, metadata !DIExpression()), !dbg !6101
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6102
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !6104
  %1 = load i8*, i8** %init_name, align 8, !dbg !6104
  %tobool = icmp ne i8* %1, null, !dbg !6102
  br i1 %tobool, label %if.then, label %if.end, !dbg !6105

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6106
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !6107
  %3 = load i8*, i8** %init_name1, align 8, !dbg !6107
  store i8* %3, i8** %retval, align 8, !dbg !6108
  br label %return, !dbg !6108

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6109
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !6110
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #4, !dbg !6111
  store i8* %call, i8** %retval, align 8, !dbg !6112
  br label %return, !dbg !6112

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !6113
  ret i8* %5, !dbg !6113
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_remove_pm_notifier(%struct.acpi_device* %adev) #0 !dbg !6114 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !6117, metadata !DIExpression()), !dbg !6118
  call void @llvm.dbg.declare(metadata i32* %status, metadata !6119, metadata !DIExpression()), !dbg !6120
  store i32 4097, i32* %status, align 4, !dbg !6120
  call void @mutex_lock(%struct.mutex* @acpi_pm_notifier_install_lock) #4, !dbg !6121
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6122
  %wakeup = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 12, !dbg !6124
  %flags = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup, i32 0, i32 4, !dbg !6125
  %1 = bitcast %struct.acpi_device_wakeup_flags* %flags to i8*, !dbg !6126
  %bf.load = load i8, i8* %1, align 8, !dbg !6126
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !6126
  %bf.clear = and i8 %bf.lshr, 1, !dbg !6126
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !6122
  br i1 %tobool, label %if.end, label %if.then, !dbg !6127

if.then:                                          ; preds = %entry
  br label %out, !dbg !6128

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6129
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 1, !dbg !6130
  %3 = load i8*, i8** %handle, align 8, !dbg !6130
  %call = call i32 @acpi_remove_notify_handler(i8* %3, i32 1, void (i8*, i32, i8*)* @acpi_pm_notify_handler) #4, !dbg !6131
  store i32 %call, i32* %status, align 4, !dbg !6132
  %4 = load i32, i32* %status, align 4, !dbg !6133
  %tobool1 = icmp ne i32 %4, 0, !dbg !6133
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !6135

if.then2:                                         ; preds = %if.end
  br label %out, !dbg !6136

if.end3:                                          ; preds = %if.end
  call void @mutex_lock(%struct.mutex* @acpi_pm_notifier_lock) #4, !dbg !6137
  %5 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6138
  %wakeup4 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 12, !dbg !6139
  %context = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup4, i32 0, i32 5, !dbg !6140
  %func = getelementptr inbounds %struct.acpi_device_wakeup_context, %struct.acpi_device_wakeup_context* %context, i32 0, i32 0, !dbg !6141
  store void (%struct.acpi_device_wakeup_context*)* null, void (%struct.acpi_device_wakeup_context*)** %func, align 8, !dbg !6142
  %6 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6143
  %wakeup5 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 12, !dbg !6144
  %context6 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup5, i32 0, i32 5, !dbg !6145
  %dev = getelementptr inbounds %struct.acpi_device_wakeup_context, %struct.acpi_device_wakeup_context* %context6, i32 0, i32 1, !dbg !6146
  store %struct.device* null, %struct.device** %dev, align 8, !dbg !6147
  %7 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6148
  %wakeup7 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 12, !dbg !6149
  %ws = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup7, i32 0, i32 6, !dbg !6150
  %8 = load %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8, !dbg !6150
  call void @wakeup_source_unregister(%struct.wakeup_source* %8) #4, !dbg !6151
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6152
  %wakeup8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 12, !dbg !6153
  %flags9 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup8, i32 0, i32 4, !dbg !6154
  %10 = bitcast %struct.acpi_device_wakeup_flags* %flags9 to i8*, !dbg !6155
  %bf.load10 = load i8, i8* %10, align 8, !dbg !6156
  %bf.clear11 = and i8 %bf.load10, -3, !dbg !6156
  store i8 %bf.clear11, i8* %10, align 8, !dbg !6156
  call void @mutex_unlock(%struct.mutex* @acpi_pm_notifier_lock) #4, !dbg !6157
  br label %out, !dbg !6157

out:                                              ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.dbg.label(metadata !6158), !dbg !6159
  call void @mutex_unlock(%struct.mutex* @acpi_pm_notifier_install_lock) #4, !dbg !6160
  %11 = load i32, i32* %status, align 4, !dbg !6161
  ret i32 %11, !dbg !6162
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_remove_notify_handler(i8*, i32, void (i8*, i32, i8*)*) #2

; Function Attrs: noredzone
declare dso_local void @wakeup_source_unregister(%struct.wakeup_source*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @acpi_bus_can_wakeup(i8* %handle) #0 !dbg !6163 {
entry:
  %handle.addr = alloca i8*, align 8
  %device = alloca %struct.acpi_device*, align 8
  %result = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !6164, metadata !DIExpression()), !dbg !6165
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !6166, metadata !DIExpression()), !dbg !6167
  call void @llvm.dbg.declare(metadata i32* %result, metadata !6168, metadata !DIExpression()), !dbg !6169
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !6170
  %call = call i32 @acpi_bus_get_device(i8* %0, %struct.acpi_device** %device) #4, !dbg !6171
  store i32 %call, i32* %result, align 4, !dbg !6172
  %1 = load i32, i32* %result, align 4, !dbg !6173
  %tobool = icmp ne i32 %1, 0, !dbg !6173
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6173

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !6173

cond.false:                                       ; preds = %entry
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !6174
  %wakeup = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 12, !dbg !6175
  %flags = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup, i32 0, i32 4, !dbg !6176
  %3 = bitcast %struct.acpi_device_wakeup_flags* %flags to i8*, !dbg !6177
  %bf.load = load i8, i8* %3, align 8, !dbg !6177
  %bf.clear = and i8 %bf.load, 1, !dbg !6177
  %conv = zext i8 %bf.clear to i32, !dbg !6174
  br label %cond.end, !dbg !6173

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ], !dbg !6173
  %tobool1 = icmp ne i32 %cond, 0, !dbg !6173
  ret i1 %tobool1, !dbg !6178
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @acpi_pm_device_can_wakeup(%struct.device* %dev) #0 !dbg !6179 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6182, metadata !DIExpression()), !dbg !6183
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !6184, metadata !DIExpression()), !dbg !6185
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !6186, metadata !DIExpression()), !dbg !6188
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6188
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 24, !dbg !6188
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !6188
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6188
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6188
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #4, !dbg !6188
  br i1 %call, label %cond.true, label %cond.false, !dbg !6188

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6189, metadata !DIExpression()), !dbg !6191
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6191
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !6191
  store i8* %4, i8** %__mptr, align 8, !dbg !6191
  br label %do.body, !dbg !6191

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !6192

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !6191
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !6191
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !6191
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp1, align 8, !dbg !6192
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !6191
  br label %cond.end, !dbg !6188

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6188

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !6188
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !6188
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !6188
  store %struct.acpi_device* %8, %struct.acpi_device** %adev, align 8, !dbg !6185
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6194
  %tobool = icmp ne %struct.acpi_device* %9, null, !dbg !6194
  br i1 %tobool, label %cond.true2, label %cond.false4, !dbg !6194

cond.true2:                                       ; preds = %cond.end
  %10 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6195
  %call3 = call zeroext i1 @acpi_device_can_wakeup(%struct.acpi_device* %10) #4, !dbg !6196
  %conv = zext i1 %call3 to i32, !dbg !6196
  br label %cond.end5, !dbg !6194

cond.false4:                                      ; preds = %cond.end
  br label %cond.end5, !dbg !6194

cond.end5:                                        ; preds = %cond.false4, %cond.true2
  %cond6 = phi i32 [ %conv, %cond.true2 ], [ 0, %cond.false4 ], !dbg !6194
  %tobool7 = icmp ne i32 %cond6, 0, !dbg !6194
  ret i1 %tobool7, !dbg !6197
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_acpi_device_node(%struct.fwnode_handle*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_device_can_wakeup(%struct.acpi_device* %adev) #0 !dbg !6198 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !6201, metadata !DIExpression()), !dbg !6202
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6203
  %wakeup = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 12, !dbg !6204
  %flags = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup, i32 0, i32 4, !dbg !6205
  %1 = bitcast %struct.acpi_device_wakeup_flags* %flags to i8*, !dbg !6206
  %bf.load = load i8, i8* %1, align 8, !dbg !6206
  %bf.clear = and i8 %bf.load, 1, !dbg !6206
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !6203
  ret i1 %tobool, !dbg !6207
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_pm_device_sleep_state(%struct.device* %dev, i32* %d_min_p, i32 %d_max_in) #0 !dbg !6208 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %d_min_p.addr = alloca i32*, align 8
  %d_max_in.addr = alloca i32, align 4
  %adev = alloca %struct.acpi_device*, align 8
  %ret = alloca i32, align 4
  %d_min = alloca i32, align 4
  %d_max = alloca i32, align 4
  %stat = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp9 = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6211, metadata !DIExpression()), !dbg !6212
  store i32* %d_min_p, i32** %d_min_p.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %d_min_p.addr, metadata !6213, metadata !DIExpression()), !dbg !6214
  store i32 %d_max_in, i32* %d_max_in.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %d_max_in.addr, metadata !6215, metadata !DIExpression()), !dbg !6216
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !6217, metadata !DIExpression()), !dbg !6218
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6219, metadata !DIExpression()), !dbg !6220
  call void @llvm.dbg.declare(metadata i32* %d_min, metadata !6221, metadata !DIExpression()), !dbg !6222
  call void @llvm.dbg.declare(metadata i32* %d_max, metadata !6223, metadata !DIExpression()), !dbg !6224
  %0 = load i32, i32* %d_max_in.addr, align 4, !dbg !6225
  %cmp = icmp slt i32 %0, 0, !dbg !6227
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6228

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %d_max_in.addr, align 4, !dbg !6229
  %cmp1 = icmp sgt i32 %1, 4, !dbg !6230
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6231

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !6232
  br label %return, !dbg !6232

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %d_max_in.addr, align 4, !dbg !6233
  %cmp2 = icmp sgt i32 %2, 2, !dbg !6235
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !6236

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %stat, metadata !6237, metadata !DIExpression()), !dbg !6239
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6240
  %call = call i32 @dev_pm_qos_flags(%struct.device* %3, i32 1) #4, !dbg !6241
  store i32 %call, i32* %stat, align 4, !dbg !6242
  %4 = load i32, i32* %stat, align 4, !dbg !6243
  %cmp4 = icmp eq i32 %4, 2, !dbg !6245
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6246

if.then5:                                         ; preds = %if.then3
  store i32 2, i32* %d_max_in.addr, align 4, !dbg !6247
  br label %if.end6, !dbg !6248

if.end6:                                          ; preds = %if.then5, %if.then3
  br label %if.end7, !dbg !6249

if.end7:                                          ; preds = %if.end6, %if.end
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !6250, metadata !DIExpression()), !dbg !6252
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6252
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 24, !dbg !6252
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !6252
  store %struct.fwnode_handle* %6, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6252
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6252
  %call8 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %7) #4, !dbg !6252
  br i1 %call8, label %cond.true, label %cond.false, !dbg !6252

cond.true:                                        ; preds = %if.end7
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6253, metadata !DIExpression()), !dbg !6255
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6255
  %9 = bitcast %struct.fwnode_handle* %8 to i8*, !dbg !6255
  store i8* %9, i8** %__mptr, align 8, !dbg !6255
  br label %do.body, !dbg !6255

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !6256

do.end:                                           ; preds = %do.body
  %10 = load i8*, i8** %__mptr, align 8, !dbg !6255
  %add.ptr = getelementptr i8, i8* %10, i64 -16, !dbg !6255
  %11 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !6255
  store %struct.acpi_device* %11, %struct.acpi_device** %tmp9, align 8, !dbg !6256
  %12 = load %struct.acpi_device*, %struct.acpi_device** %tmp9, align 8, !dbg !6255
  br label %cond.end, !dbg !6252

cond.false:                                       ; preds = %if.end7
  br label %cond.end, !dbg !6252

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %12, %do.end ], [ null, %cond.false ], !dbg !6252
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !6252
  %13 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !6252
  store %struct.acpi_device* %13, %struct.acpi_device** %adev, align 8, !dbg !6258
  %14 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6259
  %tobool = icmp ne %struct.acpi_device* %14, null, !dbg !6259
  br i1 %tobool, label %if.end11, label %if.then10, !dbg !6261

if.then10:                                        ; preds = %cond.end
  store i32 -19, i32* %retval, align 4, !dbg !6262
  br label %return, !dbg !6262

if.end11:                                         ; preds = %cond.end
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6264
  %16 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6265
  %call12 = call i32 @acpi_target_system_state() #4, !dbg !6266
  %call13 = call i32 @acpi_dev_pm_get_state(%struct.device* %15, %struct.acpi_device* %16, i32 %call12, i32* %d_min, i32* %d_max) #4, !dbg !6267
  store i32 %call13, i32* %ret, align 4, !dbg !6268
  %17 = load i32, i32* %ret, align 4, !dbg !6269
  %tobool14 = icmp ne i32 %17, 0, !dbg !6269
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !6271

if.then15:                                        ; preds = %if.end11
  %18 = load i32, i32* %ret, align 4, !dbg !6272
  store i32 %18, i32* %retval, align 4, !dbg !6273
  br label %return, !dbg !6273

if.end16:                                         ; preds = %if.end11
  %19 = load i32, i32* %d_max_in.addr, align 4, !dbg !6274
  %20 = load i32, i32* %d_min, align 4, !dbg !6276
  %cmp17 = icmp slt i32 %19, %20, !dbg !6277
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !6278

if.then18:                                        ; preds = %if.end16
  store i32 -22, i32* %retval, align 4, !dbg !6279
  br label %return, !dbg !6279

if.end19:                                         ; preds = %if.end16
  %21 = load i32, i32* %d_max, align 4, !dbg !6280
  %22 = load i32, i32* %d_max_in.addr, align 4, !dbg !6282
  %cmp20 = icmp sgt i32 %21, %22, !dbg !6283
  br i1 %cmp20, label %if.then21, label %if.end26, !dbg !6284

if.then21:                                        ; preds = %if.end19
  %23 = load i32, i32* %d_max_in.addr, align 4, !dbg !6285
  store i32 %23, i32* %d_max, align 4, !dbg !6288
  br label %for.cond, !dbg !6289

for.cond:                                         ; preds = %for.inc, %if.then21
  %24 = load i32, i32* %d_max, align 4, !dbg !6290
  %25 = load i32, i32* %d_min, align 4, !dbg !6292
  %cmp22 = icmp sgt i32 %24, %25, !dbg !6293
  br i1 %cmp22, label %for.body, label %for.end, !dbg !6294

for.body:                                         ; preds = %for.cond
  %26 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6295
  %power = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 11, !dbg !6298
  %states = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power, i32 0, i32 2, !dbg !6299
  %27 = load i32, i32* %d_max, align 4, !dbg !6300
  %idxprom = sext i32 %27 to i64, !dbg !6295
  %arrayidx = getelementptr [5 x %struct.acpi_device_power_state], [5 x %struct.acpi_device_power_state]* %states, i64 0, i64 %idxprom, !dbg !6295
  %flags = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %arrayidx, i32 0, i32 0, !dbg !6301
  %28 = bitcast %struct.anon.78* %flags to i8*, !dbg !6302
  %bf.load = load i8, i8* %28, align 8, !dbg !6302
  %bf.clear = and i8 %bf.load, 1, !dbg !6302
  %tobool23 = icmp ne i8 %bf.clear, 0, !dbg !6295
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !6303

if.then24:                                        ; preds = %for.body
  br label %for.end, !dbg !6304

if.end25:                                         ; preds = %for.body
  br label %for.inc, !dbg !6305

for.inc:                                          ; preds = %if.end25
  %29 = load i32, i32* %d_max, align 4, !dbg !6306
  %dec = add i32 %29, -1, !dbg !6306
  store i32 %dec, i32* %d_max, align 4, !dbg !6306
  br label %for.cond, !dbg !6307, !llvm.loop !6308

for.end:                                          ; preds = %if.then24, %for.cond
  br label %if.end26, !dbg !6310

if.end26:                                         ; preds = %for.end, %if.end19
  %30 = load i32*, i32** %d_min_p.addr, align 8, !dbg !6311
  %tobool27 = icmp ne i32* %30, null, !dbg !6311
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !6313

if.then28:                                        ; preds = %if.end26
  %31 = load i32, i32* %d_min, align 4, !dbg !6314
  %32 = load i32*, i32** %d_min_p.addr, align 8, !dbg !6315
  store i32 %31, i32* %32, align 4, !dbg !6316
  br label %if.end29, !dbg !6317

if.end29:                                         ; preds = %if.then28, %if.end26
  %33 = load i32, i32* %d_max, align 4, !dbg !6318
  store i32 %33, i32* %retval, align 4, !dbg !6319
  br label %return, !dbg !6319

return:                                           ; preds = %if.end29, %if.then18, %if.then15, %if.then10, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !6320
  ret i32 %34, !dbg !6320
}

; Function Attrs: noredzone
declare dso_local i32 @dev_pm_qos_flags(%struct.device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_dev_pm_get_state(%struct.device* %dev, %struct.acpi_device* %adev, i32 %target_state, i32* %d_min_p, i32* %d_max_p) #0 !dbg !6321 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %adev.addr = alloca %struct.acpi_device*, align 8
  %target_state.addr = alloca i32, align 4
  %d_min_p.addr = alloca i32*, align 8
  %d_max_p.addr = alloca i32*, align 8
  %method = alloca [5 x i8], align 1
  %handle = alloca i8*, align 8
  %ret = alloca i64, align 8
  %d_min = alloca i32, align 4
  %d_max = alloca i32, align 4
  %wakeup = alloca i8, align 1
  %has_sxd = alloca i8, align 1
  %status = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6324, metadata !DIExpression()), !dbg !6325
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !6326, metadata !DIExpression()), !dbg !6327
  store i32 %target_state, i32* %target_state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %target_state.addr, metadata !6328, metadata !DIExpression()), !dbg !6329
  store i32* %d_min_p, i32** %d_min_p.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %d_min_p.addr, metadata !6330, metadata !DIExpression()), !dbg !6331
  store i32* %d_max_p, i32** %d_max_p.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %d_max_p.addr, metadata !6332, metadata !DIExpression()), !dbg !6333
  call void @llvm.dbg.declare(metadata [5 x i8]* %method, metadata !6334, metadata !DIExpression()), !dbg !6335
  %arrayinit.begin = getelementptr inbounds [5 x i8], [5 x i8]* %method, i64 0, i64 0, !dbg !6336
  store i8 95, i8* %arrayinit.begin, align 1, !dbg !6336
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !6336
  store i8 83, i8* %arrayinit.element, align 1, !dbg !6336
  %arrayinit.element1 = getelementptr inbounds i8, i8* %arrayinit.element, i64 1, !dbg !6336
  %0 = load i32, i32* %target_state.addr, align 4, !dbg !6337
  %add = add i32 48, %0, !dbg !6338
  %conv = trunc i32 %add to i8, !dbg !6339
  store i8 %conv, i8* %arrayinit.element1, align 1, !dbg !6336
  %arrayinit.element2 = getelementptr inbounds i8, i8* %arrayinit.element1, i64 1, !dbg !6336
  store i8 68, i8* %arrayinit.element2, align 1, !dbg !6336
  %arrayinit.element3 = getelementptr inbounds i8, i8* %arrayinit.element2, i64 1, !dbg !6336
  store i8 0, i8* %arrayinit.element3, align 1, !dbg !6336
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !6340, metadata !DIExpression()), !dbg !6341
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6342
  %handle4 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 1, !dbg !6343
  %2 = load i8*, i8** %handle4, align 8, !dbg !6343
  store i8* %2, i8** %handle, align 8, !dbg !6341
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !6344, metadata !DIExpression()), !dbg !6345
  call void @llvm.dbg.declare(metadata i32* %d_min, metadata !6346, metadata !DIExpression()), !dbg !6347
  call void @llvm.dbg.declare(metadata i32* %d_max, metadata !6348, metadata !DIExpression()), !dbg !6349
  call void @llvm.dbg.declare(metadata i8* %wakeup, metadata !6350, metadata !DIExpression()), !dbg !6351
  store i8 0, i8* %wakeup, align 1, !dbg !6351
  call void @llvm.dbg.declare(metadata i8* %has_sxd, metadata !6352, metadata !DIExpression()), !dbg !6353
  store i8 0, i8* %has_sxd, align 1, !dbg !6353
  call void @llvm.dbg.declare(metadata i32* %status, metadata !6354, metadata !DIExpression()), !dbg !6355
  store i32 0, i32* %d_min, align 4, !dbg !6356
  store i32 4, i32* %d_max, align 4, !dbg !6357
  %3 = load i32, i32* %target_state.addr, align 4, !dbg !6358
  %cmp = icmp ugt i32 %3, 0, !dbg !6360
  br i1 %cmp, label %if.then, label %if.else37, !dbg !6361

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %d_min, align 4, !dbg !6362
  %conv6 = sext i32 %4 to i64, !dbg !6362
  store i64 %conv6, i64* %ret, align 8, !dbg !6364
  %5 = load i8*, i8** %handle, align 8, !dbg !6365
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %method, i64 0, i64 0, !dbg !6366
  %call = call i32 @acpi_evaluate_integer(i8* %5, i8* %arraydecay, %struct.acpi_object_list* null, i64* %ret) #4, !dbg !6367
  store i32 %call, i32* %status, align 4, !dbg !6368
  %6 = load i32, i32* %status, align 4, !dbg !6369
  %tobool = icmp ne i32 %6, 0, !dbg !6369
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false, !dbg !6371

land.lhs.true:                                    ; preds = %if.then
  %7 = load i32, i32* %status, align 4, !dbg !6372
  %cmp7 = icmp ne i32 %7, 5, !dbg !6373
  br i1 %cmp7, label %if.then11, label %lor.lhs.false, !dbg !6374

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %8 = load i64, i64* %ret, align 8, !dbg !6375
  %cmp9 = icmp ugt i64 %8, 4, !dbg !6376
  br i1 %cmp9, label %if.then11, label %if.end, !dbg !6377

if.then11:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 -61, i32* %retval, align 4, !dbg !6378
  br label %return, !dbg !6378

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6379
  %power = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 11, !dbg !6381
  %states = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power, i32 0, i32 2, !dbg !6382
  %10 = load i64, i64* %ret, align 8, !dbg !6383
  %arrayidx = getelementptr [5 x %struct.acpi_device_power_state], [5 x %struct.acpi_device_power_state]* %states, i64 0, i64 %10, !dbg !6379
  %flags = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %arrayidx, i32 0, i32 0, !dbg !6384
  %11 = bitcast %struct.anon.78* %flags to i8*, !dbg !6385
  %bf.load = load i8, i8* %11, align 8, !dbg !6385
  %bf.clear = and i8 %bf.load, 1, !dbg !6385
  %tobool12 = icmp ne i8 %bf.clear, 0, !dbg !6379
  br i1 %tobool12, label %if.end18, label %if.then13, !dbg !6386

if.then13:                                        ; preds = %if.end
  %12 = load i64, i64* %ret, align 8, !dbg !6387
  %cmp14 = icmp eq i64 %12, 3, !dbg !6390
  br i1 %cmp14, label %if.then16, label %if.else, !dbg !6391

if.then16:                                        ; preds = %if.then13
  store i64 4, i64* %ret, align 8, !dbg !6392
  br label %if.end17, !dbg !6393

if.else:                                          ; preds = %if.then13
  store i32 -61, i32* %retval, align 4, !dbg !6394
  br label %return, !dbg !6394

if.end17:                                         ; preds = %if.then16
  br label %if.end18, !dbg !6395

if.end18:                                         ; preds = %if.end17, %if.end
  %13 = load i32, i32* %status, align 4, !dbg !6396
  %cmp19 = icmp eq i32 %13, 0, !dbg !6398
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !6399

if.then21:                                        ; preds = %if.end18
  store i8 1, i8* %has_sxd, align 1, !dbg !6400
  br label %if.end22, !dbg !6401

if.end22:                                         ; preds = %if.then21, %if.end18
  %14 = load i64, i64* %ret, align 8, !dbg !6402
  %conv23 = trunc i64 %14 to i32, !dbg !6402
  store i32 %conv23, i32* %d_min, align 4, !dbg !6403
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6404
  %call24 = call zeroext i1 @device_may_wakeup(%struct.device* %15) #4, !dbg !6405
  br i1 %call24, label %land.lhs.true26, label %land.end, !dbg !6406

land.lhs.true26:                                  ; preds = %if.end22
  %16 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6407
  %wakeup27 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 12, !dbg !6408
  %flags28 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup27, i32 0, i32 4, !dbg !6409
  %17 = bitcast %struct.acpi_device_wakeup_flags* %flags28 to i8*, !dbg !6410
  %bf.load29 = load i8, i8* %17, align 8, !dbg !6410
  %bf.clear30 = and i8 %bf.load29, 1, !dbg !6410
  %conv31 = zext i8 %bf.clear30 to i32, !dbg !6407
  %tobool32 = icmp ne i32 %conv31, 0, !dbg !6407
  br i1 %tobool32, label %land.rhs, label %land.end, !dbg !6411

land.rhs:                                         ; preds = %land.lhs.true26
  %18 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6412
  %wakeup33 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 12, !dbg !6413
  %sleep_state = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup33, i32 0, i32 2, !dbg !6414
  %19 = load i64, i64* %sleep_state, align 8, !dbg !6414
  %20 = load i32, i32* %target_state.addr, align 4, !dbg !6415
  %conv34 = zext i32 %20 to i64, !dbg !6415
  %cmp35 = icmp uge i64 %19, %conv34, !dbg !6416
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true26, %if.end22
  %21 = phi i1 [ false, %land.lhs.true26 ], [ false, %if.end22 ], [ %cmp35, %land.rhs ], !dbg !6417
  %frombool = zext i1 %21 to i8, !dbg !6418
  store i8 %frombool, i8* %wakeup, align 1, !dbg !6418
  br label %if.end44, !dbg !6419

if.else37:                                        ; preds = %entry
  %22 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6420
  %wakeup38 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 12, !dbg !6422
  %flags39 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup38, i32 0, i32 4, !dbg !6423
  %23 = bitcast %struct.acpi_device_wakeup_flags* %flags39 to i8*, !dbg !6424
  %bf.load40 = load i8, i8* %23, align 8, !dbg !6424
  %bf.clear41 = and i8 %bf.load40, 1, !dbg !6424
  %tobool42 = icmp ne i8 %bf.clear41, 0, !dbg !6420
  %frombool43 = zext i1 %tobool42 to i8, !dbg !6425
  store i8 %frombool43, i8* %wakeup, align 1, !dbg !6425
  br label %if.end44

if.end44:                                         ; preds = %if.else37, %land.end
  %24 = load i8, i8* %wakeup, align 1, !dbg !6426
  %tobool45 = trunc i8 %24 to i1, !dbg !6426
  br i1 %tobool45, label %if.then46, label %if.end83, !dbg !6428

if.then46:                                        ; preds = %if.end44
  %arrayidx47 = getelementptr [5 x i8], [5 x i8]* %method, i64 0, i64 3, !dbg !6429
  store i8 87, i8* %arrayidx47, align 1, !dbg !6431
  %25 = load i8*, i8** %handle, align 8, !dbg !6432
  %arraydecay48 = getelementptr inbounds [5 x i8], [5 x i8]* %method, i64 0, i64 0, !dbg !6433
  %call49 = call i32 @acpi_evaluate_integer(i8* %25, i8* %arraydecay48, %struct.acpi_object_list* null, i64* %ret) #4, !dbg !6434
  store i32 %call49, i32* %status, align 4, !dbg !6435
  %26 = load i32, i32* %status, align 4, !dbg !6436
  %cmp50 = icmp eq i32 %26, 5, !dbg !6438
  br i1 %cmp50, label %if.then52, label %if.else60, !dbg !6439

if.then52:                                        ; preds = %if.then46
  %27 = load i8, i8* %has_sxd, align 1, !dbg !6440
  %tobool53 = trunc i8 %27 to i1, !dbg !6440
  br i1 %tobool53, label %land.lhs.true55, label %if.end59, !dbg !6443

land.lhs.true55:                                  ; preds = %if.then52
  %28 = load i32, i32* %target_state.addr, align 4, !dbg !6444
  %cmp56 = icmp ugt i32 %28, 0, !dbg !6445
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !6446

if.then58:                                        ; preds = %land.lhs.true55
  %29 = load i32, i32* %d_min, align 4, !dbg !6447
  store i32 %29, i32* %d_max, align 4, !dbg !6448
  br label %if.end59, !dbg !6449

if.end59:                                         ; preds = %if.then58, %land.lhs.true55, %if.then52
  br label %if.end82, !dbg !6450

if.else60:                                        ; preds = %if.then46
  %30 = load i32, i32* %status, align 4, !dbg !6451
  %tobool61 = icmp ne i32 %30, 0, !dbg !6451
  br i1 %tobool61, label %if.else80, label %land.lhs.true62, !dbg !6453

land.lhs.true62:                                  ; preds = %if.else60
  %31 = load i64, i64* %ret, align 8, !dbg !6454
  %cmp63 = icmp ule i64 %31, 4, !dbg !6455
  br i1 %cmp63, label %if.then65, label %if.else80, !dbg !6456

if.then65:                                        ; preds = %land.lhs.true62
  %32 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6457
  %power66 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 11, !dbg !6460
  %states67 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power66, i32 0, i32 2, !dbg !6461
  %33 = load i64, i64* %ret, align 8, !dbg !6462
  %arrayidx68 = getelementptr [5 x %struct.acpi_device_power_state], [5 x %struct.acpi_device_power_state]* %states67, i64 0, i64 %33, !dbg !6457
  %flags69 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %arrayidx68, i32 0, i32 0, !dbg !6463
  %34 = bitcast %struct.anon.78* %flags69 to i8*, !dbg !6464
  %bf.load70 = load i8, i8* %34, align 8, !dbg !6464
  %bf.clear71 = and i8 %bf.load70, 1, !dbg !6464
  %tobool72 = icmp ne i8 %bf.clear71, 0, !dbg !6457
  br i1 %tobool72, label %if.end74, label %if.then73, !dbg !6465

if.then73:                                        ; preds = %if.then65
  store i64 4, i64* %ret, align 8, !dbg !6466
  br label %if.end74, !dbg !6467

if.end74:                                         ; preds = %if.then73, %if.then65
  %35 = load i64, i64* %ret, align 8, !dbg !6468
  %36 = load i32, i32* %d_min, align 4, !dbg !6469
  %conv75 = sext i32 %36 to i64, !dbg !6469
  %cmp76 = icmp ugt i64 %35, %conv75, !dbg !6470
  br i1 %cmp76, label %cond.true, label %cond.false, !dbg !6468

cond.true:                                        ; preds = %if.end74
  %37 = load i64, i64* %ret, align 8, !dbg !6471
  br label %cond.end, !dbg !6468

cond.false:                                       ; preds = %if.end74
  %38 = load i32, i32* %d_min, align 4, !dbg !6472
  %conv78 = sext i32 %38 to i64, !dbg !6472
  br label %cond.end, !dbg !6468

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %37, %cond.true ], [ %conv78, %cond.false ], !dbg !6468
  %conv79 = trunc i64 %cond to i32, !dbg !6468
  store i32 %conv79, i32* %d_max, align 4, !dbg !6473
  br label %if.end81, !dbg !6474

if.else80:                                        ; preds = %land.lhs.true62, %if.else60
  store i32 -61, i32* %retval, align 4, !dbg !6475
  br label %return, !dbg !6475

if.end81:                                         ; preds = %cond.end
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.end59
  br label %if.end83, !dbg !6477

if.end83:                                         ; preds = %if.end82, %if.end44
  %39 = load i32*, i32** %d_min_p.addr, align 8, !dbg !6478
  %tobool84 = icmp ne i32* %39, null, !dbg !6478
  br i1 %tobool84, label %if.then85, label %if.end86, !dbg !6480

if.then85:                                        ; preds = %if.end83
  %40 = load i32, i32* %d_min, align 4, !dbg !6481
  %41 = load i32*, i32** %d_min_p.addr, align 8, !dbg !6482
  store i32 %40, i32* %41, align 4, !dbg !6483
  br label %if.end86, !dbg !6484

if.end86:                                         ; preds = %if.then85, %if.end83
  %42 = load i32*, i32** %d_max_p.addr, align 8, !dbg !6485
  %tobool87 = icmp ne i32* %42, null, !dbg !6485
  br i1 %tobool87, label %if.then88, label %if.end89, !dbg !6487

if.then88:                                        ; preds = %if.end86
  %43 = load i32, i32* %d_max, align 4, !dbg !6488
  %44 = load i32*, i32** %d_max_p.addr, align 8, !dbg !6489
  store i32 %43, i32* %44, align 4, !dbg !6490
  br label %if.end89, !dbg !6491

if.end89:                                         ; preds = %if.then88, %if.end86
  store i32 0, i32* %retval, align 4, !dbg !6492
  br label %return, !dbg !6492

return:                                           ; preds = %if.end89, %if.else80, %if.else, %if.then11
  %45 = load i32, i32* %retval, align 4, !dbg !6493
  ret i32 %45, !dbg !6493
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_target_system_state() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_pm_set_device_wakeup(%struct.device* %dev, i1 zeroext %enable) #0 !dbg !6494 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %enable.addr = alloca i8, align 1
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6495, metadata !DIExpression()), !dbg !6496
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !6497, metadata !DIExpression()), !dbg !6498
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6499
  %1 = load i8, i8* %enable.addr, align 1, !dbg !6500
  %tobool = trunc i8 %1 to i1, !dbg !6500
  %call = call i32 @__acpi_pm_set_device_wakeup(%struct.device* %0, i1 zeroext %tobool, i32 1) #4, !dbg !6501
  ret i32 %call, !dbg !6502
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__acpi_pm_set_device_wakeup(%struct.device* %dev, i1 zeroext %enable, i32 %max_count) #0 !dbg !6503 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %enable.addr = alloca i8, align 1
  %max_count.addr = alloca i32, align 4
  %adev = alloca %struct.acpi_device*, align 8
  %error = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6506, metadata !DIExpression()), !dbg !6507
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !6508, metadata !DIExpression()), !dbg !6509
  store i32 %max_count, i32* %max_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_count.addr, metadata !6510, metadata !DIExpression()), !dbg !6511
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !6512, metadata !DIExpression()), !dbg !6513
  call void @llvm.dbg.declare(metadata i32* %error, metadata !6514, metadata !DIExpression()), !dbg !6515
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !6516, metadata !DIExpression()), !dbg !6518
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6518
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 24, !dbg !6518
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !6518
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6518
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6518
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #4, !dbg !6518
  br i1 %call, label %cond.true, label %cond.false, !dbg !6518

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6519, metadata !DIExpression()), !dbg !6521
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6521
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !6521
  store i8* %4, i8** %__mptr, align 8, !dbg !6521
  br label %do.body, !dbg !6521

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !6522

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !6521
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !6521
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !6521
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp1, align 8, !dbg !6522
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !6521
  br label %cond.end, !dbg !6518

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6518

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !6518
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !6518
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !6518
  store %struct.acpi_device* %8, %struct.acpi_device** %adev, align 8, !dbg !6524
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6525
  %tobool = icmp ne %struct.acpi_device* %9, null, !dbg !6525
  br i1 %tobool, label %if.end, label %if.then, !dbg !6527

if.then:                                          ; preds = %cond.end
  store i32 -19, i32* %retval, align 4, !dbg !6528
  br label %return, !dbg !6528

if.end:                                           ; preds = %cond.end
  %10 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6530
  %call2 = call zeroext i1 @acpi_device_can_wakeup(%struct.acpi_device* %10) #4, !dbg !6532
  br i1 %call2, label %if.end4, label %if.then3, !dbg !6533

if.then3:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !6534
  br label %return, !dbg !6534

if.end4:                                          ; preds = %if.end
  %11 = load i8, i8* %enable.addr, align 1, !dbg !6535
  %tobool5 = trunc i8 %11 to i1, !dbg !6535
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !6537

if.then6:                                         ; preds = %if.end4
  %12 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6538
  call void @acpi_device_wakeup_disable(%struct.acpi_device* %12) #4, !dbg !6540
  store i32 0, i32* %retval, align 4, !dbg !6541
  br label %return, !dbg !6541

if.end7:                                          ; preds = %if.end4
  %13 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6542
  %call8 = call i32 @acpi_target_system_state() #4, !dbg !6543
  %14 = load i32, i32* %max_count.addr, align 4, !dbg !6544
  %call9 = call i32 @__acpi_device_wakeup_enable(%struct.acpi_device* %13, i32 %call8, i32 %14) #4, !dbg !6545
  store i32 %call9, i32* %error, align 4, !dbg !6546
  %15 = load i32, i32* %error, align 4, !dbg !6547
  %tobool10 = icmp ne i32 %15, 0, !dbg !6547
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !6549

if.then11:                                        ; preds = %if.end7
  br label %if.end12, !dbg !6550

if.end12:                                         ; preds = %if.then11, %if.end7
  %16 = load i32, i32* %error, align 4, !dbg !6551
  store i32 %16, i32* %retval, align 4, !dbg !6552
  br label %return, !dbg !6552

return:                                           ; preds = %if.end12, %if.then6, %if.then3, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !6553
  ret i32 %17, !dbg !6553
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_pm_set_bridge_wakeup(%struct.device* %dev, i1 zeroext %enable) #0 !dbg !6554 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %enable.addr = alloca i8, align 1
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6555, metadata !DIExpression()), !dbg !6556
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !6557, metadata !DIExpression()), !dbg !6558
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6559
  %1 = load i8, i8* %enable.addr, align 1, !dbg !6560
  %tobool = trunc i8 %1 to i1, !dbg !6560
  %call = call i32 @__acpi_pm_set_device_wakeup(%struct.device* %0, i1 zeroext %tobool, i32 2147483647) #4, !dbg !6561
  ret i32 %call, !dbg !6562
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_dev_suspend(%struct.device* %dev, i1 zeroext %wakeup) #0 !dbg !6563 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %wakeup.addr = alloca i8, align 1
  %adev = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  %target_state = alloca i32, align 4
  %error = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6564, metadata !DIExpression()), !dbg !6565
  %frombool = zext i1 %wakeup to i8
  store i8 %frombool, i8* %wakeup.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %wakeup.addr, metadata !6566, metadata !DIExpression()), !dbg !6567
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !6568, metadata !DIExpression()), !dbg !6569
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !6570, metadata !DIExpression()), !dbg !6572
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6572
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 24, !dbg !6572
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !6572
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6572
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6572
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #4, !dbg !6572
  br i1 %call, label %cond.true, label %cond.false, !dbg !6572

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6573, metadata !DIExpression()), !dbg !6575
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6575
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !6575
  store i8* %4, i8** %__mptr, align 8, !dbg !6575
  br label %do.body, !dbg !6575

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !6576

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !6575
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !6575
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !6575
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp1, align 8, !dbg !6576
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !6575
  br label %cond.end, !dbg !6572

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6572

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !6572
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !6572
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !6572
  store %struct.acpi_device* %8, %struct.acpi_device** %adev, align 8, !dbg !6569
  call void @llvm.dbg.declare(metadata i32* %target_state, metadata !6578, metadata !DIExpression()), !dbg !6579
  %call2 = call i32 @acpi_target_system_state() #4, !dbg !6580
  store i32 %call2, i32* %target_state, align 4, !dbg !6579
  call void @llvm.dbg.declare(metadata i32* %error, metadata !6581, metadata !DIExpression()), !dbg !6582
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6583
  %tobool = icmp ne %struct.acpi_device* %9, null, !dbg !6583
  br i1 %tobool, label %if.end, label %if.then, !dbg !6585

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval, align 4, !dbg !6586
  br label %return, !dbg !6586

if.end:                                           ; preds = %cond.end
  %10 = load i8, i8* %wakeup.addr, align 1, !dbg !6587
  %tobool3 = trunc i8 %10 to i1, !dbg !6587
  br i1 %tobool3, label %land.lhs.true, label %if.else, !dbg !6589

land.lhs.true:                                    ; preds = %if.end
  %11 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6590
  %call4 = call zeroext i1 @acpi_device_can_wakeup(%struct.acpi_device* %11) #4, !dbg !6591
  br i1 %call4, label %if.then5, label %if.else, !dbg !6592

if.then5:                                         ; preds = %land.lhs.true
  %12 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6593
  %13 = load i32, i32* %target_state, align 4, !dbg !6595
  %call6 = call i32 @acpi_device_wakeup_enable(%struct.acpi_device* %12, i32 %13) #4, !dbg !6596
  store i32 %call6, i32* %error, align 4, !dbg !6597
  %14 = load i32, i32* %error, align 4, !dbg !6598
  %tobool7 = icmp ne i32 %14, 0, !dbg !6598
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !6600

if.then8:                                         ; preds = %if.then5
  store i32 -11, i32* %retval, align 4, !dbg !6601
  br label %return, !dbg !6601

if.end9:                                          ; preds = %if.then5
  br label %if.end10, !dbg !6602

if.else:                                          ; preds = %land.lhs.true, %if.end
  store i8 0, i8* %wakeup.addr, align 1, !dbg !6603
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end9
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6605
  %16 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6606
  %17 = load i32, i32* %target_state, align 4, !dbg !6607
  %call11 = call i32 @acpi_dev_pm_low_power(%struct.device* %15, %struct.acpi_device* %16, i32 %17) #4, !dbg !6608
  store i32 %call11, i32* %error, align 4, !dbg !6609
  %18 = load i32, i32* %error, align 4, !dbg !6610
  %tobool12 = icmp ne i32 %18, 0, !dbg !6610
  br i1 %tobool12, label %land.lhs.true13, label %if.end16, !dbg !6612

land.lhs.true13:                                  ; preds = %if.end10
  %19 = load i8, i8* %wakeup.addr, align 1, !dbg !6613
  %tobool14 = trunc i8 %19 to i1, !dbg !6613
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !6614

if.then15:                                        ; preds = %land.lhs.true13
  %20 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6615
  call void @acpi_device_wakeup_disable(%struct.acpi_device* %20) #4, !dbg !6616
  br label %if.end16, !dbg !6616

if.end16:                                         ; preds = %if.then15, %land.lhs.true13, %if.end10
  %21 = load i32, i32* %error, align 4, !dbg !6617
  store i32 %21, i32* %retval, align 4, !dbg !6618
  br label %return, !dbg !6618

return:                                           ; preds = %if.end16, %if.then8, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !6619
  ret i32 %22, !dbg !6619
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_device_wakeup_enable(%struct.acpi_device* %adev, i32 %target_state) #0 !dbg !6620 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %target_state.addr = alloca i32, align 4
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !6621, metadata !DIExpression()), !dbg !6622
  store i32 %target_state, i32* %target_state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %target_state.addr, metadata !6623, metadata !DIExpression()), !dbg !6624
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6625
  %1 = load i32, i32* %target_state.addr, align 4, !dbg !6626
  %call = call i32 @__acpi_device_wakeup_enable(%struct.acpi_device* %0, i32 %1, i32 1) #4, !dbg !6627
  ret i32 %call, !dbg !6628
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_dev_pm_low_power(%struct.device* %dev, %struct.acpi_device* %adev, i32 %system_state) #0 !dbg !6629 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %adev.addr = alloca %struct.acpi_device*, align 8
  %system_state.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %state = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6632, metadata !DIExpression()), !dbg !6633
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !6634, metadata !DIExpression()), !dbg !6635
  store i32 %system_state, i32* %system_state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %system_state.addr, metadata !6636, metadata !DIExpression()), !dbg !6637
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6638, metadata !DIExpression()), !dbg !6639
  call void @llvm.dbg.declare(metadata i32* %state, metadata !6640, metadata !DIExpression()), !dbg !6641
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6642
  %call = call zeroext i1 @acpi_device_power_manageable(%struct.acpi_device* %0) #4, !dbg !6644
  br i1 %call, label %if.end, label %if.then, !dbg !6645

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6646
  br label %return, !dbg !6646

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6647
  %2 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6648
  %3 = load i32, i32* %system_state.addr, align 4, !dbg !6649
  %call1 = call i32 @acpi_dev_pm_get_state(%struct.device* %1, %struct.acpi_device* %2, i32 %3, i32* null, i32* %state) #4, !dbg !6650
  store i32 %call1, i32* %ret, align 4, !dbg !6651
  %4 = load i32, i32* %ret, align 4, !dbg !6652
  %tobool = icmp ne i32 %4, 0, !dbg !6652
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6652

cond.true:                                        ; preds = %if.end
  %5 = load i32, i32* %ret, align 4, !dbg !6653
  br label %cond.end, !dbg !6652

cond.false:                                       ; preds = %if.end
  %6 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6654
  %7 = load i32, i32* %state, align 4, !dbg !6655
  %call2 = call i32 @acpi_device_set_power(%struct.acpi_device* %6, i32 %7) #4, !dbg !6656
  br label %cond.end, !dbg !6652

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %call2, %cond.false ], !dbg !6652
  store i32 %cond, i32* %retval, align 4, !dbg !6657
  br label %return, !dbg !6657

return:                                           ; preds = %cond.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !6658
  ret i32 %8, !dbg !6658
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_device_wakeup_disable(%struct.acpi_device* %adev) #0 !dbg !6659 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %wakeup = alloca %struct.acpi_device_wakeup*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !6660, metadata !DIExpression()), !dbg !6661
  call void @llvm.dbg.declare(metadata %struct.acpi_device_wakeup** %wakeup, metadata !6662, metadata !DIExpression()), !dbg !6664
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6665
  %wakeup1 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 12, !dbg !6666
  store %struct.acpi_device_wakeup* %wakeup1, %struct.acpi_device_wakeup** %wakeup, align 8, !dbg !6664
  call void @mutex_lock(%struct.mutex* @acpi_wakeup_lock) #4, !dbg !6667
  %1 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %wakeup, align 8, !dbg !6668
  %enable_count = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %1, i32 0, i32 8, !dbg !6670
  %2 = load i32, i32* %enable_count, align 4, !dbg !6670
  %tobool = icmp ne i32 %2, 0, !dbg !6668
  br i1 %tobool, label %if.end, label %if.then, !dbg !6671

if.then:                                          ; preds = %entry
  br label %out, !dbg !6672

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %wakeup, align 8, !dbg !6673
  %gpe_device = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %3, i32 0, i32 0, !dbg !6674
  %4 = load i8*, i8** %gpe_device, align 8, !dbg !6674
  %5 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %wakeup, align 8, !dbg !6675
  %gpe_number = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %5, i32 0, i32 1, !dbg !6676
  %6 = load i64, i64* %gpe_number, align 8, !dbg !6676
  %conv = trunc i64 %6 to i32, !dbg !6675
  %call = call i32 @acpi_disable_gpe(i8* %4, i32 %conv) #4, !dbg !6677
  %7 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6678
  %call2 = call i32 @acpi_disable_wakeup_device_power(%struct.acpi_device* %7) #4, !dbg !6679
  %8 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %wakeup, align 8, !dbg !6680
  %enable_count3 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %8, i32 0, i32 8, !dbg !6681
  %9 = load i32, i32* %enable_count3, align 4, !dbg !6682
  %dec = add i32 %9, -1, !dbg !6682
  store i32 %dec, i32* %enable_count3, align 4, !dbg !6682
  br label %out, !dbg !6680

out:                                              ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !6683), !dbg !6684
  call void @mutex_unlock(%struct.mutex* @acpi_wakeup_lock) #4, !dbg !6685
  ret void, !dbg !6686
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_dev_resume(%struct.device* %dev) #0 !dbg !6687 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  %error = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6688, metadata !DIExpression()), !dbg !6689
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !6690, metadata !DIExpression()), !dbg !6691
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !6692, metadata !DIExpression()), !dbg !6694
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6694
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 24, !dbg !6694
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !6694
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6694
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6694
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #4, !dbg !6694
  br i1 %call, label %cond.true, label %cond.false, !dbg !6694

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6695, metadata !DIExpression()), !dbg !6697
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6697
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !6697
  store i8* %4, i8** %__mptr, align 8, !dbg !6697
  br label %do.body, !dbg !6697

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !6698

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !6697
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !6697
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !6697
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp1, align 8, !dbg !6698
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !6697
  br label %cond.end, !dbg !6694

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6694

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !6694
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !6694
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !6694
  store %struct.acpi_device* %8, %struct.acpi_device** %adev, align 8, !dbg !6691
  call void @llvm.dbg.declare(metadata i32* %error, metadata !6700, metadata !DIExpression()), !dbg !6701
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6702
  %tobool = icmp ne %struct.acpi_device* %9, null, !dbg !6702
  br i1 %tobool, label %if.end, label %if.then, !dbg !6704

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval, align 4, !dbg !6705
  br label %return, !dbg !6705

if.end:                                           ; preds = %cond.end
  %10 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6706
  %call2 = call i32 @acpi_dev_pm_full_power(%struct.acpi_device* %10) #4, !dbg !6707
  store i32 %call2, i32* %error, align 4, !dbg !6708
  %11 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6709
  call void @acpi_device_wakeup_disable(%struct.acpi_device* %11) #4, !dbg !6710
  %12 = load i32, i32* %error, align 4, !dbg !6711
  store i32 %12, i32* %retval, align 4, !dbg !6712
  br label %return, !dbg !6712

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !6713
  ret i32 %13, !dbg !6713
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_dev_pm_full_power(%struct.acpi_device* %adev) #0 !dbg !6714 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !6715, metadata !DIExpression()), !dbg !6716
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6717
  %call = call zeroext i1 @acpi_device_power_manageable(%struct.acpi_device* %0) #4, !dbg !6718
  br i1 %call, label %cond.true, label %cond.false, !dbg !6718

cond.true:                                        ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6719
  %call1 = call i32 @acpi_device_set_power(%struct.acpi_device* %1, i32 0) #4, !dbg !6720
  br label %cond.end, !dbg !6718

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6718

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ 0, %cond.false ], !dbg !6718
  ret i32 %cond, !dbg !6721
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_subsys_runtime_suspend(%struct.device* %dev) #0 !dbg !6722 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6723, metadata !DIExpression()), !dbg !6724
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6725, metadata !DIExpression()), !dbg !6726
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6727
  %call = call i32 @pm_generic_runtime_suspend(%struct.device* %0) #4, !dbg !6728
  store i32 %call, i32* %ret, align 4, !dbg !6726
  %1 = load i32, i32* %ret, align 4, !dbg !6729
  %tobool = icmp ne i32 %1, 0, !dbg !6729
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6729

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !6730
  br label %cond.end, !dbg !6729

cond.false:                                       ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6731
  %call1 = call i32 @acpi_dev_suspend(%struct.device* %3, i1 zeroext true) #4, !dbg !6732
  br label %cond.end, !dbg !6729

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %call1, %cond.false ], !dbg !6729
  ret i32 %cond, !dbg !6733
}

; Function Attrs: noredzone
declare dso_local i32 @pm_generic_runtime_suspend(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_subsys_runtime_resume(%struct.device* %dev) #0 !dbg !6734 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6735, metadata !DIExpression()), !dbg !6736
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6737, metadata !DIExpression()), !dbg !6738
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6739
  %call = call i32 @acpi_dev_resume(%struct.device* %0) #4, !dbg !6740
  store i32 %call, i32* %ret, align 4, !dbg !6738
  %1 = load i32, i32* %ret, align 4, !dbg !6741
  %tobool = icmp ne i32 %1, 0, !dbg !6741
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6741

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !6742
  br label %cond.end, !dbg !6741

cond.false:                                       ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6743
  %call1 = call i32 @pm_generic_runtime_resume(%struct.device* %3) #4, !dbg !6744
  br label %cond.end, !dbg !6741

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %call1, %cond.false ], !dbg !6741
  ret i32 %cond, !dbg !6745
}

; Function Attrs: noredzone
declare dso_local i32 @pm_generic_runtime_resume(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_subsys_prepare(%struct.device* %dev) #0 !dbg !6746 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6747, metadata !DIExpression()), !dbg !6748
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !6749, metadata !DIExpression()), !dbg !6750
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !6751, metadata !DIExpression()), !dbg !6753
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6753
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 24, !dbg !6753
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !6753
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6753
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6753
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #4, !dbg !6753
  br i1 %call, label %cond.true, label %cond.false, !dbg !6753

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6754, metadata !DIExpression()), !dbg !6756
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6756
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !6756
  store i8* %4, i8** %__mptr, align 8, !dbg !6756
  br label %do.body, !dbg !6756

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !6757

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !6756
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !6756
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !6756
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp1, align 8, !dbg !6757
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !6756
  br label %cond.end, !dbg !6753

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6753

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !6753
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !6753
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !6753
  store %struct.acpi_device* %8, %struct.acpi_device** %adev, align 8, !dbg !6750
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6759
  %driver = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 6, !dbg !6761
  %10 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !6761
  %tobool = icmp ne %struct.device_driver* %10, null, !dbg !6759
  br i1 %tobool, label %land.lhs.true, label %if.end18, !dbg !6762

land.lhs.true:                                    ; preds = %cond.end
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6763
  %driver2 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 6, !dbg !6764
  %12 = load %struct.device_driver*, %struct.device_driver** %driver2, align 8, !dbg !6764
  %pm = getelementptr inbounds %struct.device_driver, %struct.device_driver* %12, i32 0, i32 16, !dbg !6765
  %13 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !6765
  %tobool3 = icmp ne %struct.dev_pm_ops* %13, null, !dbg !6763
  br i1 %tobool3, label %land.lhs.true4, label %if.end18, !dbg !6766

land.lhs.true4:                                   ; preds = %land.lhs.true
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6767
  %driver5 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 6, !dbg !6768
  %15 = load %struct.device_driver*, %struct.device_driver** %driver5, align 8, !dbg !6768
  %pm6 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %15, i32 0, i32 16, !dbg !6769
  %16 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm6, align 8, !dbg !6769
  %prepare = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %16, i32 0, i32 0, !dbg !6770
  %17 = load i32 (%struct.device*)*, i32 (%struct.device*)** %prepare, align 8, !dbg !6770
  %tobool7 = icmp ne i32 (%struct.device*)* %17, null, !dbg !6767
  br i1 %tobool7, label %if.then, label %if.end18, !dbg !6771

if.then:                                          ; preds = %land.lhs.true4
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6772, metadata !DIExpression()), !dbg !6774
  %18 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6775
  %driver8 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 6, !dbg !6776
  %19 = load %struct.device_driver*, %struct.device_driver** %driver8, align 8, !dbg !6776
  %pm9 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %19, i32 0, i32 16, !dbg !6777
  %20 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm9, align 8, !dbg !6777
  %prepare10 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %20, i32 0, i32 0, !dbg !6778
  %21 = load i32 (%struct.device*)*, i32 (%struct.device*)** %prepare10, align 8, !dbg !6778
  %22 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6779
  %call11 = call i32 %21(%struct.device* %22) #4, !dbg !6775
  store i32 %call11, i32* %ret, align 4, !dbg !6774
  %23 = load i32, i32* %ret, align 4, !dbg !6780
  %cmp = icmp slt i32 %23, 0, !dbg !6782
  br i1 %cmp, label %if.then12, label %if.end, !dbg !6783

if.then12:                                        ; preds = %if.then
  %24 = load i32, i32* %ret, align 4, !dbg !6784
  store i32 %24, i32* %retval, align 4, !dbg !6785
  br label %return, !dbg !6785

if.end:                                           ; preds = %if.then
  %25 = load i32, i32* %ret, align 4, !dbg !6786
  %tobool13 = icmp ne i32 %25, 0, !dbg !6786
  br i1 %tobool13, label %if.end17, label %land.lhs.true14, !dbg !6788

land.lhs.true14:                                  ; preds = %if.end
  %26 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6789
  %call15 = call zeroext i1 @dev_pm_test_driver_flags(%struct.device* %26, i32 2) #4, !dbg !6790
  br i1 %call15, label %if.then16, label %if.end17, !dbg !6791

if.then16:                                        ; preds = %land.lhs.true14
  store i32 0, i32* %retval, align 4, !dbg !6792
  br label %return, !dbg !6792

if.end17:                                         ; preds = %land.lhs.true14, %if.end
  br label %if.end18, !dbg !6793

if.end18:                                         ; preds = %if.end17, %land.lhs.true4, %land.lhs.true, %cond.end
  %27 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6794
  %28 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !6795
  %call19 = call zeroext i1 @acpi_dev_needs_resume(%struct.device* %27, %struct.acpi_device* %28) #4, !dbg !6796
  %lnot = xor i1 %call19, true, !dbg !6797
  %lnot.ext = zext i1 %lnot to i32, !dbg !6797
  store i32 %lnot.ext, i32* %retval, align 4, !dbg !6798
  br label %return, !dbg !6798

return:                                           ; preds = %if.end18, %if.then16, %if.then12
  %29 = load i32, i32* %retval, align 4, !dbg !6799
  ret i32 %29, !dbg !6799
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @dev_pm_test_driver_flags(%struct.device* %dev, i32 %flags) #0 !dbg !6800 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6803, metadata !DIExpression()), !dbg !6804
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6805, metadata !DIExpression()), !dbg !6806
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6807
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !6808
  %driver_flags = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 2, !dbg !6809
  %1 = load i32, i32* %driver_flags, align 8, !dbg !6809
  %2 = load i32, i32* %flags.addr, align 4, !dbg !6810
  %and = and i32 %1, %2, !dbg !6811
  %tobool = icmp ne i32 %and, 0, !dbg !6812
  %lnot = xor i1 %tobool, true, !dbg !6812
  %lnot1 = xor i1 %lnot, true, !dbg !6813
  ret i1 %lnot1, !dbg !6814
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_dev_needs_resume(%struct.device* %dev, %struct.acpi_device* %adev) #0 !dbg !6815 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca %struct.device*, align 8
  %adev.addr = alloca %struct.acpi_device*, align 8
  %sys_target = alloca i32, align 4
  %ret = alloca i32, align 4
  %state = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6818, metadata !DIExpression()), !dbg !6819
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !6820, metadata !DIExpression()), !dbg !6821
  call void @llvm.dbg.declare(metadata i32* %sys_target, metadata !6822, metadata !DIExpression()), !dbg !6823
  %call = call i32 @acpi_target_system_state() #4, !dbg !6824
  store i32 %call, i32* %sys_target, align 4, !dbg !6823
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6825, metadata !DIExpression()), !dbg !6826
  call void @llvm.dbg.declare(metadata i32* %state, metadata !6827, metadata !DIExpression()), !dbg !6828
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6829
  %call1 = call zeroext i1 @pm_runtime_suspended(%struct.device* %0) #4, !dbg !6831
  br i1 %call1, label %lor.lhs.false, label %if.then, !dbg !6832

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6833
  %tobool = icmp ne %struct.acpi_device* %1, null, !dbg !6833
  br i1 %tobool, label %lor.lhs.false2, label %if.then, !dbg !6834

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6835
  %wakeup = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 12, !dbg !6836
  %flags = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup, i32 0, i32 4, !dbg !6837
  %3 = bitcast %struct.acpi_device_wakeup_flags* %flags to i8*, !dbg !6838
  %bf.load = load i8, i8* %3, align 8, !dbg !6838
  %bf.clear = and i8 %bf.load, 1, !dbg !6838
  %conv = zext i8 %bf.clear to i32, !dbg !6835
  %tobool3 = icmp ne i32 %conv, 0, !dbg !6835
  br i1 %tobool3, label %land.lhs.true, label %if.end, !dbg !6839

land.lhs.true:                                    ; preds = %lor.lhs.false2
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6840
  %call4 = call zeroext i1 @device_may_wakeup(%struct.device* %4) #4, !dbg !6841
  %conv5 = zext i1 %call4 to i32, !dbg !6841
  %5 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6842
  %wakeup6 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 12, !dbg !6843
  %prepare_count = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup6, i32 0, i32 7, !dbg !6844
  %6 = load i32, i32* %prepare_count, align 8, !dbg !6844
  %tobool7 = icmp ne i32 %6, 0, !dbg !6845
  %lnot = xor i1 %tobool7, true, !dbg !6845
  %lnot8 = xor i1 %lnot, true, !dbg !6846
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !6846
  %cmp = icmp ne i32 %conv5, %lnot.ext, !dbg !6847
  br i1 %cmp, label %if.then, label %if.end, !dbg !6848

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry
  store i1 true, i1* %retval, align 1, !dbg !6849
  br label %return, !dbg !6849

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false2
  %7 = load i32, i32* %sys_target, align 4, !dbg !6850
  %cmp10 = icmp eq i32 %7, 0, !dbg !6852
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !6853

if.then12:                                        ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !6854
  br label %return, !dbg !6854

if.end13:                                         ; preds = %if.end
  %8 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6855
  %power = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 11, !dbg !6857
  %flags14 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power, i32 0, i32 1, !dbg !6858
  %9 = bitcast %struct.acpi_device_power_flags* %flags14 to i32*, !dbg !6859
  %bf.load15 = load i32, i32* %9, align 4, !dbg !6859
  %bf.lshr = lshr i32 %bf.load15, 5, !dbg !6859
  %bf.clear16 = and i32 %bf.lshr, 1, !dbg !6859
  %tobool17 = icmp ne i32 %bf.clear16, 0, !dbg !6855
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !6860

if.then18:                                        ; preds = %if.end13
  store i1 true, i1* %retval, align 1, !dbg !6861
  br label %return, !dbg !6861

if.end19:                                         ; preds = %if.end13
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6862
  %11 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6863
  %12 = load i32, i32* %sys_target, align 4, !dbg !6864
  %call20 = call i32 @acpi_dev_pm_get_state(%struct.device* %10, %struct.acpi_device* %11, i32 %12, i32* null, i32* %state) #4, !dbg !6865
  store i32 %call20, i32* %ret, align 4, !dbg !6866
  %13 = load i32, i32* %ret, align 4, !dbg !6867
  %tobool21 = icmp ne i32 %13, 0, !dbg !6867
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !6869

if.then22:                                        ; preds = %if.end19
  store i1 true, i1* %retval, align 1, !dbg !6870
  br label %return, !dbg !6870

if.end23:                                         ; preds = %if.end19
  %14 = load i32, i32* %state, align 4, !dbg !6871
  %15 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6872
  %power24 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 11, !dbg !6873
  %state25 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power24, i32 0, i32 0, !dbg !6874
  %16 = load i32, i32* %state25, align 8, !dbg !6874
  %cmp26 = icmp ne i32 %14, %16, !dbg !6875
  store i1 %cmp26, i1* %retval, align 1, !dbg !6876
  br label %return, !dbg !6876

return:                                           ; preds = %if.end23, %if.then22, %if.then18, %if.then12, %if.then
  %17 = load i1, i1* %retval, align 1, !dbg !6877
  ret i1 %17, !dbg !6877
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_subsys_complete(%struct.device* %dev) #0 !dbg !6878 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6879, metadata !DIExpression()), !dbg !6880
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6881
  call void @pm_generic_complete(%struct.device* %0) #4, !dbg !6882
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6883
  %call = call zeroext i1 @pm_runtime_suspended(%struct.device* %1) #4, !dbg !6885
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !6886

land.lhs.true:                                    ; preds = %entry
  %call1 = call zeroext i1 @pm_resume_via_firmware() #4, !dbg !6887
  br i1 %call1, label %if.then, label %if.end, !dbg !6888

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6889
  %call2 = call i32 @pm_request_resume(%struct.device* %2) #4, !dbg !6890
  br label %if.end, !dbg !6890

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !6891
}

; Function Attrs: noredzone
declare dso_local void @pm_generic_complete(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @pm_runtime_suspended(%struct.device* %dev) #0 !dbg !6892 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6894, metadata !DIExpression()), !dbg !6895
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6896
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !6897
  %runtime_status = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 18, !dbg !6898
  %1 = load i32, i32* %runtime_status, align 4, !dbg !6898
  %cmp = icmp eq i32 %1, 2, !dbg !6899
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6900

land.rhs:                                         ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6901
  %power1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 11, !dbg !6902
  %disable_depth = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 15, !dbg !6903
  %bf.load = load i16, i16* %disable_depth, align 8, !dbg !6903
  %bf.clear = and i16 %bf.load, 7, !dbg !6903
  %bf.cast = zext i16 %bf.clear to i32, !dbg !6903
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6904
  %lnot = xor i1 %tobool, true, !dbg !6904
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !6905
  ret i1 %3, !dbg !6906
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @pm_resume_via_firmware() #0 !dbg !6907 {
entry:
  %0 = load i32, i32* @pm_suspend_global_flags, align 4, !dbg !6909
  %conv = zext i32 %0 to i64, !dbg !6909
  %and = and i64 %conv, 2, !dbg !6910
  %tobool = icmp ne i64 %and, 0, !dbg !6911
  %lnot = xor i1 %tobool, true, !dbg !6911
  %lnot1 = xor i1 %lnot, true, !dbg !6912
  ret i1 %lnot1, !dbg !6913
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_request_resume(%struct.device* %dev) #0 !dbg !6914 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6915, metadata !DIExpression()), !dbg !6916
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6917
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 1) #4, !dbg !6918
  ret i32 %call, !dbg !6919
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_subsys_suspend(%struct.device* %dev) #0 !dbg !6920 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6921, metadata !DIExpression()), !dbg !6922
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6923
  %call = call zeroext i1 @dev_pm_test_driver_flags(%struct.device* %0, i32 4) #4, !dbg !6925
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !6926

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6927
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !6928, metadata !DIExpression()), !dbg !6930
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6930
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 24, !dbg !6930
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !6930
  store %struct.fwnode_handle* %3, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6930
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6930
  %call1 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %4) #4, !dbg !6930
  br i1 %call1, label %cond.true, label %cond.false, !dbg !6930

cond.true:                                        ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6931, metadata !DIExpression()), !dbg !6933
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6933
  %6 = bitcast %struct.fwnode_handle* %5 to i8*, !dbg !6933
  store i8* %6, i8** %__mptr, align 8, !dbg !6933
  br label %do.body, !dbg !6933

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !6934

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !6933
  %add.ptr = getelementptr i8, i8* %7, i64 -16, !dbg !6933
  %8 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !6933
  store %struct.acpi_device* %8, %struct.acpi_device** %tmp2, align 8, !dbg !6934
  %9 = load %struct.acpi_device*, %struct.acpi_device** %tmp2, align 8, !dbg !6933
  br label %cond.end, !dbg !6930

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end, !dbg !6930

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %9, %do.end ], [ null, %cond.false ], !dbg !6930
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !6930
  %10 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !6930
  %call3 = call zeroext i1 @acpi_dev_needs_resume(%struct.device* %1, %struct.acpi_device* %10) #4, !dbg !6936
  br i1 %call3, label %if.then, label %if.end, !dbg !6937

if.then:                                          ; preds = %cond.end, %entry
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6938
  %call4 = call i32 @pm_runtime_resume(%struct.device* %11) #4, !dbg !6939
  br label %if.end, !dbg !6939

if.end:                                           ; preds = %if.then, %cond.end
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6940
  %call5 = call i32 @pm_generic_suspend(%struct.device* %12) #4, !dbg !6941
  ret i32 %call5, !dbg !6942
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_resume(%struct.device* %dev) #0 !dbg !6943 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6944, metadata !DIExpression()), !dbg !6945
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6946
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 0) #4, !dbg !6947
  ret i32 %call, !dbg !6948
}

; Function Attrs: noredzone
declare dso_local i32 @pm_generic_suspend(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_subsys_suspend_late(%struct.device* %dev) #0 !dbg !6949 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6950, metadata !DIExpression()), !dbg !6951
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6952, metadata !DIExpression()), !dbg !6953
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6954
  %call = call zeroext i1 @dev_pm_skip_suspend(%struct.device* %0) #4, !dbg !6956
  br i1 %call, label %if.then, label %if.end, !dbg !6957

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6958
  br label %return, !dbg !6958

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6959
  %call1 = call i32 @pm_generic_suspend_late(%struct.device* %1) #4, !dbg !6960
  store i32 %call1, i32* %ret, align 4, !dbg !6961
  %2 = load i32, i32* %ret, align 4, !dbg !6962
  %tobool = icmp ne i32 %2, 0, !dbg !6962
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6962

cond.true:                                        ; preds = %if.end
  %3 = load i32, i32* %ret, align 4, !dbg !6963
  br label %cond.end, !dbg !6962

cond.false:                                       ; preds = %if.end
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6964
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6965
  %call2 = call zeroext i1 @device_may_wakeup(%struct.device* %5) #4, !dbg !6966
  %call3 = call i32 @acpi_dev_suspend(%struct.device* %4, i1 zeroext %call2) #4, !dbg !6967
  br label %cond.end, !dbg !6962

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %call3, %cond.false ], !dbg !6962
  store i32 %cond, i32* %retval, align 4, !dbg !6968
  br label %return, !dbg !6968

return:                                           ; preds = %cond.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !6969
  ret i32 %6, !dbg !6969
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @dev_pm_skip_suspend(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @pm_generic_suspend_late(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @device_may_wakeup(%struct.device* %dev) #0 !dbg !6970 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6971, metadata !DIExpression()), !dbg !6972
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6973
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !6974
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 1, !dbg !6975
  %bf.load = load i16, i16* %can_wakeup, align 4, !dbg !6975
  %bf.clear = and i16 %bf.load, 1, !dbg !6975
  %bf.cast = zext i16 %bf.clear to i32, !dbg !6975
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6973
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6976

land.rhs:                                         ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6977
  %power1 = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 11, !dbg !6978
  %wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 6, !dbg !6979
  %2 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup, align 8, !dbg !6979
  %tobool2 = icmp ne %struct.wakeup_source* %2, null, !dbg !6980
  %lnot = xor i1 %tobool2, true, !dbg !6980
  %lnot3 = xor i1 %lnot, true, !dbg !6981
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot3, %land.rhs ], !dbg !6982
  ret i1 %3, !dbg !6983
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_subsys_suspend_noirq(%struct.device* %dev) #0 !dbg !6984 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6985, metadata !DIExpression()), !dbg !6986
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6987, metadata !DIExpression()), !dbg !6988
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6989
  %call = call zeroext i1 @dev_pm_skip_suspend(%struct.device* %0) #4, !dbg !6991
  br i1 %call, label %if.then, label %if.end, !dbg !6992

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6993
  br label %return, !dbg !6993

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6994
  %call1 = call i32 @pm_generic_suspend_noirq(%struct.device* %1) #4, !dbg !6995
  store i32 %call1, i32* %ret, align 4, !dbg !6996
  %2 = load i32, i32* %ret, align 4, !dbg !6997
  %tobool = icmp ne i32 %2, 0, !dbg !6997
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !6999

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* %ret, align 4, !dbg !7000
  store i32 %3, i32* %retval, align 4, !dbg !7001
  br label %return, !dbg !7001

if.end3:                                          ; preds = %if.end
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7002
  %call4 = call zeroext i1 @device_can_wakeup(%struct.device* %4) #4, !dbg !7004
  br i1 %call4, label %land.lhs.true, label %if.end7, !dbg !7005

land.lhs.true:                                    ; preds = %if.end3
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7006
  %call5 = call zeroext i1 @device_may_wakeup(%struct.device* %5) #4, !dbg !7007
  br i1 %call5, label %if.end7, label %if.then6, !dbg !7008

if.then6:                                         ; preds = %land.lhs.true
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7009
  %power = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 11, !dbg !7010
  %may_skip_resume = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 7, !dbg !7011
  %bf.load = load i8, i8* %may_skip_resume, align 8, !dbg !7012
  %bf.clear = and i8 %bf.load, -17, !dbg !7012
  store i8 %bf.clear, i8* %may_skip_resume, align 8, !dbg !7012
  br label %if.end7, !dbg !7009

if.end7:                                          ; preds = %if.then6, %land.lhs.true, %if.end3
  store i32 0, i32* %retval, align 4, !dbg !7013
  br label %return, !dbg !7013

return:                                           ; preds = %if.end7, %if.then2, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !7014
  ret i32 %7, !dbg !7014
}

; Function Attrs: noredzone
declare dso_local i32 @pm_generic_suspend_noirq(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @device_can_wakeup(%struct.device* %dev) #0 !dbg !7015 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7016, metadata !DIExpression()), !dbg !7017
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7018
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !7019
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 1, !dbg !7020
  %bf.load = load i16, i16* %can_wakeup, align 4, !dbg !7020
  %bf.clear = and i16 %bf.load, 1, !dbg !7020
  %bf.cast = zext i16 %bf.clear to i32, !dbg !7020
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !7018
  ret i1 %tobool, !dbg !7021
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_subsys_freeze(%struct.device* %dev) #0 !dbg !7022 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7023, metadata !DIExpression()), !dbg !7024
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7025
  %call = call i32 @pm_runtime_resume(%struct.device* %0) #4, !dbg !7026
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7027
  %call1 = call i32 @pm_generic_freeze(%struct.device* %1) #4, !dbg !7028
  ret i32 %call1, !dbg !7029
}

; Function Attrs: noredzone
declare dso_local i32 @pm_generic_freeze(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_subsys_restore_early(%struct.device* %dev) #0 !dbg !7030 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7031, metadata !DIExpression()), !dbg !7032
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !7033, metadata !DIExpression()), !dbg !7034
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7035
  %call = call i32 @acpi_dev_resume(%struct.device* %0) #4, !dbg !7036
  store i32 %call, i32* %ret, align 4, !dbg !7034
  %1 = load i32, i32* %ret, align 4, !dbg !7037
  %tobool = icmp ne i32 %1, 0, !dbg !7037
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !7037

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !7038
  br label %cond.end, !dbg !7037

cond.false:                                       ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7039
  %call1 = call i32 @pm_generic_restore_early(%struct.device* %3) #4, !dbg !7040
  br label %cond.end, !dbg !7037

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %call1, %cond.false ], !dbg !7037
  ret i32 %cond, !dbg !7041
}

; Function Attrs: noredzone
declare dso_local i32 @pm_generic_restore_early(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_subsys_poweroff(%struct.device* %dev) #0 !dbg !7042 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7043, metadata !DIExpression()), !dbg !7044
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7045
  %call = call zeroext i1 @dev_pm_test_driver_flags(%struct.device* %0, i32 4) #4, !dbg !7047
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !7048

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7049
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !7050, metadata !DIExpression()), !dbg !7052
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7052
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 24, !dbg !7052
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !7052
  store %struct.fwnode_handle* %3, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !7052
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !7052
  %call1 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %4) #4, !dbg !7052
  br i1 %call1, label %cond.true, label %cond.false, !dbg !7052

cond.true:                                        ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !7053, metadata !DIExpression()), !dbg !7055
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !7055
  %6 = bitcast %struct.fwnode_handle* %5 to i8*, !dbg !7055
  store i8* %6, i8** %__mptr, align 8, !dbg !7055
  br label %do.body, !dbg !7055

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !7056

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !7055
  %add.ptr = getelementptr i8, i8* %7, i64 -16, !dbg !7055
  %8 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !7055
  store %struct.acpi_device* %8, %struct.acpi_device** %tmp2, align 8, !dbg !7056
  %9 = load %struct.acpi_device*, %struct.acpi_device** %tmp2, align 8, !dbg !7055
  br label %cond.end, !dbg !7052

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end, !dbg !7052

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %9, %do.end ], [ null, %cond.false ], !dbg !7052
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !7052
  %10 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !7052
  %call3 = call zeroext i1 @acpi_dev_needs_resume(%struct.device* %1, %struct.acpi_device* %10) #4, !dbg !7058
  br i1 %call3, label %if.then, label %if.end, !dbg !7059

if.then:                                          ; preds = %cond.end, %entry
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7060
  %call4 = call i32 @pm_runtime_resume(%struct.device* %11) #4, !dbg !7061
  br label %if.end, !dbg !7061

if.end:                                           ; preds = %if.then, %cond.end
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7062
  %call5 = call i32 @pm_generic_poweroff(%struct.device* %12) #4, !dbg !7063
  ret i32 %call5, !dbg !7064
}

; Function Attrs: noredzone
declare dso_local i32 @pm_generic_poweroff(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_dev_pm_attach(%struct.device* %dev, i1 zeroext %power_on) #0 !dbg !5297 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %power_on.addr = alloca i8, align 1
  %adev = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7065, metadata !DIExpression()), !dbg !7066
  %frombool = zext i1 %power_on to i8
  store i8 %frombool, i8* %power_on.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %power_on.addr, metadata !7067, metadata !DIExpression()), !dbg !7068
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !7069, metadata !DIExpression()), !dbg !7070
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !7071, metadata !DIExpression()), !dbg !7073
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7073
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 24, !dbg !7073
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !7073
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !7073
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !7073
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #4, !dbg !7073
  br i1 %call, label %cond.true, label %cond.false, !dbg !7073

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !7074, metadata !DIExpression()), !dbg !7076
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !7076
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !7076
  store i8* %4, i8** %__mptr, align 8, !dbg !7076
  br label %do.body, !dbg !7076

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !7077

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !7076
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !7076
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !7076
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp1, align 8, !dbg !7077
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !7076
  br label %cond.end, !dbg !7073

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !7073

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !7073
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !7073
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !7073
  store %struct.acpi_device* %8, %struct.acpi_device** %adev, align 8, !dbg !7070
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !7079
  %tobool = icmp ne %struct.acpi_device* %9, null, !dbg !7079
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !7081

lor.lhs.false:                                    ; preds = %cond.end
  %10 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !7082
  %call2 = call i32 @acpi_match_device_ids(%struct.acpi_device* %10, %struct.acpi_device_id* getelementptr inbounds ([4 x %struct.acpi_device_id], [4 x %struct.acpi_device_id]* @acpi_dev_pm_attach.special_pm_ids, i64 0, i64 0)) #4, !dbg !7083
  %tobool3 = icmp ne i32 %call2, 0, !dbg !7083
  br i1 %tobool3, label %if.end, label %if.then, !dbg !7084

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store i32 0, i32* %retval, align 4, !dbg !7085
  br label %return, !dbg !7085

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !7086
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7088
  %call4 = call zeroext i1 @acpi_device_is_first_physical_node(%struct.acpi_device* %11, %struct.device* %12) #4, !dbg !7089
  br i1 %call4, label %if.end6, label %if.then5, !dbg !7090

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !7091
  br label %return, !dbg !7091

if.end6:                                          ; preds = %if.end
  %13 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !7092
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7093
  %call7 = call i32 @acpi_add_pm_notifier(%struct.acpi_device* %13, %struct.device* %14, void (%struct.acpi_device_wakeup_context*)* @acpi_pm_notify_work_func) #4, !dbg !7094
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7095
  call void @dev_pm_domain_set(%struct.device* %15, %struct.dev_pm_domain* @acpi_general_pm_domain) #4, !dbg !7096
  %16 = load i8, i8* %power_on.addr, align 1, !dbg !7097
  %tobool8 = trunc i8 %16 to i1, !dbg !7097
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !7099

if.then9:                                         ; preds = %if.end6
  %17 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !7100
  %call10 = call i32 @acpi_dev_pm_full_power(%struct.acpi_device* %17) #4, !dbg !7102
  %18 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !7103
  call void @acpi_device_wakeup_disable(%struct.acpi_device* %18) #4, !dbg !7104
  br label %if.end11, !dbg !7105

if.end11:                                         ; preds = %if.then9, %if.end6
  %19 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7106
  %pm_domain = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 12, !dbg !7107
  %20 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %pm_domain, align 8, !dbg !7107
  %detach = getelementptr inbounds %struct.dev_pm_domain, %struct.dev_pm_domain* %20, i32 0, i32 2, !dbg !7108
  store void (%struct.device*, i1)* @acpi_dev_pm_detach, void (%struct.device*, i1)** %detach, align 8, !dbg !7109
  store i32 1, i32* %retval, align 4, !dbg !7110
  br label %return, !dbg !7110

return:                                           ; preds = %if.end11, %if.then5, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !7111
  ret i32 %21, !dbg !7111
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_match_device_ids(%struct.acpi_device*, %struct.acpi_device_id*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_device_is_first_physical_node(%struct.acpi_device*, %struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_pm_notify_work_func(%struct.acpi_device_wakeup_context* %context) #0 !dbg !7112 {
entry:
  %context.addr = alloca %struct.acpi_device_wakeup_context*, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.acpi_device_wakeup_context* %context, %struct.acpi_device_wakeup_context** %context.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device_wakeup_context** %context.addr, metadata !7113, metadata !DIExpression()), !dbg !7114
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !7115, metadata !DIExpression()), !dbg !7116
  %0 = load %struct.acpi_device_wakeup_context*, %struct.acpi_device_wakeup_context** %context.addr, align 8, !dbg !7117
  %dev1 = getelementptr inbounds %struct.acpi_device_wakeup_context, %struct.acpi_device_wakeup_context* %0, i32 0, i32 1, !dbg !7118
  %1 = load %struct.device*, %struct.device** %dev1, align 8, !dbg !7118
  store %struct.device* %1, %struct.device** %dev, align 8, !dbg !7116
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !7119
  %tobool = icmp ne %struct.device* %2, null, !dbg !7119
  br i1 %tobool, label %if.then, label %if.end, !dbg !7121

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !7122
  call void @pm_wakeup_event(%struct.device* %3, i32 0) #4, !dbg !7124
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !7125
  %call = call i32 @pm_request_resume(%struct.device* %4) #4, !dbg !7126
  br label %if.end, !dbg !7127

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !7128
}

; Function Attrs: noredzone
declare dso_local void @dev_pm_domain_set(%struct.device*, %struct.dev_pm_domain*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_dev_pm_detach(%struct.device* %dev, i1 zeroext %power_off) #0 !dbg !7129 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %power_off.addr = alloca i8, align 1
  %adev = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7130, metadata !DIExpression()), !dbg !7131
  %frombool = zext i1 %power_off to i8
  store i8 %frombool, i8* %power_off.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %power_off.addr, metadata !7132, metadata !DIExpression()), !dbg !7133
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !7134, metadata !DIExpression()), !dbg !7135
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !7136, metadata !DIExpression()), !dbg !7138
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7138
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 24, !dbg !7138
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !7138
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !7138
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !7138
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #4, !dbg !7138
  br i1 %call, label %cond.true, label %cond.false, !dbg !7138

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !7139, metadata !DIExpression()), !dbg !7141
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !7141
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !7141
  store i8* %4, i8** %__mptr, align 8, !dbg !7141
  br label %do.body, !dbg !7141

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !7142

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !7141
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !7141
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !7141
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp1, align 8, !dbg !7142
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !7141
  br label %cond.end, !dbg !7138

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !7138

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !7138
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !7138
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !7138
  store %struct.acpi_device* %8, %struct.acpi_device** %adev, align 8, !dbg !7135
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !7144
  %tobool = icmp ne %struct.acpi_device* %9, null, !dbg !7144
  br i1 %tobool, label %land.lhs.true, label %if.end6, !dbg !7146

land.lhs.true:                                    ; preds = %cond.end
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7147
  %pm_domain = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 12, !dbg !7148
  %11 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %pm_domain, align 8, !dbg !7148
  %cmp = icmp eq %struct.dev_pm_domain* %11, @acpi_general_pm_domain, !dbg !7149
  br i1 %cmp, label %if.then, label %if.end6, !dbg !7150

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7151
  call void @dev_pm_domain_set(%struct.device* %12, %struct.dev_pm_domain* null) #4, !dbg !7153
  %13 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !7154
  %call2 = call i32 @acpi_remove_pm_notifier(%struct.acpi_device* %13) #4, !dbg !7155
  %14 = load i8, i8* %power_off.addr, align 1, !dbg !7156
  %tobool3 = trunc i8 %14 to i1, !dbg !7156
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !7158

if.then4:                                         ; preds = %if.then
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7159
  call void @dev_pm_qos_hide_latency_limit(%struct.device* %15) #4, !dbg !7161
  %16 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7162
  call void @dev_pm_qos_hide_flags(%struct.device* %16) #4, !dbg !7163
  %17 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !7164
  call void @acpi_device_wakeup_disable(%struct.acpi_device* %17) #4, !dbg !7165
  %18 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7166
  %19 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !7167
  %call5 = call i32 @acpi_dev_pm_low_power(%struct.device* %18, %struct.acpi_device* %19, i32 0) #4, !dbg !7168
  br label %if.end, !dbg !7169

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end6, !dbg !7170

if.end6:                                          ; preds = %if.end, %land.lhs.true, %cond.end
  ret void, !dbg !7171
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_integer(i8*, i8*, %struct.acpi_object_list*, i64*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_device* @acpi_bus_get_acpi_device(i8*) #2

; Function Attrs: noredzone
declare dso_local void @pm_wakeup_ws_event(%struct.wakeup_source*, i32, i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_bus_put_acpi_device(%struct.acpi_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !7172 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !7177, metadata !DIExpression()), !dbg !7178
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !7179
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !7180
  %1 = load i8*, i8** %name, align 8, !dbg !7180
  ret i8* %1, !dbg !7181
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__acpi_device_wakeup_enable(%struct.acpi_device* %adev, i32 %target_state, i32 %max_count) #0 !dbg !7182 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %target_state.addr = alloca i32, align 4
  %max_count.addr = alloca i32, align 4
  %wakeup = alloca %struct.acpi_device_wakeup*, align 8
  %status = alloca i32, align 4
  %error = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !7185, metadata !DIExpression()), !dbg !7186
  store i32 %target_state, i32* %target_state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %target_state.addr, metadata !7187, metadata !DIExpression()), !dbg !7188
  store i32 %max_count, i32* %max_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_count.addr, metadata !7189, metadata !DIExpression()), !dbg !7190
  call void @llvm.dbg.declare(metadata %struct.acpi_device_wakeup** %wakeup, metadata !7191, metadata !DIExpression()), !dbg !7192
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !7193
  %wakeup1 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 12, !dbg !7194
  store %struct.acpi_device_wakeup* %wakeup1, %struct.acpi_device_wakeup** %wakeup, align 8, !dbg !7192
  call void @llvm.dbg.declare(metadata i32* %status, metadata !7195, metadata !DIExpression()), !dbg !7196
  call void @llvm.dbg.declare(metadata i32* %error, metadata !7197, metadata !DIExpression()), !dbg !7198
  store i32 0, i32* %error, align 4, !dbg !7198
  call void @mutex_lock(%struct.mutex* @acpi_wakeup_lock) #4, !dbg !7199
  %1 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %wakeup, align 8, !dbg !7200
  %enable_count = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %1, i32 0, i32 8, !dbg !7202
  %2 = load i32, i32* %enable_count, align 4, !dbg !7202
  %3 = load i32, i32* %max_count.addr, align 4, !dbg !7203
  %cmp = icmp sge i32 %2, %3, !dbg !7204
  br i1 %cmp, label %if.then, label %if.end, !dbg !7205

if.then:                                          ; preds = %entry
  br label %out, !dbg !7206

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %wakeup, align 8, !dbg !7207
  %enable_count2 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %4, i32 0, i32 8, !dbg !7209
  %5 = load i32, i32* %enable_count2, align 4, !dbg !7209
  %cmp3 = icmp sgt i32 %5, 0, !dbg !7210
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !7211

if.then4:                                         ; preds = %if.end
  br label %inc, !dbg !7212

if.end5:                                          ; preds = %if.end
  %6 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !7213
  %7 = load i32, i32* %target_state.addr, align 4, !dbg !7214
  %call = call i32 @acpi_enable_wakeup_device_power(%struct.acpi_device* %6, i32 %7) #4, !dbg !7215
  store i32 %call, i32* %error, align 4, !dbg !7216
  %8 = load i32, i32* %error, align 4, !dbg !7217
  %tobool = icmp ne i32 %8, 0, !dbg !7217
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !7219

if.then6:                                         ; preds = %if.end5
  br label %out, !dbg !7220

if.end7:                                          ; preds = %if.end5
  %9 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %wakeup, align 8, !dbg !7221
  %gpe_device = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %9, i32 0, i32 0, !dbg !7222
  %10 = load i8*, i8** %gpe_device, align 8, !dbg !7222
  %11 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %wakeup, align 8, !dbg !7223
  %gpe_number = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %11, i32 0, i32 1, !dbg !7224
  %12 = load i64, i64* %gpe_number, align 8, !dbg !7224
  %conv = trunc i64 %12 to i32, !dbg !7223
  %call8 = call i32 @acpi_enable_gpe(i8* %10, i32 %conv) #4, !dbg !7225
  store i32 %call8, i32* %status, align 4, !dbg !7226
  %13 = load i32, i32* %status, align 4, !dbg !7227
  %tobool9 = icmp ne i32 %13, 0, !dbg !7227
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !7229

if.then10:                                        ; preds = %if.end7
  %14 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !7230
  %call11 = call i32 @acpi_disable_wakeup_device_power(%struct.acpi_device* %14) #4, !dbg !7232
  store i32 -5, i32* %error, align 4, !dbg !7233
  br label %out, !dbg !7234

if.end12:                                         ; preds = %if.end7
  store i32 0, i32* %tmp, align 4, !dbg !7235
  %15 = load i32, i32* %tmp, align 4, !dbg !7238
  br label %inc, !dbg !7239

inc:                                              ; preds = %if.end12, %if.then4
  call void @llvm.dbg.label(metadata !7240), !dbg !7241
  %16 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %wakeup, align 8, !dbg !7242
  %enable_count13 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %16, i32 0, i32 8, !dbg !7243
  %17 = load i32, i32* %enable_count13, align 4, !dbg !7244
  %inc14 = add i32 %17, 1, !dbg !7244
  store i32 %inc14, i32* %enable_count13, align 4, !dbg !7244
  br label %out, !dbg !7242

out:                                              ; preds = %inc, %if.then10, %if.then6, %if.then
  call void @llvm.dbg.label(metadata !7245), !dbg !7246
  call void @mutex_unlock(%struct.mutex* @acpi_wakeup_lock) #4, !dbg !7247
  %18 = load i32, i32* %error, align 4, !dbg !7248
  ret i32 %18, !dbg !7249
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_enable_wakeup_device_power(%struct.acpi_device*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_enable_gpe(i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_disable_wakeup_device_power(%struct.acpi_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_device_power_manageable(%struct.acpi_device* %adev) #0 !dbg !7250 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !7251, metadata !DIExpression()), !dbg !7252
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !7253
  %flags = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 9, !dbg !7254
  %1 = bitcast %struct.acpi_device_flags* %flags to i32*, !dbg !7255
  %bf.load = load i32, i32* %1, align 4, !dbg !7255
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !7255
  %bf.clear = and i32 %bf.lshr, 1, !dbg !7255
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !7253
  ret i1 %tobool, !dbg !7256
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_disable_gpe(i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_resume(%struct.device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_wakeup_event(%struct.device* %dev, i32 %msec) #0 !dbg !7257 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %msec.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7260, metadata !DIExpression()), !dbg !7261
  store i32 %msec, i32* %msec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msec.addr, metadata !7262, metadata !DIExpression()), !dbg !7263
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7264
  %1 = load i32, i32* %msec.addr, align 4, !dbg !7265
  call void @pm_wakeup_dev_event(%struct.device* %0, i32 %1, i1 zeroext false) #4, !dbg !7266
  ret void, !dbg !7267
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_subsys_resume_early(%struct.device* %dev) #0 !dbg !7268 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7269, metadata !DIExpression()), !dbg !7270
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !7271, metadata !DIExpression()), !dbg !7272
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7273
  %call = call zeroext i1 @dev_pm_skip_resume(%struct.device* %0) #4, !dbg !7275
  br i1 %call, label %if.then, label %if.end, !dbg !7276

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !7277
  br label %return, !dbg !7277

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7278
  %call1 = call i32 @acpi_dev_resume(%struct.device* %1) #4, !dbg !7279
  store i32 %call1, i32* %ret, align 4, !dbg !7280
  %2 = load i32, i32* %ret, align 4, !dbg !7281
  %tobool = icmp ne i32 %2, 0, !dbg !7281
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !7281

cond.true:                                        ; preds = %if.end
  %3 = load i32, i32* %ret, align 4, !dbg !7282
  br label %cond.end, !dbg !7281

cond.false:                                       ; preds = %if.end
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7283
  %call2 = call i32 @pm_generic_resume_early(%struct.device* %4) #4, !dbg !7284
  br label %cond.end, !dbg !7281

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %call2, %cond.false ], !dbg !7281
  store i32 %cond, i32* %retval, align 4, !dbg !7285
  br label %return, !dbg !7285

return:                                           ; preds = %cond.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !7286
  ret i32 %5, !dbg !7286
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_subsys_poweroff_late(%struct.device* %dev) #0 !dbg !7287 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7288, metadata !DIExpression()), !dbg !7289
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !7290, metadata !DIExpression()), !dbg !7291
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7292
  %call = call zeroext i1 @dev_pm_skip_suspend(%struct.device* %0) #4, !dbg !7294
  br i1 %call, label %if.then, label %if.end, !dbg !7295

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !7296
  br label %return, !dbg !7296

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7297
  %call1 = call i32 @pm_generic_poweroff_late(%struct.device* %1) #4, !dbg !7298
  store i32 %call1, i32* %ret, align 4, !dbg !7299
  %2 = load i32, i32* %ret, align 4, !dbg !7300
  %tobool = icmp ne i32 %2, 0, !dbg !7300
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !7302

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* %ret, align 4, !dbg !7303
  store i32 %3, i32* %retval, align 4, !dbg !7304
  br label %return, !dbg !7304

if.end3:                                          ; preds = %if.end
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7305
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7306
  %call4 = call zeroext i1 @device_may_wakeup(%struct.device* %5) #4, !dbg !7307
  %call5 = call i32 @acpi_dev_suspend(%struct.device* %4, i1 zeroext %call4) #4, !dbg !7308
  store i32 %call5, i32* %retval, align 4, !dbg !7309
  br label %return, !dbg !7309

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !7310
  ret i32 %6, !dbg !7310
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_subsys_resume_noirq(%struct.device* %dev) #0 !dbg !7311 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7312, metadata !DIExpression()), !dbg !7313
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7314
  %call = call zeroext i1 @dev_pm_skip_resume(%struct.device* %0) #4, !dbg !7316
  br i1 %call, label %if.then, label %if.end, !dbg !7317

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !7318
  br label %return, !dbg !7318

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7319
  %call1 = call i32 @pm_generic_resume_noirq(%struct.device* %1) #4, !dbg !7320
  store i32 %call1, i32* %retval, align 4, !dbg !7321
  br label %return, !dbg !7321

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !7322
  ret i32 %2, !dbg !7322
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_subsys_poweroff_noirq(%struct.device* %dev) #0 !dbg !7323 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7324, metadata !DIExpression()), !dbg !7325
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7326
  %call = call zeroext i1 @dev_pm_skip_suspend(%struct.device* %0) #4, !dbg !7328
  br i1 %call, label %if.then, label %if.end, !dbg !7329

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !7330
  br label %return, !dbg !7330

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7331
  %call1 = call i32 @pm_generic_poweroff_noirq(%struct.device* %1) #4, !dbg !7332
  store i32 %call1, i32* %retval, align 4, !dbg !7333
  br label %return, !dbg !7333

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !7334
  ret i32 %2, !dbg !7334
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @dev_pm_skip_resume(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @pm_generic_resume_early(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @pm_generic_poweroff_late(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @pm_generic_resume_noirq(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @pm_generic_poweroff_noirq(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @dev_pm_qos_hide_latency_limit(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @dev_pm_qos_hide_flags(%struct.device*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone }
attributes #5 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5307, !5308, !5309, !5310}
!llvm.ident = !{!5311}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_pm_notifier_install_lock", scope: !2, file: !3, line: 436, type: !749, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !171, globals: !5294, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/device_pm.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !18, !24, !31, !43, !50, !55, !61, !66, !72, !79, !85, !94, !102, !108, !114, !121, !128, !134, !141, !145, !159, !164}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !6, line: 41, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !12, line: 15, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !19, line: 118, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "elv_merge", file: !25, line: 19, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/elevator.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29, !30}
!27 = !DIEnumerator(name: "ELEVATOR_NO_MERGE", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "ELEVATOR_FRONT_MERGE", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "ELEVATOR_BACK_MERGE", value: 2, isUnsigned: true)
!30 = !DIEnumerator(name: "ELEVATOR_DISCARD_MERGE", value: 3, isUnsigned: true)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !32, line: 49, baseType: !7, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/lizy2001/genbc/linux")
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !42}
!34 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0, isUnsigned: true)
!35 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1, isUnsigned: true)
!36 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2, isUnsigned: true)
!37 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3, isUnsigned: true)
!38 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4, isUnsigned: true)
!39 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5, isUnsigned: true)
!40 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6, isUnsigned: true)
!41 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7, isUnsigned: true)
!42 = !DIEnumerator(name: "WB_REASON_MAX", value: 8, isUnsigned: true)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !44, line: 502, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!47 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!49 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !19, line: 315, baseType: !7, size: 32, elements: !51)
!51 = !{!52, !53, !54}
!52 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2, isUnsigned: true)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !56, line: 546, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!57 = !{!58, !59, !60}
!58 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !62, line: 65, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!63 = !{!64, !65}
!64 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!65 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !67, line: 16, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !73, line: 59, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!76 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!77 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!78 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !80, line: 54, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !86, line: 296, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!87 = !{!88, !89, !90, !91, !92, !93}
!88 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!91 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!92 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!93 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !95, line: 9, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!96 = !{!97, !98, !99, !100, !101}
!97 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!98 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!99 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!100 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!101 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !103, line: 26, baseType: !7, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!104 = !{!105, !106, !107}
!105 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!106 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!107 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !109, line: 44, baseType: !7, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!110 = !{!111, !112, !113}
!111 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!112 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!113 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !115, line: 343, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!116 = !{!117, !118, !119, !120}
!117 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!118 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!119 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!120 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !44, line: 524, baseType: !7, size: 32, elements: !122)
!122 = !{!123, !124, !125, !126, !127}
!123 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!124 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!125 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!126 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!127 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !129, line: 41, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !132, !133}
!131 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "PM_QOS_MAX", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "PM_QOS_MIN", value: 2, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !129, line: 99, baseType: !7, size: 32, elements: !135)
!135 = !{!136, !137, !138, !139, !140}
!136 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2, isUnsigned: true)
!138 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3, isUnsigned: true)
!139 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4, isUnsigned: true)
!140 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5, isUnsigned: true)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !129, line: 80, baseType: !7, size: 32, elements: !142)
!142 = !{!143, !144}
!143 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1, isUnsigned: true)
!144 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2, isUnsigned: true)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !146, line: 76, baseType: !7, size: 32, elements: !147)
!146 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158}
!148 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!149 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!150 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!151 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!152 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!153 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!154 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!155 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!156 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!157 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!158 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !160, line: 10, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!161 = !{!162, !163}
!162 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!163 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_flags_status", file: !129, line: 19, baseType: !165, size: 32, elements: !166)
!165 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!166 = !{!167, !168, !169, !170}
!167 = !DIEnumerator(name: "PM_QOS_FLAGS_UNDEFINED", value: -1)
!168 = !DIEnumerator(name: "PM_QOS_FLAGS_NONE", value: 0)
!169 = !DIEnumerator(name: "PM_QOS_FLAGS_SOME", value: 1)
!170 = !DIEnumerator(name: "PM_QOS_FLAGS_ALL", value: 2)
!171 = !{!172, !177, !181, !182, !165}
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !173, line: 17, baseType: !174)
!173 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !175, line: 21, baseType: !176)
!175 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!176 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !178, line: 421, baseType: !179)
!178 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !173, line: 21, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !175, line: 27, baseType: !7)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !184, line: 351, size: 10880, elements: !185)
!184 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!185 = !{!186, !187, !189, !5023, !5024, !5025, !5026, !5027, !5028, !5037, !5054, !5128, !5155, !5179, !5200, !5206, !5215, !5247, !5261, !5283, !5287, !5288, !5289, !5290, !5291, !5292, !5293}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !183, file: !184, line: 352, baseType: !165, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !183, file: !184, line: 353, baseType: !188, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !178, line: 424, baseType: !181)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !183, file: !184, line: 354, baseType: !190, size: 192, offset: 128)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !191, line: 17, size: 192, elements: !192)
!191 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!192 = !{!193, !195, !5022}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !190, file: !191, line: 18, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !190, file: !191, line: 19, baseType: !196, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !191, line: 110, size: 1152, elements: !199)
!199 = !{!200, !204, !208, !217, !4964, !4968, !4972, !4977, !4981, !4982, !4986, !4990, !4994, !5005, !5006, !5007, !5008, !5018}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !198, file: !191, line: 111, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!194, !194}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !198, file: !191, line: 112, baseType: !205, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !194}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !198, file: !191, line: 113, baseType: !209, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!212, !215}
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !213, line: 30, baseType: !214)
!213 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!214 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !198, file: !191, line: 114, baseType: !218, size: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!221, !215, !223}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !115, line: 461, size: 5568, elements: !226)
!226 = !{!227, !4449, !4450, !4453, !4454, !4504, !4595, !4596, !4597, !4598, !4599, !4608, !4772, !4785, !4891, !4892, !4896, !4898, !4899, !4900, !4904, !4910, !4911, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4952, !4953, !4954, !4957, !4960, !4961, !4962, !4963}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !225, file: !115, line: 462, baseType: !228, size: 512)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !229, line: 64, size: 512, elements: !230)
!229 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!230 = !{!231, !235, !241, !243, !303, !4316, !4443, !4444, !4445, !4446, !4447, !4448}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !229, line: 65, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !228, file: !229, line: 66, baseType: !236, size: 128, offset: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !213, line: 178, size: 128, elements: !237)
!237 = !{!238, !240}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !236, file: !213, line: 179, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !236, file: !213, line: 179, baseType: !239, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !228, file: !229, line: 67, baseType: !242, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !228, file: !229, line: 68, baseType: !244, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !229, line: 192, size: 704, elements: !246)
!246 = !{!247, !248, !264, !265}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !245, file: !229, line: 193, baseType: !236, size: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !245, file: !229, line: 194, baseType: !249, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !250, line: 83, baseType: !251)
!250 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !250, line: 71, elements: !252)
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !250, line: 72, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !251, file: !250, line: 72, elements: !255)
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !254, file: !250, line: 73, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !250, line: 20, elements: !258)
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !257, file: !250, line: 21, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !261, line: 25, baseType: !262)
!261 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !261, line: 25, elements: !263)
!263 = !{}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !245, file: !229, line: 195, baseType: !228, size: 512, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !245, file: !229, line: 196, baseType: !266, size: 64, offset: 640)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !229, line: 156, size: 192, elements: !269)
!269 = !{!270, !275, !280}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !268, file: !229, line: 157, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!165, !244, !242}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !268, file: !229, line: 158, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!232, !244, !242}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !268, file: !229, line: 159, baseType: !281, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!165, !244, !242, !285}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !229, line: 148, size: 20736, elements: !287)
!287 = !{!288, !293, !297, !298, !302}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !286, file: !229, line: 149, baseType: !289, size: 192)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 192, elements: !291)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!291 = !{!292}
!292 = !DISubrange(count: 3)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !286, file: !229, line: 150, baseType: !294, size: 4096, offset: 192)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 4096, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !286, file: !229, line: 151, baseType: !165, size: 32, offset: 4288)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !286, file: !229, line: 152, baseType: !299, size: 16384, offset: 4320)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 16384, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 2048)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !286, file: !229, line: 153, baseType: !165, size: 32, offset: 20704)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !228, file: !229, line: 69, baseType: !304, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !229, line: 138, size: 448, elements: !306)
!306 = !{!307, !311, !341, !343, !4280, !4308, !4312}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !305, file: !229, line: 139, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !242}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !305, file: !229, line: 140, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !315, line: 230, size: 128, elements: !316)
!315 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!316 = !{!317, !333}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !314, file: !315, line: 231, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!321, !242, !326, !290}
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !213, line: 60, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !323, line: 73, baseType: !324)
!323 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !323, line: 15, baseType: !325)
!325 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !315, line: 30, size: 128, elements: !328)
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !327, file: !315, line: 31, baseType: !232, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !327, file: !315, line: 32, baseType: !331, size: 16, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !213, line: 19, baseType: !332)
!332 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !314, file: !315, line: 232, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!321, !242, !326, !232, !337}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !213, line: 55, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !323, line: 72, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !323, line: 16, baseType: !340)
!340 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !305, file: !229, line: 141, baseType: !342, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !305, file: !229, line: 142, baseType: !344, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !315, line: 84, size: 320, elements: !348)
!348 = !{!349, !350, !354, !4277, !4278}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !347, file: !315, line: 85, baseType: !232, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !347, file: !315, line: 86, baseType: !351, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!331, !242, !326, !165}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !347, file: !315, line: 88, baseType: !355, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!331, !242, !358, !165}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !315, line: 168, size: 448, elements: !360)
!360 = !{!361, !362, !363, !364, !4272, !4273}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !359, file: !315, line: 169, baseType: !327, size: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !359, file: !315, line: 170, baseType: !337, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !359, file: !315, line: 171, baseType: !181, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !359, file: !315, line: 172, baseType: !365, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!321, !368, !242, !358, !290, !540, !337}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !86, line: 916, size: 1856, align: 32, elements: !370)
!370 = !{!371, !389, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4255, !4256, !4265, !4266, !4267, !4268, !4269, !4270, !4271}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !369, file: !86, line: 920, baseType: !372, size: 128)
!372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !86, line: 917, size: 128, elements: !373)
!373 = !{!374, !380}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !372, file: !86, line: 918, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !376, line: 58, size: 64, elements: !377)
!376 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !376, line: 59, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !372, file: !86, line: 919, baseType: !381, size: 128, align: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !213, line: 216, size: 128, align: 64, elements: !382)
!382 = !{!383, !385}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !213, line: 217, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !381, file: !213, line: 218, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !384}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !369, file: !86, line: 921, baseType: !390, size: 128, offset: 128)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !391, line: 8, size: 128, elements: !392)
!391 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!392 = !{!393, !397}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !390, file: !391, line: 9, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !396, line: 18, flags: DIFlagFwdDecl)
!396 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!397 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !390, file: !391, line: 10, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !396, line: 89, size: 1536, elements: !400)
!400 = !{!401, !402, !412, !420, !421, !439, !4205, !4207, !4219, !4220, !4221, !4222, !4223, !4229, !4230, !4231}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !399, file: !396, line: 91, baseType: !7, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !399, file: !396, line: 92, baseType: !403, size: 32, offset: 32)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !404, line: 277, baseType: !405)
!404 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !404, line: 277, size: 32, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !405, file: !404, line: 277, baseType: !408, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !404, line: 70, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !404, line: 65, size: 32, elements: !410)
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !409, file: !404, line: 66, baseType: !7, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !399, file: !396, line: 93, baseType: !413, size: 128, offset: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !414, line: 38, size: 128, elements: !415)
!414 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!415 = !{!416, !418}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !413, file: !414, line: 39, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !413, file: !414, line: 39, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !399, file: !396, line: 94, baseType: !398, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !399, file: !396, line: 95, baseType: !422, size: 128, offset: 256)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !396, line: 47, size: 128, elements: !423)
!423 = !{!424, !436}
!424 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !396, line: 48, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !396, line: 48, size: 64, elements: !426)
!426 = !{!427, !432}
!427 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !396, line: 49, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !425, file: !396, line: 49, size: 64, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !428, file: !396, line: 50, baseType: !179, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !428, file: !396, line: 50, baseType: !179, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !425, file: !396, line: 52, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !173, line: 23, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !175, line: 31, baseType: !435)
!435 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !422, file: !396, line: 54, baseType: !437, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !399, file: !396, line: 96, baseType: !440, size: 64, offset: 384)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !86, line: 610, size: 4224, elements: !442)
!442 = !{!443, !444, !445, !453, !460, !461, !607, !3918, !3919, !3920, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !4181, !4189, !4190, !4191, !4201, !4202, !4203, !4204}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !441, file: !86, line: 611, baseType: !331, size: 16)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !441, file: !86, line: 612, baseType: !332, size: 16, offset: 16)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !441, file: !86, line: 613, baseType: !446, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !447, line: 23, baseType: !448)
!447 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 21, size: 32, elements: !449)
!449 = !{!450}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !448, file: !447, line: 22, baseType: !451, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !213, line: 32, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !323, line: 49, baseType: !7)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !441, file: !86, line: 614, baseType: !454, size: 32, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !447, line: 28, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 26, size: 32, elements: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !455, file: !447, line: 27, baseType: !458, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !213, line: 33, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !323, line: 50, baseType: !7)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !441, file: !86, line: 615, baseType: !7, size: 32, offset: 96)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !441, file: !86, line: 622, baseType: !462, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !86, line: 1864, size: 1536, align: 512, elements: !465)
!465 = !{!466, !470, !483, !487, !493, !497, !501, !505, !509, !513, !517, !518, !524, !528, !554, !583, !587, !593, !598, !602, !603}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !464, file: !86, line: 1865, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!398, !440, !398, !7}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !464, file: !86, line: 1866, baseType: !471, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!232, !398, !440, !474}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !476, line: 10, size: 128, elements: !477)
!476 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!477 = !{!478, !482}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !475, file: !476, line: 11, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !181}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !475, file: !476, line: 12, baseType: !181, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !464, file: !86, line: 1867, baseType: !484, size: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!165, !440, !165}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !464, file: !86, line: 1868, baseType: !488, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!491, !440, !165}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !86, line: 581, flags: DIFlagFwdDecl)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !464, file: !86, line: 1870, baseType: !494, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!165, !398, !290, !165}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !464, file: !86, line: 1872, baseType: !498, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!165, !440, !398, !331, !212}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !464, file: !86, line: 1873, baseType: !502, size: 64, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!165, !398, !440, !398}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !464, file: !86, line: 1874, baseType: !506, size: 64, offset: 448)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!165, !440, !398}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !464, file: !86, line: 1875, baseType: !510, size: 64, offset: 512)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!165, !440, !398, !232}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !464, file: !86, line: 1876, baseType: !514, size: 64, offset: 576)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!165, !440, !398, !331}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !464, file: !86, line: 1877, baseType: !506, size: 64, offset: 640)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !464, file: !86, line: 1878, baseType: !519, size: 64, offset: 704)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!165, !440, !398, !331, !522}
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !213, line: 16, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !213, line: 13, baseType: !179)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !464, file: !86, line: 1879, baseType: !525, size: 64, offset: 768)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!165, !440, !398, !440, !398, !7}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !464, file: !86, line: 1881, baseType: !529, size: 64, offset: 832)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!165, !398, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !86, line: 219, size: 640, elements: !534)
!534 = !{!535, !536, !537, !538, !539, !543, !551, !552, !553}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !533, file: !86, line: 220, baseType: !7, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !533, file: !86, line: 221, baseType: !331, size: 16, offset: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !533, file: !86, line: 222, baseType: !446, size: 32, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !533, file: !86, line: 223, baseType: !454, size: 32, offset: 96)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !533, file: !86, line: 224, baseType: !540, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !213, line: 46, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !323, line: 88, baseType: !542)
!542 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !533, file: !86, line: 225, baseType: !544, size: 128, offset: 192)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !545, line: 13, size: 128, elements: !546)
!545 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!546 = !{!547, !550}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !544, file: !545, line: 14, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !545, line: 8, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !175, line: 30, baseType: !542)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !544, file: !545, line: 15, baseType: !325, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !533, file: !86, line: 226, baseType: !544, size: 128, offset: 320)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !533, file: !86, line: 227, baseType: !544, size: 128, offset: 448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !533, file: !86, line: 234, baseType: !368, size: 64, offset: 576)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !464, file: !86, line: 1882, baseType: !555, size: 64, offset: 896)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!165, !558, !560, !179, !7}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !562, line: 22, size: 1152, elements: !563)
!562 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!563 = !{!564, !565, !566, !567, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !561, file: !562, line: 23, baseType: !179, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !561, file: !562, line: 24, baseType: !331, size: 16, offset: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !561, file: !562, line: 25, baseType: !7, size: 32, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !561, file: !562, line: 26, baseType: !568, size: 32, offset: 96)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !213, line: 104, baseType: !179)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !561, file: !562, line: 27, baseType: !433, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !561, file: !562, line: 28, baseType: !433, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !561, file: !562, line: 37, baseType: !433, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !561, file: !562, line: 38, baseType: !522, size: 32, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !561, file: !562, line: 39, baseType: !522, size: 32, offset: 352)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !561, file: !562, line: 40, baseType: !446, size: 32, offset: 384)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !561, file: !562, line: 41, baseType: !454, size: 32, offset: 416)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !561, file: !562, line: 42, baseType: !540, size: 64, offset: 448)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !561, file: !562, line: 43, baseType: !544, size: 128, offset: 512)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !561, file: !562, line: 44, baseType: !544, size: 128, offset: 640)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !561, file: !562, line: 45, baseType: !544, size: 128, offset: 768)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !561, file: !562, line: 46, baseType: !544, size: 128, offset: 896)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !561, file: !562, line: 47, baseType: !433, size: 64, offset: 1024)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !561, file: !562, line: 48, baseType: !433, size: 64, offset: 1088)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !464, file: !86, line: 1883, baseType: !584, size: 64, offset: 960)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!321, !398, !290, !337}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !464, file: !86, line: 1884, baseType: !588, size: 64, offset: 1024)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!165, !440, !591, !433, !433}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !86, line: 50, flags: DIFlagFwdDecl)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !464, file: !86, line: 1886, baseType: !594, size: 64, offset: 1088)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!165, !440, !597, !165}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !464, file: !86, line: 1887, baseType: !599, size: 64, offset: 1152)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!165, !440, !398, !368, !7, !331}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !464, file: !86, line: 1890, baseType: !514, size: 64, offset: 1216)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !464, file: !86, line: 1891, baseType: !604, size: 64, offset: 1280)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!165, !440, !491, !165}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !441, file: !86, line: 623, baseType: !608, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !86, line: 1416, size: 9472, elements: !610)
!610 = !{!611, !612, !613, !614, !615, !616, !666, !3532, !3614, !3697, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3713, !3717, !3718, !3719, !3720, !3723, !3724, !3725, !3766, !3792, !3793, !3794, !3795, !3796, !3797, !3800, !3801, !3808, !3809, !3810, !3811, !3812, !3871, !3872, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !609, file: !86, line: 1417, baseType: !236, size: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !609, file: !86, line: 1418, baseType: !522, size: 32, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !609, file: !86, line: 1419, baseType: !176, size: 8, offset: 160)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !609, file: !86, line: 1420, baseType: !340, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !609, file: !86, line: 1421, baseType: !540, size: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !609, file: !86, line: 1422, baseType: !617, size: 64, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !86, line: 2228, size: 576, elements: !619)
!619 = !{!620, !621, !622, !629, !633, !637, !641, !645, !646, !656, !659, !660, !661, !663, !664, !665}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !618, file: !86, line: 2229, baseType: !232, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !618, file: !86, line: 2230, baseType: !165, size: 32, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !618, file: !86, line: 2238, baseType: !623, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!165, !626}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !628, line: 28, flags: DIFlagFwdDecl)
!628 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!629 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !618, file: !86, line: 2239, baseType: !630, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !86, line: 70, flags: DIFlagFwdDecl)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !618, file: !86, line: 2240, baseType: !634, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!398, !617, !165, !232, !181}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !618, file: !86, line: 2242, baseType: !638, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !608}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !618, file: !86, line: 2243, baseType: !642, size: 64, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !644, line: 76, flags: DIFlagFwdDecl)
!644 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!645 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !618, file: !86, line: 2244, baseType: !617, size: 64, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !618, file: !86, line: 2245, baseType: !647, size: 64, offset: 512)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !213, line: 182, size: 64, elements: !648)
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !647, file: !213, line: 183, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !213, line: 186, size: 128, elements: !652)
!652 = !{!653, !654}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !651, file: !213, line: 187, baseType: !650, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !651, file: !213, line: 187, baseType: !655, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !618, file: !86, line: 2247, baseType: !657, offset: 576)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !658, line: 187, elements: !263)
!658 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!659 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !618, file: !86, line: 2248, baseType: !657, offset: 576)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !618, file: !86, line: 2249, baseType: !657, offset: 576)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !618, file: !86, line: 2250, baseType: !662, offset: 576)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !657, elements: !291)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !618, file: !86, line: 2252, baseType: !657, offset: 576)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !618, file: !86, line: 2253, baseType: !657, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !618, file: !86, line: 2254, baseType: !657, offset: 576)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !609, file: !86, line: 1423, baseType: !667, size: 64, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !669)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !86, line: 1935, size: 1472, elements: !670)
!670 = !{!671, !675, !679, !680, !684, !704, !708, !709, !710, !714, !718, !719, !720, !721, !727, !732, !733, !789, !790, !791, !792, !3516, !3531}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !669, file: !86, line: 1936, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!440, !608}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !669, file: !86, line: 1937, baseType: !676, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !440}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !669, file: !86, line: 1938, baseType: !676, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !669, file: !86, line: 1940, baseType: !681, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !440, !165}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !669, file: !86, line: 1941, baseType: !685, size: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!165, !440, !688}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !6, line: 51, size: 320, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !689, file: !6, line: 52, baseType: !325, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !689, file: !6, line: 54, baseType: !325, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !689, file: !6, line: 61, baseType: !540, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !689, file: !6, line: 62, baseType: !540, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !689, file: !6, line: 64, baseType: !5, size: 32, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !689, file: !6, line: 66, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !689, file: !6, line: 67, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !689, file: !6, line: 68, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !689, file: !6, line: 69, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !689, file: !6, line: 70, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !689, file: !6, line: 71, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !689, file: !6, line: 79, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "punt_to_cgroup", scope: !689, file: !6, line: 81, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !669, file: !86, line: 1942, baseType: !705, size: 64, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!165, !440}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !669, file: !86, line: 1943, baseType: !676, size: 64, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !669, file: !86, line: 1944, baseType: !638, size: 64, offset: 448)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !669, file: !86, line: 1945, baseType: !711, size: 64, offset: 512)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!165, !608, !165}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !669, file: !86, line: 1946, baseType: !715, size: 64, offset: 576)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!165, !608}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !669, file: !86, line: 1947, baseType: !715, size: 64, offset: 640)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !669, file: !86, line: 1948, baseType: !715, size: 64, offset: 704)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !669, file: !86, line: 1949, baseType: !715, size: 64, offset: 768)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !669, file: !86, line: 1950, baseType: !722, size: 64, offset: 832)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!165, !398, !725}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !86, line: 57, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !669, file: !86, line: 1951, baseType: !728, size: 64, offset: 896)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!165, !608, !731, !290}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !669, file: !86, line: 1952, baseType: !638, size: 64, offset: 960)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !669, file: !86, line: 1954, baseType: !734, size: 64, offset: 1024)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!165, !737, !398}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !739, line: 16, size: 896, elements: !740)
!739 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!740 = !{!741, !742, !743, !744, !745, !746, !747, !748, !762, !784, !785, !788}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !738, file: !739, line: 17, baseType: !290, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !738, file: !739, line: 18, baseType: !337, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !738, file: !739, line: 19, baseType: !337, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !738, file: !739, line: 20, baseType: !337, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !738, file: !739, line: 21, baseType: !337, size: 64, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !738, file: !739, line: 22, baseType: !540, size: 64, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !738, file: !739, line: 23, baseType: !540, size: 64, offset: 384)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !738, file: !739, line: 24, baseType: !749, size: 192, offset: 448)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !750, line: 53, size: 192, elements: !751)
!750 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!751 = !{!752, !760, !761}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !749, file: !750, line: 54, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !754, line: 13, baseType: !755)
!754 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !213, line: 175, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !213, line: 173, size: 64, elements: !757)
!757 = !{!758}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !756, file: !213, line: 174, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !173, line: 22, baseType: !549)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !749, file: !750, line: 55, baseType: !249, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !749, file: !750, line: 59, baseType: !236, size: 128, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !738, file: !739, line: 25, baseType: !763, size: 64, offset: 640)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !765)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !739, line: 31, size: 256, elements: !766)
!766 = !{!767, !772, !776, !780}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !765, file: !739, line: 32, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!181, !737, !771}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !765, file: !739, line: 33, baseType: !773, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !737, !181}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !765, file: !739, line: 34, baseType: !777, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!181, !737, !181, !771}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !765, file: !739, line: 35, baseType: !781, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!165, !737, !181}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !738, file: !739, line: 26, baseType: !165, size: 32, offset: 704)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !738, file: !739, line: 27, baseType: !786, size: 64, offset: 768)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !738, file: !739, line: 28, baseType: !181, size: 64, offset: 832)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !669, file: !86, line: 1955, baseType: !734, size: 64, offset: 1088)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !669, file: !86, line: 1956, baseType: !734, size: 64, offset: 1152)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !669, file: !86, line: 1957, baseType: !734, size: 64, offset: 1216)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !669, file: !86, line: 1963, baseType: !793, size: 64, offset: 1280)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!165, !608, !796, !819}
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !798, line: 68, size: 512, align: 128, elements: !799)
!798 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!799 = !{!800, !801, !3508, !3515}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !797, file: !798, line: 69, baseType: !340, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, scope: !797, file: !798, line: 77, baseType: !802, size: 320, offset: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !797, file: !798, line: 77, size: 320, elements: !803)
!803 = !{!804, !1937, !1942, !1968, !1976, !1982, !3459, !3507}
!804 = !DIDerivedType(tag: DW_TAG_member, scope: !802, file: !798, line: 78, baseType: !805, size: 320)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !802, file: !798, line: 78, size: 320, elements: !806)
!806 = !{!807, !808, !1935, !1936}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !805, file: !798, line: 84, baseType: !236, size: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !805, file: !798, line: 86, baseType: !809, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !86, line: 451, size: 1216, align: 64, elements: !811)
!811 = !{!812, !813, !821, !822, !827, !842, !851, !852, !853, !854, !1928, !1929, !1932, !1933, !1934}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !810, file: !86, line: 452, baseType: !440, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !810, file: !86, line: 453, baseType: !814, size: 128, offset: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !815, line: 292, size: 128, elements: !816)
!815 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!816 = !{!817, !818, !820}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !814, file: !815, line: 293, baseType: !249)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !814, file: !815, line: 295, baseType: !819, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !213, line: 148, baseType: !7)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !814, file: !815, line: 296, baseType: !181, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !810, file: !86, line: 454, baseType: !819, size: 32, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !810, file: !86, line: 455, baseType: !823, size: 32, offset: 224)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !213, line: 168, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !213, line: 166, size: 32, elements: !825)
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !824, file: !213, line: 167, baseType: !165, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !810, file: !86, line: 460, baseType: !828, size: 128, offset: 256)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !829, line: 125, size: 128, elements: !830)
!829 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!830 = !{!831, !841}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !828, file: !829, line: 126, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !829, line: 31, size: 64, elements: !833)
!833 = !{!834}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !832, file: !829, line: 32, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !829, line: 24, size: 192, align: 64, elements: !837)
!837 = !{!838, !839, !840}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !836, file: !829, line: 25, baseType: !340, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !836, file: !829, line: 26, baseType: !835, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !836, file: !829, line: 27, baseType: !835, size: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !828, file: !829, line: 127, baseType: !835, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !810, file: !86, line: 461, baseType: !843, size: 256, offset: 384)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !844, line: 35, size: 256, elements: !845)
!844 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!845 = !{!846, !847, !848, !850}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !843, file: !844, line: 36, baseType: !753, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !843, file: !844, line: 42, baseType: !753, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !843, file: !844, line: 46, baseType: !849, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !250, line: 29, baseType: !257)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !843, file: !844, line: 47, baseType: !236, size: 128, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !810, file: !86, line: 462, baseType: !340, size: 64, offset: 640)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !810, file: !86, line: 463, baseType: !340, size: 64, offset: 704)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !810, file: !86, line: 464, baseType: !340, size: 64, offset: 768)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !810, file: !86, line: 465, baseType: !855, size: 64, offset: 832)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !857)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !86, line: 367, size: 1408, elements: !858)
!858 = !{!859, !863, !867, !871, !875, !879, !892, !898, !902, !907, !911, !915, !919, !964, !968, !974, !975, !976, !980, !985, !989, !1924}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !857, file: !86, line: 368, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!165, !796, !688}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !857, file: !86, line: 369, baseType: !864, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!165, !368, !796}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !857, file: !86, line: 372, baseType: !868, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!165, !809, !688}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !857, file: !86, line: 375, baseType: !872, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!165, !796}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !857, file: !86, line: 381, baseType: !876, size: 64, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!165, !368, !809, !239, !7}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !857, file: !86, line: 383, baseType: !880, size: 64, offset: 320)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !883}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !885, line: 795, size: 256, elements: !886)
!885 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/lizy2001/genbc/linux")
!886 = !{!887, !888, !889, !890, !891}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !884, file: !885, line: 796, baseType: !368, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !884, file: !885, line: 797, baseType: !809, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !884, file: !885, line: 799, baseType: !340, size: 64, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !884, file: !885, line: 800, baseType: !7, size: 32, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !884, file: !885, line: 801, baseType: !7, size: 32, offset: 224)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !857, file: !86, line: 385, baseType: !893, size: 64, offset: 384)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!165, !368, !809, !540, !7, !7, !896, !897}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !857, file: !86, line: 388, baseType: !899, size: 64, offset: 448)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!165, !368, !809, !540, !7, !7, !796, !181}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !857, file: !86, line: 393, baseType: !903, size: 64, offset: 512)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!906, !809, !906}
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !213, line: 125, baseType: !433)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !857, file: !86, line: 394, baseType: !908, size: 64, offset: 576)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !796, !7, !7}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !857, file: !86, line: 395, baseType: !912, size: 64, offset: 640)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!165, !796, !819}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !857, file: !86, line: 396, baseType: !916, size: 64, offset: 704)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !796}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !857, file: !86, line: 397, baseType: !920, size: 64, offset: 768)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!321, !923, !962}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !86, line: 320, size: 384, elements: !925)
!925 = !{!926, !927, !928, !932, !933, !934, !937, !938}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !924, file: !86, line: 321, baseType: !368, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !924, file: !86, line: 326, baseType: !540, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !924, file: !86, line: 327, baseType: !929, size: 64, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !923, !325, !325}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !924, file: !86, line: 328, baseType: !181, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !924, file: !86, line: 329, baseType: !165, size: 32, offset: 256)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !924, file: !86, line: 330, baseType: !935, size: 16, offset: 288)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !173, line: 19, baseType: !936)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !175, line: 24, baseType: !332)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !924, file: !86, line: 331, baseType: !935, size: 16, offset: 304)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !86, line: 332, baseType: !939, size: 64, offset: 320)
!939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !924, file: !86, line: 332, size: 64, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !939, file: !86, line: 333, baseType: !7, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !939, file: !86, line: 334, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !885, line: 569, size: 448, elements: !945)
!945 = !{!946, !947, !948}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !944, file: !885, line: 570, baseType: !796, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !944, file: !885, line: 571, baseType: !165, size: 32, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !944, file: !885, line: 572, baseType: !949, size: 320, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !950, line: 14, baseType: !951)
!950 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !950, line: 29, size: 320, elements: !952)
!952 = !{!953, !954, !955, !961}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !951, file: !950, line: 30, baseType: !7, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !951, file: !950, line: 31, baseType: !181, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !951, file: !950, line: 32, baseType: !956, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !950, line: 16, baseType: !957)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!165, !960, !7, !165, !181}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !951, file: !950, line: 33, baseType: !236, size: 128, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !86, line: 64, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !857, file: !86, line: 402, baseType: !965, size: 64, offset: 832)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!165, !809, !796, !796, !11}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !857, file: !86, line: 404, baseType: !969, size: 64, offset: 896)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!212, !796, !972}
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !973, line: 305, baseType: !7)
!973 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!974 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !857, file: !86, line: 405, baseType: !916, size: 64, offset: 960)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !857, file: !86, line: 406, baseType: !872, size: 64, offset: 1024)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !857, file: !86, line: 407, baseType: !977, size: 64, offset: 1088)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!165, !796, !340, !340}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !857, file: !86, line: 409, baseType: !981, size: 64, offset: 1152)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{null, !796, !984, !984}
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !857, file: !86, line: 410, baseType: !986, size: 64, offset: 1216)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!165, !809, !796}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !857, file: !86, line: 413, baseType: !990, size: 64, offset: 1280)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!165, !993, !368, !1923}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !995, line: 240, size: 1600, elements: !996)
!995 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/lizy2001/genbc/linux")
!996 = !{!997, !998, !1000, !1007, !1009, !1010, !1012, !1019, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1032, !1038, !1039, !1915, !1916, !1917, !1918, !1919, !1920, !1921}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !994, file: !995, line: 241, baseType: !340, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !994, file: !995, line: 242, baseType: !999, size: 16, offset: 64)
!999 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !994, file: !995, line: 243, baseType: !1001, size: 320, offset: 128)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1002, line: 83, size: 320, elements: !1003)
!1002 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/lizy2001/genbc/linux")
!1003 = !{!1004, !1005, !1006}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1001, file: !1002, line: 84, baseType: !165, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1001, file: !1002, line: 85, baseType: !236, size: 128, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1001, file: !1002, line: 86, baseType: !236, size: 128, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !994, file: !995, line: 244, baseType: !1008, size: 8, offset: 448)
!1008 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !994, file: !995, line: 245, baseType: !7, size: 32, offset: 480)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !994, file: !995, line: 246, baseType: !1011, size: 64, offset: 512)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !994, file: !995, line: 247, baseType: !1013, size: 64, offset: 576)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !995, line: 208, size: 32, elements: !1015)
!1015 = !{!1016, !1017, !1018}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1014, file: !995, line: 209, baseType: !249)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1014, file: !995, line: 215, baseType: !7, size: 24, flags: DIFlagBitField, extraData: i64 0)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1014, file: !995, line: 216, baseType: !7, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !994, file: !995, line: 248, baseType: !1020, size: 64, offset: 640)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !995, line: 232, size: 64, elements: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1020, file: !995, line: 233, baseType: !1014, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1020, file: !995, line: 234, baseType: !1014, size: 32, offset: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !994, file: !995, line: 249, baseType: !7, size: 32, offset: 704)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !994, file: !995, line: 250, baseType: !7, size: 32, offset: 736)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !994, file: !995, line: 251, baseType: !7, size: 32, offset: 768)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !994, file: !995, line: 252, baseType: !7, size: 32, offset: 800)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !994, file: !995, line: 253, baseType: !7, size: 32, offset: 832)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !994, file: !995, line: 254, baseType: !7, size: 32, offset: 864)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !994, file: !995, line: 255, baseType: !1031, size: 64, offset: 896)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !994, file: !995, line: 256, baseType: !1033, size: 64, offset: 960)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !995, line: 227, size: 64, elements: !1035)
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1034, file: !995, line: 228, baseType: !1014, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1034, file: !995, line: 229, baseType: !7, size: 32, offset: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !994, file: !995, line: 257, baseType: !832, size: 64, offset: 1024)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !994, file: !995, line: 258, baseType: !1040, size: 64, offset: 1088)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !1042, line: 22, size: 1344, elements: !1043)
!1042 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/lizy2001/genbc/linux")
!1043 = !{!1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1121, !1122, !1123, !1912, !1913, !1914}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !1041, file: !1042, line: 23, baseType: !522, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !1041, file: !1042, line: 24, baseType: !165, size: 32, offset: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !1041, file: !1042, line: 25, baseType: !440, size: 64, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "bd_super", scope: !1041, file: !1042, line: 26, baseType: !608, size: 64, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "bd_mutex", scope: !1041, file: !1042, line: 27, baseType: !749, size: 192, offset: 192)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !1041, file: !1042, line: 28, baseType: !181, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !1041, file: !1042, line: 29, baseType: !181, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !1041, file: !1042, line: 30, baseType: !165, size: 32, offset: 512)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !1041, file: !1042, line: 31, baseType: !212, size: 8, offset: 544)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_disks", scope: !1041, file: !1042, line: 33, baseType: !236, size: 128, offset: 576)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "bd_contains", scope: !1041, file: !1042, line: 35, baseType: !1040, size: 64, offset: 704)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !1041, file: !1042, line: 36, baseType: !172, size: 8, offset: 768)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part", scope: !1041, file: !1042, line: 37, baseType: !1057, size: 64, offset: 832)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hd_struct", file: !1059, line: 53, size: 6592, elements: !1060)
!1059 = !DIFile(filename: "./include/linux/genhd.h", directory: "/home/lizy2001/genbc/linux")
!1060 = !{!1061, !1062, !1063, !1064, !1067, !1088, !1089, !1090, !1091, !1092, !1102}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "start_sect", scope: !1058, file: !1059, line: 54, baseType: !906, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sects", scope: !1058, file: !1059, line: 60, baseType: !906, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !1058, file: !1059, line: 64, baseType: !340, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "dkstats", scope: !1058, file: !1059, line: 65, baseType: !1065, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !1059, line: 65, flags: DIFlagFwdDecl)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1058, file: !1059, line: 66, baseType: !1068, size: 128, offset: 256)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1069, line: 105, size: 128, elements: !1070)
!1069 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1068, file: !1069, line: 110, baseType: !340, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1068, file: !1069, line: 118, baseType: !1073, size: 64, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1069, line: 95, size: 448, elements: !1075)
!1075 = !{!1076, !1077, !1083, !1084, !1085, !1086, !1087}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1074, file: !1069, line: 96, baseType: !753, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1074, file: !1069, line: 97, baseType: !1078, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1069, line: 60, baseType: !1080)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{null, !1082}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1074, file: !1069, line: 98, baseType: !1078, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1074, file: !1069, line: 99, baseType: !212, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1074, file: !1069, line: 100, baseType: !212, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1074, file: !1069, line: 101, baseType: !381, size: 128, align: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1074, file: !1069, line: 102, baseType: !1082, size: 64, offset: 384)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "__dev", scope: !1058, file: !1059, line: 68, baseType: !225, size: 5568, offset: 384)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "holder_dir", scope: !1058, file: !1059, line: 69, baseType: !242, size: 64, offset: 5952)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1058, file: !1059, line: 70, baseType: !165, size: 32, offset: 6016)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "partno", scope: !1058, file: !1059, line: 70, baseType: !165, size: 32, offset: 6048)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1058, file: !1059, line: 71, baseType: !1093, size: 64, offset: 6080)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !1059, line: 48, size: 808, elements: !1095)
!1095 = !{!1096, !1100}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !1094, file: !1059, line: 49, baseType: !1097, size: 296)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 296, elements: !1098)
!1098 = !{!1099}
!1099 = !DISubrange(count: 37)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !1094, file: !1059, line: 50, baseType: !1101, size: 512, offset: 296)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 512, elements: !295)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_work", scope: !1058, file: !1059, line: 75, baseType: !1103, size: 448, offset: 6144)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1104, line: 124, size: 448, elements: !1105)
!1104 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1105 = !{!1106, !1117, !1118}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1103, file: !1104, line: 125, baseType: !1107, size: 256)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1104, line: 102, size: 256, elements: !1108)
!1108 = !{!1109, !1110, !1111}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1107, file: !1104, line: 103, baseType: !753, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1107, file: !1104, line: 104, baseType: !236, size: 128, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1107, file: !1104, line: 105, baseType: !1112, size: 64, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1104, line: 21, baseType: !1113)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{null, !1116}
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1103, file: !1104, line: 126, baseType: !381, size: 128, align: 64, offset: 256)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1103, file: !1104, line: 129, baseType: !1119, size: 64, offset: 384)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1104, line: 18, flags: DIFlagFwdDecl)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part_count", scope: !1041, file: !1042, line: 39, baseType: !7, size: 32, offset: 896)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !1041, file: !1042, line: 41, baseType: !249, offset: 928)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !1041, file: !1042, line: 42, baseType: !1124, size: 64, offset: 960)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1059, line: 167, size: 8512, elements: !1126)
!1126 = !{!1127, !1128, !1129, !1130, !1134, !1135, !1136, !1147, !1148, !1338, !1893, !1894, !1895, !1896, !1897, !1898, !1901, !1902, !1905, !1906, !1907, !1910}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !1125, file: !1059, line: 171, baseType: !165, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !1125, file: !1059, line: 172, baseType: !165, size: 32, offset: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !1125, file: !1059, line: 173, baseType: !165, size: 32, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1125, file: !1059, line: 176, baseType: !1131, size: 256, offset: 96)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 256, elements: !1132)
!1132 = !{!1133}
!1133 = !DISubrange(count: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1125, file: !1059, line: 178, baseType: !332, size: 16, offset: 352)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !1125, file: !1059, line: 179, baseType: !332, size: 16, offset: 368)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !1125, file: !1059, line: 186, baseType: !1137, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "disk_part_tbl", file: !1059, line: 149, size: 256, elements: !1139)
!1139 = !{!1140, !1141, !1142, !1143}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1138, file: !1059, line: 150, baseType: !381, size: 128, align: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1138, file: !1059, line: 151, baseType: !165, size: 32, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "last_lookup", scope: !1138, file: !1059, line: 152, baseType: !1057, size: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1138, file: !1059, line: 153, baseType: !1144, offset: 256)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1057, elements: !1145)
!1145 = !{!1146}
!1146 = !DISubrange(count: -1)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !1125, file: !1059, line: 187, baseType: !1058, size: 6592, offset: 448)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !1125, file: !1059, line: 189, baseType: !1149, size: 64, offset: 7040)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1151)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !19, line: 1844, size: 960, elements: !1152)
!1152 = !{!1153, !1260, !1265, !1269, !1273, !1277, !1278, !1282, !1286, !1290, !1296, !1300, !1328, !1333, !1334}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !1151, file: !19, line: 1845, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !1042, line: 515, baseType: !7)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !1042, line: 203, size: 832, elements: !1160)
!1160 = !{!1161, !1162, !1163, !1164, !1165, !1166, !1167, !1169, !1170, !1171, !1179, !1184, !1185, !1210, !1211, !1212, !1213, !1214, !1259}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !1159, file: !1042, line: 204, baseType: !1158, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "bi_disk", scope: !1159, file: !1042, line: 205, baseType: !1124, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !1159, file: !1042, line: 206, baseType: !7, size: 32, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !1159, file: !1042, line: 210, baseType: !332, size: 16, offset: 160)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !1159, file: !1042, line: 211, baseType: !332, size: 16, offset: 176)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "bi_write_hint", scope: !1159, file: !1042, line: 212, baseType: !332, size: 16, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !1159, file: !1042, line: 213, baseType: !1168, size: 8, offset: 208)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !1042, line: 58, baseType: !172)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "bi_partno", scope: !1159, file: !1042, line: 214, baseType: !172, size: 8, offset: 216)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !1159, file: !1042, line: 215, baseType: !823, size: 32, offset: 224)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !1159, file: !1042, line: 217, baseType: !1172, size: 192, offset: 256)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1173, line: 37, size: 192, elements: !1174)
!1173 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/lizy2001/genbc/linux")
!1174 = !{!1175, !1176, !1177, !1178}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !1172, file: !1173, line: 38, baseType: !906, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !1172, file: !1173, line: 40, baseType: !7, size: 32, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !1172, file: !1173, line: 42, baseType: !7, size: 32, offset: 96)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !1172, file: !1173, line: 44, baseType: !7, size: 32, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !1159, file: !1042, line: 219, baseType: !1180, size: 64, offset: 448)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !1042, line: 19, baseType: !1182)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !1158}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !1159, file: !1042, line: 221, baseType: !181, size: 64, offset: 512)
!1185 = !DIDerivedType(tag: DW_TAG_member, scope: !1159, file: !1042, line: 240, baseType: !1186, size: 64, offset: 576)
!1186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1159, file: !1042, line: 240, size: 64, elements: !1187)
!1187 = !{!1188}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "bi_integrity", scope: !1186, file: !1042, line: 242, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_integrity_payload", file: !1191, line: 313, size: 832, elements: !1192)
!1191 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/lizy2001/genbc/linux")
!1192 = !{!1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1208}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "bip_bio", scope: !1190, file: !1191, line: 314, baseType: !1158, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "bip_iter", scope: !1190, file: !1191, line: 316, baseType: !1172, size: 192, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "bip_slab", scope: !1190, file: !1191, line: 318, baseType: !332, size: 16, offset: 256)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vcnt", scope: !1190, file: !1191, line: 319, baseType: !332, size: 16, offset: 272)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "bip_max_vcnt", scope: !1190, file: !1191, line: 320, baseType: !332, size: 16, offset: 288)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "bip_flags", scope: !1190, file: !1191, line: 321, baseType: !332, size: 16, offset: 304)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "bio_iter", scope: !1190, file: !1191, line: 323, baseType: !1172, size: 192, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "bip_work", scope: !1190, file: !1191, line: 325, baseType: !1107, size: 256, offset: 512)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vec", scope: !1190, file: !1191, line: 327, baseType: !1202, size: 64, offset: 768)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1173, line: 31, size: 128, elements: !1204)
!1204 = !{!1205, !1206, !1207}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1203, file: !1173, line: 32, baseType: !796, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1203, file: !1173, line: 33, baseType: !7, size: 32, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1203, file: !1173, line: 34, baseType: !7, size: 32, offset: 96)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "bip_inline_vecs", scope: !1190, file: !1191, line: 328, baseType: !1209, offset: 832)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1203, elements: !1145)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !1159, file: !1042, line: 246, baseType: !332, size: 16, offset: 640)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !1159, file: !1042, line: 252, baseType: !332, size: 16, offset: 656)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !1159, file: !1042, line: 254, baseType: !823, size: 32, offset: 672)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !1159, file: !1042, line: 256, baseType: !1202, size: 64, offset: 704)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !1159, file: !1042, line: 258, baseType: !1215, size: 64, offset: 768)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !1191, line: 682, size: 2368, elements: !1217)
!1217 = !{!1218, !1221, !1222, !1248, !1249, !1250, !1251, !1252, !1257, !1258}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !1216, file: !1191, line: 683, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !798, line: 117, flags: DIFlagFwdDecl)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !1216, file: !1191, line: 684, baseType: !7, size: 32, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !1216, file: !1191, line: 686, baseType: !1223, size: 448, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !1224, line: 26, baseType: !1225)
!1224 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/lizy2001/genbc/linux")
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !1224, line: 16, size: 448, elements: !1226)
!1226 = !{!1227, !1228, !1229, !1230, !1231, !1232, !1237, !1242}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1225, file: !1224, line: 17, baseType: !249)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !1225, file: !1224, line: 18, baseType: !165, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !1225, file: !1224, line: 19, baseType: !165, size: 32, offset: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1225, file: !1224, line: 20, baseType: !897, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !1225, file: !1224, line: 22, baseType: !181, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1225, file: !1224, line: 23, baseType: !1233, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !1224, line: 13, baseType: !1235)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!181, !819, !181}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1225, file: !1224, line: 24, baseType: !1238, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !1224, line: 14, baseType: !1240)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{null, !181, !181}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1225, file: !1224, line: 25, baseType: !1243, size: 128, offset: 320)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !950, line: 40, baseType: !1244)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !950, line: 36, size: 128, elements: !1245)
!1245 = !{!1246, !1247}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1244, file: !950, line: 37, baseType: !249)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1244, file: !950, line: 38, baseType: !236, size: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !1216, file: !1191, line: 687, baseType: !1223, size: 448, offset: 576)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "bio_integrity_pool", scope: !1216, file: !1191, line: 689, baseType: !1223, size: 448, offset: 1024)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_integrity_pool", scope: !1216, file: !1191, line: 690, baseType: !1223, size: 448, offset: 1472)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !1216, file: !1191, line: 697, baseType: !249, offset: 1920)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !1216, file: !1191, line: 698, baseType: !1253, size: 128, offset: 1920)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1191, line: 554, size: 128, elements: !1254)
!1254 = !{!1255, !1256}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1253, file: !1191, line: 555, baseType: !1158, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1253, file: !1191, line: 556, baseType: !1158, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !1216, file: !1191, line: 699, baseType: !1107, size: 256, offset: 2048)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !1216, file: !1191, line: 700, baseType: !1119, size: 64, offset: 2304)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !1159, file: !1042, line: 265, baseType: !1209, offset: 832)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1151, file: !19, line: 1846, baseType: !1261, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!165, !1040, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !213, line: 150, baseType: !7)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1151, file: !19, line: 1847, baseType: !1266, size: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{null, !1124, !1264}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "rw_page", scope: !1151, file: !19, line: 1848, baseType: !1270, size: 64, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!165, !1040, !906, !796, !7}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !1151, file: !19, line: 1849, baseType: !1274, size: 64, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!165, !1040, !1264, !7, !340}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1151, file: !19, line: 1850, baseType: !1274, size: 64, offset: 320)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !1151, file: !19, line: 1851, baseType: !1279, size: 64, offset: 384)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!7, !1124, !7}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !1151, file: !19, line: 1853, baseType: !1283, size: 64, offset: 448)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !1124}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "revalidate_disk", scope: !1151, file: !19, line: 1854, baseType: !1287, size: 64, offset: 512)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!165, !1124}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !1151, file: !19, line: 1855, baseType: !1291, size: 64, offset: 576)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!165, !1040, !1294}
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !86, line: 51, flags: DIFlagFwdDecl)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !1151, file: !19, line: 1857, baseType: !1297, size: 64, offset: 640)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{null, !1040, !340}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !1151, file: !19, line: 1858, baseType: !1301, size: 64, offset: 704)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!165, !1124, !906, !7, !1304, !181}
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !19, line: 354, baseType: !1305)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!165, !1308, !7, !181}
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !1310, line: 106, size: 512, elements: !1311)
!1310 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/lizy2001/genbc/linux")
!1311 = !{!1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1323, !1324}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1309, file: !1310, line: 107, baseType: !434, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1309, file: !1310, line: 108, baseType: !434, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !1309, file: !1310, line: 109, baseType: !434, size: 64, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1309, file: !1310, line: 110, baseType: !174, size: 8, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1309, file: !1310, line: 111, baseType: !174, size: 8, offset: 200)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !1309, file: !1310, line: 112, baseType: !174, size: 8, offset: 208)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !1309, file: !1310, line: 113, baseType: !174, size: 8, offset: 216)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !1309, file: !1310, line: 114, baseType: !1320, size: 32, offset: 224)
!1320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 32, elements: !1321)
!1321 = !{!1322}
!1322 = !DISubrange(count: 4)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1309, file: !1310, line: 115, baseType: !434, size: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1309, file: !1310, line: 116, baseType: !1325, size: 192, offset: 320)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 192, elements: !1326)
!1326 = !{!1327}
!1327 = !DISubrange(count: 24)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1151, file: !19, line: 1860, baseType: !1329, size: 64, offset: 768)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!290, !1124, !1332}
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1151, file: !19, line: 1861, baseType: !642, size: 64, offset: 832)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !1151, file: !19, line: 1862, baseType: !1335, size: 64, offset: 896)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1337)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !19, line: 41, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1125, file: !1059, line: 190, baseType: !1339, size: 64, offset: 7104)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !19, line: 399, size: 14464, elements: !1341)
!1341 = !{!1342, !1478, !1600, !1601, !1604, !1607, !1611, !1612, !1613, !1615, !1616, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1754, !1765, !1766, !1767, !1768, !1769, !1799, !1800, !1801, !1802, !1803, !1804, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1878, !1879, !1880, !1881, !1884, !1885, !1886, !1887, !1888, !1889}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !1340, file: !19, line: 400, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !19, line: 130, size: 2176, elements: !1345)
!1345 = !{!1346, !1347, !1350, !1353, !1354, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1368, !1375, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1441, !1442, !1443, !1476, !1477}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1344, file: !19, line: 131, baseType: !1339, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !1344, file: !19, line: 132, baseType: !1348, size: 64, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !19, line: 132, flags: DIFlagFwdDecl)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !1344, file: !19, line: 133, baseType: !1351, size: 64, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !19, line: 133, flags: DIFlagFwdDecl)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1344, file: !19, line: 135, baseType: !7, size: 32, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !1344, file: !19, line: 136, baseType: !1355, size: 32, offset: 224)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !19, line: 66, baseType: !180)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1344, file: !19, line: 138, baseType: !165, size: 32, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !1344, file: !19, line: 139, baseType: !165, size: 32, offset: 288)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !1344, file: !19, line: 142, baseType: !7, size: 32, offset: 320)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !1344, file: !19, line: 143, baseType: !906, size: 64, offset: 384)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !1344, file: !19, line: 145, baseType: !1158, size: 64, offset: 448)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !1344, file: !19, line: 146, baseType: !1158, size: 64, offset: 512)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !1344, file: !19, line: 148, baseType: !236, size: 128, offset: 576)
!1363 = !DIDerivedType(tag: DW_TAG_member, scope: !1344, file: !19, line: 157, baseType: !1364, size: 128, offset: 704)
!1364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1344, file: !19, line: 157, size: 128, elements: !1365)
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1364, file: !19, line: 158, baseType: !651, size: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !1364, file: !19, line: 159, baseType: !236, size: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, scope: !1344, file: !19, line: 167, baseType: !1369, size: 192, offset: 832)
!1369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1344, file: !19, line: 167, size: 192, elements: !1370)
!1370 = !{!1371, !1372, !1373, !1374}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1369, file: !19, line: 168, baseType: !836, size: 192, align: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !1369, file: !19, line: 169, baseType: !1203, size: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "completion_data", scope: !1369, file: !19, line: 170, baseType: !181, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !1369, file: !19, line: 171, baseType: !165, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, scope: !1344, file: !19, line: 180, baseType: !1376, size: 256, offset: 1024)
!1376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1344, file: !19, line: 180, size: 256, elements: !1377)
!1377 = !{!1378, !1415}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !1376, file: !19, line: 184, baseType: !1379, size: 192)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1376, file: !19, line: 181, size: 192, elements: !1380)
!1380 = !{!1381, !1411}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !1379, file: !19, line: 182, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1384, line: 73, size: 448, elements: !1385)
!1384 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1385 = !{!1386, !1387, !1400, !1405, !1410}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1383, file: !1384, line: 74, baseType: !1339, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1383, file: !1384, line: 75, baseType: !1388, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1384, line: 99, size: 704, elements: !1390)
!1390 = !{!1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1389, file: !1384, line: 100, baseType: !753, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1389, file: !1384, line: 101, baseType: !823, size: 32, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1389, file: !1384, line: 102, baseType: !823, size: 32, offset: 96)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1389, file: !1384, line: 105, baseType: !249, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1389, file: !1384, line: 107, baseType: !332, size: 16, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1389, file: !1384, line: 109, baseType: !814, size: 128, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1389, file: !1384, line: 110, baseType: !1382, size: 64, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1389, file: !1384, line: 111, baseType: !647, size: 64, offset: 384)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1389, file: !1384, line: 113, baseType: !1107, size: 256, offset: 448)
!1400 = !DIDerivedType(tag: DW_TAG_member, scope: !1383, file: !1384, line: 83, baseType: !1401, size: 128, offset: 128)
!1401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1383, file: !1384, line: 83, size: 128, elements: !1402)
!1402 = !{!1403, !1404}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1401, file: !1384, line: 84, baseType: !236, size: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1401, file: !1384, line: 85, baseType: !1219, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, scope: !1383, file: !1384, line: 87, baseType: !1406, size: 128, offset: 256)
!1406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1383, file: !1384, line: 87, size: 128, elements: !1407)
!1407 = !{!1408, !1409}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1406, file: !1384, line: 88, baseType: !651, size: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1406, file: !1384, line: 89, baseType: !381, size: 128, align: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1383, file: !1384, line: 92, baseType: !7, size: 32, offset: 384)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1379, file: !19, line: 183, baseType: !1412, size: 128, offset: 64)
!1412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 128, elements: !1413)
!1413 = !{!1414}
!1414 = !DISubrange(count: 2)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1376, file: !19, line: 190, baseType: !1416, size: 256)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1376, file: !19, line: 186, size: 256, elements: !1417)
!1417 = !{!1418, !1419, !1420}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1416, file: !19, line: 187, baseType: !7, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1416, file: !19, line: 188, baseType: !236, size: 128, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !1416, file: !19, line: 189, baseType: !1421, size: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !19, line: 62, baseType: !1423)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{null, !1343, !1168}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "rq_disk", scope: !1344, file: !19, line: 193, baseType: !1124, size: 64, offset: 1280)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1344, file: !19, line: 194, baseType: !1057, size: 64, offset: 1344)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !1344, file: !19, line: 200, baseType: !433, size: 64, offset: 1408)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !1344, file: !19, line: 202, baseType: !433, size: 64, offset: 1472)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !1344, file: !19, line: 212, baseType: !332, size: 16, offset: 1536)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !1344, file: !19, line: 218, baseType: !332, size: 16, offset: 1552)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "nr_integrity_segments", scope: !1344, file: !19, line: 221, baseType: !332, size: 16, offset: 1568)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "write_hint", scope: !1344, file: !19, line: 229, baseType: !332, size: 16, offset: 1584)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1344, file: !19, line: 230, baseType: !332, size: 16, offset: 1600)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1344, file: !19, line: 232, baseType: !18, size: 32, offset: 1632)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1344, file: !19, line: 233, baseType: !1436, size: 32, offset: 1664)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1437, line: 113, baseType: !1438)
!1437 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1437, line: 111, size: 32, elements: !1439)
!1439 = !{!1440}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1438, file: !1437, line: 112, baseType: !823, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1344, file: !19, line: 235, baseType: !7, size: 32, offset: 1696)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1344, file: !19, line: 236, baseType: !340, size: 64, offset: 1728)
!1443 = !DIDerivedType(tag: DW_TAG_member, scope: !1344, file: !19, line: 238, baseType: !1444, size: 256, offset: 1792)
!1444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1344, file: !19, line: 238, size: 256, elements: !1445)
!1445 = !{!1446, !1475}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "csd", scope: !1444, file: !19, line: 239, baseType: !1447, size: 256)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_data", file: !1448, line: 23, size: 256, elements: !1449)
!1448 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/lizy2001/genbc/linux")
!1449 = !{!1450, !1472, !1474}
!1450 = !DIDerivedType(tag: DW_TAG_member, scope: !1447, file: !1448, line: 24, baseType: !1451, size: 128)
!1451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1447, file: !1448, line: 24, size: 128, elements: !1452)
!1452 = !{!1453, !1465}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1451, file: !1448, line: 25, baseType: !1454, size: 128)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1455, line: 58, size: 128, elements: !1456)
!1455 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/lizy2001/genbc/linux")
!1456 = !{!1457, !1458, !1463, !1464}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1454, file: !1455, line: 59, baseType: !375, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !1455, line: 60, baseType: !1459, size: 32, offset: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !1455, line: 60, size: 32, elements: !1460)
!1460 = !{!1461, !1462}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1459, file: !1455, line: 61, baseType: !7, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1459, file: !1455, line: 62, baseType: !823, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1454, file: !1455, line: 65, baseType: !935, size: 16, offset: 96)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1454, file: !1455, line: 65, baseType: !935, size: 16, offset: 112)
!1465 = !DIDerivedType(tag: DW_TAG_member, scope: !1451, file: !1448, line: 26, baseType: !1466, size: 128)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1451, file: !1448, line: 26, size: 128, elements: !1467)
!1467 = !{!1468, !1469, !1470, !1471}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1466, file: !1448, line: 27, baseType: !375, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1466, file: !1448, line: 28, baseType: !7, size: 32, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1466, file: !1448, line: 30, baseType: !935, size: 16, offset: 96)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1466, file: !1448, line: 30, baseType: !935, size: 16, offset: 112)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1447, file: !1448, line: 34, baseType: !1473, size: 64, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !1448, line: 17, baseType: !479)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1447, file: !1448, line: 35, baseType: !181, size: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !1444, file: !19, line: 240, baseType: !433, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !1344, file: !19, line: 246, baseType: !1421, size: 64, offset: 2048)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !1344, file: !19, line: 247, baseType: !181, size: 64, offset: 2112)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !1340, file: !19, line: 401, baseType: !1479, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !25, line: 101, size: 4992, elements: !1481)
!1481 = !{!1482, !1594, !1595, !1596, !1597, !1598}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1480, file: !25, line: 103, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_type", file: !25, line: 66, size: 2240, elements: !1485)
!1485 = !{!1486, !1487, !1569, !1570, !1571, !1584, !1585, !1586, !1588, !1589, !1593}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache", scope: !1484, file: !25, line: 69, baseType: !1219, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1484, file: !25, line: 72, baseType: !1488, size: 1408, offset: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_mq_ops", file: !25, line: 29, size: 1408, elements: !1489)
!1489 = !{!1490, !1494, !1498, !1502, !1506, !1510, !1514, !1518, !1523, !1527, !1531, !1537, !1541, !1542, !1546, !1550, !1554, !1558, !1559, !1563, !1564, !1568}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "init_sched", scope: !1488, file: !25, line: 30, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!165, !1339, !1483}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "exit_sched", scope: !1488, file: !25, line: 31, baseType: !1495, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{null, !1479}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !1488, file: !25, line: 32, baseType: !1499, size: 64, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!165, !1351, !7}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !1488, file: !25, line: 33, baseType: !1503, size: 64, offset: 192)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{null, !1351, !7}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "depth_updated", scope: !1488, file: !25, line: 34, baseType: !1507, size: 64, offset: 256)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{null, !1351}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "allow_merge", scope: !1488, file: !25, line: 36, baseType: !1511, size: 64, offset: 320)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!212, !1339, !1343, !1158}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "bio_merge", scope: !1488, file: !25, line: 37, baseType: !1515, size: 64, offset: 384)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!212, !1351, !1158, !7}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "request_merge", scope: !1488, file: !25, line: 38, baseType: !1519, size: 64, offset: 448)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!165, !1339, !1522, !1158}
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "request_merged", scope: !1488, file: !25, line: 39, baseType: !1524, size: 64, offset: 512)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{null, !1339, !1343, !24}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "requests_merged", scope: !1488, file: !25, line: 40, baseType: !1528, size: 64, offset: 576)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{null, !1339, !1343, !1343}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "limit_depth", scope: !1488, file: !25, line: 41, baseType: !1532, size: 64, offset: 640)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{null, !7, !1535}
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_alloc_data", file: !25, line: 26, flags: DIFlagFwdDecl)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_request", scope: !1488, file: !25, line: 42, baseType: !1538, size: 64, offset: 704)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !1343}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "finish_request", scope: !1488, file: !25, line: 43, baseType: !1538, size: 64, offset: 768)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "insert_requests", scope: !1488, file: !25, line: 44, baseType: !1543, size: 64, offset: 832)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{null, !1351, !239, !212}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_request", scope: !1488, file: !25, line: 45, baseType: !1547, size: 64, offset: 896)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!1343, !1351}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "has_work", scope: !1488, file: !25, line: 46, baseType: !1551, size: 64, offset: 960)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!212, !1351}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "completed_request", scope: !1488, file: !25, line: 47, baseType: !1555, size: 64, offset: 1024)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{null, !1343, !433}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_request", scope: !1488, file: !25, line: 48, baseType: !1538, size: 64, offset: 1088)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "former_request", scope: !1488, file: !25, line: 49, baseType: !1560, size: 64, offset: 1152)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!1343, !1339, !1343}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "next_request", scope: !1488, file: !25, line: 50, baseType: !1560, size: 64, offset: 1216)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "init_icq", scope: !1488, file: !25, line: 51, baseType: !1565, size: 64, offset: 1280)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{null, !1382}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "exit_icq", scope: !1488, file: !25, line: 52, baseType: !1565, size: 64, offset: 1344)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "icq_size", scope: !1484, file: !25, line: 74, baseType: !337, size: 64, offset: 1472)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "icq_align", scope: !1484, file: !25, line: 75, baseType: !337, size: 64, offset: 1536)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_attrs", scope: !1484, file: !25, line: 76, baseType: !1572, size: 64, offset: 1600)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elv_fs_entry", file: !25, line: 57, size: 256, elements: !1574)
!1574 = !{!1575, !1576, !1580}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1573, file: !25, line: 58, baseType: !327, size: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1573, file: !25, line: 59, baseType: !1577, size: 64, offset: 128)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!321, !1479, !290}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1573, file: !25, line: 60, baseType: !1581, size: 64, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!321, !1479, !232, !337}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_name", scope: !1484, file: !25, line: 77, baseType: !232, size: 64, offset: 1664)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_alias", scope: !1484, file: !25, line: 78, baseType: !232, size: 64, offset: 1728)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_features", scope: !1484, file: !25, line: 79, baseType: !1587, size: 32, offset: 1792)
!1587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_owner", scope: !1484, file: !25, line: 80, baseType: !642, size: 64, offset: 1856)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache_name", scope: !1484, file: !25, line: 87, baseType: !1590, size: 176, offset: 1920)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 176, elements: !1591)
!1591 = !{!1592}
!1592 = !DISubrange(count: 22)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1484, file: !25, line: 88, baseType: !236, size: 128, offset: 2112)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_data", scope: !1480, file: !25, line: 104, baseType: !181, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1480, file: !25, line: 105, baseType: !228, size: 512, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !1480, file: !25, line: 106, baseType: !749, size: 192, offset: 640)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !1480, file: !25, line: 107, baseType: !7, size: 1, offset: 832, flags: DIFlagBitField, extraData: i64 832)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1480, file: !25, line: 108, baseType: !1599, size: 4096, offset: 896)
!1599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 4096, elements: !295)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !1340, file: !19, line: 403, baseType: !1068, size: 128, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1340, file: !19, line: 405, baseType: !1602, size: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !19, line: 43, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !1340, file: !19, line: 406, baseType: !1605, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !19, line: 42, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !1340, file: !19, line: 408, baseType: !1608, size: 64, offset: 384)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1610)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !19, line: 408, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !1340, file: !19, line: 411, baseType: !1348, size: 64, offset: 448)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !1340, file: !19, line: 413, baseType: !7, size: 32, offset: 512)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "queue_hw_ctx", scope: !1340, file: !19, line: 416, baseType: !1614, size: 64, offset: 576)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !1340, file: !19, line: 417, baseType: !7, size: 32, offset: 640)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1340, file: !19, line: 419, baseType: !1617, size: 64, offset: 704)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !32, line: 165, size: 4672, elements: !1619)
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1625, !1630, !1631, !1632, !1633, !1634, !1635, !1691, !1692, !1693, !1695, !1697, !1698}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1618, file: !32, line: 166, baseType: !433, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1618, file: !32, line: 167, baseType: !836, size: 192, align: 64, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !1618, file: !32, line: 168, baseType: !236, size: 128, offset: 256)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1618, file: !32, line: 169, baseType: !340, size: 64, offset: 384)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !1618, file: !32, line: 170, baseType: !340, size: 64, offset: 448)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1618, file: !32, line: 172, baseType: !1626, size: 32, offset: 512)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1627, line: 19, size: 32, elements: !1628)
!1627 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1628 = !{!1629}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1626, file: !1627, line: 20, baseType: !1436, size: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !1618, file: !32, line: 173, baseType: !7, size: 32, offset: 544)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !1618, file: !32, line: 174, baseType: !7, size: 32, offset: 576)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !1618, file: !32, line: 175, baseType: !7, size: 32, offset: 608)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !1618, file: !32, line: 175, baseType: !7, size: 32, offset: 640)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !1618, file: !32, line: 181, baseType: !753, size: 64, offset: 704)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !1618, file: !32, line: 183, baseType: !1636, size: 2688, offset: 768)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !32, line: 107, size: 2688, elements: !1637)
!1637 = !{!1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1667, !1668, !1669, !1670, !1671, !1689, !1690}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !1636, file: !32, line: 108, baseType: !1617, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1636, file: !32, line: 110, baseType: !340, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !1636, file: !32, line: 111, baseType: !340, size: 64, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !1636, file: !32, line: 113, baseType: !236, size: 128, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !1636, file: !32, line: 114, baseType: !236, size: 128, offset: 320)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !1636, file: !32, line: 115, baseType: !236, size: 128, offset: 448)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !1636, file: !32, line: 116, baseType: !236, size: 128, offset: 576)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1636, file: !32, line: 117, baseType: !249, offset: 704)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !1636, file: !32, line: 119, baseType: !1647, size: 256, offset: 704)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1648, size: 256, elements: !1321)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1649, line: 97, size: 64, elements: !1650)
!1649 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/lizy2001/genbc/linux")
!1650 = !{!1651}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1648, file: !1649, line: 98, baseType: !759, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "congested", scope: !1636, file: !32, line: 121, baseType: !340, size: 64, offset: 960)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !1636, file: !32, line: 123, baseType: !340, size: 64, offset: 1024)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !1636, file: !32, line: 124, baseType: !340, size: 64, offset: 1088)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !1636, file: !32, line: 125, baseType: !340, size: 64, offset: 1152)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !1636, file: !32, line: 126, baseType: !340, size: 64, offset: 1216)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !1636, file: !32, line: 127, baseType: !340, size: 64, offset: 1280)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !1636, file: !32, line: 135, baseType: !340, size: 64, offset: 1344)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !1636, file: !32, line: 136, baseType: !340, size: 64, offset: 1408)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !1636, file: !32, line: 138, baseType: !1661, size: 128, offset: 1472)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !1662, line: 76, size: 128, elements: !1663)
!1662 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/lizy2001/genbc/linux")
!1663 = !{!1664, !1665, !1666}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1661, file: !1662, line: 78, baseType: !1648, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !1661, file: !1662, line: 80, baseType: !7, size: 32, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1661, file: !1662, line: 81, baseType: !849, offset: 96)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !1636, file: !32, line: 139, baseType: !165, size: 32, offset: 1600)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !1636, file: !32, line: 140, baseType: !31, size: 32, offset: 1632)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !1636, file: !32, line: 142, baseType: !249, offset: 1664)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !1636, file: !32, line: 143, baseType: !236, size: 128, offset: 1664)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !1636, file: !32, line: 144, baseType: !1672, size: 704, offset: 1792)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1104, line: 115, size: 704, elements: !1673)
!1673 = !{!1674, !1675, !1687, !1688}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1672, file: !1104, line: 116, baseType: !1107, size: 256)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1672, file: !1104, line: 117, baseType: !1676, size: 320, offset: 256)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1677, line: 11, size: 320, elements: !1678)
!1677 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1678 = !{!1679, !1680, !1681, !1686}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1676, file: !1677, line: 16, baseType: !651, size: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1676, file: !1677, line: 17, baseType: !340, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1676, file: !1677, line: 18, baseType: !1682, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !1685}
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1676, file: !1677, line: 19, baseType: !179, size: 32, offset: 256)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1672, file: !1104, line: 120, baseType: !1119, size: 64, offset: 576)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1672, file: !1104, line: 121, baseType: !165, size: 32, offset: 640)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_sleep", scope: !1636, file: !32, line: 146, baseType: !340, size: 64, offset: 2496)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !1636, file: !32, line: 148, baseType: !236, size: 128, offset: 2560)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !1618, file: !32, line: 184, baseType: !236, size: 128, offset: 3456)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !1618, file: !32, line: 190, baseType: !1243, size: 128, offset: 3584)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1618, file: !32, line: 192, baseType: !1694, size: 64, offset: 3712)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1618, file: !32, line: 193, baseType: !1696, size: 512, offset: 3776)
!1696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 512, elements: !295)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1618, file: !32, line: 194, baseType: !1694, size: 64, offset: 4288)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !1618, file: !32, line: 196, baseType: !1676, size: 320, offset: 4352)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !1340, file: !19, line: 425, baseType: !181, size: 64, offset: 768)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !1340, file: !19, line: 430, baseType: !340, size: 64, offset: 832)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !1340, file: !19, line: 436, baseType: !823, size: 32, offset: 896)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1340, file: !19, line: 442, baseType: !165, size: 32, offset: 928)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_gfp", scope: !1340, file: !19, line: 447, baseType: !819, size: 32, offset: 960)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !1340, file: !19, line: 449, baseType: !249, offset: 992)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1340, file: !19, line: 454, baseType: !228, size: 512, offset: 1024)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !1340, file: !19, line: 459, baseType: !242, size: 64, offset: 1536)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "integrity", scope: !1340, file: !19, line: 462, baseType: !1708, size: 128, offset: 1600)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity", file: !1059, line: 159, size: 128, elements: !1709)
!1709 = !{!1710, !1739, !1740, !1741, !1742}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !1708, file: !1059, line: 160, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1713)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_profile", file: !19, line: 1664, size: 320, elements: !1714)
!1714 = !{!1715, !1729, !1730, !1733, !1738}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "generate_fn", scope: !1713, file: !19, line: 1665, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_processing_fn", file: !19, line: 1660, baseType: !1718)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!1168, !1720}
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_iter", file: !19, line: 1651, size: 320, elements: !1722)
!1722 = !{!1723, !1724, !1725, !1726, !1727, !1728}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "prot_buf", scope: !1721, file: !19, line: 1652, baseType: !181, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "data_buf", scope: !1721, file: !19, line: 1653, baseType: !181, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !1721, file: !19, line: 1654, baseType: !906, size: 64, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !1721, file: !19, line: 1655, baseType: !7, size: 32, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1721, file: !19, line: 1656, baseType: !332, size: 16, offset: 224)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1721, file: !19, line: 1657, baseType: !232, size: 64, offset: 256)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "verify_fn", scope: !1713, file: !19, line: 1666, baseType: !1716, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_fn", scope: !1713, file: !19, line: 1667, baseType: !1731, size: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_prepare_fn", file: !19, line: 1661, baseType: !1539)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "complete_fn", scope: !1713, file: !19, line: 1668, baseType: !1734, size: 64, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_complete_fn", file: !19, line: 1662, baseType: !1736)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{null, !1343, !7}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1713, file: !19, line: 1669, baseType: !232, size: 64, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1708, file: !1059, line: 161, baseType: !176, size: 8, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "tuple_size", scope: !1708, file: !1059, line: 162, baseType: !176, size: 8, offset: 72)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "interval_exp", scope: !1708, file: !1059, line: 163, baseType: !176, size: 8, offset: 80)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "tag_size", scope: !1708, file: !1059, line: 164, baseType: !176, size: 8, offset: 88)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1340, file: !19, line: 466, baseType: !1694, size: 64, offset: 1728)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !1340, file: !19, line: 467, baseType: !43, size: 32, offset: 1792)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !1340, file: !19, line: 468, baseType: !7, size: 32, offset: 1824)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !1340, file: !19, line: 474, baseType: !340, size: 64, offset: 1856)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !1340, file: !19, line: 476, baseType: !7, size: 32, offset: 1920)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !1340, file: !19, line: 477, baseType: !7, size: 32, offset: 1952)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !1340, file: !19, line: 484, baseType: !7, size: 32, offset: 1984)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "poll_nsec", scope: !1340, file: !19, line: 485, baseType: !165, size: 32, offset: 2016)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "poll_cb", scope: !1340, file: !19, line: 487, baseType: !1752, size: 64, offset: 2048)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_stat_callback", file: !19, line: 44, flags: DIFlagFwdDecl)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "poll_stat", scope: !1340, file: !19, line: 488, baseType: !1755, size: 5120, offset: 2112)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1756, size: 5120, elements: !1763)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_rq_stat", file: !1042, line: 540, size: 320, elements: !1757)
!1757 = !{!1758, !1759, !1760, !1761, !1762}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "mean", scope: !1756, file: !1042, line: 541, baseType: !433, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !1756, file: !1042, line: 542, baseType: !433, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1756, file: !1042, line: 543, baseType: !433, size: 64, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "nr_samples", scope: !1756, file: !1042, line: 544, baseType: !179, size: 32, offset: 192)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1756, file: !1042, line: 545, baseType: !433, size: 64, offset: 256)
!1763 = !{!1764}
!1764 = !DISubrange(count: 16)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1340, file: !19, line: 490, baseType: !1676, size: 320, offset: 7232)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !1340, file: !19, line: 491, baseType: !1107, size: 256, offset: 7552)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_sbitmap", scope: !1340, file: !19, line: 493, baseType: !823, size: 32, offset: 7808)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1340, file: !19, line: 495, baseType: !236, size: 128, offset: 7872)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !1340, file: !19, line: 502, baseType: !1770, size: 896, offset: 8000)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !19, line: 321, size: 896, elements: !1771)
!1771 = !{!1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_pfn", scope: !1770, file: !19, line: 322, baseType: !340, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !1770, file: !19, line: 323, baseType: !340, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !1770, file: !19, line: 324, baseType: !340, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !1770, file: !19, line: 326, baseType: !7, size: 32, offset: 192)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !1770, file: !19, line: 327, baseType: !7, size: 32, offset: 224)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !1770, file: !19, line: 328, baseType: !7, size: 32, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !1770, file: !19, line: 329, baseType: !7, size: 32, offset: 288)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1770, file: !19, line: 330, baseType: !7, size: 32, offset: 320)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !1770, file: !19, line: 331, baseType: !7, size: 32, offset: 352)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !1770, file: !19, line: 332, baseType: !7, size: 32, offset: 384)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !1770, file: !19, line: 333, baseType: !7, size: 32, offset: 416)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !1770, file: !19, line: 334, baseType: !7, size: 32, offset: 448)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !1770, file: !19, line: 335, baseType: !7, size: 32, offset: 480)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !1770, file: !19, line: 336, baseType: !7, size: 32, offset: 512)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !1770, file: !19, line: 337, baseType: !7, size: 32, offset: 544)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_same_sectors", scope: !1770, file: !19, line: 338, baseType: !7, size: 32, offset: 576)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !1770, file: !19, line: 339, baseType: !7, size: 32, offset: 608)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !1770, file: !19, line: 340, baseType: !7, size: 32, offset: 640)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !1770, file: !19, line: 341, baseType: !7, size: 32, offset: 672)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !1770, file: !19, line: 342, baseType: !7, size: 32, offset: 704)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !1770, file: !19, line: 344, baseType: !332, size: 16, offset: 736)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !1770, file: !19, line: 345, baseType: !332, size: 16, offset: 752)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !1770, file: !19, line: 346, baseType: !332, size: 16, offset: 768)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !1770, file: !19, line: 348, baseType: !176, size: 8, offset: 784)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !1770, file: !19, line: 349, baseType: !176, size: 8, offset: 792)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !1770, file: !19, line: 350, baseType: !176, size: 8, offset: 800)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !1770, file: !19, line: 351, baseType: !50, size: 32, offset: 832)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !1340, file: !19, line: 504, baseType: !7, size: 32, offset: 8896)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "sg_timeout", scope: !1340, file: !19, line: 534, baseType: !7, size: 32, offset: 8928)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "sg_reserved_size", scope: !1340, file: !19, line: 535, baseType: !7, size: 32, offset: 8960)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1340, file: !19, line: 536, baseType: !165, size: 32, offset: 8992)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !1340, file: !19, line: 537, baseType: !749, size: 192, offset: 9024)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !1340, file: !19, line: 544, baseType: !1805, size: 64, offset: 9216)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !19, line: 40, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !1340, file: !19, line: 546, baseType: !236, size: 128, offset: 9280)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !1340, file: !19, line: 547, baseType: !249, offset: 9408)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !1340, file: !19, line: 548, baseType: !1672, size: 704, offset: 9408)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !1340, file: !19, line: 550, baseType: !749, size: 192, offset: 10112)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !1340, file: !19, line: 551, baseType: !749, size: 192, offset: 10304)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !1340, file: !19, line: 557, baseType: !236, size: 128, offset: 10496)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !1340, file: !19, line: 558, baseType: !249, offset: 10624)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !1340, file: !19, line: 560, baseType: !165, size: 32, offset: 10624)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "bsg_dev", scope: !1340, file: !19, line: 563, baseType: !1816, size: 256, offset: 10688)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_class_device", file: !1817, line: 18, size: 256, elements: !1818)
!1817 = !DIFile(filename: "./include/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!1818 = !{!1819, !1820, !1821, !1822}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !1816, file: !1817, line: 19, baseType: !1694, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !1816, file: !1817, line: 20, baseType: !165, size: 32, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1816, file: !1817, line: 21, baseType: !1339, size: 64, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1816, file: !1817, line: 22, baseType: !1823, size: 64, offset: 192)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1825)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_ops", file: !1817, line: 10, size: 256, elements: !1826)
!1826 = !{!1827, !1869, !1873, !1877}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "check_proto", scope: !1825, file: !1817, line: 11, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!165, !1831}
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_io_v4", file: !1833, line: 22, size: 1280, elements: !1834)
!1833 = !DIFile(filename: "./include/uapi/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!1834 = !{!1835, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "guard", scope: !1832, file: !1833, line: 23, baseType: !1836, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !175, line: 26, baseType: !165)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !1832, file: !1833, line: 24, baseType: !180, size: 32, offset: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "subprotocol", scope: !1832, file: !1833, line: 25, baseType: !180, size: 32, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "request_len", scope: !1832, file: !1833, line: 28, baseType: !180, size: 32, offset: 96)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1832, file: !1833, line: 29, baseType: !434, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "request_tag", scope: !1832, file: !1833, line: 30, baseType: !434, size: 64, offset: 192)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "request_attr", scope: !1832, file: !1833, line: 31, baseType: !180, size: 32, offset: 256)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "request_priority", scope: !1832, file: !1833, line: 32, baseType: !180, size: 32, offset: 288)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "request_extra", scope: !1832, file: !1833, line: 33, baseType: !180, size: 32, offset: 320)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "max_response_len", scope: !1832, file: !1833, line: 34, baseType: !180, size: 32, offset: 352)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !1832, file: !1833, line: 35, baseType: !434, size: 64, offset: 384)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "dout_iovec_count", scope: !1832, file: !1833, line: 38, baseType: !180, size: 32, offset: 448)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xfer_len", scope: !1832, file: !1833, line: 40, baseType: !180, size: 32, offset: 480)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "din_iovec_count", scope: !1832, file: !1833, line: 41, baseType: !180, size: 32, offset: 512)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "din_xfer_len", scope: !1832, file: !1833, line: 42, baseType: !180, size: 32, offset: 544)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xferp", scope: !1832, file: !1833, line: 43, baseType: !434, size: 64, offset: 576)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "din_xferp", scope: !1832, file: !1833, line: 44, baseType: !434, size: 64, offset: 640)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1832, file: !1833, line: 46, baseType: !180, size: 32, offset: 704)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1832, file: !1833, line: 47, baseType: !180, size: 32, offset: 736)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "usr_ptr", scope: !1832, file: !1833, line: 48, baseType: !434, size: 64, offset: 768)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "spare_in", scope: !1832, file: !1833, line: 49, baseType: !180, size: 32, offset: 832)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "driver_status", scope: !1832, file: !1833, line: 51, baseType: !180, size: 32, offset: 864)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "transport_status", scope: !1832, file: !1833, line: 52, baseType: !180, size: 32, offset: 896)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "device_status", scope: !1832, file: !1833, line: 53, baseType: !180, size: 32, offset: 928)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "retry_delay", scope: !1832, file: !1833, line: 54, baseType: !180, size: 32, offset: 960)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1832, file: !1833, line: 55, baseType: !180, size: 32, offset: 992)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !1832, file: !1833, line: 56, baseType: !180, size: 32, offset: 1024)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "response_len", scope: !1832, file: !1833, line: 57, baseType: !180, size: 32, offset: 1056)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "din_resid", scope: !1832, file: !1833, line: 58, baseType: !1836, size: 32, offset: 1088)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "dout_resid", scope: !1832, file: !1833, line: 59, baseType: !1836, size: 32, offset: 1120)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "generated_tag", scope: !1832, file: !1833, line: 60, baseType: !434, size: 64, offset: 1152)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "spare_out", scope: !1832, file: !1833, line: 61, baseType: !180, size: 32, offset: 1216)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1832, file: !1833, line: 63, baseType: !180, size: 32, offset: 1248)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "fill_hdr", scope: !1825, file: !1817, line: 12, baseType: !1870, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!165, !1343, !1831, !1264}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "complete_rq", scope: !1825, file: !1817, line: 14, baseType: !1874, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!165, !1343, !1831}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "free_rq", scope: !1825, file: !1817, line: 15, baseType: !1538, size: 64, offset: 192)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1340, file: !19, line: 570, baseType: !381, size: 128, align: 64, offset: 10944)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !1340, file: !19, line: 571, baseType: !1243, size: 128, offset: 11072)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !1340, file: !19, line: 576, baseType: !749, size: 192, offset: 11200)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !1340, file: !19, line: 578, baseType: !1882, size: 64, offset: 11392)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !19, line: 578, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !1340, file: !19, line: 579, baseType: !236, size: 128, offset: 11456)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !1340, file: !19, line: 580, baseType: !1216, size: 2368, offset: 11584)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !1340, file: !19, line: 582, baseType: !398, size: 64, offset: 13952)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !1340, file: !19, line: 589, baseType: !212, size: 8, offset: 14016)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !1340, file: !19, line: 591, baseType: !337, size: 64, offset: 14080)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "write_hints", scope: !1340, file: !19, line: 594, baseType: !1890, size: 320, offset: 14144)
!1890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 320, elements: !1891)
!1891 = !{!1892}
!1892 = !DISubrange(count: 5)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1125, file: !1059, line: 191, baseType: !181, size: 64, offset: 7168)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1125, file: !1059, line: 193, baseType: !165, size: 32, offset: 7232)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1125, file: !1059, line: 194, baseType: !340, size: 64, offset: 7296)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_sem", scope: !1125, file: !1059, line: 196, baseType: !843, size: 256, offset: 7360)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !1125, file: !1059, line: 197, baseType: !242, size: 64, offset: 7616)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !1125, file: !1059, line: 199, baseType: !1899, size: 64, offset: 7680)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !1059, line: 199, flags: DIFlagFwdDecl)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !1125, file: !1059, line: 200, baseType: !823, size: 32, offset: 7744)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !1125, file: !1059, line: 201, baseType: !1903, size: 64, offset: 7808)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !1059, line: 156, flags: DIFlagFwdDecl)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "integrity_kobj", scope: !1125, file: !1059, line: 203, baseType: !228, size: 512, offset: 7872)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1125, file: !1059, line: 208, baseType: !165, size: 32, offset: 8384)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1125, file: !1059, line: 209, baseType: !1908, size: 64, offset: 8448)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !1059, line: 157, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !1125, file: !1059, line: 210, baseType: !1911, offset: 8512)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !658, line: 192, elements: !263)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "bd_bdi", scope: !1041, file: !1042, line: 43, baseType: !1617, size: 64, offset: 1024)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !1041, file: !1042, line: 46, baseType: !165, size: 32, offset: 1088)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !1041, file: !1042, line: 48, baseType: !749, size: 192, offset: 1152)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !994, file: !995, line: 259, baseType: !368, size: 64, offset: 1152)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !994, file: !995, line: 260, baseType: !7, size: 32, offset: 1216)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !994, file: !995, line: 265, baseType: !249, offset: 1248)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !994, file: !995, line: 278, baseType: !249, offset: 1248)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !994, file: !995, line: 282, baseType: !1107, size: 256, offset: 1280)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !994, file: !995, line: 283, baseType: !1020, size: 64, offset: 1536)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !994, file: !995, line: 284, baseType: !1922, offset: 1600)
!1922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1001, elements: !1145)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !857, file: !86, line: 415, baseType: !1925, size: 64, offset: 1344)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{null, !368}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !810, file: !86, line: 466, baseType: !340, size: 64, offset: 896)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !810, file: !86, line: 467, baseType: !1930, size: 32, offset: 960)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1931, line: 8, baseType: !179)
!1931 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !810, file: !86, line: 468, baseType: !249, offset: 992)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !810, file: !86, line: 469, baseType: !236, size: 128, offset: 1024)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !810, file: !86, line: 470, baseType: !181, size: 64, offset: 1152)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !805, file: !798, line: 87, baseType: !340, size: 64, offset: 192)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !805, file: !798, line: 94, baseType: !340, size: 64, offset: 256)
!1937 = !DIDerivedType(tag: DW_TAG_member, scope: !802, file: !798, line: 96, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !802, file: !798, line: 96, size: 64, elements: !1939)
!1939 = !{!1940}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1938, file: !798, line: 101, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !213, line: 143, baseType: !433)
!1942 = !DIDerivedType(tag: DW_TAG_member, scope: !802, file: !798, line: 103, baseType: !1943, size: 320)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !802, file: !798, line: 103, size: 320, elements: !1944)
!1944 = !{!1945, !1955, !1956, !1957}
!1945 = !DIDerivedType(tag: DW_TAG_member, scope: !1943, file: !798, line: 104, baseType: !1946, size: 128)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1943, file: !798, line: 104, size: 128, elements: !1947)
!1947 = !{!1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1946, file: !798, line: 105, baseType: !236, size: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, scope: !1946, file: !798, line: 106, baseType: !1950, size: 128)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1946, file: !798, line: 106, size: 128, elements: !1951)
!1951 = !{!1952, !1953, !1954}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1950, file: !798, line: 107, baseType: !796, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1950, file: !798, line: 109, baseType: !165, size: 32, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1950, file: !798, line: 110, baseType: !165, size: 32, offset: 96)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1943, file: !798, line: 117, baseType: !1219, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1943, file: !798, line: 119, baseType: !181, size: 64, offset: 192)
!1957 = !DIDerivedType(tag: DW_TAG_member, scope: !1943, file: !798, line: 120, baseType: !1958, size: 64, offset: 256)
!1958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1943, file: !798, line: 120, size: 64, elements: !1959)
!1959 = !{!1960, !1961, !1962}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1958, file: !798, line: 121, baseType: !181, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1958, file: !798, line: 122, baseType: !340, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, scope: !1958, file: !798, line: 123, baseType: !1963, size: 32)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1958, file: !798, line: 123, size: 32, elements: !1964)
!1964 = !{!1965, !1966, !1967}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1963, file: !798, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1963, file: !798, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1963, file: !798, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1968 = !DIDerivedType(tag: DW_TAG_member, scope: !802, file: !798, line: 130, baseType: !1969, size: 192)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !802, file: !798, line: 130, size: 192, elements: !1970)
!1970 = !{!1971, !1972, !1973, !1974, !1975}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1969, file: !798, line: 131, baseType: !340, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1969, file: !798, line: 134, baseType: !176, size: 8, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1969, file: !798, line: 135, baseType: !176, size: 8, offset: 72)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1969, file: !798, line: 136, baseType: !823, size: 32, offset: 96)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1969, file: !798, line: 137, baseType: !7, size: 32, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, scope: !802, file: !798, line: 139, baseType: !1977, size: 256)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !802, file: !798, line: 139, size: 256, elements: !1978)
!1978 = !{!1979, !1980, !1981}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1977, file: !798, line: 140, baseType: !340, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1977, file: !798, line: 141, baseType: !823, size: 32, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1977, file: !798, line: 143, baseType: !236, size: 128, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, scope: !802, file: !798, line: 145, baseType: !1983, size: 256)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !802, file: !798, line: 145, size: 256, elements: !1984)
!1984 = !{!1985, !1986, !1989, !1990, !3458}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1983, file: !798, line: 146, baseType: !340, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1983, file: !798, line: 147, baseType: !1987, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1988, line: 509, baseType: !796)
!1988 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1983, file: !798, line: 148, baseType: !340, size: 64, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, scope: !1983, file: !798, line: 149, baseType: !1991, size: 64, offset: 192)
!1991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1983, file: !798, line: 149, size: 64, elements: !1992)
!1992 = !{!1993, !3457}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1991, file: !798, line: 150, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !798, line: 388, size: 7296, elements: !1996)
!1996 = !{!1997, !3455}
!1997 = !DIDerivedType(tag: DW_TAG_member, scope: !1995, file: !798, line: 389, baseType: !1998, size: 7296)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !798, line: 389, size: 7296, elements: !1999)
!1999 = !{!2000, !2118, !2119, !2120, !2124, !2125, !2126, !2127, !2128, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2169, !2175, !2178, !2217, !2218, !3439, !3440, !3443, !3444, !3445, !3448, !3449, !3450, !3453, !3454}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1998, file: !798, line: 390, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !798, line: 305, size: 1472, elements: !2003)
!2003 = !{!2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2018, !2019, !2024, !2025, !2028, !2112, !2113, !2114, !2115, !2116}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2002, file: !798, line: 308, baseType: !340, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2002, file: !798, line: 309, baseType: !340, size: 64, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !2002, file: !798, line: 313, baseType: !2001, size: 64, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !2002, file: !798, line: 313, baseType: !2001, size: 64, offset: 192)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !2002, file: !798, line: 315, baseType: !836, size: 192, align: 64, offset: 256)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !2002, file: !798, line: 323, baseType: !340, size: 64, offset: 448)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2002, file: !798, line: 327, baseType: !1994, size: 64, offset: 512)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2002, file: !798, line: 333, baseType: !2012, size: 64, offset: 576)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1988, line: 284, baseType: !2013)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1988, line: 284, size: 64, elements: !2014)
!2014 = !{!2015}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2013, file: !1988, line: 284, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2017, line: 19, baseType: !340)
!2017 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2002, file: !798, line: 334, baseType: !340, size: 64, offset: 640)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2002, file: !798, line: 343, baseType: !2020, size: 256, offset: 704)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2002, file: !798, line: 340, size: 256, elements: !2021)
!2021 = !{!2022, !2023}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2020, file: !798, line: 341, baseType: !836, size: 192, align: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2020, file: !798, line: 342, baseType: !340, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2002, file: !798, line: 351, baseType: !236, size: 128, offset: 960)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2002, file: !798, line: 353, baseType: !2026, size: 64, offset: 1088)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !798, line: 353, flags: DIFlagFwdDecl)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2002, file: !798, line: 356, baseType: !2029, size: 64, offset: 1152)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2031)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !56, line: 557, size: 832, elements: !2032)
!2032 = !{!2033, !2037, !2038, !2042, !2046, !2086, !2090, !2094, !2098, !2099, !2100, !2104, !2108}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2031, file: !56, line: 558, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{null, !2001}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2031, file: !56, line: 559, baseType: !2034, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !2031, file: !56, line: 560, baseType: !2039, size: 64, offset: 128)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!165, !2001, !340}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2031, file: !56, line: 561, baseType: !2043, size: 64, offset: 192)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!165, !2001}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2031, file: !56, line: 562, baseType: !2047, size: 64, offset: 256)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!2050, !2051}
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !798, line: 682, baseType: !7)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !56, line: 508, size: 768, elements: !2053)
!2053 = !{!2054, !2055, !2056, !2057, !2058, !2059, !2066, !2073, !2079, !2080, !2081, !2083, !2085}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2052, file: !56, line: 509, baseType: !2001, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2052, file: !56, line: 510, baseType: !7, size: 32, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2052, file: !56, line: 511, baseType: !819, size: 32, offset: 96)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2052, file: !56, line: 512, baseType: !340, size: 64, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2052, file: !56, line: 513, baseType: !340, size: 64, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2052, file: !56, line: 514, baseType: !2060, size: 64, offset: 256)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1988, line: 385, baseType: !2062)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1988, line: 385, size: 64, elements: !2063)
!2063 = !{!2064}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2062, file: !1988, line: 385, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2017, line: 15, baseType: !340)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2052, file: !56, line: 516, baseType: !2067, size: 64, offset: 320)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1988, line: 359, baseType: !2069)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1988, line: 359, size: 64, elements: !2070)
!2070 = !{!2071}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2069, file: !1988, line: 359, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2017, line: 16, baseType: !340)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2052, file: !56, line: 519, baseType: !2074, size: 64, offset: 384)
!2074 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2017, line: 21, baseType: !2075)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2017, line: 21, size: 64, elements: !2076)
!2076 = !{!2077}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2075, file: !2017, line: 21, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2017, line: 14, baseType: !340)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2052, file: !56, line: 521, baseType: !796, size: 64, offset: 448)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2052, file: !56, line: 522, baseType: !796, size: 64, offset: 512)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2052, file: !56, line: 528, baseType: !2082, size: 64, offset: 576)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2052, file: !56, line: 532, baseType: !2084, size: 64, offset: 640)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2052, file: !56, line: 536, baseType: !1987, size: 64, offset: 704)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2031, file: !56, line: 563, baseType: !2087, size: 64, offset: 320)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!2050, !2051, !55}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2031, file: !56, line: 565, baseType: !2091, size: 64, offset: 384)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{null, !2051, !340, !340}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2031, file: !56, line: 567, baseType: !2095, size: 64, offset: 448)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!340, !2001}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2031, file: !56, line: 571, baseType: !2047, size: 64, offset: 512)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2031, file: !56, line: 574, baseType: !2047, size: 64, offset: 576)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2031, file: !56, line: 579, baseType: !2101, size: 64, offset: 640)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!165, !2001, !340, !181, !165, !165}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2031, file: !56, line: 585, baseType: !2105, size: 64, offset: 704)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!232, !2001}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2031, file: !56, line: 615, baseType: !2109, size: 64, offset: 768)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!796, !2001, !340}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2002, file: !798, line: 359, baseType: !340, size: 64, offset: 1216)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2002, file: !798, line: 361, baseType: !368, size: 64, offset: 1280)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2002, file: !798, line: 362, baseType: !181, size: 64, offset: 1344)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2002, file: !798, line: 365, baseType: !753, size: 64, offset: 1408)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2002, file: !798, line: 373, baseType: !2117, offset: 1472)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !798, line: 296, elements: !263)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1998, file: !798, line: 391, baseType: !832, size: 64, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1998, file: !798, line: 392, baseType: !433, size: 64, offset: 128)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1998, file: !798, line: 394, baseType: !2121, size: 64, offset: 192)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!340, !368, !340, !340, !340, !340}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1998, file: !798, line: 398, baseType: !340, size: 64, offset: 256)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1998, file: !798, line: 399, baseType: !340, size: 64, offset: 320)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1998, file: !798, line: 405, baseType: !340, size: 64, offset: 384)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1998, file: !798, line: 406, baseType: !340, size: 64, offset: 448)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1998, file: !798, line: 407, baseType: !2129, size: 64, offset: 512)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1988, line: 286, baseType: !2131)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1988, line: 286, size: 64, elements: !2132)
!2132 = !{!2133}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2131, file: !1988, line: 286, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2017, line: 18, baseType: !340)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1998, file: !798, line: 416, baseType: !823, size: 32, offset: 576)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1998, file: !798, line: 428, baseType: !823, size: 32, offset: 608)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1998, file: !798, line: 437, baseType: !823, size: 32, offset: 640)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1998, file: !798, line: 447, baseType: !823, size: 32, offset: 672)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1998, file: !798, line: 450, baseType: !753, size: 64, offset: 704)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1998, file: !798, line: 452, baseType: !165, size: 32, offset: 768)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1998, file: !798, line: 454, baseType: !249, offset: 800)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1998, file: !798, line: 457, baseType: !843, size: 256, offset: 832)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1998, file: !798, line: 459, baseType: !236, size: 128, offset: 1088)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1998, file: !798, line: 466, baseType: !340, size: 64, offset: 1216)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1998, file: !798, line: 467, baseType: !340, size: 64, offset: 1280)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1998, file: !798, line: 469, baseType: !340, size: 64, offset: 1344)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1998, file: !798, line: 470, baseType: !340, size: 64, offset: 1408)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1998, file: !798, line: 471, baseType: !755, size: 64, offset: 1472)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1998, file: !798, line: 472, baseType: !340, size: 64, offset: 1536)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1998, file: !798, line: 473, baseType: !340, size: 64, offset: 1600)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1998, file: !798, line: 474, baseType: !340, size: 64, offset: 1664)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1998, file: !798, line: 475, baseType: !340, size: 64, offset: 1728)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1998, file: !798, line: 477, baseType: !249, offset: 1792)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1998, file: !798, line: 478, baseType: !340, size: 64, offset: 1792)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1998, file: !798, line: 478, baseType: !340, size: 64, offset: 1856)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1998, file: !798, line: 478, baseType: !340, size: 64, offset: 1920)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1998, file: !798, line: 478, baseType: !340, size: 64, offset: 1984)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1998, file: !798, line: 479, baseType: !340, size: 64, offset: 2048)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1998, file: !798, line: 479, baseType: !340, size: 64, offset: 2112)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1998, file: !798, line: 479, baseType: !340, size: 64, offset: 2176)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1998, file: !798, line: 480, baseType: !340, size: 64, offset: 2240)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1998, file: !798, line: 480, baseType: !340, size: 64, offset: 2304)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1998, file: !798, line: 480, baseType: !340, size: 64, offset: 2368)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1998, file: !798, line: 480, baseType: !340, size: 64, offset: 2432)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1998, file: !798, line: 482, baseType: !2166, size: 2816, offset: 2496)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 2816, elements: !2167)
!2167 = !{!2168}
!2168 = !DISubrange(count: 44)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1998, file: !798, line: 488, baseType: !2170, size: 256, offset: 5312)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2171, line: 60, size: 256, elements: !2172)
!2171 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2172 = !{!2173}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2170, file: !2171, line: 61, baseType: !2174, size: 256)
!2174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !753, size: 256, elements: !1321)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1998, file: !798, line: 490, baseType: !2176, size: 64, offset: 5568)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !798, line: 490, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1998, file: !798, line: 493, baseType: !2179, size: 896, offset: 5632)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2180, line: 53, baseType: !2181)
!2180 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2180, line: 13, size: 896, elements: !2182)
!2182 = !{!2183, !2184, !2185, !2186, !2189, !2190, !2191, !2192, !2212, !2213, !2214}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2181, file: !2180, line: 18, baseType: !433, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2181, file: !2180, line: 28, baseType: !755, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2181, file: !2180, line: 31, baseType: !843, size: 256, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2181, file: !2180, line: 32, baseType: !2187, size: 64, offset: 384)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2180, line: 32, flags: DIFlagFwdDecl)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2181, file: !2180, line: 37, baseType: !332, size: 16, offset: 448)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2181, file: !2180, line: 40, baseType: !749, size: 192, offset: 512)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2181, file: !2180, line: 41, baseType: !181, size: 64, offset: 704)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2181, file: !2180, line: 42, baseType: !2193, size: 64, offset: 768)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2195)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2196, line: 13, size: 896, elements: !2197)
!2196 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2197 = !{!2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2195, file: !2196, line: 14, baseType: !181, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2195, file: !2196, line: 15, baseType: !340, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2195, file: !2196, line: 17, baseType: !340, size: 64, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2195, file: !2196, line: 17, baseType: !340, size: 64, offset: 192)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2195, file: !2196, line: 19, baseType: !325, size: 64, offset: 256)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2195, file: !2196, line: 21, baseType: !325, size: 64, offset: 320)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2195, file: !2196, line: 22, baseType: !325, size: 64, offset: 384)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2195, file: !2196, line: 23, baseType: !325, size: 64, offset: 448)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2195, file: !2196, line: 24, baseType: !325, size: 64, offset: 512)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2195, file: !2196, line: 25, baseType: !325, size: 64, offset: 576)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2195, file: !2196, line: 26, baseType: !325, size: 64, offset: 640)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2195, file: !2196, line: 27, baseType: !325, size: 64, offset: 704)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2195, file: !2196, line: 28, baseType: !325, size: 64, offset: 768)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2195, file: !2196, line: 29, baseType: !325, size: 64, offset: 832)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2181, file: !2180, line: 44, baseType: !823, size: 32, offset: 832)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2181, file: !2180, line: 50, baseType: !935, size: 16, offset: 864)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2181, file: !2180, line: 51, baseType: !2215, size: 16, offset: 880)
!2215 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !173, line: 18, baseType: !2216)
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !175, line: 23, baseType: !999)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1998, file: !798, line: 495, baseType: !340, size: 64, offset: 6528)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1998, file: !798, line: 497, baseType: !2219, size: 64, offset: 6592)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !798, line: 381, size: 384, elements: !2221)
!2221 = !{!2222, !2223, !3438}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2220, file: !798, line: 382, baseType: !823, size: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2220, file: !798, line: 383, baseType: !2224, size: 128, offset: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !798, line: 376, size: 128, elements: !2225)
!2225 = !{!2226, !3436}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2224, file: !798, line: 377, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2229, line: 640, size: 48640, elements: !2230)
!2229 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!2230 = !{!2231, !2237, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2252, !2270, !2281, !2364, !2365, !2366, !2377, !2378, !2380, !2381, !2382, !2383, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2461, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2493, !2495, !2496, !2497, !2509, !2510, !2511, !2512, !2513, !2514, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2538, !2543, !2865, !2866, !2867, !2868, !2870, !2873, !2876, !2879, !2882, !2918, !3019, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3065, !3066, !3067, !3068, !3069, !3074, !3075, !3076, !3079, !3080, !3082, !3091, !3096, !3097, !3098, !3101, !3102, !3181, !3182, !3185, !3186, !3189, !3190, !3191, !3195, !3196, !3197, !3210, !3211, !3212, !3222, !3227, !3230, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2228, file: !2229, line: 646, baseType: !2232, size: 128)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2233, line: 56, size: 128, elements: !2234)
!2233 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!2234 = !{!2235, !2236}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2232, file: !2233, line: 57, baseType: !340, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2232, file: !2233, line: 58, baseType: !179, size: 32, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2228, file: !2229, line: 649, baseType: !2238, size: 64, offset: 128)
!2238 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !325)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2228, file: !2229, line: 657, baseType: !181, size: 64, offset: 192)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2228, file: !2229, line: 658, baseType: !1436, size: 32, offset: 256)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2228, file: !2229, line: 660, baseType: !7, size: 32, offset: 288)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2228, file: !2229, line: 661, baseType: !7, size: 32, offset: 320)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2228, file: !2229, line: 684, baseType: !165, size: 32, offset: 352)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2228, file: !2229, line: 686, baseType: !165, size: 32, offset: 384)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2228, file: !2229, line: 687, baseType: !165, size: 32, offset: 416)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2228, file: !2229, line: 688, baseType: !165, size: 32, offset: 448)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2228, file: !2229, line: 689, baseType: !7, size: 32, offset: 480)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2228, file: !2229, line: 691, baseType: !2249, size: 64, offset: 512)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2251)
!2251 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2229, line: 691, flags: DIFlagFwdDecl)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2228, file: !2229, line: 692, baseType: !2253, size: 832, offset: 576)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2229, line: 451, size: 832, elements: !2254)
!2254 = !{!2255, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2253, file: !2229, line: 453, baseType: !2256, size: 128)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2229, line: 325, size: 128, elements: !2257)
!2257 = !{!2258, !2259}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2256, file: !2229, line: 326, baseType: !340, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2256, file: !2229, line: 327, baseType: !179, size: 32, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2253, file: !2229, line: 454, baseType: !836, size: 192, align: 64, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2253, file: !2229, line: 455, baseType: !236, size: 128, offset: 320)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2253, file: !2229, line: 456, baseType: !7, size: 32, offset: 448)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2253, file: !2229, line: 458, baseType: !433, size: 64, offset: 512)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2253, file: !2229, line: 459, baseType: !433, size: 64, offset: 576)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2253, file: !2229, line: 460, baseType: !433, size: 64, offset: 640)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2253, file: !2229, line: 461, baseType: !433, size: 64, offset: 704)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2253, file: !2229, line: 463, baseType: !433, size: 64, offset: 768)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !2253, file: !2229, line: 465, baseType: !2269, offset: 832)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2229, line: 415, elements: !263)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2228, file: !2229, line: 693, baseType: !2271, size: 384, offset: 1408)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2229, line: 489, size: 384, elements: !2272)
!2272 = !{!2273, !2274, !2275, !2276, !2277, !2278, !2279}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2271, file: !2229, line: 490, baseType: !236, size: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2271, file: !2229, line: 491, baseType: !340, size: 64, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2271, file: !2229, line: 492, baseType: !340, size: 64, offset: 192)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2271, file: !2229, line: 493, baseType: !7, size: 32, offset: 256)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2271, file: !2229, line: 494, baseType: !332, size: 16, offset: 288)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2271, file: !2229, line: 495, baseType: !332, size: 16, offset: 304)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2271, file: !2229, line: 497, baseType: !2280, size: 64, offset: 320)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2228, file: !2229, line: 697, baseType: !2282, size: 1792, offset: 1792)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2229, line: 507, size: 1792, elements: !2283)
!2283 = !{!2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2361, !2362}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2282, file: !2229, line: 508, baseType: !836, size: 192, align: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2282, file: !2229, line: 515, baseType: !433, size: 64, offset: 192)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2282, file: !2229, line: 516, baseType: !433, size: 64, offset: 256)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2282, file: !2229, line: 517, baseType: !433, size: 64, offset: 320)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2282, file: !2229, line: 518, baseType: !433, size: 64, offset: 384)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2282, file: !2229, line: 519, baseType: !433, size: 64, offset: 448)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2282, file: !2229, line: 526, baseType: !759, size: 64, offset: 512)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2282, file: !2229, line: 527, baseType: !433, size: 64, offset: 576)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2282, file: !2229, line: 528, baseType: !7, size: 32, offset: 640)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2282, file: !2229, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2282, file: !2229, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2282, file: !2229, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2282, file: !2229, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2282, file: !2229, line: 563, baseType: !2298, size: 512, offset: 704)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !62, line: 118, size: 512, elements: !2299)
!2299 = !{!2300, !2308, !2309, !2314, !2357, !2358, !2359, !2360}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2298, file: !62, line: 119, baseType: !2301, size: 256)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2302, line: 9, size: 256, elements: !2303)
!2302 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!2303 = !{!2304, !2305}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2301, file: !2302, line: 10, baseType: !836, size: 192, align: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2301, file: !2302, line: 11, baseType: !2306, size: 64, offset: 192)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2307, line: 29, baseType: !759)
!2307 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2298, file: !62, line: 120, baseType: !2306, size: 64, offset: 256)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2298, file: !62, line: 121, baseType: !2310, size: 64, offset: 320)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!61, !2313}
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2298, file: !62, line: 122, baseType: !2315, size: 64, offset: 384)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !62, line: 159, size: 512, align: 512, elements: !2317)
!2317 = !{!2318, !2338, !2339, !2342, !2347, !2348, !2352, !2356}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2316, file: !62, line: 160, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !62, line: 214, size: 4608, align: 512, elements: !2321)
!2321 = !{!2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2320, file: !62, line: 215, baseType: !849)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2320, file: !62, line: 216, baseType: !7, size: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2320, file: !62, line: 217, baseType: !7, size: 32, offset: 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2320, file: !62, line: 218, baseType: !7, size: 32, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2320, file: !62, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2320, file: !62, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2320, file: !62, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2320, file: !62, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2320, file: !62, line: 233, baseType: !2306, size: 64, offset: 128)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2320, file: !62, line: 234, baseType: !2313, size: 64, offset: 192)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2320, file: !62, line: 235, baseType: !2306, size: 64, offset: 256)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2320, file: !62, line: 236, baseType: !2313, size: 64, offset: 320)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2320, file: !62, line: 237, baseType: !2335, size: 4096, offset: 512)
!2335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2316, size: 4096, elements: !2336)
!2336 = !{!2337}
!2337 = !DISubrange(count: 8)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2316, file: !62, line: 161, baseType: !7, size: 32, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2316, file: !62, line: 162, baseType: !2340, size: 32, offset: 96)
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !213, line: 27, baseType: !2341)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !323, line: 96, baseType: !165)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2316, file: !62, line: 163, baseType: !2343, size: 32, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !404, line: 276, baseType: !2344)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !404, line: 276, size: 32, elements: !2345)
!2345 = !{!2346}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2344, file: !404, line: 276, baseType: !408, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2316, file: !62, line: 164, baseType: !2313, size: 64, offset: 192)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2316, file: !62, line: 165, baseType: !2349, size: 128, offset: 256)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2302, line: 14, size: 128, elements: !2350)
!2350 = !{!2351}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2349, file: !2302, line: 15, baseType: !828, size: 128)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2316, file: !62, line: 166, baseType: !2353, size: 64, offset: 384)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!2306}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2316, file: !62, line: 167, baseType: !2306, size: 64, offset: 448)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2298, file: !62, line: 123, baseType: !172, size: 8, offset: 448)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2298, file: !62, line: 124, baseType: !172, size: 8, offset: 456)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2298, file: !62, line: 125, baseType: !172, size: 8, offset: 464)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2298, file: !62, line: 126, baseType: !172, size: 8, offset: 472)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2282, file: !2229, line: 572, baseType: !2298, size: 512, offset: 1216)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2282, file: !2229, line: 580, baseType: !2363, size: 64, offset: 1728)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2228, file: !2229, line: 721, baseType: !7, size: 32, offset: 3584)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2228, file: !2229, line: 722, baseType: !165, size: 32, offset: 3616)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2228, file: !2229, line: 723, baseType: !2367, size: 64, offset: 3648)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2369)
!2369 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2370, line: 17, baseType: !2371)
!2370 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2370, line: 17, size: 64, elements: !2372)
!2372 = !{!2373}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2371, file: !2370, line: 17, baseType: !2374, size: 64)
!2374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 64, elements: !2375)
!2375 = !{!2376}
!2376 = !DISubrange(count: 1)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2228, file: !2229, line: 724, baseType: !2369, size: 64, offset: 3712)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2228, file: !2229, line: 749, baseType: !2379, offset: 3776)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2229, line: 290, elements: !263)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2228, file: !2229, line: 751, baseType: !236, size: 128, offset: 3776)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2228, file: !2229, line: 757, baseType: !1994, size: 64, offset: 3904)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2228, file: !2229, line: 758, baseType: !1994, size: 64, offset: 3968)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !2228, file: !2229, line: 761, baseType: !2384, size: 320, offset: 4032)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2171, line: 34, size: 320, elements: !2385)
!2385 = !{!2386, !2387}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2384, file: !2171, line: 35, baseType: !433, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2384, file: !2171, line: 36, baseType: !2388, size: 256, offset: 64)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2001, size: 256, elements: !1321)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2228, file: !2229, line: 766, baseType: !165, size: 32, offset: 4352)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2228, file: !2229, line: 767, baseType: !165, size: 32, offset: 4384)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2228, file: !2229, line: 768, baseType: !165, size: 32, offset: 4416)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2228, file: !2229, line: 770, baseType: !165, size: 32, offset: 4448)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2228, file: !2229, line: 772, baseType: !340, size: 64, offset: 4480)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2228, file: !2229, line: 775, baseType: !7, size: 32, offset: 4544)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2228, file: !2229, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2228, file: !2229, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2228, file: !2229, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2228, file: !2229, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2228, file: !2229, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2228, file: !2229, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2228, file: !2229, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !2228, file: !2229, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2228, file: !2229, line: 831, baseType: !340, size: 64, offset: 4672)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2228, file: !2229, line: 833, baseType: !2405, size: 384, offset: 4736)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !67, line: 25, size: 384, elements: !2406)
!2406 = !{!2407, !2412}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2405, file: !67, line: 26, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!325, !2411}
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, scope: !2405, file: !67, line: 27, baseType: !2413, size: 320, offset: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2405, file: !67, line: 27, size: 320, elements: !2414)
!2414 = !{!2415, !2425, !2451}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2413, file: !67, line: 36, baseType: !2416, size: 320)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2413, file: !67, line: 29, size: 320, elements: !2417)
!2417 = !{!2418, !2420, !2421, !2422, !2423, !2424}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2416, file: !67, line: 30, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2416, file: !67, line: 31, baseType: !179, size: 32, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2416, file: !67, line: 32, baseType: !179, size: 32, offset: 96)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2416, file: !67, line: 33, baseType: !179, size: 32, offset: 128)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2416, file: !67, line: 34, baseType: !433, size: 64, offset: 192)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2416, file: !67, line: 35, baseType: !2419, size: 64, offset: 256)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2413, file: !67, line: 46, baseType: !2426, size: 192)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2413, file: !67, line: 38, size: 192, elements: !2427)
!2427 = !{!2428, !2429, !2430, !2450}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2426, file: !67, line: 39, baseType: !2340, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2426, file: !67, line: 40, baseType: !66, size: 32, offset: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, scope: !2426, file: !67, line: 41, baseType: !2431, size: 64, offset: 64)
!2431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2426, file: !67, line: 41, size: 64, elements: !2432)
!2432 = !{!2433, !2441}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2431, file: !67, line: 42, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2436, line: 7, size: 128, elements: !2437)
!2436 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2437 = !{!2438, !2440}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2435, file: !2436, line: 8, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !323, line: 93, baseType: !542)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2435, file: !2436, line: 9, baseType: !542, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2431, file: !67, line: 43, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2444, line: 7, size: 64, elements: !2445)
!2444 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2445 = !{!2446, !2449}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2443, file: !2444, line: 8, baseType: !2447, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2444, line: 5, baseType: !2448)
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !173, line: 20, baseType: !1836)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2443, file: !2444, line: 9, baseType: !2448, size: 32, offset: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2426, file: !67, line: 45, baseType: !433, size: 64, offset: 128)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2413, file: !67, line: 54, baseType: !2452, size: 256)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2413, file: !67, line: 48, size: 256, elements: !2453)
!2453 = !{!2454, !2457, !2458, !2459, !2460}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2452, file: !67, line: 49, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !67, line: 14, flags: DIFlagFwdDecl)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2452, file: !67, line: 50, baseType: !165, size: 32, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2452, file: !67, line: 51, baseType: !165, size: 32, offset: 96)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2452, file: !67, line: 52, baseType: !340, size: 64, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2452, file: !67, line: 53, baseType: !340, size: 64, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2228, file: !2229, line: 835, baseType: !2462, size: 32, offset: 5120)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !213, line: 22, baseType: !2463)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !323, line: 28, baseType: !165)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2228, file: !2229, line: 836, baseType: !2462, size: 32, offset: 5152)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2228, file: !2229, line: 840, baseType: !340, size: 64, offset: 5184)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2228, file: !2229, line: 849, baseType: !2227, size: 64, offset: 5248)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2228, file: !2229, line: 852, baseType: !2227, size: 64, offset: 5312)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2228, file: !2229, line: 857, baseType: !236, size: 128, offset: 5376)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2228, file: !2229, line: 858, baseType: !236, size: 128, offset: 5504)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2228, file: !2229, line: 859, baseType: !2227, size: 64, offset: 5632)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2228, file: !2229, line: 867, baseType: !236, size: 128, offset: 5696)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2228, file: !2229, line: 868, baseType: !236, size: 128, offset: 5824)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2228, file: !2229, line: 871, baseType: !2474, size: 64, offset: 5952)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !95, line: 59, size: 768, elements: !2476)
!2476 = !{!2477, !2478, !2479, !2480, !2482, !2483, !2484, !2485}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2475, file: !95, line: 61, baseType: !1436, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2475, file: !95, line: 62, baseType: !7, size: 32, offset: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2475, file: !95, line: 63, baseType: !249, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2475, file: !95, line: 65, baseType: !2481, size: 256, offset: 64)
!2481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 256, elements: !1321)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2475, file: !95, line: 66, baseType: !647, size: 64, offset: 320)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2475, file: !95, line: 68, baseType: !1243, size: 128, offset: 384)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2475, file: !95, line: 69, baseType: !381, size: 128, align: 64, offset: 512)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2475, file: !95, line: 70, baseType: !2486, size: 128, offset: 640)
!2486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2487, size: 128, elements: !2375)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !95, line: 54, size: 128, elements: !2488)
!2488 = !{!2489, !2490}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2487, file: !95, line: 55, baseType: !165, size: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2487, file: !95, line: 56, baseType: !2491, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !95, line: 56, flags: DIFlagFwdDecl)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2228, file: !2229, line: 872, baseType: !2494, size: 512, offset: 6016)
!2494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 512, elements: !1321)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2228, file: !2229, line: 873, baseType: !236, size: 128, offset: 6528)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2228, file: !2229, line: 874, baseType: !236, size: 128, offset: 6656)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2228, file: !2229, line: 876, baseType: !2498, size: 64, offset: 6784)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2500, line: 26, size: 192, elements: !2501)
!2500 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2501 = !{!2502, !2503}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2499, file: !2500, line: 27, baseType: !7, size: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2499, file: !2500, line: 28, baseType: !2504, size: 128, offset: 64)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2505, line: 43, size: 128, elements: !2506)
!2505 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2506 = !{!2507, !2508}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2504, file: !2505, line: 44, baseType: !849)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2504, file: !2505, line: 45, baseType: !236, size: 128)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2228, file: !2229, line: 879, baseType: !731, size: 64, offset: 6848)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2228, file: !2229, line: 882, baseType: !731, size: 64, offset: 6912)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2228, file: !2229, line: 884, baseType: !433, size: 64, offset: 6976)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2228, file: !2229, line: 885, baseType: !433, size: 64, offset: 7040)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2228, file: !2229, line: 890, baseType: !433, size: 64, offset: 7104)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2228, file: !2229, line: 891, baseType: !2515, size: 128, offset: 7168)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2229, line: 242, size: 128, elements: !2516)
!2516 = !{!2517, !2518, !2519}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2515, file: !2229, line: 244, baseType: !433, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2515, file: !2229, line: 245, baseType: !433, size: 64, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2515, file: !2229, line: 246, baseType: !849, offset: 128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2228, file: !2229, line: 900, baseType: !340, size: 64, offset: 7296)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2228, file: !2229, line: 901, baseType: !340, size: 64, offset: 7360)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2228, file: !2229, line: 904, baseType: !433, size: 64, offset: 7424)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2228, file: !2229, line: 907, baseType: !433, size: 64, offset: 7488)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2228, file: !2229, line: 910, baseType: !340, size: 64, offset: 7552)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2228, file: !2229, line: 911, baseType: !340, size: 64, offset: 7616)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2228, file: !2229, line: 914, baseType: !2527, size: 640, offset: 7680)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2528, line: 123, size: 640, elements: !2529)
!2528 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2529 = !{!2530, !2536, !2537}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2527, file: !2528, line: 124, baseType: !2531, size: 576)
!2531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2532, size: 576, elements: !291)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2528, line: 108, size: 192, elements: !2533)
!2533 = !{!2534, !2535}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2532, file: !2528, line: 109, baseType: !433, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2532, file: !2528, line: 110, baseType: !2349, size: 128, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2527, file: !2528, line: 125, baseType: !7, size: 32, offset: 576)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2527, file: !2528, line: 126, baseType: !7, size: 32, offset: 608)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2228, file: !2229, line: 917, baseType: !2539, size: 192, offset: 8320)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2528, line: 134, size: 192, elements: !2540)
!2540 = !{!2541, !2542}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2539, file: !2528, line: 135, baseType: !381, size: 128, align: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2539, file: !2528, line: 136, baseType: !7, size: 32, offset: 128)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2228, file: !2229, line: 923, baseType: !2544, size: 64, offset: 8512)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2546)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2547, line: 111, size: 1280, elements: !2548)
!2547 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2548 = !{!2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2566, !2567, !2568, !2569, !2570, !2571, !2678, !2679, !2680, !2681, !2707, !2850, !2860}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2546, file: !2547, line: 112, baseType: !823, size: 32)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2546, file: !2547, line: 120, baseType: !446, size: 32, offset: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2546, file: !2547, line: 121, baseType: !454, size: 32, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2546, file: !2547, line: 122, baseType: !446, size: 32, offset: 96)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2546, file: !2547, line: 123, baseType: !454, size: 32, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2546, file: !2547, line: 124, baseType: !446, size: 32, offset: 160)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2546, file: !2547, line: 125, baseType: !454, size: 32, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2546, file: !2547, line: 126, baseType: !446, size: 32, offset: 224)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2546, file: !2547, line: 127, baseType: !454, size: 32, offset: 256)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2546, file: !2547, line: 128, baseType: !7, size: 32, offset: 288)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2546, file: !2547, line: 129, baseType: !2560, size: 64, offset: 320)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2561, line: 26, baseType: !2562)
!2561 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2561, line: 24, size: 64, elements: !2563)
!2563 = !{!2564}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2562, file: !2561, line: 25, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 64, elements: !1413)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2546, file: !2547, line: 130, baseType: !2560, size: 64, offset: 384)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2546, file: !2547, line: 131, baseType: !2560, size: 64, offset: 448)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2546, file: !2547, line: 132, baseType: !2560, size: 64, offset: 512)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2546, file: !2547, line: 133, baseType: !2560, size: 64, offset: 576)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2546, file: !2547, line: 135, baseType: !176, size: 8, offset: 640)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2546, file: !2547, line: 137, baseType: !2572, size: 64, offset: 704)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2574, line: 189, size: 1664, elements: !2575)
!2574 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2575 = !{!2576, !2577, !2580, !2585, !2586, !2589, !2590, !2595, !2596, !2597, !2598, !2600, !2601, !2602, !2603, !2604, !2642, !2663}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2573, file: !2574, line: 190, baseType: !1436, size: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2573, file: !2574, line: 191, baseType: !2578, size: 32, offset: 32)
!2578 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2574, line: 28, baseType: !2579)
!2579 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !213, line: 98, baseType: !2448)
!2580 = !DIDerivedType(tag: DW_TAG_member, scope: !2573, file: !2574, line: 192, baseType: !2581, size: 192, offset: 64)
!2581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2573, file: !2574, line: 192, size: 192, elements: !2582)
!2582 = !{!2583, !2584}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2581, file: !2574, line: 193, baseType: !236, size: 128)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2581, file: !2574, line: 194, baseType: !836, size: 192, align: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2573, file: !2574, line: 199, baseType: !843, size: 256, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2573, file: !2574, line: 200, baseType: !2587, size: 64, offset: 512)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2574, line: 200, flags: DIFlagFwdDecl)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2573, file: !2574, line: 201, baseType: !181, size: 64, offset: 576)
!2590 = !DIDerivedType(tag: DW_TAG_member, scope: !2573, file: !2574, line: 202, baseType: !2591, size: 64, offset: 640)
!2591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2573, file: !2574, line: 202, size: 64, elements: !2592)
!2592 = !{!2593, !2594}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2591, file: !2574, line: 203, baseType: !548, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2591, file: !2574, line: 204, baseType: !548, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2573, file: !2574, line: 206, baseType: !548, size: 64, offset: 704)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2573, file: !2574, line: 207, baseType: !446, size: 32, offset: 768)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2573, file: !2574, line: 208, baseType: !454, size: 32, offset: 800)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2573, file: !2574, line: 209, baseType: !2599, size: 32, offset: 832)
!2599 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2574, line: 31, baseType: !568)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2573, file: !2574, line: 210, baseType: !332, size: 16, offset: 864)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2573, file: !2574, line: 211, baseType: !332, size: 16, offset: 880)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2573, file: !2574, line: 215, baseType: !999, size: 16, offset: 896)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2573, file: !2574, line: 222, baseType: !340, size: 64, offset: 960)
!2604 = !DIDerivedType(tag: DW_TAG_member, scope: !2573, file: !2574, line: 239, baseType: !2605, size: 320, offset: 1024)
!2605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2573, file: !2574, line: 239, size: 320, elements: !2606)
!2606 = !{!2607, !2634}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2605, file: !2574, line: 240, baseType: !2608, size: 320)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2574, line: 108, size: 320, elements: !2609)
!2609 = !{!2610, !2611, !2623, !2626, !2633}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2608, file: !2574, line: 110, baseType: !340, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, scope: !2608, file: !2574, line: 111, baseType: !2612, size: 64, offset: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2608, file: !2574, line: 111, size: 64, elements: !2613)
!2613 = !{!2614, !2622}
!2614 = !DIDerivedType(tag: DW_TAG_member, scope: !2612, file: !2574, line: 112, baseType: !2615, size: 64)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2612, file: !2574, line: 112, size: 64, elements: !2616)
!2616 = !{!2617, !2618}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2615, file: !2574, line: 114, baseType: !935, size: 16)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2615, file: !2574, line: 115, baseType: !2619, size: 48, offset: 16)
!2619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 48, elements: !2620)
!2620 = !{!2621}
!2621 = !DISubrange(count: 6)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2612, file: !2574, line: 121, baseType: !340, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2608, file: !2574, line: 123, baseType: !2624, size: 64, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2574, line: 96, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2608, file: !2574, line: 124, baseType: !2627, size: 64, offset: 192)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2574, line: 102, size: 192, elements: !2629)
!2629 = !{!2630, !2631, !2632}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2628, file: !2574, line: 103, baseType: !381, size: 128, align: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2628, file: !2574, line: 104, baseType: !1436, size: 32, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2628, file: !2574, line: 105, baseType: !212, size: 8, offset: 160)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2608, file: !2574, line: 125, baseType: !232, size: 64, offset: 256)
!2634 = !DIDerivedType(tag: DW_TAG_member, scope: !2605, file: !2574, line: 241, baseType: !2635, size: 320)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2605, file: !2574, line: 241, size: 320, elements: !2636)
!2636 = !{!2637, !2638, !2639, !2640, !2641}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2635, file: !2574, line: 242, baseType: !340, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2635, file: !2574, line: 243, baseType: !340, size: 64, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2635, file: !2574, line: 244, baseType: !2624, size: 64, offset: 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2635, file: !2574, line: 245, baseType: !2627, size: 64, offset: 192)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2635, file: !2574, line: 246, baseType: !290, size: 64, offset: 256)
!2642 = !DIDerivedType(tag: DW_TAG_member, scope: !2573, file: !2574, line: 254, baseType: !2643, size: 256, offset: 1344)
!2643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2573, file: !2574, line: 254, size: 256, elements: !2644)
!2644 = !{!2645, !2651}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2643, file: !2574, line: 255, baseType: !2646, size: 256)
!2646 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2574, line: 128, size: 256, elements: !2647)
!2647 = !{!2648, !2649}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2646, file: !2574, line: 129, baseType: !181, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2646, file: !2574, line: 130, baseType: !2650, size: 256)
!2650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 256, elements: !1321)
!2651 = !DIDerivedType(tag: DW_TAG_member, scope: !2643, file: !2574, line: 256, baseType: !2652, size: 256)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2643, file: !2574, line: 256, size: 256, elements: !2653)
!2653 = !{!2654, !2655}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2652, file: !2574, line: 258, baseType: !236, size: 128)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2652, file: !2574, line: 259, baseType: !2656, size: 128, offset: 128)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2657, line: 22, size: 128, elements: !2658)
!2657 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2658 = !{!2659, !2662}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2656, file: !2657, line: 23, baseType: !2660, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2657, line: 23, flags: DIFlagFwdDecl)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2656, file: !2657, line: 24, baseType: !340, size: 64, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2573, file: !2574, line: 274, baseType: !2664, size: 64, offset: 1600)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2574, line: 170, size: 192, elements: !2666)
!2666 = !{!2667, !2676, !2677}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2665, file: !2574, line: 171, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2574, line: 165, baseType: !2669)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!165, !2572, !2672, !2674, !2572}
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2625)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2646)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2665, file: !2574, line: 172, baseType: !2572, size: 64, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2665, file: !2574, line: 173, baseType: !2624, size: 64, offset: 128)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2546, file: !2547, line: 138, baseType: !2572, size: 64, offset: 768)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2546, file: !2547, line: 139, baseType: !2572, size: 64, offset: 832)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2546, file: !2547, line: 140, baseType: !2572, size: 64, offset: 896)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2546, file: !2547, line: 145, baseType: !2682, size: 64, offset: 960)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2684, line: 13, size: 896, elements: !2685)
!2684 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2685 = !{!2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2683, file: !2684, line: 14, baseType: !1436, size: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2683, file: !2684, line: 15, baseType: !823, size: 32, offset: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2683, file: !2684, line: 16, baseType: !823, size: 32, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2683, file: !2684, line: 21, baseType: !753, size: 64, offset: 128)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2683, file: !2684, line: 27, baseType: !340, size: 64, offset: 192)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2683, file: !2684, line: 28, baseType: !340, size: 64, offset: 256)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2683, file: !2684, line: 29, baseType: !753, size: 64, offset: 320)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2683, file: !2684, line: 32, baseType: !651, size: 128, offset: 384)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2683, file: !2684, line: 33, baseType: !446, size: 32, offset: 512)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2683, file: !2684, line: 37, baseType: !753, size: 64, offset: 576)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2683, file: !2684, line: 44, baseType: !2697, size: 256, offset: 640)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2698, line: 15, size: 256, elements: !2699)
!2698 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2699 = !{!2700, !2701, !2702, !2703, !2704, !2705, !2706}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2697, file: !2698, line: 16, baseType: !849)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2697, file: !2698, line: 18, baseType: !165, size: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2697, file: !2698, line: 19, baseType: !165, size: 32, offset: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2697, file: !2698, line: 20, baseType: !165, size: 32, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2697, file: !2698, line: 21, baseType: !165, size: 32, offset: 96)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2697, file: !2698, line: 22, baseType: !340, size: 64, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2697, file: !2698, line: 23, baseType: !340, size: 64, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2546, file: !2547, line: 146, baseType: !2708, size: 64, offset: 1024)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !2710, line: 56, size: 4160, elements: !2711)
!2710 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/lizy2001/genbc/linux")
!2711 = !{!2712, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2749, !2750, !2751, !2752, !2753, !2754, !2835, !2836, !2848}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !2709, file: !2710, line: 57, baseType: !2713, size: 576)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !2710, line: 23, size: 576, elements: !2714)
!2714 = !{!2715, !2716}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !2713, file: !2710, line: 24, baseType: !179, size: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, scope: !2713, file: !2710, line: 25, baseType: !2717, size: 512, offset: 64)
!2717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2713, file: !2710, line: 25, size: 512, elements: !2718)
!2718 = !{!2719, !2726}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !2717, file: !2710, line: 26, baseType: !2720, size: 480)
!2720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2721, size: 480, elements: !1891)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !2710, line: 17, size: 96, elements: !2722)
!2722 = !{!2723, !2724, !2725}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2721, file: !2710, line: 18, baseType: !179, size: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !2721, file: !2710, line: 19, baseType: !179, size: 32, offset: 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2721, file: !2710, line: 20, baseType: !179, size: 32, offset: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, scope: !2717, file: !2710, line: 27, baseType: !2727, size: 128)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2717, file: !2710, line: 27, size: 128, elements: !2728)
!2728 = !{!2729, !2731}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !2727, file: !2710, line: 28, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !2727, file: !2710, line: 29, baseType: !2730, size: 64, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !2709, file: !2710, line: 58, baseType: !2713, size: 576, offset: 576)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !2709, file: !2710, line: 59, baseType: !2713, size: 576, offset: 1152)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2709, file: !2710, line: 60, baseType: !823, size: 32, offset: 1728)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2709, file: !2710, line: 61, baseType: !2708, size: 64, offset: 1792)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2709, file: !2710, line: 62, baseType: !165, size: 32, offset: 1856)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2709, file: !2710, line: 63, baseType: !446, size: 32, offset: 1888)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !2709, file: !2710, line: 64, baseType: !454, size: 32, offset: 1920)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2709, file: !2710, line: 65, baseType: !2740, size: 192, offset: 1984)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !2741, line: 7, size: 192, elements: !2742)
!2741 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!2742 = !{!2743, !2744, !2748}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !2740, file: !2741, line: 8, baseType: !753, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2740, file: !2741, line: 9, baseType: !2745, size: 64, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2747)
!2747 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !2741, line: 5, flags: DIFlagFwdDecl)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !2740, file: !2741, line: 10, baseType: !7, size: 32, offset: 128)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2709, file: !2710, line: 66, baseType: !340, size: 64, offset: 2176)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !2709, file: !2710, line: 74, baseType: !236, size: 128, offset: 2240)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !2709, file: !2710, line: 75, baseType: !2572, size: 64, offset: 2368)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !2709, file: !2710, line: 76, baseType: !843, size: 256, offset: 2432)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2709, file: !2710, line: 83, baseType: !1107, size: 256, offset: 2688)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2709, file: !2710, line: 85, baseType: !2755, size: 768, offset: 2944)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !2756, line: 156, size: 768, elements: !2757)
!2756 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2757 = !{!2758, !2763}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !2755, file: !2756, line: 157, baseType: !2759, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!165, !2762}
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2755, file: !2756, line: 158, baseType: !2764, size: 704, offset: 64)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !2756, line: 150, size: 704, elements: !2765)
!2765 = !{!2766, !2834}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2764, file: !2756, line: 152, baseType: !2767, size: 640)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !2756, line: 131, size: 640, elements: !2768)
!2768 = !{!2769, !2802, !2803, !2804, !2824, !2825, !2827, !2833}
!2769 = !DIDerivedType(tag: DW_TAG_member, scope: !2767, file: !2756, line: 132, baseType: !2770, size: 192)
!2770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2767, file: !2756, line: 132, size: 192, elements: !2771)
!2771 = !{!2772, !2801}
!2772 = !DIDerivedType(tag: DW_TAG_member, scope: !2770, file: !2756, line: 133, baseType: !2773, size: 192)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2770, file: !2756, line: 133, size: 192, elements: !2774)
!2774 = !{!2775, !2798, !2799, !2800}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !2773, file: !2756, line: 134, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !2756, line: 112, size: 512, elements: !2778)
!2778 = !{!2779, !2780, !2781, !2782, !2783, !2784, !2790, !2796, !2797}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !2777, file: !2756, line: 113, baseType: !232, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2777, file: !2756, line: 114, baseType: !181, size: 64, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2777, file: !2756, line: 115, baseType: !165, size: 32, offset: 128)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2777, file: !2756, line: 116, baseType: !331, size: 16, offset: 160)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2777, file: !2756, line: 117, baseType: !2776, size: 64, offset: 192)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !2777, file: !2756, line: 118, baseType: !2785, size: 64, offset: 256)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !2756, line: 47, baseType: !2787)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!165, !2776, !165, !181, !2789, !771}
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2777, file: !2756, line: 119, baseType: !2791, size: 64, offset: 320)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !2756, line: 94, size: 192, elements: !2793)
!2793 = !{!2794, !2795}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2792, file: !2756, line: 95, baseType: !823, size: 32)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2792, file: !2756, line: 96, baseType: !1243, size: 128, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !2777, file: !2756, line: 120, baseType: !181, size: 64, offset: 384)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !2777, file: !2756, line: 121, baseType: !181, size: 64, offset: 448)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2773, file: !2756, line: 135, baseType: !165, size: 32, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2773, file: !2756, line: 136, baseType: !165, size: 32, offset: 96)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !2773, file: !2756, line: 137, baseType: !165, size: 32, offset: 128)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2770, file: !2756, line: 139, baseType: !381, size: 128, align: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !2767, file: !2756, line: 141, baseType: !2498, size: 64, offset: 192)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !2767, file: !2756, line: 142, baseType: !2776, size: 64, offset: 256)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2767, file: !2756, line: 143, baseType: !2805, size: 64, offset: 320)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !2756, line: 161, size: 960, elements: !2807)
!2807 = !{!2808, !2809, !2813, !2820}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !2806, file: !2756, line: 162, baseType: !2755, size: 768)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2806, file: !2756, line: 163, baseType: !2810, size: 64, offset: 768)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!2762, !2805}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !2806, file: !2756, line: 164, baseType: !2814, size: 64, offset: 832)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{null, !2817, !2776, !2818, !2819}
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !2806, file: !2756, line: 167, baseType: !2821, size: 64, offset: 896)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!165, !2817, !2776}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2767, file: !2756, line: 144, baseType: !2762, size: 64, offset: 384)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2767, file: !2756, line: 145, baseType: !2826, size: 64, offset: 448)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2767, file: !2756, line: 146, baseType: !2828, size: 64, offset: 512)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !2756, line: 124, size: 256, elements: !2830)
!2830 = !{!2831, !2832}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2829, file: !2756, line: 125, baseType: !836, size: 192, align: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2829, file: !2756, line: 126, baseType: !2817, size: 64, offset: 192)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2767, file: !2756, line: 147, baseType: !647, size: 64, offset: 576)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2764, file: !2756, line: 153, baseType: !832, size: 64, offset: 640)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !2709, file: !2710, line: 86, baseType: !2817, size: 64, offset: 3712)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2709, file: !2710, line: 88, baseType: !2837, size: 64, offset: 3776)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2710, line: 92, size: 576, elements: !2839)
!2839 = !{!2840, !2841, !2842, !2843, !2844}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2838, file: !2710, line: 93, baseType: !651, size: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2838, file: !2710, line: 94, baseType: !2708, size: 64, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2838, file: !2710, line: 95, baseType: !446, size: 32, offset: 192)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2838, file: !2710, line: 96, baseType: !165, size: 32, offset: 224)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !2838, file: !2710, line: 97, baseType: !2845, size: 320, offset: 256)
!2845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !823, size: 320, elements: !2846)
!2846 = !{!2847}
!2847 = !DISubrange(count: 10)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !2709, file: !2710, line: 89, baseType: !2849, size: 320, offset: 3840)
!2849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 320, elements: !2846)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2546, file: !2547, line: 147, baseType: !2851, size: 64, offset: 1088)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2547, line: 25, size: 64, elements: !2853)
!2853 = !{!2854, !2855, !2856}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2852, file: !2547, line: 26, baseType: !823, size: 32)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2852, file: !2547, line: 27, baseType: !165, size: 32, offset: 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2852, file: !2547, line: 28, baseType: !2857, offset: 64)
!2857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, elements: !2858)
!2858 = !{!2859}
!2859 = !DISubrange(count: 0)
!2860 = !DIDerivedType(tag: DW_TAG_member, scope: !2546, file: !2547, line: 149, baseType: !2861, size: 128, offset: 1152)
!2861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2546, file: !2547, line: 149, size: 128, elements: !2862)
!2862 = !{!2863, !2864}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2861, file: !2547, line: 150, baseType: !165, size: 32)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2861, file: !2547, line: 151, baseType: !381, size: 128, align: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2228, file: !2229, line: 926, baseType: !2544, size: 64, offset: 8576)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2228, file: !2229, line: 929, baseType: !2544, size: 64, offset: 8640)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2228, file: !2229, line: 933, baseType: !2572, size: 64, offset: 8704)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2228, file: !2229, line: 943, baseType: !2869, size: 128, offset: 8768)
!2869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 128, elements: !1763)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2228, file: !2229, line: 945, baseType: !2871, size: 64, offset: 8896)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2229, line: 49, flags: DIFlagFwdDecl)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2228, file: !2229, line: 956, baseType: !2874, size: 64, offset: 8960)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2229, line: 45, flags: DIFlagFwdDecl)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2228, file: !2229, line: 959, baseType: !2877, size: 64, offset: 9024)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2229, line: 959, flags: DIFlagFwdDecl)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2228, file: !2229, line: 962, baseType: !2880, size: 64, offset: 9088)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2229, line: 66, flags: DIFlagFwdDecl)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2228, file: !2229, line: 966, baseType: !2883, size: 64, offset: 9152)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2885, line: 31, size: 576, elements: !2886)
!2885 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!2886 = !{!2887, !2888, !2891, !2894, !2897, !2898, !2901, !2904, !2905}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2884, file: !2885, line: 32, baseType: !823, size: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2884, file: !2885, line: 33, baseType: !2889, size: 64, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2885, line: 9, flags: DIFlagFwdDecl)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2884, file: !2885, line: 34, baseType: !2892, size: 64, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2885, line: 10, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2884, file: !2885, line: 35, baseType: !2895, size: 64, offset: 192)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2885, line: 8, flags: DIFlagFwdDecl)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2884, file: !2885, line: 36, baseType: !2491, size: 64, offset: 256)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2884, file: !2885, line: 37, baseType: !2899, size: 64, offset: 320)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !2574, line: 34, flags: DIFlagFwdDecl)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2884, file: !2885, line: 38, baseType: !2902, size: 64, offset: 384)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2885, line: 38, flags: DIFlagFwdDecl)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2884, file: !2885, line: 39, baseType: !2902, size: 64, offset: 448)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2884, file: !2885, line: 40, baseType: !2906, size: 64, offset: 512)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2908, line: 856, size: 448, elements: !2909)
!2908 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/lizy2001/genbc/linux")
!2909 = !{!2910, !2911, !2912, !2913, !2914}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2907, file: !2908, line: 857, baseType: !1436, size: 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2907, file: !2908, line: 858, baseType: !2740, size: 192, offset: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2907, file: !2908, line: 859, baseType: !2708, size: 64, offset: 256)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2907, file: !2908, line: 860, baseType: !2837, size: 64, offset: 320)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !2907, file: !2908, line: 861, baseType: !2915, size: 64, offset: 384)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2917, line: 16, flags: DIFlagFwdDecl)
!2917 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/lizy2001/genbc/linux")
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2228, file: !2229, line: 969, baseType: !2919, size: 64, offset: 9216)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2921, line: 82, size: 7296, elements: !2922)
!2921 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2922 = !{!2923, !2924, !2925, !2926, !2927, !2928, !2929, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2958, !2967, !2968, !2970, !2971, !2972, !2975, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3005, !3006, !3013, !3014, !3015, !3016, !3017, !3018}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2920, file: !2921, line: 83, baseType: !1436, size: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2920, file: !2921, line: 84, baseType: !823, size: 32, offset: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2920, file: !2921, line: 85, baseType: !165, size: 32, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2920, file: !2921, line: 86, baseType: !236, size: 128, offset: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2920, file: !2921, line: 88, baseType: !1243, size: 128, offset: 256)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2920, file: !2921, line: 91, baseType: !2227, size: 64, offset: 384)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2920, file: !2921, line: 94, baseType: !2930, size: 192, offset: 448)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2931, line: 30, size: 192, elements: !2932)
!2931 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2932 = !{!2933, !2934}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2930, file: !2931, line: 31, baseType: !236, size: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2930, file: !2931, line: 32, baseType: !2935, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2936, line: 25, baseType: !2937)
!2936 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2936, line: 23, size: 64, elements: !2938)
!2938 = !{!2939}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2937, file: !2936, line: 24, baseType: !2374, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2920, file: !2921, line: 97, baseType: !647, size: 64, offset: 640)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2920, file: !2921, line: 100, baseType: !165, size: 32, offset: 704)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2920, file: !2921, line: 106, baseType: !165, size: 32, offset: 736)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2920, file: !2921, line: 107, baseType: !2227, size: 64, offset: 768)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2920, file: !2921, line: 110, baseType: !165, size: 32, offset: 832)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2920, file: !2921, line: 111, baseType: !7, size: 32, offset: 864)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2920, file: !2921, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2920, file: !2921, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2920, file: !2921, line: 128, baseType: !165, size: 32, offset: 928)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2920, file: !2921, line: 129, baseType: !236, size: 128, offset: 960)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2920, file: !2921, line: 132, baseType: !2298, size: 512, offset: 1088)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2920, file: !2921, line: 133, baseType: !2306, size: 64, offset: 1600)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2920, file: !2921, line: 140, baseType: !2953, size: 256, offset: 1664)
!2953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2954, size: 256, elements: !1413)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2921, line: 38, size: 128, elements: !2955)
!2955 = !{!2956, !2957}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2954, file: !2921, line: 39, baseType: !433, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2954, file: !2921, line: 40, baseType: !433, size: 64, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2920, file: !2921, line: 146, baseType: !2959, size: 192, offset: 1920)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2921, line: 66, size: 192, elements: !2960)
!2960 = !{!2961}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2959, file: !2921, line: 67, baseType: !2962, size: 192)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2921, line: 47, size: 192, elements: !2963)
!2963 = !{!2964, !2965, !2966}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2962, file: !2921, line: 48, baseType: !755, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2962, file: !2921, line: 49, baseType: !755, size: 64, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2962, file: !2921, line: 50, baseType: !755, size: 64, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2920, file: !2921, line: 150, baseType: !2527, size: 640, offset: 2112)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2920, file: !2921, line: 153, baseType: !2969, size: 256, offset: 2752)
!2969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2474, size: 256, elements: !1321)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2920, file: !2921, line: 159, baseType: !2474, size: 64, offset: 3008)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2920, file: !2921, line: 162, baseType: !165, size: 32, offset: 3072)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2920, file: !2921, line: 164, baseType: !2973, size: 64, offset: 3136)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2921, line: 164, flags: DIFlagFwdDecl)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2920, file: !2921, line: 175, baseType: !2976, size: 32, offset: 3200)
!2976 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !404, line: 805, baseType: !2977)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !404, line: 798, size: 32, elements: !2978)
!2978 = !{!2979, !2980}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2977, file: !404, line: 803, baseType: !403, size: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2977, file: !404, line: 804, baseType: !249, offset: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2920, file: !2921, line: 176, baseType: !433, size: 64, offset: 3264)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2920, file: !2921, line: 176, baseType: !433, size: 64, offset: 3328)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2920, file: !2921, line: 176, baseType: !433, size: 64, offset: 3392)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2920, file: !2921, line: 176, baseType: !433, size: 64, offset: 3456)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2920, file: !2921, line: 177, baseType: !433, size: 64, offset: 3520)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2920, file: !2921, line: 178, baseType: !433, size: 64, offset: 3584)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2920, file: !2921, line: 179, baseType: !2515, size: 128, offset: 3648)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2920, file: !2921, line: 180, baseType: !340, size: 64, offset: 3776)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2920, file: !2921, line: 180, baseType: !340, size: 64, offset: 3840)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2920, file: !2921, line: 180, baseType: !340, size: 64, offset: 3904)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2920, file: !2921, line: 180, baseType: !340, size: 64, offset: 3968)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2920, file: !2921, line: 181, baseType: !340, size: 64, offset: 4032)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2920, file: !2921, line: 181, baseType: !340, size: 64, offset: 4096)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2920, file: !2921, line: 181, baseType: !340, size: 64, offset: 4160)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2920, file: !2921, line: 181, baseType: !340, size: 64, offset: 4224)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2920, file: !2921, line: 182, baseType: !340, size: 64, offset: 4288)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2920, file: !2921, line: 182, baseType: !340, size: 64, offset: 4352)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2920, file: !2921, line: 182, baseType: !340, size: 64, offset: 4416)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2920, file: !2921, line: 182, baseType: !340, size: 64, offset: 4480)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2920, file: !2921, line: 183, baseType: !340, size: 64, offset: 4544)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2920, file: !2921, line: 183, baseType: !340, size: 64, offset: 4608)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2920, file: !2921, line: 184, baseType: !3003, offset: 4672)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3004, line: 12, elements: !263)
!3004 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2920, file: !2921, line: 192, baseType: !435, size: 64, offset: 4672)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2920, file: !2921, line: 203, baseType: !3007, size: 2048, offset: 4736)
!3007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3008, size: 2048, elements: !1763)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3009, line: 43, size: 128, elements: !3010)
!3009 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3010 = !{!3011, !3012}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3008, file: !3009, line: 44, baseType: !339, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3008, file: !3009, line: 45, baseType: !339, size: 64, offset: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2920, file: !2921, line: 220, baseType: !212, size: 8, offset: 6784)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2920, file: !2921, line: 221, baseType: !999, size: 16, offset: 6800)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2920, file: !2921, line: 222, baseType: !999, size: 16, offset: 6816)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2920, file: !2921, line: 224, baseType: !1994, size: 64, offset: 6848)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2920, file: !2921, line: 227, baseType: !749, size: 192, offset: 6912)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2920, file: !2921, line: 233, baseType: !749, size: 192, offset: 7104)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2228, file: !2229, line: 970, baseType: !3020, size: 64, offset: 9280)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2921, line: 20, size: 16576, elements: !3022)
!3022 = !{!3023, !3024, !3025, !3026}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3021, file: !2921, line: 21, baseType: !249)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3021, file: !2921, line: 22, baseType: !1436, size: 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3021, file: !2921, line: 23, baseType: !1243, size: 128, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3021, file: !2921, line: 24, baseType: !3027, size: 16384, offset: 192)
!3027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3028, size: 16384, elements: !295)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2931, line: 49, size: 256, elements: !3029)
!3029 = !{!3030}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3028, file: !2931, line: 50, baseType: !3031, size: 256)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2931, line: 35, size: 256, elements: !3032)
!3032 = !{!3033, !3040, !3041, !3047}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3031, file: !2931, line: 37, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3035, line: 19, baseType: !3036)
!3035 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3035, line: 18, baseType: !3038)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{null, !165}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3031, file: !2931, line: 38, baseType: !340, size: 64, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3031, file: !2931, line: 44, baseType: !3042, size: 64, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3035, line: 22, baseType: !3043)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3035, line: 21, baseType: !3045)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{null}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3031, file: !2931, line: 46, baseType: !2935, size: 64, offset: 192)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2228, file: !2229, line: 971, baseType: !2935, size: 64, offset: 9344)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2228, file: !2229, line: 972, baseType: !2935, size: 64, offset: 9408)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2228, file: !2229, line: 974, baseType: !2935, size: 64, offset: 9472)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2228, file: !2229, line: 975, baseType: !2930, size: 192, offset: 9536)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2228, file: !2229, line: 976, baseType: !340, size: 64, offset: 9728)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2228, file: !2229, line: 977, baseType: !337, size: 64, offset: 9792)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2228, file: !2229, line: 978, baseType: !7, size: 32, offset: 9856)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2228, file: !2229, line: 980, baseType: !384, size: 64, offset: 9920)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2228, file: !2229, line: 989, baseType: !3057, size: 128, offset: 9984)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3058, line: 35, size: 128, elements: !3059)
!3058 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3059 = !{!3060, !3061, !3062}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3057, file: !3058, line: 36, baseType: !165, size: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3057, file: !3058, line: 37, baseType: !823, size: 32, offset: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3057, file: !3058, line: 38, baseType: !3063, size: 64, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3058, line: 23, flags: DIFlagFwdDecl)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2228, file: !2229, line: 992, baseType: !433, size: 64, offset: 10112)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2228, file: !2229, line: 993, baseType: !433, size: 64, offset: 10176)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2228, file: !2229, line: 996, baseType: !249, offset: 10240)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2228, file: !2229, line: 999, baseType: !849, offset: 10240)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2228, file: !2229, line: 1001, baseType: !3070, size: 64, offset: 10240)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2229, line: 636, size: 64, elements: !3071)
!3071 = !{!3072}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3070, file: !2229, line: 637, baseType: !3073, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2228, file: !2229, line: 1005, baseType: !828, size: 128, offset: 10304)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2228, file: !2229, line: 1007, baseType: !2227, size: 64, offset: 10432)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2228, file: !2229, line: 1009, baseType: !3077, size: 64, offset: 10496)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2229, line: 1009, flags: DIFlagFwdDecl)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2228, file: !2229, line: 1043, baseType: !181, size: 64, offset: 10560)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2228, file: !2229, line: 1046, baseType: !3081, size: 64, offset: 10624)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2228, file: !2229, line: 1050, baseType: !3083, size: 64, offset: 10688)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !19, line: 1236, size: 320, elements: !3085)
!3085 = !{!3086, !3087, !3088, !3089, !3090}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3084, file: !19, line: 1237, baseType: !236, size: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3084, file: !19, line: 1238, baseType: !236, size: 128, offset: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3084, file: !19, line: 1239, baseType: !332, size: 16, offset: 256)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3084, file: !19, line: 1240, baseType: !212, size: 8, offset: 272)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "nowait", scope: !3084, file: !19, line: 1241, baseType: !212, size: 8, offset: 280)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2228, file: !2229, line: 1054, baseType: !3092, size: 64, offset: 10752)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !995, line: 131, size: 64, elements: !3094)
!3094 = !{!3095}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed_slab", scope: !3093, file: !995, line: 132, baseType: !340, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !2228, file: !2229, line: 1056, baseType: !1617, size: 64, offset: 10816)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2228, file: !2229, line: 1058, baseType: !1388, size: 64, offset: 10880)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2228, file: !2229, line: 1061, baseType: !3099, size: 64, offset: 10944)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2229, line: 43, flags: DIFlagFwdDecl)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2228, file: !2229, line: 1064, baseType: !340, size: 64, offset: 11008)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2228, file: !2229, line: 1065, baseType: !3103, size: 64, offset: 11072)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2931, line: 14, baseType: !3105)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2931, line: 12, size: 384, elements: !3106)
!3106 = !{!3107}
!3107 = !DIDerivedType(tag: DW_TAG_member, scope: !3105, file: !2931, line: 13, baseType: !3108, size: 384)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3105, file: !2931, line: 13, size: 384, elements: !3109)
!3109 = !{!3110, !3111, !3112, !3113}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3108, file: !2931, line: 13, baseType: !165, size: 32)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3108, file: !2931, line: 13, baseType: !165, size: 32, offset: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3108, file: !2931, line: 13, baseType: !165, size: 32, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3108, file: !2931, line: 13, baseType: !3114, size: 256, offset: 128)
!3114 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3115, line: 32, size: 256, elements: !3116)
!3115 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3116 = !{!3117, !3122, !3135, !3141, !3150, !3170, !3175}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3114, file: !3115, line: 37, baseType: !3118, size: 64)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3114, file: !3115, line: 34, size: 64, elements: !3119)
!3119 = !{!3120, !3121}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3118, file: !3115, line: 35, baseType: !2463, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3118, file: !3115, line: 36, baseType: !452, size: 32, offset: 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3114, file: !3115, line: 45, baseType: !3123, size: 192)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3114, file: !3115, line: 40, size: 192, elements: !3124)
!3124 = !{!3125, !3127, !3128, !3134}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3123, file: !3115, line: 41, baseType: !3126, size: 32)
!3126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !323, line: 95, baseType: !165)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3123, file: !3115, line: 42, baseType: !165, size: 32, offset: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3123, file: !3115, line: 43, baseType: !3129, size: 64, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3115, line: 11, baseType: !3130)
!3130 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3115, line: 8, size: 64, elements: !3131)
!3131 = !{!3132, !3133}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3130, file: !3115, line: 9, baseType: !165, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3130, file: !3115, line: 10, baseType: !181, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3123, file: !3115, line: 44, baseType: !165, size: 32, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3114, file: !3115, line: 52, baseType: !3136, size: 128)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3114, file: !3115, line: 48, size: 128, elements: !3137)
!3137 = !{!3138, !3139, !3140}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3136, file: !3115, line: 49, baseType: !2463, size: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3136, file: !3115, line: 50, baseType: !452, size: 32, offset: 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3136, file: !3115, line: 51, baseType: !3129, size: 64, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3114, file: !3115, line: 61, baseType: !3142, size: 256)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3114, file: !3115, line: 55, size: 256, elements: !3143)
!3143 = !{!3144, !3145, !3146, !3147, !3149}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3142, file: !3115, line: 56, baseType: !2463, size: 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3142, file: !3115, line: 57, baseType: !452, size: 32, offset: 32)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3142, file: !3115, line: 58, baseType: !165, size: 32, offset: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3142, file: !3115, line: 59, baseType: !3148, size: 64, offset: 128)
!3148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !323, line: 94, baseType: !324)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3142, file: !3115, line: 60, baseType: !3148, size: 64, offset: 192)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3114, file: !3115, line: 95, baseType: !3151, size: 256)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3114, file: !3115, line: 64, size: 256, elements: !3152)
!3152 = !{!3153, !3154}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3151, file: !3115, line: 65, baseType: !181, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, scope: !3151, file: !3115, line: 77, baseType: !3155, size: 192, offset: 64)
!3155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3151, file: !3115, line: 77, size: 192, elements: !3156)
!3156 = !{!3157, !3158, !3165}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3155, file: !3115, line: 82, baseType: !999, size: 16)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3155, file: !3115, line: 88, baseType: !3159, size: 192)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3155, file: !3115, line: 84, size: 192, elements: !3160)
!3160 = !{!3161, !3163, !3164}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3159, file: !3115, line: 85, baseType: !3162, size: 64)
!3162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 64, elements: !2336)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3159, file: !3115, line: 86, baseType: !181, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3159, file: !3115, line: 87, baseType: !181, size: 64, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3155, file: !3115, line: 93, baseType: !3166, size: 96)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3155, file: !3115, line: 90, size: 96, elements: !3167)
!3167 = !{!3168, !3169}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3166, file: !3115, line: 91, baseType: !3162, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3166, file: !3115, line: 92, baseType: !180, size: 32, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3114, file: !3115, line: 101, baseType: !3171, size: 128)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3114, file: !3115, line: 98, size: 128, elements: !3172)
!3172 = !{!3173, !3174}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3171, file: !3115, line: 99, baseType: !325, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3171, file: !3115, line: 100, baseType: !165, size: 32, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3114, file: !3115, line: 108, baseType: !3176, size: 128)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3114, file: !3115, line: 104, size: 128, elements: !3177)
!3177 = !{!3178, !3179, !3180}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3176, file: !3115, line: 105, baseType: !181, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3176, file: !3115, line: 106, baseType: !165, size: 32, offset: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3176, file: !3115, line: 107, baseType: !7, size: 32, offset: 96)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2228, file: !2229, line: 1067, baseType: !3003, offset: 11136)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2228, file: !2229, line: 1099, baseType: !3183, size: 64, offset: 11136)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2229, line: 56, flags: DIFlagFwdDecl)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2228, file: !2229, line: 1103, baseType: !236, size: 128, offset: 11200)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2228, file: !2229, line: 1104, baseType: !3187, size: 64, offset: 11328)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2229, line: 46, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2228, file: !2229, line: 1105, baseType: !749, size: 192, offset: 11392)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2228, file: !2229, line: 1106, baseType: !7, size: 32, offset: 11584)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2228, file: !2229, line: 1109, baseType: !3192, size: 128, offset: 11648)
!3192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3193, size: 128, elements: !1413)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2229, line: 51, flags: DIFlagFwdDecl)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2228, file: !2229, line: 1110, baseType: !749, size: 192, offset: 11776)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2228, file: !2229, line: 1111, baseType: !236, size: 128, offset: 11968)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2228, file: !2229, line: 1173, baseType: !3198, size: 64, offset: 12096)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3200, line: 62, size: 256, align: 256, elements: !3201)
!3200 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3201 = !{!3202, !3203, !3204, !3209}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3199, file: !3200, line: 75, baseType: !180, size: 32)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3199, file: !3200, line: 90, baseType: !180, size: 32, offset: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3199, file: !3200, line: 124, baseType: !3205, size: 64, offset: 64)
!3205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3199, file: !3200, line: 109, size: 64, elements: !3206)
!3206 = !{!3207, !3208}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3205, file: !3200, line: 110, baseType: !434, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3205, file: !3200, line: 112, baseType: !434, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3199, file: !3200, line: 144, baseType: !180, size: 32, offset: 128)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2228, file: !2229, line: 1174, baseType: !179, size: 32, offset: 12160)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2228, file: !2229, line: 1179, baseType: !340, size: 64, offset: 12224)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2228, file: !2229, line: 1182, baseType: !3213, size: 128, offset: 12288)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2171, line: 76, size: 128, elements: !3214)
!3214 = !{!3215, !3220, !3221}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3213, file: !2171, line: 85, baseType: !3216, size: 64)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3217, line: 7, size: 64, elements: !3218)
!3217 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3218 = !{!3219}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3216, file: !3217, line: 12, baseType: !2371, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3213, file: !2171, line: 88, baseType: !212, size: 8, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3213, file: !2171, line: 95, baseType: !212, size: 8, offset: 72)
!3222 = !DIDerivedType(tag: DW_TAG_member, scope: !2228, file: !2229, line: 1184, baseType: !3223, size: 128, offset: 12416)
!3223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2228, file: !2229, line: 1184, size: 128, elements: !3224)
!3224 = !{!3225, !3226}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3223, file: !2229, line: 1185, baseType: !1436, size: 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3223, file: !2229, line: 1186, baseType: !381, size: 128, align: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2228, file: !2229, line: 1190, baseType: !3228, size: 64, offset: 12544)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2229, line: 53, flags: DIFlagFwdDecl)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2228, file: !2229, line: 1192, baseType: !3231, size: 128, offset: 12608)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2171, line: 64, size: 128, elements: !3232)
!3232 = !{!3233, !3234, !3235}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3231, file: !2171, line: 65, baseType: !796, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3231, file: !2171, line: 67, baseType: !180, size: 32, offset: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3231, file: !2171, line: 68, baseType: !180, size: 32, offset: 96)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2228, file: !2229, line: 1206, baseType: !165, size: 32, offset: 12736)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2228, file: !2229, line: 1207, baseType: !165, size: 32, offset: 12768)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2228, file: !2229, line: 1209, baseType: !340, size: 64, offset: 12800)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2228, file: !2229, line: 1219, baseType: !433, size: 64, offset: 12864)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2228, file: !2229, line: 1220, baseType: !433, size: 64, offset: 12928)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2228, file: !2229, line: 1317, baseType: !165, size: 32, offset: 12992)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2228, file: !2229, line: 1319, baseType: !2227, size: 64, offset: 13056)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2228, file: !2229, line: 1322, baseType: !3244, size: 64, offset: 13120)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3246, line: 56, size: 512, elements: !3247)
!3246 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3247 = !{!3248, !3249, !3250, !3251, !3252, !3253, !3254, !3256}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3245, file: !3246, line: 57, baseType: !3244, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3245, file: !3246, line: 58, baseType: !181, size: 64, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3245, file: !3246, line: 59, baseType: !340, size: 64, offset: 128)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3245, file: !3246, line: 60, baseType: !340, size: 64, offset: 192)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3245, file: !3246, line: 61, baseType: !896, size: 64, offset: 256)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3245, file: !3246, line: 62, baseType: !7, size: 32, offset: 320)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3245, file: !3246, line: 63, baseType: !3255, size: 64, offset: 384)
!3255 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !213, line: 153, baseType: !433)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3245, file: !3246, line: 64, baseType: !221, size: 64, offset: 448)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2228, file: !2229, line: 1326, baseType: !1436, size: 32, offset: 13184)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2228, file: !2229, line: 1342, baseType: !181, size: 64, offset: 13248)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2228, file: !2229, line: 1343, baseType: !434, size: 64, offset: 13312)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2228, file: !2229, line: 1344, baseType: !433, size: 64, offset: 13376)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2228, file: !2229, line: 1345, baseType: !434, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2228, file: !2229, line: 1346, baseType: !434, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2228, file: !2229, line: 1347, baseType: !434, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2228, file: !2229, line: 1348, baseType: !381, size: 128, align: 64, offset: 13504)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2228, file: !2229, line: 1358, baseType: !3266, size: 34816, offset: 13824)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3267, line: 485, size: 34816, elements: !3268)
!3267 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3268 = !{!3269, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3298, !3299, !3300, !3301, !3302, !3303, !3306, !3307, !3308}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3266, file: !3267, line: 487, baseType: !3270, size: 192)
!3270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3271, size: 192, elements: !291)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3272, line: 16, size: 64, elements: !3273)
!3272 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3273 = !{!3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3271, file: !3272, line: 17, baseType: !935, size: 16)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3271, file: !3272, line: 18, baseType: !935, size: 16, offset: 16)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3271, file: !3272, line: 19, baseType: !935, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3271, file: !3272, line: 19, baseType: !935, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3271, file: !3272, line: 19, baseType: !935, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3271, file: !3272, line: 19, baseType: !935, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3271, file: !3272, line: 19, baseType: !935, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3271, file: !3272, line: 20, baseType: !935, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3271, file: !3272, line: 20, baseType: !935, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3271, file: !3272, line: 20, baseType: !935, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3271, file: !3272, line: 20, baseType: !935, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3271, file: !3272, line: 20, baseType: !935, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3271, file: !3272, line: 20, baseType: !935, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3266, file: !3267, line: 491, baseType: !340, size: 64, offset: 192)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3266, file: !3267, line: 495, baseType: !332, size: 16, offset: 256)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3266, file: !3267, line: 496, baseType: !332, size: 16, offset: 272)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3266, file: !3267, line: 497, baseType: !332, size: 16, offset: 288)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3266, file: !3267, line: 498, baseType: !332, size: 16, offset: 304)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3266, file: !3267, line: 502, baseType: !340, size: 64, offset: 320)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3266, file: !3267, line: 503, baseType: !340, size: 64, offset: 384)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3266, file: !3267, line: 514, baseType: !3295, size: 256, offset: 448)
!3295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3296, size: 256, elements: !1321)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3267, line: 483, flags: DIFlagFwdDecl)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3266, file: !3267, line: 516, baseType: !340, size: 64, offset: 704)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3266, file: !3267, line: 518, baseType: !340, size: 64, offset: 768)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3266, file: !3267, line: 520, baseType: !340, size: 64, offset: 832)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3266, file: !3267, line: 521, baseType: !340, size: 64, offset: 896)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3266, file: !3267, line: 522, baseType: !340, size: 64, offset: 960)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3266, file: !3267, line: 528, baseType: !3304, size: 64, offset: 1024)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3267, line: 10, flags: DIFlagFwdDecl)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3266, file: !3267, line: 535, baseType: !340, size: 64, offset: 1088)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3266, file: !3267, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3266, file: !3267, line: 540, baseType: !3309, size: 33280, offset: 1536)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3310, line: 317, size: 33280, elements: !3311)
!3310 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3311 = !{!3312, !3313, !3314}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3309, file: !3310, line: 330, baseType: !7, size: 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3309, file: !3310, line: 337, baseType: !340, size: 64, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3309, file: !3310, line: 348, baseType: !3315, size: 32768, offset: 512)
!3315 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3310, line: 304, size: 32768, elements: !3316)
!3316 = !{!3317, !3332, !3369, !3419, !3432}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3315, file: !3310, line: 305, baseType: !3318, size: 896)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3310, line: 12, size: 896, elements: !3319)
!3319 = !{!3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3331}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3318, file: !3310, line: 13, baseType: !179, size: 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3318, file: !3310, line: 14, baseType: !179, size: 32, offset: 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3318, file: !3310, line: 15, baseType: !179, size: 32, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3318, file: !3310, line: 16, baseType: !179, size: 32, offset: 96)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3318, file: !3310, line: 17, baseType: !179, size: 32, offset: 128)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3318, file: !3310, line: 18, baseType: !179, size: 32, offset: 160)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3318, file: !3310, line: 19, baseType: !179, size: 32, offset: 192)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3318, file: !3310, line: 22, baseType: !3328, size: 640, offset: 224)
!3328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 640, elements: !3329)
!3329 = !{!3330}
!3330 = !DISubrange(count: 20)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3318, file: !3310, line: 25, baseType: !179, size: 32, offset: 864)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3315, file: !3310, line: 306, baseType: !3333, size: 4096, align: 128)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3310, line: 34, size: 4096, align: 128, elements: !3334)
!3334 = !{!3335, !3336, !3337, !3338, !3339, !3354, !3355, !3356, !3358, !3360, !3364}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3333, file: !3310, line: 35, baseType: !935, size: 16)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3333, file: !3310, line: 36, baseType: !935, size: 16, offset: 16)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3333, file: !3310, line: 37, baseType: !935, size: 16, offset: 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3333, file: !3310, line: 38, baseType: !935, size: 16, offset: 48)
!3339 = !DIDerivedType(tag: DW_TAG_member, scope: !3333, file: !3310, line: 39, baseType: !3340, size: 128, offset: 64)
!3340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3333, file: !3310, line: 39, size: 128, elements: !3341)
!3341 = !{!3342, !3347}
!3342 = !DIDerivedType(tag: DW_TAG_member, scope: !3340, file: !3310, line: 40, baseType: !3343, size: 128)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3340, file: !3310, line: 40, size: 128, elements: !3344)
!3344 = !{!3345, !3346}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3343, file: !3310, line: 41, baseType: !433, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3343, file: !3310, line: 42, baseType: !433, size: 64, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, scope: !3340, file: !3310, line: 44, baseType: !3348, size: 128)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3340, file: !3310, line: 44, size: 128, elements: !3349)
!3349 = !{!3350, !3351, !3352, !3353}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3348, file: !3310, line: 45, baseType: !179, size: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3348, file: !3310, line: 46, baseType: !179, size: 32, offset: 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3348, file: !3310, line: 47, baseType: !179, size: 32, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3348, file: !3310, line: 48, baseType: !179, size: 32, offset: 96)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3333, file: !3310, line: 51, baseType: !179, size: 32, offset: 192)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3333, file: !3310, line: 52, baseType: !179, size: 32, offset: 224)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3333, file: !3310, line: 55, baseType: !3357, size: 1024, offset: 256)
!3357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 1024, elements: !1132)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3333, file: !3310, line: 58, baseType: !3359, size: 2048, offset: 1280)
!3359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 2048, elements: !295)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3333, file: !3310, line: 60, baseType: !3361, size: 384, offset: 3328)
!3361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 384, elements: !3362)
!3362 = !{!3363}
!3363 = !DISubrange(count: 12)
!3364 = !DIDerivedType(tag: DW_TAG_member, scope: !3333, file: !3310, line: 62, baseType: !3365, size: 384, offset: 3712)
!3365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3333, file: !3310, line: 62, size: 384, elements: !3366)
!3366 = !{!3367, !3368}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3365, file: !3310, line: 63, baseType: !3361, size: 384)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3365, file: !3310, line: 64, baseType: !3361, size: 384)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3315, file: !3310, line: 307, baseType: !3370, size: 1088)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3310, line: 79, size: 1088, elements: !3371)
!3371 = !{!3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3418}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3370, file: !3310, line: 80, baseType: !179, size: 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3370, file: !3310, line: 81, baseType: !179, size: 32, offset: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3370, file: !3310, line: 82, baseType: !179, size: 32, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3370, file: !3310, line: 83, baseType: !179, size: 32, offset: 96)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3370, file: !3310, line: 84, baseType: !179, size: 32, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3370, file: !3310, line: 85, baseType: !179, size: 32, offset: 160)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3370, file: !3310, line: 86, baseType: !179, size: 32, offset: 192)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3370, file: !3310, line: 88, baseType: !3328, size: 640, offset: 224)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3370, file: !3310, line: 89, baseType: !172, size: 8, offset: 864)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3370, file: !3310, line: 90, baseType: !172, size: 8, offset: 872)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3370, file: !3310, line: 91, baseType: !172, size: 8, offset: 880)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3370, file: !3310, line: 92, baseType: !172, size: 8, offset: 888)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3370, file: !3310, line: 93, baseType: !172, size: 8, offset: 896)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3370, file: !3310, line: 94, baseType: !172, size: 8, offset: 904)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3370, file: !3310, line: 95, baseType: !3387, size: 64, offset: 960)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3389, line: 11, size: 128, elements: !3390)
!3389 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3390 = !{!3391, !3392}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3388, file: !3389, line: 12, baseType: !325, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3388, file: !3389, line: 13, baseType: !3393, size: 64, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3395, line: 56, size: 1344, elements: !3396)
!3395 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3396 = !{!3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3394, file: !3395, line: 61, baseType: !340, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3394, file: !3395, line: 62, baseType: !340, size: 64, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3394, file: !3395, line: 63, baseType: !340, size: 64, offset: 128)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3394, file: !3395, line: 64, baseType: !340, size: 64, offset: 192)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3394, file: !3395, line: 65, baseType: !340, size: 64, offset: 256)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3394, file: !3395, line: 66, baseType: !340, size: 64, offset: 320)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3394, file: !3395, line: 68, baseType: !340, size: 64, offset: 384)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3394, file: !3395, line: 69, baseType: !340, size: 64, offset: 448)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3394, file: !3395, line: 70, baseType: !340, size: 64, offset: 512)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3394, file: !3395, line: 71, baseType: !340, size: 64, offset: 576)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3394, file: !3395, line: 72, baseType: !340, size: 64, offset: 640)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3394, file: !3395, line: 73, baseType: !340, size: 64, offset: 704)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3394, file: !3395, line: 74, baseType: !340, size: 64, offset: 768)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3394, file: !3395, line: 75, baseType: !340, size: 64, offset: 832)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3394, file: !3395, line: 76, baseType: !340, size: 64, offset: 896)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3394, file: !3395, line: 81, baseType: !340, size: 64, offset: 960)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3394, file: !3395, line: 83, baseType: !340, size: 64, offset: 1024)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3394, file: !3395, line: 84, baseType: !340, size: 64, offset: 1088)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3394, file: !3395, line: 85, baseType: !340, size: 64, offset: 1152)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3394, file: !3395, line: 86, baseType: !340, size: 64, offset: 1216)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3394, file: !3395, line: 87, baseType: !340, size: 64, offset: 1280)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3370, file: !3310, line: 96, baseType: !179, size: 32, offset: 1024)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3315, file: !3310, line: 308, baseType: !3420, size: 4608, align: 512)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3310, line: 289, size: 4608, align: 512, elements: !3421)
!3421 = !{!3422, !3423, !3430}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3420, file: !3310, line: 290, baseType: !3333, size: 4096, align: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3420, file: !3310, line: 291, baseType: !3424, size: 512, offset: 4096)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3310, line: 268, size: 512, elements: !3425)
!3425 = !{!3426, !3427, !3428}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3424, file: !3310, line: 269, baseType: !433, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3424, file: !3310, line: 270, baseType: !433, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3424, file: !3310, line: 271, baseType: !3429, size: 384, offset: 128)
!3429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 384, elements: !2620)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3420, file: !3310, line: 292, baseType: !3431, offset: 4608)
!3431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, elements: !2858)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3315, file: !3310, line: 309, baseType: !3433, size: 32768)
!3433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 32768, elements: !3434)
!3434 = !{!3435}
!3435 = !DISubrange(count: 4096)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2224, file: !798, line: 378, baseType: !3437, size: 64, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2220, file: !798, line: 384, baseType: !2499, size: 192, offset: 192)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1998, file: !798, line: 500, baseType: !249, offset: 6656)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1998, file: !798, line: 501, baseType: !3441, size: 64, offset: 6656)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !798, line: 387, flags: DIFlagFwdDecl)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1998, file: !798, line: 516, baseType: !2708, size: 64, offset: 6720)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1998, file: !798, line: 519, baseType: !368, size: 64, offset: 6784)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1998, file: !798, line: 521, baseType: !3446, size: 64, offset: 6848)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !798, line: 521, flags: DIFlagFwdDecl)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1998, file: !798, line: 545, baseType: !823, size: 32, offset: 6912)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1998, file: !798, line: 548, baseType: !212, size: 8, offset: 6944)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1998, file: !798, line: 550, baseType: !3451, offset: 6952)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !3452, line: 142, elements: !263)
!3452 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1998, file: !798, line: 554, baseType: !1107, size: 256, offset: 6976)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1998, file: !798, line: 557, baseType: !179, size: 32, offset: 7232)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1995, file: !798, line: 565, baseType: !3456, offset: 7296)
!3456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, elements: !1145)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1991, file: !798, line: 151, baseType: !823, size: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1983, file: !798, line: 156, baseType: !249, offset: 256)
!3459 = !DIDerivedType(tag: DW_TAG_member, scope: !802, file: !798, line: 159, baseType: !3460, size: 128)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !802, file: !798, line: 159, size: 128, elements: !3461)
!3461 = !{!3462, !3506}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3460, file: !798, line: 161, baseType: !3463, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !73, line: 110, size: 1152, elements: !3465)
!3465 = !{!3466, !3476, !3477, !3478, !3479, !3480, !3481, !3493, !3494, !3495}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3464, file: !73, line: 111, baseType: !3467, size: 384)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !73, line: 19, size: 384, elements: !3468)
!3468 = !{!3469, !3471, !3472, !3473, !3474, !3475}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3467, file: !73, line: 20, baseType: !3470, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3467, file: !73, line: 21, baseType: !3470, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3467, file: !73, line: 22, baseType: !3470, size: 64, offset: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3467, file: !73, line: 23, baseType: !340, size: 64, offset: 192)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3467, file: !73, line: 24, baseType: !340, size: 64, offset: 256)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3467, file: !73, line: 25, baseType: !340, size: 64, offset: 320)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3464, file: !73, line: 112, baseType: !1082, size: 64, offset: 384)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !3464, file: !73, line: 113, baseType: !1068, size: 128, offset: 448)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3464, file: !73, line: 114, baseType: !2499, size: 192, offset: 576)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3464, file: !73, line: 115, baseType: !72, size: 32, offset: 768)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3464, file: !73, line: 116, baseType: !7, size: 32, offset: 800)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3464, file: !73, line: 117, baseType: !3482, size: 64, offset: 832)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3484)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !73, line: 67, size: 256, elements: !3485)
!3485 = !{!3486, !3487, !3491, !3492}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3484, file: !73, line: 73, baseType: !916, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3484, file: !73, line: 78, baseType: !3488, size: 64, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{null, !3463}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3484, file: !73, line: 83, baseType: !3488, size: 64, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3484, file: !73, line: 89, baseType: !2047, size: 64, offset: 192)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3464, file: !73, line: 118, baseType: !181, size: 64, offset: 896)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3464, file: !73, line: 119, baseType: !165, size: 32, offset: 960)
!3495 = !DIDerivedType(tag: DW_TAG_member, scope: !3464, file: !73, line: 120, baseType: !3496, size: 128, offset: 1024)
!3496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3464, file: !73, line: 120, size: 128, elements: !3497)
!3497 = !{!3498, !3504}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3496, file: !73, line: 121, baseType: !3499, size: 128)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3500, line: 6, size: 128, elements: !3501)
!3500 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3501 = !{!3502, !3503}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3499, file: !3500, line: 7, baseType: !433, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3499, file: !3500, line: 8, baseType: !433, size: 64, offset: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3496, file: !73, line: 122, baseType: !3505)
!3505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3499, elements: !2858)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3460, file: !798, line: 162, baseType: !181, size: 64, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !802, file: !798, line: 176, baseType: !381, size: 128, align: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, scope: !797, file: !798, line: 179, baseType: !3509, size: 32, offset: 384)
!3509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !797, file: !798, line: 179, size: 32, elements: !3510)
!3510 = !{!3511, !3512, !3513, !3514}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3509, file: !798, line: 184, baseType: !823, size: 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3509, file: !798, line: 192, baseType: !7, size: 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3509, file: !798, line: 194, baseType: !7, size: 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3509, file: !798, line: 195, baseType: !165, size: 32)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !797, file: !798, line: 199, baseType: !823, size: 32, offset: 416)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !669, file: !86, line: 1964, baseType: !3517, size: 64, offset: 1344)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!325, !608, !3520}
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3522, line: 12, size: 256, elements: !3523)
!3522 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!3523 = !{!3524, !3525, !3526, !3527, !3528}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3521, file: !3522, line: 13, baseType: !819, size: 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3521, file: !3522, line: 16, baseType: !165, size: 32, offset: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3521, file: !3522, line: 23, baseType: !340, size: 64, offset: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3521, file: !3522, line: 30, baseType: !340, size: 64, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3521, file: !3522, line: 33, baseType: !3529, size: 64, offset: 192)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !798, line: 27, flags: DIFlagFwdDecl)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !669, file: !86, line: 1966, baseType: !3517, size: 64, offset: 1408)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !609, file: !86, line: 1424, baseType: !3533, size: 64, offset: 448)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3535)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !80, line: 322, size: 704, elements: !3536)
!3536 = !{!3537, !3583, !3587, !3591, !3592, !3593, !3594, !3595, !3600, !3605, !3609}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3535, file: !80, line: 323, baseType: !3538, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!165, !3541}
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !80, line: 294, size: 1600, elements: !3543)
!3543 = !{!3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3568, !3569, !3570}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3542, file: !80, line: 295, baseType: !651, size: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3542, file: !80, line: 296, baseType: !236, size: 128, offset: 128)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3542, file: !80, line: 297, baseType: !236, size: 128, offset: 256)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3542, file: !80, line: 298, baseType: !236, size: 128, offset: 384)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3542, file: !80, line: 299, baseType: !749, size: 192, offset: 512)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3542, file: !80, line: 300, baseType: !249, offset: 704)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3542, file: !80, line: 301, baseType: !823, size: 32, offset: 704)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3542, file: !80, line: 302, baseType: !608, size: 64, offset: 768)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3542, file: !80, line: 303, baseType: !3553, size: 64, offset: 832)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !80, line: 68, size: 64, elements: !3554)
!3554 = !{!3555, !3567}
!3555 = !DIDerivedType(tag: DW_TAG_member, scope: !3553, file: !80, line: 69, baseType: !3556, size: 32)
!3556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3553, file: !80, line: 69, size: 32, elements: !3557)
!3557 = !{!3558, !3559, !3560}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3556, file: !80, line: 70, baseType: !446, size: 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3556, file: !80, line: 71, baseType: !454, size: 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3556, file: !80, line: 72, baseType: !3561, size: 32)
!3561 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3562, line: 24, baseType: !3563)
!3562 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3562, line: 22, size: 32, elements: !3564)
!3564 = !{!3565}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3563, file: !3562, line: 23, baseType: !3566, size: 32)
!3566 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3562, line: 20, baseType: !452)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3553, file: !80, line: 74, baseType: !79, size: 32, offset: 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3542, file: !80, line: 304, baseType: !540, size: 64, offset: 896)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3542, file: !80, line: 305, baseType: !340, size: 64, offset: 960)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3542, file: !80, line: 306, baseType: !3571, size: 576, offset: 1024)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !80, line: 205, size: 576, elements: !3572)
!3572 = !{!3573, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3571, file: !80, line: 206, baseType: !3574, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !80, line: 66, baseType: !542)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3571, file: !80, line: 207, baseType: !3574, size: 64, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3571, file: !80, line: 208, baseType: !3574, size: 64, offset: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3571, file: !80, line: 209, baseType: !3574, size: 64, offset: 192)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3571, file: !80, line: 210, baseType: !3574, size: 64, offset: 256)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3571, file: !80, line: 211, baseType: !3574, size: 64, offset: 320)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3571, file: !80, line: 212, baseType: !3574, size: 64, offset: 384)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3571, file: !80, line: 213, baseType: !548, size: 64, offset: 448)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3571, file: !80, line: 214, baseType: !548, size: 64, offset: 512)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3535, file: !80, line: 324, baseType: !3584, size: 64, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!3541, !608, !165}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3535, file: !80, line: 325, baseType: !3588, size: 64, offset: 128)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{null, !3541}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3535, file: !80, line: 326, baseType: !3538, size: 64, offset: 192)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3535, file: !80, line: 327, baseType: !3538, size: 64, offset: 256)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3535, file: !80, line: 328, baseType: !3538, size: 64, offset: 320)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3535, file: !80, line: 329, baseType: !711, size: 64, offset: 384)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3535, file: !80, line: 332, baseType: !3596, size: 64, offset: 448)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!3599, !440}
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3535, file: !80, line: 333, baseType: !3601, size: 64, offset: 512)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!165, !440, !3604}
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3535, file: !80, line: 335, baseType: !3606, size: 64, offset: 576)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!165, !440, !3599}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3535, file: !80, line: 337, baseType: !3610, size: 64, offset: 640)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!165, !608, !3613}
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !609, file: !86, line: 1425, baseType: !3615, size: 64, offset: 512)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3617)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !80, line: 428, size: 704, elements: !3618)
!3618 = !{!3619, !3623, !3624, !3628, !3629, !3630, !3645, !3668, !3672, !3673, !3696}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3617, file: !80, line: 429, baseType: !3620, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!165, !608, !165, !165, !558}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3617, file: !80, line: 430, baseType: !711, size: 64, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3617, file: !80, line: 431, baseType: !3625, size: 64, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!165, !608, !7}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3617, file: !80, line: 432, baseType: !3625, size: 64, offset: 192)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3617, file: !80, line: 433, baseType: !711, size: 64, offset: 256)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3617, file: !80, line: 434, baseType: !3631, size: 64, offset: 320)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!165, !608, !165, !3634}
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !80, line: 415, size: 256, elements: !3636)
!3636 = !{!3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3635, file: !80, line: 416, baseType: !165, size: 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3635, file: !80, line: 417, baseType: !7, size: 32, offset: 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3635, file: !80, line: 418, baseType: !7, size: 32, offset: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3635, file: !80, line: 420, baseType: !7, size: 32, offset: 96)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3635, file: !80, line: 421, baseType: !7, size: 32, offset: 128)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3635, file: !80, line: 422, baseType: !7, size: 32, offset: 160)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3635, file: !80, line: 423, baseType: !7, size: 32, offset: 192)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3635, file: !80, line: 424, baseType: !7, size: 32, offset: 224)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3617, file: !80, line: 435, baseType: !3646, size: 64, offset: 384)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!165, !608, !3553, !3649}
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !80, line: 343, size: 960, elements: !3651)
!3651 = !{!3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3650, file: !80, line: 344, baseType: !165, size: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3650, file: !80, line: 345, baseType: !433, size: 64, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3650, file: !80, line: 346, baseType: !433, size: 64, offset: 128)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3650, file: !80, line: 347, baseType: !433, size: 64, offset: 192)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3650, file: !80, line: 348, baseType: !433, size: 64, offset: 256)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3650, file: !80, line: 349, baseType: !433, size: 64, offset: 320)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3650, file: !80, line: 350, baseType: !433, size: 64, offset: 384)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3650, file: !80, line: 351, baseType: !759, size: 64, offset: 448)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3650, file: !80, line: 353, baseType: !759, size: 64, offset: 512)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3650, file: !80, line: 354, baseType: !165, size: 32, offset: 576)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3650, file: !80, line: 355, baseType: !165, size: 32, offset: 608)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3650, file: !80, line: 356, baseType: !433, size: 64, offset: 640)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3650, file: !80, line: 357, baseType: !433, size: 64, offset: 704)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3650, file: !80, line: 358, baseType: !433, size: 64, offset: 768)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3650, file: !80, line: 359, baseType: !759, size: 64, offset: 832)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3650, file: !80, line: 360, baseType: !165, size: 32, offset: 896)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3617, file: !80, line: 436, baseType: !3669, size: 64, offset: 448)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!165, !608, !3613, !3649}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3617, file: !80, line: 438, baseType: !3646, size: 64, offset: 512)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3617, file: !80, line: 439, baseType: !3674, size: 64, offset: 576)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!165, !608, !3677}
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !80, line: 409, size: 1408, elements: !3679)
!3679 = !{!3680, !3681}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3678, file: !80, line: 410, baseType: !7, size: 32)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3678, file: !80, line: 411, baseType: !3682, size: 1344, offset: 64)
!3682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3683, size: 1344, elements: !291)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !80, line: 395, size: 448, elements: !3684)
!3684 = !{!3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3695}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3683, file: !80, line: 396, baseType: !7, size: 32)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3683, file: !80, line: 397, baseType: !7, size: 32, offset: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3683, file: !80, line: 399, baseType: !7, size: 32, offset: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3683, file: !80, line: 400, baseType: !7, size: 32, offset: 96)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3683, file: !80, line: 401, baseType: !7, size: 32, offset: 128)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3683, file: !80, line: 402, baseType: !7, size: 32, offset: 160)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3683, file: !80, line: 403, baseType: !7, size: 32, offset: 192)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3683, file: !80, line: 404, baseType: !435, size: 64, offset: 256)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3683, file: !80, line: 405, baseType: !3694, size: 64, offset: 320)
!3694 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !213, line: 126, baseType: !433)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3683, file: !80, line: 406, baseType: !3694, size: 64, offset: 384)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3617, file: !80, line: 440, baseType: !3625, size: 64, offset: 640)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !609, file: !86, line: 1426, baseType: !3698, size: 64, offset: 576)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3700)
!3700 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !86, line: 49, flags: DIFlagFwdDecl)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !609, file: !86, line: 1427, baseType: !340, size: 64, offset: 640)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !609, file: !86, line: 1428, baseType: !340, size: 64, offset: 704)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !609, file: !86, line: 1429, baseType: !340, size: 64, offset: 768)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !609, file: !86, line: 1430, baseType: !398, size: 64, offset: 832)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !609, file: !86, line: 1431, baseType: !843, size: 256, offset: 896)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !609, file: !86, line: 1432, baseType: !165, size: 32, offset: 1152)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !609, file: !86, line: 1433, baseType: !823, size: 32, offset: 1184)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !609, file: !86, line: 1437, baseType: !3709, size: 64, offset: 1216)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3712)
!3712 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !86, line: 1437, flags: DIFlagFwdDecl)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !609, file: !86, line: 1449, baseType: !3714, size: 64, offset: 1280)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !414, line: 34, size: 64, elements: !3715)
!3715 = !{!3716}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3714, file: !414, line: 35, baseType: !417, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !609, file: !86, line: 1450, baseType: !236, size: 128, offset: 1344)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !609, file: !86, line: 1451, baseType: !1040, size: 64, offset: 1472)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !609, file: !86, line: 1452, baseType: !1617, size: 64, offset: 1536)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !609, file: !86, line: 1453, baseType: !3721, size: 64, offset: 1600)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !86, line: 1453, flags: DIFlagFwdDecl)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !609, file: !86, line: 1454, baseType: !651, size: 128, offset: 1664)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !609, file: !86, line: 1455, baseType: !7, size: 32, offset: 1792)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !609, file: !86, line: 1456, baseType: !3726, size: 2432, offset: 1856)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !80, line: 518, size: 2432, elements: !3727)
!3727 = !{!3728, !3729, !3730, !3732, !3764}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3726, file: !80, line: 519, baseType: !7, size: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3726, file: !80, line: 520, baseType: !843, size: 256, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3726, file: !80, line: 521, baseType: !3731, size: 192, offset: 320)
!3731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 192, elements: !291)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3726, file: !80, line: 522, baseType: !3733, size: 1728, offset: 512)
!3733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3734, size: 1728, elements: !291)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !80, line: 222, size: 576, elements: !3735)
!3735 = !{!3736, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3734, file: !80, line: 223, baseType: !3737, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !80, line: 443, size: 256, elements: !3739)
!3739 = !{!3740, !3741, !3754, !3755}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3738, file: !80, line: 444, baseType: !165, size: 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3738, file: !80, line: 445, baseType: !3742, size: 64, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3744)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !80, line: 310, size: 512, elements: !3745)
!3745 = !{!3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3744, file: !80, line: 311, baseType: !711, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3744, file: !80, line: 312, baseType: !711, size: 64, offset: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3744, file: !80, line: 313, baseType: !711, size: 64, offset: 128)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3744, file: !80, line: 314, baseType: !711, size: 64, offset: 192)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3744, file: !80, line: 315, baseType: !3538, size: 64, offset: 256)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3744, file: !80, line: 316, baseType: !3538, size: 64, offset: 320)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3744, file: !80, line: 317, baseType: !3538, size: 64, offset: 384)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3744, file: !80, line: 318, baseType: !3610, size: 64, offset: 448)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3738, file: !80, line: 446, baseType: !642, size: 64, offset: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3738, file: !80, line: 447, baseType: !3737, size: 64, offset: 192)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3734, file: !80, line: 224, baseType: !165, size: 32, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3734, file: !80, line: 226, baseType: !236, size: 128, offset: 128)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3734, file: !80, line: 227, baseType: !340, size: 64, offset: 256)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3734, file: !80, line: 228, baseType: !7, size: 32, offset: 320)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3734, file: !80, line: 229, baseType: !7, size: 32, offset: 352)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3734, file: !80, line: 230, baseType: !3574, size: 64, offset: 384)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3734, file: !80, line: 231, baseType: !3574, size: 64, offset: 448)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3734, file: !80, line: 232, baseType: !181, size: 64, offset: 512)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3726, file: !80, line: 523, baseType: !3765, size: 192, offset: 2240)
!3765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3742, size: 192, elements: !291)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !609, file: !86, line: 1458, baseType: !3767, size: 2112, offset: 4288)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !86, line: 1410, size: 2112, elements: !3768)
!3768 = !{!3769, !3770, !3771}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3767, file: !86, line: 1411, baseType: !165, size: 32)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !3767, file: !86, line: 1412, baseType: !1243, size: 128, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3767, file: !86, line: 1413, baseType: !3772, size: 1920, offset: 192)
!3772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3773, size: 1920, elements: !291)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3774, line: 12, size: 640, elements: !3775)
!3774 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!3775 = !{!3776, !3784, !3785, !3790, !3791}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3773, file: !3774, line: 13, baseType: !3777, size: 320)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3778, line: 17, size: 320, elements: !3779)
!3778 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!3779 = !{!3780, !3781, !3782, !3783}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3777, file: !3778, line: 18, baseType: !165, size: 32)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3777, file: !3778, line: 19, baseType: !165, size: 32, offset: 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3777, file: !3778, line: 20, baseType: !1243, size: 128, offset: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3777, file: !3778, line: 22, baseType: !381, size: 128, align: 64, offset: 192)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3773, file: !3774, line: 14, baseType: !1031, size: 64, offset: 320)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3773, file: !3774, line: 15, baseType: !3786, size: 64, offset: 384)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3787, line: 16, size: 64, elements: !3788)
!3787 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3788 = !{!3789}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3786, file: !3787, line: 17, baseType: !2227, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3773, file: !3774, line: 16, baseType: !1243, size: 128, offset: 448)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3773, file: !3774, line: 17, baseType: !823, size: 32, offset: 576)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !609, file: !86, line: 1465, baseType: !181, size: 64, offset: 6400)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !609, file: !86, line: 1468, baseType: !179, size: 32, offset: 6464)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !609, file: !86, line: 1470, baseType: !548, size: 64, offset: 6528)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !609, file: !86, line: 1471, baseType: !548, size: 64, offset: 6592)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !609, file: !86, line: 1473, baseType: !180, size: 32, offset: 6656)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !609, file: !86, line: 1474, baseType: !3798, size: 64, offset: 6720)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !86, line: 603, flags: DIFlagFwdDecl)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !609, file: !86, line: 1477, baseType: !1131, size: 256, offset: 6784)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !609, file: !86, line: 1478, baseType: !3802, size: 128, offset: 7040)
!3802 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3803, line: 18, baseType: !3804)
!3803 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3803, line: 16, size: 128, elements: !3805)
!3805 = !{!3806}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3804, file: !3803, line: 17, baseType: !3807, size: 128)
!3807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 128, elements: !1763)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !609, file: !86, line: 1480, baseType: !7, size: 32, offset: 7168)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !609, file: !86, line: 1481, baseType: !1264, size: 32, offset: 7200)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !609, file: !86, line: 1487, baseType: !749, size: 192, offset: 7232)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !609, file: !86, line: 1493, baseType: !232, size: 64, offset: 7424)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !609, file: !86, line: 1495, baseType: !3813, size: 64, offset: 7488)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3815)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !396, line: 135, size: 1024, align: 512, elements: !3816)
!3816 = !{!3817, !3821, !3822, !3829, !3835, !3839, !3843, !3847, !3848, !3852, !3856, !3861, !3865}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3815, file: !396, line: 136, baseType: !3818, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!165, !398, !7}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3815, file: !396, line: 137, baseType: !3818, size: 64, offset: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3815, file: !396, line: 138, baseType: !3823, size: 64, offset: 128)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!165, !3826, !3828}
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3815, file: !396, line: 139, baseType: !3830, size: 64, offset: 192)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!165, !3826, !7, !232, !3833}
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3815, file: !396, line: 141, baseType: !3836, size: 64, offset: 256)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!165, !3826}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3815, file: !396, line: 142, baseType: !3840, size: 64, offset: 320)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!165, !398}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3815, file: !396, line: 143, baseType: !3844, size: 64, offset: 384)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{null, !398}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3815, file: !396, line: 144, baseType: !3844, size: 64, offset: 448)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3815, file: !396, line: 145, baseType: !3849, size: 64, offset: 512)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{null, !398, !440}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3815, file: !396, line: 146, baseType: !3853, size: 64, offset: 576)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!290, !398, !290, !165}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3815, file: !396, line: 147, baseType: !3857, size: 64, offset: 640)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!394, !3860}
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3815, file: !396, line: 148, baseType: !3862, size: 64, offset: 704)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!165, !558, !212}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3815, file: !396, line: 149, baseType: !3866, size: 64, offset: 768)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!398, !398, !3869}
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !609, file: !86, line: 1500, baseType: !165, size: 32, offset: 7552)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !609, file: !86, line: 1502, baseType: !3873, size: 448, offset: 7616)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3522, line: 60, size: 448, elements: !3874)
!3874 = !{!3875, !3880, !3881, !3882, !3883, !3884, !3885}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3873, file: !3522, line: 61, baseType: !3876, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!340, !3879, !3520}
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3873, file: !3522, line: 63, baseType: !3876, size: 64, offset: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3873, file: !3522, line: 66, baseType: !325, size: 64, offset: 128)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3873, file: !3522, line: 67, baseType: !165, size: 32, offset: 192)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3873, file: !3522, line: 68, baseType: !7, size: 32, offset: 224)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3873, file: !3522, line: 71, baseType: !236, size: 128, offset: 256)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3873, file: !3522, line: 77, baseType: !3886, size: 64, offset: 384)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !609, file: !86, line: 1505, baseType: !753, size: 64, offset: 8064)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !609, file: !86, line: 1508, baseType: !753, size: 64, offset: 8128)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !609, file: !86, line: 1511, baseType: !165, size: 32, offset: 8192)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !609, file: !86, line: 1514, baseType: !1930, size: 32, offset: 8224)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !609, file: !86, line: 1517, baseType: !1119, size: 64, offset: 8256)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !609, file: !86, line: 1518, baseType: !647, size: 64, offset: 8320)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !609, file: !86, line: 1525, baseType: !2708, size: 64, offset: 8384)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !609, file: !86, line: 1532, baseType: !3895, size: 64, offset: 8448)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3896, line: 52, size: 64, elements: !3897)
!3896 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3897 = !{!3898}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3895, file: !3896, line: 53, baseType: !3899, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3896, line: 40, size: 256, elements: !3901)
!3901 = !{!3902, !3903, !3908}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3900, file: !3896, line: 42, baseType: !249)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3900, file: !3896, line: 44, baseType: !3904, size: 192)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3896, line: 28, size: 192, elements: !3905)
!3905 = !{!3906, !3907}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3904, file: !3896, line: 29, baseType: !236, size: 128)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3904, file: !3896, line: 31, baseType: !325, size: 64, offset: 128)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3900, file: !3896, line: 49, baseType: !325, size: 64, offset: 192)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !609, file: !86, line: 1533, baseType: !3895, size: 64, offset: 8512)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !609, file: !86, line: 1534, baseType: !381, size: 128, align: 64, offset: 8576)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !609, file: !86, line: 1535, baseType: !1107, size: 256, offset: 8704)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !609, file: !86, line: 1537, baseType: !749, size: 192, offset: 8960)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !609, file: !86, line: 1542, baseType: !165, size: 32, offset: 9152)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !609, file: !86, line: 1545, baseType: !249, offset: 9184)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !609, file: !86, line: 1546, baseType: !236, size: 128, offset: 9216)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !609, file: !86, line: 1548, baseType: !249, offset: 9344)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !609, file: !86, line: 1549, baseType: !236, size: 128, offset: 9344)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !441, file: !86, line: 624, baseType: !809, size: 64, offset: 256)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !441, file: !86, line: 631, baseType: !340, size: 64, offset: 320)
!3920 = !DIDerivedType(tag: DW_TAG_member, scope: !441, file: !86, line: 639, baseType: !3921, size: 32, offset: 384)
!3921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !441, file: !86, line: 639, size: 32, elements: !3922)
!3922 = !{!3923, !3924}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3921, file: !86, line: 640, baseType: !1587, size: 32)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3921, file: !86, line: 641, baseType: !7, size: 32)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !441, file: !86, line: 643, baseType: !522, size: 32, offset: 416)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !441, file: !86, line: 644, baseType: !540, size: 64, offset: 448)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !441, file: !86, line: 645, baseType: !544, size: 128, offset: 512)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !441, file: !86, line: 646, baseType: !544, size: 128, offset: 640)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !441, file: !86, line: 647, baseType: !544, size: 128, offset: 768)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !441, file: !86, line: 648, baseType: !249, offset: 896)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !441, file: !86, line: 649, baseType: !332, size: 16, offset: 896)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !441, file: !86, line: 650, baseType: !172, size: 8, offset: 912)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !441, file: !86, line: 651, baseType: !172, size: 8, offset: 920)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !441, file: !86, line: 652, baseType: !3694, size: 64, offset: 960)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !441, file: !86, line: 659, baseType: !340, size: 64, offset: 1024)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !441, file: !86, line: 660, baseType: !843, size: 256, offset: 1088)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !441, file: !86, line: 662, baseType: !340, size: 64, offset: 1344)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !441, file: !86, line: 663, baseType: !340, size: 64, offset: 1408)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !441, file: !86, line: 665, baseType: !651, size: 128, offset: 1472)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !441, file: !86, line: 666, baseType: !236, size: 128, offset: 1600)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !441, file: !86, line: 675, baseType: !236, size: 128, offset: 1728)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !441, file: !86, line: 676, baseType: !236, size: 128, offset: 1856)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !441, file: !86, line: 677, baseType: !236, size: 128, offset: 1984)
!3944 = !DIDerivedType(tag: DW_TAG_member, scope: !441, file: !86, line: 678, baseType: !3945, size: 128, offset: 2112)
!3945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !441, file: !86, line: 678, size: 128, elements: !3946)
!3946 = !{!3947, !3948}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3945, file: !86, line: 679, baseType: !647, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3945, file: !86, line: 680, baseType: !381, size: 128, align: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !441, file: !86, line: 682, baseType: !755, size: 64, offset: 2240)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !441, file: !86, line: 683, baseType: !755, size: 64, offset: 2304)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !441, file: !86, line: 684, baseType: !823, size: 32, offset: 2368)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !441, file: !86, line: 685, baseType: !823, size: 32, offset: 2400)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !441, file: !86, line: 686, baseType: !823, size: 32, offset: 2432)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !441, file: !86, line: 688, baseType: !823, size: 32, offset: 2464)
!3955 = !DIDerivedType(tag: DW_TAG_member, scope: !441, file: !86, line: 690, baseType: !3956, size: 64, offset: 2496)
!3956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !441, file: !86, line: 690, size: 64, elements: !3957)
!3957 = !{!3958, !4180}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3956, file: !86, line: 691, baseType: !3959, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3961)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !86, line: 1822, size: 2048, elements: !3962)
!3962 = !{!3963, !3964, !3968, !3972, !3976, !3977, !3978, !3982, !3995, !3996, !4004, !4008, !4009, !4013, !4014, !4018, !4023, !4024, !4028, !4032, !4140, !4144, !4145, !4149, !4150, !4154, !4158, !4163, !4167, !4171, !4175, !4179}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3961, file: !86, line: 1823, baseType: !642, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3961, file: !86, line: 1824, baseType: !3965, size: 64, offset: 64)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!540, !368, !540, !165}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3961, file: !86, line: 1825, baseType: !3969, size: 64, offset: 128)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!321, !368, !290, !337, !771}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3961, file: !86, line: 1826, baseType: !3973, size: 64, offset: 192)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!321, !368, !232, !337, !771}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3961, file: !86, line: 1827, baseType: !920, size: 64, offset: 256)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3961, file: !86, line: 1828, baseType: !920, size: 64, offset: 320)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3961, file: !86, line: 1829, baseType: !3979, size: 64, offset: 384)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!165, !923, !212}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3961, file: !86, line: 1830, baseType: !3983, size: 64, offset: 448)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!165, !368, !3986}
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !86, line: 1776, size: 128, elements: !3988)
!3988 = !{!3989, !3994}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3987, file: !86, line: 1777, baseType: !3990, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !86, line: 1773, baseType: !3991)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!165, !3986, !232, !165, !540, !433, !7}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3987, file: !86, line: 1778, baseType: !540, size: 64, offset: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3961, file: !86, line: 1831, baseType: !3983, size: 64, offset: 512)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3961, file: !86, line: 1832, baseType: !3997, size: 64, offset: 576)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!4000, !368, !4002}
!4000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !4001, line: 52, baseType: !7)
!4001 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !628, line: 27, flags: DIFlagFwdDecl)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3961, file: !86, line: 1833, baseType: !4005, size: 64, offset: 640)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!325, !368, !7, !340}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3961, file: !86, line: 1834, baseType: !4005, size: 64, offset: 704)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3961, file: !86, line: 1835, baseType: !4010, size: 64, offset: 768)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!165, !368, !2001}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3961, file: !86, line: 1836, baseType: !340, size: 64, offset: 832)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3961, file: !86, line: 1837, baseType: !4015, size: 64, offset: 896)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!165, !440, !368}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3961, file: !86, line: 1838, baseType: !4019, size: 64, offset: 960)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!165, !368, !4022}
!4022 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !86, line: 1007, baseType: !181)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3961, file: !86, line: 1839, baseType: !4015, size: 64, offset: 1024)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3961, file: !86, line: 1840, baseType: !4025, size: 64, offset: 1088)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!165, !368, !540, !540, !165}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3961, file: !86, line: 1841, baseType: !4029, size: 64, offset: 1152)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!165, !165, !368, !165}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3961, file: !86, line: 1842, baseType: !4033, size: 64, offset: 1216)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!165, !368, !165, !4036}
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !86, line: 1062, size: 1664, elements: !4038)
!4038 = !{!4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4070, !4071, !4072, !4085, !4116}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !4037, file: !86, line: 1063, baseType: !4036, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !4037, file: !86, line: 1064, baseType: !236, size: 128, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !4037, file: !86, line: 1065, baseType: !651, size: 128, offset: 192)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !4037, file: !86, line: 1066, baseType: !236, size: 128, offset: 320)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !4037, file: !86, line: 1069, baseType: !236, size: 128, offset: 448)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !4037, file: !86, line: 1072, baseType: !4022, size: 64, offset: 576)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !4037, file: !86, line: 1073, baseType: !7, size: 32, offset: 640)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !4037, file: !86, line: 1074, baseType: !176, size: 8, offset: 672)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !4037, file: !86, line: 1075, baseType: !7, size: 32, offset: 704)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !4037, file: !86, line: 1076, baseType: !165, size: 32, offset: 736)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !4037, file: !86, line: 1077, baseType: !1243, size: 128, offset: 768)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !4037, file: !86, line: 1078, baseType: !368, size: 64, offset: 896)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !4037, file: !86, line: 1079, baseType: !540, size: 64, offset: 960)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !4037, file: !86, line: 1080, baseType: !540, size: 64, offset: 1024)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !4037, file: !86, line: 1082, baseType: !4054, size: 64, offset: 1088)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !86, line: 1314, size: 320, elements: !4056)
!4056 = !{!4057, !4065, !4066, !4067, !4068, !4069}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4055, file: !86, line: 1315, baseType: !4058)
!4058 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !4059, line: 20, baseType: !4060)
!4059 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4059, line: 11, elements: !4061)
!4061 = !{!4062}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !4060, file: !4059, line: 12, baseType: !4063)
!4063 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !261, line: 33, baseType: !4064)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !261, line: 31, elements: !263)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4055, file: !86, line: 1316, baseType: !165, size: 32)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4055, file: !86, line: 1317, baseType: !165, size: 32, offset: 32)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4055, file: !86, line: 1318, baseType: !4054, size: 64, offset: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4055, file: !86, line: 1319, baseType: !368, size: 64, offset: 128)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4055, file: !86, line: 1320, baseType: !381, size: 128, align: 64, offset: 192)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !4037, file: !86, line: 1084, baseType: !340, size: 64, offset: 1152)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !4037, file: !86, line: 1085, baseType: !340, size: 64, offset: 1216)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !4037, file: !86, line: 1087, baseType: !4073, size: 64, offset: 1280)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4075)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !86, line: 1011, size: 128, elements: !4076)
!4076 = !{!4077, !4081}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !4075, file: !86, line: 1012, baseType: !4078, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{null, !4036, !4036}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !4075, file: !86, line: 1013, baseType: !4082, size: 64, offset: 64)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{null, !4036}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !4037, file: !86, line: 1088, baseType: !4086, size: 64, offset: 1344)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4088)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !86, line: 1016, size: 512, elements: !4089)
!4089 = !{!4090, !4094, !4098, !4099, !4103, !4107, !4111, !4115}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !4088, file: !86, line: 1017, baseType: !4091, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!4022, !4022}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !4088, file: !86, line: 1018, baseType: !4095, size: 64, offset: 64)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{null, !4022}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !4088, file: !86, line: 1019, baseType: !4082, size: 64, offset: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !4088, file: !86, line: 1020, baseType: !4100, size: 64, offset: 192)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!165, !4036, !165}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !4088, file: !86, line: 1021, baseType: !4104, size: 64, offset: 256)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!212, !4036}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !4088, file: !86, line: 1022, baseType: !4108, size: 64, offset: 320)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!165, !4036, !165, !239}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !4088, file: !86, line: 1023, baseType: !4112, size: 64, offset: 384)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{null, !4036, !897}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !4088, file: !86, line: 1024, baseType: !4104, size: 64, offset: 448)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !4037, file: !86, line: 1097, baseType: !4117, size: 256, offset: 1408)
!4117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4037, file: !86, line: 1089, size: 256, elements: !4118)
!4118 = !{!4119, !4128, !4134}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !4117, file: !86, line: 1090, baseType: !4120, size: 256)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !4121, line: 10, size: 256, elements: !4122)
!4121 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!4122 = !{!4123, !4124, !4127}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4120, file: !4121, line: 11, baseType: !179, size: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4120, file: !4121, line: 12, baseType: !4125, size: 64, offset: 64)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !4121, line: 5, flags: DIFlagFwdDecl)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4120, file: !4121, line: 13, baseType: !236, size: 128, offset: 128)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !4117, file: !86, line: 1091, baseType: !4129, size: 64)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !4121, line: 17, size: 64, elements: !4130)
!4130 = !{!4131}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4129, file: !4121, line: 18, baseType: !4132, size: 64)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !4121, line: 16, flags: DIFlagFwdDecl)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !4117, file: !86, line: 1096, baseType: !4135, size: 192)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4117, file: !86, line: 1092, size: 192, elements: !4136)
!4136 = !{!4137, !4138, !4139}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4135, file: !86, line: 1093, baseType: !236, size: 128)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4135, file: !86, line: 1094, baseType: !165, size: 32, offset: 128)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !4135, file: !86, line: 1095, baseType: !7, size: 32, offset: 160)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3961, file: !86, line: 1843, baseType: !4141, size: 64, offset: 1280)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!321, !368, !796, !165, !337, !771, !165}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3961, file: !86, line: 1844, baseType: !2121, size: 64, offset: 1344)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3961, file: !86, line: 1845, baseType: !4146, size: 64, offset: 1408)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!165, !165}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3961, file: !86, line: 1846, baseType: !4033, size: 64, offset: 1472)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3961, file: !86, line: 1847, baseType: !4151, size: 64, offset: 1536)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!321, !3228, !368, !771, !337, !7}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3961, file: !86, line: 1848, baseType: !4155, size: 64, offset: 1600)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!321, !368, !771, !3228, !337, !7}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3961, file: !86, line: 1849, baseType: !4159, size: 64, offset: 1664)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!165, !368, !325, !4162, !897}
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3961, file: !86, line: 1850, baseType: !4164, size: 64, offset: 1728)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!325, !368, !165, !540, !540}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3961, file: !86, line: 1852, baseType: !4168, size: 64, offset: 1792)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{null, !737, !368}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3961, file: !86, line: 1856, baseType: !4172, size: 64, offset: 1856)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!321, !368, !540, !368, !540, !337, !7}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3961, file: !86, line: 1858, baseType: !4176, size: 64, offset: 1920)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!540, !368, !540, !368, !540, !540, !7}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3961, file: !86, line: 1861, baseType: !4025, size: 64, offset: 1984)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3956, file: !86, line: 692, baseType: !676, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !441, file: !86, line: 694, baseType: !4182, size: 64, offset: 2560)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !86, line: 1100, size: 384, elements: !4184)
!4184 = !{!4185, !4186, !4187, !4188}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !4183, file: !86, line: 1101, baseType: !249)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !4183, file: !86, line: 1102, baseType: !236, size: 128)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !4183, file: !86, line: 1103, baseType: !236, size: 128, offset: 128)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !4183, file: !86, line: 1104, baseType: !236, size: 128, offset: 256)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !441, file: !86, line: 695, baseType: !810, size: 1216, align: 64, offset: 2624)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !441, file: !86, line: 696, baseType: !236, size: 128, offset: 3840)
!4191 = !DIDerivedType(tag: DW_TAG_member, scope: !441, file: !86, line: 697, baseType: !4192, size: 64, offset: 3968)
!4192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !441, file: !86, line: 697, size: 64, elements: !4193)
!4193 = !{!4194, !4195, !4196, !4199, !4200}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4192, file: !86, line: 698, baseType: !3228, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !4192, file: !86, line: 699, baseType: !1040, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4192, file: !86, line: 700, baseType: !4197, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !86, line: 700, flags: DIFlagFwdDecl)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4192, file: !86, line: 701, baseType: !290, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4192, file: !86, line: 702, baseType: !7, size: 32)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !441, file: !86, line: 705, baseType: !180, size: 32, offset: 4032)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !441, file: !86, line: 708, baseType: !180, size: 32, offset: 4064)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !441, file: !86, line: 709, baseType: !3798, size: 64, offset: 4096)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !441, file: !86, line: 720, baseType: !181, size: 64, offset: 4160)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !399, file: !396, line: 98, baseType: !4206, size: 256, offset: 448)
!4206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 256, elements: !1132)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !399, file: !396, line: 101, baseType: !4208, size: 32, offset: 704)
!4208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4209, line: 25, size: 32, elements: !4210)
!4209 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!4210 = !{!4211}
!4211 = !DIDerivedType(tag: DW_TAG_member, scope: !4208, file: !4209, line: 26, baseType: !4212, size: 32)
!4212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4208, file: !4209, line: 26, size: 32, elements: !4213)
!4213 = !{!4214}
!4214 = !DIDerivedType(tag: DW_TAG_member, scope: !4212, file: !4209, line: 30, baseType: !4215, size: 32)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4212, file: !4209, line: 30, size: 32, elements: !4216)
!4216 = !{!4217, !4218}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4215, file: !4209, line: 31, baseType: !249)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4215, file: !4209, line: 32, baseType: !165, size: 32)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !399, file: !396, line: 102, baseType: !3813, size: 64, offset: 768)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !399, file: !396, line: 103, baseType: !608, size: 64, offset: 832)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !399, file: !396, line: 104, baseType: !340, size: 64, offset: 896)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !399, file: !396, line: 105, baseType: !181, size: 64, offset: 960)
!4223 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !396, line: 107, baseType: !4224, size: 128, offset: 1024)
!4224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !396, line: 107, size: 128, elements: !4225)
!4225 = !{!4226, !4227}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4224, file: !396, line: 108, baseType: !236, size: 128)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4224, file: !396, line: 109, baseType: !4228, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !399, file: !396, line: 111, baseType: !236, size: 128, offset: 1152)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !399, file: !396, line: 112, baseType: !236, size: 128, offset: 1280)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !399, file: !396, line: 120, baseType: !4232, size: 128, offset: 1408)
!4232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !396, line: 116, size: 128, elements: !4233)
!4233 = !{!4234, !4235, !4236}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4232, file: !396, line: 117, baseType: !651, size: 128)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4232, file: !396, line: 118, baseType: !413, size: 128)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4232, file: !396, line: 119, baseType: !381, size: 128, align: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !369, file: !86, line: 922, baseType: !440, size: 64, offset: 256)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !369, file: !86, line: 923, baseType: !3959, size: 64, offset: 320)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !369, file: !86, line: 929, baseType: !249, offset: 384)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !369, file: !86, line: 930, baseType: !85, size: 32, offset: 384)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !369, file: !86, line: 931, baseType: !753, size: 64, offset: 448)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !369, file: !86, line: 932, baseType: !7, size: 32, offset: 512)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !369, file: !86, line: 933, baseType: !1264, size: 32, offset: 544)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !369, file: !86, line: 934, baseType: !749, size: 192, offset: 576)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !369, file: !86, line: 935, baseType: !540, size: 64, offset: 768)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !369, file: !86, line: 936, baseType: !4247, size: 192, offset: 832)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !86, line: 885, size: 192, elements: !4248)
!4248 = !{!4249, !4250, !4251, !4252, !4253, !4254}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4247, file: !86, line: 886, baseType: !4058)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4247, file: !86, line: 887, baseType: !2474, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !4247, file: !86, line: 888, baseType: !94, size: 32, offset: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4247, file: !86, line: 889, baseType: !446, size: 32, offset: 96)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !4247, file: !86, line: 889, baseType: !446, size: 32, offset: 128)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !4247, file: !86, line: 890, baseType: !165, size: 32, offset: 160)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !369, file: !86, line: 937, baseType: !2544, size: 64, offset: 1024)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !369, file: !86, line: 938, baseType: !4257, size: 256, offset: 1088)
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !86, line: 896, size: 256, elements: !4258)
!4258 = !{!4259, !4260, !4261, !4262, !4263, !4264}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4257, file: !86, line: 897, baseType: !340, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4257, file: !86, line: 898, baseType: !7, size: 32, offset: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4257, file: !86, line: 899, baseType: !7, size: 32, offset: 96)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4257, file: !86, line: 902, baseType: !7, size: 32, offset: 128)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4257, file: !86, line: 903, baseType: !7, size: 32, offset: 160)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4257, file: !86, line: 904, baseType: !540, size: 64, offset: 192)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !369, file: !86, line: 940, baseType: !433, size: 64, offset: 1344)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !369, file: !86, line: 945, baseType: !181, size: 64, offset: 1408)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !369, file: !86, line: 949, baseType: !236, size: 128, offset: 1472)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !369, file: !86, line: 950, baseType: !236, size: 128, offset: 1600)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !369, file: !86, line: 952, baseType: !809, size: 64, offset: 1728)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !369, file: !86, line: 953, baseType: !1930, size: 32, offset: 1792)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !369, file: !86, line: 954, baseType: !1930, size: 32, offset: 1824)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !359, file: !315, line: 174, baseType: !365, size: 64, offset: 320)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !359, file: !315, line: 176, baseType: !4274, size: 64, offset: 384)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!165, !368, !242, !358, !2001}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !347, file: !315, line: 90, baseType: !342, size: 64, offset: 192)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !347, file: !315, line: 91, baseType: !4279, size: 64, offset: 256)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !305, file: !229, line: 143, baseType: !4281, size: 64, offset: 256)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!4284, !242}
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4286)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !103, line: 39, size: 384, elements: !4287)
!4287 = !{!4288, !4289, !4293, !4297, !4303, !4307}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4286, file: !103, line: 40, baseType: !102, size: 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4286, file: !103, line: 41, baseType: !4290, size: 64, offset: 64)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!212}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4286, file: !103, line: 42, baseType: !4294, size: 64, offset: 128)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!181}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4286, file: !103, line: 43, baseType: !4298, size: 64, offset: 192)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!221, !4301}
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !103, line: 19, flags: DIFlagFwdDecl)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4286, file: !103, line: 44, baseType: !4304, size: 64, offset: 256)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!221}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4286, file: !103, line: 45, baseType: !479, size: 64, offset: 320)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !305, file: !229, line: 144, baseType: !4309, size: 64, offset: 320)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!221, !242}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !305, file: !229, line: 145, baseType: !4313, size: 64, offset: 384)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{null, !242, !2818, !2819}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !228, file: !229, line: 70, baseType: !4317, size: 64, offset: 384)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !628, line: 123, size: 1024, elements: !4319)
!4319 = !{!4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4436, !4437, !4438, !4439, !4440}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4318, file: !628, line: 124, baseType: !823, size: 32)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4318, file: !628, line: 125, baseType: !823, size: 32, offset: 32)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4318, file: !628, line: 135, baseType: !4317, size: 64, offset: 64)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4318, file: !628, line: 136, baseType: !232, size: 64, offset: 128)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4318, file: !628, line: 138, baseType: !836, size: 192, align: 64, offset: 192)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4318, file: !628, line: 140, baseType: !221, size: 64, offset: 384)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4318, file: !628, line: 141, baseType: !7, size: 32, offset: 448)
!4327 = !DIDerivedType(tag: DW_TAG_member, scope: !4318, file: !628, line: 142, baseType: !4328, size: 256, offset: 512)
!4328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4318, file: !628, line: 142, size: 256, elements: !4329)
!4329 = !{!4330, !4376, !4380}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4328, file: !628, line: 143, baseType: !4331, size: 192)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !628, line: 91, size: 192, elements: !4332)
!4332 = !{!4333, !4334, !4335}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4331, file: !628, line: 92, baseType: !340, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4331, file: !628, line: 94, baseType: !832, size: 64, offset: 64)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4331, file: !628, line: 100, baseType: !4336, size: 64, offset: 128)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !628, line: 180, size: 704, elements: !4338)
!4338 = !{!4339, !4340, !4341, !4348, !4349, !4350, !4374, !4375}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4337, file: !628, line: 182, baseType: !4317, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4337, file: !628, line: 183, baseType: !7, size: 32, offset: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !4337, file: !628, line: 186, baseType: !4342, size: 192, offset: 128)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4343, line: 19, size: 192, elements: !4344)
!4343 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!4344 = !{!4345, !4346, !4347}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4342, file: !4343, line: 20, baseType: !814, size: 128)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4342, file: !4343, line: 21, baseType: !7, size: 32, offset: 128)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4342, file: !4343, line: 22, baseType: !7, size: 32, offset: 160)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !4337, file: !628, line: 187, baseType: !179, size: 32, offset: 320)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !4337, file: !628, line: 188, baseType: !179, size: 32, offset: 352)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !4337, file: !628, line: 189, baseType: !4351, size: 64, offset: 384)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !628, line: 168, size: 320, elements: !4353)
!4353 = !{!4354, !4358, !4362, !4366, !4370}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4352, file: !628, line: 169, baseType: !4355, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!165, !737, !4336}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !4352, file: !628, line: 171, baseType: !4359, size: 64, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!165, !4317, !232, !331}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !4352, file: !628, line: 173, baseType: !4363, size: 64, offset: 128)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!165, !4317}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !4352, file: !628, line: 174, baseType: !4367, size: 64, offset: 192)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!165, !4317, !4317, !232}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4352, file: !628, line: 176, baseType: !4371, size: 64, offset: 256)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!165, !737, !4317, !4336}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !4337, file: !628, line: 192, baseType: !236, size: 128, offset: 448)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !4337, file: !628, line: 194, baseType: !1243, size: 128, offset: 576)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4328, file: !628, line: 144, baseType: !4377, size: 64)
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !628, line: 103, size: 64, elements: !4378)
!4378 = !{!4379}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4377, file: !628, line: 104, baseType: !4317, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4328, file: !628, line: 145, baseType: !4381, size: 256)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !628, line: 107, size: 256, elements: !4382)
!4382 = !{!4383, !4431, !4434, !4435}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4381, file: !628, line: 108, baseType: !4384, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4386)
!4386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !628, line: 217, size: 768, elements: !4387)
!4387 = !{!4388, !4408, !4412, !4413, !4414, !4415, !4416, !4420, !4421, !4422, !4423, !4427}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4386, file: !628, line: 222, baseType: !4389, size: 64)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!165, !4392}
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !628, line: 197, size: 1088, elements: !4394)
!4394 = !{!4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4393, file: !628, line: 199, baseType: !4317, size: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4393, file: !628, line: 200, baseType: !368, size: 64, offset: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4393, file: !628, line: 201, baseType: !737, size: 64, offset: 128)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4393, file: !628, line: 202, baseType: !181, size: 64, offset: 192)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4393, file: !628, line: 205, baseType: !749, size: 192, offset: 256)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4393, file: !628, line: 206, baseType: !749, size: 192, offset: 448)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4393, file: !628, line: 207, baseType: !165, size: 32, offset: 640)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4393, file: !628, line: 208, baseType: !236, size: 128, offset: 704)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4393, file: !628, line: 209, baseType: !290, size: 64, offset: 832)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4393, file: !628, line: 211, baseType: !337, size: 64, offset: 896)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4393, file: !628, line: 212, baseType: !212, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4393, file: !628, line: 213, baseType: !212, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4393, file: !628, line: 214, baseType: !2029, size: 64, offset: 1024)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4386, file: !628, line: 223, baseType: !4409, size: 64, offset: 64)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{null, !4392}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4386, file: !628, line: 236, baseType: !781, size: 64, offset: 128)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4386, file: !628, line: 238, baseType: !768, size: 64, offset: 192)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4386, file: !628, line: 239, baseType: !777, size: 64, offset: 256)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4386, file: !628, line: 240, baseType: !773, size: 64, offset: 320)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4386, file: !628, line: 242, baseType: !4417, size: 64, offset: 384)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!321, !4392, !290, !337, !540}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4386, file: !628, line: 252, baseType: !337, size: 64, offset: 448)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4386, file: !628, line: 259, baseType: !212, size: 8, offset: 512)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4386, file: !628, line: 260, baseType: !4417, size: 64, offset: 576)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4386, file: !628, line: 263, baseType: !4424, size: 64, offset: 640)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!4000, !4392, !4002}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4386, file: !628, line: 266, baseType: !4428, size: 64, offset: 704)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!165, !4392, !2001}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4381, file: !628, line: 109, baseType: !4432, size: 64, offset: 64)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !628, line: 31, flags: DIFlagFwdDecl)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4381, file: !628, line: 110, baseType: !540, size: 64, offset: 128)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4381, file: !628, line: 111, baseType: !4317, size: 64, offset: 192)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4318, file: !628, line: 148, baseType: !181, size: 64, offset: 768)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4318, file: !628, line: 154, baseType: !433, size: 64, offset: 832)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4318, file: !628, line: 156, baseType: !332, size: 16, offset: 896)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4318, file: !628, line: 157, baseType: !331, size: 16, offset: 912)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4318, file: !628, line: 158, baseType: !4441, size: 64, offset: 960)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !628, line: 32, flags: DIFlagFwdDecl)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !228, file: !229, line: 71, baseType: !1626, size: 32, offset: 448)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !228, file: !229, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !228, file: !229, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !228, file: !229, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !228, file: !229, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !228, file: !229, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !225, file: !115, line: 463, baseType: !1694, size: 64, offset: 512)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !225, file: !115, line: 465, baseType: !4451, size: 64, offset: 576)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !115, line: 36, flags: DIFlagFwdDecl)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !225, file: !115, line: 467, baseType: !232, size: 64, offset: 640)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !225, file: !115, line: 468, baseType: !4455, size: 64, offset: 704)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4457)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !115, line: 87, size: 384, elements: !4458)
!4458 = !{!4459, !4460, !4461, !4465, !4469, !4473}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4457, file: !115, line: 88, baseType: !232, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4457, file: !115, line: 89, baseType: !344, size: 64, offset: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4457, file: !115, line: 90, baseType: !4462, size: 64, offset: 128)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!165, !1694, !285}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4457, file: !115, line: 91, baseType: !4466, size: 64, offset: 192)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!290, !1694, !1332, !2818, !2819}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4457, file: !115, line: 93, baseType: !4470, size: 64, offset: 256)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{null, !1694}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4457, file: !115, line: 95, baseType: !4474, size: 64, offset: 320)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4476)
!4476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !44, line: 278, size: 1472, elements: !4477)
!4477 = !{!4478, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4476, file: !44, line: 279, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!165, !1694}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4476, file: !44, line: 280, baseType: !4470, size: 64, offset: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4476, file: !44, line: 281, baseType: !4479, size: 64, offset: 128)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4476, file: !44, line: 282, baseType: !4479, size: 64, offset: 192)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4476, file: !44, line: 283, baseType: !4479, size: 64, offset: 256)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4476, file: !44, line: 284, baseType: !4479, size: 64, offset: 320)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4476, file: !44, line: 285, baseType: !4479, size: 64, offset: 384)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4476, file: !44, line: 286, baseType: !4479, size: 64, offset: 448)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4476, file: !44, line: 287, baseType: !4479, size: 64, offset: 512)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4476, file: !44, line: 288, baseType: !4479, size: 64, offset: 576)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4476, file: !44, line: 289, baseType: !4479, size: 64, offset: 640)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4476, file: !44, line: 290, baseType: !4479, size: 64, offset: 704)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4476, file: !44, line: 291, baseType: !4479, size: 64, offset: 768)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4476, file: !44, line: 292, baseType: !4479, size: 64, offset: 832)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4476, file: !44, line: 293, baseType: !4479, size: 64, offset: 896)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4476, file: !44, line: 294, baseType: !4479, size: 64, offset: 960)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4476, file: !44, line: 295, baseType: !4479, size: 64, offset: 1024)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4476, file: !44, line: 296, baseType: !4479, size: 64, offset: 1088)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4476, file: !44, line: 297, baseType: !4479, size: 64, offset: 1152)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4476, file: !44, line: 298, baseType: !4479, size: 64, offset: 1216)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4476, file: !44, line: 299, baseType: !4479, size: 64, offset: 1280)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4476, file: !44, line: 300, baseType: !4479, size: 64, offset: 1344)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4476, file: !44, line: 301, baseType: !4479, size: 64, offset: 1408)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !225, file: !115, line: 470, baseType: !4505, size: 64, offset: 768)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4507, line: 82, size: 1408, elements: !4508)
!4507 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!4508 = !{!4509, !4510, !4511, !4512, !4513, !4514, !4515, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4590, !4593, !4594}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4506, file: !4507, line: 83, baseType: !232, size: 64)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4506, file: !4507, line: 84, baseType: !232, size: 64, offset: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !4506, file: !4507, line: 85, baseType: !1694, size: 64, offset: 128)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4506, file: !4507, line: 86, baseType: !344, size: 64, offset: 192)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4506, file: !4507, line: 87, baseType: !344, size: 64, offset: 256)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4506, file: !4507, line: 88, baseType: !344, size: 64, offset: 320)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4506, file: !4507, line: 90, baseType: !4516, size: 64, offset: 384)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!165, !1694, !4519}
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !109, line: 95, size: 1152, elements: !4521)
!4521 = !{!4522, !4523, !4524, !4525, !4526, !4527, !4528, !4541, !4554, !4555, !4556, !4557, !4558, !4566, !4567, !4568, !4569, !4570, !4571}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4520, file: !109, line: 96, baseType: !232, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4520, file: !109, line: 97, baseType: !4505, size: 64, offset: 64)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4520, file: !109, line: 99, baseType: !642, size: 64, offset: 128)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4520, file: !109, line: 100, baseType: !232, size: 64, offset: 192)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4520, file: !109, line: 102, baseType: !212, size: 8, offset: 256)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4520, file: !109, line: 103, baseType: !108, size: 32, offset: 288)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4520, file: !109, line: 105, baseType: !4529, size: 64, offset: 320)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4531)
!4531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4532, line: 262, size: 1600, elements: !4533)
!4532 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!4533 = !{!4534, !4535, !4536, !4540}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4531, file: !4532, line: 263, baseType: !1131, size: 256)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4531, file: !4532, line: 264, baseType: !1131, size: 256, offset: 256)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4531, file: !4532, line: 265, baseType: !4537, size: 1024, offset: 512)
!4537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 1024, elements: !4538)
!4538 = !{!4539}
!4539 = !DISubrange(count: 128)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4531, file: !4532, line: 266, baseType: !221, size: 64, offset: 1536)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4520, file: !109, line: 106, baseType: !4542, size: 64, offset: 384)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4544)
!4544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4532, line: 210, size: 256, elements: !4545)
!4545 = !{!4546, !4550, !4552, !4553}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4544, file: !4532, line: 211, baseType: !4547, size: 72)
!4547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 72, elements: !4548)
!4548 = !{!4549}
!4549 = !DISubrange(count: 9)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4544, file: !4532, line: 212, baseType: !4551, size: 64, offset: 128)
!4551 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4532, line: 14, baseType: !340)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4544, file: !4532, line: 213, baseType: !180, size: 32, offset: 192)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4544, file: !4532, line: 214, baseType: !180, size: 32, offset: 224)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4520, file: !109, line: 108, baseType: !4479, size: 64, offset: 448)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4520, file: !109, line: 109, baseType: !4470, size: 64, offset: 512)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4520, file: !109, line: 110, baseType: !4479, size: 64, offset: 576)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4520, file: !109, line: 111, baseType: !4470, size: 64, offset: 640)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4520, file: !109, line: 112, baseType: !4559, size: 64, offset: 704)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!165, !1694, !4562}
!4562 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !44, line: 52, baseType: !4563)
!4563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !44, line: 50, size: 32, elements: !4564)
!4564 = !{!4565}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4563, file: !44, line: 51, baseType: !165, size: 32)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4520, file: !109, line: 113, baseType: !4479, size: 64, offset: 768)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4520, file: !109, line: 114, baseType: !344, size: 64, offset: 832)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4520, file: !109, line: 115, baseType: !344, size: 64, offset: 896)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4520, file: !109, line: 117, baseType: !4474, size: 64, offset: 960)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4520, file: !109, line: 118, baseType: !4470, size: 64, offset: 1024)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4520, file: !109, line: 120, baseType: !4572, size: 64, offset: 1088)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !109, line: 120, flags: DIFlagFwdDecl)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4506, file: !4507, line: 91, baseType: !4462, size: 64, offset: 448)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4506, file: !4507, line: 92, baseType: !4479, size: 64, offset: 512)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4506, file: !4507, line: 93, baseType: !4470, size: 64, offset: 576)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4506, file: !4507, line: 94, baseType: !4479, size: 64, offset: 640)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4506, file: !4507, line: 95, baseType: !4470, size: 64, offset: 704)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4506, file: !4507, line: 97, baseType: !4479, size: 64, offset: 768)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4506, file: !4507, line: 98, baseType: !4479, size: 64, offset: 832)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4506, file: !4507, line: 100, baseType: !4559, size: 64, offset: 896)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4506, file: !4507, line: 101, baseType: !4479, size: 64, offset: 960)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4506, file: !4507, line: 103, baseType: !4479, size: 64, offset: 1024)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4506, file: !4507, line: 105, baseType: !4479, size: 64, offset: 1088)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4506, file: !4507, line: 107, baseType: !4474, size: 64, offset: 1152)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4506, file: !4507, line: 109, baseType: !4587, size: 64, offset: 1216)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4589)
!4589 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4507, line: 109, flags: DIFlagFwdDecl)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4506, file: !4507, line: 111, baseType: !4591, size: 64, offset: 1280)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !4507, line: 111, flags: DIFlagFwdDecl)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !4506, file: !4507, line: 112, baseType: !657, offset: 1344)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4506, file: !4507, line: 114, baseType: !212, size: 8, offset: 1344)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !225, file: !115, line: 471, baseType: !4519, size: 64, offset: 832)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !225, file: !115, line: 473, baseType: !181, size: 64, offset: 896)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !225, file: !115, line: 475, baseType: !181, size: 64, offset: 960)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !225, file: !115, line: 480, baseType: !749, size: 192, offset: 1024)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !225, file: !115, line: 484, baseType: !4600, size: 576, offset: 1216)
!4600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !115, line: 361, size: 576, elements: !4601)
!4601 = !{!4602, !4603, !4604, !4605, !4606, !4607}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4600, file: !115, line: 362, baseType: !236, size: 128)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4600, file: !115, line: 363, baseType: !236, size: 128, offset: 128)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !4600, file: !115, line: 364, baseType: !236, size: 128, offset: 256)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !4600, file: !115, line: 365, baseType: !236, size: 128, offset: 384)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !4600, file: !115, line: 366, baseType: !212, size: 8, offset: 512)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4600, file: !115, line: 367, baseType: !114, size: 32, offset: 544)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !225, file: !115, line: 485, baseType: !4609, size: 2304, offset: 1792)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !44, line: 565, size: 2304, elements: !4610)
!4610 = !{!4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4699, !4703}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4609, file: !44, line: 566, baseType: !4562, size: 32)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4609, file: !44, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4609, file: !44, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4609, file: !44, line: 569, baseType: !212, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4609, file: !44, line: 570, baseType: !212, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4609, file: !44, line: 571, baseType: !212, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4609, file: !44, line: 572, baseType: !212, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4609, file: !44, line: 573, baseType: !212, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4609, file: !44, line: 574, baseType: !212, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4609, file: !44, line: 575, baseType: !212, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4609, file: !44, line: 576, baseType: !212, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4609, file: !44, line: 577, baseType: !179, size: 32, offset: 64)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4609, file: !44, line: 578, baseType: !249, offset: 96)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4609, file: !44, line: 580, baseType: !236, size: 128, offset: 128)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4609, file: !44, line: 581, baseType: !2499, size: 192, offset: 256)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4609, file: !44, line: 582, baseType: !4627, size: 64, offset: 448)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4629, line: 43, size: 1472, elements: !4630)
!4629 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!4630 = !{!4631, !4632, !4633, !4634, !4635, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4628, file: !4629, line: 44, baseType: !232, size: 64)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4628, file: !4629, line: 45, baseType: !165, size: 32, offset: 64)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4628, file: !4629, line: 46, baseType: !236, size: 128, offset: 128)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4628, file: !4629, line: 47, baseType: !249, offset: 256)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4628, file: !4629, line: 48, baseType: !4636, size: 64, offset: 256)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !44, line: 533, flags: DIFlagFwdDecl)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4628, file: !4629, line: 49, baseType: !1676, size: 320, offset: 320)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4628, file: !4629, line: 50, baseType: !340, size: 64, offset: 640)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4628, file: !4629, line: 51, baseType: !2306, size: 64, offset: 704)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4628, file: !4629, line: 52, baseType: !2306, size: 64, offset: 768)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4628, file: !4629, line: 53, baseType: !2306, size: 64, offset: 832)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4628, file: !4629, line: 54, baseType: !2306, size: 64, offset: 896)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4628, file: !4629, line: 55, baseType: !2306, size: 64, offset: 960)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4628, file: !4629, line: 56, baseType: !340, size: 64, offset: 1024)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4628, file: !4629, line: 57, baseType: !340, size: 64, offset: 1088)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4628, file: !4629, line: 58, baseType: !340, size: 64, offset: 1152)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4628, file: !4629, line: 59, baseType: !340, size: 64, offset: 1216)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4628, file: !4629, line: 60, baseType: !340, size: 64, offset: 1280)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4628, file: !4629, line: 61, baseType: !1694, size: 64, offset: 1344)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4628, file: !4629, line: 62, baseType: !212, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4628, file: !4629, line: 63, baseType: !212, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4609, file: !44, line: 583, baseType: !212, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4609, file: !44, line: 584, baseType: !212, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4609, file: !44, line: 585, baseType: !212, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4609, file: !44, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4609, file: !44, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4609, file: !44, line: 592, baseType: !2298, size: 512, offset: 576)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4609, file: !44, line: 593, baseType: !433, size: 64, offset: 1088)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4609, file: !44, line: 594, baseType: !1107, size: 256, offset: 1152)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4609, file: !44, line: 595, baseType: !1243, size: 128, offset: 1408)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4609, file: !44, line: 596, baseType: !4636, size: 64, offset: 1536)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4609, file: !44, line: 597, baseType: !823, size: 32, offset: 1600)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4609, file: !44, line: 598, baseType: !823, size: 32, offset: 1632)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4609, file: !44, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4609, file: !44, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4609, file: !44, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4609, file: !44, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4609, file: !44, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4609, file: !44, line: 604, baseType: !212, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4609, file: !44, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4609, file: !44, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4609, file: !44, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4609, file: !44, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4609, file: !44, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4609, file: !44, line: 610, baseType: !7, size: 32, offset: 1696)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4609, file: !44, line: 611, baseType: !121, size: 32, offset: 1728)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4609, file: !44, line: 612, baseType: !43, size: 32, offset: 1760)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4609, file: !44, line: 613, baseType: !165, size: 32, offset: 1792)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4609, file: !44, line: 614, baseType: !165, size: 32, offset: 1824)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4609, file: !44, line: 615, baseType: !433, size: 64, offset: 1856)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4609, file: !44, line: 616, baseType: !433, size: 64, offset: 1920)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4609, file: !44, line: 617, baseType: !433, size: 64, offset: 1984)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4609, file: !44, line: 618, baseType: !433, size: 64, offset: 2048)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4609, file: !44, line: 620, baseType: !4686, size: 64, offset: 2112)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !44, line: 536, size: 256, elements: !4688)
!4688 = !{!4689, !4690, !4691, !4692}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4687, file: !44, line: 537, baseType: !249)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4687, file: !44, line: 538, baseType: !7, size: 32)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !4687, file: !44, line: 540, baseType: !236, size: 128, offset: 64)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !4687, file: !44, line: 543, baseType: !4693, size: 64, offset: 192)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !4695, line: 182, size: 192, elements: !4696)
!4695 = !DIFile(filename: "./include/linux/pm_domain.h", directory: "/home/lizy2001/genbc/linux")
!4696 = !{!4697, !4698}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !4694, file: !4695, line: 183, baseType: !236, size: 128)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4694, file: !4695, line: 184, baseType: !1694, size: 64, offset: 128)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4609, file: !44, line: 621, baseType: !4700, size: 64, offset: 2176)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{null, !1694, !2448}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4609, file: !44, line: 622, baseType: !4704, size: 64, offset: 2240)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !129, line: 117, size: 2304, elements: !4706)
!4706 = !{!4707, !4735, !4736, !4743, !4748, !4770, !4771}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !4705, file: !129, line: 118, baseType: !4708, size: 320)
!4708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !129, line: 52, size: 320, elements: !4709)
!4709 = !{!4710, !4714, !4715, !4716, !4717, !4718}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4708, file: !129, line: 53, baseType: !4711, size: 128)
!4711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1002, line: 79, size: 128, elements: !4712)
!4712 = !{!4713}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !4711, file: !1002, line: 80, baseType: !236, size: 128)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !4708, file: !129, line: 54, baseType: !2448, size: 32, offset: 128)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !4708, file: !129, line: 55, baseType: !2448, size: 32, offset: 160)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !4708, file: !129, line: 56, baseType: !2448, size: 32, offset: 192)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4708, file: !129, line: 57, baseType: !128, size: 32, offset: 224)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !4708, file: !129, line: 58, baseType: !4719, size: 64, offset: 256)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !4721, line: 65, size: 320, elements: !4722)
!4721 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!4722 = !{!4723, !4724}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !4720, file: !4721, line: 66, baseType: !843, size: 256)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4720, file: !4721, line: 67, baseType: !4725, size: 64, offset: 256)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4721, line: 54, size: 192, elements: !4727)
!4727 = !{!4728, !4733, !4734}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4726, file: !4721, line: 55, baseType: !4729, size: 64)
!4729 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4721, line: 51, baseType: !4730)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{!165, !4725, !340, !181}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4726, file: !4721, line: 56, baseType: !4725, size: 64, offset: 64)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4726, file: !4721, line: 57, baseType: !165, size: 32, offset: 128)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !4705, file: !129, line: 119, baseType: !4708, size: 320, offset: 320)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4705, file: !129, line: 120, baseType: !4737, size: 1280, offset: 640)
!4737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !129, line: 85, size: 1280, elements: !4738)
!4738 = !{!4739, !4740, !4741, !4742}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !4737, file: !129, line: 86, baseType: !4708, size: 320)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !4737, file: !129, line: 87, baseType: !4720, size: 320, offset: 320)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !4737, file: !129, line: 88, baseType: !4708, size: 320, offset: 640)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !4737, file: !129, line: 89, baseType: !4720, size: 320, offset: 960)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4705, file: !129, line: 121, baseType: !4744, size: 192, offset: 1920)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !129, line: 71, size: 192, elements: !4745)
!4745 = !{!4746, !4747}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4744, file: !129, line: 72, baseType: !236, size: 128)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !4744, file: !129, line: 73, baseType: !2448, size: 32, offset: 128)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !4705, file: !129, line: 122, baseType: !4749, size: 64, offset: 2112)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !129, line: 107, size: 576, elements: !4751)
!4751 = !{!4752, !4753, !4769}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4750, file: !129, line: 108, baseType: !134, size: 32)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4750, file: !129, line: 113, baseType: !4754, size: 448, offset: 64)
!4754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4750, file: !129, line: 109, size: 448, elements: !4755)
!4755 = !{!4756, !4757, !4762}
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4754, file: !129, line: 110, baseType: !1001, size: 320)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !4754, file: !129, line: 111, baseType: !4758, size: 192)
!4758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !129, line: 66, size: 192, elements: !4759)
!4759 = !{!4760, !4761}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4758, file: !129, line: 67, baseType: !236, size: 128)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4758, file: !129, line: 68, baseType: !2448, size: 32, offset: 128)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4754, file: !129, line: 112, baseType: !4763, size: 448)
!4763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !129, line: 92, size: 448, elements: !4764)
!4764 = !{!4765, !4766, !4767}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4763, file: !129, line: 93, baseType: !141, size: 32)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4763, file: !129, line: 94, baseType: !1001, size: 320, offset: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4763, file: !129, line: 95, baseType: !4768, size: 64, offset: 384)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4750, file: !129, line: 114, baseType: !1694, size: 64, offset: 512)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !4705, file: !129, line: 123, baseType: !4749, size: 64, offset: 2176)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !4705, file: !129, line: 124, baseType: !4749, size: 64, offset: 2240)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !225, file: !115, line: 486, baseType: !4773, size: 64, offset: 4096)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !44, line: 642, size: 1792, elements: !4775)
!4775 = !{!4776, !4777, !4778, !4782, !4783, !4784}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4774, file: !44, line: 643, baseType: !4476, size: 1472)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4774, file: !44, line: 644, baseType: !4479, size: 64, offset: 1472)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4774, file: !44, line: 645, baseType: !4779, size: 64, offset: 1536)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = !DISubroutineType(types: !4781)
!4781 = !{null, !1694, !212}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4774, file: !44, line: 646, baseType: !4479, size: 64, offset: 1600)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4774, file: !44, line: 647, baseType: !4470, size: 64, offset: 1664)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4774, file: !44, line: 648, baseType: !4470, size: 64, offset: 1728)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !225, file: !115, line: 493, baseType: !4786, size: 64, offset: 4160)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !146, line: 162, size: 1088, elements: !4788)
!4788 = !{!4789, !4790, !4791, !4875, !4876, !4877, !4878, !4879, !4880, !4883, !4884, !4885, !4886, !4887, !4888, !4889}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4787, file: !146, line: 163, baseType: !236, size: 128)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4787, file: !146, line: 164, baseType: !232, size: 64, offset: 128)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4787, file: !146, line: 165, baseType: !4792, size: 64, offset: 192)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4794)
!4794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !146, line: 105, size: 640, elements: !4795)
!4795 = !{!4796, !4825, !4836, !4841, !4845, !4852, !4856, !4860, !4867, !4871}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4794, file: !146, line: 106, baseType: !4797, size: 64)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!165, !4786, !4800, !145}
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4802, line: 51, size: 1344, elements: !4803)
!4802 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!4803 = !{!4804, !4805, !4807, !4808, !4809, !4818, !4819, !4820, !4821, !4822, !4823, !4824}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4801, file: !4802, line: 52, baseType: !232, size: 64)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4801, file: !4802, line: 53, baseType: !4806, size: 32, offset: 64)
!4806 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4802, line: 28, baseType: !179)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4801, file: !4802, line: 54, baseType: !232, size: 64, offset: 128)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4801, file: !4802, line: 55, baseType: !190, size: 192, offset: 192)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4801, file: !4802, line: 57, baseType: !4810, size: 64, offset: 384)
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4802, line: 31, size: 704, elements: !4812)
!4812 = !{!4813, !4814, !4815, !4816, !4817}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4811, file: !4802, line: 32, baseType: !290, size: 64)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4811, file: !4802, line: 33, baseType: !165, size: 32, offset: 64)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4811, file: !4802, line: 34, baseType: !181, size: 64, offset: 128)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4811, file: !4802, line: 35, baseType: !4810, size: 64, offset: 192)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4811, file: !4802, line: 43, baseType: !359, size: 448, offset: 256)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4801, file: !4802, line: 58, baseType: !4810, size: 64, offset: 448)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4801, file: !4802, line: 59, baseType: !4800, size: 64, offset: 512)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4801, file: !4802, line: 60, baseType: !4800, size: 64, offset: 576)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4801, file: !4802, line: 61, baseType: !4800, size: 64, offset: 640)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4801, file: !4802, line: 63, baseType: !228, size: 512, offset: 704)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4801, file: !4802, line: 65, baseType: !340, size: 64, offset: 1216)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4801, file: !4802, line: 66, baseType: !181, size: 64, offset: 1280)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !4794, file: !146, line: 108, baseType: !4826, size: 64, offset: 64)
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!165, !4786, !4829, !145}
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !146, line: 63, size: 640, elements: !4831)
!4831 = !{!4832, !4833, !4834}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4830, file: !146, line: 64, baseType: !194, size: 64)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4830, file: !146, line: 65, baseType: !165, size: 32, offset: 64)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4830, file: !146, line: 66, baseType: !4835, size: 512, offset: 96)
!4835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 512, elements: !1763)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4794, file: !146, line: 110, baseType: !4837, size: 64, offset: 128)
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = !DISubroutineType(types: !4839)
!4839 = !{!165, !4786, !7, !4840}
!4840 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !213, line: 164, baseType: !340)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4794, file: !146, line: 111, baseType: !4842, size: 64, offset: 192)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{null, !4786, !7}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !4794, file: !146, line: 112, baseType: !4846, size: 64, offset: 256)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{!165, !4786, !4800, !4849, !7, !4851, !1031}
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4794, file: !146, line: 117, baseType: !4853, size: 64, offset: 320)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!165, !4786, !7, !7, !181}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4794, file: !146, line: 119, baseType: !4857, size: 64, offset: 384)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{null, !4786, !7, !7}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4794, file: !146, line: 121, baseType: !4861, size: 64, offset: 448)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!165, !4786, !4864, !212}
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4866, line: 11, flags: DIFlagFwdDecl)
!4866 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !4794, file: !146, line: 122, baseType: !4868, size: 64, offset: 512)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{null, !4786, !4864}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !4794, file: !146, line: 123, baseType: !4872, size: 64, offset: 576)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!165, !4786, !4829, !4851, !1031}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !4787, file: !146, line: 166, baseType: !181, size: 64, offset: 256)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4787, file: !146, line: 167, baseType: !7, size: 32, offset: 320)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !4787, file: !146, line: 168, baseType: !7, size: 32, offset: 352)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4787, file: !146, line: 171, baseType: !194, size: 64, offset: 384)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !4787, file: !146, line: 172, baseType: !145, size: 32, offset: 448)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4787, file: !146, line: 173, baseType: !4881, size: 64, offset: 512)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !146, line: 134, flags: DIFlagFwdDecl)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4787, file: !146, line: 175, baseType: !4786, size: 64, offset: 576)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !4787, file: !146, line: 182, baseType: !4840, size: 64, offset: 640)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !4787, file: !146, line: 183, baseType: !7, size: 32, offset: 704)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !4787, file: !146, line: 184, baseType: !7, size: 32, offset: 736)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !4787, file: !146, line: 185, baseType: !814, size: 128, offset: 768)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !4787, file: !146, line: 186, baseType: !749, size: 192, offset: 896)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !4787, file: !146, line: 187, baseType: !4890, offset: 1088)
!4890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1145)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !225, file: !115, line: 499, baseType: !236, size: 128, offset: 4224)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !225, file: !115, line: 502, baseType: !4893, size: 64, offset: 4352)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4894, size: 64)
!4894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4895)
!4895 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !115, line: 502, flags: DIFlagFwdDecl)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !225, file: !115, line: 504, baseType: !4897, size: 64, offset: 4416)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !225, file: !115, line: 505, baseType: !433, size: 64, offset: 4480)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !225, file: !115, line: 510, baseType: !433, size: 64, offset: 4544)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !225, file: !115, line: 511, baseType: !4901, size: 64, offset: 4608)
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4903)
!4903 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !115, line: 511, flags: DIFlagFwdDecl)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !225, file: !115, line: 513, baseType: !4905, size: 64, offset: 4672)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !115, line: 288, size: 128, elements: !4907)
!4907 = !{!4908, !4909}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4906, file: !115, line: 293, baseType: !7, size: 32)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4906, file: !115, line: 294, baseType: !340, size: 64, offset: 64)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !225, file: !115, line: 515, baseType: !236, size: 128, offset: 4736)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !225, file: !115, line: 526, baseType: !4912, offset: 4864)
!4912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4913, line: 5, elements: !263)
!4913 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !225, file: !115, line: 528, baseType: !4800, size: 64, offset: 4864)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !225, file: !115, line: 529, baseType: !194, size: 64, offset: 4928)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !225, file: !115, line: 534, baseType: !522, size: 32, offset: 4992)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !225, file: !115, line: 535, baseType: !179, size: 32, offset: 5024)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !225, file: !115, line: 537, baseType: !249, offset: 5056)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !225, file: !115, line: 538, baseType: !236, size: 128, offset: 5056)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !225, file: !115, line: 540, baseType: !4921, size: 64, offset: 5184)
!4921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4922, size: 64)
!4922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4923, line: 54, size: 960, elements: !4924)
!4923 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4924 = !{!4925, !4926, !4927, !4928, !4929, !4930, !4931, !4935, !4939, !4940, !4941, !4942, !4946, !4950, !4951}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4922, file: !4923, line: 55, baseType: !232, size: 64)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4922, file: !4923, line: 56, baseType: !642, size: 64, offset: 64)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4922, file: !4923, line: 58, baseType: !344, size: 64, offset: 128)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4922, file: !4923, line: 59, baseType: !344, size: 64, offset: 192)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4922, file: !4923, line: 60, baseType: !242, size: 64, offset: 256)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4922, file: !4923, line: 62, baseType: !4462, size: 64, offset: 320)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4922, file: !4923, line: 63, baseType: !4932, size: 64, offset: 384)
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = !DISubroutineType(types: !4934)
!4934 = !{!290, !1694, !1332}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4922, file: !4923, line: 65, baseType: !4936, size: 64, offset: 448)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{null, !4921}
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4922, file: !4923, line: 66, baseType: !4470, size: 64, offset: 512)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4922, file: !4923, line: 68, baseType: !4479, size: 64, offset: 576)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4922, file: !4923, line: 70, baseType: !4284, size: 64, offset: 640)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4922, file: !4923, line: 71, baseType: !4943, size: 64, offset: 704)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{!221, !1694}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4922, file: !4923, line: 73, baseType: !4947, size: 64, offset: 768)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4948 = !DISubroutineType(types: !4949)
!4949 = !{null, !1694, !2818, !2819}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4922, file: !4923, line: 75, baseType: !4474, size: 64, offset: 832)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4922, file: !4923, line: 77, baseType: !4591, size: 64, offset: 896)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !225, file: !115, line: 541, baseType: !344, size: 64, offset: 5248)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !225, file: !115, line: 543, baseType: !4470, size: 64, offset: 5312)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !225, file: !115, line: 544, baseType: !4955, size: 64, offset: 5376)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !115, line: 45, flags: DIFlagFwdDecl)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !225, file: !115, line: 545, baseType: !4958, size: 64, offset: 5440)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !115, line: 47, flags: DIFlagFwdDecl)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !225, file: !115, line: 547, baseType: !212, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !225, file: !115, line: 548, baseType: !212, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !225, file: !115, line: 549, baseType: !212, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !225, file: !115, line: 550, baseType: !212, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !198, file: !191, line: 116, baseType: !4965, size: 64, offset: 256)
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4966, size: 64)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!212, !215, !232}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !198, file: !191, line: 118, baseType: !4969, size: 64, offset: 320)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!165, !215, !232, !7, !181, !337}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !198, file: !191, line: 123, baseType: !4973, size: 64, offset: 384)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!165, !215, !232, !4976, !337}
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !198, file: !191, line: 126, baseType: !4978, size: 64, offset: 448)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!232, !215}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !198, file: !191, line: 127, baseType: !4978, size: 64, offset: 512)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !198, file: !191, line: 128, baseType: !4983, size: 64, offset: 576)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!194, !215}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !198, file: !191, line: 130, baseType: !4987, size: 64, offset: 640)
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!194, !215, !194}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !198, file: !191, line: 133, baseType: !4991, size: 64, offset: 704)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!194, !215, !232}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !198, file: !191, line: 135, baseType: !4995, size: 64, offset: 768)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{!165, !215, !232, !232, !7, !7, !4998}
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !191, line: 43, size: 640, elements: !5000)
!5000 = !{!5001, !5002, !5003}
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4999, file: !191, line: 44, baseType: !194, size: 64)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4999, file: !191, line: 45, baseType: !7, size: 32, offset: 64)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4999, file: !191, line: 46, baseType: !5004, size: 512, offset: 128)
!5004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 512, elements: !2336)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !198, file: !191, line: 140, baseType: !4987, size: 64, offset: 832)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !198, file: !191, line: 143, baseType: !4983, size: 64, offset: 896)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !198, file: !191, line: 145, baseType: !201, size: 64, offset: 960)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !198, file: !191, line: 146, baseType: !5009, size: 64, offset: 1024)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{!165, !215, !5012}
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !191, line: 29, size: 128, elements: !5014)
!5014 = !{!5015, !5016, !5017}
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5013, file: !191, line: 30, baseType: !7, size: 32)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5013, file: !191, line: 31, baseType: !7, size: 32, offset: 32)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !5013, file: !191, line: 32, baseType: !215, size: 64, offset: 64)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !198, file: !191, line: 148, baseType: !5019, size: 64, offset: 1088)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5020, size: 64)
!5020 = !DISubroutineType(types: !5021)
!5021 = !{!165, !215, !1694}
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !190, file: !191, line: 20, baseType: !1694, size: 64, offset: 128)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !183, file: !184, line: 355, baseType: !182, size: 64, offset: 320)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !183, file: !184, line: 356, baseType: !236, size: 128, offset: 384)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !183, file: !184, line: 357, baseType: !236, size: 128, offset: 512)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !183, file: !184, line: 358, baseType: !236, size: 128, offset: 640)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !183, file: !184, line: 359, baseType: !236, size: 128, offset: 768)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !183, file: !184, line: 360, baseType: !5029, size: 32, offset: 896)
!5029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !184, line: 179, size: 32, elements: !5030)
!5030 = !{!5031, !5032, !5033, !5034, !5035, !5036}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !5029, file: !184, line: 180, baseType: !179, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5029, file: !184, line: 181, baseType: !179, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !5029, file: !184, line: 182, baseType: !179, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !5029, file: !184, line: 183, baseType: !179, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !5029, file: !184, line: 184, baseType: !179, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5029, file: !184, line: 185, baseType: !179, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !184, line: 361, baseType: !5038, size: 32, offset: 928)
!5038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !184, line: 190, size: 32, elements: !5039)
!5039 = !{!5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !5038, file: !184, line: 191, baseType: !179, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !5038, file: !184, line: 192, baseType: !179, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !5038, file: !184, line: 193, baseType: !179, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !5038, file: !184, line: 194, baseType: !179, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !5038, file: !184, line: 195, baseType: !179, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !5038, file: !184, line: 196, baseType: !179, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !5038, file: !184, line: 197, baseType: !179, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !5038, file: !184, line: 198, baseType: !179, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !5038, file: !184, line: 199, baseType: !179, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !5038, file: !184, line: 200, baseType: !179, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !5038, file: !184, line: 201, baseType: !179, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !5038, file: !184, line: 202, baseType: !179, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !5038, file: !184, line: 203, baseType: !179, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5038, file: !184, line: 204, baseType: !179, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !183, file: !184, line: 362, baseType: !5055, size: 960, offset: 960)
!5055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !184, line: 234, size: 960, elements: !5056)
!5056 = !{!5057, !5059, !5066, !5068, !5069, !5070, !5075, !5078}
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !5055, file: !184, line: 235, baseType: !5058, size: 64)
!5058 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !184, line: 217, baseType: !3162)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5055, file: !184, line: 236, baseType: !5060, size: 32, offset: 64)
!5060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !184, line: 227, size: 32, elements: !5061)
!5061 = !{!5062, !5063, !5064, !5065}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !5060, file: !184, line: 228, baseType: !179, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !5060, file: !184, line: 229, baseType: !179, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !5060, file: !184, line: 230, baseType: !179, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5060, file: !184, line: 231, baseType: !179, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !5055, file: !184, line: 237, baseType: !5067, size: 64, offset: 128)
!5067 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !184, line: 218, baseType: !433)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !5055, file: !184, line: 238, baseType: !290, size: 64, offset: 192)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !5055, file: !184, line: 239, baseType: !236, size: 128, offset: 256)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !5055, file: !184, line: 240, baseType: !5071, size: 320, offset: 384)
!5071 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !184, line: 219, baseType: !5072)
!5072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 320, elements: !5073)
!5073 = !{!5074}
!5074 = !DISubrange(count: 40)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !5055, file: !184, line: 241, baseType: !5076, size: 160, offset: 704)
!5076 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !184, line: 220, baseType: !5077)
!5077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 160, elements: !3329)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !5055, file: !184, line: 242, baseType: !5079, size: 64, offset: 896)
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5080, size: 64)
!5080 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !178, line: 899, size: 192, elements: !5081)
!5081 = !{!5082, !5084, !5089, !5095, !5102, !5108, !5114, !5122}
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5080, file: !178, line: 900, baseType: !5083, size: 32)
!5083 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !178, line: 635, baseType: !179)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !5080, file: !178, line: 904, baseType: !5085, size: 128)
!5085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5080, file: !178, line: 901, size: 128, elements: !5086)
!5086 = !{!5087, !5088}
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5085, file: !178, line: 902, baseType: !5083, size: 32)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5085, file: !178, line: 903, baseType: !433, size: 64, offset: 64)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5080, file: !178, line: 910, baseType: !5090, size: 128)
!5090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5080, file: !178, line: 906, size: 128, elements: !5091)
!5091 = !{!5092, !5093, !5094}
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5090, file: !178, line: 907, baseType: !5083, size: 32)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5090, file: !178, line: 908, baseType: !179, size: 32, offset: 32)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5090, file: !178, line: 909, baseType: !290, size: 64, offset: 64)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5080, file: !178, line: 916, baseType: !5096, size: 128)
!5096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5080, file: !178, line: 912, size: 128, elements: !5097)
!5097 = !{!5098, !5099, !5100}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5096, file: !178, line: 913, baseType: !5083, size: 32)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5096, file: !178, line: 914, baseType: !179, size: 32, offset: 32)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5096, file: !178, line: 915, baseType: !5101, size: 64, offset: 64)
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !5080, file: !178, line: 922, baseType: !5103, size: 128)
!5103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5080, file: !178, line: 918, size: 128, elements: !5104)
!5104 = !{!5105, !5106, !5107}
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5103, file: !178, line: 919, baseType: !5083, size: 32)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5103, file: !178, line: 920, baseType: !179, size: 32, offset: 32)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !5103, file: !178, line: 921, baseType: !5079, size: 64, offset: 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !5080, file: !178, line: 928, baseType: !5109, size: 128)
!5109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5080, file: !178, line: 924, size: 128, elements: !5110)
!5110 = !{!5111, !5112, !5113}
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5109, file: !178, line: 925, baseType: !5083, size: 32)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !5109, file: !178, line: 926, baseType: !5083, size: 32, offset: 32)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !5109, file: !178, line: 927, baseType: !188, size: 64, offset: 64)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !5080, file: !178, line: 935, baseType: !5115, size: 192)
!5115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5080, file: !178, line: 930, size: 192, elements: !5116)
!5116 = !{!5117, !5118, !5119, !5121}
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5115, file: !178, line: 931, baseType: !5083, size: 32)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !5115, file: !178, line: 932, baseType: !179, size: 32, offset: 32)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !5115, file: !178, line: 933, baseType: !5120, size: 64, offset: 64)
!5120 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !178, line: 128, baseType: !433)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !5115, file: !178, line: 934, baseType: !179, size: 32, offset: 128)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !5080, file: !178, line: 941, baseType: !5123, size: 96)
!5123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5080, file: !178, line: 937, size: 96, elements: !5124)
!5124 = !{!5125, !5126, !5127}
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5123, file: !178, line: 938, baseType: !5083, size: 32)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !5123, file: !178, line: 939, baseType: !179, size: 32, offset: 32)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !5123, file: !178, line: 940, baseType: !179, size: 32, offset: 64)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !183, file: !184, line: 363, baseType: !5129, size: 1344, offset: 1920)
!5129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !184, line: 275, size: 1344, elements: !5130)
!5130 = !{!5131, !5132, !5142}
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5129, file: !184, line: 276, baseType: !165, size: 32)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5129, file: !184, line: 277, baseType: !5133, size: 32, offset: 32)
!5133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !184, line: 254, size: 32, elements: !5134)
!5134 = !{!5135, !5136, !5137, !5138, !5139, !5140, !5141}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !5133, file: !184, line: 255, baseType: !179, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !5133, file: !184, line: 256, baseType: !179, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !5133, file: !184, line: 257, baseType: !179, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !5133, file: !184, line: 258, baseType: !179, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !5133, file: !184, line: 259, baseType: !179, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !5133, file: !184, line: 260, baseType: !179, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5133, file: !184, line: 261, baseType: !179, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !5129, file: !184, line: 278, baseType: !5143, size: 1280, offset: 64)
!5143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5144, size: 1280, elements: !1891)
!5144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !184, line: 264, size: 256, elements: !5145)
!5145 = !{!5146, !5152, !5153, !5154}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5144, file: !184, line: 269, baseType: !5147, size: 8)
!5147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5144, file: !184, line: 265, size: 8, elements: !5148)
!5148 = !{!5149, !5150, !5151}
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5147, file: !184, line: 266, baseType: !172, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !5147, file: !184, line: 267, baseType: !172, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5147, file: !184, line: 268, baseType: !172, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !5144, file: !184, line: 270, baseType: !165, size: 32, offset: 32)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !5144, file: !184, line: 271, baseType: !165, size: 32, offset: 64)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5144, file: !184, line: 272, baseType: !236, size: 128, offset: 128)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !183, file: !184, line: 364, baseType: !5156, size: 640, offset: 3264)
!5156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !184, line: 315, size: 640, elements: !5157)
!5157 = !{!5158, !5159, !5160, !5161, !5162, !5167, !5176, !5177, !5178}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !5156, file: !184, line: 316, baseType: !188, size: 64)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !5156, file: !184, line: 317, baseType: !433, size: 64, offset: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !5156, file: !184, line: 318, baseType: !433, size: 64, offset: 128)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5156, file: !184, line: 319, baseType: !236, size: 128, offset: 192)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5156, file: !184, line: 320, baseType: !5163, size: 8, offset: 320)
!5163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !184, line: 305, size: 8, elements: !5164)
!5164 = !{!5165, !5166}
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5163, file: !184, line: 306, baseType: !172, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !5163, file: !184, line: 307, baseType: !172, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5156, file: !184, line: 321, baseType: !5168, size: 128, offset: 384)
!5168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !184, line: 310, size: 128, elements: !5169)
!5169 = !{!5170, !5175}
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5168, file: !184, line: 311, baseType: !5171, size: 64)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = !DISubroutineType(types: !5173)
!5173 = !{null, !5174}
!5174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5168, size: 64)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5168, file: !184, line: 312, baseType: !1694, size: 64, offset: 64)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !5156, file: !184, line: 322, baseType: !4627, size: 64, offset: 512)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !5156, file: !184, line: 323, baseType: !165, size: 32, offset: 576)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !5156, file: !184, line: 324, baseType: !165, size: 32, offset: 608)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !183, file: !184, line: 365, baseType: !5180, size: 192, offset: 3904)
!5180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !184, line: 297, size: 192, elements: !5181)
!5181 = !{!5182, !5183, !5187, !5188}
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5180, file: !184, line: 298, baseType: !165, size: 32)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5180, file: !184, line: 299, baseType: !5184, size: 8, offset: 32)
!5184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !184, line: 283, size: 8, elements: !5185)
!5185 = !{!5186}
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5184, file: !184, line: 284, baseType: !172, size: 8, flags: DIFlagBitField, extraData: i64 0)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !5180, file: !184, line: 300, baseType: !165, size: 32, offset: 64)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !5180, file: !184, line: 301, baseType: !5189, size: 64, offset: 128)
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5190, size: 64)
!5190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !184, line: 287, size: 64, elements: !5191)
!5191 = !{!5192, !5197, !5198, !5199}
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5190, file: !184, line: 291, baseType: !5193, size: 8)
!5193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5190, file: !184, line: 288, size: 8, elements: !5194)
!5194 = !{!5195, !5196}
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5193, file: !184, line: 289, baseType: !172, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5193, file: !184, line: 290, baseType: !172, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !5190, file: !184, line: 292, baseType: !172, size: 8, offset: 8)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !5190, file: !184, line: 293, baseType: !172, size: 8, offset: 16)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !5190, file: !184, line: 294, baseType: !165, size: 32, offset: 32)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !183, file: !184, line: 366, baseType: !5201, size: 64, offset: 4096)
!5201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !184, line: 209, size: 64, elements: !5202)
!5202 = !{!5203}
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5201, file: !184, line: 210, baseType: !5204, size: 64)
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5205 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !184, line: 84, flags: DIFlagFwdDecl)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !183, file: !184, line: 367, baseType: !5207, size: 384, offset: 4160)
!5207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !184, line: 341, size: 384, elements: !5208)
!5208 = !{!5209, !5212, !5213, !5214}
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5207, file: !184, line: 342, baseType: !5210, size: 64)
!5210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5211, size: 64)
!5211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5080)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5207, file: !184, line: 343, baseType: !236, size: 128, offset: 64)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !5207, file: !184, line: 344, baseType: !5210, size: 64, offset: 192)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !5207, file: !184, line: 345, baseType: !236, size: 128, offset: 256)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !183, file: !184, line: 368, baseType: !5216, size: 64, offset: 4544)
!5216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5217, size: 64)
!5217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !184, line: 122, size: 1216, elements: !5218)
!5218 = !{!5219, !5220, !5221, !5226, !5230, !5234, !5235, !5236}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !5217, file: !184, line: 123, baseType: !4542, size: 64)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !5217, file: !184, line: 124, baseType: !236, size: 128, offset: 64)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5217, file: !184, line: 125, baseType: !5222, size: 64, offset: 192)
!5222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5223, size: 64)
!5223 = !DISubroutineType(types: !5224)
!5224 = !{!212, !232, !5225}
!5225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !5217, file: !184, line: 126, baseType: !5227, size: 64, offset: 256)
!5227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5228, size: 64)
!5228 = !DISubroutineType(types: !5229)
!5229 = !{!165, !182, !4542}
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5217, file: !184, line: 127, baseType: !5231, size: 64, offset: 320)
!5231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5232, size: 64)
!5232 = !DISubroutineType(types: !5233)
!5233 = !{null, !182}
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !5217, file: !184, line: 128, baseType: !4470, size: 64, offset: 384)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !5217, file: !184, line: 129, baseType: !4470, size: 64, offset: 448)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !5217, file: !184, line: 130, baseType: !5237, size: 704, offset: 512)
!5237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !184, line: 108, size: 704, elements: !5238)
!5238 = !{!5239, !5240, !5244, !5245, !5246}
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5237, file: !184, line: 109, baseType: !228, size: 512)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !5237, file: !184, line: 110, baseType: !5241, size: 64, offset: 512)
!5241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5242, size: 64)
!5242 = !DISubroutineType(types: !5243)
!5243 = !{!165, !182}
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !5237, file: !184, line: 111, baseType: !5231, size: 64, offset: 576)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5237, file: !184, line: 112, baseType: !212, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !5237, file: !184, line: 113, baseType: !212, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !183, file: !184, line: 369, baseType: !5248, size: 64, offset: 4608)
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5249, size: 64)
!5249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !184, line: 138, size: 256, elements: !5250)
!5250 = !{!5251, !5252, !5256, !5260}
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !5249, file: !184, line: 139, baseType: !182, size: 64)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !5249, file: !184, line: 140, baseType: !5253, size: 64, offset: 64)
!5253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5254, size: 64)
!5254 = !DISubroutineType(types: !5255)
!5255 = !{!165, !182, !179}
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5249, file: !184, line: 141, baseType: !5257, size: 64, offset: 128)
!5257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5258, size: 64)
!5258 = !DISubroutineType(types: !5259)
!5259 = !{null, !182, !179}
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5249, file: !184, line: 142, baseType: !5231, size: 64, offset: 192)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !183, file: !184, line: 370, baseType: !5262, size: 64, offset: 4672)
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5263, size: 64)
!5263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !184, line: 162, size: 2816, elements: !5264)
!5264 = !{!5265, !5269, !5270, !5271, !5272, !5281, !5282}
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5263, file: !184, line: 163, baseType: !5266, size: 640)
!5266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 640, elements: !5267)
!5267 = !{!5268}
!5268 = !DISubrange(count: 80)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5263, file: !184, line: 164, baseType: !5266, size: 640, offset: 640)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !5263, file: !184, line: 165, baseType: !4542, size: 64, offset: 1280)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5263, file: !184, line: 166, baseType: !7, size: 32, offset: 1344)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5263, file: !184, line: 167, baseType: !5273, size: 192, offset: 1408)
!5273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !184, line: 154, size: 192, elements: !5274)
!5274 = !{!5275, !5277, !5279}
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !5273, file: !184, line: 155, baseType: !5276, size: 64)
!5276 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !184, line: 150, baseType: !5241)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5273, file: !184, line: 156, baseType: !5278, size: 64, offset: 64)
!5278 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !184, line: 151, baseType: !5241)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !5273, file: !184, line: 157, baseType: !5280, size: 64, offset: 128)
!5280 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !184, line: 152, baseType: !5257)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !5263, file: !184, line: 168, baseType: !4520, size: 1152, offset: 1600)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5263, file: !184, line: 169, baseType: !642, size: 64, offset: 2752)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !183, file: !184, line: 371, baseType: !5284, size: 64, offset: 4736)
!5284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5285, size: 64)
!5285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5286)
!5286 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !184, line: 348, flags: DIFlagFwdDecl)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !183, file: !184, line: 372, baseType: !181, size: 64, offset: 4800)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !183, file: !184, line: 373, baseType: !225, size: 5568, offset: 4864)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !183, file: !184, line: 374, baseType: !7, size: 32, offset: 10432)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !183, file: !184, line: 375, baseType: !7, size: 32, offset: 10464)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !183, file: !184, line: 376, baseType: !236, size: 128, offset: 10496)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !183, file: !184, line: 377, baseType: !749, size: 192, offset: 10624)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !183, file: !184, line: 378, baseType: !5231, size: 64, offset: 10816)
!5294 = !{!5295, !0, !5301, !5303, !5305}
!5295 = !DIGlobalVariableExpression(var: !5296, expr: !DIExpression())
!5296 = distinct !DIGlobalVariable(name: "special_pm_ids", scope: !5297, file: !3, line: 1317, type: !5300, isLocal: true, isDefinition: true)
!5297 = distinct !DISubprogram(name: "acpi_dev_pm_attach", scope: !3, file: !3, line: 1310, type: !5298, scopeLine: 1311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5298 = !DISubroutineType(types: !5299)
!5299 = !{!165, !1694, !212}
!5300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4543, size: 1024, elements: !1321)
!5301 = !DIGlobalVariableExpression(var: !5302, expr: !DIExpression())
!5302 = distinct !DIGlobalVariable(name: "acpi_pm_notifier_lock", scope: !2, file: !3, line: 435, type: !749, isLocal: true, isDefinition: true)
!5303 = !DIGlobalVariableExpression(var: !5304, expr: !DIExpression())
!5304 = distinct !DIGlobalVariable(name: "acpi_wakeup_lock", scope: !2, file: !3, line: 749, type: !749, isLocal: true, isDefinition: true)
!5305 = !DIGlobalVariableExpression(var: !5306, expr: !DIExpression())
!5306 = distinct !DIGlobalVariable(name: "acpi_general_pm_domain", scope: !2, file: !3, line: 1239, type: !4774, isLocal: true, isDefinition: true)
!5307 = !{i32 7, !"Dwarf Version", i32 4}
!5308 = !{i32 2, !"Debug Info Version", i32 3}
!5309 = !{i32 1, !"wchar_size", i32 2}
!5310 = !{i32 1, !"Code Model", i32 2}
!5311 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!5312 = distinct !DISubprogram(name: "acpi_power_state_string", scope: !3, file: !3, line: 30, type: !5313, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5313 = !DISubroutineType(types: !5314)
!5314 = !{!232, !165}
!5315 = !DILocalVariable(name: "state", arg: 1, scope: !5312, file: !3, line: 30, type: !165)
!5316 = !DILocation(line: 30, column: 41, scope: !5312)
!5317 = !DILocation(line: 32, column: 10, scope: !5312)
!5318 = !DILocation(line: 32, column: 2, scope: !5312)
!5319 = !DILocation(line: 34, column: 3, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 32, column: 17)
!5321 = !DILocation(line: 36, column: 3, scope: !5320)
!5322 = !DILocation(line: 38, column: 3, scope: !5320)
!5323 = !DILocation(line: 40, column: 3, scope: !5320)
!5324 = !DILocation(line: 42, column: 3, scope: !5320)
!5325 = !DILocation(line: 44, column: 3, scope: !5320)
!5326 = !DILocation(line: 46, column: 1, scope: !5312)
!5327 = distinct !DISubprogram(name: "acpi_device_get_power", scope: !3, file: !3, line: 75, type: !5328, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5328 = !DISubroutineType(types: !5329)
!5329 = !{!165, !182, !731}
!5330 = !DILocalVariable(name: "device", arg: 1, scope: !5327, file: !3, line: 75, type: !182)
!5331 = !DILocation(line: 75, column: 47, scope: !5327)
!5332 = !DILocalVariable(name: "state", arg: 2, scope: !5327, file: !3, line: 75, type: !731)
!5333 = !DILocation(line: 75, column: 60, scope: !5327)
!5334 = !DILocalVariable(name: "result", scope: !5327, file: !3, line: 77, type: !165)
!5335 = !DILocation(line: 77, column: 6, scope: !5327)
!5336 = !DILocalVariable(name: "error", scope: !5327, file: !3, line: 78, type: !165)
!5337 = !DILocation(line: 78, column: 6, scope: !5327)
!5338 = !DILocation(line: 80, column: 7, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 80, column: 6)
!5340 = !DILocation(line: 80, column: 14, scope: !5339)
!5341 = !DILocation(line: 80, column: 18, scope: !5339)
!5342 = !DILocation(line: 80, column: 6, scope: !5327)
!5343 = !DILocation(line: 81, column: 3, scope: !5339)
!5344 = !DILocation(line: 83, column: 7, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 83, column: 6)
!5346 = !DILocation(line: 83, column: 15, scope: !5345)
!5347 = !DILocation(line: 83, column: 21, scope: !5345)
!5348 = !DILocation(line: 83, column: 6, scope: !5327)
!5349 = !DILocation(line: 85, column: 12, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 83, column: 39)
!5351 = !DILocation(line: 85, column: 20, scope: !5350)
!5352 = !DILocation(line: 86, column: 4, scope: !5350)
!5353 = !DILocation(line: 86, column: 12, scope: !5350)
!5354 = !DILocation(line: 86, column: 20, scope: !5350)
!5355 = !DILocation(line: 86, column: 26, scope: !5350)
!5356 = !DILocation(line: 85, column: 4, scope: !5350)
!5357 = !DILocation(line: 85, column: 10, scope: !5350)
!5358 = !DILocation(line: 87, column: 3, scope: !5350)
!5359 = !DILocation(line: 94, column: 6, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 94, column: 6)
!5361 = !DILocation(line: 94, column: 14, scope: !5360)
!5362 = !DILocation(line: 94, column: 20, scope: !5360)
!5363 = !DILocation(line: 94, column: 26, scope: !5360)
!5364 = !DILocation(line: 94, column: 6, scope: !5327)
!5365 = !DILocation(line: 95, column: 41, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 94, column: 43)
!5367 = !DILocation(line: 95, column: 11, scope: !5366)
!5368 = !DILocation(line: 95, column: 9, scope: !5366)
!5369 = !DILocation(line: 96, column: 7, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 96, column: 7)
!5371 = !DILocation(line: 96, column: 7, scope: !5366)
!5372 = !DILocation(line: 97, column: 11, scope: !5370)
!5373 = !DILocation(line: 97, column: 4, scope: !5370)
!5374 = !DILocation(line: 98, column: 2, scope: !5366)
!5375 = !DILocation(line: 99, column: 6, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 99, column: 6)
!5377 = !DILocation(line: 99, column: 14, scope: !5376)
!5378 = !DILocation(line: 99, column: 20, scope: !5376)
!5379 = !DILocation(line: 99, column: 26, scope: !5376)
!5380 = !DILocation(line: 99, column: 6, scope: !5327)
!5381 = !DILocalVariable(name: "psc", scope: !5382, file: !3, line: 100, type: !165)
!5382 = distinct !DILexicalBlock(scope: !5376, file: !3, line: 99, column: 40)
!5383 = !DILocation(line: 100, column: 7, scope: !5382)
!5384 = !DILocation(line: 102, column: 36, scope: !5382)
!5385 = !DILocation(line: 102, column: 11, scope: !5382)
!5386 = !DILocation(line: 102, column: 9, scope: !5382)
!5387 = !DILocation(line: 103, column: 7, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5382, file: !3, line: 103, column: 7)
!5389 = !DILocation(line: 103, column: 7, scope: !5382)
!5390 = !DILocation(line: 104, column: 11, scope: !5388)
!5391 = !DILocation(line: 104, column: 4, scope: !5388)
!5392 = !DILocation(line: 114, column: 7, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5382, file: !3, line: 114, column: 7)
!5394 = !DILocation(line: 114, column: 13, scope: !5393)
!5395 = !DILocation(line: 114, column: 11, scope: !5393)
!5396 = !DILocation(line: 114, column: 20, scope: !5393)
!5397 = !DILocation(line: 114, column: 23, scope: !5393)
!5398 = !DILocation(line: 114, column: 27, scope: !5393)
!5399 = !DILocation(line: 114, column: 7, scope: !5382)
!5400 = !DILocation(line: 115, column: 13, scope: !5393)
!5401 = !DILocation(line: 115, column: 11, scope: !5393)
!5402 = !DILocation(line: 115, column: 4, scope: !5393)
!5403 = !DILocation(line: 116, column: 12, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 116, column: 12)
!5405 = !DILocation(line: 116, column: 19, scope: !5404)
!5406 = !DILocation(line: 116, column: 12, scope: !5393)
!5407 = !DILocation(line: 117, column: 13, scope: !5404)
!5408 = !DILocation(line: 117, column: 17, scope: !5404)
!5409 = !DILocation(line: 117, column: 55, scope: !5404)
!5410 = !DILocation(line: 117, column: 11, scope: !5404)
!5411 = !DILocation(line: 117, column: 4, scope: !5404)
!5412 = !DILocation(line: 118, column: 2, scope: !5382)
!5413 = !DILocation(line: 125, column: 7, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 125, column: 6)
!5415 = !DILocation(line: 125, column: 15, scope: !5414)
!5416 = !DILocation(line: 125, column: 21, scope: !5414)
!5417 = !DILocation(line: 125, column: 27, scope: !5414)
!5418 = !DILocation(line: 125, column: 41, scope: !5414)
!5419 = !DILocation(line: 125, column: 44, scope: !5414)
!5420 = !DILocation(line: 125, column: 52, scope: !5414)
!5421 = !DILocation(line: 126, column: 6, scope: !5414)
!5422 = !DILocation(line: 126, column: 9, scope: !5414)
!5423 = !DILocation(line: 126, column: 17, scope: !5414)
!5424 = !DILocation(line: 126, column: 25, scope: !5414)
!5425 = !DILocation(line: 126, column: 31, scope: !5414)
!5426 = !DILocation(line: 126, column: 37, scope: !5414)
!5427 = !DILocation(line: 127, column: 6, scope: !5414)
!5428 = !DILocation(line: 127, column: 9, scope: !5414)
!5429 = !DILocation(line: 127, column: 16, scope: !5414)
!5430 = !DILocation(line: 125, column: 6, scope: !5327)
!5431 = !DILocation(line: 128, column: 3, scope: !5414)
!5432 = !DILocation(line: 128, column: 11, scope: !5414)
!5433 = !DILocation(line: 128, column: 19, scope: !5414)
!5434 = !DILocation(line: 128, column: 25, scope: !5414)
!5435 = !DILocation(line: 128, column: 31, scope: !5414)
!5436 = !DILocation(line: 130, column: 11, scope: !5327)
!5437 = !DILocation(line: 130, column: 3, scope: !5327)
!5438 = !DILocation(line: 130, column: 9, scope: !5327)
!5439 = !DILocation(line: 130, column: 2, scope: !5327)
!5440 = !DILabel(scope: !5327, name: "out", file: !3, line: 132)
!5441 = !DILocation(line: 132, column: 2, scope: !5327)
!5442 = !DILocation(line: 136, column: 2, scope: !5327)
!5443 = !DILocation(line: 137, column: 1, scope: !5327)
!5444 = distinct !DISubprogram(name: "acpi_dev_pm_explicit_get", scope: !3, file: !3, line: 48, type: !5328, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5445 = !DILocalVariable(name: "device", arg: 1, scope: !5444, file: !3, line: 48, type: !182)
!5446 = !DILocation(line: 48, column: 57, scope: !5444)
!5447 = !DILocalVariable(name: "state", arg: 2, scope: !5444, file: !3, line: 48, type: !731)
!5448 = !DILocation(line: 48, column: 70, scope: !5444)
!5449 = !DILocalVariable(name: "psc", scope: !5444, file: !3, line: 50, type: !435)
!5450 = !DILocation(line: 50, column: 21, scope: !5444)
!5451 = !DILocalVariable(name: "status", scope: !5444, file: !3, line: 51, type: !177)
!5452 = !DILocation(line: 51, column: 14, scope: !5444)
!5453 = !DILocation(line: 53, column: 33, scope: !5444)
!5454 = !DILocation(line: 53, column: 41, scope: !5444)
!5455 = !DILocation(line: 53, column: 11, scope: !5444)
!5456 = !DILocation(line: 53, column: 9, scope: !5444)
!5457 = !DILocation(line: 54, column: 6, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5444, file: !3, line: 54, column: 6)
!5459 = !DILocation(line: 54, column: 6, scope: !5444)
!5460 = !DILocation(line: 55, column: 3, scope: !5458)
!5461 = !DILocation(line: 57, column: 11, scope: !5444)
!5462 = !DILocation(line: 57, column: 3, scope: !5444)
!5463 = !DILocation(line: 57, column: 9, scope: !5444)
!5464 = !DILocation(line: 58, column: 2, scope: !5444)
!5465 = !DILocation(line: 59, column: 1, scope: !5444)
!5466 = distinct !DISubprogram(name: "acpi_device_set_power", scope: !3, file: !3, line: 160, type: !5467, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5467 = !DISubroutineType(types: !5468)
!5468 = !{!165, !182, !165}
!5469 = !DILocalVariable(name: "device", arg: 1, scope: !5466, file: !3, line: 160, type: !182)
!5470 = !DILocation(line: 160, column: 47, scope: !5466)
!5471 = !DILocalVariable(name: "state", arg: 2, scope: !5466, file: !3, line: 160, type: !165)
!5472 = !DILocation(line: 160, column: 59, scope: !5466)
!5473 = !DILocalVariable(name: "target_state", scope: !5466, file: !3, line: 162, type: !165)
!5474 = !DILocation(line: 162, column: 6, scope: !5466)
!5475 = !DILocation(line: 162, column: 21, scope: !5466)
!5476 = !DILocalVariable(name: "result", scope: !5466, file: !3, line: 163, type: !165)
!5477 = !DILocation(line: 163, column: 6, scope: !5466)
!5478 = !DILocation(line: 165, column: 7, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 165, column: 6)
!5480 = !DILocation(line: 165, column: 14, scope: !5479)
!5481 = !DILocation(line: 165, column: 18, scope: !5479)
!5482 = !DILocation(line: 165, column: 26, scope: !5479)
!5483 = !DILocation(line: 165, column: 32, scope: !5479)
!5484 = !DILocation(line: 166, column: 6, scope: !5479)
!5485 = !DILocation(line: 166, column: 10, scope: !5479)
!5486 = !DILocation(line: 166, column: 16, scope: !5479)
!5487 = !DILocation(line: 166, column: 33, scope: !5479)
!5488 = !DILocation(line: 166, column: 37, scope: !5479)
!5489 = !DILocation(line: 166, column: 43, scope: !5479)
!5490 = !DILocation(line: 165, column: 6, scope: !5466)
!5491 = !DILocation(line: 167, column: 3, scope: !5479)
!5492 = !DILocation(line: 169, column: 2, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5494, file: !3, line: 169, column: 2)
!5494 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 169, column: 2)
!5495 = !DILocation(line: 169, column: 2, scope: !5494)
!5496 = !DILocation(line: 176, column: 6, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 176, column: 6)
!5498 = !DILocation(line: 176, column: 12, scope: !5497)
!5499 = !DILocation(line: 176, column: 28, scope: !5497)
!5500 = !DILocation(line: 176, column: 31, scope: !5497)
!5501 = !DILocation(line: 176, column: 40, scope: !5497)
!5502 = !DILocation(line: 176, column: 48, scope: !5497)
!5503 = !DILocation(line: 176, column: 54, scope: !5497)
!5504 = !DILocation(line: 176, column: 37, scope: !5497)
!5505 = !DILocation(line: 176, column: 6, scope: !5466)
!5506 = !DILocation(line: 180, column: 3, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 176, column: 61)
!5508 = !DILocation(line: 183, column: 6, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 183, column: 6)
!5510 = !DILocation(line: 183, column: 12, scope: !5509)
!5511 = !DILocation(line: 183, column: 6, scope: !5466)
!5512 = !DILocation(line: 188, column: 9, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 183, column: 35)
!5514 = !DILocation(line: 190, column: 8, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 190, column: 7)
!5516 = !DILocation(line: 190, column: 16, scope: !5515)
!5517 = !DILocation(line: 190, column: 22, scope: !5515)
!5518 = !DILocation(line: 190, column: 49, scope: !5515)
!5519 = !DILocation(line: 190, column: 55, scope: !5515)
!5520 = !DILocation(line: 190, column: 7, scope: !5513)
!5521 = !DILocation(line: 191, column: 19, scope: !5515)
!5522 = !DILocation(line: 191, column: 17, scope: !5515)
!5523 = !DILocation(line: 191, column: 4, scope: !5515)
!5524 = !DILocation(line: 192, column: 2, scope: !5513)
!5525 = !DILocation(line: 192, column: 14, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 192, column: 13)
!5527 = !DILocation(line: 192, column: 22, scope: !5526)
!5528 = !DILocation(line: 192, column: 28, scope: !5526)
!5529 = !DILocation(line: 192, column: 35, scope: !5526)
!5530 = !DILocation(line: 192, column: 42, scope: !5526)
!5531 = !DILocation(line: 192, column: 48, scope: !5526)
!5532 = !DILocation(line: 192, column: 13, scope: !5509)
!5533 = !DILocation(line: 193, column: 3, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5526, file: !3, line: 192, column: 55)
!5535 = !DILocation(line: 195, column: 3, scope: !5534)
!5536 = !DILocation(line: 198, column: 7, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 198, column: 6)
!5538 = !DILocation(line: 198, column: 15, scope: !5537)
!5539 = !DILocation(line: 198, column: 21, scope: !5537)
!5540 = !DILocation(line: 198, column: 27, scope: !5537)
!5541 = !DILocation(line: 198, column: 41, scope: !5537)
!5542 = !DILocation(line: 199, column: 6, scope: !5537)
!5543 = !DILocation(line: 199, column: 14, scope: !5537)
!5544 = !DILocation(line: 199, column: 21, scope: !5537)
!5545 = !DILocation(line: 199, column: 25, scope: !5537)
!5546 = !DILocation(line: 199, column: 33, scope: !5537)
!5547 = !DILocation(line: 199, column: 41, scope: !5537)
!5548 = !DILocation(line: 199, column: 49, scope: !5537)
!5549 = !DILocation(line: 199, column: 55, scope: !5537)
!5550 = !DILocation(line: 199, column: 31, scope: !5537)
!5551 = !DILocation(line: 198, column: 6, scope: !5466)
!5552 = !DILocation(line: 200, column: 3, scope: !5553)
!5553 = distinct !DILexicalBlock(scope: !5537, file: !3, line: 199, column: 63)
!5554 = !DILocation(line: 204, column: 3, scope: !5553)
!5555 = !DILocation(line: 214, column: 6, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 214, column: 6)
!5557 = !DILocation(line: 214, column: 12, scope: !5556)
!5558 = !DILocation(line: 214, column: 6, scope: !5466)
!5559 = !DILocation(line: 219, column: 7, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5561, file: !3, line: 219, column: 7)
!5561 = distinct !DILexicalBlock(scope: !5556, file: !3, line: 214, column: 29)
!5562 = !DILocation(line: 219, column: 15, scope: !5560)
!5563 = !DILocation(line: 219, column: 23, scope: !5560)
!5564 = !DILocation(line: 219, column: 29, scope: !5560)
!5565 = !DILocation(line: 219, column: 13, scope: !5560)
!5566 = !DILocation(line: 219, column: 7, scope: !5561)
!5567 = !DILocation(line: 220, column: 4, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5560, file: !3, line: 219, column: 36)
!5569 = !DILocation(line: 223, column: 4, scope: !5568)
!5570 = !DILocation(line: 230, column: 7, scope: !5571)
!5571 = distinct !DILexicalBlock(scope: !5561, file: !3, line: 230, column: 7)
!5572 = !DILocation(line: 230, column: 15, scope: !5571)
!5573 = !DILocation(line: 230, column: 21, scope: !5571)
!5574 = !DILocation(line: 230, column: 27, scope: !5571)
!5575 = !DILocation(line: 230, column: 7, scope: !5561)
!5576 = !DILocation(line: 231, column: 38, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 230, column: 48)
!5578 = !DILocation(line: 231, column: 46, scope: !5577)
!5579 = !DILocation(line: 231, column: 13, scope: !5577)
!5580 = !DILocation(line: 231, column: 11, scope: !5577)
!5581 = !DILocation(line: 232, column: 8, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 232, column: 8)
!5583 = !DILocation(line: 232, column: 8, scope: !5577)
!5584 = !DILocation(line: 233, column: 5, scope: !5582)
!5585 = !DILocation(line: 234, column: 3, scope: !5577)
!5586 = !DILocation(line: 236, column: 7, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5561, file: !3, line: 236, column: 7)
!5588 = !DILocation(line: 236, column: 15, scope: !5587)
!5589 = !DILocation(line: 236, column: 21, scope: !5587)
!5590 = !DILocation(line: 236, column: 27, scope: !5587)
!5591 = !DILocation(line: 236, column: 7, scope: !5561)
!5592 = !DILocation(line: 237, column: 35, scope: !5587)
!5593 = !DILocation(line: 237, column: 43, scope: !5587)
!5594 = !DILocation(line: 237, column: 13, scope: !5587)
!5595 = !DILocation(line: 237, column: 11, scope: !5587)
!5596 = !DILocation(line: 237, column: 4, scope: !5587)
!5597 = !DILocation(line: 238, column: 2, scope: !5561)
!5598 = !DILocalVariable(name: "cur_state", scope: !5599, file: !3, line: 239, type: !165)
!5599 = distinct !DILexicalBlock(scope: !5556, file: !3, line: 238, column: 9)
!5600 = !DILocation(line: 239, column: 7, scope: !5599)
!5601 = !DILocation(line: 239, column: 19, scope: !5599)
!5602 = !DILocation(line: 239, column: 27, scope: !5599)
!5603 = !DILocation(line: 239, column: 33, scope: !5599)
!5604 = !DILocation(line: 241, column: 7, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5599, file: !3, line: 241, column: 7)
!5606 = !DILocation(line: 241, column: 15, scope: !5605)
!5607 = !DILocation(line: 241, column: 21, scope: !5605)
!5608 = !DILocation(line: 241, column: 27, scope: !5605)
!5609 = !DILocation(line: 241, column: 7, scope: !5599)
!5610 = !DILocation(line: 242, column: 35, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5605, file: !3, line: 241, column: 44)
!5612 = !DILocation(line: 242, column: 13, scope: !5611)
!5613 = !DILocation(line: 242, column: 11, scope: !5611)
!5614 = !DILocation(line: 243, column: 8, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5611, file: !3, line: 243, column: 8)
!5616 = !DILocation(line: 243, column: 8, scope: !5611)
!5617 = !DILocation(line: 244, column: 5, scope: !5615)
!5618 = !DILocation(line: 245, column: 3, scope: !5611)
!5619 = !DILocation(line: 247, column: 7, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5599, file: !3, line: 247, column: 7)
!5621 = !DILocation(line: 247, column: 17, scope: !5620)
!5622 = !DILocation(line: 247, column: 7, scope: !5599)
!5623 = !DILocalVariable(name: "psc", scope: !5624, file: !3, line: 248, type: !165)
!5624 = distinct !DILexicalBlock(scope: !5620, file: !3, line: 247, column: 35)
!5625 = !DILocation(line: 248, column: 8, scope: !5624)
!5626 = !DILocation(line: 251, column: 9, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 251, column: 8)
!5628 = !DILocation(line: 251, column: 17, scope: !5627)
!5629 = !DILocation(line: 251, column: 23, scope: !5627)
!5630 = !DILocation(line: 251, column: 29, scope: !5627)
!5631 = !DILocation(line: 251, column: 8, scope: !5624)
!5632 = !DILocation(line: 252, column: 5, scope: !5627)
!5633 = !DILocation(line: 265, column: 38, scope: !5624)
!5634 = !DILocation(line: 265, column: 13, scope: !5624)
!5635 = !DILocation(line: 265, column: 11, scope: !5624)
!5636 = !DILocation(line: 266, column: 8, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 266, column: 8)
!5638 = !DILocation(line: 266, column: 15, scope: !5637)
!5639 = !DILocation(line: 266, column: 18, scope: !5637)
!5640 = !DILocation(line: 266, column: 22, scope: !5637)
!5641 = !DILocation(line: 266, column: 8, scope: !5624)
!5642 = !DILocation(line: 267, column: 5, scope: !5637)
!5643 = !DILocation(line: 268, column: 3, scope: !5624)
!5644 = !DILocation(line: 270, column: 37, scope: !5599)
!5645 = !DILocation(line: 270, column: 12, scope: !5599)
!5646 = !DILocation(line: 270, column: 10, scope: !5599)
!5647 = !DILocation(line: 214, column: 14, scope: !5556)
!5648 = !DILabel(scope: !5466, name: "end", file: !3, line: 273)
!5649 = !DILocation(line: 273, column: 2, scope: !5466)
!5650 = !DILocation(line: 274, column: 6, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 274, column: 6)
!5652 = !DILocation(line: 274, column: 6, scope: !5466)
!5653 = !DILocation(line: 275, column: 3, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5651, file: !3, line: 274, column: 14)
!5655 = !DILocation(line: 277, column: 2, scope: !5654)
!5656 = !DILocation(line: 278, column: 25, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5651, file: !3, line: 277, column: 9)
!5658 = !DILocation(line: 278, column: 3, scope: !5657)
!5659 = !DILocation(line: 278, column: 11, scope: !5657)
!5660 = !DILocation(line: 278, column: 17, scope: !5657)
!5661 = !DILocation(line: 278, column: 23, scope: !5657)
!5662 = !DILocation(line: 285, column: 9, scope: !5466)
!5663 = !DILocation(line: 285, column: 2, scope: !5466)
!5664 = !DILocation(line: 286, column: 1, scope: !5466)
!5665 = distinct !DISubprogram(name: "acpi_dev_pm_explicit_set", scope: !3, file: !3, line: 139, type: !5467, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5666 = !DILocalVariable(name: "adev", arg: 1, scope: !5665, file: !3, line: 139, type: !182)
!5667 = !DILocation(line: 139, column: 57, scope: !5665)
!5668 = !DILocalVariable(name: "state", arg: 2, scope: !5665, file: !3, line: 139, type: !165)
!5669 = !DILocation(line: 139, column: 67, scope: !5665)
!5670 = !DILocation(line: 141, column: 6, scope: !5671)
!5671 = distinct !DILexicalBlock(scope: !5665, file: !3, line: 141, column: 6)
!5672 = !DILocation(line: 141, column: 12, scope: !5671)
!5673 = !DILocation(line: 141, column: 18, scope: !5671)
!5674 = !DILocation(line: 141, column: 25, scope: !5671)
!5675 = !DILocation(line: 141, column: 32, scope: !5671)
!5676 = !DILocation(line: 141, column: 38, scope: !5671)
!5677 = !DILocation(line: 141, column: 6, scope: !5665)
!5678 = !DILocalVariable(name: "method", scope: !5679, file: !3, line: 142, type: !5680)
!5679 = distinct !DILexicalBlock(scope: !5671, file: !3, line: 141, column: 52)
!5680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 40, elements: !1891)
!5681 = !DILocation(line: 142, column: 8, scope: !5679)
!5682 = !DILocation(line: 142, column: 20, scope: !5679)
!5683 = !DILocation(line: 142, column: 43, scope: !5679)
!5684 = !DILocation(line: 142, column: 41, scope: !5679)
!5685 = !DILocation(line: 142, column: 37, scope: !5679)
!5686 = !DILocalVariable(name: "status", scope: !5679, file: !3, line: 143, type: !177)
!5687 = !DILocation(line: 143, column: 15, scope: !5679)
!5688 = !DILocation(line: 145, column: 33, scope: !5679)
!5689 = !DILocation(line: 145, column: 39, scope: !5679)
!5690 = !DILocation(line: 145, column: 47, scope: !5679)
!5691 = !DILocation(line: 145, column: 12, scope: !5679)
!5692 = !DILocation(line: 145, column: 10, scope: !5679)
!5693 = !DILocation(line: 146, column: 7, scope: !5694)
!5694 = distinct !DILexicalBlock(scope: !5679, file: !3, line: 146, column: 7)
!5695 = !DILocation(line: 146, column: 7, scope: !5679)
!5696 = !DILocation(line: 147, column: 4, scope: !5694)
!5697 = !DILocation(line: 148, column: 2, scope: !5679)
!5698 = !DILocation(line: 149, column: 2, scope: !5665)
!5699 = !DILocation(line: 150, column: 1, scope: !5665)
!5700 = distinct !DISubprogram(name: "acpi_bus_set_power", scope: !3, file: !3, line: 289, type: !5701, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5701 = !DISubroutineType(types: !5702)
!5702 = !{!165, !188, !165}
!5703 = !DILocalVariable(name: "handle", arg: 1, scope: !5700, file: !3, line: 289, type: !188)
!5704 = !DILocation(line: 289, column: 36, scope: !5700)
!5705 = !DILocalVariable(name: "state", arg: 2, scope: !5700, file: !3, line: 289, type: !165)
!5706 = !DILocation(line: 289, column: 48, scope: !5700)
!5707 = !DILocalVariable(name: "device", scope: !5700, file: !3, line: 291, type: !182)
!5708 = !DILocation(line: 291, column: 22, scope: !5700)
!5709 = !DILocalVariable(name: "result", scope: !5700, file: !3, line: 292, type: !165)
!5710 = !DILocation(line: 292, column: 6, scope: !5700)
!5711 = !DILocation(line: 294, column: 31, scope: !5700)
!5712 = !DILocation(line: 294, column: 11, scope: !5700)
!5713 = !DILocation(line: 294, column: 9, scope: !5700)
!5714 = !DILocation(line: 295, column: 6, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5700, file: !3, line: 295, column: 6)
!5716 = !DILocation(line: 295, column: 6, scope: !5700)
!5717 = !DILocation(line: 296, column: 10, scope: !5715)
!5718 = !DILocation(line: 296, column: 3, scope: !5715)
!5719 = !DILocation(line: 298, column: 31, scope: !5700)
!5720 = !DILocation(line: 298, column: 39, scope: !5700)
!5721 = !DILocation(line: 298, column: 9, scope: !5700)
!5722 = !DILocation(line: 298, column: 2, scope: !5700)
!5723 = !DILocation(line: 299, column: 1, scope: !5700)
!5724 = distinct !DISubprogram(name: "acpi_bus_init_power", scope: !3, file: !3, line: 302, type: !5242, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5725 = !DILocalVariable(name: "device", arg: 1, scope: !5724, file: !3, line: 302, type: !182)
!5726 = !DILocation(line: 302, column: 45, scope: !5724)
!5727 = !DILocalVariable(name: "state", scope: !5724, file: !3, line: 304, type: !165)
!5728 = !DILocation(line: 304, column: 6, scope: !5724)
!5729 = !DILocalVariable(name: "result", scope: !5724, file: !3, line: 305, type: !165)
!5730 = !DILocation(line: 305, column: 6, scope: !5724)
!5731 = !DILocation(line: 307, column: 7, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 307, column: 6)
!5733 = !DILocation(line: 307, column: 6, scope: !5724)
!5734 = !DILocation(line: 308, column: 3, scope: !5732)
!5735 = !DILocation(line: 310, column: 2, scope: !5724)
!5736 = !DILocation(line: 310, column: 10, scope: !5724)
!5737 = !DILocation(line: 310, column: 16, scope: !5724)
!5738 = !DILocation(line: 310, column: 22, scope: !5724)
!5739 = !DILocation(line: 311, column: 30, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 311, column: 6)
!5741 = !DILocation(line: 311, column: 7, scope: !5740)
!5742 = !DILocation(line: 311, column: 6, scope: !5724)
!5743 = !DILocation(line: 312, column: 3, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5740, file: !3, line: 311, column: 39)
!5745 = !DILocation(line: 312, column: 11, scope: !5744)
!5746 = !DILocation(line: 312, column: 17, scope: !5744)
!5747 = !DILocation(line: 312, column: 29, scope: !5744)
!5748 = !DILocation(line: 313, column: 3, scope: !5744)
!5749 = !DILocation(line: 316, column: 33, scope: !5724)
!5750 = !DILocation(line: 316, column: 11, scope: !5724)
!5751 = !DILocation(line: 316, column: 9, scope: !5724)
!5752 = !DILocation(line: 317, column: 6, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 317, column: 6)
!5754 = !DILocation(line: 317, column: 6, scope: !5724)
!5755 = !DILocation(line: 318, column: 10, scope: !5753)
!5756 = !DILocation(line: 318, column: 3, scope: !5753)
!5757 = !DILocation(line: 320, column: 6, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 320, column: 6)
!5759 = !DILocation(line: 320, column: 12, scope: !5758)
!5760 = !DILocation(line: 320, column: 33, scope: !5758)
!5761 = !DILocation(line: 320, column: 36, scope: !5758)
!5762 = !DILocation(line: 320, column: 44, scope: !5758)
!5763 = !DILocation(line: 320, column: 50, scope: !5758)
!5764 = !DILocation(line: 320, column: 56, scope: !5758)
!5765 = !DILocation(line: 320, column: 6, scope: !5724)
!5766 = !DILocation(line: 322, column: 36, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5758, file: !3, line: 320, column: 73)
!5768 = !DILocation(line: 322, column: 44, scope: !5767)
!5769 = !DILocation(line: 322, column: 12, scope: !5767)
!5770 = !DILocation(line: 322, column: 10, scope: !5767)
!5771 = !DILocation(line: 323, column: 7, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !5767, file: !3, line: 323, column: 7)
!5773 = !DILocation(line: 323, column: 7, scope: !5767)
!5774 = !DILocation(line: 324, column: 11, scope: !5772)
!5775 = !DILocation(line: 324, column: 4, scope: !5772)
!5776 = !DILocation(line: 326, column: 7, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5767, file: !3, line: 326, column: 7)
!5778 = !DILocation(line: 326, column: 13, scope: !5777)
!5779 = !DILocation(line: 326, column: 7, scope: !5767)
!5780 = !DILocation(line: 335, column: 38, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 326, column: 31)
!5782 = !DILocation(line: 335, column: 46, scope: !5781)
!5783 = !DILocation(line: 335, column: 13, scope: !5781)
!5784 = !DILocation(line: 335, column: 11, scope: !5781)
!5785 = !DILocation(line: 336, column: 8, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !5781, file: !3, line: 336, column: 8)
!5787 = !DILocation(line: 336, column: 8, scope: !5781)
!5788 = !DILocation(line: 337, column: 12, scope: !5786)
!5789 = !DILocation(line: 337, column: 5, scope: !5786)
!5790 = !DILocation(line: 338, column: 3, scope: !5781)
!5791 = !DILocation(line: 339, column: 2, scope: !5767)
!5792 = !DILocation(line: 339, column: 13, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5758, file: !3, line: 339, column: 13)
!5794 = !DILocation(line: 339, column: 19, scope: !5793)
!5795 = !DILocation(line: 339, column: 13, scope: !5758)
!5796 = !DILocation(line: 346, column: 9, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 339, column: 42)
!5798 = !DILocation(line: 347, column: 2, scope: !5797)
!5799 = !DILocation(line: 348, column: 24, scope: !5724)
!5800 = !DILocation(line: 348, column: 2, scope: !5724)
!5801 = !DILocation(line: 348, column: 10, scope: !5724)
!5802 = !DILocation(line: 348, column: 16, scope: !5724)
!5803 = !DILocation(line: 348, column: 22, scope: !5724)
!5804 = !DILocation(line: 349, column: 2, scope: !5724)
!5805 = !DILocation(line: 350, column: 1, scope: !5724)
!5806 = distinct !DISubprogram(name: "acpi_device_fix_up_power", scope: !3, file: !3, line: 360, type: !5242, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5807 = !DILocalVariable(name: "device", arg: 1, scope: !5806, file: !3, line: 360, type: !182)
!5808 = !DILocation(line: 360, column: 50, scope: !5806)
!5809 = !DILocalVariable(name: "ret", scope: !5806, file: !3, line: 362, type: !165)
!5810 = !DILocation(line: 362, column: 6, scope: !5806)
!5811 = !DILocation(line: 364, column: 7, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 364, column: 6)
!5813 = !DILocation(line: 364, column: 15, scope: !5812)
!5814 = !DILocation(line: 364, column: 21, scope: !5812)
!5815 = !DILocation(line: 364, column: 27, scope: !5812)
!5816 = !DILocation(line: 365, column: 6, scope: !5812)
!5817 = !DILocation(line: 365, column: 10, scope: !5812)
!5818 = !DILocation(line: 365, column: 18, scope: !5812)
!5819 = !DILocation(line: 365, column: 24, scope: !5812)
!5820 = !DILocation(line: 365, column: 30, scope: !5812)
!5821 = !DILocation(line: 366, column: 6, scope: !5812)
!5822 = !DILocation(line: 366, column: 9, scope: !5812)
!5823 = !DILocation(line: 366, column: 17, scope: !5812)
!5824 = !DILocation(line: 366, column: 23, scope: !5812)
!5825 = !DILocation(line: 366, column: 29, scope: !5812)
!5826 = !DILocation(line: 364, column: 6, scope: !5806)
!5827 = !DILocation(line: 367, column: 34, scope: !5812)
!5828 = !DILocation(line: 367, column: 9, scope: !5812)
!5829 = !DILocation(line: 367, column: 7, scope: !5812)
!5830 = !DILocation(line: 367, column: 3, scope: !5812)
!5831 = !DILocation(line: 369, column: 9, scope: !5806)
!5832 = !DILocation(line: 369, column: 2, scope: !5806)
!5833 = distinct !DISubprogram(name: "acpi_device_update_power", scope: !3, file: !3, line: 373, type: !5328, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5834 = !DILocalVariable(name: "device", arg: 1, scope: !5833, file: !3, line: 373, type: !182)
!5835 = !DILocation(line: 373, column: 50, scope: !5833)
!5836 = !DILocalVariable(name: "state_p", arg: 2, scope: !5833, file: !3, line: 373, type: !731)
!5837 = !DILocation(line: 373, column: 63, scope: !5833)
!5838 = !DILocalVariable(name: "state", scope: !5833, file: !3, line: 375, type: !165)
!5839 = !DILocation(line: 375, column: 6, scope: !5833)
!5840 = !DILocalVariable(name: "result", scope: !5833, file: !3, line: 376, type: !165)
!5841 = !DILocation(line: 376, column: 6, scope: !5833)
!5842 = !DILocation(line: 378, column: 6, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 378, column: 6)
!5844 = !DILocation(line: 378, column: 14, scope: !5843)
!5845 = !DILocation(line: 378, column: 20, scope: !5843)
!5846 = !DILocation(line: 378, column: 26, scope: !5843)
!5847 = !DILocation(line: 378, column: 6, scope: !5833)
!5848 = !DILocation(line: 379, column: 32, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 378, column: 49)
!5850 = !DILocation(line: 379, column: 12, scope: !5849)
!5851 = !DILocation(line: 379, column: 10, scope: !5849)
!5852 = !DILocation(line: 380, column: 8, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 380, column: 7)
!5854 = !DILocation(line: 380, column: 15, scope: !5853)
!5855 = !DILocation(line: 380, column: 18, scope: !5853)
!5856 = !DILocation(line: 380, column: 7, scope: !5849)
!5857 = !DILocation(line: 381, column: 15, scope: !5853)
!5858 = !DILocation(line: 381, column: 23, scope: !5853)
!5859 = !DILocation(line: 381, column: 29, scope: !5853)
!5860 = !DILocation(line: 381, column: 5, scope: !5853)
!5861 = !DILocation(line: 381, column: 13, scope: !5853)
!5862 = !DILocation(line: 381, column: 4, scope: !5853)
!5863 = !DILocation(line: 383, column: 10, scope: !5849)
!5864 = !DILocation(line: 383, column: 3, scope: !5849)
!5865 = !DILocation(line: 386, column: 33, scope: !5833)
!5866 = !DILocation(line: 386, column: 11, scope: !5833)
!5867 = !DILocation(line: 386, column: 9, scope: !5833)
!5868 = !DILocation(line: 387, column: 6, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 387, column: 6)
!5870 = !DILocation(line: 387, column: 6, scope: !5833)
!5871 = !DILocation(line: 388, column: 10, scope: !5869)
!5872 = !DILocation(line: 388, column: 3, scope: !5869)
!5873 = !DILocation(line: 390, column: 6, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 390, column: 6)
!5875 = !DILocation(line: 390, column: 12, scope: !5874)
!5876 = !DILocation(line: 390, column: 6, scope: !5833)
!5877 = !DILocation(line: 391, column: 9, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5874, file: !3, line: 390, column: 35)
!5879 = !DILocation(line: 392, column: 34, scope: !5878)
!5880 = !DILocation(line: 392, column: 42, scope: !5878)
!5881 = !DILocation(line: 392, column: 12, scope: !5878)
!5882 = !DILocation(line: 392, column: 10, scope: !5878)
!5883 = !DILocation(line: 393, column: 7, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5878, file: !3, line: 393, column: 7)
!5885 = !DILocation(line: 393, column: 7, scope: !5878)
!5886 = !DILocation(line: 394, column: 11, scope: !5884)
!5887 = !DILocation(line: 394, column: 4, scope: !5884)
!5888 = !DILocation(line: 395, column: 2, scope: !5878)
!5889 = !DILocation(line: 396, column: 7, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5891, file: !3, line: 396, column: 7)
!5891 = distinct !DILexicalBlock(scope: !5874, file: !3, line: 395, column: 9)
!5892 = !DILocation(line: 396, column: 15, scope: !5890)
!5893 = !DILocation(line: 396, column: 21, scope: !5890)
!5894 = !DILocation(line: 396, column: 27, scope: !5890)
!5895 = !DILocation(line: 396, column: 7, scope: !5891)
!5896 = !DILocation(line: 401, column: 35, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5890, file: !3, line: 396, column: 44)
!5898 = !DILocation(line: 401, column: 43, scope: !5897)
!5899 = !DILocation(line: 401, column: 13, scope: !5897)
!5900 = !DILocation(line: 401, column: 11, scope: !5897)
!5901 = !DILocation(line: 402, column: 8, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5897, file: !3, line: 402, column: 8)
!5903 = !DILocation(line: 402, column: 8, scope: !5897)
!5904 = !DILocation(line: 403, column: 12, scope: !5902)
!5905 = !DILocation(line: 403, column: 5, scope: !5902)
!5906 = !DILocation(line: 404, column: 3, scope: !5897)
!5907 = !DILocation(line: 405, column: 25, scope: !5891)
!5908 = !DILocation(line: 405, column: 3, scope: !5891)
!5909 = !DILocation(line: 405, column: 11, scope: !5891)
!5910 = !DILocation(line: 405, column: 17, scope: !5891)
!5911 = !DILocation(line: 405, column: 23, scope: !5891)
!5912 = !DILocation(line: 407, column: 6, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 407, column: 6)
!5914 = !DILocation(line: 407, column: 6, scope: !5833)
!5915 = !DILocation(line: 408, column: 14, scope: !5913)
!5916 = !DILocation(line: 408, column: 4, scope: !5913)
!5917 = !DILocation(line: 408, column: 12, scope: !5913)
!5918 = !DILocation(line: 408, column: 3, scope: !5913)
!5919 = !DILocation(line: 410, column: 2, scope: !5833)
!5920 = !DILocation(line: 411, column: 1, scope: !5833)
!5921 = distinct !DISubprogram(name: "acpi_bus_update_power", scope: !3, file: !3, line: 414, type: !5922, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5922 = !DISubroutineType(types: !5923)
!5923 = !{!165, !188, !731}
!5924 = !DILocalVariable(name: "handle", arg: 1, scope: !5921, file: !3, line: 414, type: !188)
!5925 = !DILocation(line: 414, column: 39, scope: !5921)
!5926 = !DILocalVariable(name: "state_p", arg: 2, scope: !5921, file: !3, line: 414, type: !731)
!5927 = !DILocation(line: 414, column: 52, scope: !5921)
!5928 = !DILocalVariable(name: "device", scope: !5921, file: !3, line: 416, type: !182)
!5929 = !DILocation(line: 416, column: 22, scope: !5921)
!5930 = !DILocalVariable(name: "result", scope: !5921, file: !3, line: 417, type: !165)
!5931 = !DILocation(line: 417, column: 6, scope: !5921)
!5932 = !DILocation(line: 419, column: 31, scope: !5921)
!5933 = !DILocation(line: 419, column: 11, scope: !5921)
!5934 = !DILocation(line: 419, column: 9, scope: !5921)
!5935 = !DILocation(line: 420, column: 9, scope: !5921)
!5936 = !DILocation(line: 420, column: 18, scope: !5921)
!5937 = !DILocation(line: 420, column: 52, scope: !5921)
!5938 = !DILocation(line: 420, column: 60, scope: !5921)
!5939 = !DILocation(line: 420, column: 27, scope: !5921)
!5940 = !DILocation(line: 420, column: 2, scope: !5921)
!5941 = distinct !DISubprogram(name: "acpi_bus_power_manageable", scope: !3, file: !3, line: 424, type: !5942, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5942 = !DISubroutineType(types: !5943)
!5943 = !{!212, !188}
!5944 = !DILocalVariable(name: "handle", arg: 1, scope: !5941, file: !3, line: 424, type: !188)
!5945 = !DILocation(line: 424, column: 44, scope: !5941)
!5946 = !DILocalVariable(name: "device", scope: !5941, file: !3, line: 426, type: !182)
!5947 = !DILocation(line: 426, column: 22, scope: !5941)
!5948 = !DILocalVariable(name: "result", scope: !5941, file: !3, line: 427, type: !165)
!5949 = !DILocation(line: 427, column: 6, scope: !5941)
!5950 = !DILocation(line: 429, column: 31, scope: !5941)
!5951 = !DILocation(line: 429, column: 11, scope: !5941)
!5952 = !DILocation(line: 429, column: 9, scope: !5941)
!5953 = !DILocation(line: 430, column: 9, scope: !5941)
!5954 = !DILocation(line: 430, column: 26, scope: !5941)
!5955 = !DILocation(line: 430, column: 34, scope: !5941)
!5956 = !DILocation(line: 430, column: 40, scope: !5941)
!5957 = !DILocation(line: 430, column: 2, scope: !5941)
!5958 = distinct !DISubprogram(name: "acpi_pm_wakeup_event", scope: !3, file: !3, line: 438, type: !4471, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5959 = !DILocalVariable(name: "dev", arg: 1, scope: !5958, file: !3, line: 438, type: !1694)
!5960 = !DILocation(line: 438, column: 42, scope: !5958)
!5961 = !DILocation(line: 440, column: 22, scope: !5958)
!5962 = !DILocation(line: 440, column: 30, scope: !5958)
!5963 = !DILocation(line: 440, column: 2, scope: !5958)
!5964 = !DILocation(line: 441, column: 1, scope: !5958)
!5965 = distinct !DISubprogram(name: "acpi_add_pm_notifier", scope: !3, file: !3, line: 485, type: !5966, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5966 = !DISubroutineType(types: !5967)
!5967 = !{!177, !182, !1694, !5171}
!5968 = !DILocalVariable(name: "adev", arg: 1, scope: !5965, file: !3, line: 485, type: !182)
!5969 = !DILocation(line: 485, column: 54, scope: !5965)
!5970 = !DILocalVariable(name: "dev", arg: 2, scope: !5965, file: !3, line: 485, type: !1694)
!5971 = !DILocation(line: 485, column: 75, scope: !5965)
!5972 = !DILocalVariable(name: "func", arg: 3, scope: !5965, file: !3, line: 486, type: !5171)
!5973 = !DILocation(line: 486, column: 11, scope: !5965)
!5974 = !DILocalVariable(name: "status", scope: !5965, file: !3, line: 488, type: !177)
!5975 = !DILocation(line: 488, column: 14, scope: !5965)
!5976 = !DILocation(line: 490, column: 7, scope: !5977)
!5977 = distinct !DILexicalBlock(scope: !5965, file: !3, line: 490, column: 6)
!5978 = !DILocation(line: 490, column: 11, scope: !5977)
!5979 = !DILocation(line: 490, column: 15, scope: !5977)
!5980 = !DILocation(line: 490, column: 6, scope: !5965)
!5981 = !DILocation(line: 491, column: 3, scope: !5977)
!5982 = !DILocation(line: 493, column: 2, scope: !5965)
!5983 = !DILocation(line: 495, column: 6, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !5965, file: !3, line: 495, column: 6)
!5985 = !DILocation(line: 495, column: 12, scope: !5984)
!5986 = !DILocation(line: 495, column: 19, scope: !5984)
!5987 = !DILocation(line: 495, column: 25, scope: !5984)
!5988 = !DILocation(line: 495, column: 6, scope: !5965)
!5989 = !DILocation(line: 496, column: 3, scope: !5984)
!5990 = !DILocation(line: 498, column: 39, scope: !5965)
!5991 = !DILocation(line: 498, column: 45, scope: !5965)
!5992 = !DILocation(line: 498, column: 11, scope: !5965)
!5993 = !DILocation(line: 498, column: 9, scope: !5965)
!5994 = !DILocation(line: 500, column: 6, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5965, file: !3, line: 500, column: 6)
!5996 = !DILocation(line: 500, column: 6, scope: !5965)
!5997 = !DILocation(line: 501, column: 3, scope: !5995)
!5998 = !DILocation(line: 503, column: 2, scope: !5965)
!5999 = !DILocation(line: 504, column: 44, scope: !5965)
!6000 = !DILocation(line: 504, column: 50, scope: !5965)
!6001 = !DILocation(line: 505, column: 18, scope: !5965)
!6002 = !DILocation(line: 505, column: 24, scope: !5965)
!6003 = !DILocation(line: 505, column: 8, scope: !5965)
!6004 = !DILocation(line: 504, column: 20, scope: !5965)
!6005 = !DILocation(line: 504, column: 2, scope: !5965)
!6006 = !DILocation(line: 504, column: 8, scope: !5965)
!6007 = !DILocation(line: 504, column: 15, scope: !5965)
!6008 = !DILocation(line: 504, column: 18, scope: !5965)
!6009 = !DILocation(line: 506, column: 29, scope: !5965)
!6010 = !DILocation(line: 506, column: 2, scope: !5965)
!6011 = !DILocation(line: 506, column: 8, scope: !5965)
!6012 = !DILocation(line: 506, column: 15, scope: !5965)
!6013 = !DILocation(line: 506, column: 23, scope: !5965)
!6014 = !DILocation(line: 506, column: 27, scope: !5965)
!6015 = !DILocation(line: 507, column: 30, scope: !5965)
!6016 = !DILocation(line: 507, column: 2, scope: !5965)
!6017 = !DILocation(line: 507, column: 8, scope: !5965)
!6018 = !DILocation(line: 507, column: 15, scope: !5965)
!6019 = !DILocation(line: 507, column: 23, scope: !5965)
!6020 = !DILocation(line: 507, column: 28, scope: !5965)
!6021 = !DILocation(line: 508, column: 2, scope: !5965)
!6022 = !DILocation(line: 508, column: 8, scope: !5965)
!6023 = !DILocation(line: 508, column: 15, scope: !5965)
!6024 = !DILocation(line: 508, column: 21, scope: !5965)
!6025 = !DILocation(line: 508, column: 38, scope: !5965)
!6026 = !DILocation(line: 509, column: 2, scope: !5965)
!6027 = !DILabel(scope: !5965, name: "out", file: !3, line: 511)
!6028 = !DILocation(line: 511, column: 2, scope: !5965)
!6029 = !DILocation(line: 512, column: 2, scope: !5965)
!6030 = !DILocation(line: 513, column: 9, scope: !5965)
!6031 = !DILocation(line: 513, column: 2, scope: !5965)
!6032 = !DILocation(line: 514, column: 1, scope: !5965)
!6033 = distinct !DISubprogram(name: "acpi_pm_notify_handler", scope: !3, file: !3, line: 444, type: !6034, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6034 = !DISubroutineType(types: !6035)
!6035 = !{null, !188, !179, !181}
!6036 = !DILocalVariable(name: "handle", arg: 1, scope: !6033, file: !3, line: 444, type: !188)
!6037 = !DILocation(line: 444, column: 48, scope: !6033)
!6038 = !DILocalVariable(name: "val", arg: 2, scope: !6033, file: !3, line: 444, type: !179)
!6039 = !DILocation(line: 444, column: 60, scope: !6033)
!6040 = !DILocalVariable(name: "not_used", arg: 3, scope: !6033, file: !3, line: 444, type: !181)
!6041 = !DILocation(line: 444, column: 71, scope: !6033)
!6042 = !DILocalVariable(name: "adev", scope: !6033, file: !3, line: 446, type: !182)
!6043 = !DILocation(line: 446, column: 22, scope: !6033)
!6044 = !DILocation(line: 448, column: 6, scope: !6045)
!6045 = distinct !DILexicalBlock(scope: !6033, file: !3, line: 448, column: 6)
!6046 = !DILocation(line: 448, column: 10, scope: !6045)
!6047 = !DILocation(line: 448, column: 6, scope: !6033)
!6048 = !DILocation(line: 449, column: 3, scope: !6045)
!6049 = !DILocation(line: 451, column: 2, scope: !6050)
!6050 = distinct !DILexicalBlock(scope: !6051, file: !3, line: 451, column: 2)
!6051 = distinct !DILexicalBlock(scope: !6033, file: !3, line: 451, column: 2)
!6052 = !DILocation(line: 451, column: 2, scope: !6051)
!6053 = !DILocation(line: 453, column: 34, scope: !6033)
!6054 = !DILocation(line: 453, column: 9, scope: !6033)
!6055 = !DILocation(line: 453, column: 7, scope: !6033)
!6056 = !DILocation(line: 454, column: 7, scope: !6057)
!6057 = distinct !DILexicalBlock(scope: !6033, file: !3, line: 454, column: 6)
!6058 = !DILocation(line: 454, column: 6, scope: !6033)
!6059 = !DILocation(line: 455, column: 3, scope: !6057)
!6060 = !DILocation(line: 457, column: 2, scope: !6033)
!6061 = !DILocation(line: 459, column: 6, scope: !6062)
!6062 = distinct !DILexicalBlock(scope: !6033, file: !3, line: 459, column: 6)
!6063 = !DILocation(line: 459, column: 12, scope: !6062)
!6064 = !DILocation(line: 459, column: 19, scope: !6062)
!6065 = !DILocation(line: 459, column: 25, scope: !6062)
!6066 = !DILocation(line: 459, column: 6, scope: !6033)
!6067 = !DILocation(line: 460, column: 22, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6062, file: !3, line: 459, column: 43)
!6069 = !DILocation(line: 460, column: 28, scope: !6068)
!6070 = !DILocation(line: 460, column: 35, scope: !6068)
!6071 = !DILocation(line: 460, column: 42, scope: !6068)
!6072 = !DILocation(line: 460, column: 3, scope: !6068)
!6073 = !DILocation(line: 461, column: 7, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6068, file: !3, line: 461, column: 7)
!6075 = !DILocation(line: 461, column: 13, scope: !6074)
!6076 = !DILocation(line: 461, column: 20, scope: !6074)
!6077 = !DILocation(line: 461, column: 28, scope: !6074)
!6078 = !DILocation(line: 461, column: 7, scope: !6068)
!6079 = !DILocation(line: 462, column: 4, scope: !6080)
!6080 = distinct !DILexicalBlock(scope: !6081, file: !3, line: 462, column: 4)
!6081 = distinct !DILexicalBlock(scope: !6082, file: !3, line: 462, column: 4)
!6082 = distinct !DILexicalBlock(scope: !6074, file: !3, line: 461, column: 34)
!6083 = !DILocation(line: 462, column: 4, scope: !6081)
!6084 = !DILocation(line: 465, column: 4, scope: !6082)
!6085 = !DILocation(line: 465, column: 10, scope: !6082)
!6086 = !DILocation(line: 465, column: 17, scope: !6082)
!6087 = !DILocation(line: 465, column: 25, scope: !6082)
!6088 = !DILocation(line: 465, column: 31, scope: !6082)
!6089 = !DILocation(line: 465, column: 37, scope: !6082)
!6090 = !DILocation(line: 465, column: 44, scope: !6082)
!6091 = !DILocation(line: 466, column: 3, scope: !6082)
!6092 = !DILocation(line: 467, column: 2, scope: !6068)
!6093 = !DILocation(line: 469, column: 2, scope: !6033)
!6094 = !DILocation(line: 471, column: 27, scope: !6033)
!6095 = !DILocation(line: 471, column: 2, scope: !6033)
!6096 = !DILocation(line: 472, column: 1, scope: !6033)
!6097 = distinct !DISubprogram(name: "dev_name", scope: !115, file: !115, line: 609, type: !6098, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6098 = !DISubroutineType(types: !6099)
!6099 = !{!232, !223}
!6100 = !DILocalVariable(name: "dev", arg: 1, scope: !6097, file: !115, line: 609, type: !223)
!6101 = !DILocation(line: 609, column: 57, scope: !6097)
!6102 = !DILocation(line: 612, column: 6, scope: !6103)
!6103 = distinct !DILexicalBlock(scope: !6097, file: !115, line: 612, column: 6)
!6104 = !DILocation(line: 612, column: 11, scope: !6103)
!6105 = !DILocation(line: 612, column: 6, scope: !6097)
!6106 = !DILocation(line: 613, column: 10, scope: !6103)
!6107 = !DILocation(line: 613, column: 15, scope: !6103)
!6108 = !DILocation(line: 613, column: 3, scope: !6103)
!6109 = !DILocation(line: 615, column: 23, scope: !6097)
!6110 = !DILocation(line: 615, column: 28, scope: !6097)
!6111 = !DILocation(line: 615, column: 9, scope: !6097)
!6112 = !DILocation(line: 615, column: 2, scope: !6097)
!6113 = !DILocation(line: 616, column: 1, scope: !6097)
!6114 = distinct !DISubprogram(name: "acpi_remove_pm_notifier", scope: !3, file: !3, line: 520, type: !6115, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6115 = !DISubroutineType(types: !6116)
!6116 = !{!177, !182}
!6117 = !DILocalVariable(name: "adev", arg: 1, scope: !6114, file: !3, line: 520, type: !182)
!6118 = !DILocation(line: 520, column: 57, scope: !6114)
!6119 = !DILocalVariable(name: "status", scope: !6114, file: !3, line: 522, type: !177)
!6120 = !DILocation(line: 522, column: 14, scope: !6114)
!6121 = !DILocation(line: 524, column: 2, scope: !6114)
!6122 = !DILocation(line: 526, column: 7, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 526, column: 6)
!6124 = !DILocation(line: 526, column: 13, scope: !6123)
!6125 = !DILocation(line: 526, column: 20, scope: !6123)
!6126 = !DILocation(line: 526, column: 26, scope: !6123)
!6127 = !DILocation(line: 526, column: 6, scope: !6114)
!6128 = !DILocation(line: 527, column: 3, scope: !6123)
!6129 = !DILocation(line: 529, column: 38, scope: !6114)
!6130 = !DILocation(line: 529, column: 44, scope: !6114)
!6131 = !DILocation(line: 529, column: 11, scope: !6114)
!6132 = !DILocation(line: 529, column: 9, scope: !6114)
!6133 = !DILocation(line: 532, column: 6, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 532, column: 6)
!6135 = !DILocation(line: 532, column: 6, scope: !6114)
!6136 = !DILocation(line: 533, column: 3, scope: !6134)
!6137 = !DILocation(line: 535, column: 2, scope: !6114)
!6138 = !DILocation(line: 536, column: 2, scope: !6114)
!6139 = !DILocation(line: 536, column: 8, scope: !6114)
!6140 = !DILocation(line: 536, column: 15, scope: !6114)
!6141 = !DILocation(line: 536, column: 23, scope: !6114)
!6142 = !DILocation(line: 536, column: 28, scope: !6114)
!6143 = !DILocation(line: 537, column: 2, scope: !6114)
!6144 = !DILocation(line: 537, column: 8, scope: !6114)
!6145 = !DILocation(line: 537, column: 15, scope: !6114)
!6146 = !DILocation(line: 537, column: 23, scope: !6114)
!6147 = !DILocation(line: 537, column: 27, scope: !6114)
!6148 = !DILocation(line: 538, column: 27, scope: !6114)
!6149 = !DILocation(line: 538, column: 33, scope: !6114)
!6150 = !DILocation(line: 538, column: 40, scope: !6114)
!6151 = !DILocation(line: 538, column: 2, scope: !6114)
!6152 = !DILocation(line: 539, column: 2, scope: !6114)
!6153 = !DILocation(line: 539, column: 8, scope: !6114)
!6154 = !DILocation(line: 539, column: 15, scope: !6114)
!6155 = !DILocation(line: 539, column: 21, scope: !6114)
!6156 = !DILocation(line: 539, column: 38, scope: !6114)
!6157 = !DILocation(line: 540, column: 2, scope: !6114)
!6158 = !DILabel(scope: !6114, name: "out", file: !3, line: 542)
!6159 = !DILocation(line: 542, column: 2, scope: !6114)
!6160 = !DILocation(line: 543, column: 2, scope: !6114)
!6161 = !DILocation(line: 544, column: 9, scope: !6114)
!6162 = !DILocation(line: 544, column: 2, scope: !6114)
!6163 = distinct !DISubprogram(name: "acpi_bus_can_wakeup", scope: !3, file: !3, line: 547, type: !5942, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6164 = !DILocalVariable(name: "handle", arg: 1, scope: !6163, file: !3, line: 547, type: !188)
!6165 = !DILocation(line: 547, column: 38, scope: !6163)
!6166 = !DILocalVariable(name: "device", scope: !6163, file: !3, line: 549, type: !182)
!6167 = !DILocation(line: 549, column: 22, scope: !6163)
!6168 = !DILocalVariable(name: "result", scope: !6163, file: !3, line: 550, type: !165)
!6169 = !DILocation(line: 550, column: 6, scope: !6163)
!6170 = !DILocation(line: 552, column: 31, scope: !6163)
!6171 = !DILocation(line: 552, column: 11, scope: !6163)
!6172 = !DILocation(line: 552, column: 9, scope: !6163)
!6173 = !DILocation(line: 553, column: 9, scope: !6163)
!6174 = !DILocation(line: 553, column: 26, scope: !6163)
!6175 = !DILocation(line: 553, column: 34, scope: !6163)
!6176 = !DILocation(line: 553, column: 41, scope: !6163)
!6177 = !DILocation(line: 553, column: 47, scope: !6163)
!6178 = !DILocation(line: 553, column: 2, scope: !6163)
!6179 = distinct !DISubprogram(name: "acpi_pm_device_can_wakeup", scope: !3, file: !3, line: 557, type: !6180, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6180 = !DISubroutineType(types: !6181)
!6181 = !{!212, !1694}
!6182 = !DILocalVariable(name: "dev", arg: 1, scope: !6179, file: !3, line: 557, type: !1694)
!6183 = !DILocation(line: 557, column: 47, scope: !6179)
!6184 = !DILocalVariable(name: "adev", scope: !6179, file: !3, line: 559, type: !182)
!6185 = !DILocation(line: 559, column: 22, scope: !6179)
!6186 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !6187, file: !3, line: 559, type: !194)
!6187 = distinct !DILexicalBlock(scope: !6179, file: !3, line: 559, column: 29)
!6188 = !DILocation(line: 559, column: 29, scope: !6187)
!6189 = !DILocalVariable(name: "__mptr", scope: !6190, file: !3, line: 559, type: !181)
!6190 = distinct !DILexicalBlock(scope: !6187, file: !3, line: 559, column: 29)
!6191 = !DILocation(line: 559, column: 29, scope: !6190)
!6192 = !DILocation(line: 559, column: 29, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6190, file: !3, line: 559, column: 29)
!6194 = !DILocation(line: 561, column: 9, scope: !6179)
!6195 = !DILocation(line: 561, column: 39, scope: !6179)
!6196 = !DILocation(line: 561, column: 16, scope: !6179)
!6197 = !DILocation(line: 561, column: 2, scope: !6179)
!6198 = distinct !DISubprogram(name: "acpi_device_can_wakeup", scope: !184, file: !184, line: 677, type: !6199, scopeLine: 678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6199 = !DISubroutineType(types: !6200)
!6200 = !{!212, !182}
!6201 = !DILocalVariable(name: "adev", arg: 1, scope: !6198, file: !184, line: 677, type: !182)
!6202 = !DILocation(line: 677, column: 63, scope: !6198)
!6203 = !DILocation(line: 679, column: 9, scope: !6198)
!6204 = !DILocation(line: 679, column: 15, scope: !6198)
!6205 = !DILocation(line: 679, column: 22, scope: !6198)
!6206 = !DILocation(line: 679, column: 28, scope: !6198)
!6207 = !DILocation(line: 679, column: 2, scope: !6198)
!6208 = distinct !DISubprogram(name: "acpi_pm_device_sleep_state", scope: !3, file: !3, line: 691, type: !6209, scopeLine: 692, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6209 = !DISubroutineType(types: !6210)
!6210 = !{!165, !1694, !731, !165}
!6211 = !DILocalVariable(name: "dev", arg: 1, scope: !6208, file: !3, line: 691, type: !1694)
!6212 = !DILocation(line: 691, column: 47, scope: !6208)
!6213 = !DILocalVariable(name: "d_min_p", arg: 2, scope: !6208, file: !3, line: 691, type: !731)
!6214 = !DILocation(line: 691, column: 57, scope: !6208)
!6215 = !DILocalVariable(name: "d_max_in", arg: 3, scope: !6208, file: !3, line: 691, type: !165)
!6216 = !DILocation(line: 691, column: 70, scope: !6208)
!6217 = !DILocalVariable(name: "adev", scope: !6208, file: !3, line: 693, type: !182)
!6218 = !DILocation(line: 693, column: 22, scope: !6208)
!6219 = !DILocalVariable(name: "ret", scope: !6208, file: !3, line: 694, type: !165)
!6220 = !DILocation(line: 694, column: 6, scope: !6208)
!6221 = !DILocalVariable(name: "d_min", scope: !6208, file: !3, line: 694, type: !165)
!6222 = !DILocation(line: 694, column: 11, scope: !6208)
!6223 = !DILocalVariable(name: "d_max", scope: !6208, file: !3, line: 694, type: !165)
!6224 = !DILocation(line: 694, column: 18, scope: !6208)
!6225 = !DILocation(line: 696, column: 6, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6208, file: !3, line: 696, column: 6)
!6227 = !DILocation(line: 696, column: 15, scope: !6226)
!6228 = !DILocation(line: 696, column: 31, scope: !6226)
!6229 = !DILocation(line: 696, column: 34, scope: !6226)
!6230 = !DILocation(line: 696, column: 43, scope: !6226)
!6231 = !DILocation(line: 696, column: 6, scope: !6208)
!6232 = !DILocation(line: 697, column: 3, scope: !6226)
!6233 = !DILocation(line: 699, column: 6, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6208, file: !3, line: 699, column: 6)
!6235 = !DILocation(line: 699, column: 15, scope: !6234)
!6236 = !DILocation(line: 699, column: 6, scope: !6208)
!6237 = !DILocalVariable(name: "stat", scope: !6238, file: !3, line: 700, type: !164)
!6238 = distinct !DILexicalBlock(scope: !6234, file: !3, line: 699, column: 32)
!6239 = !DILocation(line: 700, column: 28, scope: !6238)
!6240 = !DILocation(line: 702, column: 27, scope: !6238)
!6241 = !DILocation(line: 702, column: 10, scope: !6238)
!6242 = !DILocation(line: 702, column: 8, scope: !6238)
!6243 = !DILocation(line: 703, column: 7, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6238, file: !3, line: 703, column: 7)
!6245 = !DILocation(line: 703, column: 12, scope: !6244)
!6246 = !DILocation(line: 703, column: 7, scope: !6238)
!6247 = !DILocation(line: 704, column: 13, scope: !6244)
!6248 = !DILocation(line: 704, column: 4, scope: !6244)
!6249 = !DILocation(line: 705, column: 2, scope: !6238)
!6250 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !6251, file: !3, line: 707, type: !194)
!6251 = distinct !DILexicalBlock(scope: !6208, file: !3, line: 707, column: 9)
!6252 = !DILocation(line: 707, column: 9, scope: !6251)
!6253 = !DILocalVariable(name: "__mptr", scope: !6254, file: !3, line: 707, type: !181)
!6254 = distinct !DILexicalBlock(scope: !6251, file: !3, line: 707, column: 9)
!6255 = !DILocation(line: 707, column: 9, scope: !6254)
!6256 = !DILocation(line: 707, column: 9, scope: !6257)
!6257 = distinct !DILexicalBlock(scope: !6254, file: !3, line: 707, column: 9)
!6258 = !DILocation(line: 707, column: 7, scope: !6208)
!6259 = !DILocation(line: 708, column: 7, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !6208, file: !3, line: 708, column: 6)
!6261 = !DILocation(line: 708, column: 6, scope: !6208)
!6262 = !DILocation(line: 710, column: 3, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 708, column: 13)
!6264 = !DILocation(line: 713, column: 30, scope: !6208)
!6265 = !DILocation(line: 713, column: 35, scope: !6208)
!6266 = !DILocation(line: 713, column: 41, scope: !6208)
!6267 = !DILocation(line: 713, column: 8, scope: !6208)
!6268 = !DILocation(line: 713, column: 6, scope: !6208)
!6269 = !DILocation(line: 715, column: 6, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6208, file: !3, line: 715, column: 6)
!6271 = !DILocation(line: 715, column: 6, scope: !6208)
!6272 = !DILocation(line: 716, column: 10, scope: !6270)
!6273 = !DILocation(line: 716, column: 3, scope: !6270)
!6274 = !DILocation(line: 718, column: 6, scope: !6275)
!6275 = distinct !DILexicalBlock(scope: !6208, file: !3, line: 718, column: 6)
!6276 = !DILocation(line: 718, column: 17, scope: !6275)
!6277 = !DILocation(line: 718, column: 15, scope: !6275)
!6278 = !DILocation(line: 718, column: 6, scope: !6208)
!6279 = !DILocation(line: 719, column: 3, scope: !6275)
!6280 = !DILocation(line: 721, column: 6, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6208, file: !3, line: 721, column: 6)
!6282 = !DILocation(line: 721, column: 14, scope: !6281)
!6283 = !DILocation(line: 721, column: 12, scope: !6281)
!6284 = !DILocation(line: 721, column: 6, scope: !6208)
!6285 = !DILocation(line: 722, column: 16, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6287, file: !3, line: 722, column: 3)
!6287 = distinct !DILexicalBlock(scope: !6281, file: !3, line: 721, column: 24)
!6288 = !DILocation(line: 722, column: 14, scope: !6286)
!6289 = !DILocation(line: 722, column: 8, scope: !6286)
!6290 = !DILocation(line: 722, column: 26, scope: !6291)
!6291 = distinct !DILexicalBlock(scope: !6286, file: !3, line: 722, column: 3)
!6292 = !DILocation(line: 722, column: 34, scope: !6291)
!6293 = !DILocation(line: 722, column: 32, scope: !6291)
!6294 = !DILocation(line: 722, column: 3, scope: !6286)
!6295 = !DILocation(line: 723, column: 8, scope: !6296)
!6296 = distinct !DILexicalBlock(scope: !6297, file: !3, line: 723, column: 8)
!6297 = distinct !DILexicalBlock(scope: !6291, file: !3, line: 722, column: 50)
!6298 = !DILocation(line: 723, column: 14, scope: !6296)
!6299 = !DILocation(line: 723, column: 20, scope: !6296)
!6300 = !DILocation(line: 723, column: 27, scope: !6296)
!6301 = !DILocation(line: 723, column: 34, scope: !6296)
!6302 = !DILocation(line: 723, column: 40, scope: !6296)
!6303 = !DILocation(line: 723, column: 8, scope: !6297)
!6304 = !DILocation(line: 724, column: 5, scope: !6296)
!6305 = !DILocation(line: 725, column: 3, scope: !6297)
!6306 = !DILocation(line: 722, column: 46, scope: !6291)
!6307 = !DILocation(line: 722, column: 3, scope: !6291)
!6308 = distinct !{!6308, !6294, !6309}
!6309 = !DILocation(line: 725, column: 3, scope: !6286)
!6310 = !DILocation(line: 726, column: 2, scope: !6287)
!6311 = !DILocation(line: 728, column: 6, scope: !6312)
!6312 = distinct !DILexicalBlock(scope: !6208, file: !3, line: 728, column: 6)
!6313 = !DILocation(line: 728, column: 6, scope: !6208)
!6314 = !DILocation(line: 729, column: 14, scope: !6312)
!6315 = !DILocation(line: 729, column: 4, scope: !6312)
!6316 = !DILocation(line: 729, column: 12, scope: !6312)
!6317 = !DILocation(line: 729, column: 3, scope: !6312)
!6318 = !DILocation(line: 731, column: 9, scope: !6208)
!6319 = !DILocation(line: 731, column: 2, scope: !6208)
!6320 = !DILocation(line: 732, column: 1, scope: !6208)
!6321 = distinct !DISubprogram(name: "acpi_dev_pm_get_state", scope: !3, file: !3, line: 585, type: !6322, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6322 = !DISubroutineType(types: !6323)
!6323 = !{!165, !1694, !182, !179, !731, !731}
!6324 = !DILocalVariable(name: "dev", arg: 1, scope: !6321, file: !3, line: 585, type: !1694)
!6325 = !DILocation(line: 585, column: 49, scope: !6321)
!6326 = !DILocalVariable(name: "adev", arg: 2, scope: !6321, file: !3, line: 585, type: !182)
!6327 = !DILocation(line: 585, column: 74, scope: !6321)
!6328 = !DILocalVariable(name: "target_state", arg: 3, scope: !6321, file: !3, line: 586, type: !179)
!6329 = !DILocation(line: 586, column: 10, scope: !6321)
!6330 = !DILocalVariable(name: "d_min_p", arg: 4, scope: !6321, file: !3, line: 586, type: !731)
!6331 = !DILocation(line: 586, column: 29, scope: !6321)
!6332 = !DILocalVariable(name: "d_max_p", arg: 5, scope: !6321, file: !3, line: 586, type: !731)
!6333 = !DILocation(line: 586, column: 43, scope: !6321)
!6334 = !DILocalVariable(name: "method", scope: !6321, file: !3, line: 588, type: !5680)
!6335 = !DILocation(line: 588, column: 7, scope: !6321)
!6336 = !DILocation(line: 588, column: 18, scope: !6321)
!6337 = !DILocation(line: 588, column: 36, scope: !6321)
!6338 = !DILocation(line: 588, column: 34, scope: !6321)
!6339 = !DILocation(line: 588, column: 30, scope: !6321)
!6340 = !DILocalVariable(name: "handle", scope: !6321, file: !3, line: 589, type: !188)
!6341 = !DILocation(line: 589, column: 14, scope: !6321)
!6342 = !DILocation(line: 589, column: 23, scope: !6321)
!6343 = !DILocation(line: 589, column: 29, scope: !6321)
!6344 = !DILocalVariable(name: "ret", scope: !6321, file: !3, line: 590, type: !435)
!6345 = !DILocation(line: 590, column: 21, scope: !6321)
!6346 = !DILocalVariable(name: "d_min", scope: !6321, file: !3, line: 591, type: !165)
!6347 = !DILocation(line: 591, column: 6, scope: !6321)
!6348 = !DILocalVariable(name: "d_max", scope: !6321, file: !3, line: 591, type: !165)
!6349 = !DILocation(line: 591, column: 13, scope: !6321)
!6350 = !DILocalVariable(name: "wakeup", scope: !6321, file: !3, line: 592, type: !212)
!6351 = !DILocation(line: 592, column: 7, scope: !6321)
!6352 = !DILocalVariable(name: "has_sxd", scope: !6321, file: !3, line: 593, type: !212)
!6353 = !DILocation(line: 593, column: 7, scope: !6321)
!6354 = !DILocalVariable(name: "status", scope: !6321, file: !3, line: 594, type: !177)
!6355 = !DILocation(line: 594, column: 14, scope: !6321)
!6356 = !DILocation(line: 602, column: 8, scope: !6321)
!6357 = !DILocation(line: 603, column: 8, scope: !6321)
!6358 = !DILocation(line: 610, column: 6, scope: !6359)
!6359 = distinct !DILexicalBlock(scope: !6321, file: !3, line: 610, column: 6)
!6360 = !DILocation(line: 610, column: 19, scope: !6359)
!6361 = !DILocation(line: 610, column: 6, scope: !6321)
!6362 = !DILocation(line: 615, column: 9, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6359, file: !3, line: 610, column: 36)
!6364 = !DILocation(line: 615, column: 7, scope: !6363)
!6365 = !DILocation(line: 616, column: 34, scope: !6363)
!6366 = !DILocation(line: 616, column: 42, scope: !6363)
!6367 = !DILocation(line: 616, column: 12, scope: !6363)
!6368 = !DILocation(line: 616, column: 10, scope: !6363)
!6369 = !DILocation(line: 617, column: 8, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6363, file: !3, line: 617, column: 7)
!6371 = !DILocation(line: 617, column: 29, scope: !6370)
!6372 = !DILocation(line: 617, column: 32, scope: !6370)
!6373 = !DILocation(line: 617, column: 39, scope: !6370)
!6374 = !DILocation(line: 618, column: 7, scope: !6370)
!6375 = !DILocation(line: 618, column: 10, scope: !6370)
!6376 = !DILocation(line: 618, column: 14, scope: !6370)
!6377 = !DILocation(line: 617, column: 7, scope: !6363)
!6378 = !DILocation(line: 619, column: 4, scope: !6370)
!6379 = !DILocation(line: 626, column: 8, scope: !6380)
!6380 = distinct !DILexicalBlock(scope: !6363, file: !3, line: 626, column: 7)
!6381 = !DILocation(line: 626, column: 14, scope: !6380)
!6382 = !DILocation(line: 626, column: 20, scope: !6380)
!6383 = !DILocation(line: 626, column: 27, scope: !6380)
!6384 = !DILocation(line: 626, column: 32, scope: !6380)
!6385 = !DILocation(line: 626, column: 38, scope: !6380)
!6386 = !DILocation(line: 626, column: 7, scope: !6363)
!6387 = !DILocation(line: 627, column: 8, scope: !6388)
!6388 = distinct !DILexicalBlock(scope: !6389, file: !3, line: 627, column: 8)
!6389 = distinct !DILexicalBlock(scope: !6380, file: !3, line: 626, column: 45)
!6390 = !DILocation(line: 627, column: 12, scope: !6388)
!6391 = !DILocation(line: 627, column: 8, scope: !6389)
!6392 = !DILocation(line: 628, column: 9, scope: !6388)
!6393 = !DILocation(line: 628, column: 5, scope: !6388)
!6394 = !DILocation(line: 630, column: 5, scope: !6388)
!6395 = !DILocation(line: 631, column: 3, scope: !6389)
!6396 = !DILocation(line: 633, column: 7, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6363, file: !3, line: 633, column: 7)
!6398 = !DILocation(line: 633, column: 14, scope: !6397)
!6399 = !DILocation(line: 633, column: 7, scope: !6363)
!6400 = !DILocation(line: 634, column: 12, scope: !6397)
!6401 = !DILocation(line: 634, column: 4, scope: !6397)
!6402 = !DILocation(line: 636, column: 11, scope: !6363)
!6403 = !DILocation(line: 636, column: 9, scope: !6363)
!6404 = !DILocation(line: 637, column: 30, scope: !6363)
!6405 = !DILocation(line: 637, column: 12, scope: !6363)
!6406 = !DILocation(line: 637, column: 35, scope: !6363)
!6407 = !DILocation(line: 637, column: 38, scope: !6363)
!6408 = !DILocation(line: 637, column: 44, scope: !6363)
!6409 = !DILocation(line: 637, column: 51, scope: !6363)
!6410 = !DILocation(line: 637, column: 57, scope: !6363)
!6411 = !DILocation(line: 638, column: 4, scope: !6363)
!6412 = !DILocation(line: 638, column: 7, scope: !6363)
!6413 = !DILocation(line: 638, column: 13, scope: !6363)
!6414 = !DILocation(line: 638, column: 20, scope: !6363)
!6415 = !DILocation(line: 638, column: 35, scope: !6363)
!6416 = !DILocation(line: 638, column: 32, scope: !6363)
!6417 = !DILocation(line: 0, scope: !6363)
!6418 = !DILocation(line: 637, column: 10, scope: !6363)
!6419 = !DILocation(line: 639, column: 2, scope: !6363)
!6420 = !DILocation(line: 640, column: 12, scope: !6421)
!6421 = distinct !DILexicalBlock(scope: !6359, file: !3, line: 639, column: 9)
!6422 = !DILocation(line: 640, column: 18, scope: !6421)
!6423 = !DILocation(line: 640, column: 25, scope: !6421)
!6424 = !DILocation(line: 640, column: 31, scope: !6421)
!6425 = !DILocation(line: 640, column: 10, scope: !6421)
!6426 = !DILocation(line: 650, column: 6, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !6321, file: !3, line: 650, column: 6)
!6428 = !DILocation(line: 650, column: 6, scope: !6321)
!6429 = !DILocation(line: 651, column: 3, scope: !6430)
!6430 = distinct !DILexicalBlock(scope: !6427, file: !3, line: 650, column: 14)
!6431 = !DILocation(line: 651, column: 13, scope: !6430)
!6432 = !DILocation(line: 652, column: 34, scope: !6430)
!6433 = !DILocation(line: 652, column: 42, scope: !6430)
!6434 = !DILocation(line: 652, column: 12, scope: !6430)
!6435 = !DILocation(line: 652, column: 10, scope: !6430)
!6436 = !DILocation(line: 653, column: 7, scope: !6437)
!6437 = distinct !DILexicalBlock(scope: !6430, file: !3, line: 653, column: 7)
!6438 = !DILocation(line: 653, column: 14, scope: !6437)
!6439 = !DILocation(line: 653, column: 7, scope: !6430)
!6440 = !DILocation(line: 658, column: 8, scope: !6441)
!6441 = distinct !DILexicalBlock(scope: !6442, file: !3, line: 658, column: 8)
!6442 = distinct !DILexicalBlock(scope: !6437, file: !3, line: 653, column: 31)
!6443 = !DILocation(line: 658, column: 16, scope: !6441)
!6444 = !DILocation(line: 658, column: 19, scope: !6441)
!6445 = !DILocation(line: 658, column: 32, scope: !6441)
!6446 = !DILocation(line: 658, column: 8, scope: !6442)
!6447 = !DILocation(line: 659, column: 13, scope: !6441)
!6448 = !DILocation(line: 659, column: 11, scope: !6441)
!6449 = !DILocation(line: 659, column: 5, scope: !6441)
!6450 = !DILocation(line: 660, column: 3, scope: !6442)
!6451 = !DILocation(line: 660, column: 14, scope: !6452)
!6452 = distinct !DILexicalBlock(scope: !6437, file: !3, line: 660, column: 14)
!6453 = !DILocation(line: 660, column: 35, scope: !6452)
!6454 = !DILocation(line: 660, column: 38, scope: !6452)
!6455 = !DILocation(line: 660, column: 42, scope: !6452)
!6456 = !DILocation(line: 660, column: 14, scope: !6437)
!6457 = !DILocation(line: 662, column: 9, scope: !6458)
!6458 = distinct !DILexicalBlock(scope: !6459, file: !3, line: 662, column: 8)
!6459 = distinct !DILexicalBlock(scope: !6452, file: !3, line: 660, column: 65)
!6460 = !DILocation(line: 662, column: 15, scope: !6458)
!6461 = !DILocation(line: 662, column: 21, scope: !6458)
!6462 = !DILocation(line: 662, column: 28, scope: !6458)
!6463 = !DILocation(line: 662, column: 33, scope: !6458)
!6464 = !DILocation(line: 662, column: 39, scope: !6458)
!6465 = !DILocation(line: 662, column: 8, scope: !6459)
!6466 = !DILocation(line: 663, column: 9, scope: !6458)
!6467 = !DILocation(line: 663, column: 5, scope: !6458)
!6468 = !DILocation(line: 665, column: 12, scope: !6459)
!6469 = !DILocation(line: 665, column: 18, scope: !6459)
!6470 = !DILocation(line: 665, column: 16, scope: !6459)
!6471 = !DILocation(line: 665, column: 26, scope: !6459)
!6472 = !DILocation(line: 665, column: 32, scope: !6459)
!6473 = !DILocation(line: 665, column: 10, scope: !6459)
!6474 = !DILocation(line: 666, column: 3, scope: !6459)
!6475 = !DILocation(line: 667, column: 4, scope: !6476)
!6476 = distinct !DILexicalBlock(scope: !6452, file: !3, line: 666, column: 10)
!6477 = !DILocation(line: 669, column: 2, scope: !6430)
!6478 = !DILocation(line: 671, column: 6, scope: !6479)
!6479 = distinct !DILexicalBlock(scope: !6321, file: !3, line: 671, column: 6)
!6480 = !DILocation(line: 671, column: 6, scope: !6321)
!6481 = !DILocation(line: 672, column: 14, scope: !6479)
!6482 = !DILocation(line: 672, column: 4, scope: !6479)
!6483 = !DILocation(line: 672, column: 12, scope: !6479)
!6484 = !DILocation(line: 672, column: 3, scope: !6479)
!6485 = !DILocation(line: 674, column: 6, scope: !6486)
!6486 = distinct !DILexicalBlock(scope: !6321, file: !3, line: 674, column: 6)
!6487 = !DILocation(line: 674, column: 6, scope: !6321)
!6488 = !DILocation(line: 675, column: 14, scope: !6486)
!6489 = !DILocation(line: 675, column: 4, scope: !6486)
!6490 = !DILocation(line: 675, column: 12, scope: !6486)
!6491 = !DILocation(line: 675, column: 3, scope: !6486)
!6492 = !DILocation(line: 677, column: 2, scope: !6321)
!6493 = !DILocation(line: 678, column: 1, scope: !6321)
!6494 = distinct !DISubprogram(name: "acpi_pm_set_device_wakeup", scope: !3, file: !3, line: 866, type: !5298, scopeLine: 867, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6495 = !DILocalVariable(name: "dev", arg: 1, scope: !6494, file: !3, line: 866, type: !1694)
!6496 = !DILocation(line: 866, column: 46, scope: !6494)
!6497 = !DILocalVariable(name: "enable", arg: 2, scope: !6494, file: !3, line: 866, type: !212)
!6498 = !DILocation(line: 866, column: 56, scope: !6494)
!6499 = !DILocation(line: 868, column: 37, scope: !6494)
!6500 = !DILocation(line: 868, column: 42, scope: !6494)
!6501 = !DILocation(line: 868, column: 9, scope: !6494)
!6502 = !DILocation(line: 868, column: 2, scope: !6494)
!6503 = distinct !DISubprogram(name: "__acpi_pm_set_device_wakeup", scope: !3, file: !3, line: 832, type: !6504, scopeLine: 834, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6504 = !DISubroutineType(types: !6505)
!6505 = !{!165, !1694, !212, !165}
!6506 = !DILocalVariable(name: "dev", arg: 1, scope: !6503, file: !3, line: 832, type: !1694)
!6507 = !DILocation(line: 832, column: 55, scope: !6503)
!6508 = !DILocalVariable(name: "enable", arg: 2, scope: !6503, file: !3, line: 832, type: !212)
!6509 = !DILocation(line: 832, column: 65, scope: !6503)
!6510 = !DILocalVariable(name: "max_count", arg: 3, scope: !6503, file: !3, line: 833, type: !165)
!6511 = !DILocation(line: 833, column: 16, scope: !6503)
!6512 = !DILocalVariable(name: "adev", scope: !6503, file: !3, line: 835, type: !182)
!6513 = !DILocation(line: 835, column: 22, scope: !6503)
!6514 = !DILocalVariable(name: "error", scope: !6503, file: !3, line: 836, type: !165)
!6515 = !DILocation(line: 836, column: 6, scope: !6503)
!6516 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !6517, file: !3, line: 838, type: !194)
!6517 = distinct !DILexicalBlock(scope: !6503, file: !3, line: 838, column: 9)
!6518 = !DILocation(line: 838, column: 9, scope: !6517)
!6519 = !DILocalVariable(name: "__mptr", scope: !6520, file: !3, line: 838, type: !181)
!6520 = distinct !DILexicalBlock(scope: !6517, file: !3, line: 838, column: 9)
!6521 = !DILocation(line: 838, column: 9, scope: !6520)
!6522 = !DILocation(line: 838, column: 9, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6520, file: !3, line: 838, column: 9)
!6524 = !DILocation(line: 838, column: 7, scope: !6503)
!6525 = !DILocation(line: 839, column: 7, scope: !6526)
!6526 = distinct !DILexicalBlock(scope: !6503, file: !3, line: 839, column: 6)
!6527 = !DILocation(line: 839, column: 6, scope: !6503)
!6528 = !DILocation(line: 841, column: 3, scope: !6529)
!6529 = distinct !DILexicalBlock(scope: !6526, file: !3, line: 839, column: 13)
!6530 = !DILocation(line: 844, column: 30, scope: !6531)
!6531 = distinct !DILexicalBlock(scope: !6503, file: !3, line: 844, column: 6)
!6532 = !DILocation(line: 844, column: 7, scope: !6531)
!6533 = !DILocation(line: 844, column: 6, scope: !6503)
!6534 = !DILocation(line: 845, column: 3, scope: !6531)
!6535 = !DILocation(line: 847, column: 7, scope: !6536)
!6536 = distinct !DILexicalBlock(scope: !6503, file: !3, line: 847, column: 6)
!6537 = !DILocation(line: 847, column: 6, scope: !6503)
!6538 = !DILocation(line: 848, column: 30, scope: !6539)
!6539 = distinct !DILexicalBlock(scope: !6536, file: !3, line: 847, column: 15)
!6540 = !DILocation(line: 848, column: 3, scope: !6539)
!6541 = !DILocation(line: 850, column: 3, scope: !6539)
!6542 = !DILocation(line: 853, column: 38, scope: !6503)
!6543 = !DILocation(line: 853, column: 44, scope: !6503)
!6544 = !DILocation(line: 854, column: 10, scope: !6503)
!6545 = !DILocation(line: 853, column: 10, scope: !6503)
!6546 = !DILocation(line: 853, column: 8, scope: !6503)
!6547 = !DILocation(line: 855, column: 7, scope: !6548)
!6548 = distinct !DILexicalBlock(scope: !6503, file: !3, line: 855, column: 6)
!6549 = !DILocation(line: 855, column: 6, scope: !6503)
!6550 = !DILocation(line: 856, column: 3, scope: !6548)
!6551 = !DILocation(line: 858, column: 9, scope: !6503)
!6552 = !DILocation(line: 858, column: 2, scope: !6503)
!6553 = !DILocation(line: 859, column: 1, scope: !6503)
!6554 = distinct !DISubprogram(name: "acpi_pm_set_bridge_wakeup", scope: !3, file: !3, line: 877, type: !5298, scopeLine: 878, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6555 = !DILocalVariable(name: "dev", arg: 1, scope: !6554, file: !3, line: 877, type: !1694)
!6556 = !DILocation(line: 877, column: 46, scope: !6554)
!6557 = !DILocalVariable(name: "enable", arg: 2, scope: !6554, file: !3, line: 877, type: !212)
!6558 = !DILocation(line: 877, column: 56, scope: !6554)
!6559 = !DILocation(line: 879, column: 37, scope: !6554)
!6560 = !DILocation(line: 879, column: 42, scope: !6554)
!6561 = !DILocation(line: 879, column: 9, scope: !6554)
!6562 = !DILocation(line: 879, column: 2, scope: !6554)
!6563 = distinct !DISubprogram(name: "acpi_dev_suspend", scope: !3, file: !3, line: 921, type: !5298, scopeLine: 922, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6564 = !DILocalVariable(name: "dev", arg: 1, scope: !6563, file: !3, line: 921, type: !1694)
!6565 = !DILocation(line: 921, column: 37, scope: !6563)
!6566 = !DILocalVariable(name: "wakeup", arg: 2, scope: !6563, file: !3, line: 921, type: !212)
!6567 = !DILocation(line: 921, column: 47, scope: !6563)
!6568 = !DILocalVariable(name: "adev", scope: !6563, file: !3, line: 923, type: !182)
!6569 = !DILocation(line: 923, column: 22, scope: !6563)
!6570 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !6571, file: !3, line: 923, type: !194)
!6571 = distinct !DILexicalBlock(scope: !6563, file: !3, line: 923, column: 29)
!6572 = !DILocation(line: 923, column: 29, scope: !6571)
!6573 = !DILocalVariable(name: "__mptr", scope: !6574, file: !3, line: 923, type: !181)
!6574 = distinct !DILexicalBlock(scope: !6571, file: !3, line: 923, column: 29)
!6575 = !DILocation(line: 923, column: 29, scope: !6574)
!6576 = !DILocation(line: 923, column: 29, scope: !6577)
!6577 = distinct !DILexicalBlock(scope: !6574, file: !3, line: 923, column: 29)
!6578 = !DILocalVariable(name: "target_state", scope: !6563, file: !3, line: 924, type: !179)
!6579 = !DILocation(line: 924, column: 6, scope: !6563)
!6580 = !DILocation(line: 924, column: 21, scope: !6563)
!6581 = !DILocalVariable(name: "error", scope: !6563, file: !3, line: 925, type: !165)
!6582 = !DILocation(line: 925, column: 6, scope: !6563)
!6583 = !DILocation(line: 927, column: 7, scope: !6584)
!6584 = distinct !DILexicalBlock(scope: !6563, file: !3, line: 927, column: 6)
!6585 = !DILocation(line: 927, column: 6, scope: !6563)
!6586 = !DILocation(line: 928, column: 3, scope: !6584)
!6587 = !DILocation(line: 930, column: 6, scope: !6588)
!6588 = distinct !DILexicalBlock(scope: !6563, file: !3, line: 930, column: 6)
!6589 = !DILocation(line: 930, column: 13, scope: !6588)
!6590 = !DILocation(line: 930, column: 39, scope: !6588)
!6591 = !DILocation(line: 930, column: 16, scope: !6588)
!6592 = !DILocation(line: 930, column: 6, scope: !6563)
!6593 = !DILocation(line: 931, column: 37, scope: !6594)
!6594 = distinct !DILexicalBlock(scope: !6588, file: !3, line: 930, column: 46)
!6595 = !DILocation(line: 931, column: 43, scope: !6594)
!6596 = !DILocation(line: 931, column: 11, scope: !6594)
!6597 = !DILocation(line: 931, column: 9, scope: !6594)
!6598 = !DILocation(line: 932, column: 7, scope: !6599)
!6599 = distinct !DILexicalBlock(scope: !6594, file: !3, line: 932, column: 7)
!6600 = !DILocation(line: 932, column: 7, scope: !6594)
!6601 = !DILocation(line: 933, column: 4, scope: !6599)
!6602 = !DILocation(line: 934, column: 2, scope: !6594)
!6603 = !DILocation(line: 935, column: 10, scope: !6604)
!6604 = distinct !DILexicalBlock(scope: !6588, file: !3, line: 934, column: 9)
!6605 = !DILocation(line: 938, column: 32, scope: !6563)
!6606 = !DILocation(line: 938, column: 37, scope: !6563)
!6607 = !DILocation(line: 938, column: 43, scope: !6563)
!6608 = !DILocation(line: 938, column: 10, scope: !6563)
!6609 = !DILocation(line: 938, column: 8, scope: !6563)
!6610 = !DILocation(line: 939, column: 6, scope: !6611)
!6611 = distinct !DILexicalBlock(scope: !6563, file: !3, line: 939, column: 6)
!6612 = !DILocation(line: 939, column: 12, scope: !6611)
!6613 = !DILocation(line: 939, column: 15, scope: !6611)
!6614 = !DILocation(line: 939, column: 6, scope: !6563)
!6615 = !DILocation(line: 940, column: 30, scope: !6611)
!6616 = !DILocation(line: 940, column: 3, scope: !6611)
!6617 = !DILocation(line: 942, column: 9, scope: !6563)
!6618 = !DILocation(line: 942, column: 2, scope: !6563)
!6619 = !DILocation(line: 943, column: 1, scope: !6563)
!6620 = distinct !DISubprogram(name: "acpi_device_wakeup_enable", scope: !3, file: !3, line: 800, type: !5254, scopeLine: 801, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6621 = !DILocalVariable(name: "adev", arg: 1, scope: !6620, file: !3, line: 800, type: !182)
!6622 = !DILocation(line: 800, column: 58, scope: !6620)
!6623 = !DILocalVariable(name: "target_state", arg: 2, scope: !6620, file: !3, line: 800, type: !179)
!6624 = !DILocation(line: 800, column: 68, scope: !6620)
!6625 = !DILocation(line: 802, column: 37, scope: !6620)
!6626 = !DILocation(line: 802, column: 43, scope: !6620)
!6627 = !DILocation(line: 802, column: 9, scope: !6620)
!6628 = !DILocation(line: 802, column: 2, scope: !6620)
!6629 = distinct !DISubprogram(name: "acpi_dev_pm_low_power", scope: !3, file: !3, line: 889, type: !6630, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6630 = !DISubroutineType(types: !6631)
!6631 = !{!165, !1694, !182, !179}
!6632 = !DILocalVariable(name: "dev", arg: 1, scope: !6629, file: !3, line: 889, type: !1694)
!6633 = !DILocation(line: 889, column: 49, scope: !6629)
!6634 = !DILocalVariable(name: "adev", arg: 2, scope: !6629, file: !3, line: 889, type: !182)
!6635 = !DILocation(line: 889, column: 74, scope: !6629)
!6636 = !DILocalVariable(name: "system_state", arg: 3, scope: !6629, file: !3, line: 890, type: !179)
!6637 = !DILocation(line: 890, column: 10, scope: !6629)
!6638 = !DILocalVariable(name: "ret", scope: !6629, file: !3, line: 892, type: !165)
!6639 = !DILocation(line: 892, column: 6, scope: !6629)
!6640 = !DILocalVariable(name: "state", scope: !6629, file: !3, line: 892, type: !165)
!6641 = !DILocation(line: 892, column: 11, scope: !6629)
!6642 = !DILocation(line: 894, column: 36, scope: !6643)
!6643 = distinct !DILexicalBlock(scope: !6629, file: !3, line: 894, column: 6)
!6644 = !DILocation(line: 894, column: 7, scope: !6643)
!6645 = !DILocation(line: 894, column: 6, scope: !6629)
!6646 = !DILocation(line: 895, column: 3, scope: !6643)
!6647 = !DILocation(line: 897, column: 30, scope: !6629)
!6648 = !DILocation(line: 897, column: 35, scope: !6629)
!6649 = !DILocation(line: 897, column: 41, scope: !6629)
!6650 = !DILocation(line: 897, column: 8, scope: !6629)
!6651 = !DILocation(line: 897, column: 6, scope: !6629)
!6652 = !DILocation(line: 898, column: 9, scope: !6629)
!6653 = !DILocation(line: 898, column: 15, scope: !6629)
!6654 = !DILocation(line: 898, column: 43, scope: !6629)
!6655 = !DILocation(line: 898, column: 49, scope: !6629)
!6656 = !DILocation(line: 898, column: 21, scope: !6629)
!6657 = !DILocation(line: 898, column: 2, scope: !6629)
!6658 = !DILocation(line: 899, column: 1, scope: !6629)
!6659 = distinct !DISubprogram(name: "acpi_device_wakeup_disable", scope: !3, file: !3, line: 814, type: !5232, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6660 = !DILocalVariable(name: "adev", arg: 1, scope: !6659, file: !3, line: 814, type: !182)
!6661 = !DILocation(line: 814, column: 60, scope: !6659)
!6662 = !DILocalVariable(name: "wakeup", scope: !6659, file: !3, line: 816, type: !6663)
!6663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!6664 = !DILocation(line: 816, column: 29, scope: !6659)
!6665 = !DILocation(line: 816, column: 39, scope: !6659)
!6666 = !DILocation(line: 816, column: 45, scope: !6659)
!6667 = !DILocation(line: 818, column: 2, scope: !6659)
!6668 = !DILocation(line: 820, column: 7, scope: !6669)
!6669 = distinct !DILexicalBlock(scope: !6659, file: !3, line: 820, column: 6)
!6670 = !DILocation(line: 820, column: 15, scope: !6669)
!6671 = !DILocation(line: 820, column: 6, scope: !6659)
!6672 = !DILocation(line: 821, column: 3, scope: !6669)
!6673 = !DILocation(line: 823, column: 19, scope: !6659)
!6674 = !DILocation(line: 823, column: 27, scope: !6659)
!6675 = !DILocation(line: 823, column: 39, scope: !6659)
!6676 = !DILocation(line: 823, column: 47, scope: !6659)
!6677 = !DILocation(line: 823, column: 2, scope: !6659)
!6678 = !DILocation(line: 824, column: 35, scope: !6659)
!6679 = !DILocation(line: 824, column: 2, scope: !6659)
!6680 = !DILocation(line: 826, column: 2, scope: !6659)
!6681 = !DILocation(line: 826, column: 10, scope: !6659)
!6682 = !DILocation(line: 826, column: 22, scope: !6659)
!6683 = !DILabel(scope: !6659, name: "out", file: !3, line: 828)
!6684 = !DILocation(line: 828, column: 1, scope: !6659)
!6685 = !DILocation(line: 829, column: 2, scope: !6659)
!6686 = !DILocation(line: 830, column: 1, scope: !6659)
!6687 = distinct !DISubprogram(name: "acpi_dev_resume", scope: !3, file: !3, line: 953, type: !4480, scopeLine: 954, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6688 = !DILocalVariable(name: "dev", arg: 1, scope: !6687, file: !3, line: 953, type: !1694)
!6689 = !DILocation(line: 953, column: 36, scope: !6687)
!6690 = !DILocalVariable(name: "adev", scope: !6687, file: !3, line: 955, type: !182)
!6691 = !DILocation(line: 955, column: 22, scope: !6687)
!6692 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !6693, file: !3, line: 955, type: !194)
!6693 = distinct !DILexicalBlock(scope: !6687, file: !3, line: 955, column: 29)
!6694 = !DILocation(line: 955, column: 29, scope: !6693)
!6695 = !DILocalVariable(name: "__mptr", scope: !6696, file: !3, line: 955, type: !181)
!6696 = distinct !DILexicalBlock(scope: !6693, file: !3, line: 955, column: 29)
!6697 = !DILocation(line: 955, column: 29, scope: !6696)
!6698 = !DILocation(line: 955, column: 29, scope: !6699)
!6699 = distinct !DILexicalBlock(scope: !6696, file: !3, line: 955, column: 29)
!6700 = !DILocalVariable(name: "error", scope: !6687, file: !3, line: 956, type: !165)
!6701 = !DILocation(line: 956, column: 6, scope: !6687)
!6702 = !DILocation(line: 958, column: 7, scope: !6703)
!6703 = distinct !DILexicalBlock(scope: !6687, file: !3, line: 958, column: 6)
!6704 = !DILocation(line: 958, column: 6, scope: !6687)
!6705 = !DILocation(line: 959, column: 3, scope: !6703)
!6706 = !DILocation(line: 961, column: 33, scope: !6687)
!6707 = !DILocation(line: 961, column: 10, scope: !6687)
!6708 = !DILocation(line: 961, column: 8, scope: !6687)
!6709 = !DILocation(line: 962, column: 29, scope: !6687)
!6710 = !DILocation(line: 962, column: 2, scope: !6687)
!6711 = !DILocation(line: 963, column: 9, scope: !6687)
!6712 = !DILocation(line: 963, column: 2, scope: !6687)
!6713 = !DILocation(line: 964, column: 1, scope: !6687)
!6714 = distinct !DISubprogram(name: "acpi_dev_pm_full_power", scope: !3, file: !3, line: 905, type: !5242, scopeLine: 906, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6715 = !DILocalVariable(name: "adev", arg: 1, scope: !6714, file: !3, line: 905, type: !182)
!6716 = !DILocation(line: 905, column: 55, scope: !6714)
!6717 = !DILocation(line: 907, column: 38, scope: !6714)
!6718 = !DILocation(line: 907, column: 9, scope: !6714)
!6719 = !DILocation(line: 908, column: 25, scope: !6714)
!6720 = !DILocation(line: 908, column: 3, scope: !6714)
!6721 = !DILocation(line: 907, column: 2, scope: !6714)
!6722 = distinct !DISubprogram(name: "acpi_subsys_runtime_suspend", scope: !3, file: !3, line: 974, type: !4480, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6723 = !DILocalVariable(name: "dev", arg: 1, scope: !6722, file: !3, line: 974, type: !1694)
!6724 = !DILocation(line: 974, column: 48, scope: !6722)
!6725 = !DILocalVariable(name: "ret", scope: !6722, file: !3, line: 976, type: !165)
!6726 = !DILocation(line: 976, column: 6, scope: !6722)
!6727 = !DILocation(line: 976, column: 39, scope: !6722)
!6728 = !DILocation(line: 976, column: 12, scope: !6722)
!6729 = !DILocation(line: 977, column: 9, scope: !6722)
!6730 = !DILocation(line: 977, column: 15, scope: !6722)
!6731 = !DILocation(line: 977, column: 38, scope: !6722)
!6732 = !DILocation(line: 977, column: 21, scope: !6722)
!6733 = !DILocation(line: 977, column: 2, scope: !6722)
!6734 = distinct !DISubprogram(name: "acpi_subsys_runtime_resume", scope: !3, file: !3, line: 988, type: !4480, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6735 = !DILocalVariable(name: "dev", arg: 1, scope: !6734, file: !3, line: 988, type: !1694)
!6736 = !DILocation(line: 988, column: 47, scope: !6734)
!6737 = !DILocalVariable(name: "ret", scope: !6734, file: !3, line: 990, type: !165)
!6738 = !DILocation(line: 990, column: 6, scope: !6734)
!6739 = !DILocation(line: 990, column: 28, scope: !6734)
!6740 = !DILocation(line: 990, column: 12, scope: !6734)
!6741 = !DILocation(line: 991, column: 9, scope: !6734)
!6742 = !DILocation(line: 991, column: 15, scope: !6734)
!6743 = !DILocation(line: 991, column: 47, scope: !6734)
!6744 = !DILocation(line: 991, column: 21, scope: !6734)
!6745 = !DILocation(line: 991, column: 2, scope: !6734)
!6746 = distinct !DISubprogram(name: "acpi_subsys_prepare", scope: !3, file: !3, line: 1022, type: !4480, scopeLine: 1023, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6747 = !DILocalVariable(name: "dev", arg: 1, scope: !6746, file: !3, line: 1022, type: !1694)
!6748 = !DILocation(line: 1022, column: 40, scope: !6746)
!6749 = !DILocalVariable(name: "adev", scope: !6746, file: !3, line: 1024, type: !182)
!6750 = !DILocation(line: 1024, column: 22, scope: !6746)
!6751 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !6752, file: !3, line: 1024, type: !194)
!6752 = distinct !DILexicalBlock(scope: !6746, file: !3, line: 1024, column: 29)
!6753 = !DILocation(line: 1024, column: 29, scope: !6752)
!6754 = !DILocalVariable(name: "__mptr", scope: !6755, file: !3, line: 1024, type: !181)
!6755 = distinct !DILexicalBlock(scope: !6752, file: !3, line: 1024, column: 29)
!6756 = !DILocation(line: 1024, column: 29, scope: !6755)
!6757 = !DILocation(line: 1024, column: 29, scope: !6758)
!6758 = distinct !DILexicalBlock(scope: !6755, file: !3, line: 1024, column: 29)
!6759 = !DILocation(line: 1026, column: 6, scope: !6760)
!6760 = distinct !DILexicalBlock(scope: !6746, file: !3, line: 1026, column: 6)
!6761 = !DILocation(line: 1026, column: 11, scope: !6760)
!6762 = !DILocation(line: 1026, column: 18, scope: !6760)
!6763 = !DILocation(line: 1026, column: 21, scope: !6760)
!6764 = !DILocation(line: 1026, column: 26, scope: !6760)
!6765 = !DILocation(line: 1026, column: 34, scope: !6760)
!6766 = !DILocation(line: 1026, column: 37, scope: !6760)
!6767 = !DILocation(line: 1026, column: 40, scope: !6760)
!6768 = !DILocation(line: 1026, column: 45, scope: !6760)
!6769 = !DILocation(line: 1026, column: 53, scope: !6760)
!6770 = !DILocation(line: 1026, column: 57, scope: !6760)
!6771 = !DILocation(line: 1026, column: 6, scope: !6746)
!6772 = !DILocalVariable(name: "ret", scope: !6773, file: !3, line: 1027, type: !165)
!6773 = distinct !DILexicalBlock(scope: !6760, file: !3, line: 1026, column: 66)
!6774 = !DILocation(line: 1027, column: 7, scope: !6773)
!6775 = !DILocation(line: 1027, column: 13, scope: !6773)
!6776 = !DILocation(line: 1027, column: 18, scope: !6773)
!6777 = !DILocation(line: 1027, column: 26, scope: !6773)
!6778 = !DILocation(line: 1027, column: 30, scope: !6773)
!6779 = !DILocation(line: 1027, column: 38, scope: !6773)
!6780 = !DILocation(line: 1029, column: 7, scope: !6781)
!6781 = distinct !DILexicalBlock(scope: !6773, file: !3, line: 1029, column: 7)
!6782 = !DILocation(line: 1029, column: 11, scope: !6781)
!6783 = !DILocation(line: 1029, column: 7, scope: !6773)
!6784 = !DILocation(line: 1030, column: 11, scope: !6781)
!6785 = !DILocation(line: 1030, column: 4, scope: !6781)
!6786 = !DILocation(line: 1032, column: 8, scope: !6787)
!6787 = distinct !DILexicalBlock(scope: !6773, file: !3, line: 1032, column: 7)
!6788 = !DILocation(line: 1032, column: 12, scope: !6787)
!6789 = !DILocation(line: 1032, column: 40, scope: !6787)
!6790 = !DILocation(line: 1032, column: 15, scope: !6787)
!6791 = !DILocation(line: 1032, column: 7, scope: !6773)
!6792 = !DILocation(line: 1033, column: 4, scope: !6787)
!6793 = !DILocation(line: 1034, column: 2, scope: !6773)
!6794 = !DILocation(line: 1036, column: 32, scope: !6746)
!6795 = !DILocation(line: 1036, column: 37, scope: !6746)
!6796 = !DILocation(line: 1036, column: 10, scope: !6746)
!6797 = !DILocation(line: 1036, column: 9, scope: !6746)
!6798 = !DILocation(line: 1036, column: 2, scope: !6746)
!6799 = !DILocation(line: 1037, column: 1, scope: !6746)
!6800 = distinct !DISubprogram(name: "dev_pm_test_driver_flags", scope: !115, file: !115, line: 724, type: !6801, scopeLine: 725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6801 = !DISubroutineType(types: !6802)
!6802 = !{!212, !1694, !179}
!6803 = !DILocalVariable(name: "dev", arg: 1, scope: !6800, file: !115, line: 724, type: !1694)
!6804 = !DILocation(line: 724, column: 60, scope: !6800)
!6805 = !DILocalVariable(name: "flags", arg: 2, scope: !6800, file: !115, line: 724, type: !179)
!6806 = !DILocation(line: 724, column: 69, scope: !6800)
!6807 = !DILocation(line: 726, column: 12, scope: !6800)
!6808 = !DILocation(line: 726, column: 17, scope: !6800)
!6809 = !DILocation(line: 726, column: 23, scope: !6800)
!6810 = !DILocation(line: 726, column: 38, scope: !6800)
!6811 = !DILocation(line: 726, column: 36, scope: !6800)
!6812 = !DILocation(line: 726, column: 10, scope: !6800)
!6813 = !DILocation(line: 726, column: 9, scope: !6800)
!6814 = !DILocation(line: 726, column: 2, scope: !6800)
!6815 = distinct !DISubprogram(name: "acpi_dev_needs_resume", scope: !3, file: !3, line: 996, type: !6816, scopeLine: 997, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6816 = !DISubroutineType(types: !6817)
!6817 = !{!212, !1694, !182}
!6818 = !DILocalVariable(name: "dev", arg: 1, scope: !6815, file: !3, line: 996, type: !1694)
!6819 = !DILocation(line: 996, column: 50, scope: !6815)
!6820 = !DILocalVariable(name: "adev", arg: 2, scope: !6815, file: !3, line: 996, type: !182)
!6821 = !DILocation(line: 996, column: 75, scope: !6815)
!6822 = !DILocalVariable(name: "sys_target", scope: !6815, file: !3, line: 998, type: !179)
!6823 = !DILocation(line: 998, column: 6, scope: !6815)
!6824 = !DILocation(line: 998, column: 19, scope: !6815)
!6825 = !DILocalVariable(name: "ret", scope: !6815, file: !3, line: 999, type: !165)
!6826 = !DILocation(line: 999, column: 6, scope: !6815)
!6827 = !DILocalVariable(name: "state", scope: !6815, file: !3, line: 999, type: !165)
!6828 = !DILocation(line: 999, column: 11, scope: !6815)
!6829 = !DILocation(line: 1001, column: 28, scope: !6830)
!6830 = distinct !DILexicalBlock(scope: !6815, file: !3, line: 1001, column: 6)
!6831 = !DILocation(line: 1001, column: 7, scope: !6830)
!6832 = !DILocation(line: 1001, column: 33, scope: !6830)
!6833 = !DILocation(line: 1001, column: 37, scope: !6830)
!6834 = !DILocation(line: 1001, column: 42, scope: !6830)
!6835 = !DILocation(line: 1001, column: 46, scope: !6830)
!6836 = !DILocation(line: 1001, column: 52, scope: !6830)
!6837 = !DILocation(line: 1001, column: 59, scope: !6830)
!6838 = !DILocation(line: 1001, column: 65, scope: !6830)
!6839 = !DILocation(line: 1001, column: 71, scope: !6830)
!6840 = !DILocation(line: 1002, column: 24, scope: !6830)
!6841 = !DILocation(line: 1002, column: 6, scope: !6830)
!6842 = !DILocation(line: 1002, column: 34, scope: !6830)
!6843 = !DILocation(line: 1002, column: 40, scope: !6830)
!6844 = !DILocation(line: 1002, column: 47, scope: !6830)
!6845 = !DILocation(line: 1002, column: 33, scope: !6830)
!6846 = !DILocation(line: 1002, column: 32, scope: !6830)
!6847 = !DILocation(line: 1002, column: 29, scope: !6830)
!6848 = !DILocation(line: 1001, column: 6, scope: !6815)
!6849 = !DILocation(line: 1003, column: 3, scope: !6830)
!6850 = !DILocation(line: 1005, column: 6, scope: !6851)
!6851 = distinct !DILexicalBlock(scope: !6815, file: !3, line: 1005, column: 6)
!6852 = !DILocation(line: 1005, column: 17, scope: !6851)
!6853 = !DILocation(line: 1005, column: 6, scope: !6815)
!6854 = !DILocation(line: 1006, column: 3, scope: !6851)
!6855 = !DILocation(line: 1008, column: 6, scope: !6856)
!6856 = distinct !DILexicalBlock(scope: !6815, file: !3, line: 1008, column: 6)
!6857 = !DILocation(line: 1008, column: 12, scope: !6856)
!6858 = !DILocation(line: 1008, column: 18, scope: !6856)
!6859 = !DILocation(line: 1008, column: 24, scope: !6856)
!6860 = !DILocation(line: 1008, column: 6, scope: !6815)
!6861 = !DILocation(line: 1009, column: 3, scope: !6856)
!6862 = !DILocation(line: 1011, column: 30, scope: !6815)
!6863 = !DILocation(line: 1011, column: 35, scope: !6815)
!6864 = !DILocation(line: 1011, column: 41, scope: !6815)
!6865 = !DILocation(line: 1011, column: 8, scope: !6815)
!6866 = !DILocation(line: 1011, column: 6, scope: !6815)
!6867 = !DILocation(line: 1012, column: 6, scope: !6868)
!6868 = distinct !DILexicalBlock(scope: !6815, file: !3, line: 1012, column: 6)
!6869 = !DILocation(line: 1012, column: 6, scope: !6815)
!6870 = !DILocation(line: 1013, column: 3, scope: !6868)
!6871 = !DILocation(line: 1015, column: 9, scope: !6815)
!6872 = !DILocation(line: 1015, column: 18, scope: !6815)
!6873 = !DILocation(line: 1015, column: 24, scope: !6815)
!6874 = !DILocation(line: 1015, column: 30, scope: !6815)
!6875 = !DILocation(line: 1015, column: 15, scope: !6815)
!6876 = !DILocation(line: 1015, column: 2, scope: !6815)
!6877 = !DILocation(line: 1016, column: 1, scope: !6815)
!6878 = distinct !DISubprogram(name: "acpi_subsys_complete", scope: !3, file: !3, line: 1044, type: !4471, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6879 = !DILocalVariable(name: "dev", arg: 1, scope: !6878, file: !3, line: 1044, type: !1694)
!6880 = !DILocation(line: 1044, column: 42, scope: !6878)
!6881 = !DILocation(line: 1046, column: 22, scope: !6878)
!6882 = !DILocation(line: 1046, column: 2, scope: !6878)
!6883 = !DILocation(line: 1052, column: 27, scope: !6884)
!6884 = distinct !DILexicalBlock(scope: !6878, file: !3, line: 1052, column: 6)
!6885 = !DILocation(line: 1052, column: 6, scope: !6884)
!6886 = !DILocation(line: 1052, column: 32, scope: !6884)
!6887 = !DILocation(line: 1052, column: 35, scope: !6884)
!6888 = !DILocation(line: 1052, column: 6, scope: !6878)
!6889 = !DILocation(line: 1053, column: 21, scope: !6884)
!6890 = !DILocation(line: 1053, column: 3, scope: !6884)
!6891 = !DILocation(line: 1054, column: 1, scope: !6878)
!6892 = distinct !DISubprogram(name: "pm_runtime_suspended", scope: !6893, file: !6893, line: 120, type: !6180, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6893 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!6894 = !DILocalVariable(name: "dev", arg: 1, scope: !6892, file: !6893, line: 120, type: !1694)
!6895 = !DILocation(line: 120, column: 56, scope: !6892)
!6896 = !DILocation(line: 122, column: 9, scope: !6892)
!6897 = !DILocation(line: 122, column: 14, scope: !6892)
!6898 = !DILocation(line: 122, column: 20, scope: !6892)
!6899 = !DILocation(line: 122, column: 35, scope: !6892)
!6900 = !DILocation(line: 123, column: 3, scope: !6892)
!6901 = !DILocation(line: 123, column: 7, scope: !6892)
!6902 = !DILocation(line: 123, column: 12, scope: !6892)
!6903 = !DILocation(line: 123, column: 18, scope: !6892)
!6904 = !DILocation(line: 123, column: 6, scope: !6892)
!6905 = !DILocation(line: 0, scope: !6892)
!6906 = !DILocation(line: 122, column: 2, scope: !6892)
!6907 = distinct !DISubprogram(name: "pm_resume_via_firmware", scope: !6908, file: !6908, line: 273, type: !4291, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6908 = !DIFile(filename: "./include/linux/suspend.h", directory: "/home/lizy2001/genbc/linux")
!6909 = !DILocation(line: 275, column: 12, scope: !6907)
!6910 = !DILocation(line: 275, column: 36, scope: !6907)
!6911 = !DILocation(line: 275, column: 10, scope: !6907)
!6912 = !DILocation(line: 275, column: 9, scope: !6907)
!6913 = !DILocation(line: 275, column: 2, scope: !6907)
!6914 = distinct !DISubprogram(name: "pm_request_resume", scope: !6893, file: !6893, line: 344, type: !4480, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6915 = !DILocalVariable(name: "dev", arg: 1, scope: !6914, file: !6893, line: 344, type: !1694)
!6916 = !DILocation(line: 344, column: 52, scope: !6914)
!6917 = !DILocation(line: 346, column: 29, scope: !6914)
!6918 = !DILocation(line: 346, column: 9, scope: !6914)
!6919 = !DILocation(line: 346, column: 2, scope: !6914)
!6920 = distinct !DISubprogram(name: "acpi_subsys_suspend", scope: !3, file: !3, line: 1066, type: !4480, scopeLine: 1067, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6921 = !DILocalVariable(name: "dev", arg: 1, scope: !6920, file: !3, line: 1066, type: !1694)
!6922 = !DILocation(line: 1066, column: 40, scope: !6920)
!6923 = !DILocation(line: 1068, column: 32, scope: !6924)
!6924 = distinct !DILexicalBlock(scope: !6920, file: !3, line: 1068, column: 6)
!6925 = !DILocation(line: 1068, column: 7, scope: !6924)
!6926 = !DILocation(line: 1068, column: 61, scope: !6924)
!6927 = !DILocation(line: 1069, column: 28, scope: !6924)
!6928 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !6929, file: !3, line: 1069, type: !194)
!6929 = distinct !DILexicalBlock(scope: !6924, file: !3, line: 1069, column: 33)
!6930 = !DILocation(line: 1069, column: 33, scope: !6929)
!6931 = !DILocalVariable(name: "__mptr", scope: !6932, file: !3, line: 1069, type: !181)
!6932 = distinct !DILexicalBlock(scope: !6929, file: !3, line: 1069, column: 33)
!6933 = !DILocation(line: 1069, column: 33, scope: !6932)
!6934 = !DILocation(line: 1069, column: 33, scope: !6935)
!6935 = distinct !DILexicalBlock(scope: !6932, file: !3, line: 1069, column: 33)
!6936 = !DILocation(line: 1069, column: 6, scope: !6924)
!6937 = !DILocation(line: 1068, column: 6, scope: !6920)
!6938 = !DILocation(line: 1070, column: 21, scope: !6924)
!6939 = !DILocation(line: 1070, column: 3, scope: !6924)
!6940 = !DILocation(line: 1072, column: 28, scope: !6920)
!6941 = !DILocation(line: 1072, column: 9, scope: !6920)
!6942 = !DILocation(line: 1072, column: 2, scope: !6920)
!6943 = distinct !DISubprogram(name: "pm_runtime_resume", scope: !6893, file: !6893, line: 323, type: !4480, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6944 = !DILocalVariable(name: "dev", arg: 1, scope: !6943, file: !6893, line: 323, type: !1694)
!6945 = !DILocation(line: 323, column: 52, scope: !6943)
!6946 = !DILocation(line: 325, column: 29, scope: !6943)
!6947 = !DILocation(line: 325, column: 9, scope: !6943)
!6948 = !DILocation(line: 325, column: 2, scope: !6943)
!6949 = distinct !DISubprogram(name: "acpi_subsys_suspend_late", scope: !3, file: !3, line: 1083, type: !4480, scopeLine: 1084, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6950 = !DILocalVariable(name: "dev", arg: 1, scope: !6949, file: !3, line: 1083, type: !1694)
!6951 = !DILocation(line: 1083, column: 45, scope: !6949)
!6952 = !DILocalVariable(name: "ret", scope: !6949, file: !3, line: 1085, type: !165)
!6953 = !DILocation(line: 1085, column: 6, scope: !6949)
!6954 = !DILocation(line: 1087, column: 26, scope: !6955)
!6955 = distinct !DILexicalBlock(scope: !6949, file: !3, line: 1087, column: 6)
!6956 = !DILocation(line: 1087, column: 6, scope: !6955)
!6957 = !DILocation(line: 1087, column: 6, scope: !6949)
!6958 = !DILocation(line: 1088, column: 3, scope: !6955)
!6959 = !DILocation(line: 1090, column: 32, scope: !6949)
!6960 = !DILocation(line: 1090, column: 8, scope: !6949)
!6961 = !DILocation(line: 1090, column: 6, scope: !6949)
!6962 = !DILocation(line: 1091, column: 9, scope: !6949)
!6963 = !DILocation(line: 1091, column: 15, scope: !6949)
!6964 = !DILocation(line: 1091, column: 38, scope: !6949)
!6965 = !DILocation(line: 1091, column: 61, scope: !6949)
!6966 = !DILocation(line: 1091, column: 43, scope: !6949)
!6967 = !DILocation(line: 1091, column: 21, scope: !6949)
!6968 = !DILocation(line: 1091, column: 2, scope: !6949)
!6969 = !DILocation(line: 1092, column: 1, scope: !6949)
!6970 = distinct !DISubprogram(name: "device_may_wakeup", scope: !4629, file: !4629, line: 82, type: !6180, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6971 = !DILocalVariable(name: "dev", arg: 1, scope: !6970, file: !4629, line: 82, type: !1694)
!6972 = !DILocation(line: 82, column: 53, scope: !6970)
!6973 = !DILocation(line: 84, column: 9, scope: !6970)
!6974 = !DILocation(line: 84, column: 14, scope: !6970)
!6975 = !DILocation(line: 84, column: 20, scope: !6970)
!6976 = !DILocation(line: 84, column: 31, scope: !6970)
!6977 = !DILocation(line: 84, column: 36, scope: !6970)
!6978 = !DILocation(line: 84, column: 41, scope: !6970)
!6979 = !DILocation(line: 84, column: 47, scope: !6970)
!6980 = !DILocation(line: 84, column: 35, scope: !6970)
!6981 = !DILocation(line: 84, column: 34, scope: !6970)
!6982 = !DILocation(line: 0, scope: !6970)
!6983 = !DILocation(line: 84, column: 2, scope: !6970)
!6984 = distinct !DISubprogram(name: "acpi_subsys_suspend_noirq", scope: !3, file: !3, line: 1099, type: !4480, scopeLine: 1100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!6985 = !DILocalVariable(name: "dev", arg: 1, scope: !6984, file: !3, line: 1099, type: !1694)
!6986 = !DILocation(line: 1099, column: 46, scope: !6984)
!6987 = !DILocalVariable(name: "ret", scope: !6984, file: !3, line: 1101, type: !165)
!6988 = !DILocation(line: 1101, column: 6, scope: !6984)
!6989 = !DILocation(line: 1103, column: 26, scope: !6990)
!6990 = distinct !DILexicalBlock(scope: !6984, file: !3, line: 1103, column: 6)
!6991 = !DILocation(line: 1103, column: 6, scope: !6990)
!6992 = !DILocation(line: 1103, column: 6, scope: !6984)
!6993 = !DILocation(line: 1104, column: 3, scope: !6990)
!6994 = !DILocation(line: 1106, column: 33, scope: !6984)
!6995 = !DILocation(line: 1106, column: 8, scope: !6984)
!6996 = !DILocation(line: 1106, column: 6, scope: !6984)
!6997 = !DILocation(line: 1107, column: 6, scope: !6998)
!6998 = distinct !DILexicalBlock(scope: !6984, file: !3, line: 1107, column: 6)
!6999 = !DILocation(line: 1107, column: 6, scope: !6984)
!7000 = !DILocation(line: 1108, column: 10, scope: !6998)
!7001 = !DILocation(line: 1108, column: 3, scope: !6998)
!7002 = !DILocation(line: 1117, column: 24, scope: !7003)
!7003 = distinct !DILexicalBlock(scope: !6984, file: !3, line: 1117, column: 6)
!7004 = !DILocation(line: 1117, column: 6, scope: !7003)
!7005 = !DILocation(line: 1117, column: 29, scope: !7003)
!7006 = !DILocation(line: 1117, column: 51, scope: !7003)
!7007 = !DILocation(line: 1117, column: 33, scope: !7003)
!7008 = !DILocation(line: 1117, column: 6, scope: !6984)
!7009 = !DILocation(line: 1118, column: 3, scope: !7003)
!7010 = !DILocation(line: 1118, column: 8, scope: !7003)
!7011 = !DILocation(line: 1118, column: 14, scope: !7003)
!7012 = !DILocation(line: 1118, column: 30, scope: !7003)
!7013 = !DILocation(line: 1120, column: 2, scope: !6984)
!7014 = !DILocation(line: 1121, column: 1, scope: !6984)
!7015 = distinct !DISubprogram(name: "device_can_wakeup", scope: !4629, file: !4629, line: 77, type: !6180, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!7016 = !DILocalVariable(name: "dev", arg: 1, scope: !7015, file: !4629, line: 77, type: !1694)
!7017 = !DILocation(line: 77, column: 53, scope: !7015)
!7018 = !DILocation(line: 79, column: 9, scope: !7015)
!7019 = !DILocation(line: 79, column: 14, scope: !7015)
!7020 = !DILocation(line: 79, column: 20, scope: !7015)
!7021 = !DILocation(line: 79, column: 2, scope: !7015)
!7022 = distinct !DISubprogram(name: "acpi_subsys_freeze", scope: !3, file: !3, line: 1159, type: !4480, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!7023 = !DILocalVariable(name: "dev", arg: 1, scope: !7022, file: !3, line: 1159, type: !1694)
!7024 = !DILocation(line: 1159, column: 39, scope: !7022)
!7025 = !DILocation(line: 1169, column: 20, scope: !7022)
!7026 = !DILocation(line: 1169, column: 2, scope: !7022)
!7027 = !DILocation(line: 1171, column: 27, scope: !7022)
!7028 = !DILocation(line: 1171, column: 9, scope: !7022)
!7029 = !DILocation(line: 1171, column: 2, scope: !7022)
!7030 = distinct !DISubprogram(name: "acpi_subsys_restore_early", scope: !3, file: !3, line: 1179, type: !4480, scopeLine: 1180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!7031 = !DILocalVariable(name: "dev", arg: 1, scope: !7030, file: !3, line: 1179, type: !1694)
!7032 = !DILocation(line: 1179, column: 46, scope: !7030)
!7033 = !DILocalVariable(name: "ret", scope: !7030, file: !3, line: 1181, type: !165)
!7034 = !DILocation(line: 1181, column: 6, scope: !7030)
!7035 = !DILocation(line: 1181, column: 28, scope: !7030)
!7036 = !DILocation(line: 1181, column: 12, scope: !7030)
!7037 = !DILocation(line: 1182, column: 9, scope: !7030)
!7038 = !DILocation(line: 1182, column: 15, scope: !7030)
!7039 = !DILocation(line: 1182, column: 46, scope: !7030)
!7040 = !DILocation(line: 1182, column: 21, scope: !7030)
!7041 = !DILocation(line: 1182, column: 2, scope: !7030)
!7042 = distinct !DISubprogram(name: "acpi_subsys_poweroff", scope: !3, file: !3, line: 1195, type: !4480, scopeLine: 1196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!7043 = !DILocalVariable(name: "dev", arg: 1, scope: !7042, file: !3, line: 1195, type: !1694)
!7044 = !DILocation(line: 1195, column: 41, scope: !7042)
!7045 = !DILocation(line: 1197, column: 32, scope: !7046)
!7046 = distinct !DILexicalBlock(scope: !7042, file: !3, line: 1197, column: 6)
!7047 = !DILocation(line: 1197, column: 7, scope: !7046)
!7048 = !DILocation(line: 1197, column: 61, scope: !7046)
!7049 = !DILocation(line: 1198, column: 28, scope: !7046)
!7050 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !7051, file: !3, line: 1198, type: !194)
!7051 = distinct !DILexicalBlock(scope: !7046, file: !3, line: 1198, column: 33)
!7052 = !DILocation(line: 1198, column: 33, scope: !7051)
!7053 = !DILocalVariable(name: "__mptr", scope: !7054, file: !3, line: 1198, type: !181)
!7054 = distinct !DILexicalBlock(scope: !7051, file: !3, line: 1198, column: 33)
!7055 = !DILocation(line: 1198, column: 33, scope: !7054)
!7056 = !DILocation(line: 1198, column: 33, scope: !7057)
!7057 = distinct !DILexicalBlock(scope: !7054, file: !3, line: 1198, column: 33)
!7058 = !DILocation(line: 1198, column: 6, scope: !7046)
!7059 = !DILocation(line: 1197, column: 6, scope: !7042)
!7060 = !DILocation(line: 1199, column: 21, scope: !7046)
!7061 = !DILocation(line: 1199, column: 3, scope: !7046)
!7062 = !DILocation(line: 1201, column: 29, scope: !7042)
!7063 = !DILocation(line: 1201, column: 9, scope: !7042)
!7064 = !DILocation(line: 1201, column: 2, scope: !7042)
!7065 = !DILocalVariable(name: "dev", arg: 1, scope: !5297, file: !3, line: 1310, type: !1694)
!7066 = !DILocation(line: 1310, column: 39, scope: !5297)
!7067 = !DILocalVariable(name: "power_on", arg: 2, scope: !5297, file: !3, line: 1310, type: !212)
!7068 = !DILocation(line: 1310, column: 49, scope: !5297)
!7069 = !DILocalVariable(name: "adev", scope: !5297, file: !3, line: 1323, type: !182)
!7070 = !DILocation(line: 1323, column: 22, scope: !5297)
!7071 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !7072, file: !3, line: 1323, type: !194)
!7072 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 1323, column: 29)
!7073 = !DILocation(line: 1323, column: 29, scope: !7072)
!7074 = !DILocalVariable(name: "__mptr", scope: !7075, file: !3, line: 1323, type: !181)
!7075 = distinct !DILexicalBlock(scope: !7072, file: !3, line: 1323, column: 29)
!7076 = !DILocation(line: 1323, column: 29, scope: !7075)
!7077 = !DILocation(line: 1323, column: 29, scope: !7078)
!7078 = distinct !DILexicalBlock(scope: !7075, file: !3, line: 1323, column: 29)
!7079 = !DILocation(line: 1325, column: 7, scope: !7080)
!7080 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 1325, column: 6)
!7081 = !DILocation(line: 1325, column: 12, scope: !7080)
!7082 = !DILocation(line: 1325, column: 38, scope: !7080)
!7083 = !DILocation(line: 1325, column: 16, scope: !7080)
!7084 = !DILocation(line: 1325, column: 6, scope: !5297)
!7085 = !DILocation(line: 1326, column: 3, scope: !7080)
!7086 = !DILocation(line: 1333, column: 42, scope: !7087)
!7087 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 1333, column: 6)
!7088 = !DILocation(line: 1333, column: 48, scope: !7087)
!7089 = !DILocation(line: 1333, column: 7, scope: !7087)
!7090 = !DILocation(line: 1333, column: 6, scope: !5297)
!7091 = !DILocation(line: 1334, column: 3, scope: !7087)
!7092 = !DILocation(line: 1336, column: 23, scope: !5297)
!7093 = !DILocation(line: 1336, column: 29, scope: !5297)
!7094 = !DILocation(line: 1336, column: 2, scope: !5297)
!7095 = !DILocation(line: 1337, column: 20, scope: !5297)
!7096 = !DILocation(line: 1337, column: 2, scope: !5297)
!7097 = !DILocation(line: 1338, column: 6, scope: !7098)
!7098 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 1338, column: 6)
!7099 = !DILocation(line: 1338, column: 6, scope: !5297)
!7100 = !DILocation(line: 1339, column: 26, scope: !7101)
!7101 = distinct !DILexicalBlock(scope: !7098, file: !3, line: 1338, column: 16)
!7102 = !DILocation(line: 1339, column: 3, scope: !7101)
!7103 = !DILocation(line: 1340, column: 30, scope: !7101)
!7104 = !DILocation(line: 1340, column: 3, scope: !7101)
!7105 = !DILocation(line: 1341, column: 2, scope: !7101)
!7106 = !DILocation(line: 1343, column: 2, scope: !5297)
!7107 = !DILocation(line: 1343, column: 7, scope: !5297)
!7108 = !DILocation(line: 1343, column: 18, scope: !5297)
!7109 = !DILocation(line: 1343, column: 25, scope: !5297)
!7110 = !DILocation(line: 1344, column: 2, scope: !5297)
!7111 = !DILocation(line: 1345, column: 1, scope: !5297)
!7112 = distinct !DISubprogram(name: "acpi_pm_notify_work_func", scope: !3, file: !3, line: 739, type: !5172, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!7113 = !DILocalVariable(name: "context", arg: 1, scope: !7112, file: !3, line: 739, type: !5174)
!7114 = !DILocation(line: 739, column: 73, scope: !7112)
!7115 = !DILocalVariable(name: "dev", scope: !7112, file: !3, line: 741, type: !1694)
!7116 = !DILocation(line: 741, column: 17, scope: !7112)
!7117 = !DILocation(line: 741, column: 23, scope: !7112)
!7118 = !DILocation(line: 741, column: 32, scope: !7112)
!7119 = !DILocation(line: 743, column: 6, scope: !7120)
!7120 = distinct !DILexicalBlock(scope: !7112, file: !3, line: 743, column: 6)
!7121 = !DILocation(line: 743, column: 6, scope: !7112)
!7122 = !DILocation(line: 744, column: 19, scope: !7123)
!7123 = distinct !DILexicalBlock(scope: !7120, file: !3, line: 743, column: 11)
!7124 = !DILocation(line: 744, column: 3, scope: !7123)
!7125 = !DILocation(line: 745, column: 21, scope: !7123)
!7126 = !DILocation(line: 745, column: 3, scope: !7123)
!7127 = !DILocation(line: 746, column: 2, scope: !7123)
!7128 = !DILocation(line: 747, column: 1, scope: !7112)
!7129 = distinct !DISubprogram(name: "acpi_dev_pm_detach", scope: !3, file: !3, line: 1272, type: !4780, scopeLine: 1273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!7130 = !DILocalVariable(name: "dev", arg: 1, scope: !7129, file: !3, line: 1272, type: !1694)
!7131 = !DILocation(line: 1272, column: 47, scope: !7129)
!7132 = !DILocalVariable(name: "power_off", arg: 2, scope: !7129, file: !3, line: 1272, type: !212)
!7133 = !DILocation(line: 1272, column: 57, scope: !7129)
!7134 = !DILocalVariable(name: "adev", scope: !7129, file: !3, line: 1274, type: !182)
!7135 = !DILocation(line: 1274, column: 22, scope: !7129)
!7136 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !7137, file: !3, line: 1274, type: !194)
!7137 = distinct !DILexicalBlock(scope: !7129, file: !3, line: 1274, column: 29)
!7138 = !DILocation(line: 1274, column: 29, scope: !7137)
!7139 = !DILocalVariable(name: "__mptr", scope: !7140, file: !3, line: 1274, type: !181)
!7140 = distinct !DILexicalBlock(scope: !7137, file: !3, line: 1274, column: 29)
!7141 = !DILocation(line: 1274, column: 29, scope: !7140)
!7142 = !DILocation(line: 1274, column: 29, scope: !7143)
!7143 = distinct !DILexicalBlock(scope: !7140, file: !3, line: 1274, column: 29)
!7144 = !DILocation(line: 1276, column: 6, scope: !7145)
!7145 = distinct !DILexicalBlock(scope: !7129, file: !3, line: 1276, column: 6)
!7146 = !DILocation(line: 1276, column: 11, scope: !7145)
!7147 = !DILocation(line: 1276, column: 14, scope: !7145)
!7148 = !DILocation(line: 1276, column: 19, scope: !7145)
!7149 = !DILocation(line: 1276, column: 29, scope: !7145)
!7150 = !DILocation(line: 1276, column: 6, scope: !7129)
!7151 = !DILocation(line: 1277, column: 21, scope: !7152)
!7152 = distinct !DILexicalBlock(scope: !7145, file: !3, line: 1276, column: 57)
!7153 = !DILocation(line: 1277, column: 3, scope: !7152)
!7154 = !DILocation(line: 1278, column: 27, scope: !7152)
!7155 = !DILocation(line: 1278, column: 3, scope: !7152)
!7156 = !DILocation(line: 1279, column: 7, scope: !7157)
!7157 = distinct !DILexicalBlock(scope: !7152, file: !3, line: 1279, column: 7)
!7158 = !DILocation(line: 1279, column: 7, scope: !7152)
!7159 = !DILocation(line: 1286, column: 34, scope: !7160)
!7160 = distinct !DILexicalBlock(scope: !7157, file: !3, line: 1279, column: 18)
!7161 = !DILocation(line: 1286, column: 4, scope: !7160)
!7162 = !DILocation(line: 1287, column: 26, scope: !7160)
!7163 = !DILocation(line: 1287, column: 4, scope: !7160)
!7164 = !DILocation(line: 1288, column: 31, scope: !7160)
!7165 = !DILocation(line: 1288, column: 4, scope: !7160)
!7166 = !DILocation(line: 1289, column: 26, scope: !7160)
!7167 = !DILocation(line: 1289, column: 31, scope: !7160)
!7168 = !DILocation(line: 1289, column: 4, scope: !7160)
!7169 = !DILocation(line: 1290, column: 3, scope: !7160)
!7170 = !DILocation(line: 1291, column: 2, scope: !7152)
!7171 = !DILocation(line: 1292, column: 1, scope: !7129)
!7172 = distinct !DISubprogram(name: "kobject_name", scope: !229, file: !229, line: 88, type: !7173, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!7173 = !DISubroutineType(types: !7174)
!7174 = !{!232, !7175}
!7175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7176, size: 64)
!7176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!7177 = !DILocalVariable(name: "kobj", arg: 1, scope: !7172, file: !229, line: 88, type: !7175)
!7178 = !DILocation(line: 88, column: 62, scope: !7172)
!7179 = !DILocation(line: 90, column: 9, scope: !7172)
!7180 = !DILocation(line: 90, column: 15, scope: !7172)
!7181 = !DILocation(line: 90, column: 2, scope: !7172)
!7182 = distinct !DISubprogram(name: "__acpi_device_wakeup_enable", scope: !3, file: !3, line: 751, type: !7183, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!7183 = !DISubroutineType(types: !7184)
!7184 = !{!165, !182, !179, !165}
!7185 = !DILocalVariable(name: "adev", arg: 1, scope: !7182, file: !3, line: 751, type: !182)
!7186 = !DILocation(line: 751, column: 60, scope: !7182)
!7187 = !DILocalVariable(name: "target_state", arg: 2, scope: !7182, file: !3, line: 752, type: !179)
!7188 = !DILocation(line: 752, column: 16, scope: !7182)
!7189 = !DILocalVariable(name: "max_count", arg: 3, scope: !7182, file: !3, line: 752, type: !165)
!7190 = !DILocation(line: 752, column: 34, scope: !7182)
!7191 = !DILocalVariable(name: "wakeup", scope: !7182, file: !3, line: 754, type: !6663)
!7192 = !DILocation(line: 754, column: 29, scope: !7182)
!7193 = !DILocation(line: 754, column: 39, scope: !7182)
!7194 = !DILocation(line: 754, column: 45, scope: !7182)
!7195 = !DILocalVariable(name: "status", scope: !7182, file: !3, line: 755, type: !177)
!7196 = !DILocation(line: 755, column: 14, scope: !7182)
!7197 = !DILocalVariable(name: "error", scope: !7182, file: !3, line: 756, type: !165)
!7198 = !DILocation(line: 756, column: 6, scope: !7182)
!7199 = !DILocation(line: 758, column: 2, scope: !7182)
!7200 = !DILocation(line: 760, column: 6, scope: !7201)
!7201 = distinct !DILexicalBlock(scope: !7182, file: !3, line: 760, column: 6)
!7202 = !DILocation(line: 760, column: 14, scope: !7201)
!7203 = !DILocation(line: 760, column: 30, scope: !7201)
!7204 = !DILocation(line: 760, column: 27, scope: !7201)
!7205 = !DILocation(line: 760, column: 6, scope: !7182)
!7206 = !DILocation(line: 761, column: 3, scope: !7201)
!7207 = !DILocation(line: 763, column: 6, scope: !7208)
!7208 = distinct !DILexicalBlock(scope: !7182, file: !3, line: 763, column: 6)
!7209 = !DILocation(line: 763, column: 14, scope: !7208)
!7210 = !DILocation(line: 763, column: 27, scope: !7208)
!7211 = !DILocation(line: 763, column: 6, scope: !7182)
!7212 = !DILocation(line: 764, column: 3, scope: !7208)
!7213 = !DILocation(line: 766, column: 42, scope: !7182)
!7214 = !DILocation(line: 766, column: 48, scope: !7182)
!7215 = !DILocation(line: 766, column: 10, scope: !7182)
!7216 = !DILocation(line: 766, column: 8, scope: !7182)
!7217 = !DILocation(line: 767, column: 6, scope: !7218)
!7218 = distinct !DILexicalBlock(scope: !7182, file: !3, line: 767, column: 6)
!7219 = !DILocation(line: 767, column: 6, scope: !7182)
!7220 = !DILocation(line: 768, column: 3, scope: !7218)
!7221 = !DILocation(line: 770, column: 27, scope: !7182)
!7222 = !DILocation(line: 770, column: 35, scope: !7182)
!7223 = !DILocation(line: 770, column: 47, scope: !7182)
!7224 = !DILocation(line: 770, column: 55, scope: !7182)
!7225 = !DILocation(line: 770, column: 11, scope: !7182)
!7226 = !DILocation(line: 770, column: 9, scope: !7182)
!7227 = !DILocation(line: 771, column: 6, scope: !7228)
!7228 = distinct !DILexicalBlock(scope: !7182, file: !3, line: 771, column: 6)
!7229 = !DILocation(line: 771, column: 6, scope: !7182)
!7230 = !DILocation(line: 772, column: 36, scope: !7231)
!7231 = distinct !DILexicalBlock(scope: !7228, file: !3, line: 771, column: 28)
!7232 = !DILocation(line: 772, column: 3, scope: !7231)
!7233 = !DILocation(line: 773, column: 9, scope: !7231)
!7234 = !DILocation(line: 774, column: 3, scope: !7231)
!7235 = !DILocation(line: 777, column: 2, scope: !7236)
!7236 = distinct !DILexicalBlock(scope: !7237, file: !3, line: 777, column: 2)
!7237 = distinct !DILexicalBlock(scope: !7182, file: !3, line: 777, column: 2)
!7238 = !DILocation(line: 777, column: 2, scope: !7237)
!7239 = !DILocation(line: 777, column: 2, scope: !7182)
!7240 = !DILabel(scope: !7182, name: "inc", file: !3, line: 780)
!7241 = !DILocation(line: 780, column: 1, scope: !7182)
!7242 = !DILocation(line: 781, column: 2, scope: !7182)
!7243 = !DILocation(line: 781, column: 10, scope: !7182)
!7244 = !DILocation(line: 781, column: 22, scope: !7182)
!7245 = !DILabel(scope: !7182, name: "out", file: !3, line: 783)
!7246 = !DILocation(line: 783, column: 1, scope: !7182)
!7247 = !DILocation(line: 784, column: 2, scope: !7182)
!7248 = !DILocation(line: 785, column: 9, scope: !7182)
!7249 = !DILocation(line: 785, column: 2, scope: !7182)
!7250 = distinct !DISubprogram(name: "acpi_device_power_manageable", scope: !184, file: !184, line: 672, type: !6199, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!7251 = !DILocalVariable(name: "adev", arg: 1, scope: !7250, file: !184, line: 672, type: !182)
!7252 = !DILocation(line: 672, column: 69, scope: !7250)
!7253 = !DILocation(line: 674, column: 9, scope: !7250)
!7254 = !DILocation(line: 674, column: 15, scope: !7250)
!7255 = !DILocation(line: 674, column: 21, scope: !7250)
!7256 = !DILocation(line: 674, column: 2, scope: !7250)
!7257 = distinct !DISubprogram(name: "pm_wakeup_event", scope: !4629, file: !4629, line: 200, type: !7258, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!7258 = !DISubroutineType(types: !7259)
!7259 = !{null, !1694, !7}
!7260 = !DILocalVariable(name: "dev", arg: 1, scope: !7257, file: !4629, line: 200, type: !1694)
!7261 = !DILocation(line: 200, column: 51, scope: !7257)
!7262 = !DILocalVariable(name: "msec", arg: 2, scope: !7257, file: !4629, line: 200, type: !7)
!7263 = !DILocation(line: 200, column: 69, scope: !7257)
!7264 = !DILocation(line: 202, column: 29, scope: !7257)
!7265 = !DILocation(line: 202, column: 34, scope: !7257)
!7266 = !DILocation(line: 202, column: 9, scope: !7257)
!7267 = !DILocation(line: 202, column: 2, scope: !7257)
!7268 = distinct !DISubprogram(name: "acpi_subsys_resume_early", scope: !3, file: !3, line: 1144, type: !4480, scopeLine: 1145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!7269 = !DILocalVariable(name: "dev", arg: 1, scope: !7268, file: !3, line: 1144, type: !1694)
!7270 = !DILocation(line: 1144, column: 52, scope: !7268)
!7271 = !DILocalVariable(name: "ret", scope: !7268, file: !3, line: 1146, type: !165)
!7272 = !DILocation(line: 1146, column: 6, scope: !7268)
!7273 = !DILocation(line: 1148, column: 25, scope: !7274)
!7274 = distinct !DILexicalBlock(scope: !7268, file: !3, line: 1148, column: 6)
!7275 = !DILocation(line: 1148, column: 6, scope: !7274)
!7276 = !DILocation(line: 1148, column: 6, scope: !7268)
!7277 = !DILocation(line: 1149, column: 3, scope: !7274)
!7278 = !DILocation(line: 1151, column: 24, scope: !7268)
!7279 = !DILocation(line: 1151, column: 8, scope: !7268)
!7280 = !DILocation(line: 1151, column: 6, scope: !7268)
!7281 = !DILocation(line: 1152, column: 9, scope: !7268)
!7282 = !DILocation(line: 1152, column: 15, scope: !7268)
!7283 = !DILocation(line: 1152, column: 45, scope: !7268)
!7284 = !DILocation(line: 1152, column: 21, scope: !7268)
!7285 = !DILocation(line: 1152, column: 2, scope: !7268)
!7286 = !DILocation(line: 1153, column: 1, scope: !7268)
!7287 = distinct !DISubprogram(name: "acpi_subsys_poweroff_late", scope: !3, file: !3, line: 1212, type: !4480, scopeLine: 1213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!7288 = !DILocalVariable(name: "dev", arg: 1, scope: !7287, file: !3, line: 1212, type: !1694)
!7289 = !DILocation(line: 1212, column: 53, scope: !7287)
!7290 = !DILocalVariable(name: "ret", scope: !7287, file: !3, line: 1214, type: !165)
!7291 = !DILocation(line: 1214, column: 6, scope: !7287)
!7292 = !DILocation(line: 1216, column: 26, scope: !7293)
!7293 = distinct !DILexicalBlock(scope: !7287, file: !3, line: 1216, column: 6)
!7294 = !DILocation(line: 1216, column: 6, scope: !7293)
!7295 = !DILocation(line: 1216, column: 6, scope: !7287)
!7296 = !DILocation(line: 1217, column: 3, scope: !7293)
!7297 = !DILocation(line: 1219, column: 33, scope: !7287)
!7298 = !DILocation(line: 1219, column: 8, scope: !7287)
!7299 = !DILocation(line: 1219, column: 6, scope: !7287)
!7300 = !DILocation(line: 1220, column: 6, scope: !7301)
!7301 = distinct !DILexicalBlock(scope: !7287, file: !3, line: 1220, column: 6)
!7302 = !DILocation(line: 1220, column: 6, scope: !7287)
!7303 = !DILocation(line: 1221, column: 10, scope: !7301)
!7304 = !DILocation(line: 1221, column: 3, scope: !7301)
!7305 = !DILocation(line: 1223, column: 26, scope: !7287)
!7306 = !DILocation(line: 1223, column: 49, scope: !7287)
!7307 = !DILocation(line: 1223, column: 31, scope: !7287)
!7308 = !DILocation(line: 1223, column: 9, scope: !7287)
!7309 = !DILocation(line: 1223, column: 2, scope: !7287)
!7310 = !DILocation(line: 1224, column: 1, scope: !7287)
!7311 = distinct !DISubprogram(name: "acpi_subsys_resume_noirq", scope: !3, file: !3, line: 1128, type: !4480, scopeLine: 1129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!7312 = !DILocalVariable(name: "dev", arg: 1, scope: !7311, file: !3, line: 1128, type: !1694)
!7313 = !DILocation(line: 1128, column: 52, scope: !7311)
!7314 = !DILocation(line: 1130, column: 25, scope: !7315)
!7315 = distinct !DILexicalBlock(scope: !7311, file: !3, line: 1130, column: 6)
!7316 = !DILocation(line: 1130, column: 6, scope: !7315)
!7317 = !DILocation(line: 1130, column: 6, scope: !7311)
!7318 = !DILocation(line: 1131, column: 3, scope: !7315)
!7319 = !DILocation(line: 1133, column: 33, scope: !7311)
!7320 = !DILocation(line: 1133, column: 9, scope: !7311)
!7321 = !DILocation(line: 1133, column: 2, scope: !7311)
!7322 = !DILocation(line: 1134, column: 1, scope: !7311)
!7323 = distinct !DISubprogram(name: "acpi_subsys_poweroff_noirq", scope: !3, file: !3, line: 1230, type: !4480, scopeLine: 1231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!7324 = !DILocalVariable(name: "dev", arg: 1, scope: !7323, file: !3, line: 1230, type: !1694)
!7325 = !DILocation(line: 1230, column: 54, scope: !7323)
!7326 = !DILocation(line: 1232, column: 26, scope: !7327)
!7327 = distinct !DILexicalBlock(scope: !7323, file: !3, line: 1232, column: 6)
!7328 = !DILocation(line: 1232, column: 6, scope: !7327)
!7329 = !DILocation(line: 1232, column: 6, scope: !7323)
!7330 = !DILocation(line: 1233, column: 3, scope: !7327)
!7331 = !DILocation(line: 1235, column: 35, scope: !7323)
!7332 = !DILocation(line: 1235, column: 9, scope: !7323)
!7333 = !DILocation(line: 1235, column: 2, scope: !7323)
!7334 = !DILocation(line: 1236, column: 1, scope: !7323)
