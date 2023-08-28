; ModuleID = '../bcout/drivers/usb/cdns3/core.llvm.bc'
source_filename = "drivers/usb/cdns3/core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_cdns3_driver_init6:\09\09\09"
module asm ".long\09cdns3_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.platform_driver = type { i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)*, void (%struct.platform_device*)*, i32 (%struct.platform_device*, i32)*, i32 (%struct.platform_device*)*, %struct.device_driver, %struct.platform_device_id*, i8 }
%struct.platform_device = type { i8*, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, %struct.resource*, %struct.platform_device_id*, i8*, %struct.mfd_cell*, %struct.pdev_archdata }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.70, %union.anon.71, %union.anon.72, %struct.gendisk*, %struct.hd_struct*, i64, i64, i16, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.75, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.70 = type { %struct.hlist_node }
%union.anon.71 = type { %struct.rb_node }
%union.anon.72 = type { %struct.anon.74 }
%struct.anon.74 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.75 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %union.anon.76, void (i8*)*, i8* }
%union.anon.76 = type { %struct.__call_single_node }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.77, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.77 = type { i32 }
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
%struct.atomic64_t = type { i64 }
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
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.wake_irq = type opaque
%struct.pm_subsys_data = type { %struct.spinlock, i32, %struct.list_head, %struct.pm_domain_data* }
%struct.pm_domain_data = type opaque
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.mfd_cell = type opaque
%struct.pdev_archdata = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.platform_device_id = type { [20 x i8], i64 }
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
%struct.cdns3 = type { %struct.device*, i8*, [2 x %struct.resource], %struct.cdns3_usb_regs*, %struct.resource, %struct.cdns3_otg_legacy_regs*, %struct.cdns3_otg_regs*, %struct.cdns3_otg_common_regs*, i32, i8, i32, i32, i32, [3 x %struct.cdns3_role_driver*], i32, %struct.platform_device*, %struct.cdns3_device*, %struct.phy*, %struct.phy*, %struct.mutex, i32, %struct.usb_role_switch*, i8, i8, %struct.cdns3_platform_data*, %struct.spinlock }
%struct.cdns3_usb_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [26 x i32], i32, i32, i32, [74 x i32], [51 x i32], i32, i32, i32, i32, i32 }
%struct.cdns3_otg_legacy_regs = type { i32, i32, i32, i32, i32, i32, [3 x i32], i32, [2 x i32], i32, i32, [2 x i32], i32, [5 x i32], i32 }
%struct.cdns3_otg_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cdns3_otg_common_regs = type { i32, i32, i32, i32, i32, i32 }
%struct.cdns3_role_driver = type { {}*, void (%struct.cdns3*)*, i32 (%struct.cdns3*, i1)*, i32 (%struct.cdns3*, i1)*, i8*, i32 }
%struct.cdns3_device = type { %struct.device*, %struct.device*, %struct.usb_gadget, %struct.usb_gadget_driver*, i32, %struct.spinlock, %struct.cdns3_usb_regs*, %struct.usb_ctrlrequest*, i64, i8*, i8, i32, [32 x %struct.cdns3_endpoint*], %struct.list_head, %struct.work_struct, i32, i16, i16, i32, %struct.work_struct, %struct.usb_request*, i16, i16 }
%struct.usb_gadget = type { %struct.work_struct, %struct.usb_udc*, %struct.usb_gadget_ops*, %struct.usb_ep*, %struct.list_head, i32, i32, i32, i8*, %struct.device, i32, i32, i32, i32, %struct.usb_otg_caps*, i24, i32 }
%struct.usb_udc = type opaque
%struct.usb_gadget_ops = type { i32 (%struct.usb_gadget*)*, i32 (%struct.usb_gadget*)*, i32 (%struct.usb_gadget*, i32)*, i32 (%struct.usb_gadget*, i32)*, i32 (%struct.usb_gadget*, i32)*, i32 (%struct.usb_gadget*, i32)*, i32 (%struct.usb_gadget*, i32, i64)*, void (%struct.usb_gadget*, %struct.usb_dcd_config_params*)*, i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)*, i32 (%struct.usb_gadget*)*, void (%struct.usb_gadget*, i32)*, %struct.usb_ep* (%struct.usb_gadget*, %struct.usb_endpoint_descriptor*, %struct.usb_ss_ep_comp_descriptor*)* }
%struct.usb_dcd_config_params = type { i8, i16, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ep = type { i8*, i8*, %struct.usb_ep_ops*, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, %struct.usb_endpoint_descriptor*, %struct.usb_ss_ep_comp_descriptor* }
%struct.usb_ep_ops = type { i32 (%struct.usb_ep*, %struct.usb_endpoint_descriptor*)*, i32 (%struct.usb_ep*)*, void (%struct.usb_ep*)*, %struct.usb_request* (%struct.usb_ep*, i32)*, void (%struct.usb_ep*, %struct.usb_request*)*, i32 (%struct.usb_ep*, %struct.usb_request*, i32)*, i32 (%struct.usb_ep*, %struct.usb_request*)*, i32 (%struct.usb_ep*, i32)*, i32 (%struct.usb_ep*)*, i32 (%struct.usb_ep*)*, void (%struct.usb_ep*)* }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.usb_gadget_driver = type { i8*, i32, {}*, void (%struct.usb_gadget*)*, i32 (%struct.usb_gadget*, %struct.usb_ctrlrequest*)*, void (%struct.usb_gadget*)*, void (%struct.usb_gadget*)*, void (%struct.usb_gadget*)*, void (%struct.usb_gadget*)*, %struct.device_driver, i8*, %struct.list_head, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.cdns3_endpoint = type { %struct.usb_ep, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.cdns3_trb*, i64, %struct.cdns3_device*, [20 x i8], i32, %struct.cdns3_request*, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, %struct.cdns3_trb*, i32, i8, i32, i16, i16, i32 }
%struct.cdns3_request = type { %struct.usb_request, %struct.cdns3_endpoint*, %struct.cdns3_trb*, i32, i32, %struct.cdns3_aligned_buf*, i32, %struct.list_head, i32, i32 }
%struct.usb_request = type { i8*, i32, i64, %struct.scatterlist*, i32, i32, i24, void (%struct.usb_ep*, %struct.usb_request*)*, i8*, %struct.list_head, i32, i32, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.cdns3_aligned_buf = type { i8*, i64, i32, i8, %struct.list_head }
%struct.cdns3_trb = type { i32, i32, i32 }
%struct.phy = type { %struct.device, i32, %struct.phy_ops*, %struct.mutex, i32, i32, %struct.phy_attrs, %struct.regulator* }
%struct.phy_ops = type { i32 (%struct.phy*)*, i32 (%struct.phy*)*, i32 (%struct.phy*)*, i32 (%struct.phy*)*, i32 (%struct.phy*, i32, i32)*, i32 (%struct.phy*, %union.phy_configure_opts*)*, i32 (%struct.phy*, i32, i32, %union.phy_configure_opts*)*, i32 (%struct.phy*)*, i32 (%struct.phy*)*, void (%struct.phy*)*, %struct.module* }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i8 }
%struct.phy_attrs = type { i32, i32, i32 }
%struct.regulator = type opaque
%struct.usb_role_switch = type opaque
%struct.cdns3_platform_data = type { i32 (%struct.device*, i1, i1)* }
%struct.usb_role_switch_desc = type { %struct.fwnode_handle*, %struct.device*, %struct.device*, %struct.device*, i32 (%struct.usb_role_switch*, i32)*, i32 (%struct.usb_role_switch*)*, i8, i8*, i8* }

@.str = private unnamed_addr constant [31 x i8] c"set %d has failed, back to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"back to %d failed too\0A\00", align 1
@__UNIQUE_ID___addressable_cdns3_driver_init301 = internal global i8* bitcast (i32 ()* @cdns3_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@cdns3_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @cdns3_probe, i32 (%struct.platform_device*)* @cdns3_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @of_cdns3_match, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @cdns3_pm_ops, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !256
@__exitcall_cdns3_driver_exit = internal global void ()* @cdns3_driver_exit, section ".exitcall.exit", align 8, !dbg !222
@__UNIQUE_ID_alias302 = internal constant [27 x i8] c"cdns3.alias=platform:cdns3\00", section ".modinfo", align 1, !dbg !229
@__UNIQUE_ID_author303 = internal constant [49 x i8] c"cdns3.author=Pawel Laszczak <pawell@cadence.com>\00", section ".modinfo", align 1, !dbg !236
@__UNIQUE_ID_file304 = internal constant [35 x i8] c"cdns3.file=drivers/usb/cdns3/cdns3\00", section ".modinfo", align 1, !dbg !241
@__UNIQUE_ID_license305 = internal constant [21 x i8] c"cdns3.license=GPL v2\00", section ".modinfo", align 1, !dbg !246
@__UNIQUE_ID_description306 = internal constant [53 x i8] c"cdns3.description=Cadence USB3 DRD Controller Driver\00", section ".modinfo", align 1, !dbg !251
@.str.2 = private unnamed_addr constant [25 x i8] c"drivers/usb/cdns3/core.c\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"cdns-usb3\00", align 1
@of_cdns3_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,usb3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 16, !dbg !4992
@cdns3_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @cdns3_suspend, i32 (%struct.device*)* @cdns3_resume, i32 (%struct.device*)* @cdns3_suspend, i32 (%struct.device*)* @cdns3_resume, i32 (%struct.device*)* @cdns3_suspend, i32 (%struct.device*)* @cdns3_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @cdns3_runtime_suspend, i32 (%struct.device*)* @cdns3_runtime_resume, i32 (%struct.device*)* null }, align 8, !dbg !4995
@.str.4 = private unnamed_addr constant [28 x i8] c"error setting dma mask: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"missing host IRQ\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"xhci\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"couldn't get xhci resource\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"peripheral\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"couldn't get peripheral irq\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"otg\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"couldn't get otg irq\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"couldn't get otg resource\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"cdns,phyrst-a-enable\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@cdns3_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4989
@.str.17 = private unnamed_addr constant [13 x i8] c"&cdns->mutex\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"cdns3,usb2-phy\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"cdns3,usb3-phy\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"usb-role-switch\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"Unable to register Role Switch\0A\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"couldn't register wakeup irq handler\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"set role %d has failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"Incorrect DRD configuration\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"Host initialization failed with %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"Device initialization failed with %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@llvm.used = appending global [8 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_cdns3_driver_init301 to i8*), i8* bitcast (void ()* @cdns3_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_cdns3_driver_exit to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_alias302, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_author303, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_file304, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license305, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__UNIQUE_ID_description306, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cdns3_hw_role_switch(%struct.cdns3* %cdns) #0 !dbg !5003 {
entry:
  %retval = alloca i32, align 4
  %cdns.addr = alloca %struct.cdns3*, align 8
  %real_role = alloca i32, align 4
  %current_role = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.cdns3* %cdns, %struct.cdns3** %cdns.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns.addr, metadata !5618, metadata !DIExpression()), !dbg !5619
  call void @llvm.dbg.declare(metadata i32* %real_role, metadata !5620, metadata !DIExpression()), !dbg !5621
  call void @llvm.dbg.declare(metadata i32* %current_role, metadata !5622, metadata !DIExpression()), !dbg !5623
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5624, metadata !DIExpression()), !dbg !5625
  store i32 0, i32* %ret, align 4, !dbg !5625
  %0 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5626
  %role_sw = getelementptr inbounds %struct.cdns3, %struct.cdns3* %0, i32 0, i32 21, !dbg !5628
  %1 = load %struct.usb_role_switch*, %struct.usb_role_switch** %role_sw, align 8, !dbg !5628
  %tobool = icmp ne %struct.usb_role_switch* %1, null, !dbg !5626
  br i1 %tobool, label %if.then, label %if.end, !dbg !5629

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5630
  br label %return, !dbg !5630

if.end:                                           ; preds = %entry
  %2 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5631
  %dev = getelementptr inbounds %struct.cdns3, %struct.cdns3* %2, i32 0, i32 0, !dbg !5632
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5632
  %call = call i32 @pm_runtime_get_sync(%struct.device* %3) #8, !dbg !5633
  %4 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5634
  %role = getelementptr inbounds %struct.cdns3, %struct.cdns3* %4, i32 0, i32 14, !dbg !5635
  %5 = load i32, i32* %role, align 8, !dbg !5635
  store i32 %5, i32* %current_role, align 4, !dbg !5636
  %6 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5637
  %call1 = call i32 @cdns3_hw_role_state_machine(%struct.cdns3* %6) #8, !dbg !5638
  store i32 %call1, i32* %real_role, align 4, !dbg !5639
  %7 = load i32, i32* %current_role, align 4, !dbg !5640
  %8 = load i32, i32* %real_role, align 4, !dbg !5642
  %cmp = icmp eq i32 %7, %8, !dbg !5643
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5644

if.then2:                                         ; preds = %if.end
  br label %exit, !dbg !5645

if.end3:                                          ; preds = %if.end
  %9 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5646
  call void @cdns3_role_stop(%struct.cdns3* %9) #8, !dbg !5647
  %10 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5648
  %11 = load i32, i32* %real_role, align 4, !dbg !5649
  %call4 = call i32 @cdns3_role_start(%struct.cdns3* %10, i32 %11) #8, !dbg !5650
  store i32 %call4, i32* %ret, align 4, !dbg !5651
  %12 = load i32, i32* %ret, align 4, !dbg !5652
  %tobool5 = icmp ne i32 %12, 0, !dbg !5652
  br i1 %tobool5, label %if.then6, label %if.end13, !dbg !5654

if.then6:                                         ; preds = %if.end3
  %13 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5655
  %dev7 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %13, i32 0, i32 0, !dbg !5655
  %14 = load %struct.device*, %struct.device** %dev7, align 8, !dbg !5655
  %15 = load i32, i32* %real_role, align 4, !dbg !5655
  %16 = load i32, i32* %current_role, align 4, !dbg !5655
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16) #9, !dbg !5655
  %17 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5657
  %18 = load i32, i32* %current_role, align 4, !dbg !5658
  %call8 = call i32 @cdns3_role_start(%struct.cdns3* %17, i32 %18) #8, !dbg !5659
  store i32 %call8, i32* %ret, align 4, !dbg !5660
  %19 = load i32, i32* %ret, align 4, !dbg !5661
  %tobool9 = icmp ne i32 %19, 0, !dbg !5661
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !5663

if.then10:                                        ; preds = %if.then6
  %20 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5664
  %dev11 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %20, i32 0, i32 0, !dbg !5664
  %21 = load %struct.device*, %struct.device** %dev11, align 8, !dbg !5664
  %22 = load i32, i32* %current_role, align 4, !dbg !5664
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %22) #9, !dbg !5664
  br label %if.end12, !dbg !5664

if.end12:                                         ; preds = %if.then10, %if.then6
  br label %if.end13, !dbg !5665

if.end13:                                         ; preds = %if.end12, %if.end3
  br label %exit, !dbg !5652

exit:                                             ; preds = %if.end13, %if.then2
  call void @llvm.dbg.label(metadata !5666), !dbg !5667
  %23 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5668
  %dev14 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %23, i32 0, i32 0, !dbg !5669
  %24 = load %struct.device*, %struct.device** %dev14, align 8, !dbg !5669
  %call15 = call i32 @pm_runtime_put_sync(%struct.device* %24) #8, !dbg !5670
  %25 = load i32, i32* %ret, align 4, !dbg !5671
  store i32 %25, i32* %retval, align 4, !dbg !5672
  br label %return, !dbg !5672

return:                                           ; preds = %exit, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !5673
  ret i32 %26, !dbg !5673
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_get_sync(%struct.device* %dev) #0 !dbg !5674 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5676, metadata !DIExpression()), !dbg !5677
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5678
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 4) #8, !dbg !5679
  ret i32 %call, !dbg !5680
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cdns3_hw_role_state_machine(%struct.cdns3* %cdns) #0 !dbg !5681 {
entry:
  %retval = alloca i32, align 4
  %cdns.addr = alloca %struct.cdns3*, align 8
  %role = alloca i32, align 4
  %id = alloca i32, align 4
  %vbus = alloca i32, align 4
  store %struct.cdns3* %cdns, %struct.cdns3** %cdns.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns.addr, metadata !5684, metadata !DIExpression()), !dbg !5685
  call void @llvm.dbg.declare(metadata i32* %role, metadata !5686, metadata !DIExpression()), !dbg !5687
  store i32 0, i32* %role, align 4, !dbg !5687
  call void @llvm.dbg.declare(metadata i32* %id, metadata !5688, metadata !DIExpression()), !dbg !5689
  call void @llvm.dbg.declare(metadata i32* %vbus, metadata !5690, metadata !DIExpression()), !dbg !5691
  %0 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5692
  %dr_mode = getelementptr inbounds %struct.cdns3, %struct.cdns3* %0, i32 0, i32 20, !dbg !5694
  %1 = load i32, i32* %dr_mode, align 8, !dbg !5694
  %cmp = icmp ne i32 %1, 3, !dbg !5695
  br i1 %cmp, label %if.then, label %if.end5, !dbg !5696

if.then:                                          ; preds = %entry
  %2 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5697
  %call = call zeroext i1 @cdns3_is_host(%struct.cdns3* %2) #8, !dbg !5700
  br i1 %call, label %if.then1, label %if.end, !dbg !5701

if.then1:                                         ; preds = %if.then
  store i32 1, i32* %role, align 4, !dbg !5702
  br label %if.end, !dbg !5703

if.end:                                           ; preds = %if.then1, %if.then
  %3 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5704
  %call2 = call zeroext i1 @cdns3_is_device(%struct.cdns3* %3) #8, !dbg !5706
  br i1 %call2, label %if.then3, label %if.end4, !dbg !5707

if.then3:                                         ; preds = %if.end
  store i32 2, i32* %role, align 4, !dbg !5708
  br label %if.end4, !dbg !5709

if.end4:                                          ; preds = %if.then3, %if.end
  %4 = load i32, i32* %role, align 4, !dbg !5710
  store i32 %4, i32* %retval, align 4, !dbg !5711
  br label %return, !dbg !5711

if.end5:                                          ; preds = %entry
  %5 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5712
  %call6 = call i32 @cdns3_get_id(%struct.cdns3* %5) #8, !dbg !5713
  store i32 %call6, i32* %id, align 4, !dbg !5714
  %6 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5715
  %call7 = call i32 @cdns3_get_vbus(%struct.cdns3* %6) #8, !dbg !5716
  store i32 %call7, i32* %vbus, align 4, !dbg !5717
  %7 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5718
  %role8 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %7, i32 0, i32 14, !dbg !5719
  %8 = load i32, i32* %role8, align 8, !dbg !5719
  store i32 %8, i32* %role, align 4, !dbg !5720
  %9 = load i32, i32* %role, align 4, !dbg !5721
  switch i32 %9, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb18
  ], !dbg !5722

sw.bb:                                            ; preds = %if.end5
  %10 = load i32, i32* %id, align 4, !dbg !5723
  %tobool = icmp ne i32 %10, 0, !dbg !5723
  br i1 %tobool, label %if.else, label %if.then9, !dbg !5726

if.then9:                                         ; preds = %sw.bb
  store i32 1, i32* %role, align 4, !dbg !5727
  br label %if.end13, !dbg !5728

if.else:                                          ; preds = %sw.bb
  %11 = load i32, i32* %vbus, align 4, !dbg !5729
  %tobool10 = icmp ne i32 %11, 0, !dbg !5729
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5731

if.then11:                                        ; preds = %if.else
  store i32 2, i32* %role, align 4, !dbg !5732
  br label %if.end12, !dbg !5733

if.end12:                                         ; preds = %if.then11, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then9
  br label %sw.epilog, !dbg !5734

sw.bb14:                                          ; preds = %if.end5
  %12 = load i32, i32* %id, align 4, !dbg !5735
  %tobool15 = icmp ne i32 %12, 0, !dbg !5735
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5737

if.then16:                                        ; preds = %sw.bb14
  store i32 0, i32* %role, align 4, !dbg !5738
  br label %if.end17, !dbg !5739

if.end17:                                         ; preds = %if.then16, %sw.bb14
  br label %sw.epilog, !dbg !5740

sw.bb18:                                          ; preds = %if.end5
  %13 = load i32, i32* %vbus, align 4, !dbg !5741
  %tobool19 = icmp ne i32 %13, 0, !dbg !5741
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !5743

if.then20:                                        ; preds = %sw.bb18
  store i32 0, i32* %role, align 4, !dbg !5744
  br label %if.end21, !dbg !5745

if.end21:                                         ; preds = %if.then20, %sw.bb18
  br label %sw.epilog, !dbg !5746

sw.epilog:                                        ; preds = %if.end5, %if.end21, %if.end17, %if.end13
  %14 = load i32, i32* %role, align 4, !dbg !5747
  store i32 %14, i32* %retval, align 4, !dbg !5748
  br label %return, !dbg !5748

return:                                           ; preds = %sw.epilog, %if.end4
  %15 = load i32, i32* %retval, align 4, !dbg !5749
  ret i32 %15, !dbg !5749
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cdns3_role_stop(%struct.cdns3* %cdns) #0 !dbg !5750 {
entry:
  %cdns.addr = alloca %struct.cdns3*, align 8
  %role = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.cdns3* %cdns, %struct.cdns3** %cdns.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns.addr, metadata !5751, metadata !DIExpression()), !dbg !5752
  call void @llvm.dbg.declare(metadata i32* %role, metadata !5753, metadata !DIExpression()), !dbg !5754
  %0 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5755
  %role1 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %0, i32 0, i32 14, !dbg !5756
  %1 = load i32, i32* %role1, align 8, !dbg !5756
  store i32 %1, i32* %role, align 4, !dbg !5754
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5757, metadata !DIExpression()), !dbg !5760
  %2 = load i32, i32* %role, align 4, !dbg !5760
  %cmp = icmp ugt i32 %2, 2, !dbg !5760
  %lnot = xor i1 %cmp, true, !dbg !5760
  %lnot2 = xor i1 %lnot, true, !dbg !5760
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5760
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5760
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5761
  %tobool = icmp ne i32 %3, 0, !dbg !5761
  %lnot3 = xor i1 %tobool, true, !dbg !5761
  %lnot5 = xor i1 %lnot3, true, !dbg !5761
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5761
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5761
  %tobool7 = icmp ne i64 %conv, 0, !dbg !5761
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5760

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5761

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !5763

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !5765

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !5763

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 60, i32 2305, i64 12) #7, !dbg !5767, !srcloc !5769
  br label %do.end10, !dbg !5767

do.end10:                                         ; preds = %do.body9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 300) #7, !dbg !5770, !srcloc !5772
  br label %do.body11, !dbg !5763

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !5773

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !5763

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !5763

if.end:                                           ; preds = %do.end13, %entry
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !5760
  %tobool14 = icmp ne i32 %4, 0, !dbg !5760
  %lnot15 = xor i1 %tobool14, true, !dbg !5760
  %lnot17 = xor i1 %lnot15, true, !dbg !5760
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !5760
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !5760
  store i64 %conv19, i64* %tmp, align 8, !dbg !5761
  %5 = load i64, i64* %tmp, align 8, !dbg !5760
  %tobool20 = icmp ne i64 %5, 0, !dbg !5775
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !5776

if.then21:                                        ; preds = %if.end
  br label %return, !dbg !5777

if.end22:                                         ; preds = %if.end
  %6 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5778
  %roles = getelementptr inbounds %struct.cdns3, %struct.cdns3* %6, i32 0, i32 13, !dbg !5780
  %7 = load i32, i32* %role, align 4, !dbg !5781
  %idxprom = zext i32 %7 to i64, !dbg !5778
  %arrayidx = getelementptr [3 x %struct.cdns3_role_driver*], [3 x %struct.cdns3_role_driver*]* %roles, i64 0, i64 %idxprom, !dbg !5778
  %8 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %arrayidx, align 8, !dbg !5778
  %state = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %8, i32 0, i32 5, !dbg !5782
  %9 = load i32, i32* %state, align 8, !dbg !5782
  %cmp23 = icmp eq i32 %9, 0, !dbg !5783
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !5784

if.then25:                                        ; preds = %if.end22
  br label %return, !dbg !5785

if.end26:                                         ; preds = %if.end22
  %10 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5786
  %mutex = getelementptr inbounds %struct.cdns3, %struct.cdns3* %10, i32 0, i32 19, !dbg !5787
  call void @mutex_lock(%struct.mutex* %mutex) #8, !dbg !5788
  %11 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5789
  %roles27 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %11, i32 0, i32 13, !dbg !5790
  %12 = load i32, i32* %role, align 4, !dbg !5791
  %idxprom28 = zext i32 %12 to i64, !dbg !5789
  %arrayidx29 = getelementptr [3 x %struct.cdns3_role_driver*], [3 x %struct.cdns3_role_driver*]* %roles27, i64 0, i64 %idxprom28, !dbg !5789
  %13 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %arrayidx29, align 8, !dbg !5789
  %stop = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %13, i32 0, i32 1, !dbg !5792
  %14 = load void (%struct.cdns3*)*, void (%struct.cdns3*)** %stop, align 8, !dbg !5792
  %15 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5793
  call void %14(%struct.cdns3* %15) #8, !dbg !5789
  %16 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5794
  %roles30 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %16, i32 0, i32 13, !dbg !5795
  %17 = load i32, i32* %role, align 4, !dbg !5796
  %idxprom31 = zext i32 %17 to i64, !dbg !5794
  %arrayidx32 = getelementptr [3 x %struct.cdns3_role_driver*], [3 x %struct.cdns3_role_driver*]* %roles30, i64 0, i64 %idxprom31, !dbg !5794
  %18 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %arrayidx32, align 8, !dbg !5794
  %state33 = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %18, i32 0, i32 5, !dbg !5797
  store i32 0, i32* %state33, align 8, !dbg !5798
  %19 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5799
  %mutex34 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %19, i32 0, i32 19, !dbg !5800
  call void @mutex_unlock(%struct.mutex* %mutex34) #8, !dbg !5801
  br label %return, !dbg !5802

return:                                           ; preds = %if.end26, %if.then25, %if.then21
  ret void, !dbg !5802
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cdns3_role_start(%struct.cdns3* %cdns, i32 %role) #0 !dbg !5803 {
entry:
  %retval = alloca i32, align 4
  %cdns.addr = alloca %struct.cdns3*, align 8
  %role.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.cdns3* %cdns, %struct.cdns3** %cdns.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns.addr, metadata !5806, metadata !DIExpression()), !dbg !5807
  store i32 %role, i32* %role.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %role.addr, metadata !5808, metadata !DIExpression()), !dbg !5809
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5810, metadata !DIExpression()), !dbg !5811
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5812, metadata !DIExpression()), !dbg !5815
  %0 = load i32, i32* %role.addr, align 4, !dbg !5815
  %cmp = icmp ugt i32 %0, 2, !dbg !5815
  %lnot = xor i1 %cmp, true, !dbg !5815
  %lnot1 = xor i1 %lnot, true, !dbg !5815
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5815
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5815
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !5816
  %tobool = icmp ne i32 %1, 0, !dbg !5816
  %lnot2 = xor i1 %tobool, true, !dbg !5816
  %lnot4 = xor i1 %lnot2, true, !dbg !5816
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !5816
  %conv = sext i32 %lnot.ext5 to i64, !dbg !5816
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5816
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5815

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5816

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !5818

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !5820

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !5818

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 34, i32 2305, i64 12) #7, !dbg !5822, !srcloc !5824
  br label %do.end9, !dbg !5822

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 299) #7, !dbg !5825, !srcloc !5827
  br label %do.body10, !dbg !5818

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !5828

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !5818

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !5818

if.end:                                           ; preds = %do.end12, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !5815
  %tobool13 = icmp ne i32 %2, 0, !dbg !5815
  %lnot14 = xor i1 %tobool13, true, !dbg !5815
  %lnot16 = xor i1 %lnot14, true, !dbg !5815
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !5815
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !5815
  store i64 %conv18, i64* %tmp, align 8, !dbg !5816
  %3 = load i64, i64* %tmp, align 8, !dbg !5815
  %tobool19 = icmp ne i64 %3, 0, !dbg !5830
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5831

if.then20:                                        ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5832
  br label %return, !dbg !5832

if.end21:                                         ; preds = %if.end
  %4 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5833
  %mutex = getelementptr inbounds %struct.cdns3, %struct.cdns3* %4, i32 0, i32 19, !dbg !5834
  call void @mutex_lock(%struct.mutex* %mutex) #8, !dbg !5835
  %5 = load i32, i32* %role.addr, align 4, !dbg !5836
  %6 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5837
  %role22 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %6, i32 0, i32 14, !dbg !5838
  store i32 %5, i32* %role22, align 8, !dbg !5839
  %7 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5840
  %mutex23 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %7, i32 0, i32 19, !dbg !5841
  call void @mutex_unlock(%struct.mutex* %mutex23) #8, !dbg !5842
  %8 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5843
  %roles = getelementptr inbounds %struct.cdns3, %struct.cdns3* %8, i32 0, i32 13, !dbg !5845
  %9 = load i32, i32* %role.addr, align 4, !dbg !5846
  %idxprom = zext i32 %9 to i64, !dbg !5843
  %arrayidx = getelementptr [3 x %struct.cdns3_role_driver*], [3 x %struct.cdns3_role_driver*]* %roles, i64 0, i64 %idxprom, !dbg !5843
  %10 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %arrayidx, align 8, !dbg !5843
  %tobool24 = icmp ne %struct.cdns3_role_driver* %10, null, !dbg !5843
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !5847

if.then25:                                        ; preds = %if.end21
  store i32 -6, i32* %retval, align 4, !dbg !5848
  br label %return, !dbg !5848

if.end26:                                         ; preds = %if.end21
  %11 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5849
  %roles27 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %11, i32 0, i32 13, !dbg !5851
  %12 = load i32, i32* %role.addr, align 4, !dbg !5852
  %idxprom28 = zext i32 %12 to i64, !dbg !5849
  %arrayidx29 = getelementptr [3 x %struct.cdns3_role_driver*], [3 x %struct.cdns3_role_driver*]* %roles27, i64 0, i64 %idxprom28, !dbg !5849
  %13 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %arrayidx29, align 8, !dbg !5849
  %state = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %13, i32 0, i32 5, !dbg !5853
  %14 = load i32, i32* %state, align 8, !dbg !5853
  %cmp30 = icmp eq i32 %14, 1, !dbg !5854
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !5855

if.then32:                                        ; preds = %if.end26
  store i32 0, i32* %retval, align 4, !dbg !5856
  br label %return, !dbg !5856

if.end33:                                         ; preds = %if.end26
  %15 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5857
  %mutex34 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %15, i32 0, i32 19, !dbg !5858
  call void @mutex_lock(%struct.mutex* %mutex34) #8, !dbg !5859
  %16 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5860
  %roles35 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %16, i32 0, i32 13, !dbg !5861
  %17 = load i32, i32* %role.addr, align 4, !dbg !5862
  %idxprom36 = zext i32 %17 to i64, !dbg !5860
  %arrayidx37 = getelementptr [3 x %struct.cdns3_role_driver*], [3 x %struct.cdns3_role_driver*]* %roles35, i64 0, i64 %idxprom36, !dbg !5860
  %18 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %arrayidx37, align 8, !dbg !5860
  %start = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %18, i32 0, i32 0, !dbg !5863
  %start38 = bitcast {}** %start to i32 (%struct.cdns3*)**, !dbg !5863
  %19 = load i32 (%struct.cdns3*)*, i32 (%struct.cdns3*)** %start38, align 8, !dbg !5863
  %20 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5864
  %call = call i32 %19(%struct.cdns3* %20) #8, !dbg !5860
  store i32 %call, i32* %ret, align 4, !dbg !5865
  %21 = load i32, i32* %ret, align 4, !dbg !5866
  %tobool39 = icmp ne i32 %21, 0, !dbg !5866
  br i1 %tobool39, label %if.end45, label %if.then40, !dbg !5868

if.then40:                                        ; preds = %if.end33
  %22 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5869
  %roles41 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %22, i32 0, i32 13, !dbg !5870
  %23 = load i32, i32* %role.addr, align 4, !dbg !5871
  %idxprom42 = zext i32 %23 to i64, !dbg !5869
  %arrayidx43 = getelementptr [3 x %struct.cdns3_role_driver*], [3 x %struct.cdns3_role_driver*]* %roles41, i64 0, i64 %idxprom42, !dbg !5869
  %24 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %arrayidx43, align 8, !dbg !5869
  %state44 = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %24, i32 0, i32 5, !dbg !5872
  store i32 1, i32* %state44, align 8, !dbg !5873
  br label %if.end45, !dbg !5869

if.end45:                                         ; preds = %if.then40, %if.end33
  %25 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !5874
  %mutex46 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %25, i32 0, i32 19, !dbg !5875
  call void @mutex_unlock(%struct.mutex* %mutex46) #8, !dbg !5876
  %26 = load i32, i32* %ret, align 4, !dbg !5877
  store i32 %26, i32* %retval, align 4, !dbg !5878
  br label %return, !dbg !5878

return:                                           ; preds = %if.end45, %if.then32, %if.then25, %if.then20
  %27 = load i32, i32* %retval, align 4, !dbg !5879
  ret i32 %27, !dbg !5879
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_put_sync(%struct.device* %dev) #0 !dbg !5880 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5881, metadata !DIExpression()), !dbg !5882
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5883
  %call = call i32 @__pm_runtime_idle(%struct.device* %0, i32 4) #8, !dbg !5884
  ret i32 %call, !dbg !5885
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @cdns3_driver_init() #3 section ".init.text" !dbg !5886 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @cdns3_driver, %struct.module* null) #8, !dbg !5889
  ret i32 %call, !dbg !5889
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @cdns3_driver_exit() #3 section ".exit.text" !dbg !5890 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @cdns3_driver) #8, !dbg !5891
  ret void, !dbg !5891
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #4

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_resume(%struct.device*, i32) #4

; Function Attrs: noredzone
declare dso_local zeroext i1 @cdns3_is_host(%struct.cdns3*) #4

; Function Attrs: noredzone
declare dso_local zeroext i1 @cdns3_is_device(%struct.cdns3*) #4

; Function Attrs: noredzone
declare dso_local i32 @cdns3_get_id(%struct.cdns3*) #4

; Function Attrs: noredzone
declare dso_local i32 @cdns3_get_vbus(%struct.cdns3*) #4

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #4

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #4

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_idle(%struct.device*, i32) #4

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cdns3_probe(%struct.platform_device* %pdev) #0 !dbg !4991 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5892, metadata !DIExpression()), !dbg !5898
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %dev = alloca %struct.device*, align 8
  %res = alloca %struct.resource*, align 8
  %cdns = alloca %struct.cdns3*, align 8
  %regs = alloca i8*, align 8
  %ret = alloca i32, align 4
  %sw_desc = alloca %struct.usb_role_switch_desc, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !5901, metadata !DIExpression()), !dbg !5902
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !5903, metadata !DIExpression()), !dbg !5904
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5905
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !5906
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !5904
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !5907, metadata !DIExpression()), !dbg !5908
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns, metadata !5909, metadata !DIExpression()), !dbg !5910
  call void @llvm.dbg.declare(metadata i8** %regs, metadata !5911, metadata !DIExpression()), !dbg !5912
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5913, metadata !DIExpression()), !dbg !5914
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5915
  %call = call i32 @dma_set_mask_and_coherent(%struct.device* %1, i64 4294967295) #8, !dbg !5916
  store i32 %call, i32* %ret, align 4, !dbg !5917
  %2 = load i32, i32* %ret, align 4, !dbg !5918
  %tobool = icmp ne i32 %2, 0, !dbg !5918
  br i1 %tobool, label %if.then, label %if.end, !dbg !5920

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5921
  %4 = load i32, i32* %ret, align 4, !dbg !5921
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %4) #9, !dbg !5921
  %5 = load i32, i32* %ret, align 4, !dbg !5923
  store i32 %5, i32* %retval, align 4, !dbg !5924
  br label %return, !dbg !5924

if.end:                                           ; preds = %entry
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5925
  %call2 = call i8* @devm_kzalloc(%struct.device* %6, i64 384, i32 3264) #8, !dbg !5926
  %7 = bitcast i8* %call2 to %struct.cdns3*, !dbg !5926
  store %struct.cdns3* %7, %struct.cdns3** %cdns, align 8, !dbg !5927
  %8 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !5928
  %tobool3 = icmp ne %struct.cdns3* %8, null, !dbg !5928
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5930

if.then4:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !5931
  br label %return, !dbg !5931

if.end5:                                          ; preds = %if.end
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5932
  %10 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !5933
  %dev6 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %10, i32 0, i32 0, !dbg !5934
  store %struct.device* %9, %struct.device** %dev6, align 8, !dbg !5935
  %11 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5936
  %call7 = call i8* @dev_get_platdata(%struct.device* %11) #8, !dbg !5937
  %12 = bitcast i8* %call7 to %struct.cdns3_platform_data*, !dbg !5937
  %13 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !5938
  %pdata = getelementptr inbounds %struct.cdns3, %struct.cdns3* %13, i32 0, i32 24, !dbg !5939
  store %struct.cdns3_platform_data* %12, %struct.cdns3_platform_data** %pdata, align 8, !dbg !5940
  %14 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5941
  %15 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !5942
  %16 = bitcast %struct.cdns3* %15 to i8*, !dbg !5942
  call void @platform_set_drvdata(%struct.platform_device* %14, i8* %16) #8, !dbg !5943
  %17 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5944
  %call8 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %17, i32 1024, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !5945
  store %struct.resource* %call8, %struct.resource** %res, align 8, !dbg !5946
  %18 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5947
  %tobool9 = icmp ne %struct.resource* %18, null, !dbg !5947
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !5949

if.then10:                                        ; preds = %if.end5
  %19 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5950
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !5950
  store i32 -19, i32* %retval, align 4, !dbg !5952
  br label %return, !dbg !5952

if.end11:                                         ; preds = %if.end5
  %20 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !5953
  %xhci_res = getelementptr inbounds %struct.cdns3, %struct.cdns3* %20, i32 0, i32 2, !dbg !5954
  %arrayidx = getelementptr [2 x %struct.resource], [2 x %struct.resource]* %xhci_res, i64 0, i64 0, !dbg !5953
  %21 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5955
  %22 = bitcast %struct.resource* %arrayidx to i8*, !dbg !5956
  %23 = bitcast %struct.resource* %21 to i8*, !dbg !5956
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 64, i1 false), !dbg !5956
  %24 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5957
  %call12 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %24, i32 512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !5958
  store %struct.resource* %call12, %struct.resource** %res, align 8, !dbg !5959
  %25 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5960
  %tobool13 = icmp ne %struct.resource* %25, null, !dbg !5960
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !5962

if.then14:                                        ; preds = %if.end11
  %26 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5963
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !5963
  store i32 -6, i32* %retval, align 4, !dbg !5965
  br label %return, !dbg !5965

if.end15:                                         ; preds = %if.end11
  %27 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !5966
  %xhci_res16 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %27, i32 0, i32 2, !dbg !5967
  %arrayidx17 = getelementptr [2 x %struct.resource], [2 x %struct.resource]* %xhci_res16, i64 0, i64 1, !dbg !5966
  %28 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5968
  %29 = bitcast %struct.resource* %arrayidx17 to i8*, !dbg !5969
  %30 = bitcast %struct.resource* %28 to i8*, !dbg !5969
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 64, i1 false), !dbg !5969
  %31 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5970
  %call18 = call i32 @platform_get_irq_byname(%struct.platform_device* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !5971
  %32 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !5972
  %dev_irq = getelementptr inbounds %struct.cdns3, %struct.cdns3* %32, i32 0, i32 11, !dbg !5973
  store i32 %call18, i32* %dev_irq, align 4, !dbg !5974
  %33 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !5975
  %dev_irq19 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %33, i32 0, i32 11, !dbg !5977
  %34 = load i32, i32* %dev_irq19, align 4, !dbg !5977
  %cmp = icmp eq i32 %34, -517, !dbg !5978
  br i1 %cmp, label %if.then20, label %if.end22, !dbg !5979

if.then20:                                        ; preds = %if.end15
  %35 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !5980
  %dev_irq21 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %35, i32 0, i32 11, !dbg !5981
  %36 = load i32, i32* %dev_irq21, align 4, !dbg !5981
  store i32 %36, i32* %retval, align 4, !dbg !5982
  br label %return, !dbg !5982

if.end22:                                         ; preds = %if.end15
  %37 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !5983
  %dev_irq23 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %37, i32 0, i32 11, !dbg !5985
  %38 = load i32, i32* %dev_irq23, align 4, !dbg !5985
  %cmp24 = icmp slt i32 %38, 0, !dbg !5986
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5987

if.then25:                                        ; preds = %if.end22
  %39 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5988
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !5988
  br label %if.end26, !dbg !5988

if.end26:                                         ; preds = %if.then25, %if.end22
  %40 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5989
  %call27 = call i8* @devm_platform_ioremap_resource_byname(%struct.platform_device* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !5990
  store i8* %call27, i8** %regs, align 8, !dbg !5991
  %41 = load i8*, i8** %regs, align 8, !dbg !5992
  %call28 = call zeroext i1 @IS_ERR(i8* %41) #8, !dbg !5994
  br i1 %call28, label %if.then29, label %if.end31, !dbg !5995

if.then29:                                        ; preds = %if.end26
  %42 = load i8*, i8** %regs, align 8, !dbg !5996
  %call30 = call i64 @PTR_ERR(i8* %42) #8, !dbg !5997
  %conv = trunc i64 %call30 to i32, !dbg !5997
  store i32 %conv, i32* %retval, align 4, !dbg !5998
  br label %return, !dbg !5998

if.end31:                                         ; preds = %if.end26
  %43 = load i8*, i8** %regs, align 8, !dbg !5999
  %44 = bitcast i8* %43 to %struct.cdns3_usb_regs*, !dbg !5999
  %45 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6000
  %dev_regs = getelementptr inbounds %struct.cdns3, %struct.cdns3* %45, i32 0, i32 3, !dbg !6001
  store %struct.cdns3_usb_regs* %44, %struct.cdns3_usb_regs** %dev_regs, align 8, !dbg !6002
  %46 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6003
  %call32 = call i32 @platform_get_irq_byname(%struct.platform_device* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !6004
  %47 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6005
  %otg_irq = getelementptr inbounds %struct.cdns3, %struct.cdns3* %47, i32 0, i32 10, !dbg !6006
  store i32 %call32, i32* %otg_irq, align 8, !dbg !6007
  %48 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6008
  %otg_irq33 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %48, i32 0, i32 10, !dbg !6010
  %49 = load i32, i32* %otg_irq33, align 8, !dbg !6010
  %cmp34 = icmp eq i32 %49, -517, !dbg !6011
  br i1 %cmp34, label %if.then36, label %if.end38, !dbg !6012

if.then36:                                        ; preds = %if.end31
  %50 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6013
  %otg_irq37 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %50, i32 0, i32 10, !dbg !6014
  %51 = load i32, i32* %otg_irq37, align 8, !dbg !6014
  store i32 %51, i32* %retval, align 4, !dbg !6015
  br label %return, !dbg !6015

if.end38:                                         ; preds = %if.end31
  %52 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6016
  %otg_irq39 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %52, i32 0, i32 10, !dbg !6018
  %53 = load i32, i32* %otg_irq39, align 8, !dbg !6018
  %cmp40 = icmp slt i32 %53, 0, !dbg !6019
  br i1 %cmp40, label %if.then42, label %if.end44, !dbg !6020

if.then42:                                        ; preds = %if.end38
  %54 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6021
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !6021
  %55 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6023
  %otg_irq43 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %55, i32 0, i32 10, !dbg !6024
  %56 = load i32, i32* %otg_irq43, align 8, !dbg !6024
  store i32 %56, i32* %retval, align 4, !dbg !6025
  br label %return, !dbg !6025

if.end44:                                         ; preds = %if.end38
  %57 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6026
  %call45 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %57, i32 512, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !6027
  store %struct.resource* %call45, %struct.resource** %res, align 8, !dbg !6028
  %58 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !6029
  %tobool46 = icmp ne %struct.resource* %58, null, !dbg !6029
  br i1 %tobool46, label %if.end48, label %if.then47, !dbg !6031

if.then47:                                        ; preds = %if.end44
  %59 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6032
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0)) #9, !dbg !6032
  store i32 -6, i32* %retval, align 4, !dbg !6034
  br label %return, !dbg !6034

if.end48:                                         ; preds = %if.end44
  %60 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6035
  %call49 = call zeroext i1 @device_property_read_bool(%struct.device* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !6036
  %61 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6037
  %phyrst_a_enable = getelementptr inbounds %struct.cdns3, %struct.cdns3* %61, i32 0, i32 9, !dbg !6038
  %frombool = zext i1 %call49 to i8, !dbg !6039
  store i8 %frombool, i8* %phyrst_a_enable, align 4, !dbg !6039
  %62 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6040
  %otg_res = getelementptr inbounds %struct.cdns3, %struct.cdns3* %62, i32 0, i32 4, !dbg !6041
  %63 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !6042
  %64 = bitcast %struct.resource* %otg_res to i8*, !dbg !6043
  %65 = bitcast %struct.resource* %63 to i8*, !dbg !6043
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 64, i1 false), !dbg !6043
  %66 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6044
  %call50 = call i32 @platform_get_irq_byname_optional(%struct.platform_device* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !6045
  %67 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6046
  %wakeup_irq = getelementptr inbounds %struct.cdns3, %struct.cdns3* %67, i32 0, i32 12, !dbg !6047
  store i32 %call50, i32* %wakeup_irq, align 8, !dbg !6048
  %68 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6049
  %wakeup_irq51 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %68, i32 0, i32 12, !dbg !6051
  %69 = load i32, i32* %wakeup_irq51, align 8, !dbg !6051
  %cmp52 = icmp eq i32 %69, -517, !dbg !6052
  br i1 %cmp52, label %if.then54, label %if.else, !dbg !6053

if.then54:                                        ; preds = %if.end48
  %70 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6054
  %wakeup_irq55 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %70, i32 0, i32 12, !dbg !6055
  %71 = load i32, i32* %wakeup_irq55, align 8, !dbg !6055
  store i32 %71, i32* %retval, align 4, !dbg !6056
  br label %return, !dbg !6056

if.else:                                          ; preds = %if.end48
  %72 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6057
  %wakeup_irq56 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %72, i32 0, i32 12, !dbg !6059
  %73 = load i32, i32* %wakeup_irq56, align 8, !dbg !6059
  %cmp57 = icmp eq i32 %73, 0, !dbg !6060
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !6061

if.then59:                                        ; preds = %if.else
  store i32 -22, i32* %retval, align 4, !dbg !6062
  br label %return, !dbg !6062

if.end60:                                         ; preds = %if.else
  br label %if.end61

if.end61:                                         ; preds = %if.end60
  %74 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6063
  %wakeup_irq62 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %74, i32 0, i32 12, !dbg !6065
  %75 = load i32, i32* %wakeup_irq62, align 8, !dbg !6065
  %cmp63 = icmp slt i32 %75, 0, !dbg !6066
  br i1 %cmp63, label %if.then65, label %if.end67, !dbg !6067

if.then65:                                        ; preds = %if.end61
  %76 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6068
  %wakeup_irq66 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %76, i32 0, i32 12, !dbg !6070
  store i32 0, i32* %wakeup_irq66, align 8, !dbg !6071
  br label %if.end67, !dbg !6072

if.end67:                                         ; preds = %if.then65, %if.end61
  br label %do.body, !dbg !6073

do.body:                                          ; preds = %if.end67
  %77 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6074
  %mutex = getelementptr inbounds %struct.cdns3, %struct.cdns3* %77, i32 0, i32 19, !dbg !6074
  call void @__mutex_init(%struct.mutex* %mutex, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), %struct.lock_class_key* @cdns3_probe.__key) #8, !dbg !6074
  br label %do.end, !dbg !6074

do.end:                                           ; preds = %do.body
  %78 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6076
  %call68 = call %struct.phy* @devm_phy_optional_get(%struct.device* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !6077
  %79 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6078
  %usb2_phy = getelementptr inbounds %struct.cdns3, %struct.cdns3* %79, i32 0, i32 17, !dbg !6079
  store %struct.phy* %call68, %struct.phy** %usb2_phy, align 8, !dbg !6080
  %80 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6081
  %usb2_phy69 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %80, i32 0, i32 17, !dbg !6083
  %81 = load %struct.phy*, %struct.phy** %usb2_phy69, align 8, !dbg !6083
  %82 = bitcast %struct.phy* %81 to i8*, !dbg !6081
  %call70 = call zeroext i1 @IS_ERR(i8* %82) #8, !dbg !6084
  br i1 %call70, label %if.then71, label %if.end75, !dbg !6085

if.then71:                                        ; preds = %do.end
  %83 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6086
  %usb2_phy72 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %83, i32 0, i32 17, !dbg !6087
  %84 = load %struct.phy*, %struct.phy** %usb2_phy72, align 8, !dbg !6087
  %85 = bitcast %struct.phy* %84 to i8*, !dbg !6086
  %call73 = call i64 @PTR_ERR(i8* %85) #8, !dbg !6088
  %conv74 = trunc i64 %call73 to i32, !dbg !6088
  store i32 %conv74, i32* %retval, align 4, !dbg !6089
  br label %return, !dbg !6089

if.end75:                                         ; preds = %do.end
  %86 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6090
  %usb2_phy76 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %86, i32 0, i32 17, !dbg !6091
  %87 = load %struct.phy*, %struct.phy** %usb2_phy76, align 8, !dbg !6091
  %call77 = call i32 @phy_init(%struct.phy* %87) #8, !dbg !6092
  store i32 %call77, i32* %ret, align 4, !dbg !6093
  %88 = load i32, i32* %ret, align 4, !dbg !6094
  %tobool78 = icmp ne i32 %88, 0, !dbg !6094
  br i1 %tobool78, label %if.then79, label %if.end80, !dbg !6096

if.then79:                                        ; preds = %if.end75
  %89 = load i32, i32* %ret, align 4, !dbg !6097
  store i32 %89, i32* %retval, align 4, !dbg !6098
  br label %return, !dbg !6098

if.end80:                                         ; preds = %if.end75
  %90 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6099
  %call81 = call %struct.phy* @devm_phy_optional_get(%struct.device* %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !6100
  %91 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6101
  %usb3_phy = getelementptr inbounds %struct.cdns3, %struct.cdns3* %91, i32 0, i32 18, !dbg !6102
  store %struct.phy* %call81, %struct.phy** %usb3_phy, align 8, !dbg !6103
  %92 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6104
  %usb3_phy82 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %92, i32 0, i32 18, !dbg !6106
  %93 = load %struct.phy*, %struct.phy** %usb3_phy82, align 8, !dbg !6106
  %94 = bitcast %struct.phy* %93 to i8*, !dbg !6104
  %call83 = call zeroext i1 @IS_ERR(i8* %94) #8, !dbg !6107
  br i1 %call83, label %if.then84, label %if.end88, !dbg !6108

if.then84:                                        ; preds = %if.end80
  %95 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6109
  %usb3_phy85 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %95, i32 0, i32 18, !dbg !6110
  %96 = load %struct.phy*, %struct.phy** %usb3_phy85, align 8, !dbg !6110
  %97 = bitcast %struct.phy* %96 to i8*, !dbg !6109
  %call86 = call i64 @PTR_ERR(i8* %97) #8, !dbg !6111
  %conv87 = trunc i64 %call86 to i32, !dbg !6111
  store i32 %conv87, i32* %retval, align 4, !dbg !6112
  br label %return, !dbg !6112

if.end88:                                         ; preds = %if.end80
  %98 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6113
  %usb3_phy89 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %98, i32 0, i32 18, !dbg !6114
  %99 = load %struct.phy*, %struct.phy** %usb3_phy89, align 8, !dbg !6114
  %call90 = call i32 @phy_init(%struct.phy* %99) #8, !dbg !6115
  store i32 %call90, i32* %ret, align 4, !dbg !6116
  %100 = load i32, i32* %ret, align 4, !dbg !6117
  %tobool91 = icmp ne i32 %100, 0, !dbg !6117
  br i1 %tobool91, label %if.then92, label %if.end93, !dbg !6119

if.then92:                                        ; preds = %if.end88
  br label %err1, !dbg !6120

if.end93:                                         ; preds = %if.end88
  %101 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6121
  %call94 = call i32 @set_phy_power_on(%struct.cdns3* %101) #8, !dbg !6122
  store i32 %call94, i32* %ret, align 4, !dbg !6123
  %102 = load i32, i32* %ret, align 4, !dbg !6124
  %tobool95 = icmp ne i32 %102, 0, !dbg !6124
  br i1 %tobool95, label %if.then96, label %if.end97, !dbg !6126

if.then96:                                        ; preds = %if.end93
  br label %err2, !dbg !6127

if.end97:                                         ; preds = %if.end93
  %103 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6128
  %call98 = call zeroext i1 @device_property_read_bool(%struct.device* %103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !6130
  br i1 %call98, label %if.then99, label %if.end109, !dbg !6131

if.then99:                                        ; preds = %if.end97
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch_desc* %sw_desc, metadata !6132, metadata !DIExpression()), !dbg !6153
  %104 = bitcast %struct.usb_role_switch_desc* %sw_desc to i8*, !dbg !6153
  call void @llvm.memset.p0i8.i64(i8* align 8 %104, i8 0, i64 72, i1 false), !dbg !6153
  %set = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %sw_desc, i32 0, i32 4, !dbg !6154
  store i32 (%struct.usb_role_switch*, i32)* @cdns3_role_set, i32 (%struct.usb_role_switch*, i32)** %set, align 8, !dbg !6155
  %get = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %sw_desc, i32 0, i32 5, !dbg !6156
  store i32 (%struct.usb_role_switch*)* @cdns3_role_get, i32 (%struct.usb_role_switch*)** %get, align 8, !dbg !6157
  %allow_userspace_control = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %sw_desc, i32 0, i32 6, !dbg !6158
  store i8 1, i8* %allow_userspace_control, align 8, !dbg !6159
  %105 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6160
  %106 = bitcast %struct.cdns3* %105 to i8*, !dbg !6160
  %driver_data = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %sw_desc, i32 0, i32 7, !dbg !6161
  store i8* %106, i8** %driver_data, align 8, !dbg !6162
  %107 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6163
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %107, i32 0, i32 24, !dbg !6164
  %108 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !6164
  %fwnode100 = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %sw_desc, i32 0, i32 0, !dbg !6165
  store %struct.fwnode_handle* %108, %struct.fwnode_handle** %fwnode100, align 8, !dbg !6166
  %109 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6167
  %call101 = call %struct.usb_role_switch* @usb_role_switch_register(%struct.device* %109, %struct.usb_role_switch_desc* %sw_desc) #8, !dbg !6168
  %110 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6169
  %role_sw = getelementptr inbounds %struct.cdns3, %struct.cdns3* %110, i32 0, i32 21, !dbg !6170
  store %struct.usb_role_switch* %call101, %struct.usb_role_switch** %role_sw, align 8, !dbg !6171
  %111 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6172
  %role_sw102 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %111, i32 0, i32 21, !dbg !6174
  %112 = load %struct.usb_role_switch*, %struct.usb_role_switch** %role_sw102, align 8, !dbg !6174
  %113 = bitcast %struct.usb_role_switch* %112 to i8*, !dbg !6172
  %call103 = call zeroext i1 @IS_ERR(i8* %113) #8, !dbg !6175
  br i1 %call103, label %if.then104, label %if.end108, !dbg !6176

if.then104:                                       ; preds = %if.then99
  %114 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6177
  %role_sw105 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %114, i32 0, i32 21, !dbg !6179
  %115 = load %struct.usb_role_switch*, %struct.usb_role_switch** %role_sw105, align 8, !dbg !6179
  %116 = bitcast %struct.usb_role_switch* %115 to i8*, !dbg !6177
  %call106 = call i64 @PTR_ERR(i8* %116) #8, !dbg !6180
  %conv107 = trunc i64 %call106 to i32, !dbg !6180
  store i32 %conv107, i32* %ret, align 4, !dbg !6181
  %117 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6182
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %117, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0)) #9, !dbg !6182
  br label %err3, !dbg !6183

if.end108:                                        ; preds = %if.then99
  br label %if.end109, !dbg !6184

if.end109:                                        ; preds = %if.end108, %if.end97
  %118 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6185
  %wakeup_irq110 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %118, i32 0, i32 12, !dbg !6187
  %119 = load i32, i32* %wakeup_irq110, align 8, !dbg !6187
  %tobool111 = icmp ne i32 %119, 0, !dbg !6185
  br i1 %tobool111, label %if.then112, label %if.end122, !dbg !6188

if.then112:                                       ; preds = %if.end109
  %120 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6189
  %dev113 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %120, i32 0, i32 0, !dbg !6191
  %121 = load %struct.device*, %struct.device** %dev113, align 8, !dbg !6191
  %122 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6192
  %wakeup_irq114 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %122, i32 0, i32 12, !dbg !6193
  %123 = load i32, i32* %wakeup_irq114, align 8, !dbg !6193
  %124 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6194
  %dev115 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %124, i32 0, i32 0, !dbg !6195
  %125 = load %struct.device*, %struct.device** %dev115, align 8, !dbg !6195
  %call116 = call i8* @dev_name(%struct.device* %125) #8, !dbg !6196
  %126 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6197
  %127 = bitcast %struct.cdns3* %126 to i8*, !dbg !6197
  %call117 = call i32 @devm_request_irq(%struct.device* %121, i32 %123, i32 (i32, i8*)* @cdns3_wakeup_irq, i64 128, i8* %call116, i8* %127) #8, !dbg !6198
  store i32 %call117, i32* %ret, align 4, !dbg !6199
  %128 = load i32, i32* %ret, align 4, !dbg !6200
  %tobool118 = icmp ne i32 %128, 0, !dbg !6200
  br i1 %tobool118, label %if.then119, label %if.end121, !dbg !6202

if.then119:                                       ; preds = %if.then112
  %129 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6203
  %dev120 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %129, i32 0, i32 0, !dbg !6203
  %130 = load %struct.device*, %struct.device** %dev120, align 8, !dbg !6203
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %130, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0)) #9, !dbg !6203
  br label %err4, !dbg !6205

if.end121:                                        ; preds = %if.then112
  br label %if.end122, !dbg !6206

if.end122:                                        ; preds = %if.end121, %if.end109
  %131 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6207
  %call123 = call i32 @cdns3_drd_init(%struct.cdns3* %131) #8, !dbg !6208
  store i32 %call123, i32* %ret, align 4, !dbg !6209
  %132 = load i32, i32* %ret, align 4, !dbg !6210
  %tobool124 = icmp ne i32 %132, 0, !dbg !6210
  br i1 %tobool124, label %if.then125, label %if.end126, !dbg !6212

if.then125:                                       ; preds = %if.end122
  br label %err4, !dbg !6213

if.end126:                                        ; preds = %if.end122
  %133 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6214
  %call127 = call i32 @cdns3_core_init_role(%struct.cdns3* %133) #8, !dbg !6215
  store i32 %call127, i32* %ret, align 4, !dbg !6216
  %134 = load i32, i32* %ret, align 4, !dbg !6217
  %tobool128 = icmp ne i32 %134, 0, !dbg !6217
  br i1 %tobool128, label %if.then129, label %if.end130, !dbg !6219

if.then129:                                       ; preds = %if.end126
  br label %err4, !dbg !6220

if.end130:                                        ; preds = %if.end126
  br label %do.body131, !dbg !6221

do.body131:                                       ; preds = %if.end130
  %135 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6222
  %lock = getelementptr inbounds %struct.cdns3, %struct.cdns3* %135, i32 0, i32 25, !dbg !6222
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %136 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6223
  %137 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %136, i32 0, i32 0, !dbg !6224
  %rlock.i = bitcast %union.anon.1* %137 to %struct.raw_spinlock*, !dbg !6224
  %138 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6222
  %lock133 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %138, i32 0, i32 25, !dbg !6222
  %139 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !6222
  %rlock = bitcast %union.anon.1* %139 to %struct.raw_spinlock*, !dbg !6222
  %140 = bitcast %struct.spinlock* %lock133 to i8*, !dbg !6222
  %141 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !6222
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 1 %141, i64 0, i1 false), !dbg !6222
  br label %do.end134, !dbg !6222

do.end134:                                        ; preds = %do.body131
  %142 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6225
  call void @device_set_wakeup_capable(%struct.device* %142, i1 zeroext true) #8, !dbg !6226
  %143 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6227
  %call135 = call i32 @pm_runtime_set_active(%struct.device* %143) #8, !dbg !6228
  %144 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6229
  call void @pm_runtime_enable(%struct.device* %144) #8, !dbg !6230
  %145 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6231
  call void @pm_runtime_forbid(%struct.device* %145) #8, !dbg !6232
  %146 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6233
  call void @pm_runtime_set_autosuspend_delay(%struct.device* %146, i32 20) #8, !dbg !6234
  %147 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6235
  call void @pm_runtime_mark_last_busy(%struct.device* %147) #8, !dbg !6236
  %148 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6237
  call void @pm_runtime_use_autosuspend(%struct.device* %148) #8, !dbg !6238
  store i32 0, i32* %retval, align 4, !dbg !6239
  br label %return, !dbg !6239

err4:                                             ; preds = %if.then129, %if.then125, %if.then119
  call void @llvm.dbg.label(metadata !6240), !dbg !6241
  %149 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6242
  %call136 = call i32 @cdns3_drd_exit(%struct.cdns3* %149) #8, !dbg !6243
  %150 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6244
  %role_sw137 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %150, i32 0, i32 21, !dbg !6246
  %151 = load %struct.usb_role_switch*, %struct.usb_role_switch** %role_sw137, align 8, !dbg !6246
  %tobool138 = icmp ne %struct.usb_role_switch* %151, null, !dbg !6244
  br i1 %tobool138, label %if.then139, label %if.end141, !dbg !6247

if.then139:                                       ; preds = %err4
  %152 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6248
  %role_sw140 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %152, i32 0, i32 21, !dbg !6249
  %153 = load %struct.usb_role_switch*, %struct.usb_role_switch** %role_sw140, align 8, !dbg !6249
  call void @usb_role_switch_unregister(%struct.usb_role_switch* %153) #8, !dbg !6250
  br label %if.end141, !dbg !6250

if.end141:                                        ; preds = %if.then139, %err4
  br label %err3, !dbg !6246

err3:                                             ; preds = %if.end141, %if.then104
  call void @llvm.dbg.label(metadata !6251), !dbg !6252
  %154 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6253
  call void @set_phy_power_off(%struct.cdns3* %154) #8, !dbg !6254
  br label %err2, !dbg !6254

err2:                                             ; preds = %err3, %if.then96
  call void @llvm.dbg.label(metadata !6255), !dbg !6256
  %155 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6257
  %usb3_phy142 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %155, i32 0, i32 18, !dbg !6258
  %156 = load %struct.phy*, %struct.phy** %usb3_phy142, align 8, !dbg !6258
  %call143 = call i32 @phy_exit(%struct.phy* %156) #8, !dbg !6259
  br label %err1, !dbg !6259

err1:                                             ; preds = %err2, %if.then92
  call void @llvm.dbg.label(metadata !6260), !dbg !6261
  %157 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6262
  %usb2_phy144 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %157, i32 0, i32 17, !dbg !6263
  %158 = load %struct.phy*, %struct.phy** %usb2_phy144, align 8, !dbg !6263
  %call145 = call i32 @phy_exit(%struct.phy* %158) #8, !dbg !6264
  %159 = load i32, i32* %ret, align 4, !dbg !6265
  store i32 %159, i32* %retval, align 4, !dbg !6266
  br label %return, !dbg !6266

return:                                           ; preds = %err1, %do.end134, %if.then84, %if.then79, %if.then71, %if.then59, %if.then54, %if.then47, %if.then42, %if.then36, %if.then29, %if.then20, %if.then14, %if.then10, %if.then4, %if.then
  %160 = load i32, i32* %retval, align 4, !dbg !6267
  ret i32 %160, !dbg !6267
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cdns3_remove(%struct.platform_device* %pdev) #0 !dbg !6268 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %cdns = alloca %struct.cdns3*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !6269, metadata !DIExpression()), !dbg !6270
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns, metadata !6271, metadata !DIExpression()), !dbg !6272
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6273
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #8, !dbg !6274
  %1 = bitcast i8* %call to %struct.cdns3*, !dbg !6274
  store %struct.cdns3* %1, %struct.cdns3** %cdns, align 8, !dbg !6272
  %2 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6275
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %2, i32 0, i32 3, !dbg !6276
  %call1 = call i32 @pm_runtime_get_sync(%struct.device* %dev) #8, !dbg !6277
  %3 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6278
  %dev2 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %3, i32 0, i32 3, !dbg !6279
  call void @pm_runtime_disable(%struct.device* %dev2) #8, !dbg !6280
  %4 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6281
  %dev3 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 3, !dbg !6282
  call void @pm_runtime_put_noidle(%struct.device* %dev3) #8, !dbg !6283
  %5 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6284
  call void @cdns3_exit_roles(%struct.cdns3* %5) #8, !dbg !6285
  %6 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6286
  %role_sw = getelementptr inbounds %struct.cdns3, %struct.cdns3* %6, i32 0, i32 21, !dbg !6287
  %7 = load %struct.usb_role_switch*, %struct.usb_role_switch** %role_sw, align 8, !dbg !6287
  call void @usb_role_switch_unregister(%struct.usb_role_switch* %7) #8, !dbg !6288
  %8 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6289
  call void @set_phy_power_off(%struct.cdns3* %8) #8, !dbg !6290
  %9 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6291
  %usb2_phy = getelementptr inbounds %struct.cdns3, %struct.cdns3* %9, i32 0, i32 17, !dbg !6292
  %10 = load %struct.phy*, %struct.phy** %usb2_phy, align 8, !dbg !6292
  %call4 = call i32 @phy_exit(%struct.phy* %10) #8, !dbg !6293
  %11 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6294
  %usb3_phy = getelementptr inbounds %struct.cdns3, %struct.cdns3* %11, i32 0, i32 18, !dbg !6295
  %12 = load %struct.phy*, %struct.phy** %usb3_phy, align 8, !dbg !6295
  %call5 = call i32 @phy_exit(%struct.phy* %12) #8, !dbg !6296
  ret i32 0, !dbg !6297
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dma_set_mask_and_coherent(%struct.device* %dev, i64 %mask) #0 !dbg !6298 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %mask.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6302, metadata !DIExpression()), !dbg !6303
  store i64 %mask, i64* %mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mask.addr, metadata !6304, metadata !DIExpression()), !dbg !6305
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !6306, metadata !DIExpression()), !dbg !6307
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6308
  %1 = load i64, i64* %mask.addr, align 8, !dbg !6309
  %call = call i32 @dma_set_mask(%struct.device* %0, i64 %1) #8, !dbg !6310
  store i32 %call, i32* %rc, align 4, !dbg !6307
  %2 = load i32, i32* %rc, align 4, !dbg !6311
  %cmp = icmp eq i32 %2, 0, !dbg !6313
  br i1 %cmp, label %if.then, label %if.end, !dbg !6314

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6315
  %4 = load i64, i64* %mask.addr, align 8, !dbg !6316
  %call1 = call i32 @dma_set_coherent_mask(%struct.device* %3, i64 %4) #8, !dbg !6317
  br label %if.end, !dbg !6317

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %rc, align 4, !dbg !6318
  ret i32 %5, !dbg !6319
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #0 !dbg !6320 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6323, metadata !DIExpression()), !dbg !6324
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6325, metadata !DIExpression()), !dbg !6326
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !6327, metadata !DIExpression()), !dbg !6328
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6329
  %1 = load i64, i64* %size.addr, align 8, !dbg !6330
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !6331
  %or = or i32 %2, 256, !dbg !6332
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #8, !dbg !6333
  ret i8* %call, !dbg !6334
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_platdata(%struct.device* %dev) #0 !dbg !6335 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6338, metadata !DIExpression()), !dbg !6339
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6340
  %platform_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 7, !dbg !6341
  %1 = load i8*, i8** %platform_data, align 8, !dbg !6341
  ret i8* %1, !dbg !6342
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #0 !dbg !6343 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !6346, metadata !DIExpression()), !dbg !6347
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6348, metadata !DIExpression()), !dbg !6349
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6350
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !6351
  %1 = load i8*, i8** %data.addr, align 8, !dbg !6352
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #8, !dbg !6353
  ret void, !dbg !6354
}

; Function Attrs: noredzone
declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone
declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #4

; Function Attrs: noredzone
declare dso_local i8* @devm_platform_ioremap_resource_byname(%struct.platform_device*, i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !6355 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6359, metadata !DIExpression()), !dbg !6360
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !6361
  %1 = ptrtoint i8* %0 to i64, !dbg !6361
  %2 = inttoptr i64 %1 to i8*, !dbg !6361
  %3 = ptrtoint i8* %2 to i64, !dbg !6361
  %cmp = icmp uge i64 %3, -4095, !dbg !6361
  %lnot = xor i1 %cmp, true, !dbg !6361
  %lnot1 = xor i1 %lnot, true, !dbg !6361
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6361
  %conv = sext i32 %lnot.ext to i64, !dbg !6361
  %tobool = icmp ne i64 %conv, 0, !dbg !6361
  ret i1 %tobool, !dbg !6362
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !6363 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6366, metadata !DIExpression()), !dbg !6367
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !6368
  %1 = ptrtoint i8* %0 to i64, !dbg !6369
  ret i64 %1, !dbg !6370
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @device_property_read_bool(%struct.device* %dev, i8* %propname) #0 !dbg !6371 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %propname.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6375, metadata !DIExpression()), !dbg !6376
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !6377, metadata !DIExpression()), !dbg !6378
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6379
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !6380
  %call = call zeroext i1 @device_property_present(%struct.device* %0, i8* %1) #8, !dbg !6381
  ret i1 %call, !dbg !6382
}

; Function Attrs: noredzone
declare dso_local i32 @platform_get_irq_byname_optional(%struct.platform_device*, i8*) #4

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #4

; Function Attrs: noredzone
declare dso_local %struct.phy* @devm_phy_optional_get(%struct.device*, i8*) #4

; Function Attrs: noredzone
declare dso_local i32 @phy_init(%struct.phy*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @set_phy_power_on(%struct.cdns3* %cdns) #0 !dbg !6383 {
entry:
  %retval = alloca i32, align 4
  %cdns.addr = alloca %struct.cdns3*, align 8
  %ret = alloca i32, align 4
  store %struct.cdns3* %cdns, %struct.cdns3** %cdns.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns.addr, metadata !6384, metadata !DIExpression()), !dbg !6385
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6386, metadata !DIExpression()), !dbg !6387
  %0 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6388
  %usb2_phy = getelementptr inbounds %struct.cdns3, %struct.cdns3* %0, i32 0, i32 17, !dbg !6389
  %1 = load %struct.phy*, %struct.phy** %usb2_phy, align 8, !dbg !6389
  %call = call i32 @phy_power_on(%struct.phy* %1) #8, !dbg !6390
  store i32 %call, i32* %ret, align 4, !dbg !6391
  %2 = load i32, i32* %ret, align 4, !dbg !6392
  %tobool = icmp ne i32 %2, 0, !dbg !6392
  br i1 %tobool, label %if.then, label %if.end, !dbg !6394

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !6395
  store i32 %3, i32* %retval, align 4, !dbg !6396
  br label %return, !dbg !6396

if.end:                                           ; preds = %entry
  %4 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6397
  %usb3_phy = getelementptr inbounds %struct.cdns3, %struct.cdns3* %4, i32 0, i32 18, !dbg !6398
  %5 = load %struct.phy*, %struct.phy** %usb3_phy, align 8, !dbg !6398
  %call1 = call i32 @phy_power_on(%struct.phy* %5) #8, !dbg !6399
  store i32 %call1, i32* %ret, align 4, !dbg !6400
  %6 = load i32, i32* %ret, align 4, !dbg !6401
  %tobool2 = icmp ne i32 %6, 0, !dbg !6401
  br i1 %tobool2, label %if.then3, label %if.end6, !dbg !6403

if.then3:                                         ; preds = %if.end
  %7 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6404
  %usb2_phy4 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %7, i32 0, i32 17, !dbg !6405
  %8 = load %struct.phy*, %struct.phy** %usb2_phy4, align 8, !dbg !6405
  %call5 = call i32 @phy_power_off(%struct.phy* %8) #8, !dbg !6406
  br label %if.end6, !dbg !6406

if.end6:                                          ; preds = %if.then3, %if.end
  %9 = load i32, i32* %ret, align 4, !dbg !6407
  store i32 %9, i32* %retval, align 4, !dbg !6408
  br label %return, !dbg !6408

return:                                           ; preds = %if.end6, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !6409
  ret i32 %10, !dbg !6409
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cdns3_role_set(%struct.usb_role_switch* %sw, i32 %role) #0 !dbg !6410 {
entry:
  %sw.addr = alloca %struct.usb_role_switch*, align 8
  %role.addr = alloca i32, align 4
  %cdns = alloca %struct.cdns3*, align 8
  %ret = alloca i32, align 4
  store %struct.usb_role_switch* %sw, %struct.usb_role_switch** %sw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch** %sw.addr, metadata !6411, metadata !DIExpression()), !dbg !6412
  store i32 %role, i32* %role.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %role.addr, metadata !6413, metadata !DIExpression()), !dbg !6414
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns, metadata !6415, metadata !DIExpression()), !dbg !6416
  %0 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !6417
  %call = call i8* @usb_role_switch_get_drvdata(%struct.usb_role_switch* %0) #8, !dbg !6418
  %1 = bitcast i8* %call to %struct.cdns3*, !dbg !6418
  store %struct.cdns3* %1, %struct.cdns3** %cdns, align 8, !dbg !6416
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6419, metadata !DIExpression()), !dbg !6420
  store i32 0, i32* %ret, align 4, !dbg !6420
  %2 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6421
  %dev = getelementptr inbounds %struct.cdns3, %struct.cdns3* %2, i32 0, i32 0, !dbg !6422
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6422
  %call1 = call i32 @pm_runtime_get_sync(%struct.device* %3) #8, !dbg !6423
  %4 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6424
  %role2 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %4, i32 0, i32 14, !dbg !6426
  %5 = load i32, i32* %role2, align 8, !dbg !6426
  %6 = load i32, i32* %role.addr, align 4, !dbg !6427
  %cmp = icmp eq i32 %5, %6, !dbg !6428
  br i1 %cmp, label %if.then, label %if.end, !dbg !6429

if.then:                                          ; preds = %entry
  br label %pm_put, !dbg !6430

if.end:                                           ; preds = %entry
  %7 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6431
  %dr_mode = getelementptr inbounds %struct.cdns3, %struct.cdns3* %7, i32 0, i32 20, !dbg !6433
  %8 = load i32, i32* %dr_mode, align 8, !dbg !6433
  %cmp3 = icmp eq i32 %8, 1, !dbg !6434
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6435

if.then4:                                         ; preds = %if.end
  %9 = load i32, i32* %role.addr, align 4, !dbg !6436
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
  ], !dbg !6438

sw.bb:                                            ; preds = %if.then4, %if.then4
  br label %sw.epilog, !dbg !6439

sw.default:                                       ; preds = %if.then4
  br label %pm_put, !dbg !6441

sw.epilog:                                        ; preds = %sw.bb
  br label %if.end5, !dbg !6442

if.end5:                                          ; preds = %sw.epilog, %if.end
  %10 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6443
  %dr_mode6 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %10, i32 0, i32 20, !dbg !6445
  %11 = load i32, i32* %dr_mode6, align 8, !dbg !6445
  %cmp7 = icmp eq i32 %11, 2, !dbg !6446
  br i1 %cmp7, label %if.then8, label %if.end12, !dbg !6447

if.then8:                                         ; preds = %if.end5
  %12 = load i32, i32* %role.addr, align 4, !dbg !6448
  switch i32 %12, label %sw.default10 [
    i32 0, label %sw.bb9
    i32 2, label %sw.bb9
  ], !dbg !6450

sw.bb9:                                           ; preds = %if.then8, %if.then8
  br label %sw.epilog11, !dbg !6451

sw.default10:                                     ; preds = %if.then8
  br label %pm_put, !dbg !6453

sw.epilog11:                                      ; preds = %sw.bb9
  br label %if.end12, !dbg !6454

if.end12:                                         ; preds = %sw.epilog11, %if.end5
  %13 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6455
  call void @cdns3_role_stop(%struct.cdns3* %13) #8, !dbg !6456
  %14 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6457
  %15 = load i32, i32* %role.addr, align 4, !dbg !6458
  %call13 = call i32 @cdns3_role_start(%struct.cdns3* %14, i32 %15) #8, !dbg !6459
  store i32 %call13, i32* %ret, align 4, !dbg !6460
  %16 = load i32, i32* %ret, align 4, !dbg !6461
  %tobool = icmp ne i32 %16, 0, !dbg !6461
  br i1 %tobool, label %if.then14, label %if.end16, !dbg !6463

if.then14:                                        ; preds = %if.end12
  %17 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6464
  %dev15 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %17, i32 0, i32 0, !dbg !6464
  %18 = load %struct.device*, %struct.device** %dev15, align 8, !dbg !6464
  %19 = load i32, i32* %role.addr, align 4, !dbg !6464
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i32 %19) #9, !dbg !6464
  br label %if.end16, !dbg !6464

if.end16:                                         ; preds = %if.then14, %if.end12
  br label %pm_put, !dbg !6461

pm_put:                                           ; preds = %if.end16, %sw.default10, %sw.default, %if.then
  call void @llvm.dbg.label(metadata !6465), !dbg !6466
  %20 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6467
  %dev17 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %20, i32 0, i32 0, !dbg !6468
  %21 = load %struct.device*, %struct.device** %dev17, align 8, !dbg !6468
  %call18 = call i32 @pm_runtime_put_sync(%struct.device* %21) #8, !dbg !6469
  %22 = load i32, i32* %ret, align 4, !dbg !6470
  ret i32 %22, !dbg !6471
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cdns3_role_get(%struct.usb_role_switch* %sw) #0 !dbg !6472 {
entry:
  %sw.addr = alloca %struct.usb_role_switch*, align 8
  %cdns = alloca %struct.cdns3*, align 8
  store %struct.usb_role_switch* %sw, %struct.usb_role_switch** %sw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_role_switch** %sw.addr, metadata !6473, metadata !DIExpression()), !dbg !6474
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns, metadata !6475, metadata !DIExpression()), !dbg !6476
  %0 = load %struct.usb_role_switch*, %struct.usb_role_switch** %sw.addr, align 8, !dbg !6477
  %call = call i8* @usb_role_switch_get_drvdata(%struct.usb_role_switch* %0) #8, !dbg !6478
  %1 = bitcast i8* %call to %struct.cdns3*, !dbg !6478
  store %struct.cdns3* %1, %struct.cdns3** %cdns, align 8, !dbg !6476
  %2 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6479
  %role = getelementptr inbounds %struct.cdns3, %struct.cdns3* %2, i32 0, i32 14, !dbg !6480
  %3 = load i32, i32* %role, align 8, !dbg !6480
  ret i32 %3, !dbg !6481
}

; Function Attrs: noredzone
declare dso_local %struct.usb_role_switch* @usb_role_switch_register(%struct.device*, %struct.usb_role_switch_desc*) #4

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_request_irq(%struct.device* %dev, i32 %irq, i32 (i32, i8*)* %handler, i64 %irqflags, i8* %devname, i8* %dev_id) #0 !dbg !6482 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %irqflags.addr = alloca i64, align 8
  %devname.addr = alloca i8*, align 8
  %dev_id.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6491, metadata !DIExpression()), !dbg !6492
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !6493, metadata !DIExpression()), !dbg !6494
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !6495, metadata !DIExpression()), !dbg !6496
  store i64 %irqflags, i64* %irqflags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %irqflags.addr, metadata !6497, metadata !DIExpression()), !dbg !6498
  store i8* %devname, i8** %devname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %devname.addr, metadata !6499, metadata !DIExpression()), !dbg !6500
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !6501, metadata !DIExpression()), !dbg !6502
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6503
  %1 = load i32, i32* %irq.addr, align 4, !dbg !6504
  %2 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !6505
  %3 = load i64, i64* %irqflags.addr, align 8, !dbg !6506
  %4 = load i8*, i8** %devname.addr, align 8, !dbg !6507
  %5 = load i8*, i8** %dev_id.addr, align 8, !dbg !6508
  %call = call i32 @devm_request_threaded_irq(%struct.device* %0, i32 %1, i32 (i32, i8*)* %2, i32 (i32, i8*)* null, i64 %3, i8* %4, i8* %5) #8, !dbg !6509
  ret i32 %call, !dbg !6510
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cdns3_wakeup_irq(i32 %irq, i8* %data) #0 !dbg !6511 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %cdns = alloca %struct.cdns3*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !6512, metadata !DIExpression()), !dbg !6513
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6514, metadata !DIExpression()), !dbg !6515
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns, metadata !6516, metadata !DIExpression()), !dbg !6517
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6518
  %1 = bitcast i8* %0 to %struct.cdns3*, !dbg !6518
  store %struct.cdns3* %1, %struct.cdns3** %cdns, align 8, !dbg !6517
  %2 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6519
  %in_lpm = getelementptr inbounds %struct.cdns3, %struct.cdns3* %2, i32 0, i32 22, !dbg !6521
  %3 = load i8, i8* %in_lpm, align 8, !dbg !6521
  %tobool = trunc i8 %3 to i1, !dbg !6521
  br i1 %tobool, label %if.then, label %if.end4, !dbg !6522

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %irq.addr, align 4, !dbg !6523
  call void @disable_irq_nosync(i32 %4) #8, !dbg !6525
  %5 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6526
  %wakeup_pending = getelementptr inbounds %struct.cdns3, %struct.cdns3* %5, i32 0, i32 23, !dbg !6527
  store i8 1, i8* %wakeup_pending, align 1, !dbg !6528
  %6 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6529
  %role = getelementptr inbounds %struct.cdns3, %struct.cdns3* %6, i32 0, i32 14, !dbg !6531
  %7 = load i32, i32* %role, align 8, !dbg !6531
  %cmp = icmp eq i32 %7, 1, !dbg !6532
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6533

land.lhs.true:                                    ; preds = %if.then
  %8 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6534
  %host_dev = getelementptr inbounds %struct.cdns3, %struct.cdns3* %8, i32 0, i32 15, !dbg !6535
  %9 = load %struct.platform_device*, %struct.platform_device** %host_dev, align 8, !dbg !6535
  %tobool1 = icmp ne %struct.platform_device* %9, null, !dbg !6534
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !6536

if.then2:                                         ; preds = %land.lhs.true
  %10 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !6537
  %host_dev3 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %10, i32 0, i32 15, !dbg !6538
  %11 = load %struct.platform_device*, %struct.platform_device** %host_dev3, align 8, !dbg !6538
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 3, !dbg !6539
  %call = call i32 @pm_request_resume(%struct.device* %dev) #8, !dbg !6540
  br label %if.end, !dbg !6540

if.end:                                           ; preds = %if.then2, %land.lhs.true, %if.then
  store i32 1, i32* %retval, align 4, !dbg !6541
  br label %return, !dbg !6541

if.end4:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6542
  br label %return, !dbg !6542

return:                                           ; preds = %if.end4, %if.end
  %12 = load i32, i32* %retval, align 4, !dbg !6543
  ret i32 %12, !dbg !6543
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !6544 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6547, metadata !DIExpression()), !dbg !6548
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6549
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !6551
  %1 = load i8*, i8** %init_name, align 8, !dbg !6551
  %tobool = icmp ne i8* %1, null, !dbg !6549
  br i1 %tobool, label %if.then, label %if.end, !dbg !6552

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6553
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !6554
  %3 = load i8*, i8** %init_name1, align 8, !dbg !6554
  store i8* %3, i8** %retval, align 8, !dbg !6555
  br label %return, !dbg !6555

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6556
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !6557
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #8, !dbg !6558
  store i8* %call, i8** %retval, align 8, !dbg !6559
  br label %return, !dbg !6559

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !6560
  ret i8* %5, !dbg !6560
}

; Function Attrs: noredzone
declare dso_local i32 @cdns3_drd_init(%struct.cdns3*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cdns3_core_init_role(%struct.cdns3* %cdns) #0 !dbg !6561 {
entry:
  %retval = alloca i32, align 4
  %cdns.addr = alloca %struct.cdns3*, align 8
  %dev = alloca %struct.device*, align 8
  %best_dr_mode = alloca i32, align 4
  %dr_mode = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.cdns3* %cdns, %struct.cdns3** %cdns.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns.addr, metadata !6562, metadata !DIExpression()), !dbg !6563
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !6564, metadata !DIExpression()), !dbg !6565
  %0 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6566
  %dev1 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %0, i32 0, i32 0, !dbg !6567
  %1 = load %struct.device*, %struct.device** %dev1, align 8, !dbg !6567
  store %struct.device* %1, %struct.device** %dev, align 8, !dbg !6565
  call void @llvm.dbg.declare(metadata i32* %best_dr_mode, metadata !6568, metadata !DIExpression()), !dbg !6569
  call void @llvm.dbg.declare(metadata i32* %dr_mode, metadata !6570, metadata !DIExpression()), !dbg !6571
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6572, metadata !DIExpression()), !dbg !6573
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6574
  %call = call i32 @usb_get_dr_mode(%struct.device* %2) #8, !dbg !6575
  store i32 %call, i32* %dr_mode, align 4, !dbg !6576
  %3 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6577
  %role = getelementptr inbounds %struct.cdns3, %struct.cdns3* %3, i32 0, i32 14, !dbg !6578
  store i32 0, i32* %role, align 8, !dbg !6579
  %4 = load i32, i32* %dr_mode, align 4, !dbg !6580
  %cmp = icmp eq i32 %4, 0, !dbg !6582
  br i1 %cmp, label %if.then, label %if.end, !dbg !6583

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !6584

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6586
  %dr_mode2 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %5, i32 0, i32 20, !dbg !6587
  %6 = load i32, i32* %dr_mode2, align 8, !dbg !6587
  store i32 %6, i32* %best_dr_mode, align 4, !dbg !6588
  %7 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6589
  %call3 = call i32 @cdns3_idle_init(%struct.cdns3* %7) #8, !dbg !6590
  store i32 %call3, i32* %ret, align 4, !dbg !6591
  %8 = load i32, i32* %ret, align 4, !dbg !6592
  %tobool = icmp ne i32 %8, 0, !dbg !6592
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !6594

if.then4:                                         ; preds = %if.end
  %9 = load i32, i32* %ret, align 4, !dbg !6595
  store i32 %9, i32* %retval, align 4, !dbg !6596
  br label %return, !dbg !6596

if.end5:                                          ; preds = %if.end
  %10 = load i32, i32* %dr_mode, align 4, !dbg !6597
  %cmp6 = icmp eq i32 %10, 3, !dbg !6599
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !6600

if.then7:                                         ; preds = %if.end5
  %11 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6601
  %dr_mode8 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %11, i32 0, i32 20, !dbg !6603
  %12 = load i32, i32* %dr_mode8, align 8, !dbg !6603
  store i32 %12, i32* %best_dr_mode, align 4, !dbg !6604
  br label %if.end18, !dbg !6605

if.else:                                          ; preds = %if.end5
  %13 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6606
  %dr_mode9 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %13, i32 0, i32 20, !dbg !6608
  %14 = load i32, i32* %dr_mode9, align 8, !dbg !6608
  %cmp10 = icmp eq i32 %14, 3, !dbg !6609
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !6610

if.then11:                                        ; preds = %if.else
  %15 = load i32, i32* %dr_mode, align 4, !dbg !6611
  store i32 %15, i32* %best_dr_mode, align 4, !dbg !6613
  br label %if.end17, !dbg !6614

if.else12:                                        ; preds = %if.else
  %16 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6615
  %dr_mode13 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %16, i32 0, i32 20, !dbg !6617
  %17 = load i32, i32* %dr_mode13, align 8, !dbg !6617
  %18 = load i32, i32* %dr_mode, align 4, !dbg !6618
  %cmp14 = icmp ne i32 %17, %18, !dbg !6619
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !6620

if.then15:                                        ; preds = %if.else12
  %19 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6621
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0)) #9, !dbg !6621
  store i32 -22, i32* %retval, align 4, !dbg !6623
  br label %return, !dbg !6623

if.end16:                                         ; preds = %if.else12
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then11
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then7
  %20 = load i32, i32* %best_dr_mode, align 4, !dbg !6624
  store i32 %20, i32* %dr_mode, align 4, !dbg !6625
  %21 = load i32, i32* %dr_mode, align 4, !dbg !6626
  %cmp19 = icmp eq i32 %21, 3, !dbg !6628
  br i1 %cmp19, label %if.then21, label %lor.lhs.false, !dbg !6629

lor.lhs.false:                                    ; preds = %if.end18
  %22 = load i32, i32* %dr_mode, align 4, !dbg !6630
  %cmp20 = icmp eq i32 %22, 1, !dbg !6631
  br i1 %cmp20, label %if.then21, label %if.end26, !dbg !6632

if.then21:                                        ; preds = %lor.lhs.false, %if.end18
  %23 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6633
  %call22 = call i32 @cdns3_host_init(%struct.cdns3* %23) #8, !dbg !6635
  store i32 %call22, i32* %ret, align 4, !dbg !6636
  %24 = load i32, i32* %ret, align 4, !dbg !6637
  %tobool23 = icmp ne i32 %24, 0, !dbg !6637
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !6639

if.then24:                                        ; preds = %if.then21
  %25 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6640
  %26 = load i32, i32* %ret, align 4, !dbg !6640
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0), i32 %26) #9, !dbg !6640
  br label %err, !dbg !6642

if.end25:                                         ; preds = %if.then21
  br label %if.end26, !dbg !6643

if.end26:                                         ; preds = %if.end25, %lor.lhs.false
  %27 = load i32, i32* %dr_mode, align 4, !dbg !6644
  %cmp27 = icmp eq i32 %27, 3, !dbg !6646
  br i1 %cmp27, label %if.then30, label %lor.lhs.false28, !dbg !6647

lor.lhs.false28:                                  ; preds = %if.end26
  %28 = load i32, i32* %dr_mode, align 4, !dbg !6648
  %cmp29 = icmp eq i32 %28, 2, !dbg !6649
  br i1 %cmp29, label %if.then30, label %if.end35, !dbg !6650

if.then30:                                        ; preds = %lor.lhs.false28, %if.end26
  %29 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6651
  %call31 = call i32 @cdns3_gadget_init(%struct.cdns3* %29) #8, !dbg !6653
  store i32 %call31, i32* %ret, align 4, !dbg !6654
  %30 = load i32, i32* %ret, align 4, !dbg !6655
  %tobool32 = icmp ne i32 %30, 0, !dbg !6655
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !6657

if.then33:                                        ; preds = %if.then30
  %31 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6658
  %32 = load i32, i32* %ret, align 4, !dbg !6658
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0), i32 %32) #9, !dbg !6658
  br label %err, !dbg !6660

if.end34:                                         ; preds = %if.then30
  br label %if.end35, !dbg !6661

if.end35:                                         ; preds = %if.end34, %lor.lhs.false28
  %33 = load i32, i32* %dr_mode, align 4, !dbg !6662
  %34 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6663
  %dr_mode36 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %34, i32 0, i32 20, !dbg !6664
  store i32 %33, i32* %dr_mode36, align 8, !dbg !6665
  %35 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6666
  %call37 = call i32 @cdns3_drd_update_mode(%struct.cdns3* %35) #8, !dbg !6667
  store i32 %call37, i32* %ret, align 4, !dbg !6668
  %36 = load i32, i32* %ret, align 4, !dbg !6669
  %tobool38 = icmp ne i32 %36, 0, !dbg !6669
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !6671

if.then39:                                        ; preds = %if.end35
  br label %err, !dbg !6672

if.end40:                                         ; preds = %if.end35
  %37 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6673
  %call41 = call i32 @cdns3_role_start(%struct.cdns3* %37, i32 0) #8, !dbg !6674
  store i32 %call41, i32* %ret, align 4, !dbg !6675
  %38 = load i32, i32* %ret, align 4, !dbg !6676
  %tobool42 = icmp ne i32 %38, 0, !dbg !6676
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !6678

if.then43:                                        ; preds = %if.end40
  br label %err, !dbg !6679

if.end44:                                         ; preds = %if.end40
  %39 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6680
  %dr_mode45 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %39, i32 0, i32 20, !dbg !6681
  %40 = load i32, i32* %dr_mode45, align 8, !dbg !6681
  switch i32 %40, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb50
    i32 1, label %sw.bb55
  ], !dbg !6682

sw.bb:                                            ; preds = %if.end44
  %41 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6683
  %call46 = call i32 @cdns3_hw_role_switch(%struct.cdns3* %41) #8, !dbg !6685
  store i32 %call46, i32* %ret, align 4, !dbg !6686
  %42 = load i32, i32* %ret, align 4, !dbg !6687
  %tobool47 = icmp ne i32 %42, 0, !dbg !6687
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !6689

if.then48:                                        ; preds = %sw.bb
  br label %err, !dbg !6690

if.end49:                                         ; preds = %sw.bb
  br label %sw.epilog, !dbg !6691

sw.bb50:                                          ; preds = %if.end44
  %43 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6692
  %call51 = call i32 @cdns3_role_start(%struct.cdns3* %43, i32 2) #8, !dbg !6693
  store i32 %call51, i32* %ret, align 4, !dbg !6694
  %44 = load i32, i32* %ret, align 4, !dbg !6695
  %tobool52 = icmp ne i32 %44, 0, !dbg !6695
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !6697

if.then53:                                        ; preds = %sw.bb50
  br label %err, !dbg !6698

if.end54:                                         ; preds = %sw.bb50
  br label %sw.epilog, !dbg !6699

sw.bb55:                                          ; preds = %if.end44
  %45 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6700
  %call56 = call i32 @cdns3_role_start(%struct.cdns3* %45, i32 1) #8, !dbg !6701
  store i32 %call56, i32* %ret, align 4, !dbg !6702
  %46 = load i32, i32* %ret, align 4, !dbg !6703
  %tobool57 = icmp ne i32 %46, 0, !dbg !6703
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !6705

if.then58:                                        ; preds = %sw.bb55
  br label %err, !dbg !6706

if.end59:                                         ; preds = %sw.bb55
  br label %sw.epilog, !dbg !6707

sw.default:                                       ; preds = %if.end44
  store i32 -22, i32* %ret, align 4, !dbg !6708
  br label %err, !dbg !6709

sw.epilog:                                        ; preds = %if.end59, %if.end54, %if.end49
  store i32 0, i32* %retval, align 4, !dbg !6710
  br label %return, !dbg !6710

err:                                              ; preds = %sw.default, %if.then58, %if.then53, %if.then48, %if.then43, %if.then39, %if.then33, %if.then24
  call void @llvm.dbg.label(metadata !6711), !dbg !6712
  %47 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6713
  call void @cdns3_exit_roles(%struct.cdns3* %47) #8, !dbg !6714
  %48 = load i32, i32* %ret, align 4, !dbg !6715
  store i32 %48, i32* %retval, align 4, !dbg !6716
  br label %return, !dbg !6716

return:                                           ; preds = %err, %sw.epilog, %if.then15, %if.then4
  %49 = load i32, i32* %retval, align 4, !dbg !6717
  ret i32 %49, !dbg !6717
}

; Function Attrs: noredzone
declare dso_local void @device_set_wakeup_capable(%struct.device*, i1 zeroext) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_set_active(%struct.device* %dev) #0 !dbg !6718 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6719, metadata !DIExpression()), !dbg !6720
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6721
  %call = call i32 @__pm_runtime_set_status(%struct.device* %0, i32 0) #8, !dbg !6722
  ret i32 %call, !dbg !6723
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_enable(%struct.device*) #4

; Function Attrs: noredzone
declare dso_local void @pm_runtime_forbid(%struct.device*) #4

; Function Attrs: noredzone
declare dso_local void @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_mark_last_busy(%struct.device* %dev) #0 !dbg !6724 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6725, metadata !DIExpression()), !dbg !6726
  br label %do.body, !dbg !6727

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6728

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6730

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6728

do.body2:                                         ; preds = %do.end
  %call = call i64 @ktime_get_mono_fast_ns() #8, !dbg !6732
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6732
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !6732
  %last_busy = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 21, !dbg !6732
  store volatile i64 %call, i64* %last_busy, align 8, !dbg !6732
  br label %do.end3, !dbg !6732

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6728

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !6734
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_use_autosuspend(%struct.device* %dev) #0 !dbg !6735 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6736, metadata !DIExpression()), !dbg !6737
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6738
  call void @__pm_runtime_use_autosuspend(%struct.device* %0, i1 zeroext true) #8, !dbg !6739
  ret void, !dbg !6740
}

; Function Attrs: noredzone
declare dso_local i32 @cdns3_drd_exit(%struct.cdns3*) #4

; Function Attrs: noredzone
declare dso_local void @usb_role_switch_unregister(%struct.usb_role_switch*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_phy_power_off(%struct.cdns3* %cdns) #0 !dbg !6741 {
entry:
  %cdns.addr = alloca %struct.cdns3*, align 8
  store %struct.cdns3* %cdns, %struct.cdns3** %cdns.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns.addr, metadata !6742, metadata !DIExpression()), !dbg !6743
  %0 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6744
  %usb3_phy = getelementptr inbounds %struct.cdns3, %struct.cdns3* %0, i32 0, i32 18, !dbg !6745
  %1 = load %struct.phy*, %struct.phy** %usb3_phy, align 8, !dbg !6745
  %call = call i32 @phy_power_off(%struct.phy* %1) #8, !dbg !6746
  %2 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6747
  %usb2_phy = getelementptr inbounds %struct.cdns3, %struct.cdns3* %2, i32 0, i32 17, !dbg !6748
  %3 = load %struct.phy*, %struct.phy** %usb2_phy, align 8, !dbg !6748
  %call1 = call i32 @phy_power_off(%struct.phy* %3) #8, !dbg !6749
  ret void, !dbg !6750
}

; Function Attrs: noredzone
declare dso_local i32 @phy_exit(%struct.phy*) #4

; Function Attrs: noredzone
declare dso_local i32 @dma_set_mask(%struct.device*, i64) #4

; Function Attrs: noredzone
declare dso_local i32 @dma_set_coherent_mask(%struct.device*, i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !6751 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6754, metadata !DIExpression()), !dbg !6755
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6756, metadata !DIExpression()), !dbg !6757
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6758
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6759
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !6760
  store i8* %0, i8** %driver_data, align 8, !dbg !6761
  ret void, !dbg !6762
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @device_property_present(%struct.device*, i8*) #4

; Function Attrs: noredzone
declare dso_local i32 @phy_power_on(%struct.phy*) #4

; Function Attrs: noredzone
declare dso_local i32 @phy_power_off(%struct.phy*) #4

; Function Attrs: noredzone
declare dso_local i8* @usb_role_switch_get_drvdata(%struct.usb_role_switch*) #4

; Function Attrs: noredzone
declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #4

; Function Attrs: noredzone
declare dso_local void @disable_irq_nosync(i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_request_resume(%struct.device* %dev) #0 !dbg !6763 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6764, metadata !DIExpression()), !dbg !6765
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6766
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 1) #8, !dbg !6767
  ret i32 %call, !dbg !6768
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !6769 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !6774, metadata !DIExpression()), !dbg !6775
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !6776
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !6777
  %1 = load i8*, i8** %name, align 8, !dbg !6777
  ret i8* %1, !dbg !6778
}

; Function Attrs: noredzone
declare dso_local i32 @usb_get_dr_mode(%struct.device*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cdns3_idle_init(%struct.cdns3* %cdns) #0 !dbg !6779 {
entry:
  %retval = alloca i32, align 4
  %cdns.addr = alloca %struct.cdns3*, align 8
  %rdrv = alloca %struct.cdns3_role_driver*, align 8
  store %struct.cdns3* %cdns, %struct.cdns3** %cdns.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns.addr, metadata !6780, metadata !DIExpression()), !dbg !6781
  call void @llvm.dbg.declare(metadata %struct.cdns3_role_driver** %rdrv, metadata !6782, metadata !DIExpression()), !dbg !6783
  %0 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6784
  %dev = getelementptr inbounds %struct.cdns3, %struct.cdns3* %0, i32 0, i32 0, !dbg !6785
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6785
  %call = call i8* @devm_kzalloc(%struct.device* %1, i64 48, i32 3264) #8, !dbg !6786
  %2 = bitcast i8* %call to %struct.cdns3_role_driver*, !dbg !6786
  store %struct.cdns3_role_driver* %2, %struct.cdns3_role_driver** %rdrv, align 8, !dbg !6787
  %3 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %rdrv, align 8, !dbg !6788
  %tobool = icmp ne %struct.cdns3_role_driver* %3, null, !dbg !6788
  br i1 %tobool, label %if.end, label %if.then, !dbg !6790

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !6791
  br label %return, !dbg !6791

if.end:                                           ; preds = %entry
  %4 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %rdrv, align 8, !dbg !6792
  %start = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %4, i32 0, i32 0, !dbg !6793
  %start1 = bitcast {}** %start to i32 (%struct.cdns3*)**, !dbg !6793
  store i32 (%struct.cdns3*)* @cdns3_idle_role_start, i32 (%struct.cdns3*)** %start1, align 8, !dbg !6794
  %5 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %rdrv, align 8, !dbg !6795
  %stop = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %5, i32 0, i32 1, !dbg !6796
  store void (%struct.cdns3*)* @cdns3_idle_role_stop, void (%struct.cdns3*)** %stop, align 8, !dbg !6797
  %6 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %rdrv, align 8, !dbg !6798
  %state = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %6, i32 0, i32 5, !dbg !6799
  store i32 0, i32* %state, align 8, !dbg !6800
  %7 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %rdrv, align 8, !dbg !6801
  %suspend = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %7, i32 0, i32 2, !dbg !6802
  store i32 (%struct.cdns3*, i1)* null, i32 (%struct.cdns3*, i1)** %suspend, align 8, !dbg !6803
  %8 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %rdrv, align 8, !dbg !6804
  %resume = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %8, i32 0, i32 3, !dbg !6805
  store i32 (%struct.cdns3*, i1)* null, i32 (%struct.cdns3*, i1)** %resume, align 8, !dbg !6806
  %9 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %rdrv, align 8, !dbg !6807
  %name = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %9, i32 0, i32 4, !dbg !6808
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8** %name, align 8, !dbg !6809
  %10 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %rdrv, align 8, !dbg !6810
  %11 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6811
  %roles = getelementptr inbounds %struct.cdns3, %struct.cdns3* %11, i32 0, i32 13, !dbg !6812
  %arrayidx = getelementptr [3 x %struct.cdns3_role_driver*], [3 x %struct.cdns3_role_driver*]* %roles, i64 0, i64 0, !dbg !6811
  store %struct.cdns3_role_driver* %10, %struct.cdns3_role_driver** %arrayidx, align 8, !dbg !6813
  store i32 0, i32* %retval, align 4, !dbg !6814
  br label %return, !dbg !6814

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !6815
  ret i32 %12, !dbg !6815
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cdns3_host_init(%struct.cdns3* %cdns) #0 !dbg !6816 {
entry:
  %cdns.addr = alloca %struct.cdns3*, align 8
  store %struct.cdns3* %cdns, %struct.cdns3** %cdns.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns.addr, metadata !6818, metadata !DIExpression()), !dbg !6819
  ret i32 -6, !dbg !6820
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cdns3_gadget_init(%struct.cdns3* %cdns) #0 !dbg !6821 {
entry:
  %cdns.addr = alloca %struct.cdns3*, align 8
  store %struct.cdns3* %cdns, %struct.cdns3** %cdns.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns.addr, metadata !6823, metadata !DIExpression()), !dbg !6824
  ret i32 -6, !dbg !6825
}

; Function Attrs: noredzone
declare dso_local i32 @cdns3_drd_update_mode(%struct.cdns3*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cdns3_exit_roles(%struct.cdns3* %cdns) #0 !dbg !6826 {
entry:
  %cdns.addr = alloca %struct.cdns3*, align 8
  store %struct.cdns3* %cdns, %struct.cdns3** %cdns.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns.addr, metadata !6827, metadata !DIExpression()), !dbg !6828
  %0 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6829
  call void @cdns3_role_stop(%struct.cdns3* %0) #8, !dbg !6830
  %1 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6831
  %call = call i32 @cdns3_drd_exit(%struct.cdns3* %1) #8, !dbg !6832
  ret void, !dbg !6833
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cdns3_idle_role_start(%struct.cdns3* %cdns) #0 !dbg !6834 {
entry:
  %cdns.addr = alloca %struct.cdns3*, align 8
  store %struct.cdns3* %cdns, %struct.cdns3** %cdns.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns.addr, metadata !6835, metadata !DIExpression()), !dbg !6836
  ret i32 0, !dbg !6837
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cdns3_idle_role_stop(%struct.cdns3* %cdns) #0 !dbg !6838 {
entry:
  %cdns.addr = alloca %struct.cdns3*, align 8
  store %struct.cdns3* %cdns, %struct.cdns3** %cdns.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns.addr, metadata !6839, metadata !DIExpression()), !dbg !6840
  %0 = load %struct.cdns3*, %struct.cdns3** %cdns.addr, align 8, !dbg !6841
  %usb3_phy = getelementptr inbounds %struct.cdns3, %struct.cdns3* %0, i32 0, i32 18, !dbg !6842
  %1 = load %struct.phy*, %struct.phy** %usb3_phy, align 8, !dbg !6842
  %call = call i32 @phy_reset(%struct.phy* %1) #8, !dbg !6843
  ret void, !dbg !6844
}

; Function Attrs: noredzone
declare dso_local i32 @phy_reset(%struct.phy*) #4

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_set_status(%struct.device*, i32) #4

; Function Attrs: noredzone
declare dso_local i64 @ktime_get_mono_fast_ns() #4

; Function Attrs: noredzone
declare dso_local void @__pm_runtime_use_autosuspend(%struct.device*, i1 zeroext) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #0 !dbg !6845 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !6850, metadata !DIExpression()), !dbg !6851
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6852
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !6853
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #8, !dbg !6854
  ret i8* %call, !dbg !6855
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_disable(%struct.device* %dev) #0 !dbg !6856 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6857, metadata !DIExpression()), !dbg !6858
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6859
  call void @__pm_runtime_disable(%struct.device* %0, i1 zeroext true) #8, !dbg !6860
  ret void, !dbg !6861
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_put_noidle(%struct.device* %dev) #0 !dbg !6862 {
entry:
  %v.addr.i5.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i5.i.i.i, metadata !6863, metadata !DIExpression()), !dbg !6869
  %old.addr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %old.addr.i.i.i.i, metadata !6883, metadata !DIExpression()), !dbg !6884
  %new.addr.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %new.addr.i.i.i.i, metadata !6885, metadata !DIExpression()), !dbg !6886
  %success.i.i.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %success.i.i.i.i, metadata !6887, metadata !DIExpression()), !dbg !6889
  %_old.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %_old.i.i.i.i, metadata !6890, metadata !DIExpression()), !dbg !6889
  %__old.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__old.i.i.i.i, metadata !6891, metadata !DIExpression()), !dbg !6889
  %__new.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__new.i.i.i.i, metadata !6892, metadata !DIExpression()), !dbg !6889
  %__ptr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %__ptr.i.i.i.i, metadata !6893, metadata !DIExpression()), !dbg !6889
  %tmp.i.i.i.i = alloca i64, align 8
  %v.addr.i.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i.i, metadata !6894, metadata !DIExpression()), !dbg !6900
  %v.addr.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i, metadata !6902, metadata !DIExpression()), !dbg !6903
  %a.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i.i, metadata !6904, metadata !DIExpression()), !dbg !6905
  %u.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i.i, metadata !6906, metadata !DIExpression()), !dbg !6907
  %c.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %c.i.i.i, metadata !6908, metadata !DIExpression()), !dbg !6909
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !6910, metadata !DIExpression()), !dbg !6911
  %a.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i, metadata !6912, metadata !DIExpression()), !dbg !6913
  %u.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i, metadata !6914, metadata !DIExpression()), !dbg !6915
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !6916, metadata !DIExpression()), !dbg !6924
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6926, metadata !DIExpression()), !dbg !6927
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !6928, metadata !DIExpression()), !dbg !6929
  %a.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i, metadata !6930, metadata !DIExpression()), !dbg !6931
  %u.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i, metadata !6932, metadata !DIExpression()), !dbg !6933
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6934, metadata !DIExpression()), !dbg !6935
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6936
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !6937
  %usage_count = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 13, !dbg !6938
  store %struct.atomic_t* %usage_count, %struct.atomic_t** %v.addr.i, align 8
  store i32 -1, i32* %a.addr.i, align 4
  store i32 0, i32* %u.addr.i, align 4
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6939
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !6939
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6940
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !6941
  %conv.i.i = trunc i64 %4 to i32, !dbg !6941
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #10, !dbg !6942
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6943
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !6943
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #10, !dbg !6943
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6944
  %8 = load i32, i32* %a.addr.i, align 4, !dbg !6945
  %9 = load i32, i32* %u.addr.i, align 4, !dbg !6946
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %8, i32* %a.addr.i.i, align 4
  store i32 %9, i32* %u.addr.i.i, align 4
  %10 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6947
  %11 = load i32, i32* %a.addr.i.i, align 4, !dbg !6948
  %12 = load i32, i32* %u.addr.i.i, align 4, !dbg !6949
  store %struct.atomic_t* %10, %struct.atomic_t** %v.addr.i.i.i, align 8
  store i32 %11, i32* %a.addr.i.i.i, align 4
  store i32 %12, i32* %u.addr.i.i.i, align 4
  %13 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !6950
  store %struct.atomic_t* %13, %struct.atomic_t** %v.addr.i.i.i.i, align 8
  %14 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i.i, align 8, !dbg !6951
  %counter.i.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %14, i32 0, i32 0, !dbg !6951
  %15 = load volatile i32, i32* %counter.i.i.i.i, align 4, !dbg !6951
  store i32 %15, i32* %c.i.i.i, align 4, !dbg !6909
  br label %do.body.i.i.i, !dbg !6952

do.body.i.i.i:                                    ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %entry
  %16 = load i32, i32* %c.i.i.i, align 4, !dbg !6953
  %17 = load i32, i32* %u.addr.i.i.i, align 4, !dbg !6953
  %cmp.i.i.i = icmp eq i32 %16, %17, !dbg !6953
  %lnot.i.i.i = xor i1 %cmp.i.i.i, true, !dbg !6953
  %lnot.ext.i.i.i = zext i1 %cmp.i.i.i to i32, !dbg !6953
  %conv.i.i.i = sext i32 %lnot.ext.i.i.i to i64, !dbg !6953
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i, !dbg !6956

if.then.i.i.i:                                    ; preds = %do.body.i.i.i
  br label %atomic_add_unless.exit, !dbg !6957

if.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %18 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !6958
  %19 = load i32, i32* %c.i.i.i, align 4, !dbg !6959
  %20 = load i32, i32* %a.addr.i.i.i, align 4, !dbg !6960
  %add.i.i.i = add i32 %19, %20, !dbg !6961
  store %struct.atomic_t* %18, %struct.atomic_t** %v.addr.i5.i.i.i, align 8
  store i32* %c.i.i.i, i32** %old.addr.i.i.i.i, align 8
  store i32 %add.i.i.i, i32* %new.addr.i.i.i.i, align 4
  %21 = load i32*, i32** %old.addr.i.i.i.i, align 8, !dbg !6889
  store i32* %21, i32** %_old.i.i.i.i, align 8, !dbg !6889
  %22 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !6889
  %23 = load i32, i32* %22, align 4, !dbg !6889
  store i32 %23, i32* %__old.i.i.i.i, align 4, !dbg !6889
  %24 = load i32, i32* %new.addr.i.i.i.i, align 4, !dbg !6889
  store i32 %24, i32* %__new.i.i.i.i, align 4, !dbg !6889
  %25 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i5.i.i.i, align 8, !dbg !6889
  %counter.i6.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %25, i32 0, i32 0, !dbg !6889
  store i32* %counter.i6.i.i.i, i32** %__ptr.i.i.i.i, align 8, !dbg !6889
  %26 = load i32*, i32** %__ptr.i.i.i.i, align 8, !dbg !6889
  %27 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !6889
  %28 = load i32, i32* %__new.i.i.i.i, align 4, !dbg !6889
  %29 = call { i8, i32 } asm sideeffect "cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %26, i32 %28, i32* %26, i32 %27) #7, !dbg !6889, !srcloc !6962
  %asmresult.i.i.i.i = extractvalue { i8, i32 } %29, 0, !dbg !6889
  %asmresult1.i.i.i.i = extractvalue { i8, i32 } %29, 1, !dbg !6889
  store i8 %asmresult.i.i.i.i, i8* %success.i.i.i.i, align 1, !dbg !6889
  store i32 %asmresult1.i.i.i.i, i32* %__old.i.i.i.i, align 4, !dbg !6889
  %30 = load i8, i8* %success.i.i.i.i, align 1, !dbg !6963
  %tobool.i.i.i.i = trunc i8 %30 to i1, !dbg !6963
  %lnot.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !6963
  %lnot3.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !6963
  %lnot.ext.i.i.i.i = zext i1 %lnot3.i.i.i.i to i32, !dbg !6963
  %conv.i.i.i.i = sext i32 %lnot.ext.i.i.i.i to i64, !dbg !6963
  br i1 %lnot3.i.i.i.i, label %if.then.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !6889

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  %31 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !6963
  %32 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !6963
  store i32 %31, i32* %32, align 4, !dbg !6963
  br label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !6963

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %if.then.i.i.i.i, %if.end.i.i.i
  %33 = load i8, i8* %success.i.i.i.i, align 1, !dbg !6889
  %tobool5.i.i.i.i = trunc i8 %33 to i1, !dbg !6889
  %lnot6.i.i.i.i = xor i1 %tobool5.i.i.i.i, true, !dbg !6889
  %lnot.ext9.i.i.i.i = zext i1 %tobool5.i.i.i.i to i32, !dbg !6889
  %conv10.i.i.i.i = sext i32 %lnot.ext9.i.i.i.i to i64, !dbg !6889
  store i64 %conv10.i.i.i.i, i64* %tmp.i.i.i.i, align 8, !dbg !6963
  %34 = load i64, i64* %tmp.i.i.i.i, align 8, !dbg !6889
  %tobool11.i.i.i.i = icmp ne i64 %34, 0, !dbg !6965
  %lnot3.i.i.i = xor i1 %tobool11.i.i.i.i, true, !dbg !6966
  br i1 %lnot3.i.i.i, label %do.body.i.i.i, label %atomic_add_unless.exit, !dbg !6967, !llvm.loop !6968

atomic_add_unless.exit:                           ; preds = %if.then.i.i.i, %arch_atomic_try_cmpxchg.exit.i.i.i
  %35 = load i32, i32* %c.i.i.i, align 4, !dbg !6970
  %36 = load i32, i32* %u.addr.i.i, align 4, !dbg !6971
  %cmp.i.i = icmp ne i32 %35, %36, !dbg !6972
  ret void, !dbg !6973
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !6974 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6975, metadata !DIExpression()), !dbg !6976
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6977
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6978
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6978
  ret i8* %1, !dbg !6979
}

; Function Attrs: noredzone
declare dso_local void @__pm_runtime_disable(%struct.device*, i1 zeroext) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !6980 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6984, metadata !DIExpression()), !dbg !6985
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6986, metadata !DIExpression()), !dbg !6987
  ret i1 true, !dbg !6988
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !6989 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6993, metadata !DIExpression()), !dbg !6994
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6995, metadata !DIExpression()), !dbg !6996
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6997, metadata !DIExpression()), !dbg !6998
  ret void, !dbg !6999
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cdns3_suspend(%struct.device* %dev) #0 !dbg !7000 {
entry:
  %lock.addr.i32 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i32, metadata !7001, metadata !DIExpression()), !dbg !7005
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !7009, metadata !DIExpression()), !dbg !7010
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5892, metadata !DIExpression()), !dbg !7011
  %dev.addr = alloca %struct.device*, align 8
  %cdns = alloca %struct.cdns3*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  %.compoundliteral = alloca %struct.pm_message, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7018, metadata !DIExpression()), !dbg !7019
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns, metadata !7020, metadata !DIExpression()), !dbg !7021
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7022
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !7023
  %1 = bitcast i8* %call to %struct.cdns3*, !dbg !7023
  store %struct.cdns3* %1, %struct.cdns3** %cdns, align 8, !dbg !7021
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !7024, metadata !DIExpression()), !dbg !7025
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7026
  %call1 = call zeroext i1 @pm_runtime_status_suspended(%struct.device* %2) #8, !dbg !7028
  br i1 %call1, label %if.then, label %if.end, !dbg !7029

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7030
  %call2 = call i32 @pm_runtime_resume(%struct.device* %3) #8, !dbg !7031
  br label %if.end, !dbg !7031

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7032
  %roles = getelementptr inbounds %struct.cdns3, %struct.cdns3* %4, i32 0, i32 13, !dbg !7033
  %5 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7034
  %role = getelementptr inbounds %struct.cdns3, %struct.cdns3* %5, i32 0, i32 14, !dbg !7035
  %6 = load i32, i32* %role, align 8, !dbg !7035
  %idxprom = zext i32 %6 to i64, !dbg !7032
  %arrayidx = getelementptr [3 x %struct.cdns3_role_driver*], [3 x %struct.cdns3_role_driver*]* %roles, i64 0, i64 %idxprom, !dbg !7032
  %7 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %arrayidx, align 8, !dbg !7032
  %suspend = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %7, i32 0, i32 2, !dbg !7036
  %8 = load i32 (%struct.cdns3*, i1)*, i32 (%struct.cdns3*, i1)** %suspend, align 8, !dbg !7036
  %tobool = icmp ne i32 (%struct.cdns3*, i1)* %8, null, !dbg !7032
  br i1 %tobool, label %if.then3, label %if.end30, !dbg !7037

if.then3:                                         ; preds = %if.end
  br label %do.body, !dbg !7038

do.body:                                          ; preds = %if.then3
  br label %do.body4, !dbg !7039

do.body4:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !7040, metadata !DIExpression()), !dbg !7042
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !7043, metadata !DIExpression()), !dbg !7042
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !7042
  %conv = zext i1 %cmp to i32, !dbg !7042
  store i32 1, i32* %tmp, align 4, !dbg !7042
  %9 = load i32, i32* %tmp, align 4, !dbg !7042
  br label %do.body5, !dbg !7044

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !7045

do.body6:                                         ; preds = %do.body5
  br label %do.body7, !dbg !7046

do.body7:                                         ; preds = %do.body6
  call void @llvm.dbg.declare(metadata i64* %__dummy8, metadata !7048, metadata !DIExpression()), !dbg !7051
  call void @llvm.dbg.declare(metadata i64* %__dummy29, metadata !7052, metadata !DIExpression()), !dbg !7051
  %cmp10 = icmp eq i64* %__dummy8, %__dummy29, !dbg !7051
  %conv11 = zext i1 %cmp10 to i32, !dbg !7051
  store i32 1, i32* %tmp12, align 4, !dbg !7051
  %10 = load i32, i32* %tmp12, align 4, !dbg !7051
  %call13 = call i64 @arch_local_irq_save() #8, !dbg !7053
  store i64 %call13, i64* %flags, align 8, !dbg !7053
  br label %do.end, !dbg !7053

do.end:                                           ; preds = %do.body7
  br label %do.end14, !dbg !7046

do.end14:                                         ; preds = %do.end
  br label %do.body15, !dbg !7045

do.body15:                                        ; preds = %do.end14
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !7054, !srcloc !7055
  br label %do.body16, !dbg !7054

do.body16:                                        ; preds = %do.body15
  %11 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7056
  %lock = getelementptr inbounds %struct.cdns3, %struct.cdns3* %11, i32 0, i32 25, !dbg !7056
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %12 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !7057
  %13 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %12, i32 0, i32 0, !dbg !7058
  %rlock.i = bitcast %union.anon.1* %13 to %struct.raw_spinlock*, !dbg !7058
  br label %do.end18, !dbg !7056

do.end18:                                         ; preds = %do.body16
  br label %do.end19, !dbg !7054

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !7045

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !7044

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !7039

do.end22:                                         ; preds = %do.end21
  %14 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7059
  %roles23 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %14, i32 0, i32 13, !dbg !7060
  %15 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7061
  %role24 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %15, i32 0, i32 14, !dbg !7062
  %16 = load i32, i32* %role24, align 8, !dbg !7062
  %idxprom25 = zext i32 %16 to i64, !dbg !7059
  %arrayidx26 = getelementptr [3 x %struct.cdns3_role_driver*], [3 x %struct.cdns3_role_driver*]* %roles23, i64 0, i64 %idxprom25, !dbg !7059
  %17 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %arrayidx26, align 8, !dbg !7059
  %suspend27 = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %17, i32 0, i32 2, !dbg !7063
  %18 = load i32 (%struct.cdns3*, i1)*, i32 (%struct.cdns3*, i1)** %suspend27, align 8, !dbg !7063
  %19 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7064
  %call28 = call i32 %18(%struct.cdns3* %19, i1 zeroext false) #8, !dbg !7059
  %20 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7065
  %lock29 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %20, i32 0, i32 25, !dbg !7066
  %21 = load i64, i64* %flags, align 8, !dbg !7067
  store %struct.spinlock* %lock29, %struct.spinlock** %lock.addr.i32, align 8
  store i64 %21, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !310, metadata !7068, metadata !DIExpression()) #7, !dbg !7071
  call void @llvm.dbg.declare(metadata !310, metadata !7072, metadata !DIExpression()) #7, !dbg !7071
  store i32 1, i32* %tmp.i, align 4, !dbg !7071
  %22 = load i32, i32* %tmp.i, align 4, !dbg !7071
  call void @llvm.dbg.declare(metadata !310, metadata !7073, metadata !DIExpression()) #7, !dbg !7078
  call void @llvm.dbg.declare(metadata !310, metadata !7079, metadata !DIExpression()) #7, !dbg !7078
  store i32 1, i32* %tmp8.i, align 4, !dbg !7078
  %23 = load i32, i32* %tmp8.i, align 4, !dbg !7078
  %24 = load i64, i64* %flags.addr.i, align 8, !dbg !7080
  call void @arch_local_irq_restore(i64 %24) #10, !dbg !7080
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !7081, !srcloc !7083
  %25 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i32, align 8, !dbg !7084
  %26 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %25, i32 0, i32 0, !dbg !7084
  %rlock.i33 = bitcast %union.anon.1* %26 to %struct.raw_spinlock*, !dbg !7084
  br label %if.end30, !dbg !7086

if.end30:                                         ; preds = %do.end22, %if.end
  %27 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7087
  %event = getelementptr inbounds %struct.pm_message, %struct.pm_message* %.compoundliteral, i32 0, i32 0, !dbg !7088
  store i32 2, i32* %event, align 4, !dbg !7088
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %.compoundliteral, i32 0, i32 0, !dbg !7089
  %28 = load i32, i32* %coerce.dive, align 4, !dbg !7089
  %call31 = call i32 @cdns3_controller_suspend(%struct.device* %27, i32 %28) #8, !dbg !7089
  ret i32 %call31, !dbg !7090
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cdns3_resume(%struct.device* %dev) #0 !dbg !7091 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %ret = alloca i32, align 4
  %.compoundliteral = alloca %struct.pm_message, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7092, metadata !DIExpression()), !dbg !7093
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !7094, metadata !DIExpression()), !dbg !7095
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7096
  %event = getelementptr inbounds %struct.pm_message, %struct.pm_message* %.compoundliteral, i32 0, i32 0, !dbg !7097
  store i32 16, i32* %event, align 4, !dbg !7097
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %.compoundliteral, i32 0, i32 0, !dbg !7098
  %1 = load i32, i32* %coerce.dive, align 4, !dbg !7098
  %call = call i32 @cdns3_controller_resume(%struct.device* %0, i32 %1) #8, !dbg !7098
  store i32 %call, i32* %ret, align 4, !dbg !7099
  %2 = load i32, i32* %ret, align 4, !dbg !7100
  %tobool = icmp ne i32 %2, 0, !dbg !7100
  br i1 %tobool, label %if.then, label %if.end, !dbg !7102

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !7103
  store i32 %3, i32* %retval, align 4, !dbg !7104
  br label %return, !dbg !7104

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7105
  call void @pm_runtime_disable(%struct.device* %4) #8, !dbg !7106
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7107
  %call1 = call i32 @pm_runtime_set_active(%struct.device* %5) #8, !dbg !7108
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7109
  call void @pm_runtime_enable(%struct.device* %6) #8, !dbg !7110
  %7 = load i32, i32* %ret, align 4, !dbg !7111
  store i32 %7, i32* %retval, align 4, !dbg !7112
  br label %return, !dbg !7112

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !7113
  ret i32 %8, !dbg !7113
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cdns3_runtime_suspend(%struct.device* %dev) #0 !dbg !7114 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %.compoundliteral = alloca %struct.pm_message, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7115, metadata !DIExpression()), !dbg !7116
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7117
  %event = getelementptr inbounds %struct.pm_message, %struct.pm_message* %.compoundliteral, i32 0, i32 0, !dbg !7118
  store i32 1026, i32* %event, align 4, !dbg !7118
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %.compoundliteral, i32 0, i32 0, !dbg !7119
  %1 = load i32, i32* %coerce.dive, align 4, !dbg !7119
  %call = call i32 @cdns3_controller_suspend(%struct.device* %0, i32 %1) #8, !dbg !7119
  ret i32 %call, !dbg !7120
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cdns3_runtime_resume(%struct.device* %dev) #0 !dbg !7121 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %.compoundliteral = alloca %struct.pm_message, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7122, metadata !DIExpression()), !dbg !7123
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7124
  %event = getelementptr inbounds %struct.pm_message, %struct.pm_message* %.compoundliteral, i32 0, i32 0, !dbg !7125
  store i32 1040, i32* %event, align 4, !dbg !7125
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %.compoundliteral, i32 0, i32 0, !dbg !7126
  %1 = load i32, i32* %coerce.dive, align 4, !dbg !7126
  %call = call i32 @cdns3_controller_resume(%struct.device* %0, i32 %1) #8, !dbg !7126
  ret i32 %call, !dbg !7127
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @pm_runtime_status_suspended(%struct.device* %dev) #0 !dbg !7128 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7131, metadata !DIExpression()), !dbg !7132
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7133
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !7134
  %runtime_status = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 18, !dbg !7135
  %1 = load i32, i32* %runtime_status, align 4, !dbg !7135
  %cmp = icmp eq i32 %1, 2, !dbg !7136
  ret i1 %cmp, !dbg !7137
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_resume(%struct.device* %dev) #0 !dbg !7138 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7139, metadata !DIExpression()), !dbg !7140
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7141
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 0) #8, !dbg !7142
  ret i32 %call, !dbg !7143
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !7144 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !7148, metadata !DIExpression()), !dbg !7149
  %call = call i64 @arch_local_save_flags() #8, !dbg !7150
  store i64 %call, i64* %f, align 8, !dbg !7151
  call void @arch_local_irq_disable() #8, !dbg !7152
  %0 = load i64, i64* %f, align 8, !dbg !7153
  ret i64 %0, !dbg !7154
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cdns3_controller_suspend(%struct.device* %dev, i32 %msg.coerce) #0 !dbg !7155 {
entry:
  %lock.addr.i29 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i29, metadata !7001, metadata !DIExpression()), !dbg !7156
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !7009, metadata !DIExpression()), !dbg !7158
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5892, metadata !DIExpression()), !dbg !7159
  %retval = alloca i32, align 4
  %msg = alloca %struct.pm_message, align 4
  %dev.addr = alloca %struct.device*, align 8
  %cdns = alloca %struct.cdns3*, align 8
  %wakeup = alloca i8, align 1
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy12 = alloca i64, align 8
  %__dummy213 = alloca i64, align 8
  %tmp16 = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %msg, i32 0, i32 0
  store i32 %msg.coerce, i32* %coerce.dive, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7166, metadata !DIExpression()), !dbg !7167
  call void @llvm.dbg.declare(metadata %struct.pm_message* %msg, metadata !7168, metadata !DIExpression()), !dbg !7169
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns, metadata !7170, metadata !DIExpression()), !dbg !7171
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7172
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !7173
  %1 = bitcast i8* %call to %struct.cdns3*, !dbg !7173
  store %struct.cdns3* %1, %struct.cdns3** %cdns, align 8, !dbg !7171
  call void @llvm.dbg.declare(metadata i8* %wakeup, metadata !7174, metadata !DIExpression()), !dbg !7175
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !7176, metadata !DIExpression()), !dbg !7177
  %2 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7178
  %in_lpm = getelementptr inbounds %struct.cdns3, %struct.cdns3* %2, i32 0, i32 22, !dbg !7180
  %3 = load i8, i8* %in_lpm, align 8, !dbg !7180
  %tobool = trunc i8 %3 to i1, !dbg !7180
  br i1 %tobool, label %if.then, label %if.end, !dbg !7181

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !7182
  br label %return, !dbg !7182

if.end:                                           ; preds = %entry
  %event = getelementptr inbounds %struct.pm_message, %struct.pm_message* %msg, i32 0, i32 0, !dbg !7183
  %4 = load i32, i32* %event, align 4, !dbg !7183
  %and = and i32 %4, 1024, !dbg !7183
  %cmp = icmp ne i32 %and, 0, !dbg !7183
  br i1 %cmp, label %if.then1, label %if.else, !dbg !7185

if.then1:                                         ; preds = %if.end
  store i8 1, i8* %wakeup, align 1, !dbg !7186
  br label %if.end3, !dbg !7187

if.else:                                          ; preds = %if.end
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7188
  %call2 = call zeroext i1 @device_may_wakeup(%struct.device* %5) #8, !dbg !7189
  %frombool = zext i1 %call2 to i8, !dbg !7190
  store i8 %frombool, i8* %wakeup, align 1, !dbg !7190
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1
  %6 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7191
  %dev4 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %6, i32 0, i32 0, !dbg !7192
  %7 = load %struct.device*, %struct.device** %dev4, align 8, !dbg !7192
  %8 = load i8, i8* %wakeup, align 1, !dbg !7193
  %tobool5 = trunc i8 %8 to i1, !dbg !7193
  %call6 = call i32 @cdns3_set_platform_suspend(%struct.device* %7, i1 zeroext true, i1 zeroext %tobool5) #8, !dbg !7194
  %9 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7195
  call void @set_phy_power_off(%struct.cdns3* %9) #8, !dbg !7196
  br label %do.body, !dbg !7197

do.body:                                          ; preds = %if.end3
  br label %do.body7, !dbg !7198

do.body7:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !7199, metadata !DIExpression()), !dbg !7201
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !7202, metadata !DIExpression()), !dbg !7201
  %cmp8 = icmp eq i64* %__dummy, %__dummy2, !dbg !7201
  %conv = zext i1 %cmp8 to i32, !dbg !7201
  store i32 1, i32* %tmp, align 4, !dbg !7201
  %10 = load i32, i32* %tmp, align 4, !dbg !7201
  br label %do.body9, !dbg !7203

do.body9:                                         ; preds = %do.body7
  br label %do.body10, !dbg !7204

do.body10:                                        ; preds = %do.body9
  br label %do.body11, !dbg !7205

do.body11:                                        ; preds = %do.body10
  call void @llvm.dbg.declare(metadata i64* %__dummy12, metadata !7207, metadata !DIExpression()), !dbg !7210
  call void @llvm.dbg.declare(metadata i64* %__dummy213, metadata !7211, metadata !DIExpression()), !dbg !7210
  %cmp14 = icmp eq i64* %__dummy12, %__dummy213, !dbg !7210
  %conv15 = zext i1 %cmp14 to i32, !dbg !7210
  store i32 1, i32* %tmp16, align 4, !dbg !7210
  %11 = load i32, i32* %tmp16, align 4, !dbg !7210
  %call17 = call i64 @arch_local_irq_save() #8, !dbg !7212
  store i64 %call17, i64* %flags, align 8, !dbg !7212
  br label %do.end, !dbg !7212

do.end:                                           ; preds = %do.body11
  br label %do.end18, !dbg !7205

do.end18:                                         ; preds = %do.end
  br label %do.body19, !dbg !7204

do.body19:                                        ; preds = %do.end18
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !7213, !srcloc !7214
  br label %do.body20, !dbg !7213

do.body20:                                        ; preds = %do.body19
  %12 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7215
  %lock = getelementptr inbounds %struct.cdns3, %struct.cdns3* %12, i32 0, i32 25, !dbg !7215
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %13 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !7216
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i32 0, i32 0, !dbg !7217
  %rlock.i = bitcast %union.anon.1* %14 to %struct.raw_spinlock*, !dbg !7217
  br label %do.end22, !dbg !7215

do.end22:                                         ; preds = %do.body20
  br label %do.end23, !dbg !7213

do.end23:                                         ; preds = %do.end22
  br label %do.end24, !dbg !7204

do.end24:                                         ; preds = %do.end23
  br label %do.end25, !dbg !7203

do.end25:                                         ; preds = %do.end24
  br label %do.end26, !dbg !7198

do.end26:                                         ; preds = %do.end25
  %15 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7218
  %in_lpm27 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %15, i32 0, i32 22, !dbg !7219
  store i8 1, i8* %in_lpm27, align 8, !dbg !7220
  %16 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7221
  %lock28 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %16, i32 0, i32 25, !dbg !7222
  %17 = load i64, i64* %flags, align 8, !dbg !7223
  store %struct.spinlock* %lock28, %struct.spinlock** %lock.addr.i29, align 8
  store i64 %17, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !310, metadata !7068, metadata !DIExpression()) #7, !dbg !7224
  call void @llvm.dbg.declare(metadata !310, metadata !7072, metadata !DIExpression()) #7, !dbg !7224
  store i32 1, i32* %tmp.i, align 4, !dbg !7224
  %18 = load i32, i32* %tmp.i, align 4, !dbg !7224
  call void @llvm.dbg.declare(metadata !310, metadata !7073, metadata !DIExpression()) #7, !dbg !7225
  call void @llvm.dbg.declare(metadata !310, metadata !7079, metadata !DIExpression()) #7, !dbg !7225
  store i32 1, i32* %tmp8.i, align 4, !dbg !7225
  %19 = load i32, i32* %tmp8.i, align 4, !dbg !7225
  %20 = load i64, i64* %flags.addr.i, align 8, !dbg !7226
  call void @arch_local_irq_restore(i64 %20) #10, !dbg !7226
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !7227, !srcloc !7083
  %21 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i29, align 8, !dbg !7228
  %22 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %21, i32 0, i32 0, !dbg !7228
  %rlock.i30 = bitcast %union.anon.1* %22 to %struct.raw_spinlock*, !dbg !7228
  store i32 0, i32* %retval, align 4, !dbg !7229
  br label %return, !dbg !7229

return:                                           ; preds = %do.end26, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !7230
  ret i32 %23, !dbg !7230
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !7231 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !7232, metadata !DIExpression()), !dbg !7234
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !7235, metadata !DIExpression()), !dbg !7234
  %0 = load i64, i64* %__edi, align 8, !dbg !7234
  store i64 %0, i64* %__edi, align 8, !dbg !7234
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !7236, metadata !DIExpression()), !dbg !7234
  %1 = load i64, i64* %__esi, align 8, !dbg !7234
  store i64 %1, i64* %__esi, align 8, !dbg !7234
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !7237, metadata !DIExpression()), !dbg !7234
  %2 = load i64, i64* %__edx, align 8, !dbg !7234
  store i64 %2, i64* %__edx, align 8, !dbg !7234
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !7238, metadata !DIExpression()), !dbg !7234
  %3 = load i64, i64* %__ecx, align 8, !dbg !7234
  store i64 %3, i64* %__ecx, align 8, !dbg !7234
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !7239, metadata !DIExpression()), !dbg !7234
  %4 = load i64, i64* %__eax, align 8, !dbg !7234
  store i64 %4, i64* %__eax, align 8, !dbg !7234
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !7234
  %6 = call i64 @llvm.read_register.i64(metadata !4997), !dbg !7240
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !7240, !srcloc !7243
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !7240
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !7240
  store i64 %asmresult, i64* %__eax, align 8, !dbg !7240
  call void @llvm.write_register.i64(metadata !4997, i64 %asmresult1), !dbg !7240
  %8 = load i64, i64* %__eax, align 8, !dbg !7240
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !7244, metadata !DIExpression()), !dbg !7246
  store i64 -1, i64* %__mask, align 8, !dbg !7246
  %9 = load i64, i64* %__mask, align 8, !dbg !7246
  store i64 %9, i64* %tmp, align 8, !dbg !7246
  %10 = load i64, i64* %tmp, align 8, !dbg !7246
  %and = and i64 %8, %10, !dbg !7240
  store i64 %and, i64* %__ret, align 8, !dbg !7240
  %11 = load i64, i64* %__ret, align 8, !dbg !7234
  store i64 %11, i64* %tmp2, align 8, !dbg !7247
  %12 = load i64, i64* %tmp2, align 8, !dbg !7234
  ret i64 %12, !dbg !7248
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !7249 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !7250, metadata !DIExpression()), !dbg !7252
  %0 = load i64, i64* %__edi, align 8, !dbg !7252
  store i64 %0, i64* %__edi, align 8, !dbg !7252
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !7253, metadata !DIExpression()), !dbg !7252
  %1 = load i64, i64* %__esi, align 8, !dbg !7252
  store i64 %1, i64* %__esi, align 8, !dbg !7252
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !7254, metadata !DIExpression()), !dbg !7252
  %2 = load i64, i64* %__edx, align 8, !dbg !7252
  store i64 %2, i64* %__edx, align 8, !dbg !7252
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !7255, metadata !DIExpression()), !dbg !7252
  %3 = load i64, i64* %__ecx, align 8, !dbg !7252
  store i64 %3, i64* %__ecx, align 8, !dbg !7252
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !7256, metadata !DIExpression()), !dbg !7252
  %4 = load i64, i64* %__eax, align 8, !dbg !7252
  store i64 %4, i64* %__eax, align 8, !dbg !7252
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !7252
  %6 = call i64 @llvm.read_register.i64(metadata !4997), !dbg !7252
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #7, !dbg !7252, !srcloc !7257
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !7252
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !7252
  store i64 %asmresult, i64* %__eax, align 8, !dbg !7252
  call void @llvm.write_register.i64(metadata !4997, i64 %asmresult1), !dbg !7252
  ret void, !dbg !7258
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !7259 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !7262, metadata !DIExpression()), !dbg !7263
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !7264, metadata !DIExpression()), !dbg !7266
  %0 = load i64, i64* %__edi, align 8, !dbg !7266
  store i64 %0, i64* %__edi, align 8, !dbg !7266
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !7267, metadata !DIExpression()), !dbg !7266
  %1 = load i64, i64* %__esi, align 8, !dbg !7266
  store i64 %1, i64* %__esi, align 8, !dbg !7266
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !7268, metadata !DIExpression()), !dbg !7266
  %2 = load i64, i64* %__edx, align 8, !dbg !7266
  store i64 %2, i64* %__edx, align 8, !dbg !7266
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !7269, metadata !DIExpression()), !dbg !7266
  %3 = load i64, i64* %__ecx, align 8, !dbg !7266
  store i64 %3, i64* %__ecx, align 8, !dbg !7266
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !7270, metadata !DIExpression()), !dbg !7266
  %4 = load i64, i64* %__eax, align 8, !dbg !7266
  store i64 %4, i64* %__eax, align 8, !dbg !7266
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !7266
  %6 = call i64 @llvm.read_register.i64(metadata !4997), !dbg !7266
  %7 = load i64, i64* %f.addr, align 8, !dbg !7266
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #7, !dbg !7266, !srcloc !7271
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !7266
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !7266
  store i64 %asmresult, i64* %__eax, align 8, !dbg !7266
  call void @llvm.write_register.i64(metadata !4997, i64 %asmresult1), !dbg !7266
  ret void, !dbg !7272
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @device_may_wakeup(%struct.device* %dev) #0 !dbg !7273 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7274, metadata !DIExpression()), !dbg !7275
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7276
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !7277
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 1, !dbg !7278
  %bf.load = load i16, i16* %can_wakeup, align 4, !dbg !7278
  %bf.clear = and i16 %bf.load, 1, !dbg !7278
  %bf.cast = zext i16 %bf.clear to i32, !dbg !7278
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !7276
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !7279

land.rhs:                                         ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7280
  %power1 = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 11, !dbg !7281
  %wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 6, !dbg !7282
  %2 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup, align 8, !dbg !7282
  %tobool2 = icmp ne %struct.wakeup_source* %2, null, !dbg !7283
  %lnot = xor i1 %tobool2, true, !dbg !7283
  %lnot3 = xor i1 %lnot, true, !dbg !7284
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot3, %land.rhs ], !dbg !7285
  ret i1 %3, !dbg !7286
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cdns3_set_platform_suspend(%struct.device* %dev, i1 zeroext %suspend, i1 zeroext %wakeup) #0 !dbg !7287 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %suspend.addr = alloca i8, align 1
  %wakeup.addr = alloca i8, align 1
  %cdns = alloca %struct.cdns3*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7288, metadata !DIExpression()), !dbg !7289
  %frombool = zext i1 %suspend to i8
  store i8 %frombool, i8* %suspend.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %suspend.addr, metadata !7290, metadata !DIExpression()), !dbg !7291
  %frombool1 = zext i1 %wakeup to i8
  store i8 %frombool1, i8* %wakeup.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %wakeup.addr, metadata !7292, metadata !DIExpression()), !dbg !7293
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns, metadata !7294, metadata !DIExpression()), !dbg !7295
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7296
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !7297
  %1 = bitcast i8* %call to %struct.cdns3*, !dbg !7297
  store %struct.cdns3* %1, %struct.cdns3** %cdns, align 8, !dbg !7295
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !7298, metadata !DIExpression()), !dbg !7299
  store i32 0, i32* %ret, align 4, !dbg !7299
  %2 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7300
  %pdata = getelementptr inbounds %struct.cdns3, %struct.cdns3* %2, i32 0, i32 24, !dbg !7302
  %3 = load %struct.cdns3_platform_data*, %struct.cdns3_platform_data** %pdata, align 8, !dbg !7302
  %tobool = icmp ne %struct.cdns3_platform_data* %3, null, !dbg !7300
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !7303

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7304
  %pdata2 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %4, i32 0, i32 24, !dbg !7305
  %5 = load %struct.cdns3_platform_data*, %struct.cdns3_platform_data** %pdata2, align 8, !dbg !7305
  %platform_suspend = getelementptr inbounds %struct.cdns3_platform_data, %struct.cdns3_platform_data* %5, i32 0, i32 0, !dbg !7306
  %6 = load i32 (%struct.device*, i1, i1)*, i32 (%struct.device*, i1, i1)** %platform_suspend, align 8, !dbg !7306
  %tobool3 = icmp ne i32 (%struct.device*, i1, i1)* %6, null, !dbg !7304
  br i1 %tobool3, label %if.then, label %if.end, !dbg !7307

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7308
  %pdata4 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %7, i32 0, i32 24, !dbg !7309
  %8 = load %struct.cdns3_platform_data*, %struct.cdns3_platform_data** %pdata4, align 8, !dbg !7309
  %platform_suspend5 = getelementptr inbounds %struct.cdns3_platform_data, %struct.cdns3_platform_data* %8, i32 0, i32 0, !dbg !7310
  %9 = load i32 (%struct.device*, i1, i1)*, i32 (%struct.device*, i1, i1)** %platform_suspend5, align 8, !dbg !7310
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7311
  %11 = load i8, i8* %suspend.addr, align 1, !dbg !7312
  %tobool6 = trunc i8 %11 to i1, !dbg !7312
  %12 = load i8, i8* %wakeup.addr, align 1, !dbg !7313
  %tobool7 = trunc i8 %12 to i1, !dbg !7313
  %call8 = call i32 %9(%struct.device* %10, i1 zeroext %tobool6, i1 zeroext %tobool7) #8, !dbg !7308
  store i32 %call8, i32* %ret, align 4, !dbg !7314
  br label %if.end, !dbg !7315

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %13 = load i32, i32* %ret, align 4, !dbg !7316
  ret i32 %13, !dbg !7317
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cdns3_controller_resume(%struct.device* %dev, i32 %msg.coerce) #0 !dbg !7318 {
entry:
  %lock.addr.i43 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i43, metadata !7001, metadata !DIExpression()), !dbg !7319
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !7009, metadata !DIExpression()), !dbg !7321
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5892, metadata !DIExpression()), !dbg !7322
  %retval = alloca i32, align 4
  %msg = alloca %struct.pm_message, align 4
  %dev.addr = alloca %struct.device*, align 8
  %cdns = alloca %struct.cdns3*, align 8
  %ret = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy11 = alloca i64, align 8
  %__dummy212 = alloca i64, align 8
  %tmp15 = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %msg, i32 0, i32 0
  store i32 %msg.coerce, i32* %coerce.dive, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7329, metadata !DIExpression()), !dbg !7330
  call void @llvm.dbg.declare(metadata %struct.pm_message* %msg, metadata !7331, metadata !DIExpression()), !dbg !7332
  call void @llvm.dbg.declare(metadata %struct.cdns3** %cdns, metadata !7333, metadata !DIExpression()), !dbg !7334
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7335
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !7336
  %1 = bitcast i8* %call to %struct.cdns3*, !dbg !7336
  store %struct.cdns3* %1, %struct.cdns3** %cdns, align 8, !dbg !7334
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !7337, metadata !DIExpression()), !dbg !7338
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !7339, metadata !DIExpression()), !dbg !7340
  %2 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7341
  %in_lpm = getelementptr inbounds %struct.cdns3, %struct.cdns3* %2, i32 0, i32 22, !dbg !7343
  %3 = load i8, i8* %in_lpm, align 8, !dbg !7343
  %tobool = trunc i8 %3 to i1, !dbg !7343
  br i1 %tobool, label %if.end, label %if.then, !dbg !7344

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !7345
  br label %return, !dbg !7345

if.end:                                           ; preds = %entry
  %4 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7346
  %call1 = call i32 @set_phy_power_on(%struct.cdns3* %4) #8, !dbg !7347
  store i32 %call1, i32* %ret, align 4, !dbg !7348
  %5 = load i32, i32* %ret, align 4, !dbg !7349
  %tobool2 = icmp ne i32 %5, 0, !dbg !7349
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !7351

if.then3:                                         ; preds = %if.end
  %6 = load i32, i32* %ret, align 4, !dbg !7352
  store i32 %6, i32* %retval, align 4, !dbg !7353
  br label %return, !dbg !7353

if.end4:                                          ; preds = %if.end
  %7 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7354
  %dev5 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %7, i32 0, i32 0, !dbg !7355
  %8 = load %struct.device*, %struct.device** %dev5, align 8, !dbg !7355
  %call6 = call i32 @cdns3_set_platform_suspend(%struct.device* %8, i1 zeroext false, i1 zeroext false) #8, !dbg !7356
  br label %do.body, !dbg !7357

do.body:                                          ; preds = %if.end4
  br label %do.body7, !dbg !7358

do.body7:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !7359, metadata !DIExpression()), !dbg !7361
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !7362, metadata !DIExpression()), !dbg !7361
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !7361
  %conv = zext i1 %cmp to i32, !dbg !7361
  store i32 1, i32* %tmp, align 4, !dbg !7361
  %9 = load i32, i32* %tmp, align 4, !dbg !7361
  br label %do.body8, !dbg !7363

do.body8:                                         ; preds = %do.body7
  br label %do.body9, !dbg !7364

do.body9:                                         ; preds = %do.body8
  br label %do.body10, !dbg !7365

do.body10:                                        ; preds = %do.body9
  call void @llvm.dbg.declare(metadata i64* %__dummy11, metadata !7367, metadata !DIExpression()), !dbg !7370
  call void @llvm.dbg.declare(metadata i64* %__dummy212, metadata !7371, metadata !DIExpression()), !dbg !7370
  %cmp13 = icmp eq i64* %__dummy11, %__dummy212, !dbg !7370
  %conv14 = zext i1 %cmp13 to i32, !dbg !7370
  store i32 1, i32* %tmp15, align 4, !dbg !7370
  %10 = load i32, i32* %tmp15, align 4, !dbg !7370
  %call16 = call i64 @arch_local_irq_save() #8, !dbg !7372
  store i64 %call16, i64* %flags, align 8, !dbg !7372
  br label %do.end, !dbg !7372

do.end:                                           ; preds = %do.body10
  br label %do.end17, !dbg !7365

do.end17:                                         ; preds = %do.end
  br label %do.body18, !dbg !7364

do.body18:                                        ; preds = %do.end17
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !7373, !srcloc !7374
  br label %do.body19, !dbg !7373

do.body19:                                        ; preds = %do.body18
  %11 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7375
  %lock = getelementptr inbounds %struct.cdns3, %struct.cdns3* %11, i32 0, i32 25, !dbg !7375
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %12 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !7376
  %13 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %12, i32 0, i32 0, !dbg !7377
  %rlock.i = bitcast %union.anon.1* %13 to %struct.raw_spinlock*, !dbg !7377
  br label %do.end21, !dbg !7375

do.end21:                                         ; preds = %do.body19
  br label %do.end22, !dbg !7373

do.end22:                                         ; preds = %do.end21
  br label %do.end23, !dbg !7364

do.end23:                                         ; preds = %do.end22
  br label %do.end24, !dbg !7363

do.end24:                                         ; preds = %do.end23
  br label %do.end25, !dbg !7358

do.end25:                                         ; preds = %do.end24
  %14 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7378
  %roles = getelementptr inbounds %struct.cdns3, %struct.cdns3* %14, i32 0, i32 13, !dbg !7380
  %15 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7381
  %role = getelementptr inbounds %struct.cdns3, %struct.cdns3* %15, i32 0, i32 14, !dbg !7382
  %16 = load i32, i32* %role, align 8, !dbg !7382
  %idxprom = zext i32 %16 to i64, !dbg !7378
  %arrayidx = getelementptr [3 x %struct.cdns3_role_driver*], [3 x %struct.cdns3_role_driver*]* %roles, i64 0, i64 %idxprom, !dbg !7378
  %17 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %arrayidx, align 8, !dbg !7378
  %resume = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %17, i32 0, i32 3, !dbg !7383
  %18 = load i32 (%struct.cdns3*, i1)*, i32 (%struct.cdns3*, i1)** %resume, align 8, !dbg !7383
  %tobool26 = icmp ne i32 (%struct.cdns3*, i1)* %18, null, !dbg !7378
  br i1 %tobool26, label %land.lhs.true, label %if.end36, !dbg !7384

land.lhs.true:                                    ; preds = %do.end25
  %event = getelementptr inbounds %struct.pm_message, %struct.pm_message* %msg, i32 0, i32 0, !dbg !7385
  %19 = load i32, i32* %event, align 4, !dbg !7385
  %and = and i32 %19, 1024, !dbg !7385
  %cmp27 = icmp ne i32 %and, 0, !dbg !7385
  br i1 %cmp27, label %if.end36, label %if.then29, !dbg !7386

if.then29:                                        ; preds = %land.lhs.true
  %20 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7387
  %roles30 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %20, i32 0, i32 13, !dbg !7388
  %21 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7389
  %role31 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %21, i32 0, i32 14, !dbg !7390
  %22 = load i32, i32* %role31, align 8, !dbg !7390
  %idxprom32 = zext i32 %22 to i64, !dbg !7387
  %arrayidx33 = getelementptr [3 x %struct.cdns3_role_driver*], [3 x %struct.cdns3_role_driver*]* %roles30, i64 0, i64 %idxprom32, !dbg !7387
  %23 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %arrayidx33, align 8, !dbg !7387
  %resume34 = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %23, i32 0, i32 3, !dbg !7391
  %24 = load i32 (%struct.cdns3*, i1)*, i32 (%struct.cdns3*, i1)** %resume34, align 8, !dbg !7391
  %25 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7392
  %call35 = call i32 %24(%struct.cdns3* %25, i1 zeroext false) #8, !dbg !7387
  br label %if.end36, !dbg !7387

if.end36:                                         ; preds = %if.then29, %land.lhs.true, %do.end25
  %26 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7393
  %in_lpm37 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %26, i32 0, i32 22, !dbg !7394
  store i8 0, i8* %in_lpm37, align 8, !dbg !7395
  %27 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7396
  %lock38 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %27, i32 0, i32 25, !dbg !7397
  %28 = load i64, i64* %flags, align 8, !dbg !7398
  store %struct.spinlock* %lock38, %struct.spinlock** %lock.addr.i43, align 8
  store i64 %28, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !310, metadata !7068, metadata !DIExpression()) #7, !dbg !7399
  call void @llvm.dbg.declare(metadata !310, metadata !7072, metadata !DIExpression()) #7, !dbg !7399
  store i32 1, i32* %tmp.i, align 4, !dbg !7399
  %29 = load i32, i32* %tmp.i, align 4, !dbg !7399
  call void @llvm.dbg.declare(metadata !310, metadata !7073, metadata !DIExpression()) #7, !dbg !7400
  call void @llvm.dbg.declare(metadata !310, metadata !7079, metadata !DIExpression()) #7, !dbg !7400
  store i32 1, i32* %tmp8.i, align 4, !dbg !7400
  %30 = load i32, i32* %tmp8.i, align 4, !dbg !7400
  %31 = load i64, i64* %flags.addr.i, align 8, !dbg !7401
  call void @arch_local_irq_restore(i64 %31) #10, !dbg !7401
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !7402, !srcloc !7083
  %32 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i43, align 8, !dbg !7403
  %33 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %32, i32 0, i32 0, !dbg !7403
  %rlock.i44 = bitcast %union.anon.1* %33 to %struct.raw_spinlock*, !dbg !7403
  %34 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7404
  %wakeup_pending = getelementptr inbounds %struct.cdns3, %struct.cdns3* %34, i32 0, i32 23, !dbg !7406
  %35 = load i8, i8* %wakeup_pending, align 1, !dbg !7406
  %tobool39 = trunc i8 %35 to i1, !dbg !7406
  br i1 %tobool39, label %if.then40, label %if.end42, !dbg !7407

if.then40:                                        ; preds = %if.end36
  %36 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7408
  %wakeup_pending41 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %36, i32 0, i32 23, !dbg !7410
  store i8 0, i8* %wakeup_pending41, align 1, !dbg !7411
  %37 = load %struct.cdns3*, %struct.cdns3** %cdns, align 8, !dbg !7412
  %wakeup_irq = getelementptr inbounds %struct.cdns3, %struct.cdns3* %37, i32 0, i32 12, !dbg !7413
  %38 = load i32, i32* %wakeup_irq, align 8, !dbg !7413
  call void @enable_irq(i32 %38) #8, !dbg !7414
  br label %if.end42, !dbg !7415

if.end42:                                         ; preds = %if.then40, %if.end36
  %39 = load i32, i32* %ret, align 4, !dbg !7416
  store i32 %39, i32* %retval, align 4, !dbg !7417
  br label %return, !dbg !7417

return:                                           ; preds = %if.end42, %if.then3, %if.then
  %40 = load i32, i32* %retval, align 4, !dbg !7418
  ret i32 %40, !dbg !7418
}

; Function Attrs: noredzone
declare dso_local void @enable_irq(i32) #4

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4997}
!llvm.module.flags = !{!4998, !4999, !5000, !5001}
!llvm.ident = !{!5002}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cdns3_driver_init301", scope: !2, file: !3, line: 756, type: !203, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !196, globals: !221, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/cdns3/core.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !18, !24, !31, !43, !50, !55, !61, !66, !72, !79, !85, !94, !102, !108, !114, !121, !128, !134, !144, !155, !178, !185, !190}
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
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_role", file: !129, line: 10, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/usb/role.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !132, !133}
!131 = !DIEnumerator(name: "USB_ROLE_NONE", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "USB_ROLE_HOST", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "USB_ROLE_DEVICE", value: 2, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !135, line: 1146, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !138, !139, !140, !141, !142, !143}
!137 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!141 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!142 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!143 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !135, line: 1156, baseType: !7, size: 32, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !154}
!146 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!147 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!148 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!149 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!150 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!151 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!152 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!153 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!154 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "phy_mode", file: !156, line: 24, baseType: !7, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/phy/phy.h", directory: "/home/lizy2001/genbc/linux")
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177}
!158 = !DIEnumerator(name: "PHY_MODE_INVALID", value: 0, isUnsigned: true)
!159 = !DIEnumerator(name: "PHY_MODE_USB_HOST", value: 1, isUnsigned: true)
!160 = !DIEnumerator(name: "PHY_MODE_USB_HOST_LS", value: 2, isUnsigned: true)
!161 = !DIEnumerator(name: "PHY_MODE_USB_HOST_FS", value: 3, isUnsigned: true)
!162 = !DIEnumerator(name: "PHY_MODE_USB_HOST_HS", value: 4, isUnsigned: true)
!163 = !DIEnumerator(name: "PHY_MODE_USB_HOST_SS", value: 5, isUnsigned: true)
!164 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE", value: 6, isUnsigned: true)
!165 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_LS", value: 7, isUnsigned: true)
!166 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_FS", value: 8, isUnsigned: true)
!167 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_HS", value: 9, isUnsigned: true)
!168 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_SS", value: 10, isUnsigned: true)
!169 = !DIEnumerator(name: "PHY_MODE_USB_OTG", value: 11, isUnsigned: true)
!170 = !DIEnumerator(name: "PHY_MODE_UFS_HS_A", value: 12, isUnsigned: true)
!171 = !DIEnumerator(name: "PHY_MODE_UFS_HS_B", value: 13, isUnsigned: true)
!172 = !DIEnumerator(name: "PHY_MODE_PCIE", value: 14, isUnsigned: true)
!173 = !DIEnumerator(name: "PHY_MODE_ETHERNET", value: 15, isUnsigned: true)
!174 = !DIEnumerator(name: "PHY_MODE_MIPI_DPHY", value: 16, isUnsigned: true)
!175 = !DIEnumerator(name: "PHY_MODE_SATA", value: 17, isUnsigned: true)
!176 = !DIEnumerator(name: "PHY_MODE_LVDS", value: 18, isUnsigned: true)
!177 = !DIEnumerator(name: "PHY_MODE_DP", value: 19, isUnsigned: true)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_dr_mode", file: !179, line: 116, baseType: !7, size: 32, elements: !180)
!179 = !DIFile(filename: "./include/linux/usb/otg.h", directory: "/home/lizy2001/genbc/linux")
!180 = !{!181, !182, !183, !184}
!181 = !DIEnumerator(name: "USB_DR_MODE_UNKNOWN", value: 0, isUnsigned: true)
!182 = !DIEnumerator(name: "USB_DR_MODE_HOST", value: 1, isUnsigned: true)
!183 = !DIEnumerator(name: "USB_DR_MODE_PERIPHERAL", value: 2, isUnsigned: true)
!184 = !DIEnumerator(name: "USB_DR_MODE_OTG", value: 3, isUnsigned: true)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !186, line: 10, baseType: !7, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!187 = !{!188, !189}
!188 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!189 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !191, line: 11, baseType: !7, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!192 = !{!193, !194, !195}
!193 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!194 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!195 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!196 = !{!197, !200, !202, !203, !204, !205, !212, !216, !217}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !199, line: 189, flags: DIFlagFwdDecl)
!199 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/lizy2001/genbc/linux")
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !201, line: 148, baseType: !7)
!201 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!202 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!204 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !208, line: 23, baseType: !209)
!208 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !210, line: 31, baseType: !211)
!210 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!211 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !215)
!215 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !208, line: 21, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !210, line: 27, baseType: !7)
!221 = !{!0, !222, !229, !236, !241, !246, !251, !256, !4989, !4992, !4995}
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "__exitcall_cdns3_driver_exit", scope: !2, file: !3, line: 756, type: !224, isLocal: true, isDefinition: true)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !225, line: 117, baseType: !226)
!225 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null}
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias302", scope: !2, file: !3, line: 758, type: !231, isLocal: true, isDefinition: true, align: 8)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 216, elements: !234)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!234 = !{!235}
!235 = !DISubrange(count: 27)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author303", scope: !2, file: !3, line: 759, type: !238, isLocal: true, isDefinition: true, align: 8)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 392, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 49)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file304", scope: !2, file: !3, line: 760, type: !243, isLocal: true, isDefinition: true, align: 8)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 280, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 35)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license305", scope: !2, file: !3, line: 760, type: !248, isLocal: true, isDefinition: true, align: 8)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 168, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 21)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description306", scope: !2, file: !3, line: 761, type: !253, isLocal: true, isDefinition: true, align: 8)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 424, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 53)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "cdns3_driver", scope: !2, file: !3, line: 746, type: !258, isLocal: true, isDefinition: true)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !259, line: 200, size: 1600, elements: !260)
!259 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!260 = !{!261, !4976, !4977, !4981, !4985, !4986, !4987, !4988}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !258, file: !259, line: 201, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!215, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !259, line: 22, size: 6208, elements: !267)
!267 = !{!268, !270, !271, !274, !4945, !4946, !4947, !4948, !4962, !4970, !4971, !4974}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !266, file: !259, line: 23, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !266, file: !259, line: 24, baseType: !215, size: 32, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !266, file: !259, line: 25, baseType: !272, size: 8, offset: 96)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !201, line: 30, baseType: !273)
!273 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !266, file: !259, line: 26, baseType: !275, size: 5568, offset: 128)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !115, line: 461, size: 5568, elements: !276)
!276 = !{!277, !4489, !4490, !4493, !4494, !4544, !4635, !4636, !4637, !4638, !4639, !4648, !4742, !4755, !4758, !4759, !4763, !4765, !4766, !4767, !4771, !4777, !4778, !4781, !4896, !4897, !4898, !4899, !4900, !4901, !4933, !4934, !4935, !4938, !4941, !4942, !4943, !4944}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !275, file: !115, line: 462, baseType: !278, size: 512)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !279, line: 64, size: 512, elements: !280)
!279 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!280 = !{!281, !282, !288, !290, !350, !4356, !4483, !4484, !4485, !4486, !4487, !4488}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !278, file: !279, line: 65, baseType: !269, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !278, file: !279, line: 66, baseType: !283, size: 128, offset: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !201, line: 178, size: 128, elements: !284)
!284 = !{!285, !287}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !283, file: !201, line: 179, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !283, file: !201, line: 179, baseType: !286, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !278, file: !279, line: 67, baseType: !289, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !278, file: !279, line: 68, baseType: !291, size: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !279, line: 192, size: 704, elements: !293)
!293 = !{!294, !295, !311, !312}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !292, file: !279, line: 193, baseType: !283, size: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !292, file: !279, line: 194, baseType: !296, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !297, line: 83, baseType: !298)
!297 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !297, line: 71, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, scope: !298, file: !297, line: 72, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !298, file: !297, line: 72, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !301, file: !297, line: 73, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !297, line: 20, elements: !305)
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !304, file: !297, line: 21, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !308, line: 25, baseType: !309)
!308 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !308, line: 25, elements: !310)
!310 = !{}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !292, file: !279, line: 195, baseType: !278, size: 512, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !292, file: !279, line: 196, baseType: !313, size: 64, offset: 640)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !279, line: 156, size: 192, elements: !316)
!316 = !{!317, !322, !327}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !315, file: !279, line: 157, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!215, !291, !289}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !279, line: 158, baseType: !323, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!269, !291, !289}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !315, file: !279, line: 159, baseType: !328, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!215, !291, !289, !332}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !279, line: 148, size: 20736, elements: !334)
!334 = !{!335, !340, !344, !345, !349}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !333, file: !279, line: 149, baseType: !336, size: 192)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 192, elements: !338)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!338 = !{!339}
!339 = !DISubrange(count: 3)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !333, file: !279, line: 150, baseType: !341, size: 4096, offset: 192)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 4096, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !333, file: !279, line: 151, baseType: !215, size: 32, offset: 4288)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !333, file: !279, line: 152, baseType: !346, size: 16384, offset: 4320)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 16384, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 2048)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !333, file: !279, line: 153, baseType: !215, size: 32, offset: 20704)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !278, file: !279, line: 69, baseType: !351, size: 64, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !279, line: 138, size: 448, elements: !353)
!353 = !{!354, !358, !386, !388, !4320, !4348, !4352}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !352, file: !279, line: 139, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !289}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !352, file: !279, line: 140, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !362, line: 230, size: 128, elements: !363)
!362 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!363 = !{!364, !379}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !361, file: !362, line: 231, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!368, !289, !372, !337}
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !201, line: 60, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !370, line: 73, baseType: !371)
!370 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !370, line: 15, baseType: !204)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !362, line: 30, size: 128, elements: !374)
!374 = !{!375, !376}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !373, file: !362, line: 31, baseType: !269, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !373, file: !362, line: 32, baseType: !377, size: 16, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !201, line: 19, baseType: !378)
!378 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !361, file: !362, line: 232, baseType: !380, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!368, !289, !372, !269, !383}
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !201, line: 55, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !370, line: 72, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !370, line: 16, baseType: !202)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !352, file: !279, line: 141, baseType: !387, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !352, file: !279, line: 142, baseType: !389, size: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !362, line: 84, size: 320, elements: !393)
!393 = !{!394, !395, !399, !4317, !4318}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !392, file: !362, line: 85, baseType: !269, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !392, file: !362, line: 86, baseType: !396, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!377, !289, !372, !215}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !392, file: !362, line: 88, baseType: !400, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!377, !289, !403, !215}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !362, line: 168, size: 448, elements: !405)
!405 = !{!406, !407, !408, !409, !4312, !4313}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !404, file: !362, line: 169, baseType: !373, size: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !404, file: !362, line: 170, baseType: !383, size: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !404, file: !362, line: 171, baseType: !203, size: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !404, file: !362, line: 172, baseType: !410, size: 64, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!368, !413, !289, !403, !337, !583, !383}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !86, line: 916, size: 1856, align: 32, elements: !415)
!415 = !{!416, !434, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4295, !4296, !4305, !4306, !4307, !4308, !4309, !4310, !4311}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !414, file: !86, line: 920, baseType: !417, size: 128)
!417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !86, line: 917, size: 128, elements: !418)
!418 = !{!419, !425}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !417, file: !86, line: 918, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !421, line: 58, size: 64, elements: !422)
!421 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !420, file: !421, line: 59, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !417, file: !86, line: 919, baseType: !426, size: 128, align: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !201, line: 216, size: 128, align: 64, elements: !427)
!427 = !{!428, !430}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !426, file: !201, line: 217, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !426, file: !201, line: 218, baseType: !431, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !429}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !414, file: !86, line: 921, baseType: !435, size: 128, offset: 128)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !436, line: 8, size: 128, elements: !437)
!436 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!437 = !{!438, !442}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !435, file: !436, line: 9, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !441, line: 18, flags: DIFlagFwdDecl)
!441 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!442 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !435, file: !436, line: 10, baseType: !443, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !441, line: 89, size: 1536, elements: !445)
!445 = !{!446, !447, !457, !465, !466, !482, !4245, !4247, !4259, !4260, !4261, !4262, !4263, !4269, !4270, !4271}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !444, file: !441, line: 91, baseType: !7, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !444, file: !441, line: 92, baseType: !448, size: 32, offset: 32)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !449, line: 277, baseType: !450)
!449 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !449, line: 277, size: 32, elements: !451)
!451 = !{!452}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !450, file: !449, line: 277, baseType: !453, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !449, line: 70, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !449, line: 65, size: 32, elements: !455)
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !454, file: !449, line: 66, baseType: !7, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !444, file: !441, line: 93, baseType: !458, size: 128, offset: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !459, line: 38, size: 128, elements: !460)
!459 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!460 = !{!461, !463}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !458, file: !459, line: 39, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !458, file: !459, line: 39, baseType: !464, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !444, file: !441, line: 94, baseType: !443, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !444, file: !441, line: 95, baseType: !467, size: 128, offset: 256)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !441, line: 47, size: 128, elements: !468)
!468 = !{!469, !478}
!469 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !441, line: 48, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !467, file: !441, line: 48, size: 64, elements: !471)
!471 = !{!472, !477}
!472 = !DIDerivedType(tag: DW_TAG_member, scope: !470, file: !441, line: 49, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !470, file: !441, line: 49, size: 64, elements: !474)
!474 = !{!475, !476}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !473, file: !441, line: 50, baseType: !219, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !473, file: !441, line: 50, baseType: !219, size: 32, offset: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !470, file: !441, line: 52, baseType: !207, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !467, file: !441, line: 54, baseType: !479, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!481 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !444, file: !441, line: 96, baseType: !483, size: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !86, line: 610, size: 4224, elements: !485)
!485 = !{!486, !487, !488, !496, !503, !504, !650, !3958, !3959, !3960, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !4221, !4229, !4230, !4231, !4241, !4242, !4243, !4244}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !484, file: !86, line: 611, baseType: !377, size: 16)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !484, file: !86, line: 612, baseType: !378, size: 16, offset: 16)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !484, file: !86, line: 613, baseType: !489, size: 32, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !490, line: 23, baseType: !491)
!490 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !490, line: 21, size: 32, elements: !492)
!492 = !{!493}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !491, file: !490, line: 22, baseType: !494, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !201, line: 32, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !370, line: 49, baseType: !7)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !484, file: !86, line: 614, baseType: !497, size: 32, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !490, line: 28, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !490, line: 26, size: 32, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !498, file: !490, line: 27, baseType: !501, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !201, line: 33, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !370, line: 50, baseType: !7)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !484, file: !86, line: 615, baseType: !7, size: 32, offset: 96)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !484, file: !86, line: 622, baseType: !505, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !86, line: 1864, size: 1536, align: 512, elements: !508)
!508 = !{!509, !513, !526, !530, !536, !540, !544, !548, !552, !556, !560, !561, !567, !571, !597, !626, !630, !636, !641, !645, !646}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !507, file: !86, line: 1865, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!443, !483, !443, !7}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !507, file: !86, line: 1866, baseType: !514, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!269, !443, !483, !517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !519, line: 10, size: 128, elements: !520)
!519 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!520 = !{!521, !525}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !518, file: !519, line: 11, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !203}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !518, file: !519, line: 12, baseType: !203, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !507, file: !86, line: 1867, baseType: !527, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!215, !483, !215}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !507, file: !86, line: 1868, baseType: !531, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!534, !483, !215}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !86, line: 581, flags: DIFlagFwdDecl)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !507, file: !86, line: 1870, baseType: !537, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!215, !443, !337, !215}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !507, file: !86, line: 1872, baseType: !541, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!215, !483, !443, !377, !272}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !507, file: !86, line: 1873, baseType: !545, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!215, !443, !483, !443}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !507, file: !86, line: 1874, baseType: !549, size: 64, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!215, !483, !443}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !507, file: !86, line: 1875, baseType: !553, size: 64, offset: 512)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!215, !483, !443, !269}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !507, file: !86, line: 1876, baseType: !557, size: 64, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!215, !483, !443, !377}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !507, file: !86, line: 1877, baseType: !549, size: 64, offset: 640)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !507, file: !86, line: 1878, baseType: !562, size: 64, offset: 704)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!215, !483, !443, !377, !565}
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !201, line: 16, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !201, line: 13, baseType: !219)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !507, file: !86, line: 1879, baseType: !568, size: 64, offset: 768)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!215, !483, !443, !483, !443, !7}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !507, file: !86, line: 1881, baseType: !572, size: 64, offset: 832)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!215, !443, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !86, line: 219, size: 640, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !586, !594, !595, !596}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !576, file: !86, line: 220, baseType: !7, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !576, file: !86, line: 221, baseType: !377, size: 16, offset: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !576, file: !86, line: 222, baseType: !489, size: 32, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !576, file: !86, line: 223, baseType: !497, size: 32, offset: 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !576, file: !86, line: 224, baseType: !583, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !201, line: 46, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !370, line: 88, baseType: !585)
!585 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !576, file: !86, line: 225, baseType: !587, size: 128, offset: 192)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !588, line: 13, size: 128, elements: !589)
!588 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!589 = !{!590, !593}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !587, file: !588, line: 14, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !588, line: 8, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !210, line: 30, baseType: !585)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !587, file: !588, line: 15, baseType: !204, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !576, file: !86, line: 226, baseType: !587, size: 128, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !576, file: !86, line: 227, baseType: !587, size: 128, offset: 448)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !576, file: !86, line: 234, baseType: !413, size: 64, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !507, file: !86, line: 1882, baseType: !598, size: 64, offset: 896)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!215, !601, !603, !219, !7}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !605, line: 22, size: 1152, elements: !606)
!605 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!606 = !{!607, !608, !609, !610, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !604, file: !605, line: 23, baseType: !219, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !604, file: !605, line: 24, baseType: !377, size: 16, offset: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !604, file: !605, line: 25, baseType: !7, size: 32, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !604, file: !605, line: 26, baseType: !611, size: 32, offset: 96)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !201, line: 104, baseType: !219)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !604, file: !605, line: 27, baseType: !207, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !604, file: !605, line: 28, baseType: !207, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !604, file: !605, line: 37, baseType: !207, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !604, file: !605, line: 38, baseType: !565, size: 32, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !604, file: !605, line: 39, baseType: !565, size: 32, offset: 352)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !604, file: !605, line: 40, baseType: !489, size: 32, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !604, file: !605, line: 41, baseType: !497, size: 32, offset: 416)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !604, file: !605, line: 42, baseType: !583, size: 64, offset: 448)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !604, file: !605, line: 43, baseType: !587, size: 128, offset: 512)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !604, file: !605, line: 44, baseType: !587, size: 128, offset: 640)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !604, file: !605, line: 45, baseType: !587, size: 128, offset: 768)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !604, file: !605, line: 46, baseType: !587, size: 128, offset: 896)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !604, file: !605, line: 47, baseType: !207, size: 64, offset: 1024)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !604, file: !605, line: 48, baseType: !207, size: 64, offset: 1088)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !507, file: !86, line: 1883, baseType: !627, size: 64, offset: 960)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!368, !443, !337, !383}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !507, file: !86, line: 1884, baseType: !631, size: 64, offset: 1024)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!215, !483, !634, !207, !207}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !86, line: 50, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !507, file: !86, line: 1886, baseType: !637, size: 64, offset: 1088)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!215, !483, !640, !215}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !507, file: !86, line: 1887, baseType: !642, size: 64, offset: 1152)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!215, !483, !443, !413, !7, !377}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !507, file: !86, line: 1890, baseType: !557, size: 64, offset: 1216)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !507, file: !86, line: 1891, baseType: !647, size: 64, offset: 1280)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!215, !483, !534, !215}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !484, file: !86, line: 623, baseType: !651, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !86, line: 1416, size: 9472, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !706, !3572, !3654, !3737, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3753, !3757, !3758, !3759, !3760, !3763, !3764, !3765, !3806, !3832, !3833, !3834, !3835, !3836, !3837, !3840, !3841, !3848, !3849, !3850, !3851, !3852, !3911, !3912, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !652, file: !86, line: 1417, baseType: !283, size: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !652, file: !86, line: 1418, baseType: !565, size: 32, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !652, file: !86, line: 1419, baseType: !481, size: 8, offset: 160)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !652, file: !86, line: 1420, baseType: !202, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !652, file: !86, line: 1421, baseType: !583, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !652, file: !86, line: 1422, baseType: !660, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !86, line: 2228, size: 576, elements: !662)
!662 = !{!663, !664, !665, !672, !676, !680, !684, !685, !686, !696, !699, !700, !701, !703, !704, !705}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !661, file: !86, line: 2229, baseType: !269, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !661, file: !86, line: 2230, baseType: !215, size: 32, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !661, file: !86, line: 2238, baseType: !666, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!215, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !671, line: 28, flags: DIFlagFwdDecl)
!671 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!672 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !661, file: !86, line: 2239, baseType: !673, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !86, line: 70, flags: DIFlagFwdDecl)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !661, file: !86, line: 2240, baseType: !677, size: 64, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!443, !660, !215, !269, !203}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !661, file: !86, line: 2242, baseType: !681, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !651}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !661, file: !86, line: 2243, baseType: !197, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !661, file: !86, line: 2244, baseType: !660, size: 64, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !661, file: !86, line: 2245, baseType: !687, size: 64, offset: 512)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !201, line: 182, size: 64, elements: !688)
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !687, file: !201, line: 183, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !201, line: 186, size: 128, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !691, file: !201, line: 187, baseType: !690, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !691, file: !201, line: 187, baseType: !695, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !661, file: !86, line: 2247, baseType: !697, offset: 576)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !698, line: 187, elements: !310)
!698 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!699 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !661, file: !86, line: 2248, baseType: !697, offset: 576)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !661, file: !86, line: 2249, baseType: !697, offset: 576)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !661, file: !86, line: 2250, baseType: !702, offset: 576)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !697, elements: !338)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !661, file: !86, line: 2252, baseType: !697, offset: 576)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !661, file: !86, line: 2253, baseType: !697, offset: 576)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !661, file: !86, line: 2254, baseType: !697, offset: 576)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !652, file: !86, line: 1423, baseType: !707, size: 64, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !86, line: 1935, size: 1472, elements: !710)
!710 = !{!711, !715, !719, !720, !724, !744, !748, !749, !750, !754, !758, !759, !760, !761, !767, !771, !772, !828, !829, !830, !831, !3556, !3571}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !709, file: !86, line: 1936, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!483, !651}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !709, file: !86, line: 1937, baseType: !716, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !483}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !709, file: !86, line: 1938, baseType: !716, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !709, file: !86, line: 1940, baseType: !721, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !483, !215}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !709, file: !86, line: 1941, baseType: !725, size: 64, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!215, !483, !728}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !6, line: 51, size: 320, elements: !730)
!730 = !{!731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !729, file: !6, line: 52, baseType: !204, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !729, file: !6, line: 54, baseType: !204, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !729, file: !6, line: 61, baseType: !583, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !729, file: !6, line: 62, baseType: !583, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !729, file: !6, line: 64, baseType: !5, size: 32, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !729, file: !6, line: 66, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !729, file: !6, line: 67, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !729, file: !6, line: 68, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !729, file: !6, line: 69, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !729, file: !6, line: 70, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !729, file: !6, line: 71, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !729, file: !6, line: 79, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "punt_to_cgroup", scope: !729, file: !6, line: 81, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !709, file: !86, line: 1942, baseType: !745, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!215, !483}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !709, file: !86, line: 1943, baseType: !716, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !709, file: !86, line: 1944, baseType: !681, size: 64, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !709, file: !86, line: 1945, baseType: !751, size: 64, offset: 512)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!215, !651, !215}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !709, file: !86, line: 1946, baseType: !755, size: 64, offset: 576)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!215, !651}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !709, file: !86, line: 1947, baseType: !755, size: 64, offset: 640)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !709, file: !86, line: 1948, baseType: !755, size: 64, offset: 704)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !709, file: !86, line: 1949, baseType: !755, size: 64, offset: 768)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !709, file: !86, line: 1950, baseType: !762, size: 64, offset: 832)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!215, !443, !765}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !86, line: 57, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !709, file: !86, line: 1951, baseType: !768, size: 64, offset: 896)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!215, !651, !216, !337}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !709, file: !86, line: 1952, baseType: !681, size: 64, offset: 960)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !709, file: !86, line: 1954, baseType: !773, size: 64, offset: 1024)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!215, !776, !443}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !778, line: 16, size: 896, elements: !779)
!778 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!779 = !{!780, !781, !782, !783, !784, !785, !786, !787, !801, !823, !824, !827}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !777, file: !778, line: 17, baseType: !337, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !777, file: !778, line: 18, baseType: !383, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !777, file: !778, line: 19, baseType: !383, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !777, file: !778, line: 20, baseType: !383, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !777, file: !778, line: 21, baseType: !383, size: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !777, file: !778, line: 22, baseType: !583, size: 64, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !777, file: !778, line: 23, baseType: !583, size: 64, offset: 384)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !777, file: !778, line: 24, baseType: !788, size: 192, offset: 448)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !789, line: 53, size: 192, elements: !790)
!789 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!790 = !{!791, !799, !800}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !788, file: !789, line: 54, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !793, line: 13, baseType: !794)
!793 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !201, line: 175, baseType: !795)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !201, line: 173, size: 64, elements: !796)
!796 = !{!797}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !795, file: !201, line: 174, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !208, line: 22, baseType: !592)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !788, file: !789, line: 55, baseType: !296, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !788, file: !789, line: 59, baseType: !283, size: 128, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !777, file: !778, line: 25, baseType: !802, size: 64, offset: 640)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !804)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !778, line: 31, size: 256, elements: !805)
!805 = !{!806, !811, !815, !819}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !804, file: !778, line: 32, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!203, !776, !810}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !804, file: !778, line: 33, baseType: !812, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{null, !776, !203}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !804, file: !778, line: 34, baseType: !816, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!203, !776, !203, !810}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !804, file: !778, line: 35, baseType: !820, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!215, !776, !203}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !777, file: !778, line: 26, baseType: !215, size: 32, offset: 704)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !777, file: !778, line: 27, baseType: !825, size: 64, offset: 768)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !777, file: !778, line: 28, baseType: !203, size: 64, offset: 832)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !709, file: !86, line: 1955, baseType: !773, size: 64, offset: 1088)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !709, file: !86, line: 1956, baseType: !773, size: 64, offset: 1152)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !709, file: !86, line: 1957, baseType: !773, size: 64, offset: 1216)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !709, file: !86, line: 1963, baseType: !832, size: 64, offset: 1280)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!215, !651, !835, !200}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !837, line: 68, size: 512, align: 128, elements: !838)
!837 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!838 = !{!839, !840, !3548, !3555}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !836, file: !837, line: 69, baseType: !202, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !837, line: 77, baseType: !841, size: 320, offset: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !837, line: 77, size: 320, elements: !842)
!842 = !{!843, !1977, !1982, !2008, !2016, !2022, !3499, !3547}
!843 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !837, line: 78, baseType: !844, size: 320)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !841, file: !837, line: 78, size: 320, elements: !845)
!845 = !{!846, !847, !1975, !1976}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !844, file: !837, line: 84, baseType: !283, size: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !844, file: !837, line: 86, baseType: !848, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !86, line: 451, size: 1216, align: 64, elements: !850)
!850 = !{!851, !852, !859, !860, !865, !880, !889, !890, !891, !892, !1968, !1969, !1972, !1973, !1974}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !849, file: !86, line: 452, baseType: !483, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !849, file: !86, line: 453, baseType: !853, size: 128, offset: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !854, line: 292, size: 128, elements: !855)
!854 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!855 = !{!856, !857, !858}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !853, file: !854, line: 293, baseType: !296)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !853, file: !854, line: 295, baseType: !200, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !853, file: !854, line: 296, baseType: !203, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !849, file: !86, line: 454, baseType: !200, size: 32, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !849, file: !86, line: 455, baseType: !861, size: 32, offset: 224)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !201, line: 168, baseType: !862)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !201, line: 166, size: 32, elements: !863)
!863 = !{!864}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !862, file: !201, line: 167, baseType: !215, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !849, file: !86, line: 460, baseType: !866, size: 128, offset: 256)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !867, line: 125, size: 128, elements: !868)
!867 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!868 = !{!869, !879}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !866, file: !867, line: 126, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !867, line: 31, size: 64, elements: !871)
!871 = !{!872}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !870, file: !867, line: 32, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !867, line: 24, size: 192, align: 64, elements: !875)
!875 = !{!876, !877, !878}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !874, file: !867, line: 25, baseType: !202, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !874, file: !867, line: 26, baseType: !873, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !874, file: !867, line: 27, baseType: !873, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !866, file: !867, line: 127, baseType: !873, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !849, file: !86, line: 461, baseType: !881, size: 256, offset: 384)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !882, line: 35, size: 256, elements: !883)
!882 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!883 = !{!884, !885, !886, !888}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !881, file: !882, line: 36, baseType: !792, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !881, file: !882, line: 42, baseType: !792, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !881, file: !882, line: 46, baseType: !887, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !297, line: 29, baseType: !304)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !881, file: !882, line: 47, baseType: !283, size: 128, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !849, file: !86, line: 462, baseType: !202, size: 64, offset: 640)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !849, file: !86, line: 463, baseType: !202, size: 64, offset: 704)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !849, file: !86, line: 464, baseType: !202, size: 64, offset: 768)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !849, file: !86, line: 465, baseType: !893, size: 64, offset: 832)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !895)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !86, line: 367, size: 1408, elements: !896)
!896 = !{!897, !901, !905, !909, !913, !917, !930, !936, !940, !945, !949, !953, !957, !1002, !1006, !1012, !1013, !1014, !1018, !1023, !1027, !1964}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !895, file: !86, line: 368, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!215, !835, !728}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !895, file: !86, line: 369, baseType: !902, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!215, !413, !835}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !895, file: !86, line: 372, baseType: !906, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!215, !848, !728}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !895, file: !86, line: 375, baseType: !910, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!215, !835}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !895, file: !86, line: 381, baseType: !914, size: 64, offset: 256)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!215, !413, !848, !286, !7}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !895, file: !86, line: 383, baseType: !918, size: 64, offset: 320)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !921}
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !923, line: 795, size: 256, elements: !924)
!923 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/lizy2001/genbc/linux")
!924 = !{!925, !926, !927, !928, !929}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !922, file: !923, line: 796, baseType: !413, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !922, file: !923, line: 797, baseType: !848, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !922, file: !923, line: 799, baseType: !202, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !922, file: !923, line: 800, baseType: !7, size: 32, offset: 192)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !922, file: !923, line: 801, baseType: !7, size: 32, offset: 224)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !895, file: !86, line: 385, baseType: !931, size: 64, offset: 384)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!215, !413, !848, !583, !7, !7, !934, !935}
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !895, file: !86, line: 388, baseType: !937, size: 64, offset: 448)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!215, !413, !848, !583, !7, !7, !835, !203}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !895, file: !86, line: 393, baseType: !941, size: 64, offset: 512)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!944, !848, !944}
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !201, line: 125, baseType: !207)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !895, file: !86, line: 394, baseType: !946, size: 64, offset: 576)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{null, !835, !7, !7}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !895, file: !86, line: 395, baseType: !950, size: 64, offset: 640)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!215, !835, !200}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !895, file: !86, line: 396, baseType: !954, size: 64, offset: 704)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !835}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !895, file: !86, line: 397, baseType: !958, size: 64, offset: 768)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!368, !961, !1000}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !86, line: 320, size: 384, elements: !963)
!963 = !{!964, !965, !966, !970, !971, !972, !975, !976}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !962, file: !86, line: 321, baseType: !413, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !962, file: !86, line: 326, baseType: !583, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !962, file: !86, line: 327, baseType: !967, size: 64, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{null, !961, !204, !204}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !962, file: !86, line: 328, baseType: !203, size: 64, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !962, file: !86, line: 329, baseType: !215, size: 32, offset: 256)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !962, file: !86, line: 330, baseType: !973, size: 16, offset: 288)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !208, line: 19, baseType: !974)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !210, line: 24, baseType: !378)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !962, file: !86, line: 331, baseType: !973, size: 16, offset: 304)
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !962, file: !86, line: 332, baseType: !977, size: 64, offset: 320)
!977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !962, file: !86, line: 332, size: 64, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !977, file: !86, line: 333, baseType: !7, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !977, file: !86, line: 334, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !923, line: 569, size: 448, elements: !983)
!983 = !{!984, !985, !986}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !982, file: !923, line: 570, baseType: !835, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !982, file: !923, line: 571, baseType: !215, size: 32, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !982, file: !923, line: 572, baseType: !987, size: 320, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !988, line: 14, baseType: !989)
!988 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !988, line: 29, size: 320, elements: !990)
!990 = !{!991, !992, !993, !999}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !989, file: !988, line: 30, baseType: !7, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !989, file: !988, line: 31, baseType: !203, size: 64, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !989, file: !988, line: 32, baseType: !994, size: 64, offset: 128)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !988, line: 16, baseType: !995)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!215, !998, !7, !215, !203}
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !989, file: !988, line: 33, baseType: !283, size: 128, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !86, line: 64, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !895, file: !86, line: 402, baseType: !1003, size: 64, offset: 832)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!215, !848, !835, !835, !11}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !895, file: !86, line: 404, baseType: !1007, size: 64, offset: 896)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!272, !835, !1010}
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1011, line: 305, baseType: !7)
!1011 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !895, file: !86, line: 405, baseType: !954, size: 64, offset: 960)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !895, file: !86, line: 406, baseType: !910, size: 64, offset: 1024)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !895, file: !86, line: 407, baseType: !1015, size: 64, offset: 1088)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!215, !835, !202, !202}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !895, file: !86, line: 409, baseType: !1019, size: 64, offset: 1152)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{null, !835, !1022, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !895, file: !86, line: 410, baseType: !1024, size: 64, offset: 1216)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!215, !848, !835}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !895, file: !86, line: 413, baseType: !1028, size: 64, offset: 1280)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!215, !1031, !413, !1963}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !1033, line: 240, size: 1600, elements: !1034)
!1033 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/lizy2001/genbc/linux")
!1034 = !{!1035, !1036, !1038, !1045, !1047, !1048, !1050, !1057, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1070, !1076, !1077, !1955, !1956, !1957, !1958, !1959, !1960, !1961}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1032, file: !1033, line: 241, baseType: !202, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1032, file: !1033, line: 242, baseType: !1037, size: 16, offset: 64)
!1037 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1032, file: !1033, line: 243, baseType: !1039, size: 320, offset: 128)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1040, line: 83, size: 320, elements: !1041)
!1040 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/lizy2001/genbc/linux")
!1041 = !{!1042, !1043, !1044}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1039, file: !1040, line: 84, baseType: !215, size: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1039, file: !1040, line: 85, baseType: !283, size: 128, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1039, file: !1040, line: 86, baseType: !283, size: 128, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1032, file: !1033, line: 244, baseType: !1046, size: 8, offset: 448)
!1046 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1032, file: !1033, line: 245, baseType: !7, size: 32, offset: 480)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !1032, file: !1033, line: 246, baseType: !1049, size: 64, offset: 512)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !1032, file: !1033, line: 247, baseType: !1051, size: 64, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !1033, line: 208, size: 32, elements: !1053)
!1053 = !{!1054, !1055, !1056}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1052, file: !1033, line: 209, baseType: !296)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1052, file: !1033, line: 215, baseType: !7, size: 24, flags: DIFlagBitField, extraData: i64 0)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1052, file: !1033, line: 216, baseType: !7, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !1032, file: !1033, line: 248, baseType: !1058, size: 64, offset: 640)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !1033, line: 232, size: 64, elements: !1059)
!1059 = !{!1060, !1061}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1058, file: !1033, line: 233, baseType: !1052, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1058, file: !1033, line: 234, baseType: !1052, size: 32, offset: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !1032, file: !1033, line: 249, baseType: !7, size: 32, offset: 704)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !1032, file: !1033, line: 250, baseType: !7, size: 32, offset: 736)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1032, file: !1033, line: 251, baseType: !7, size: 32, offset: 768)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !1032, file: !1033, line: 252, baseType: !7, size: 32, offset: 800)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !1032, file: !1033, line: 253, baseType: !7, size: 32, offset: 832)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !1032, file: !1033, line: 254, baseType: !7, size: 32, offset: 864)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !1032, file: !1033, line: 255, baseType: !1069, size: 64, offset: 896)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !1032, file: !1033, line: 256, baseType: !1071, size: 64, offset: 960)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !1033, line: 227, size: 64, elements: !1073)
!1073 = !{!1074, !1075}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1072, file: !1033, line: 228, baseType: !1052, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1072, file: !1033, line: 229, baseType: !7, size: 32, offset: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !1032, file: !1033, line: 257, baseType: !870, size: 64, offset: 1024)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !1032, file: !1033, line: 258, baseType: !1078, size: 64, offset: 1088)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !1080, line: 22, size: 1344, elements: !1081)
!1080 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/lizy2001/genbc/linux")
!1081 = !{!1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1096, !1161, !1162, !1163, !1952, !1953, !1954}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !1079, file: !1080, line: 23, baseType: !565, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !1079, file: !1080, line: 24, baseType: !215, size: 32, offset: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !1079, file: !1080, line: 25, baseType: !483, size: 64, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "bd_super", scope: !1079, file: !1080, line: 26, baseType: !651, size: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "bd_mutex", scope: !1079, file: !1080, line: 27, baseType: !788, size: 192, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !1079, file: !1080, line: 28, baseType: !203, size: 64, offset: 384)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !1079, file: !1080, line: 29, baseType: !203, size: 64, offset: 448)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !1079, file: !1080, line: 30, baseType: !215, size: 32, offset: 512)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !1079, file: !1080, line: 31, baseType: !272, size: 8, offset: 544)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_disks", scope: !1079, file: !1080, line: 33, baseType: !283, size: 128, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "bd_contains", scope: !1079, file: !1080, line: 35, baseType: !1078, size: 64, offset: 704)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !1079, file: !1080, line: 36, baseType: !1094, size: 8, offset: 768)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !208, line: 17, baseType: !1095)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !210, line: 21, baseType: !481)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part", scope: !1079, file: !1080, line: 37, baseType: !1097, size: 64, offset: 832)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hd_struct", file: !1099, line: 53, size: 6592, elements: !1100)
!1099 = !DIFile(filename: "./include/linux/genhd.h", directory: "/home/lizy2001/genbc/linux")
!1100 = !{!1101, !1102, !1103, !1104, !1107, !1128, !1129, !1130, !1131, !1132, !1142}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "start_sect", scope: !1098, file: !1099, line: 54, baseType: !944, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sects", scope: !1098, file: !1099, line: 60, baseType: !944, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !1098, file: !1099, line: 64, baseType: !202, size: 64, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dkstats", scope: !1098, file: !1099, line: 65, baseType: !1105, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !1099, line: 65, flags: DIFlagFwdDecl)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1098, file: !1099, line: 66, baseType: !1108, size: 128, offset: 256)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1109, line: 105, size: 128, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!1110 = !{!1111, !1112}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1108, file: !1109, line: 110, baseType: !202, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1108, file: !1109, line: 118, baseType: !1113, size: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1109, line: 95, size: 448, elements: !1115)
!1115 = !{!1116, !1117, !1123, !1124, !1125, !1126, !1127}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1114, file: !1109, line: 96, baseType: !792, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1114, file: !1109, line: 97, baseType: !1118, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1109, line: 60, baseType: !1120)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null, !1122}
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1114, file: !1109, line: 98, baseType: !1118, size: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1114, file: !1109, line: 99, baseType: !272, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1114, file: !1109, line: 100, baseType: !272, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1114, file: !1109, line: 101, baseType: !426, size: 128, align: 64, offset: 256)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1114, file: !1109, line: 102, baseType: !1122, size: 64, offset: 384)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "__dev", scope: !1098, file: !1099, line: 68, baseType: !275, size: 5568, offset: 384)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "holder_dir", scope: !1098, file: !1099, line: 69, baseType: !289, size: 64, offset: 5952)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1098, file: !1099, line: 70, baseType: !215, size: 32, offset: 6016)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "partno", scope: !1098, file: !1099, line: 70, baseType: !215, size: 32, offset: 6048)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1098, file: !1099, line: 71, baseType: !1133, size: 64, offset: 6080)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !1099, line: 48, size: 808, elements: !1135)
!1135 = !{!1136, !1140}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !1134, file: !1099, line: 49, baseType: !1137, size: 296)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 296, elements: !1138)
!1138 = !{!1139}
!1139 = !DISubrange(count: 37)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !1134, file: !1099, line: 50, baseType: !1141, size: 512, offset: 296)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1094, size: 512, elements: !342)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_work", scope: !1098, file: !1099, line: 75, baseType: !1143, size: 448, offset: 6144)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1144, line: 124, size: 448, elements: !1145)
!1144 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1145 = !{!1146, !1157, !1158}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1143, file: !1144, line: 125, baseType: !1147, size: 256)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1144, line: 102, size: 256, elements: !1148)
!1148 = !{!1149, !1150, !1151}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1147, file: !1144, line: 103, baseType: !792, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1147, file: !1144, line: 104, baseType: !283, size: 128, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1147, file: !1144, line: 105, baseType: !1152, size: 64, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1144, line: 21, baseType: !1153)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{null, !1156}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1143, file: !1144, line: 126, baseType: !426, size: 128, align: 64, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1143, file: !1144, line: 129, baseType: !1159, size: 64, offset: 384)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1144, line: 18, flags: DIFlagFwdDecl)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part_count", scope: !1079, file: !1080, line: 39, baseType: !7, size: 32, offset: 896)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !1079, file: !1080, line: 41, baseType: !296, offset: 928)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !1079, file: !1080, line: 42, baseType: !1164, size: 64, offset: 960)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1099, line: 167, size: 8512, elements: !1166)
!1166 = !{!1167, !1168, !1169, !1170, !1174, !1175, !1176, !1187, !1188, !1378, !1933, !1934, !1935, !1936, !1937, !1938, !1941, !1942, !1945, !1946, !1947, !1950}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !1165, file: !1099, line: 171, baseType: !215, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !1165, file: !1099, line: 172, baseType: !215, size: 32, offset: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !1165, file: !1099, line: 173, baseType: !215, size: 32, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1165, file: !1099, line: 176, baseType: !1171, size: 256, offset: 96)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 256, elements: !1172)
!1172 = !{!1173}
!1173 = !DISubrange(count: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1165, file: !1099, line: 178, baseType: !378, size: 16, offset: 352)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !1165, file: !1099, line: 179, baseType: !378, size: 16, offset: 368)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !1165, file: !1099, line: 186, baseType: !1177, size: 64, offset: 384)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "disk_part_tbl", file: !1099, line: 149, size: 256, elements: !1179)
!1179 = !{!1180, !1181, !1182, !1183}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1178, file: !1099, line: 150, baseType: !426, size: 128, align: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1178, file: !1099, line: 151, baseType: !215, size: 32, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "last_lookup", scope: !1178, file: !1099, line: 152, baseType: !1097, size: 64, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1178, file: !1099, line: 153, baseType: !1184, offset: 256)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1097, elements: !1185)
!1185 = !{!1186}
!1186 = !DISubrange(count: -1)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !1165, file: !1099, line: 187, baseType: !1098, size: 6592, offset: 448)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !1165, file: !1099, line: 189, baseType: !1189, size: 64, offset: 7040)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1191)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !19, line: 1844, size: 960, elements: !1192)
!1192 = !{!1193, !1300, !1305, !1309, !1313, !1317, !1318, !1322, !1326, !1330, !1336, !1340, !1368, !1373, !1374}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !1191, file: !19, line: 1845, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!1197, !1198}
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !1080, line: 515, baseType: !7)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !1080, line: 203, size: 832, elements: !1200)
!1200 = !{!1201, !1202, !1203, !1204, !1205, !1206, !1207, !1209, !1210, !1211, !1219, !1224, !1225, !1250, !1251, !1252, !1253, !1254, !1299}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !1199, file: !1080, line: 204, baseType: !1198, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "bi_disk", scope: !1199, file: !1080, line: 205, baseType: !1164, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !1199, file: !1080, line: 206, baseType: !7, size: 32, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !1199, file: !1080, line: 210, baseType: !378, size: 16, offset: 160)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !1199, file: !1080, line: 211, baseType: !378, size: 16, offset: 176)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "bi_write_hint", scope: !1199, file: !1080, line: 212, baseType: !378, size: 16, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !1199, file: !1080, line: 213, baseType: !1208, size: 8, offset: 208)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !1080, line: 58, baseType: !1094)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "bi_partno", scope: !1199, file: !1080, line: 214, baseType: !1094, size: 8, offset: 216)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !1199, file: !1080, line: 215, baseType: !861, size: 32, offset: 224)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !1199, file: !1080, line: 217, baseType: !1212, size: 192, offset: 256)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1213, line: 37, size: 192, elements: !1214)
!1213 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/lizy2001/genbc/linux")
!1214 = !{!1215, !1216, !1217, !1218}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !1212, file: !1213, line: 38, baseType: !944, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !1212, file: !1213, line: 40, baseType: !7, size: 32, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !1212, file: !1213, line: 42, baseType: !7, size: 32, offset: 96)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !1212, file: !1213, line: 44, baseType: !7, size: 32, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !1199, file: !1080, line: 219, baseType: !1220, size: 64, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !1080, line: 19, baseType: !1222)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{null, !1198}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !1199, file: !1080, line: 221, baseType: !203, size: 64, offset: 512)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !1080, line: 240, baseType: !1226, size: 64, offset: 576)
!1226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1199, file: !1080, line: 240, size: 64, elements: !1227)
!1227 = !{!1228}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "bi_integrity", scope: !1226, file: !1080, line: 242, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_integrity_payload", file: !1231, line: 313, size: 832, elements: !1232)
!1231 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/lizy2001/genbc/linux")
!1232 = !{!1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1248}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "bip_bio", scope: !1230, file: !1231, line: 314, baseType: !1198, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "bip_iter", scope: !1230, file: !1231, line: 316, baseType: !1212, size: 192, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "bip_slab", scope: !1230, file: !1231, line: 318, baseType: !378, size: 16, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vcnt", scope: !1230, file: !1231, line: 319, baseType: !378, size: 16, offset: 272)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "bip_max_vcnt", scope: !1230, file: !1231, line: 320, baseType: !378, size: 16, offset: 288)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "bip_flags", scope: !1230, file: !1231, line: 321, baseType: !378, size: 16, offset: 304)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "bio_iter", scope: !1230, file: !1231, line: 323, baseType: !1212, size: 192, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "bip_work", scope: !1230, file: !1231, line: 325, baseType: !1147, size: 256, offset: 512)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vec", scope: !1230, file: !1231, line: 327, baseType: !1242, size: 64, offset: 768)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1213, line: 31, size: 128, elements: !1244)
!1244 = !{!1245, !1246, !1247}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1243, file: !1213, line: 32, baseType: !835, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1243, file: !1213, line: 33, baseType: !7, size: 32, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1243, file: !1213, line: 34, baseType: !7, size: 32, offset: 96)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "bip_inline_vecs", scope: !1230, file: !1231, line: 328, baseType: !1249, offset: 832)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1243, elements: !1185)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !1199, file: !1080, line: 246, baseType: !378, size: 16, offset: 640)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !1199, file: !1080, line: 252, baseType: !378, size: 16, offset: 656)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !1199, file: !1080, line: 254, baseType: !861, size: 32, offset: 672)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !1199, file: !1080, line: 256, baseType: !1242, size: 64, offset: 704)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !1199, file: !1080, line: 258, baseType: !1255, size: 64, offset: 768)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !1231, line: 682, size: 2368, elements: !1257)
!1257 = !{!1258, !1261, !1262, !1288, !1289, !1290, !1291, !1292, !1297, !1298}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !1256, file: !1231, line: 683, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !837, line: 117, flags: DIFlagFwdDecl)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !1256, file: !1231, line: 684, baseType: !7, size: 32, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !1256, file: !1231, line: 686, baseType: !1263, size: 448, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !1264, line: 26, baseType: !1265)
!1264 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/lizy2001/genbc/linux")
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !1264, line: 16, size: 448, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1270, !1271, !1272, !1277, !1282}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1265, file: !1264, line: 17, baseType: !296)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !1265, file: !1264, line: 18, baseType: !215, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !1265, file: !1264, line: 19, baseType: !215, size: 32, offset: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1265, file: !1264, line: 20, baseType: !935, size: 64, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !1265, file: !1264, line: 22, baseType: !203, size: 64, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1265, file: !1264, line: 23, baseType: !1273, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !1264, line: 13, baseType: !1275)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!203, !200, !203}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1265, file: !1264, line: 24, baseType: !1278, size: 64, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !1264, line: 14, baseType: !1280)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{null, !203, !203}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1265, file: !1264, line: 25, baseType: !1283, size: 128, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !988, line: 40, baseType: !1284)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !988, line: 36, size: 128, elements: !1285)
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1284, file: !988, line: 37, baseType: !296)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1284, file: !988, line: 38, baseType: !283, size: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !1256, file: !1231, line: 687, baseType: !1263, size: 448, offset: 576)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "bio_integrity_pool", scope: !1256, file: !1231, line: 689, baseType: !1263, size: 448, offset: 1024)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_integrity_pool", scope: !1256, file: !1231, line: 690, baseType: !1263, size: 448, offset: 1472)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !1256, file: !1231, line: 697, baseType: !296, offset: 1920)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !1256, file: !1231, line: 698, baseType: !1293, size: 128, offset: 1920)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1231, line: 554, size: 128, elements: !1294)
!1294 = !{!1295, !1296}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1293, file: !1231, line: 555, baseType: !1198, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1293, file: !1231, line: 556, baseType: !1198, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !1256, file: !1231, line: 699, baseType: !1147, size: 256, offset: 2048)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !1256, file: !1231, line: 700, baseType: !1159, size: 64, offset: 2304)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !1199, file: !1080, line: 265, baseType: !1249, offset: 832)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1191, file: !19, line: 1846, baseType: !1301, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!215, !1078, !1304}
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !201, line: 150, baseType: !7)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1191, file: !19, line: 1847, baseType: !1306, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !1164, !1304}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "rw_page", scope: !1191, file: !19, line: 1848, baseType: !1310, size: 64, offset: 192)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!215, !1078, !944, !835, !7}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !1191, file: !19, line: 1849, baseType: !1314, size: 64, offset: 256)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!215, !1078, !1304, !7, !202}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1191, file: !19, line: 1850, baseType: !1314, size: 64, offset: 320)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !1191, file: !19, line: 1851, baseType: !1319, size: 64, offset: 384)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!7, !1164, !7}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !1191, file: !19, line: 1853, baseType: !1323, size: 64, offset: 448)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{null, !1164}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "revalidate_disk", scope: !1191, file: !19, line: 1854, baseType: !1327, size: 64, offset: 512)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!215, !1164}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !1191, file: !19, line: 1855, baseType: !1331, size: 64, offset: 576)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!215, !1078, !1334}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !86, line: 51, flags: DIFlagFwdDecl)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !1191, file: !19, line: 1857, baseType: !1337, size: 64, offset: 640)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{null, !1078, !202}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !1191, file: !19, line: 1858, baseType: !1341, size: 64, offset: 704)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!215, !1164, !944, !7, !1344, !203}
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !19, line: 354, baseType: !1345)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!215, !1348, !7, !203}
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !1350, line: 106, size: 512, elements: !1351)
!1350 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/lizy2001/genbc/linux")
!1351 = !{!1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1363, !1364}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1349, file: !1350, line: 107, baseType: !209, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1349, file: !1350, line: 108, baseType: !209, size: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !1349, file: !1350, line: 109, baseType: !209, size: 64, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1349, file: !1350, line: 110, baseType: !1095, size: 8, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1349, file: !1350, line: 111, baseType: !1095, size: 8, offset: 200)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !1349, file: !1350, line: 112, baseType: !1095, size: 8, offset: 208)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !1349, file: !1350, line: 113, baseType: !1095, size: 8, offset: 216)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !1349, file: !1350, line: 114, baseType: !1360, size: 32, offset: 224)
!1360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1095, size: 32, elements: !1361)
!1361 = !{!1362}
!1362 = !DISubrange(count: 4)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1349, file: !1350, line: 115, baseType: !209, size: 64, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1349, file: !1350, line: 116, baseType: !1365, size: 192, offset: 320)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1095, size: 192, elements: !1366)
!1366 = !{!1367}
!1367 = !DISubrange(count: 24)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1191, file: !19, line: 1860, baseType: !1369, size: 64, offset: 768)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!337, !1164, !1372}
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1191, file: !19, line: 1861, baseType: !197, size: 64, offset: 832)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !1191, file: !19, line: 1862, baseType: !1375, size: 64, offset: 896)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1377)
!1377 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !19, line: 41, flags: DIFlagFwdDecl)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1165, file: !1099, line: 190, baseType: !1379, size: 64, offset: 7104)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !19, line: 399, size: 14464, elements: !1381)
!1381 = !{!1382, !1518, !1640, !1641, !1644, !1647, !1651, !1652, !1653, !1655, !1656, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1794, !1805, !1806, !1807, !1808, !1809, !1839, !1840, !1841, !1842, !1843, !1844, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1918, !1919, !1920, !1921, !1924, !1925, !1926, !1927, !1928, !1929}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !1380, file: !19, line: 400, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !19, line: 130, size: 2176, elements: !1385)
!1385 = !{!1386, !1387, !1390, !1393, !1394, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1408, !1415, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1481, !1482, !1483, !1516, !1517}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1384, file: !19, line: 131, baseType: !1379, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !1384, file: !19, line: 132, baseType: !1388, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !19, line: 132, flags: DIFlagFwdDecl)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !1384, file: !19, line: 133, baseType: !1391, size: 64, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !19, line: 133, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1384, file: !19, line: 135, baseType: !7, size: 32, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !1384, file: !19, line: 136, baseType: !1395, size: 32, offset: 224)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !19, line: 66, baseType: !220)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1384, file: !19, line: 138, baseType: !215, size: 32, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !1384, file: !19, line: 139, baseType: !215, size: 32, offset: 288)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !1384, file: !19, line: 142, baseType: !7, size: 32, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !1384, file: !19, line: 143, baseType: !944, size: 64, offset: 384)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !1384, file: !19, line: 145, baseType: !1198, size: 64, offset: 448)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !1384, file: !19, line: 146, baseType: !1198, size: 64, offset: 512)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !1384, file: !19, line: 148, baseType: !283, size: 128, offset: 576)
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1384, file: !19, line: 157, baseType: !1404, size: 128, offset: 704)
!1404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1384, file: !19, line: 157, size: 128, elements: !1405)
!1405 = !{!1406, !1407}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1404, file: !19, line: 158, baseType: !691, size: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !1404, file: !19, line: 159, baseType: !283, size: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, scope: !1384, file: !19, line: 167, baseType: !1409, size: 192, offset: 832)
!1409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1384, file: !19, line: 167, size: 192, elements: !1410)
!1410 = !{!1411, !1412, !1413, !1414}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1409, file: !19, line: 168, baseType: !874, size: 192, align: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !1409, file: !19, line: 169, baseType: !1243, size: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "completion_data", scope: !1409, file: !19, line: 170, baseType: !203, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !1409, file: !19, line: 171, baseType: !215, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, scope: !1384, file: !19, line: 180, baseType: !1416, size: 256, offset: 1024)
!1416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1384, file: !19, line: 180, size: 256, elements: !1417)
!1417 = !{!1418, !1455}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !1416, file: !19, line: 184, baseType: !1419, size: 192)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1416, file: !19, line: 181, size: 192, elements: !1420)
!1420 = !{!1421, !1451}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !1419, file: !19, line: 182, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1424, line: 73, size: 448, elements: !1425)
!1424 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1425 = !{!1426, !1427, !1440, !1445, !1450}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1423, file: !1424, line: 74, baseType: !1379, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1423, file: !1424, line: 75, baseType: !1428, size: 64, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1424, line: 99, size: 704, elements: !1430)
!1430 = !{!1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1429, file: !1424, line: 100, baseType: !792, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1429, file: !1424, line: 101, baseType: !861, size: 32, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1429, file: !1424, line: 102, baseType: !861, size: 32, offset: 96)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1429, file: !1424, line: 105, baseType: !296, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1429, file: !1424, line: 107, baseType: !378, size: 16, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1429, file: !1424, line: 109, baseType: !853, size: 128, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1429, file: !1424, line: 110, baseType: !1422, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1429, file: !1424, line: 111, baseType: !687, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1429, file: !1424, line: 113, baseType: !1147, size: 256, offset: 448)
!1440 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !1424, line: 83, baseType: !1441, size: 128, offset: 128)
!1441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !1424, line: 83, size: 128, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1441, file: !1424, line: 84, baseType: !283, size: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1441, file: !1424, line: 85, baseType: !1259, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !1424, line: 87, baseType: !1446, size: 128, offset: 256)
!1446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !1424, line: 87, size: 128, elements: !1447)
!1447 = !{!1448, !1449}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1446, file: !1424, line: 88, baseType: !691, size: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1446, file: !1424, line: 89, baseType: !426, size: 128, align: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1423, file: !1424, line: 92, baseType: !7, size: 32, offset: 384)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1419, file: !19, line: 183, baseType: !1452, size: 128, offset: 64)
!1452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 128, elements: !1453)
!1453 = !{!1454}
!1454 = !DISubrange(count: 2)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1416, file: !19, line: 190, baseType: !1456, size: 256)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1416, file: !19, line: 186, size: 256, elements: !1457)
!1457 = !{!1458, !1459, !1460}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1456, file: !19, line: 187, baseType: !7, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1456, file: !19, line: 188, baseType: !283, size: 128, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !1456, file: !19, line: 189, baseType: !1461, size: 64, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !19, line: 62, baseType: !1463)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{null, !1383, !1208}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "rq_disk", scope: !1384, file: !19, line: 193, baseType: !1164, size: 64, offset: 1280)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1384, file: !19, line: 194, baseType: !1097, size: 64, offset: 1344)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !1384, file: !19, line: 200, baseType: !207, size: 64, offset: 1408)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !1384, file: !19, line: 202, baseType: !207, size: 64, offset: 1472)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !1384, file: !19, line: 212, baseType: !378, size: 16, offset: 1536)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !1384, file: !19, line: 218, baseType: !378, size: 16, offset: 1552)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_integrity_segments", scope: !1384, file: !19, line: 221, baseType: !378, size: 16, offset: 1568)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "write_hint", scope: !1384, file: !19, line: 229, baseType: !378, size: 16, offset: 1584)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1384, file: !19, line: 230, baseType: !378, size: 16, offset: 1600)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1384, file: !19, line: 232, baseType: !18, size: 32, offset: 1632)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1384, file: !19, line: 233, baseType: !1476, size: 32, offset: 1664)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1477, line: 113, baseType: !1478)
!1477 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1477, line: 111, size: 32, elements: !1479)
!1479 = !{!1480}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1478, file: !1477, line: 112, baseType: !861, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1384, file: !19, line: 235, baseType: !7, size: 32, offset: 1696)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1384, file: !19, line: 236, baseType: !202, size: 64, offset: 1728)
!1483 = !DIDerivedType(tag: DW_TAG_member, scope: !1384, file: !19, line: 238, baseType: !1484, size: 256, offset: 1792)
!1484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1384, file: !19, line: 238, size: 256, elements: !1485)
!1485 = !{!1486, !1515}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "csd", scope: !1484, file: !19, line: 239, baseType: !1487, size: 256)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_data", file: !1488, line: 23, size: 256, elements: !1489)
!1488 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/lizy2001/genbc/linux")
!1489 = !{!1490, !1512, !1514}
!1490 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !1488, line: 24, baseType: !1491, size: 128)
!1491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !1488, line: 24, size: 128, elements: !1492)
!1492 = !{!1493, !1505}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1491, file: !1488, line: 25, baseType: !1494, size: 128)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1495, line: 58, size: 128, elements: !1496)
!1495 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/lizy2001/genbc/linux")
!1496 = !{!1497, !1498, !1503, !1504}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1494, file: !1495, line: 59, baseType: !420, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, scope: !1494, file: !1495, line: 60, baseType: !1499, size: 32, offset: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1494, file: !1495, line: 60, size: 32, elements: !1500)
!1500 = !{!1501, !1502}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1499, file: !1495, line: 61, baseType: !7, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1499, file: !1495, line: 62, baseType: !861, size: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1494, file: !1495, line: 65, baseType: !973, size: 16, offset: 96)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1494, file: !1495, line: 65, baseType: !973, size: 16, offset: 112)
!1505 = !DIDerivedType(tag: DW_TAG_member, scope: !1491, file: !1488, line: 26, baseType: !1506, size: 128)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1491, file: !1488, line: 26, size: 128, elements: !1507)
!1507 = !{!1508, !1509, !1510, !1511}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1506, file: !1488, line: 27, baseType: !420, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1506, file: !1488, line: 28, baseType: !7, size: 32, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1506, file: !1488, line: 30, baseType: !973, size: 16, offset: 96)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1506, file: !1488, line: 30, baseType: !973, size: 16, offset: 112)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1487, file: !1488, line: 34, baseType: !1513, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !1488, line: 17, baseType: !522)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1487, file: !1488, line: 35, baseType: !203, size: 64, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !1484, file: !19, line: 240, baseType: !207, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !1384, file: !19, line: 246, baseType: !1461, size: 64, offset: 2048)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !1384, file: !19, line: 247, baseType: !203, size: 64, offset: 2112)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !1380, file: !19, line: 401, baseType: !1519, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !25, line: 101, size: 4992, elements: !1521)
!1521 = !{!1522, !1634, !1635, !1636, !1637, !1638}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1520, file: !25, line: 103, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_type", file: !25, line: 66, size: 2240, elements: !1525)
!1525 = !{!1526, !1527, !1609, !1610, !1611, !1624, !1625, !1626, !1628, !1629, !1633}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache", scope: !1524, file: !25, line: 69, baseType: !1259, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1524, file: !25, line: 72, baseType: !1528, size: 1408, offset: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_mq_ops", file: !25, line: 29, size: 1408, elements: !1529)
!1529 = !{!1530, !1534, !1538, !1542, !1546, !1550, !1554, !1558, !1563, !1567, !1571, !1577, !1581, !1582, !1586, !1590, !1594, !1598, !1599, !1603, !1604, !1608}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "init_sched", scope: !1528, file: !25, line: 30, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!215, !1379, !1523}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "exit_sched", scope: !1528, file: !25, line: 31, baseType: !1535, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{null, !1519}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !1528, file: !25, line: 32, baseType: !1539, size: 64, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!215, !1391, !7}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !1528, file: !25, line: 33, baseType: !1543, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{null, !1391, !7}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "depth_updated", scope: !1528, file: !25, line: 34, baseType: !1547, size: 64, offset: 256)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{null, !1391}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "allow_merge", scope: !1528, file: !25, line: 36, baseType: !1551, size: 64, offset: 320)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!272, !1379, !1383, !1198}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "bio_merge", scope: !1528, file: !25, line: 37, baseType: !1555, size: 64, offset: 384)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!272, !1391, !1198, !7}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "request_merge", scope: !1528, file: !25, line: 38, baseType: !1559, size: 64, offset: 448)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!215, !1379, !1562, !1198}
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "request_merged", scope: !1528, file: !25, line: 39, baseType: !1564, size: 64, offset: 512)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{null, !1379, !1383, !24}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "requests_merged", scope: !1528, file: !25, line: 40, baseType: !1568, size: 64, offset: 576)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{null, !1379, !1383, !1383}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "limit_depth", scope: !1528, file: !25, line: 41, baseType: !1572, size: 64, offset: 640)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !7, !1575}
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_alloc_data", file: !25, line: 26, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_request", scope: !1528, file: !25, line: 42, baseType: !1578, size: 64, offset: 704)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{null, !1383}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "finish_request", scope: !1528, file: !25, line: 43, baseType: !1578, size: 64, offset: 768)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "insert_requests", scope: !1528, file: !25, line: 44, baseType: !1583, size: 64, offset: 832)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{null, !1391, !286, !272}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_request", scope: !1528, file: !25, line: 45, baseType: !1587, size: 64, offset: 896)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!1383, !1391}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "has_work", scope: !1528, file: !25, line: 46, baseType: !1591, size: 64, offset: 960)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!272, !1391}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "completed_request", scope: !1528, file: !25, line: 47, baseType: !1595, size: 64, offset: 1024)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null, !1383, !207}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_request", scope: !1528, file: !25, line: 48, baseType: !1578, size: 64, offset: 1088)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "former_request", scope: !1528, file: !25, line: 49, baseType: !1600, size: 64, offset: 1152)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!1383, !1379, !1383}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "next_request", scope: !1528, file: !25, line: 50, baseType: !1600, size: 64, offset: 1216)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "init_icq", scope: !1528, file: !25, line: 51, baseType: !1605, size: 64, offset: 1280)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{null, !1422}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "exit_icq", scope: !1528, file: !25, line: 52, baseType: !1605, size: 64, offset: 1344)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "icq_size", scope: !1524, file: !25, line: 74, baseType: !383, size: 64, offset: 1472)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "icq_align", scope: !1524, file: !25, line: 75, baseType: !383, size: 64, offset: 1536)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_attrs", scope: !1524, file: !25, line: 76, baseType: !1612, size: 64, offset: 1600)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elv_fs_entry", file: !25, line: 57, size: 256, elements: !1614)
!1614 = !{!1615, !1616, !1620}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1613, file: !25, line: 58, baseType: !373, size: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1613, file: !25, line: 59, baseType: !1617, size: 64, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!368, !1519, !337}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1613, file: !25, line: 60, baseType: !1621, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!368, !1519, !269, !383}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_name", scope: !1524, file: !25, line: 77, baseType: !269, size: 64, offset: 1664)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_alias", scope: !1524, file: !25, line: 78, baseType: !269, size: 64, offset: 1728)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_features", scope: !1524, file: !25, line: 79, baseType: !1627, size: 32, offset: 1792)
!1627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_owner", scope: !1524, file: !25, line: 80, baseType: !197, size: 64, offset: 1856)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache_name", scope: !1524, file: !25, line: 87, baseType: !1630, size: 176, offset: 1920)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 176, elements: !1631)
!1631 = !{!1632}
!1632 = !DISubrange(count: 22)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1524, file: !25, line: 88, baseType: !283, size: 128, offset: 2112)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_data", scope: !1520, file: !25, line: 104, baseType: !203, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1520, file: !25, line: 105, baseType: !278, size: 512, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !1520, file: !25, line: 106, baseType: !788, size: 192, offset: 640)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !1520, file: !25, line: 107, baseType: !7, size: 1, offset: 832, flags: DIFlagBitField, extraData: i64 832)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1520, file: !25, line: 108, baseType: !1639, size: 4096, offset: 896)
!1639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 4096, elements: !342)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !1380, file: !19, line: 403, baseType: !1108, size: 128, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1380, file: !19, line: 405, baseType: !1642, size: 64, offset: 256)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !19, line: 43, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !1380, file: !19, line: 406, baseType: !1645, size: 64, offset: 320)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !19, line: 42, flags: DIFlagFwdDecl)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !1380, file: !19, line: 408, baseType: !1648, size: 64, offset: 384)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1650)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !19, line: 408, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !1380, file: !19, line: 411, baseType: !1388, size: 64, offset: 448)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !1380, file: !19, line: 413, baseType: !7, size: 32, offset: 512)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "queue_hw_ctx", scope: !1380, file: !19, line: 416, baseType: !1654, size: 64, offset: 576)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !1380, file: !19, line: 417, baseType: !7, size: 32, offset: 640)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1380, file: !19, line: 419, baseType: !1657, size: 64, offset: 704)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !32, line: 165, size: 4672, elements: !1659)
!1659 = !{!1660, !1661, !1662, !1663, !1664, !1665, !1670, !1671, !1672, !1673, !1674, !1675, !1731, !1732, !1733, !1735, !1737, !1738}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1658, file: !32, line: 166, baseType: !207, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1658, file: !32, line: 167, baseType: !874, size: 192, align: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !1658, file: !32, line: 168, baseType: !283, size: 128, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1658, file: !32, line: 169, baseType: !202, size: 64, offset: 384)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !1658, file: !32, line: 170, baseType: !202, size: 64, offset: 448)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1658, file: !32, line: 172, baseType: !1666, size: 32, offset: 512)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1667, line: 19, size: 32, elements: !1668)
!1667 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1668 = !{!1669}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1666, file: !1667, line: 20, baseType: !1476, size: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !1658, file: !32, line: 173, baseType: !7, size: 32, offset: 544)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !1658, file: !32, line: 174, baseType: !7, size: 32, offset: 576)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !1658, file: !32, line: 175, baseType: !7, size: 32, offset: 608)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !1658, file: !32, line: 175, baseType: !7, size: 32, offset: 640)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !1658, file: !32, line: 181, baseType: !792, size: 64, offset: 704)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !1658, file: !32, line: 183, baseType: !1676, size: 2688, offset: 768)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !32, line: 107, size: 2688, elements: !1677)
!1677 = !{!1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1707, !1708, !1709, !1710, !1711, !1729, !1730}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !1676, file: !32, line: 108, baseType: !1657, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1676, file: !32, line: 110, baseType: !202, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !1676, file: !32, line: 111, baseType: !202, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !1676, file: !32, line: 113, baseType: !283, size: 128, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !1676, file: !32, line: 114, baseType: !283, size: 128, offset: 320)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !1676, file: !32, line: 115, baseType: !283, size: 128, offset: 448)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !1676, file: !32, line: 116, baseType: !283, size: 128, offset: 576)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1676, file: !32, line: 117, baseType: !296, offset: 704)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !1676, file: !32, line: 119, baseType: !1687, size: 256, offset: 704)
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1688, size: 256, elements: !1361)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1689, line: 97, size: 64, elements: !1690)
!1689 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/lizy2001/genbc/linux")
!1690 = !{!1691}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1688, file: !1689, line: 98, baseType: !798, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "congested", scope: !1676, file: !32, line: 121, baseType: !202, size: 64, offset: 960)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !1676, file: !32, line: 123, baseType: !202, size: 64, offset: 1024)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !1676, file: !32, line: 124, baseType: !202, size: 64, offset: 1088)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !1676, file: !32, line: 125, baseType: !202, size: 64, offset: 1152)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !1676, file: !32, line: 126, baseType: !202, size: 64, offset: 1216)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !1676, file: !32, line: 127, baseType: !202, size: 64, offset: 1280)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !1676, file: !32, line: 135, baseType: !202, size: 64, offset: 1344)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !1676, file: !32, line: 136, baseType: !202, size: 64, offset: 1408)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !1676, file: !32, line: 138, baseType: !1701, size: 128, offset: 1472)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !1702, line: 76, size: 128, elements: !1703)
!1702 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/lizy2001/genbc/linux")
!1703 = !{!1704, !1705, !1706}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1701, file: !1702, line: 78, baseType: !1688, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !1701, file: !1702, line: 80, baseType: !7, size: 32, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1701, file: !1702, line: 81, baseType: !887, offset: 96)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !1676, file: !32, line: 139, baseType: !215, size: 32, offset: 1600)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !1676, file: !32, line: 140, baseType: !31, size: 32, offset: 1632)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !1676, file: !32, line: 142, baseType: !296, offset: 1664)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !1676, file: !32, line: 143, baseType: !283, size: 128, offset: 1664)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !1676, file: !32, line: 144, baseType: !1712, size: 704, offset: 1792)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1144, line: 115, size: 704, elements: !1713)
!1713 = !{!1714, !1715, !1727, !1728}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1712, file: !1144, line: 116, baseType: !1147, size: 256)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1712, file: !1144, line: 117, baseType: !1716, size: 320, offset: 256)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1717, line: 11, size: 320, elements: !1718)
!1717 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1718 = !{!1719, !1720, !1721, !1726}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1716, file: !1717, line: 16, baseType: !691, size: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1716, file: !1717, line: 17, baseType: !202, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1716, file: !1717, line: 18, baseType: !1722, size: 64, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{null, !1725}
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1716, file: !1717, line: 19, baseType: !219, size: 32, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1712, file: !1144, line: 120, baseType: !1159, size: 64, offset: 576)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1712, file: !1144, line: 121, baseType: !215, size: 32, offset: 640)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_sleep", scope: !1676, file: !32, line: 146, baseType: !202, size: 64, offset: 2496)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !1676, file: !32, line: 148, baseType: !283, size: 128, offset: 2560)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !1658, file: !32, line: 184, baseType: !283, size: 128, offset: 3456)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !1658, file: !32, line: 190, baseType: !1283, size: 128, offset: 3584)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1658, file: !32, line: 192, baseType: !1734, size: 64, offset: 3712)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1658, file: !32, line: 193, baseType: !1736, size: 512, offset: 3776)
!1736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 512, elements: !342)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1658, file: !32, line: 194, baseType: !1734, size: 64, offset: 4288)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !1658, file: !32, line: 196, baseType: !1716, size: 320, offset: 4352)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !1380, file: !19, line: 425, baseType: !203, size: 64, offset: 768)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !1380, file: !19, line: 430, baseType: !202, size: 64, offset: 832)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !1380, file: !19, line: 436, baseType: !861, size: 32, offset: 896)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1380, file: !19, line: 442, baseType: !215, size: 32, offset: 928)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_gfp", scope: !1380, file: !19, line: 447, baseType: !200, size: 32, offset: 960)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !1380, file: !19, line: 449, baseType: !296, offset: 992)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1380, file: !19, line: 454, baseType: !278, size: 512, offset: 1024)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !1380, file: !19, line: 459, baseType: !289, size: 64, offset: 1536)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "integrity", scope: !1380, file: !19, line: 462, baseType: !1748, size: 128, offset: 1600)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity", file: !1099, line: 159, size: 128, elements: !1749)
!1749 = !{!1750, !1779, !1780, !1781, !1782}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !1748, file: !1099, line: 160, baseType: !1751, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1753)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_profile", file: !19, line: 1664, size: 320, elements: !1754)
!1754 = !{!1755, !1769, !1770, !1773, !1778}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "generate_fn", scope: !1753, file: !19, line: 1665, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_processing_fn", file: !19, line: 1660, baseType: !1758)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!1208, !1760}
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_iter", file: !19, line: 1651, size: 320, elements: !1762)
!1762 = !{!1763, !1764, !1765, !1766, !1767, !1768}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "prot_buf", scope: !1761, file: !19, line: 1652, baseType: !203, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "data_buf", scope: !1761, file: !19, line: 1653, baseType: !203, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !1761, file: !19, line: 1654, baseType: !944, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !1761, file: !19, line: 1655, baseType: !7, size: 32, offset: 192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1761, file: !19, line: 1656, baseType: !378, size: 16, offset: 224)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1761, file: !19, line: 1657, baseType: !269, size: 64, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "verify_fn", scope: !1753, file: !19, line: 1666, baseType: !1756, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_fn", scope: !1753, file: !19, line: 1667, baseType: !1771, size: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_prepare_fn", file: !19, line: 1661, baseType: !1579)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "complete_fn", scope: !1753, file: !19, line: 1668, baseType: !1774, size: 64, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_complete_fn", file: !19, line: 1662, baseType: !1776)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{null, !1383, !7}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1753, file: !19, line: 1669, baseType: !269, size: 64, offset: 256)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1748, file: !1099, line: 161, baseType: !481, size: 8, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "tuple_size", scope: !1748, file: !1099, line: 162, baseType: !481, size: 8, offset: 72)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "interval_exp", scope: !1748, file: !1099, line: 163, baseType: !481, size: 8, offset: 80)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "tag_size", scope: !1748, file: !1099, line: 164, baseType: !481, size: 8, offset: 88)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1380, file: !19, line: 466, baseType: !1734, size: 64, offset: 1728)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !1380, file: !19, line: 467, baseType: !43, size: 32, offset: 1792)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !1380, file: !19, line: 468, baseType: !7, size: 32, offset: 1824)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !1380, file: !19, line: 474, baseType: !202, size: 64, offset: 1856)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !1380, file: !19, line: 476, baseType: !7, size: 32, offset: 1920)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !1380, file: !19, line: 477, baseType: !7, size: 32, offset: 1952)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !1380, file: !19, line: 484, baseType: !7, size: 32, offset: 1984)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "poll_nsec", scope: !1380, file: !19, line: 485, baseType: !215, size: 32, offset: 2016)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "poll_cb", scope: !1380, file: !19, line: 487, baseType: !1792, size: 64, offset: 2048)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_stat_callback", file: !19, line: 44, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "poll_stat", scope: !1380, file: !19, line: 488, baseType: !1795, size: 5120, offset: 2112)
!1795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1796, size: 5120, elements: !1803)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_rq_stat", file: !1080, line: 540, size: 320, elements: !1797)
!1797 = !{!1798, !1799, !1800, !1801, !1802}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "mean", scope: !1796, file: !1080, line: 541, baseType: !207, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !1796, file: !1080, line: 542, baseType: !207, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1796, file: !1080, line: 543, baseType: !207, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "nr_samples", scope: !1796, file: !1080, line: 544, baseType: !219, size: 32, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1796, file: !1080, line: 545, baseType: !207, size: 64, offset: 256)
!1803 = !{!1804}
!1804 = !DISubrange(count: 16)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1380, file: !19, line: 490, baseType: !1716, size: 320, offset: 7232)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !1380, file: !19, line: 491, baseType: !1147, size: 256, offset: 7552)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_sbitmap", scope: !1380, file: !19, line: 493, baseType: !861, size: 32, offset: 7808)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1380, file: !19, line: 495, baseType: !283, size: 128, offset: 7872)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !1380, file: !19, line: 502, baseType: !1810, size: 896, offset: 8000)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !19, line: 321, size: 896, elements: !1811)
!1811 = !{!1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_pfn", scope: !1810, file: !19, line: 322, baseType: !202, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !1810, file: !19, line: 323, baseType: !202, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !1810, file: !19, line: 324, baseType: !202, size: 64, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !1810, file: !19, line: 326, baseType: !7, size: 32, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !1810, file: !19, line: 327, baseType: !7, size: 32, offset: 224)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !1810, file: !19, line: 328, baseType: !7, size: 32, offset: 256)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !1810, file: !19, line: 329, baseType: !7, size: 32, offset: 288)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1810, file: !19, line: 330, baseType: !7, size: 32, offset: 320)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !1810, file: !19, line: 331, baseType: !7, size: 32, offset: 352)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !1810, file: !19, line: 332, baseType: !7, size: 32, offset: 384)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !1810, file: !19, line: 333, baseType: !7, size: 32, offset: 416)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !1810, file: !19, line: 334, baseType: !7, size: 32, offset: 448)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !1810, file: !19, line: 335, baseType: !7, size: 32, offset: 480)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !1810, file: !19, line: 336, baseType: !7, size: 32, offset: 512)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !1810, file: !19, line: 337, baseType: !7, size: 32, offset: 544)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_same_sectors", scope: !1810, file: !19, line: 338, baseType: !7, size: 32, offset: 576)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !1810, file: !19, line: 339, baseType: !7, size: 32, offset: 608)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !1810, file: !19, line: 340, baseType: !7, size: 32, offset: 640)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !1810, file: !19, line: 341, baseType: !7, size: 32, offset: 672)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !1810, file: !19, line: 342, baseType: !7, size: 32, offset: 704)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !1810, file: !19, line: 344, baseType: !378, size: 16, offset: 736)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !1810, file: !19, line: 345, baseType: !378, size: 16, offset: 752)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !1810, file: !19, line: 346, baseType: !378, size: 16, offset: 768)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !1810, file: !19, line: 348, baseType: !481, size: 8, offset: 784)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !1810, file: !19, line: 349, baseType: !481, size: 8, offset: 792)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !1810, file: !19, line: 350, baseType: !481, size: 8, offset: 800)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !1810, file: !19, line: 351, baseType: !50, size: 32, offset: 832)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !1380, file: !19, line: 504, baseType: !7, size: 32, offset: 8896)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "sg_timeout", scope: !1380, file: !19, line: 534, baseType: !7, size: 32, offset: 8928)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "sg_reserved_size", scope: !1380, file: !19, line: 535, baseType: !7, size: 32, offset: 8960)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1380, file: !19, line: 536, baseType: !215, size: 32, offset: 8992)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !1380, file: !19, line: 537, baseType: !788, size: 192, offset: 9024)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !1380, file: !19, line: 544, baseType: !1845, size: 64, offset: 9216)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !19, line: 40, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !1380, file: !19, line: 546, baseType: !283, size: 128, offset: 9280)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !1380, file: !19, line: 547, baseType: !296, offset: 9408)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !1380, file: !19, line: 548, baseType: !1712, size: 704, offset: 9408)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !1380, file: !19, line: 550, baseType: !788, size: 192, offset: 10112)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !1380, file: !19, line: 551, baseType: !788, size: 192, offset: 10304)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !1380, file: !19, line: 557, baseType: !283, size: 128, offset: 10496)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !1380, file: !19, line: 558, baseType: !296, offset: 10624)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !1380, file: !19, line: 560, baseType: !215, size: 32, offset: 10624)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "bsg_dev", scope: !1380, file: !19, line: 563, baseType: !1856, size: 256, offset: 10688)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_class_device", file: !1857, line: 18, size: 256, elements: !1858)
!1857 = !DIFile(filename: "./include/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!1858 = !{!1859, !1860, !1861, !1862}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !1856, file: !1857, line: 19, baseType: !1734, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !1856, file: !1857, line: 20, baseType: !215, size: 32, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1856, file: !1857, line: 21, baseType: !1379, size: 64, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1856, file: !1857, line: 22, baseType: !1863, size: 64, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1865)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_ops", file: !1857, line: 10, size: 256, elements: !1866)
!1866 = !{!1867, !1909, !1913, !1917}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "check_proto", scope: !1865, file: !1857, line: 11, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!215, !1871}
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_io_v4", file: !1873, line: 22, size: 1280, elements: !1874)
!1873 = !DIFile(filename: "./include/uapi/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!1874 = !{!1875, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "guard", scope: !1872, file: !1873, line: 23, baseType: !1876, size: 32)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !210, line: 26, baseType: !215)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !1872, file: !1873, line: 24, baseType: !220, size: 32, offset: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "subprotocol", scope: !1872, file: !1873, line: 25, baseType: !220, size: 32, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "request_len", scope: !1872, file: !1873, line: 28, baseType: !220, size: 32, offset: 96)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1872, file: !1873, line: 29, baseType: !209, size: 64, offset: 128)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "request_tag", scope: !1872, file: !1873, line: 30, baseType: !209, size: 64, offset: 192)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "request_attr", scope: !1872, file: !1873, line: 31, baseType: !220, size: 32, offset: 256)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "request_priority", scope: !1872, file: !1873, line: 32, baseType: !220, size: 32, offset: 288)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "request_extra", scope: !1872, file: !1873, line: 33, baseType: !220, size: 32, offset: 320)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "max_response_len", scope: !1872, file: !1873, line: 34, baseType: !220, size: 32, offset: 352)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !1872, file: !1873, line: 35, baseType: !209, size: 64, offset: 384)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "dout_iovec_count", scope: !1872, file: !1873, line: 38, baseType: !220, size: 32, offset: 448)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xfer_len", scope: !1872, file: !1873, line: 40, baseType: !220, size: 32, offset: 480)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "din_iovec_count", scope: !1872, file: !1873, line: 41, baseType: !220, size: 32, offset: 512)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "din_xfer_len", scope: !1872, file: !1873, line: 42, baseType: !220, size: 32, offset: 544)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xferp", scope: !1872, file: !1873, line: 43, baseType: !209, size: 64, offset: 576)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "din_xferp", scope: !1872, file: !1873, line: 44, baseType: !209, size: 64, offset: 640)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1872, file: !1873, line: 46, baseType: !220, size: 32, offset: 704)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1872, file: !1873, line: 47, baseType: !220, size: 32, offset: 736)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "usr_ptr", scope: !1872, file: !1873, line: 48, baseType: !209, size: 64, offset: 768)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "spare_in", scope: !1872, file: !1873, line: 49, baseType: !220, size: 32, offset: 832)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "driver_status", scope: !1872, file: !1873, line: 51, baseType: !220, size: 32, offset: 864)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "transport_status", scope: !1872, file: !1873, line: 52, baseType: !220, size: 32, offset: 896)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "device_status", scope: !1872, file: !1873, line: 53, baseType: !220, size: 32, offset: 928)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "retry_delay", scope: !1872, file: !1873, line: 54, baseType: !220, size: 32, offset: 960)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1872, file: !1873, line: 55, baseType: !220, size: 32, offset: 992)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !1872, file: !1873, line: 56, baseType: !220, size: 32, offset: 1024)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "response_len", scope: !1872, file: !1873, line: 57, baseType: !220, size: 32, offset: 1056)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "din_resid", scope: !1872, file: !1873, line: 58, baseType: !1876, size: 32, offset: 1088)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "dout_resid", scope: !1872, file: !1873, line: 59, baseType: !1876, size: 32, offset: 1120)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "generated_tag", scope: !1872, file: !1873, line: 60, baseType: !209, size: 64, offset: 1152)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "spare_out", scope: !1872, file: !1873, line: 61, baseType: !220, size: 32, offset: 1216)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1872, file: !1873, line: 63, baseType: !220, size: 32, offset: 1248)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "fill_hdr", scope: !1865, file: !1857, line: 12, baseType: !1910, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!215, !1383, !1871, !1304}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "complete_rq", scope: !1865, file: !1857, line: 14, baseType: !1914, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!215, !1383, !1871}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "free_rq", scope: !1865, file: !1857, line: 15, baseType: !1578, size: 64, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1380, file: !19, line: 570, baseType: !426, size: 128, align: 64, offset: 10944)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !1380, file: !19, line: 571, baseType: !1283, size: 128, offset: 11072)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !1380, file: !19, line: 576, baseType: !788, size: 192, offset: 11200)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !1380, file: !19, line: 578, baseType: !1922, size: 64, offset: 11392)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !19, line: 578, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !1380, file: !19, line: 579, baseType: !283, size: 128, offset: 11456)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !1380, file: !19, line: 580, baseType: !1256, size: 2368, offset: 11584)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !1380, file: !19, line: 582, baseType: !443, size: 64, offset: 13952)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !1380, file: !19, line: 589, baseType: !272, size: 8, offset: 14016)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !1380, file: !19, line: 591, baseType: !383, size: 64, offset: 14080)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "write_hints", scope: !1380, file: !19, line: 594, baseType: !1930, size: 320, offset: 14144)
!1930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 320, elements: !1931)
!1931 = !{!1932}
!1932 = !DISubrange(count: 5)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1165, file: !1099, line: 191, baseType: !203, size: 64, offset: 7168)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1165, file: !1099, line: 193, baseType: !215, size: 32, offset: 7232)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1165, file: !1099, line: 194, baseType: !202, size: 64, offset: 7296)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_sem", scope: !1165, file: !1099, line: 196, baseType: !881, size: 256, offset: 7360)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !1165, file: !1099, line: 197, baseType: !289, size: 64, offset: 7616)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !1165, file: !1099, line: 199, baseType: !1939, size: 64, offset: 7680)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !1099, line: 199, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !1165, file: !1099, line: 200, baseType: !861, size: 32, offset: 7744)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !1165, file: !1099, line: 201, baseType: !1943, size: 64, offset: 7808)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !1099, line: 156, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "integrity_kobj", scope: !1165, file: !1099, line: 203, baseType: !278, size: 512, offset: 7872)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1165, file: !1099, line: 208, baseType: !215, size: 32, offset: 8384)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1165, file: !1099, line: 209, baseType: !1948, size: 64, offset: 8448)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !1099, line: 157, flags: DIFlagFwdDecl)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !1165, file: !1099, line: 210, baseType: !1951, offset: 8512)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !698, line: 192, elements: !310)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "bd_bdi", scope: !1079, file: !1080, line: 43, baseType: !1657, size: 64, offset: 1024)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !1079, file: !1080, line: 46, baseType: !215, size: 32, offset: 1088)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !1079, file: !1080, line: 48, baseType: !788, size: 192, offset: 1152)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !1032, file: !1033, line: 259, baseType: !413, size: 64, offset: 1152)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !1032, file: !1033, line: 260, baseType: !7, size: 32, offset: 1216)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1032, file: !1033, line: 265, baseType: !296, offset: 1248)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !1032, file: !1033, line: 278, baseType: !296, offset: 1248)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !1032, file: !1033, line: 282, baseType: !1147, size: 256, offset: 1280)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !1032, file: !1033, line: 283, baseType: !1058, size: 64, offset: 1536)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !1032, file: !1033, line: 284, baseType: !1962, offset: 1600)
!1962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, elements: !1185)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !895, file: !86, line: 415, baseType: !1965, size: 64, offset: 1344)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{null, !413}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !849, file: !86, line: 466, baseType: !202, size: 64, offset: 896)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !849, file: !86, line: 467, baseType: !1970, size: 32, offset: 960)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1971, line: 8, baseType: !219)
!1971 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !849, file: !86, line: 468, baseType: !296, offset: 992)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !849, file: !86, line: 469, baseType: !283, size: 128, offset: 1024)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !849, file: !86, line: 470, baseType: !203, size: 64, offset: 1152)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !844, file: !837, line: 87, baseType: !202, size: 64, offset: 192)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !844, file: !837, line: 94, baseType: !202, size: 64, offset: 256)
!1977 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !837, line: 96, baseType: !1978, size: 64)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !841, file: !837, line: 96, size: 64, elements: !1979)
!1979 = !{!1980}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1978, file: !837, line: 101, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !201, line: 143, baseType: !207)
!1982 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !837, line: 103, baseType: !1983, size: 320)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !841, file: !837, line: 103, size: 320, elements: !1984)
!1984 = !{!1985, !1995, !1996, !1997}
!1985 = !DIDerivedType(tag: DW_TAG_member, scope: !1983, file: !837, line: 104, baseType: !1986, size: 128)
!1986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1983, file: !837, line: 104, size: 128, elements: !1987)
!1987 = !{!1988, !1989}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1986, file: !837, line: 105, baseType: !283, size: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, scope: !1986, file: !837, line: 106, baseType: !1990, size: 128)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1986, file: !837, line: 106, size: 128, elements: !1991)
!1991 = !{!1992, !1993, !1994}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1990, file: !837, line: 107, baseType: !835, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1990, file: !837, line: 109, baseType: !215, size: 32, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1990, file: !837, line: 110, baseType: !215, size: 32, offset: 96)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1983, file: !837, line: 117, baseType: !1259, size: 64, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1983, file: !837, line: 119, baseType: !203, size: 64, offset: 192)
!1997 = !DIDerivedType(tag: DW_TAG_member, scope: !1983, file: !837, line: 120, baseType: !1998, size: 64, offset: 256)
!1998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1983, file: !837, line: 120, size: 64, elements: !1999)
!1999 = !{!2000, !2001, !2002}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1998, file: !837, line: 121, baseType: !203, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1998, file: !837, line: 122, baseType: !202, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, scope: !1998, file: !837, line: 123, baseType: !2003, size: 32)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1998, file: !837, line: 123, size: 32, elements: !2004)
!2004 = !{!2005, !2006, !2007}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2003, file: !837, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2003, file: !837, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2003, file: !837, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2008 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !837, line: 130, baseType: !2009, size: 192)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !841, file: !837, line: 130, size: 192, elements: !2010)
!2010 = !{!2011, !2012, !2013, !2014, !2015}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2009, file: !837, line: 131, baseType: !202, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !2009, file: !837, line: 134, baseType: !481, size: 8, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !2009, file: !837, line: 135, baseType: !481, size: 8, offset: 72)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !2009, file: !837, line: 136, baseType: !861, size: 32, offset: 96)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !2009, file: !837, line: 137, baseType: !7, size: 32, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !837, line: 139, baseType: !2017, size: 256)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !841, file: !837, line: 139, size: 256, elements: !2018)
!2018 = !{!2019, !2020, !2021}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2017, file: !837, line: 140, baseType: !202, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2017, file: !837, line: 141, baseType: !861, size: 32, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2017, file: !837, line: 143, baseType: !283, size: 128, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !837, line: 145, baseType: !2023, size: 256)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !841, file: !837, line: 145, size: 256, elements: !2024)
!2024 = !{!2025, !2026, !2029, !2030, !3498}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2023, file: !837, line: 146, baseType: !202, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2023, file: !837, line: 147, baseType: !2027, size: 64, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2028, line: 509, baseType: !835)
!2028 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2023, file: !837, line: 148, baseType: !202, size: 64, offset: 128)
!2030 = !DIDerivedType(tag: DW_TAG_member, scope: !2023, file: !837, line: 149, baseType: !2031, size: 64, offset: 192)
!2031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2023, file: !837, line: 149, size: 64, elements: !2032)
!2032 = !{!2033, !3497}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2031, file: !837, line: 150, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !837, line: 388, size: 7296, elements: !2036)
!2036 = !{!2037, !3495}
!2037 = !DIDerivedType(tag: DW_TAG_member, scope: !2035, file: !837, line: 389, baseType: !2038, size: 7296)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2035, file: !837, line: 389, size: 7296, elements: !2039)
!2039 = !{!2040, !2158, !2159, !2160, !2164, !2165, !2166, !2167, !2168, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2209, !2215, !2218, !2257, !2258, !3479, !3480, !3483, !3484, !3485, !3488, !3489, !3490, !3493, !3494}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2038, file: !837, line: 390, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !837, line: 305, size: 1472, elements: !2043)
!2043 = !{!2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2058, !2059, !2064, !2065, !2068, !2152, !2153, !2154, !2155, !2156}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2042, file: !837, line: 308, baseType: !202, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2042, file: !837, line: 309, baseType: !202, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !2042, file: !837, line: 313, baseType: !2041, size: 64, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !2042, file: !837, line: 313, baseType: !2041, size: 64, offset: 192)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !2042, file: !837, line: 315, baseType: !874, size: 192, align: 64, offset: 256)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !2042, file: !837, line: 323, baseType: !202, size: 64, offset: 448)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2042, file: !837, line: 327, baseType: !2034, size: 64, offset: 512)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2042, file: !837, line: 333, baseType: !2052, size: 64, offset: 576)
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2028, line: 284, baseType: !2053)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2028, line: 284, size: 64, elements: !2054)
!2054 = !{!2055}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2053, file: !2028, line: 284, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2057, line: 19, baseType: !202)
!2057 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2042, file: !837, line: 334, baseType: !202, size: 64, offset: 640)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2042, file: !837, line: 343, baseType: !2060, size: 256, offset: 704)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2042, file: !837, line: 340, size: 256, elements: !2061)
!2061 = !{!2062, !2063}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2060, file: !837, line: 341, baseType: !874, size: 192, align: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2060, file: !837, line: 342, baseType: !202, size: 64, offset: 192)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2042, file: !837, line: 351, baseType: !283, size: 128, offset: 960)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2042, file: !837, line: 353, baseType: !2066, size: 64, offset: 1088)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !837, line: 353, flags: DIFlagFwdDecl)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2042, file: !837, line: 356, baseType: !2069, size: 64, offset: 1152)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2071)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !56, line: 557, size: 832, elements: !2072)
!2072 = !{!2073, !2077, !2078, !2082, !2086, !2126, !2130, !2134, !2138, !2139, !2140, !2144, !2148}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2071, file: !56, line: 558, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{null, !2041}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2071, file: !56, line: 559, baseType: !2074, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !2071, file: !56, line: 560, baseType: !2079, size: 64, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!215, !2041, !202}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2071, file: !56, line: 561, baseType: !2083, size: 64, offset: 192)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!215, !2041}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2071, file: !56, line: 562, baseType: !2087, size: 64, offset: 256)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!2090, !2091}
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !837, line: 682, baseType: !7)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !56, line: 508, size: 768, elements: !2093)
!2093 = !{!2094, !2095, !2096, !2097, !2098, !2099, !2106, !2113, !2119, !2120, !2121, !2123, !2125}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2092, file: !56, line: 509, baseType: !2041, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2092, file: !56, line: 510, baseType: !7, size: 32, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2092, file: !56, line: 511, baseType: !200, size: 32, offset: 96)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2092, file: !56, line: 512, baseType: !202, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2092, file: !56, line: 513, baseType: !202, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2092, file: !56, line: 514, baseType: !2100, size: 64, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2028, line: 385, baseType: !2102)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2028, line: 385, size: 64, elements: !2103)
!2103 = !{!2104}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2102, file: !2028, line: 385, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2057, line: 15, baseType: !202)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2092, file: !56, line: 516, baseType: !2107, size: 64, offset: 320)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2028, line: 359, baseType: !2109)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2028, line: 359, size: 64, elements: !2110)
!2110 = !{!2111}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2109, file: !2028, line: 359, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2057, line: 16, baseType: !202)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2092, file: !56, line: 519, baseType: !2114, size: 64, offset: 384)
!2114 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2057, line: 21, baseType: !2115)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2057, line: 21, size: 64, elements: !2116)
!2116 = !{!2117}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2115, file: !2057, line: 21, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2057, line: 14, baseType: !202)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2092, file: !56, line: 521, baseType: !835, size: 64, offset: 448)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2092, file: !56, line: 522, baseType: !835, size: 64, offset: 512)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2092, file: !56, line: 528, baseType: !2122, size: 64, offset: 576)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2092, file: !56, line: 532, baseType: !2124, size: 64, offset: 640)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2092, file: !56, line: 536, baseType: !2027, size: 64, offset: 704)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2071, file: !56, line: 563, baseType: !2127, size: 64, offset: 320)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!2090, !2091, !55}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2071, file: !56, line: 565, baseType: !2131, size: 64, offset: 384)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{null, !2091, !202, !202}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2071, file: !56, line: 567, baseType: !2135, size: 64, offset: 448)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!202, !2041}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2071, file: !56, line: 571, baseType: !2087, size: 64, offset: 512)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2071, file: !56, line: 574, baseType: !2087, size: 64, offset: 576)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2071, file: !56, line: 579, baseType: !2141, size: 64, offset: 640)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!215, !2041, !202, !203, !215, !215}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2071, file: !56, line: 585, baseType: !2145, size: 64, offset: 704)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!269, !2041}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2071, file: !56, line: 615, baseType: !2149, size: 64, offset: 768)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!835, !2041, !202}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2042, file: !837, line: 359, baseType: !202, size: 64, offset: 1216)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2042, file: !837, line: 361, baseType: !413, size: 64, offset: 1280)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2042, file: !837, line: 362, baseType: !203, size: 64, offset: 1344)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2042, file: !837, line: 365, baseType: !792, size: 64, offset: 1408)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2042, file: !837, line: 373, baseType: !2157, offset: 1472)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !837, line: 296, elements: !310)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !2038, file: !837, line: 391, baseType: !870, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !2038, file: !837, line: 392, baseType: !207, size: 64, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2038, file: !837, line: 394, baseType: !2161, size: 64, offset: 192)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!202, !413, !202, !202, !202, !202}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !2038, file: !837, line: 398, baseType: !202, size: 64, offset: 256)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !2038, file: !837, line: 399, baseType: !202, size: 64, offset: 320)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !2038, file: !837, line: 405, baseType: !202, size: 64, offset: 384)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !2038, file: !837, line: 406, baseType: !202, size: 64, offset: 448)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2038, file: !837, line: 407, baseType: !2169, size: 64, offset: 512)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2028, line: 286, baseType: !2171)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2028, line: 286, size: 64, elements: !2172)
!2172 = !{!2173}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2171, file: !2028, line: 286, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2057, line: 18, baseType: !202)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !2038, file: !837, line: 416, baseType: !861, size: 32, offset: 576)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !2038, file: !837, line: 428, baseType: !861, size: 32, offset: 608)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !2038, file: !837, line: 437, baseType: !861, size: 32, offset: 640)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !2038, file: !837, line: 447, baseType: !861, size: 32, offset: 672)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !2038, file: !837, line: 450, baseType: !792, size: 64, offset: 704)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !2038, file: !837, line: 452, baseType: !215, size: 32, offset: 768)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !2038, file: !837, line: 454, baseType: !296, offset: 800)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !2038, file: !837, line: 457, baseType: !881, size: 256, offset: 832)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !2038, file: !837, line: 459, baseType: !283, size: 128, offset: 1088)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2038, file: !837, line: 466, baseType: !202, size: 64, offset: 1216)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2038, file: !837, line: 467, baseType: !202, size: 64, offset: 1280)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !2038, file: !837, line: 469, baseType: !202, size: 64, offset: 1344)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2038, file: !837, line: 470, baseType: !202, size: 64, offset: 1408)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !2038, file: !837, line: 471, baseType: !794, size: 64, offset: 1472)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !2038, file: !837, line: 472, baseType: !202, size: 64, offset: 1536)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !2038, file: !837, line: 473, baseType: !202, size: 64, offset: 1600)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !2038, file: !837, line: 474, baseType: !202, size: 64, offset: 1664)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !2038, file: !837, line: 475, baseType: !202, size: 64, offset: 1728)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !2038, file: !837, line: 477, baseType: !296, offset: 1792)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !2038, file: !837, line: 478, baseType: !202, size: 64, offset: 1792)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !2038, file: !837, line: 478, baseType: !202, size: 64, offset: 1856)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !2038, file: !837, line: 478, baseType: !202, size: 64, offset: 1920)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !2038, file: !837, line: 478, baseType: !202, size: 64, offset: 1984)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !2038, file: !837, line: 479, baseType: !202, size: 64, offset: 2048)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !2038, file: !837, line: 479, baseType: !202, size: 64, offset: 2112)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !2038, file: !837, line: 479, baseType: !202, size: 64, offset: 2176)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !2038, file: !837, line: 480, baseType: !202, size: 64, offset: 2240)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !2038, file: !837, line: 480, baseType: !202, size: 64, offset: 2304)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !2038, file: !837, line: 480, baseType: !202, size: 64, offset: 2368)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !2038, file: !837, line: 480, baseType: !202, size: 64, offset: 2432)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !2038, file: !837, line: 482, baseType: !2206, size: 2816, offset: 2496)
!2206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 2816, elements: !2207)
!2207 = !{!2208}
!2208 = !DISubrange(count: 44)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !2038, file: !837, line: 488, baseType: !2210, size: 256, offset: 5312)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2211, line: 60, size: 256, elements: !2212)
!2211 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2212 = !{!2213}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2210, file: !2211, line: 61, baseType: !2214, size: 256)
!2214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !792, size: 256, elements: !1361)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !2038, file: !837, line: 490, baseType: !2216, size: 64, offset: 5568)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !837, line: 490, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2038, file: !837, line: 493, baseType: !2219, size: 896, offset: 5632)
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2220, line: 53, baseType: !2221)
!2220 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2220, line: 13, size: 896, elements: !2222)
!2222 = !{!2223, !2224, !2225, !2226, !2229, !2230, !2231, !2232, !2252, !2253, !2254}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2221, file: !2220, line: 18, baseType: !207, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2221, file: !2220, line: 28, baseType: !794, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2221, file: !2220, line: 31, baseType: !881, size: 256, offset: 128)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2221, file: !2220, line: 32, baseType: !2227, size: 64, offset: 384)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2220, line: 32, flags: DIFlagFwdDecl)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2221, file: !2220, line: 37, baseType: !378, size: 16, offset: 448)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2221, file: !2220, line: 40, baseType: !788, size: 192, offset: 512)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2221, file: !2220, line: 41, baseType: !203, size: 64, offset: 704)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2221, file: !2220, line: 42, baseType: !2233, size: 64, offset: 768)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2235)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2236, line: 13, size: 896, elements: !2237)
!2236 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2237 = !{!2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2235, file: !2236, line: 14, baseType: !203, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2235, file: !2236, line: 15, baseType: !202, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2235, file: !2236, line: 17, baseType: !202, size: 64, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2235, file: !2236, line: 17, baseType: !202, size: 64, offset: 192)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2235, file: !2236, line: 19, baseType: !204, size: 64, offset: 256)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2235, file: !2236, line: 21, baseType: !204, size: 64, offset: 320)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2235, file: !2236, line: 22, baseType: !204, size: 64, offset: 384)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2235, file: !2236, line: 23, baseType: !204, size: 64, offset: 448)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2235, file: !2236, line: 24, baseType: !204, size: 64, offset: 512)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2235, file: !2236, line: 25, baseType: !204, size: 64, offset: 576)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2235, file: !2236, line: 26, baseType: !204, size: 64, offset: 640)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2235, file: !2236, line: 27, baseType: !204, size: 64, offset: 704)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2235, file: !2236, line: 28, baseType: !204, size: 64, offset: 768)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2235, file: !2236, line: 29, baseType: !204, size: 64, offset: 832)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2221, file: !2220, line: 44, baseType: !861, size: 32, offset: 832)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2221, file: !2220, line: 50, baseType: !973, size: 16, offset: 864)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2221, file: !2220, line: 51, baseType: !2255, size: 16, offset: 880)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !208, line: 18, baseType: !2256)
!2256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !210, line: 23, baseType: !1037)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2038, file: !837, line: 495, baseType: !202, size: 64, offset: 6528)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2038, file: !837, line: 497, baseType: !2259, size: 64, offset: 6592)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !837, line: 381, size: 384, elements: !2261)
!2261 = !{!2262, !2263, !3478}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2260, file: !837, line: 382, baseType: !861, size: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2260, file: !837, line: 383, baseType: !2264, size: 128, offset: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !837, line: 376, size: 128, elements: !2265)
!2265 = !{!2266, !3476}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2264, file: !837, line: 377, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2269, line: 640, size: 48640, elements: !2270)
!2269 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!2270 = !{!2271, !2277, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2292, !2310, !2321, !2404, !2405, !2406, !2417, !2418, !2420, !2421, !2422, !2423, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2501, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2533, !2535, !2536, !2537, !2549, !2550, !2551, !2552, !2553, !2554, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2578, !2583, !2905, !2906, !2907, !2908, !2910, !2913, !2916, !2919, !2922, !2958, !3059, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3103, !3104, !3105, !3106, !3107, !3112, !3113, !3114, !3117, !3118, !3120, !3129, !3134, !3135, !3136, !3139, !3140, !3219, !3220, !3223, !3224, !3227, !3228, !3229, !3233, !3234, !3235, !3248, !3249, !3250, !3260, !3265, !3268, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2268, file: !2269, line: 646, baseType: !2272, size: 128)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2273, line: 56, size: 128, elements: !2274)
!2273 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!2274 = !{!2275, !2276}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2272, file: !2273, line: 57, baseType: !202, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2272, file: !2273, line: 58, baseType: !219, size: 32, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2268, file: !2269, line: 649, baseType: !2278, size: 64, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !204)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2268, file: !2269, line: 657, baseType: !203, size: 64, offset: 192)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2268, file: !2269, line: 658, baseType: !1476, size: 32, offset: 256)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2268, file: !2269, line: 660, baseType: !7, size: 32, offset: 288)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2268, file: !2269, line: 661, baseType: !7, size: 32, offset: 320)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2268, file: !2269, line: 684, baseType: !215, size: 32, offset: 352)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2268, file: !2269, line: 686, baseType: !215, size: 32, offset: 384)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2268, file: !2269, line: 687, baseType: !215, size: 32, offset: 416)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2268, file: !2269, line: 688, baseType: !215, size: 32, offset: 448)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2268, file: !2269, line: 689, baseType: !7, size: 32, offset: 480)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2268, file: !2269, line: 691, baseType: !2289, size: 64, offset: 512)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2291)
!2291 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2269, line: 691, flags: DIFlagFwdDecl)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2268, file: !2269, line: 692, baseType: !2293, size: 832, offset: 576)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2269, line: 451, size: 832, elements: !2294)
!2294 = !{!2295, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2293, file: !2269, line: 453, baseType: !2296, size: 128)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2269, line: 325, size: 128, elements: !2297)
!2297 = !{!2298, !2299}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2296, file: !2269, line: 326, baseType: !202, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2296, file: !2269, line: 327, baseType: !219, size: 32, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2293, file: !2269, line: 454, baseType: !874, size: 192, align: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2293, file: !2269, line: 455, baseType: !283, size: 128, offset: 320)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2293, file: !2269, line: 456, baseType: !7, size: 32, offset: 448)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2293, file: !2269, line: 458, baseType: !207, size: 64, offset: 512)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2293, file: !2269, line: 459, baseType: !207, size: 64, offset: 576)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2293, file: !2269, line: 460, baseType: !207, size: 64, offset: 640)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2293, file: !2269, line: 461, baseType: !207, size: 64, offset: 704)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2293, file: !2269, line: 463, baseType: !207, size: 64, offset: 768)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !2293, file: !2269, line: 465, baseType: !2309, offset: 832)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2269, line: 415, elements: !310)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2268, file: !2269, line: 693, baseType: !2311, size: 384, offset: 1408)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2269, line: 489, size: 384, elements: !2312)
!2312 = !{!2313, !2314, !2315, !2316, !2317, !2318, !2319}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2311, file: !2269, line: 490, baseType: !283, size: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2311, file: !2269, line: 491, baseType: !202, size: 64, offset: 128)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2311, file: !2269, line: 492, baseType: !202, size: 64, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2311, file: !2269, line: 493, baseType: !7, size: 32, offset: 256)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2311, file: !2269, line: 494, baseType: !378, size: 16, offset: 288)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2311, file: !2269, line: 495, baseType: !378, size: 16, offset: 304)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2311, file: !2269, line: 497, baseType: !2320, size: 64, offset: 320)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2268, file: !2269, line: 697, baseType: !2322, size: 1792, offset: 1792)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2269, line: 507, size: 1792, elements: !2323)
!2323 = !{!2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2401, !2402}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2322, file: !2269, line: 508, baseType: !874, size: 192, align: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2322, file: !2269, line: 515, baseType: !207, size: 64, offset: 192)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2322, file: !2269, line: 516, baseType: !207, size: 64, offset: 256)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2322, file: !2269, line: 517, baseType: !207, size: 64, offset: 320)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2322, file: !2269, line: 518, baseType: !207, size: 64, offset: 384)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2322, file: !2269, line: 519, baseType: !207, size: 64, offset: 448)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2322, file: !2269, line: 526, baseType: !798, size: 64, offset: 512)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2322, file: !2269, line: 527, baseType: !207, size: 64, offset: 576)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2322, file: !2269, line: 528, baseType: !7, size: 32, offset: 640)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2322, file: !2269, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2322, file: !2269, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2322, file: !2269, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2322, file: !2269, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2322, file: !2269, line: 563, baseType: !2338, size: 512, offset: 704)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !62, line: 118, size: 512, elements: !2339)
!2339 = !{!2340, !2348, !2349, !2354, !2397, !2398, !2399, !2400}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2338, file: !62, line: 119, baseType: !2341, size: 256)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2342, line: 9, size: 256, elements: !2343)
!2342 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!2343 = !{!2344, !2345}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2341, file: !2342, line: 10, baseType: !874, size: 192, align: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2341, file: !2342, line: 11, baseType: !2346, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2347, line: 29, baseType: !798)
!2347 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2338, file: !62, line: 120, baseType: !2346, size: 64, offset: 256)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2338, file: !62, line: 121, baseType: !2350, size: 64, offset: 320)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!61, !2353}
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2338, file: !62, line: 122, baseType: !2355, size: 64, offset: 384)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !62, line: 159, size: 512, align: 512, elements: !2357)
!2357 = !{!2358, !2378, !2379, !2382, !2387, !2388, !2392, !2396}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2356, file: !62, line: 160, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !62, line: 214, size: 4608, align: 512, elements: !2361)
!2361 = !{!2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2360, file: !62, line: 215, baseType: !887)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2360, file: !62, line: 216, baseType: !7, size: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2360, file: !62, line: 217, baseType: !7, size: 32, offset: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2360, file: !62, line: 218, baseType: !7, size: 32, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2360, file: !62, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2360, file: !62, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2360, file: !62, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2360, file: !62, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2360, file: !62, line: 233, baseType: !2346, size: 64, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2360, file: !62, line: 234, baseType: !2353, size: 64, offset: 192)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2360, file: !62, line: 235, baseType: !2346, size: 64, offset: 256)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2360, file: !62, line: 236, baseType: !2353, size: 64, offset: 320)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2360, file: !62, line: 237, baseType: !2375, size: 4096, offset: 512)
!2375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2356, size: 4096, elements: !2376)
!2376 = !{!2377}
!2377 = !DISubrange(count: 8)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2356, file: !62, line: 161, baseType: !7, size: 32, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2356, file: !62, line: 162, baseType: !2380, size: 32, offset: 96)
!2380 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !201, line: 27, baseType: !2381)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !370, line: 96, baseType: !215)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2356, file: !62, line: 163, baseType: !2383, size: 32, offset: 128)
!2383 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !449, line: 276, baseType: !2384)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !449, line: 276, size: 32, elements: !2385)
!2385 = !{!2386}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2384, file: !449, line: 276, baseType: !453, size: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2356, file: !62, line: 164, baseType: !2353, size: 64, offset: 192)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2356, file: !62, line: 165, baseType: !2389, size: 128, offset: 256)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2342, line: 14, size: 128, elements: !2390)
!2390 = !{!2391}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2389, file: !2342, line: 15, baseType: !866, size: 128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2356, file: !62, line: 166, baseType: !2393, size: 64, offset: 384)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!2346}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2356, file: !62, line: 167, baseType: !2346, size: 64, offset: 448)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2338, file: !62, line: 123, baseType: !1094, size: 8, offset: 448)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2338, file: !62, line: 124, baseType: !1094, size: 8, offset: 456)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2338, file: !62, line: 125, baseType: !1094, size: 8, offset: 464)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2338, file: !62, line: 126, baseType: !1094, size: 8, offset: 472)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2322, file: !2269, line: 572, baseType: !2338, size: 512, offset: 1216)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2322, file: !2269, line: 580, baseType: !2403, size: 64, offset: 1728)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2268, file: !2269, line: 721, baseType: !7, size: 32, offset: 3584)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2268, file: !2269, line: 722, baseType: !215, size: 32, offset: 3616)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2268, file: !2269, line: 723, baseType: !2407, size: 64, offset: 3648)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2409)
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2410, line: 17, baseType: !2411)
!2410 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2410, line: 17, size: 64, elements: !2412)
!2412 = !{!2413}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2411, file: !2410, line: 17, baseType: !2414, size: 64)
!2414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 64, elements: !2415)
!2415 = !{!2416}
!2416 = !DISubrange(count: 1)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2268, file: !2269, line: 724, baseType: !2409, size: 64, offset: 3712)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2268, file: !2269, line: 749, baseType: !2419, offset: 3776)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2269, line: 290, elements: !310)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2268, file: !2269, line: 751, baseType: !283, size: 128, offset: 3776)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2268, file: !2269, line: 757, baseType: !2034, size: 64, offset: 3904)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2268, file: !2269, line: 758, baseType: !2034, size: 64, offset: 3968)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !2268, file: !2269, line: 761, baseType: !2424, size: 320, offset: 4032)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2211, line: 34, size: 320, elements: !2425)
!2425 = !{!2426, !2427}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2424, file: !2211, line: 35, baseType: !207, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2424, file: !2211, line: 36, baseType: !2428, size: 256, offset: 64)
!2428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2041, size: 256, elements: !1361)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2268, file: !2269, line: 766, baseType: !215, size: 32, offset: 4352)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2268, file: !2269, line: 767, baseType: !215, size: 32, offset: 4384)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2268, file: !2269, line: 768, baseType: !215, size: 32, offset: 4416)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2268, file: !2269, line: 770, baseType: !215, size: 32, offset: 4448)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2268, file: !2269, line: 772, baseType: !202, size: 64, offset: 4480)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2268, file: !2269, line: 775, baseType: !7, size: 32, offset: 4544)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2268, file: !2269, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2268, file: !2269, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2268, file: !2269, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2268, file: !2269, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2268, file: !2269, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2268, file: !2269, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2268, file: !2269, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !2268, file: !2269, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2268, file: !2269, line: 831, baseType: !202, size: 64, offset: 4672)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2268, file: !2269, line: 833, baseType: !2445, size: 384, offset: 4736)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !67, line: 25, size: 384, elements: !2446)
!2446 = !{!2447, !2452}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2445, file: !67, line: 26, baseType: !2448, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!204, !2451}
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, scope: !2445, file: !67, line: 27, baseType: !2453, size: 320, offset: 64)
!2453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2445, file: !67, line: 27, size: 320, elements: !2454)
!2454 = !{!2455, !2465, !2491}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2453, file: !67, line: 36, baseType: !2456, size: 320)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2453, file: !67, line: 29, size: 320, elements: !2457)
!2457 = !{!2458, !2460, !2461, !2462, !2463, !2464}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2456, file: !67, line: 30, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2456, file: !67, line: 31, baseType: !219, size: 32, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2456, file: !67, line: 32, baseType: !219, size: 32, offset: 96)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2456, file: !67, line: 33, baseType: !219, size: 32, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2456, file: !67, line: 34, baseType: !207, size: 64, offset: 192)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2456, file: !67, line: 35, baseType: !2459, size: 64, offset: 256)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2453, file: !67, line: 46, baseType: !2466, size: 192)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2453, file: !67, line: 38, size: 192, elements: !2467)
!2467 = !{!2468, !2469, !2470, !2490}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2466, file: !67, line: 39, baseType: !2380, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2466, file: !67, line: 40, baseType: !66, size: 32, offset: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, scope: !2466, file: !67, line: 41, baseType: !2471, size: 64, offset: 64)
!2471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2466, file: !67, line: 41, size: 64, elements: !2472)
!2472 = !{!2473, !2481}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2471, file: !67, line: 42, baseType: !2474, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2476, line: 7, size: 128, elements: !2477)
!2476 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2477 = !{!2478, !2480}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2475, file: !2476, line: 8, baseType: !2479, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !370, line: 93, baseType: !585)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2475, file: !2476, line: 9, baseType: !585, size: 64, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2471, file: !67, line: 43, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2484, line: 7, size: 64, elements: !2485)
!2484 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2485 = !{!2486, !2489}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2483, file: !2484, line: 8, baseType: !2487, size: 32)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2484, line: 5, baseType: !2488)
!2488 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !208, line: 20, baseType: !1876)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2483, file: !2484, line: 9, baseType: !2488, size: 32, offset: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2466, file: !67, line: 45, baseType: !207, size: 64, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2453, file: !67, line: 54, baseType: !2492, size: 256)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2453, file: !67, line: 48, size: 256, elements: !2493)
!2493 = !{!2494, !2497, !2498, !2499, !2500}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2492, file: !67, line: 49, baseType: !2495, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !67, line: 14, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2492, file: !67, line: 50, baseType: !215, size: 32, offset: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2492, file: !67, line: 51, baseType: !215, size: 32, offset: 96)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2492, file: !67, line: 52, baseType: !202, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2492, file: !67, line: 53, baseType: !202, size: 64, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2268, file: !2269, line: 835, baseType: !2502, size: 32, offset: 5120)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !201, line: 22, baseType: !2503)
!2503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !370, line: 28, baseType: !215)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2268, file: !2269, line: 836, baseType: !2502, size: 32, offset: 5152)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2268, file: !2269, line: 840, baseType: !202, size: 64, offset: 5184)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2268, file: !2269, line: 849, baseType: !2267, size: 64, offset: 5248)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2268, file: !2269, line: 852, baseType: !2267, size: 64, offset: 5312)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2268, file: !2269, line: 857, baseType: !283, size: 128, offset: 5376)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2268, file: !2269, line: 858, baseType: !283, size: 128, offset: 5504)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2268, file: !2269, line: 859, baseType: !2267, size: 64, offset: 5632)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2268, file: !2269, line: 867, baseType: !283, size: 128, offset: 5696)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2268, file: !2269, line: 868, baseType: !283, size: 128, offset: 5824)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2268, file: !2269, line: 871, baseType: !2514, size: 64, offset: 5952)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !95, line: 59, size: 768, elements: !2516)
!2516 = !{!2517, !2518, !2519, !2520, !2522, !2523, !2524, !2525}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2515, file: !95, line: 61, baseType: !1476, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2515, file: !95, line: 62, baseType: !7, size: 32, offset: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2515, file: !95, line: 63, baseType: !296, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2515, file: !95, line: 65, baseType: !2521, size: 256, offset: 64)
!2521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 256, elements: !1361)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2515, file: !95, line: 66, baseType: !687, size: 64, offset: 320)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2515, file: !95, line: 68, baseType: !1283, size: 128, offset: 384)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2515, file: !95, line: 69, baseType: !426, size: 128, align: 64, offset: 512)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2515, file: !95, line: 70, baseType: !2526, size: 128, offset: 640)
!2526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2527, size: 128, elements: !2415)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !95, line: 54, size: 128, elements: !2528)
!2528 = !{!2529, !2530}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2527, file: !95, line: 55, baseType: !215, size: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2527, file: !95, line: 56, baseType: !2531, size: 64, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !95, line: 56, flags: DIFlagFwdDecl)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2268, file: !2269, line: 872, baseType: !2534, size: 512, offset: 6016)
!2534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 512, elements: !1361)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2268, file: !2269, line: 873, baseType: !283, size: 128, offset: 6528)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2268, file: !2269, line: 874, baseType: !283, size: 128, offset: 6656)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2268, file: !2269, line: 876, baseType: !2538, size: 64, offset: 6784)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2540, line: 26, size: 192, elements: !2541)
!2540 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2541 = !{!2542, !2543}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2539, file: !2540, line: 27, baseType: !7, size: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2539, file: !2540, line: 28, baseType: !2544, size: 128, offset: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2545, line: 43, size: 128, elements: !2546)
!2545 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2546 = !{!2547, !2548}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2544, file: !2545, line: 44, baseType: !887)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2544, file: !2545, line: 45, baseType: !283, size: 128)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2268, file: !2269, line: 879, baseType: !216, size: 64, offset: 6848)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2268, file: !2269, line: 882, baseType: !216, size: 64, offset: 6912)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2268, file: !2269, line: 884, baseType: !207, size: 64, offset: 6976)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2268, file: !2269, line: 885, baseType: !207, size: 64, offset: 7040)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2268, file: !2269, line: 890, baseType: !207, size: 64, offset: 7104)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2268, file: !2269, line: 891, baseType: !2555, size: 128, offset: 7168)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2269, line: 242, size: 128, elements: !2556)
!2556 = !{!2557, !2558, !2559}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2555, file: !2269, line: 244, baseType: !207, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2555, file: !2269, line: 245, baseType: !207, size: 64, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2555, file: !2269, line: 246, baseType: !887, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2268, file: !2269, line: 900, baseType: !202, size: 64, offset: 7296)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2268, file: !2269, line: 901, baseType: !202, size: 64, offset: 7360)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2268, file: !2269, line: 904, baseType: !207, size: 64, offset: 7424)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2268, file: !2269, line: 907, baseType: !207, size: 64, offset: 7488)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2268, file: !2269, line: 910, baseType: !202, size: 64, offset: 7552)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2268, file: !2269, line: 911, baseType: !202, size: 64, offset: 7616)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2268, file: !2269, line: 914, baseType: !2567, size: 640, offset: 7680)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2568, line: 123, size: 640, elements: !2569)
!2568 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2569 = !{!2570, !2576, !2577}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2567, file: !2568, line: 124, baseType: !2571, size: 576)
!2571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2572, size: 576, elements: !338)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2568, line: 108, size: 192, elements: !2573)
!2573 = !{!2574, !2575}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2572, file: !2568, line: 109, baseType: !207, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2572, file: !2568, line: 110, baseType: !2389, size: 128, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2567, file: !2568, line: 125, baseType: !7, size: 32, offset: 576)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2567, file: !2568, line: 126, baseType: !7, size: 32, offset: 608)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2268, file: !2269, line: 917, baseType: !2579, size: 192, offset: 8320)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2568, line: 134, size: 192, elements: !2580)
!2580 = !{!2581, !2582}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2579, file: !2568, line: 135, baseType: !426, size: 128, align: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2579, file: !2568, line: 136, baseType: !7, size: 32, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2268, file: !2269, line: 923, baseType: !2584, size: 64, offset: 8512)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2586)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2587, line: 111, size: 1280, elements: !2588)
!2587 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2588 = !{!2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2606, !2607, !2608, !2609, !2610, !2611, !2718, !2719, !2720, !2721, !2747, !2890, !2900}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2586, file: !2587, line: 112, baseType: !861, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2586, file: !2587, line: 120, baseType: !489, size: 32, offset: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2586, file: !2587, line: 121, baseType: !497, size: 32, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2586, file: !2587, line: 122, baseType: !489, size: 32, offset: 96)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2586, file: !2587, line: 123, baseType: !497, size: 32, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2586, file: !2587, line: 124, baseType: !489, size: 32, offset: 160)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2586, file: !2587, line: 125, baseType: !497, size: 32, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2586, file: !2587, line: 126, baseType: !489, size: 32, offset: 224)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2586, file: !2587, line: 127, baseType: !497, size: 32, offset: 256)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2586, file: !2587, line: 128, baseType: !7, size: 32, offset: 288)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2586, file: !2587, line: 129, baseType: !2600, size: 64, offset: 320)
!2600 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2601, line: 26, baseType: !2602)
!2601 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2601, line: 24, size: 64, elements: !2603)
!2603 = !{!2604}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2602, file: !2601, line: 25, baseType: !2605, size: 64)
!2605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 64, elements: !1453)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2586, file: !2587, line: 130, baseType: !2600, size: 64, offset: 384)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2586, file: !2587, line: 131, baseType: !2600, size: 64, offset: 448)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2586, file: !2587, line: 132, baseType: !2600, size: 64, offset: 512)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2586, file: !2587, line: 133, baseType: !2600, size: 64, offset: 576)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2586, file: !2587, line: 135, baseType: !481, size: 8, offset: 640)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2586, file: !2587, line: 137, baseType: !2612, size: 64, offset: 704)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2614, line: 189, size: 1664, elements: !2615)
!2614 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2615 = !{!2616, !2617, !2620, !2625, !2626, !2629, !2630, !2635, !2636, !2637, !2638, !2640, !2641, !2642, !2643, !2644, !2682, !2703}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2613, file: !2614, line: 190, baseType: !1476, size: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2613, file: !2614, line: 191, baseType: !2618, size: 32, offset: 32)
!2618 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2614, line: 28, baseType: !2619)
!2619 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !201, line: 98, baseType: !2488)
!2620 = !DIDerivedType(tag: DW_TAG_member, scope: !2613, file: !2614, line: 192, baseType: !2621, size: 192, offset: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2613, file: !2614, line: 192, size: 192, elements: !2622)
!2622 = !{!2623, !2624}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2621, file: !2614, line: 193, baseType: !283, size: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2621, file: !2614, line: 194, baseType: !874, size: 192, align: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2613, file: !2614, line: 199, baseType: !881, size: 256, offset: 256)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2613, file: !2614, line: 200, baseType: !2627, size: 64, offset: 512)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2614, line: 200, flags: DIFlagFwdDecl)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2613, file: !2614, line: 201, baseType: !203, size: 64, offset: 576)
!2630 = !DIDerivedType(tag: DW_TAG_member, scope: !2613, file: !2614, line: 202, baseType: !2631, size: 64, offset: 640)
!2631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2613, file: !2614, line: 202, size: 64, elements: !2632)
!2632 = !{!2633, !2634}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2631, file: !2614, line: 203, baseType: !591, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2631, file: !2614, line: 204, baseType: !591, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2613, file: !2614, line: 206, baseType: !591, size: 64, offset: 704)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2613, file: !2614, line: 207, baseType: !489, size: 32, offset: 768)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2613, file: !2614, line: 208, baseType: !497, size: 32, offset: 800)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2613, file: !2614, line: 209, baseType: !2639, size: 32, offset: 832)
!2639 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2614, line: 31, baseType: !611)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2613, file: !2614, line: 210, baseType: !378, size: 16, offset: 864)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2613, file: !2614, line: 211, baseType: !378, size: 16, offset: 880)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2613, file: !2614, line: 215, baseType: !1037, size: 16, offset: 896)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2613, file: !2614, line: 222, baseType: !202, size: 64, offset: 960)
!2644 = !DIDerivedType(tag: DW_TAG_member, scope: !2613, file: !2614, line: 239, baseType: !2645, size: 320, offset: 1024)
!2645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2613, file: !2614, line: 239, size: 320, elements: !2646)
!2646 = !{!2647, !2674}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2645, file: !2614, line: 240, baseType: !2648, size: 320)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2614, line: 108, size: 320, elements: !2649)
!2649 = !{!2650, !2651, !2663, !2666, !2673}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2648, file: !2614, line: 110, baseType: !202, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, scope: !2648, file: !2614, line: 111, baseType: !2652, size: 64, offset: 64)
!2652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2648, file: !2614, line: 111, size: 64, elements: !2653)
!2653 = !{!2654, !2662}
!2654 = !DIDerivedType(tag: DW_TAG_member, scope: !2652, file: !2614, line: 112, baseType: !2655, size: 64)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2652, file: !2614, line: 112, size: 64, elements: !2656)
!2656 = !{!2657, !2658}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2655, file: !2614, line: 114, baseType: !973, size: 16)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2655, file: !2614, line: 115, baseType: !2659, size: 48, offset: 16)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 48, elements: !2660)
!2660 = !{!2661}
!2661 = !DISubrange(count: 6)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2652, file: !2614, line: 121, baseType: !202, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2648, file: !2614, line: 123, baseType: !2664, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2614, line: 96, flags: DIFlagFwdDecl)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2648, file: !2614, line: 124, baseType: !2667, size: 64, offset: 192)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2614, line: 102, size: 192, elements: !2669)
!2669 = !{!2670, !2671, !2672}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2668, file: !2614, line: 103, baseType: !426, size: 128, align: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2668, file: !2614, line: 104, baseType: !1476, size: 32, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2668, file: !2614, line: 105, baseType: !272, size: 8, offset: 160)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2648, file: !2614, line: 125, baseType: !269, size: 64, offset: 256)
!2674 = !DIDerivedType(tag: DW_TAG_member, scope: !2645, file: !2614, line: 241, baseType: !2675, size: 320)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2645, file: !2614, line: 241, size: 320, elements: !2676)
!2676 = !{!2677, !2678, !2679, !2680, !2681}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2675, file: !2614, line: 242, baseType: !202, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2675, file: !2614, line: 243, baseType: !202, size: 64, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2675, file: !2614, line: 244, baseType: !2664, size: 64, offset: 128)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2675, file: !2614, line: 245, baseType: !2667, size: 64, offset: 192)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2675, file: !2614, line: 246, baseType: !337, size: 64, offset: 256)
!2682 = !DIDerivedType(tag: DW_TAG_member, scope: !2613, file: !2614, line: 254, baseType: !2683, size: 256, offset: 1344)
!2683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2613, file: !2614, line: 254, size: 256, elements: !2684)
!2684 = !{!2685, !2691}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2683, file: !2614, line: 255, baseType: !2686, size: 256)
!2686 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2614, line: 128, size: 256, elements: !2687)
!2687 = !{!2688, !2689}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2686, file: !2614, line: 129, baseType: !203, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2686, file: !2614, line: 130, baseType: !2690, size: 256)
!2690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 256, elements: !1361)
!2691 = !DIDerivedType(tag: DW_TAG_member, scope: !2683, file: !2614, line: 256, baseType: !2692, size: 256)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2683, file: !2614, line: 256, size: 256, elements: !2693)
!2693 = !{!2694, !2695}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2692, file: !2614, line: 258, baseType: !283, size: 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2692, file: !2614, line: 259, baseType: !2696, size: 128, offset: 128)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2697, line: 22, size: 128, elements: !2698)
!2697 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2698 = !{!2699, !2702}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2696, file: !2697, line: 23, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2697, line: 23, flags: DIFlagFwdDecl)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2696, file: !2697, line: 24, baseType: !202, size: 64, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2613, file: !2614, line: 274, baseType: !2704, size: 64, offset: 1600)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2614, line: 170, size: 192, elements: !2706)
!2706 = !{!2707, !2716, !2717}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2705, file: !2614, line: 171, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2614, line: 165, baseType: !2709)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!215, !2612, !2712, !2714, !2612}
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2665)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2686)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2705, file: !2614, line: 172, baseType: !2612, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2705, file: !2614, line: 173, baseType: !2664, size: 64, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2586, file: !2587, line: 138, baseType: !2612, size: 64, offset: 768)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2586, file: !2587, line: 139, baseType: !2612, size: 64, offset: 832)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2586, file: !2587, line: 140, baseType: !2612, size: 64, offset: 896)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2586, file: !2587, line: 145, baseType: !2722, size: 64, offset: 960)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2724, line: 13, size: 896, elements: !2725)
!2724 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2725 = !{!2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2723, file: !2724, line: 14, baseType: !1476, size: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2723, file: !2724, line: 15, baseType: !861, size: 32, offset: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2723, file: !2724, line: 16, baseType: !861, size: 32, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2723, file: !2724, line: 21, baseType: !792, size: 64, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2723, file: !2724, line: 27, baseType: !202, size: 64, offset: 192)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2723, file: !2724, line: 28, baseType: !202, size: 64, offset: 256)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2723, file: !2724, line: 29, baseType: !792, size: 64, offset: 320)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2723, file: !2724, line: 32, baseType: !691, size: 128, offset: 384)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2723, file: !2724, line: 33, baseType: !489, size: 32, offset: 512)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2723, file: !2724, line: 37, baseType: !792, size: 64, offset: 576)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2723, file: !2724, line: 44, baseType: !2737, size: 256, offset: 640)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2738, line: 15, size: 256, elements: !2739)
!2738 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2739 = !{!2740, !2741, !2742, !2743, !2744, !2745, !2746}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2737, file: !2738, line: 16, baseType: !887)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2737, file: !2738, line: 18, baseType: !215, size: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2737, file: !2738, line: 19, baseType: !215, size: 32, offset: 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2737, file: !2738, line: 20, baseType: !215, size: 32, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2737, file: !2738, line: 21, baseType: !215, size: 32, offset: 96)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2737, file: !2738, line: 22, baseType: !202, size: 64, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2737, file: !2738, line: 23, baseType: !202, size: 64, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2586, file: !2587, line: 146, baseType: !2748, size: 64, offset: 1024)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !2750, line: 56, size: 4160, elements: !2751)
!2750 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/lizy2001/genbc/linux")
!2751 = !{!2752, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2789, !2790, !2791, !2792, !2793, !2794, !2875, !2876, !2888}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !2749, file: !2750, line: 57, baseType: !2753, size: 576)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !2750, line: 23, size: 576, elements: !2754)
!2754 = !{!2755, !2756}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !2753, file: !2750, line: 24, baseType: !219, size: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, scope: !2753, file: !2750, line: 25, baseType: !2757, size: 512, offset: 64)
!2757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2753, file: !2750, line: 25, size: 512, elements: !2758)
!2758 = !{!2759, !2766}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !2757, file: !2750, line: 26, baseType: !2760, size: 480)
!2760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2761, size: 480, elements: !1931)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !2750, line: 17, size: 96, elements: !2762)
!2762 = !{!2763, !2764, !2765}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2761, file: !2750, line: 18, baseType: !219, size: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !2761, file: !2750, line: 19, baseType: !219, size: 32, offset: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2761, file: !2750, line: 20, baseType: !219, size: 32, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, scope: !2757, file: !2750, line: 27, baseType: !2767, size: 128)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2757, file: !2750, line: 27, size: 128, elements: !2768)
!2768 = !{!2769, !2771}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !2767, file: !2750, line: 28, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !2767, file: !2750, line: 29, baseType: !2770, size: 64, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !2749, file: !2750, line: 58, baseType: !2753, size: 576, offset: 576)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !2749, file: !2750, line: 59, baseType: !2753, size: 576, offset: 1152)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2749, file: !2750, line: 60, baseType: !861, size: 32, offset: 1728)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2749, file: !2750, line: 61, baseType: !2748, size: 64, offset: 1792)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2749, file: !2750, line: 62, baseType: !215, size: 32, offset: 1856)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2749, file: !2750, line: 63, baseType: !489, size: 32, offset: 1888)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !2749, file: !2750, line: 64, baseType: !497, size: 32, offset: 1920)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2749, file: !2750, line: 65, baseType: !2780, size: 192, offset: 1984)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !2781, line: 7, size: 192, elements: !2782)
!2781 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!2782 = !{!2783, !2784, !2788}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !2780, file: !2781, line: 8, baseType: !792, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2780, file: !2781, line: 9, baseType: !2785, size: 64, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2787)
!2787 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !2781, line: 5, flags: DIFlagFwdDecl)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !2780, file: !2781, line: 10, baseType: !7, size: 32, offset: 128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2749, file: !2750, line: 66, baseType: !202, size: 64, offset: 2176)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !2749, file: !2750, line: 74, baseType: !283, size: 128, offset: 2240)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !2749, file: !2750, line: 75, baseType: !2612, size: 64, offset: 2368)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !2749, file: !2750, line: 76, baseType: !881, size: 256, offset: 2432)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2749, file: !2750, line: 83, baseType: !1147, size: 256, offset: 2688)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2749, file: !2750, line: 85, baseType: !2795, size: 768, offset: 2944)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !2796, line: 156, size: 768, elements: !2797)
!2796 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2797 = !{!2798, !2803}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !2795, file: !2796, line: 157, baseType: !2799, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!215, !2802}
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2795, file: !2796, line: 158, baseType: !2804, size: 704, offset: 64)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !2796, line: 150, size: 704, elements: !2805)
!2805 = !{!2806, !2874}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2804, file: !2796, line: 152, baseType: !2807, size: 640)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !2796, line: 131, size: 640, elements: !2808)
!2808 = !{!2809, !2842, !2843, !2844, !2864, !2865, !2867, !2873}
!2809 = !DIDerivedType(tag: DW_TAG_member, scope: !2807, file: !2796, line: 132, baseType: !2810, size: 192)
!2810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2807, file: !2796, line: 132, size: 192, elements: !2811)
!2811 = !{!2812, !2841}
!2812 = !DIDerivedType(tag: DW_TAG_member, scope: !2810, file: !2796, line: 133, baseType: !2813, size: 192)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2810, file: !2796, line: 133, size: 192, elements: !2814)
!2814 = !{!2815, !2838, !2839, !2840}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !2813, file: !2796, line: 134, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !2796, line: 112, size: 512, elements: !2818)
!2818 = !{!2819, !2820, !2821, !2822, !2823, !2824, !2830, !2836, !2837}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !2817, file: !2796, line: 113, baseType: !269, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2817, file: !2796, line: 114, baseType: !203, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2817, file: !2796, line: 115, baseType: !215, size: 32, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2817, file: !2796, line: 116, baseType: !377, size: 16, offset: 160)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2817, file: !2796, line: 117, baseType: !2816, size: 64, offset: 192)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !2817, file: !2796, line: 118, baseType: !2825, size: 64, offset: 256)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !2796, line: 47, baseType: !2827)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!215, !2816, !215, !203, !2829, !810}
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2817, file: !2796, line: 119, baseType: !2831, size: 64, offset: 320)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !2796, line: 94, size: 192, elements: !2833)
!2833 = !{!2834, !2835}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2832, file: !2796, line: 95, baseType: !861, size: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2832, file: !2796, line: 96, baseType: !1283, size: 128, offset: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !2817, file: !2796, line: 120, baseType: !203, size: 64, offset: 384)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !2817, file: !2796, line: 121, baseType: !203, size: 64, offset: 448)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2813, file: !2796, line: 135, baseType: !215, size: 32, offset: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2813, file: !2796, line: 136, baseType: !215, size: 32, offset: 96)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !2813, file: !2796, line: 137, baseType: !215, size: 32, offset: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2810, file: !2796, line: 139, baseType: !426, size: 128, align: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !2807, file: !2796, line: 141, baseType: !2538, size: 64, offset: 192)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !2807, file: !2796, line: 142, baseType: !2816, size: 64, offset: 256)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2807, file: !2796, line: 143, baseType: !2845, size: 64, offset: 320)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !2796, line: 161, size: 960, elements: !2847)
!2847 = !{!2848, !2849, !2853, !2860}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !2846, file: !2796, line: 162, baseType: !2795, size: 768)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2846, file: !2796, line: 163, baseType: !2850, size: 64, offset: 768)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!2802, !2845}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !2846, file: !2796, line: 164, baseType: !2854, size: 64, offset: 832)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{null, !2857, !2816, !2858, !2859}
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !2846, file: !2796, line: 167, baseType: !2861, size: 64, offset: 896)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!215, !2857, !2816}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2807, file: !2796, line: 144, baseType: !2802, size: 64, offset: 384)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2807, file: !2796, line: 145, baseType: !2866, size: 64, offset: 448)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2807, file: !2796, line: 146, baseType: !2868, size: 64, offset: 512)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !2796, line: 124, size: 256, elements: !2870)
!2870 = !{!2871, !2872}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2869, file: !2796, line: 125, baseType: !874, size: 192, align: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2869, file: !2796, line: 126, baseType: !2857, size: 64, offset: 192)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2807, file: !2796, line: 147, baseType: !687, size: 64, offset: 576)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2804, file: !2796, line: 153, baseType: !870, size: 64, offset: 640)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !2749, file: !2750, line: 86, baseType: !2857, size: 64, offset: 3712)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2749, file: !2750, line: 88, baseType: !2877, size: 64, offset: 3776)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2750, line: 92, size: 576, elements: !2879)
!2879 = !{!2880, !2881, !2882, !2883, !2884}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2878, file: !2750, line: 93, baseType: !691, size: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2878, file: !2750, line: 94, baseType: !2748, size: 64, offset: 128)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2878, file: !2750, line: 95, baseType: !489, size: 32, offset: 192)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2878, file: !2750, line: 96, baseType: !215, size: 32, offset: 224)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !2878, file: !2750, line: 97, baseType: !2885, size: 320, offset: 256)
!2885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, size: 320, elements: !2886)
!2886 = !{!2887}
!2887 = !DISubrange(count: 10)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !2749, file: !2750, line: 89, baseType: !2889, size: 320, offset: 3840)
!2889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 320, elements: !2886)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2586, file: !2587, line: 147, baseType: !2891, size: 64, offset: 1088)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2587, line: 25, size: 64, elements: !2893)
!2893 = !{!2894, !2895, !2896}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2892, file: !2587, line: 26, baseType: !861, size: 32)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2892, file: !2587, line: 27, baseType: !215, size: 32, offset: 32)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2892, file: !2587, line: 28, baseType: !2897, offset: 64)
!2897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !497, elements: !2898)
!2898 = !{!2899}
!2899 = !DISubrange(count: 0)
!2900 = !DIDerivedType(tag: DW_TAG_member, scope: !2586, file: !2587, line: 149, baseType: !2901, size: 128, offset: 1152)
!2901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2586, file: !2587, line: 149, size: 128, elements: !2902)
!2902 = !{!2903, !2904}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2901, file: !2587, line: 150, baseType: !215, size: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2901, file: !2587, line: 151, baseType: !426, size: 128, align: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2268, file: !2269, line: 926, baseType: !2584, size: 64, offset: 8576)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2268, file: !2269, line: 929, baseType: !2584, size: 64, offset: 8640)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2268, file: !2269, line: 933, baseType: !2612, size: 64, offset: 8704)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2268, file: !2269, line: 943, baseType: !2909, size: 128, offset: 8768)
!2909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 128, elements: !1803)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2268, file: !2269, line: 945, baseType: !2911, size: 64, offset: 8896)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2269, line: 49, flags: DIFlagFwdDecl)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2268, file: !2269, line: 956, baseType: !2914, size: 64, offset: 8960)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2269, line: 45, flags: DIFlagFwdDecl)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2268, file: !2269, line: 959, baseType: !2917, size: 64, offset: 9024)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2269, line: 959, flags: DIFlagFwdDecl)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2268, file: !2269, line: 962, baseType: !2920, size: 64, offset: 9088)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2269, line: 66, flags: DIFlagFwdDecl)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2268, file: !2269, line: 966, baseType: !2923, size: 64, offset: 9152)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2925, line: 31, size: 576, elements: !2926)
!2925 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!2926 = !{!2927, !2928, !2931, !2934, !2937, !2938, !2941, !2944, !2945}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2924, file: !2925, line: 32, baseType: !861, size: 32)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2924, file: !2925, line: 33, baseType: !2929, size: 64, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2925, line: 9, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2924, file: !2925, line: 34, baseType: !2932, size: 64, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2925, line: 10, flags: DIFlagFwdDecl)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2924, file: !2925, line: 35, baseType: !2935, size: 64, offset: 192)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2925, line: 8, flags: DIFlagFwdDecl)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2924, file: !2925, line: 36, baseType: !2531, size: 64, offset: 256)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2924, file: !2925, line: 37, baseType: !2939, size: 64, offset: 320)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !2614, line: 34, flags: DIFlagFwdDecl)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2924, file: !2925, line: 38, baseType: !2942, size: 64, offset: 384)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2925, line: 38, flags: DIFlagFwdDecl)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2924, file: !2925, line: 39, baseType: !2942, size: 64, offset: 448)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2924, file: !2925, line: 40, baseType: !2946, size: 64, offset: 512)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2948, line: 856, size: 448, elements: !2949)
!2948 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/lizy2001/genbc/linux")
!2949 = !{!2950, !2951, !2952, !2953, !2954}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2947, file: !2948, line: 857, baseType: !1476, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2947, file: !2948, line: 858, baseType: !2780, size: 192, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2947, file: !2948, line: 859, baseType: !2748, size: 64, offset: 256)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2947, file: !2948, line: 860, baseType: !2877, size: 64, offset: 320)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !2947, file: !2948, line: 861, baseType: !2955, size: 64, offset: 384)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2957, line: 16, flags: DIFlagFwdDecl)
!2957 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/lizy2001/genbc/linux")
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2268, file: !2269, line: 969, baseType: !2959, size: 64, offset: 9216)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2961, line: 82, size: 7296, elements: !2962)
!2961 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2962 = !{!2963, !2964, !2965, !2966, !2967, !2968, !2969, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2998, !3007, !3008, !3010, !3011, !3012, !3015, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3045, !3046, !3053, !3054, !3055, !3056, !3057, !3058}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2960, file: !2961, line: 83, baseType: !1476, size: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2960, file: !2961, line: 84, baseType: !861, size: 32, offset: 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2960, file: !2961, line: 85, baseType: !215, size: 32, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2960, file: !2961, line: 86, baseType: !283, size: 128, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2960, file: !2961, line: 88, baseType: !1283, size: 128, offset: 256)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2960, file: !2961, line: 91, baseType: !2267, size: 64, offset: 384)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2960, file: !2961, line: 94, baseType: !2970, size: 192, offset: 448)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2971, line: 30, size: 192, elements: !2972)
!2971 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2972 = !{!2973, !2974}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2970, file: !2971, line: 31, baseType: !283, size: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2970, file: !2971, line: 32, baseType: !2975, size: 64, offset: 128)
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2976, line: 25, baseType: !2977)
!2976 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2976, line: 23, size: 64, elements: !2978)
!2978 = !{!2979}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2977, file: !2976, line: 24, baseType: !2414, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2960, file: !2961, line: 97, baseType: !687, size: 64, offset: 640)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2960, file: !2961, line: 100, baseType: !215, size: 32, offset: 704)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2960, file: !2961, line: 106, baseType: !215, size: 32, offset: 736)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2960, file: !2961, line: 107, baseType: !2267, size: 64, offset: 768)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2960, file: !2961, line: 110, baseType: !215, size: 32, offset: 832)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2960, file: !2961, line: 111, baseType: !7, size: 32, offset: 864)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2960, file: !2961, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2960, file: !2961, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2960, file: !2961, line: 128, baseType: !215, size: 32, offset: 928)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2960, file: !2961, line: 129, baseType: !283, size: 128, offset: 960)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2960, file: !2961, line: 132, baseType: !2338, size: 512, offset: 1088)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2960, file: !2961, line: 133, baseType: !2346, size: 64, offset: 1600)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2960, file: !2961, line: 140, baseType: !2993, size: 256, offset: 1664)
!2993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2994, size: 256, elements: !1453)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2961, line: 38, size: 128, elements: !2995)
!2995 = !{!2996, !2997}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2994, file: !2961, line: 39, baseType: !207, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2994, file: !2961, line: 40, baseType: !207, size: 64, offset: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2960, file: !2961, line: 146, baseType: !2999, size: 192, offset: 1920)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2961, line: 66, size: 192, elements: !3000)
!3000 = !{!3001}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2999, file: !2961, line: 67, baseType: !3002, size: 192)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2961, line: 47, size: 192, elements: !3003)
!3003 = !{!3004, !3005, !3006}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3002, file: !2961, line: 48, baseType: !794, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3002, file: !2961, line: 49, baseType: !794, size: 64, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3002, file: !2961, line: 50, baseType: !794, size: 64, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2960, file: !2961, line: 150, baseType: !2567, size: 640, offset: 2112)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2960, file: !2961, line: 153, baseType: !3009, size: 256, offset: 2752)
!3009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2514, size: 256, elements: !1361)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2960, file: !2961, line: 159, baseType: !2514, size: 64, offset: 3008)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2960, file: !2961, line: 162, baseType: !215, size: 32, offset: 3072)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2960, file: !2961, line: 164, baseType: !3013, size: 64, offset: 3136)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2961, line: 164, flags: DIFlagFwdDecl)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2960, file: !2961, line: 175, baseType: !3016, size: 32, offset: 3200)
!3016 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !449, line: 805, baseType: !3017)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !449, line: 798, size: 32, elements: !3018)
!3018 = !{!3019, !3020}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3017, file: !449, line: 803, baseType: !448, size: 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3017, file: !449, line: 804, baseType: !296, offset: 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2960, file: !2961, line: 176, baseType: !207, size: 64, offset: 3264)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2960, file: !2961, line: 176, baseType: !207, size: 64, offset: 3328)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2960, file: !2961, line: 176, baseType: !207, size: 64, offset: 3392)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2960, file: !2961, line: 176, baseType: !207, size: 64, offset: 3456)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2960, file: !2961, line: 177, baseType: !207, size: 64, offset: 3520)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2960, file: !2961, line: 178, baseType: !207, size: 64, offset: 3584)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2960, file: !2961, line: 179, baseType: !2555, size: 128, offset: 3648)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2960, file: !2961, line: 180, baseType: !202, size: 64, offset: 3776)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2960, file: !2961, line: 180, baseType: !202, size: 64, offset: 3840)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2960, file: !2961, line: 180, baseType: !202, size: 64, offset: 3904)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2960, file: !2961, line: 180, baseType: !202, size: 64, offset: 3968)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2960, file: !2961, line: 181, baseType: !202, size: 64, offset: 4032)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2960, file: !2961, line: 181, baseType: !202, size: 64, offset: 4096)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2960, file: !2961, line: 181, baseType: !202, size: 64, offset: 4160)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2960, file: !2961, line: 181, baseType: !202, size: 64, offset: 4224)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2960, file: !2961, line: 182, baseType: !202, size: 64, offset: 4288)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2960, file: !2961, line: 182, baseType: !202, size: 64, offset: 4352)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2960, file: !2961, line: 182, baseType: !202, size: 64, offset: 4416)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2960, file: !2961, line: 182, baseType: !202, size: 64, offset: 4480)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2960, file: !2961, line: 183, baseType: !202, size: 64, offset: 4544)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2960, file: !2961, line: 183, baseType: !202, size: 64, offset: 4608)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2960, file: !2961, line: 184, baseType: !3043, offset: 4672)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3044, line: 12, elements: !310)
!3044 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2960, file: !2961, line: 192, baseType: !211, size: 64, offset: 4672)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2960, file: !2961, line: 203, baseType: !3047, size: 2048, offset: 4736)
!3047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3048, size: 2048, elements: !1803)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3049, line: 43, size: 128, elements: !3050)
!3049 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3050 = !{!3051, !3052}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3048, file: !3049, line: 44, baseType: !385, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3048, file: !3049, line: 45, baseType: !385, size: 64, offset: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2960, file: !2961, line: 220, baseType: !272, size: 8, offset: 6784)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2960, file: !2961, line: 221, baseType: !1037, size: 16, offset: 6800)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2960, file: !2961, line: 222, baseType: !1037, size: 16, offset: 6816)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2960, file: !2961, line: 224, baseType: !2034, size: 64, offset: 6848)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2960, file: !2961, line: 227, baseType: !788, size: 192, offset: 6912)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2960, file: !2961, line: 233, baseType: !788, size: 192, offset: 7104)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2268, file: !2269, line: 970, baseType: !3060, size: 64, offset: 9280)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2961, line: 20, size: 16576, elements: !3062)
!3062 = !{!3063, !3064, !3065, !3066}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3061, file: !2961, line: 21, baseType: !296)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3061, file: !2961, line: 22, baseType: !1476, size: 32)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3061, file: !2961, line: 23, baseType: !1283, size: 128, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3061, file: !2961, line: 24, baseType: !3067, size: 16384, offset: 192)
!3067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3068, size: 16384, elements: !342)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2971, line: 49, size: 256, elements: !3069)
!3069 = !{!3070}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3068, file: !2971, line: 50, baseType: !3071, size: 256)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2971, line: 35, size: 256, elements: !3072)
!3072 = !{!3073, !3080, !3081, !3085}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3071, file: !2971, line: 37, baseType: !3074, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3075, line: 19, baseType: !3076)
!3075 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3075, line: 18, baseType: !3078)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{null, !215}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3071, file: !2971, line: 38, baseType: !202, size: 64, offset: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3071, file: !2971, line: 44, baseType: !3082, size: 64, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3075, line: 22, baseType: !3083)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3075, line: 21, baseType: !227)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3071, file: !2971, line: 46, baseType: !2975, size: 64, offset: 192)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2268, file: !2269, line: 971, baseType: !2975, size: 64, offset: 9344)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2268, file: !2269, line: 972, baseType: !2975, size: 64, offset: 9408)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2268, file: !2269, line: 974, baseType: !2975, size: 64, offset: 9472)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2268, file: !2269, line: 975, baseType: !2970, size: 192, offset: 9536)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2268, file: !2269, line: 976, baseType: !202, size: 64, offset: 9728)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2268, file: !2269, line: 977, baseType: !383, size: 64, offset: 9792)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2268, file: !2269, line: 978, baseType: !7, size: 32, offset: 9856)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2268, file: !2269, line: 980, baseType: !429, size: 64, offset: 9920)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2268, file: !2269, line: 989, baseType: !3095, size: 128, offset: 9984)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3096, line: 35, size: 128, elements: !3097)
!3096 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3097 = !{!3098, !3099, !3100}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3095, file: !3096, line: 36, baseType: !215, size: 32)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3095, file: !3096, line: 37, baseType: !861, size: 32, offset: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3095, file: !3096, line: 38, baseType: !3101, size: 64, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3096, line: 23, flags: DIFlagFwdDecl)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2268, file: !2269, line: 992, baseType: !207, size: 64, offset: 10112)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2268, file: !2269, line: 993, baseType: !207, size: 64, offset: 10176)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2268, file: !2269, line: 996, baseType: !296, offset: 10240)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2268, file: !2269, line: 999, baseType: !887, offset: 10240)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2268, file: !2269, line: 1001, baseType: !3108, size: 64, offset: 10240)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2269, line: 636, size: 64, elements: !3109)
!3109 = !{!3110}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3108, file: !2269, line: 637, baseType: !3111, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2268, file: !2269, line: 1005, baseType: !866, size: 128, offset: 10304)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2268, file: !2269, line: 1007, baseType: !2267, size: 64, offset: 10432)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2268, file: !2269, line: 1009, baseType: !3115, size: 64, offset: 10496)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2269, line: 1009, flags: DIFlagFwdDecl)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2268, file: !2269, line: 1043, baseType: !203, size: 64, offset: 10560)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2268, file: !2269, line: 1046, baseType: !3119, size: 64, offset: 10624)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2268, file: !2269, line: 1050, baseType: !3121, size: 64, offset: 10688)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !19, line: 1236, size: 320, elements: !3123)
!3123 = !{!3124, !3125, !3126, !3127, !3128}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3122, file: !19, line: 1237, baseType: !283, size: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3122, file: !19, line: 1238, baseType: !283, size: 128, offset: 128)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3122, file: !19, line: 1239, baseType: !378, size: 16, offset: 256)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3122, file: !19, line: 1240, baseType: !272, size: 8, offset: 272)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "nowait", scope: !3122, file: !19, line: 1241, baseType: !272, size: 8, offset: 280)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2268, file: !2269, line: 1054, baseType: !3130, size: 64, offset: 10752)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1033, line: 131, size: 64, elements: !3132)
!3132 = !{!3133}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed_slab", scope: !3131, file: !1033, line: 132, baseType: !202, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !2268, file: !2269, line: 1056, baseType: !1657, size: 64, offset: 10816)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2268, file: !2269, line: 1058, baseType: !1428, size: 64, offset: 10880)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2268, file: !2269, line: 1061, baseType: !3137, size: 64, offset: 10944)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2269, line: 43, flags: DIFlagFwdDecl)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2268, file: !2269, line: 1064, baseType: !202, size: 64, offset: 11008)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2268, file: !2269, line: 1065, baseType: !3141, size: 64, offset: 11072)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2971, line: 14, baseType: !3143)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2971, line: 12, size: 384, elements: !3144)
!3144 = !{!3145}
!3145 = !DIDerivedType(tag: DW_TAG_member, scope: !3143, file: !2971, line: 13, baseType: !3146, size: 384)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3143, file: !2971, line: 13, size: 384, elements: !3147)
!3147 = !{!3148, !3149, !3150, !3151}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3146, file: !2971, line: 13, baseType: !215, size: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3146, file: !2971, line: 13, baseType: !215, size: 32, offset: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3146, file: !2971, line: 13, baseType: !215, size: 32, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3146, file: !2971, line: 13, baseType: !3152, size: 256, offset: 128)
!3152 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3153, line: 32, size: 256, elements: !3154)
!3153 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3154 = !{!3155, !3160, !3173, !3179, !3188, !3208, !3213}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3152, file: !3153, line: 37, baseType: !3156, size: 64)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3152, file: !3153, line: 34, size: 64, elements: !3157)
!3157 = !{!3158, !3159}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3156, file: !3153, line: 35, baseType: !2503, size: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3156, file: !3153, line: 36, baseType: !495, size: 32, offset: 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3152, file: !3153, line: 45, baseType: !3161, size: 192)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3152, file: !3153, line: 40, size: 192, elements: !3162)
!3162 = !{!3163, !3165, !3166, !3172}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3161, file: !3153, line: 41, baseType: !3164, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !370, line: 95, baseType: !215)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3161, file: !3153, line: 42, baseType: !215, size: 32, offset: 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3161, file: !3153, line: 43, baseType: !3167, size: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3153, line: 11, baseType: !3168)
!3168 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3153, line: 8, size: 64, elements: !3169)
!3169 = !{!3170, !3171}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3168, file: !3153, line: 9, baseType: !215, size: 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3168, file: !3153, line: 10, baseType: !203, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3161, file: !3153, line: 44, baseType: !215, size: 32, offset: 128)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3152, file: !3153, line: 52, baseType: !3174, size: 128)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3152, file: !3153, line: 48, size: 128, elements: !3175)
!3175 = !{!3176, !3177, !3178}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3174, file: !3153, line: 49, baseType: !2503, size: 32)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3174, file: !3153, line: 50, baseType: !495, size: 32, offset: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3174, file: !3153, line: 51, baseType: !3167, size: 64, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3152, file: !3153, line: 61, baseType: !3180, size: 256)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3152, file: !3153, line: 55, size: 256, elements: !3181)
!3181 = !{!3182, !3183, !3184, !3185, !3187}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3180, file: !3153, line: 56, baseType: !2503, size: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3180, file: !3153, line: 57, baseType: !495, size: 32, offset: 32)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3180, file: !3153, line: 58, baseType: !215, size: 32, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3180, file: !3153, line: 59, baseType: !3186, size: 64, offset: 128)
!3186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !370, line: 94, baseType: !371)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3180, file: !3153, line: 60, baseType: !3186, size: 64, offset: 192)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3152, file: !3153, line: 95, baseType: !3189, size: 256)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3152, file: !3153, line: 64, size: 256, elements: !3190)
!3190 = !{!3191, !3192}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3189, file: !3153, line: 65, baseType: !203, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, scope: !3189, file: !3153, line: 77, baseType: !3193, size: 192, offset: 64)
!3193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3189, file: !3153, line: 77, size: 192, elements: !3194)
!3194 = !{!3195, !3196, !3203}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3193, file: !3153, line: 82, baseType: !1037, size: 16)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3193, file: !3153, line: 88, baseType: !3197, size: 192)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3193, file: !3153, line: 84, size: 192, elements: !3198)
!3198 = !{!3199, !3201, !3202}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3197, file: !3153, line: 85, baseType: !3200, size: 64)
!3200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 64, elements: !2376)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3197, file: !3153, line: 86, baseType: !203, size: 64, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3197, file: !3153, line: 87, baseType: !203, size: 64, offset: 128)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3193, file: !3153, line: 93, baseType: !3204, size: 96)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3193, file: !3153, line: 90, size: 96, elements: !3205)
!3205 = !{!3206, !3207}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3204, file: !3153, line: 91, baseType: !3200, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3204, file: !3153, line: 92, baseType: !220, size: 32, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3152, file: !3153, line: 101, baseType: !3209, size: 128)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3152, file: !3153, line: 98, size: 128, elements: !3210)
!3210 = !{!3211, !3212}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3209, file: !3153, line: 99, baseType: !204, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3209, file: !3153, line: 100, baseType: !215, size: 32, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3152, file: !3153, line: 108, baseType: !3214, size: 128)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3152, file: !3153, line: 104, size: 128, elements: !3215)
!3215 = !{!3216, !3217, !3218}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3214, file: !3153, line: 105, baseType: !203, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3214, file: !3153, line: 106, baseType: !215, size: 32, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3214, file: !3153, line: 107, baseType: !7, size: 32, offset: 96)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2268, file: !2269, line: 1067, baseType: !3043, offset: 11136)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2268, file: !2269, line: 1099, baseType: !3221, size: 64, offset: 11136)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2269, line: 56, flags: DIFlagFwdDecl)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2268, file: !2269, line: 1103, baseType: !283, size: 128, offset: 11200)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2268, file: !2269, line: 1104, baseType: !3225, size: 64, offset: 11328)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2269, line: 46, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2268, file: !2269, line: 1105, baseType: !788, size: 192, offset: 11392)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2268, file: !2269, line: 1106, baseType: !7, size: 32, offset: 11584)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2268, file: !2269, line: 1109, baseType: !3230, size: 128, offset: 11648)
!3230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3231, size: 128, elements: !1453)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2269, line: 51, flags: DIFlagFwdDecl)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2268, file: !2269, line: 1110, baseType: !788, size: 192, offset: 11776)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2268, file: !2269, line: 1111, baseType: !283, size: 128, offset: 11968)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2268, file: !2269, line: 1173, baseType: !3236, size: 64, offset: 12096)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3238, line: 62, size: 256, align: 256, elements: !3239)
!3238 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3239 = !{!3240, !3241, !3242, !3247}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3237, file: !3238, line: 75, baseType: !220, size: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3237, file: !3238, line: 90, baseType: !220, size: 32, offset: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3237, file: !3238, line: 124, baseType: !3243, size: 64, offset: 64)
!3243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3237, file: !3238, line: 109, size: 64, elements: !3244)
!3244 = !{!3245, !3246}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3243, file: !3238, line: 110, baseType: !209, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3243, file: !3238, line: 112, baseType: !209, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3237, file: !3238, line: 144, baseType: !220, size: 32, offset: 128)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2268, file: !2269, line: 1174, baseType: !219, size: 32, offset: 12160)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2268, file: !2269, line: 1179, baseType: !202, size: 64, offset: 12224)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2268, file: !2269, line: 1182, baseType: !3251, size: 128, offset: 12288)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2211, line: 76, size: 128, elements: !3252)
!3252 = !{!3253, !3258, !3259}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3251, file: !2211, line: 85, baseType: !3254, size: 64)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3255, line: 7, size: 64, elements: !3256)
!3255 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3256 = !{!3257}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3254, file: !3255, line: 12, baseType: !2411, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3251, file: !2211, line: 88, baseType: !272, size: 8, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3251, file: !2211, line: 95, baseType: !272, size: 8, offset: 72)
!3260 = !DIDerivedType(tag: DW_TAG_member, scope: !2268, file: !2269, line: 1184, baseType: !3261, size: 128, offset: 12416)
!3261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2268, file: !2269, line: 1184, size: 128, elements: !3262)
!3262 = !{!3263, !3264}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3261, file: !2269, line: 1185, baseType: !1476, size: 32)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3261, file: !2269, line: 1186, baseType: !426, size: 128, align: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2268, file: !2269, line: 1190, baseType: !3266, size: 64, offset: 12544)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2269, line: 53, flags: DIFlagFwdDecl)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2268, file: !2269, line: 1192, baseType: !3269, size: 128, offset: 12608)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2211, line: 64, size: 128, elements: !3270)
!3270 = !{!3271, !3272, !3273}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3269, file: !2211, line: 65, baseType: !835, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3269, file: !2211, line: 67, baseType: !220, size: 32, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3269, file: !2211, line: 68, baseType: !220, size: 32, offset: 96)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2268, file: !2269, line: 1206, baseType: !215, size: 32, offset: 12736)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2268, file: !2269, line: 1207, baseType: !215, size: 32, offset: 12768)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2268, file: !2269, line: 1209, baseType: !202, size: 64, offset: 12800)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2268, file: !2269, line: 1219, baseType: !207, size: 64, offset: 12864)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2268, file: !2269, line: 1220, baseType: !207, size: 64, offset: 12928)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2268, file: !2269, line: 1317, baseType: !215, size: 32, offset: 12992)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2268, file: !2269, line: 1319, baseType: !2267, size: 64, offset: 13056)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2268, file: !2269, line: 1322, baseType: !3282, size: 64, offset: 13120)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3284, line: 56, size: 512, elements: !3285)
!3284 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3285 = !{!3286, !3287, !3288, !3289, !3290, !3291, !3292, !3294}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3283, file: !3284, line: 57, baseType: !3282, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3283, file: !3284, line: 58, baseType: !203, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3283, file: !3284, line: 59, baseType: !202, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3283, file: !3284, line: 60, baseType: !202, size: 64, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3283, file: !3284, line: 61, baseType: !934, size: 64, offset: 256)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3283, file: !3284, line: 62, baseType: !7, size: 32, offset: 320)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3283, file: !3284, line: 63, baseType: !3293, size: 64, offset: 384)
!3293 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !201, line: 153, baseType: !207)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3283, file: !3284, line: 64, baseType: !3295, size: 64, offset: 448)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2268, file: !2269, line: 1326, baseType: !1476, size: 32, offset: 13184)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2268, file: !2269, line: 1342, baseType: !203, size: 64, offset: 13248)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2268, file: !2269, line: 1343, baseType: !209, size: 64, offset: 13312)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2268, file: !2269, line: 1344, baseType: !207, size: 64, offset: 13376)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2268, file: !2269, line: 1345, baseType: !209, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2268, file: !2269, line: 1346, baseType: !209, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2268, file: !2269, line: 1347, baseType: !209, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2268, file: !2269, line: 1348, baseType: !426, size: 128, align: 64, offset: 13504)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2268, file: !2269, line: 1358, baseType: !3306, size: 34816, offset: 13824)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3307, line: 485, size: 34816, elements: !3308)
!3307 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3308 = !{!3309, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3338, !3339, !3340, !3341, !3342, !3343, !3346, !3347, !3348}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3306, file: !3307, line: 487, baseType: !3310, size: 192)
!3310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3311, size: 192, elements: !338)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3312, line: 16, size: 64, elements: !3313)
!3312 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3313 = !{!3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3311, file: !3312, line: 17, baseType: !973, size: 16)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3311, file: !3312, line: 18, baseType: !973, size: 16, offset: 16)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3311, file: !3312, line: 19, baseType: !973, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3311, file: !3312, line: 19, baseType: !973, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3311, file: !3312, line: 19, baseType: !973, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3311, file: !3312, line: 19, baseType: !973, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3311, file: !3312, line: 19, baseType: !973, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3311, file: !3312, line: 20, baseType: !973, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3311, file: !3312, line: 20, baseType: !973, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3311, file: !3312, line: 20, baseType: !973, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3311, file: !3312, line: 20, baseType: !973, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3311, file: !3312, line: 20, baseType: !973, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3311, file: !3312, line: 20, baseType: !973, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3306, file: !3307, line: 491, baseType: !202, size: 64, offset: 192)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3306, file: !3307, line: 495, baseType: !378, size: 16, offset: 256)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3306, file: !3307, line: 496, baseType: !378, size: 16, offset: 272)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3306, file: !3307, line: 497, baseType: !378, size: 16, offset: 288)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3306, file: !3307, line: 498, baseType: !378, size: 16, offset: 304)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3306, file: !3307, line: 502, baseType: !202, size: 64, offset: 320)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3306, file: !3307, line: 503, baseType: !202, size: 64, offset: 384)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3306, file: !3307, line: 514, baseType: !3335, size: 256, offset: 448)
!3335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3336, size: 256, elements: !1361)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3307, line: 483, flags: DIFlagFwdDecl)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3306, file: !3307, line: 516, baseType: !202, size: 64, offset: 704)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3306, file: !3307, line: 518, baseType: !202, size: 64, offset: 768)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3306, file: !3307, line: 520, baseType: !202, size: 64, offset: 832)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3306, file: !3307, line: 521, baseType: !202, size: 64, offset: 896)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3306, file: !3307, line: 522, baseType: !202, size: 64, offset: 960)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3306, file: !3307, line: 528, baseType: !3344, size: 64, offset: 1024)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3307, line: 10, flags: DIFlagFwdDecl)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3306, file: !3307, line: 535, baseType: !202, size: 64, offset: 1088)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3306, file: !3307, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3306, file: !3307, line: 540, baseType: !3349, size: 33280, offset: 1536)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3350, line: 317, size: 33280, elements: !3351)
!3350 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3351 = !{!3352, !3353, !3354}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3349, file: !3350, line: 330, baseType: !7, size: 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3349, file: !3350, line: 337, baseType: !202, size: 64, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3349, file: !3350, line: 348, baseType: !3355, size: 32768, offset: 512)
!3355 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3350, line: 304, size: 32768, elements: !3356)
!3356 = !{!3357, !3372, !3409, !3459, !3472}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3355, file: !3350, line: 305, baseType: !3358, size: 896)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3350, line: 12, size: 896, elements: !3359)
!3359 = !{!3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3371}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3358, file: !3350, line: 13, baseType: !219, size: 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3358, file: !3350, line: 14, baseType: !219, size: 32, offset: 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3358, file: !3350, line: 15, baseType: !219, size: 32, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3358, file: !3350, line: 16, baseType: !219, size: 32, offset: 96)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3358, file: !3350, line: 17, baseType: !219, size: 32, offset: 128)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3358, file: !3350, line: 18, baseType: !219, size: 32, offset: 160)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3358, file: !3350, line: 19, baseType: !219, size: 32, offset: 192)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3358, file: !3350, line: 22, baseType: !3368, size: 640, offset: 224)
!3368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 640, elements: !3369)
!3369 = !{!3370}
!3370 = !DISubrange(count: 20)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3358, file: !3350, line: 25, baseType: !219, size: 32, offset: 864)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3355, file: !3350, line: 306, baseType: !3373, size: 4096, align: 128)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3350, line: 34, size: 4096, align: 128, elements: !3374)
!3374 = !{!3375, !3376, !3377, !3378, !3379, !3394, !3395, !3396, !3398, !3400, !3404}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3373, file: !3350, line: 35, baseType: !973, size: 16)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3373, file: !3350, line: 36, baseType: !973, size: 16, offset: 16)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3373, file: !3350, line: 37, baseType: !973, size: 16, offset: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3373, file: !3350, line: 38, baseType: !973, size: 16, offset: 48)
!3379 = !DIDerivedType(tag: DW_TAG_member, scope: !3373, file: !3350, line: 39, baseType: !3380, size: 128, offset: 64)
!3380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3373, file: !3350, line: 39, size: 128, elements: !3381)
!3381 = !{!3382, !3387}
!3382 = !DIDerivedType(tag: DW_TAG_member, scope: !3380, file: !3350, line: 40, baseType: !3383, size: 128)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3380, file: !3350, line: 40, size: 128, elements: !3384)
!3384 = !{!3385, !3386}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3383, file: !3350, line: 41, baseType: !207, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3383, file: !3350, line: 42, baseType: !207, size: 64, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, scope: !3380, file: !3350, line: 44, baseType: !3388, size: 128)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3380, file: !3350, line: 44, size: 128, elements: !3389)
!3389 = !{!3390, !3391, !3392, !3393}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3388, file: !3350, line: 45, baseType: !219, size: 32)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3388, file: !3350, line: 46, baseType: !219, size: 32, offset: 32)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3388, file: !3350, line: 47, baseType: !219, size: 32, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3388, file: !3350, line: 48, baseType: !219, size: 32, offset: 96)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3373, file: !3350, line: 51, baseType: !219, size: 32, offset: 192)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3373, file: !3350, line: 52, baseType: !219, size: 32, offset: 224)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3373, file: !3350, line: 55, baseType: !3397, size: 1024, offset: 256)
!3397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 1024, elements: !1172)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3373, file: !3350, line: 58, baseType: !3399, size: 2048, offset: 1280)
!3399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 2048, elements: !342)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3373, file: !3350, line: 60, baseType: !3401, size: 384, offset: 3328)
!3401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 384, elements: !3402)
!3402 = !{!3403}
!3403 = !DISubrange(count: 12)
!3404 = !DIDerivedType(tag: DW_TAG_member, scope: !3373, file: !3350, line: 62, baseType: !3405, size: 384, offset: 3712)
!3405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3373, file: !3350, line: 62, size: 384, elements: !3406)
!3406 = !{!3407, !3408}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3405, file: !3350, line: 63, baseType: !3401, size: 384)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3405, file: !3350, line: 64, baseType: !3401, size: 384)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3355, file: !3350, line: 307, baseType: !3410, size: 1088)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3350, line: 79, size: 1088, elements: !3411)
!3411 = !{!3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3458}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3410, file: !3350, line: 80, baseType: !219, size: 32)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3410, file: !3350, line: 81, baseType: !219, size: 32, offset: 32)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3410, file: !3350, line: 82, baseType: !219, size: 32, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3410, file: !3350, line: 83, baseType: !219, size: 32, offset: 96)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3410, file: !3350, line: 84, baseType: !219, size: 32, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3410, file: !3350, line: 85, baseType: !219, size: 32, offset: 160)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3410, file: !3350, line: 86, baseType: !219, size: 32, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3410, file: !3350, line: 88, baseType: !3368, size: 640, offset: 224)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3410, file: !3350, line: 89, baseType: !1094, size: 8, offset: 864)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3410, file: !3350, line: 90, baseType: !1094, size: 8, offset: 872)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3410, file: !3350, line: 91, baseType: !1094, size: 8, offset: 880)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3410, file: !3350, line: 92, baseType: !1094, size: 8, offset: 888)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3410, file: !3350, line: 93, baseType: !1094, size: 8, offset: 896)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3410, file: !3350, line: 94, baseType: !1094, size: 8, offset: 904)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3410, file: !3350, line: 95, baseType: !3427, size: 64, offset: 960)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3429, line: 11, size: 128, elements: !3430)
!3429 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3430 = !{!3431, !3432}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3428, file: !3429, line: 12, baseType: !204, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3428, file: !3429, line: 13, baseType: !3433, size: 64, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3435, line: 56, size: 1344, elements: !3436)
!3435 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3436 = !{!3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3434, file: !3435, line: 61, baseType: !202, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3434, file: !3435, line: 62, baseType: !202, size: 64, offset: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3434, file: !3435, line: 63, baseType: !202, size: 64, offset: 128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3434, file: !3435, line: 64, baseType: !202, size: 64, offset: 192)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3434, file: !3435, line: 65, baseType: !202, size: 64, offset: 256)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3434, file: !3435, line: 66, baseType: !202, size: 64, offset: 320)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3434, file: !3435, line: 68, baseType: !202, size: 64, offset: 384)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3434, file: !3435, line: 69, baseType: !202, size: 64, offset: 448)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3434, file: !3435, line: 70, baseType: !202, size: 64, offset: 512)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3434, file: !3435, line: 71, baseType: !202, size: 64, offset: 576)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3434, file: !3435, line: 72, baseType: !202, size: 64, offset: 640)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3434, file: !3435, line: 73, baseType: !202, size: 64, offset: 704)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3434, file: !3435, line: 74, baseType: !202, size: 64, offset: 768)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3434, file: !3435, line: 75, baseType: !202, size: 64, offset: 832)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3434, file: !3435, line: 76, baseType: !202, size: 64, offset: 896)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3434, file: !3435, line: 81, baseType: !202, size: 64, offset: 960)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3434, file: !3435, line: 83, baseType: !202, size: 64, offset: 1024)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3434, file: !3435, line: 84, baseType: !202, size: 64, offset: 1088)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3434, file: !3435, line: 85, baseType: !202, size: 64, offset: 1152)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3434, file: !3435, line: 86, baseType: !202, size: 64, offset: 1216)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3434, file: !3435, line: 87, baseType: !202, size: 64, offset: 1280)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3410, file: !3350, line: 96, baseType: !219, size: 32, offset: 1024)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3355, file: !3350, line: 308, baseType: !3460, size: 4608, align: 512)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3350, line: 289, size: 4608, align: 512, elements: !3461)
!3461 = !{!3462, !3463, !3470}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3460, file: !3350, line: 290, baseType: !3373, size: 4096, align: 128)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3460, file: !3350, line: 291, baseType: !3464, size: 512, offset: 4096)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3350, line: 268, size: 512, elements: !3465)
!3465 = !{!3466, !3467, !3468}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3464, file: !3350, line: 269, baseType: !207, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3464, file: !3350, line: 270, baseType: !207, size: 64, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3464, file: !3350, line: 271, baseType: !3469, size: 384, offset: 128)
!3469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 384, elements: !2660)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3460, file: !3350, line: 292, baseType: !3471, offset: 4608)
!3471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1094, elements: !2898)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3355, file: !3350, line: 309, baseType: !3473, size: 32768)
!3473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1094, size: 32768, elements: !3474)
!3474 = !{!3475}
!3475 = !DISubrange(count: 4096)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2264, file: !837, line: 378, baseType: !3477, size: 64, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2260, file: !837, line: 384, baseType: !2539, size: 192, offset: 192)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !2038, file: !837, line: 500, baseType: !296, offset: 6656)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !2038, file: !837, line: 501, baseType: !3481, size: 64, offset: 6656)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !837, line: 387, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2038, file: !837, line: 516, baseType: !2748, size: 64, offset: 6720)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !2038, file: !837, line: 519, baseType: !413, size: 64, offset: 6784)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !2038, file: !837, line: 521, baseType: !3486, size: 64, offset: 6848)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !837, line: 521, flags: DIFlagFwdDecl)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !2038, file: !837, line: 545, baseType: !861, size: 32, offset: 6912)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !2038, file: !837, line: 548, baseType: !272, size: 8, offset: 6944)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !2038, file: !837, line: 550, baseType: !3491, offset: 6952)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !3492, line: 142, elements: !310)
!3492 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !2038, file: !837, line: 554, baseType: !1147, size: 256, offset: 6976)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !2038, file: !837, line: 557, baseType: !219, size: 32, offset: 7232)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !2035, file: !837, line: 565, baseType: !3496, offset: 7296)
!3496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, elements: !1185)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2031, file: !837, line: 151, baseType: !861, size: 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2023, file: !837, line: 156, baseType: !296, offset: 256)
!3499 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !837, line: 159, baseType: !3500, size: 128)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !841, file: !837, line: 159, size: 128, elements: !3501)
!3501 = !{!3502, !3546}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3500, file: !837, line: 161, baseType: !3503, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !73, line: 110, size: 1152, elements: !3505)
!3505 = !{!3506, !3516, !3517, !3518, !3519, !3520, !3521, !3533, !3534, !3535}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3504, file: !73, line: 111, baseType: !3507, size: 384)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !73, line: 19, size: 384, elements: !3508)
!3508 = !{!3509, !3511, !3512, !3513, !3514, !3515}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3507, file: !73, line: 20, baseType: !3510, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3507, file: !73, line: 21, baseType: !3510, size: 64, offset: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3507, file: !73, line: 22, baseType: !3510, size: 64, offset: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3507, file: !73, line: 23, baseType: !202, size: 64, offset: 192)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3507, file: !73, line: 24, baseType: !202, size: 64, offset: 256)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3507, file: !73, line: 25, baseType: !202, size: 64, offset: 320)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3504, file: !73, line: 112, baseType: !1122, size: 64, offset: 384)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !3504, file: !73, line: 113, baseType: !1108, size: 128, offset: 448)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3504, file: !73, line: 114, baseType: !2539, size: 192, offset: 576)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3504, file: !73, line: 115, baseType: !72, size: 32, offset: 768)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3504, file: !73, line: 116, baseType: !7, size: 32, offset: 800)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3504, file: !73, line: 117, baseType: !3522, size: 64, offset: 832)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3524)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !73, line: 67, size: 256, elements: !3525)
!3525 = !{!3526, !3527, !3531, !3532}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3524, file: !73, line: 73, baseType: !954, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3524, file: !73, line: 78, baseType: !3528, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{null, !3503}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3524, file: !73, line: 83, baseType: !3528, size: 64, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3524, file: !73, line: 89, baseType: !2087, size: 64, offset: 192)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3504, file: !73, line: 118, baseType: !203, size: 64, offset: 896)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3504, file: !73, line: 119, baseType: !215, size: 32, offset: 960)
!3535 = !DIDerivedType(tag: DW_TAG_member, scope: !3504, file: !73, line: 120, baseType: !3536, size: 128, offset: 1024)
!3536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3504, file: !73, line: 120, size: 128, elements: !3537)
!3537 = !{!3538, !3544}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3536, file: !73, line: 121, baseType: !3539, size: 128)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3540, line: 6, size: 128, elements: !3541)
!3540 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3541 = !{!3542, !3543}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3539, file: !3540, line: 7, baseType: !207, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3539, file: !3540, line: 8, baseType: !207, size: 64, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3536, file: !73, line: 122, baseType: !3545)
!3545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3539, elements: !2898)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3500, file: !837, line: 162, baseType: !203, size: 64, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !841, file: !837, line: 176, baseType: !426, size: 128, align: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !837, line: 179, baseType: !3549, size: 32, offset: 384)
!3549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !837, line: 179, size: 32, elements: !3550)
!3550 = !{!3551, !3552, !3553, !3554}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3549, file: !837, line: 184, baseType: !861, size: 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3549, file: !837, line: 192, baseType: !7, size: 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3549, file: !837, line: 194, baseType: !7, size: 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3549, file: !837, line: 195, baseType: !215, size: 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !836, file: !837, line: 199, baseType: !861, size: 32, offset: 416)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !709, file: !86, line: 1964, baseType: !3557, size: 64, offset: 1344)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!204, !651, !3560}
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3562, line: 12, size: 256, elements: !3563)
!3562 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!3563 = !{!3564, !3565, !3566, !3567, !3568}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3561, file: !3562, line: 13, baseType: !200, size: 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3561, file: !3562, line: 16, baseType: !215, size: 32, offset: 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3561, file: !3562, line: 23, baseType: !202, size: 64, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3561, file: !3562, line: 30, baseType: !202, size: 64, offset: 128)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3561, file: !3562, line: 33, baseType: !3569, size: 64, offset: 192)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !837, line: 27, flags: DIFlagFwdDecl)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !709, file: !86, line: 1966, baseType: !3557, size: 64, offset: 1408)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !652, file: !86, line: 1424, baseType: !3573, size: 64, offset: 448)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3575)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !80, line: 322, size: 704, elements: !3576)
!3576 = !{!3577, !3623, !3627, !3631, !3632, !3633, !3634, !3635, !3640, !3645, !3649}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3575, file: !80, line: 323, baseType: !3578, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!215, !3581}
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !80, line: 294, size: 1600, elements: !3583)
!3583 = !{!3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3608, !3609, !3610}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3582, file: !80, line: 295, baseType: !691, size: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3582, file: !80, line: 296, baseType: !283, size: 128, offset: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3582, file: !80, line: 297, baseType: !283, size: 128, offset: 256)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3582, file: !80, line: 298, baseType: !283, size: 128, offset: 384)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3582, file: !80, line: 299, baseType: !788, size: 192, offset: 512)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3582, file: !80, line: 300, baseType: !296, offset: 704)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3582, file: !80, line: 301, baseType: !861, size: 32, offset: 704)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3582, file: !80, line: 302, baseType: !651, size: 64, offset: 768)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3582, file: !80, line: 303, baseType: !3593, size: 64, offset: 832)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !80, line: 68, size: 64, elements: !3594)
!3594 = !{!3595, !3607}
!3595 = !DIDerivedType(tag: DW_TAG_member, scope: !3593, file: !80, line: 69, baseType: !3596, size: 32)
!3596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3593, file: !80, line: 69, size: 32, elements: !3597)
!3597 = !{!3598, !3599, !3600}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3596, file: !80, line: 70, baseType: !489, size: 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3596, file: !80, line: 71, baseType: !497, size: 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3596, file: !80, line: 72, baseType: !3601, size: 32)
!3601 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3602, line: 24, baseType: !3603)
!3602 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3602, line: 22, size: 32, elements: !3604)
!3604 = !{!3605}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3603, file: !3602, line: 23, baseType: !3606, size: 32)
!3606 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3602, line: 20, baseType: !495)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3593, file: !80, line: 74, baseType: !79, size: 32, offset: 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3582, file: !80, line: 304, baseType: !583, size: 64, offset: 896)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3582, file: !80, line: 305, baseType: !202, size: 64, offset: 960)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3582, file: !80, line: 306, baseType: !3611, size: 576, offset: 1024)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !80, line: 205, size: 576, elements: !3612)
!3612 = !{!3613, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3611, file: !80, line: 206, baseType: !3614, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !80, line: 66, baseType: !585)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3611, file: !80, line: 207, baseType: !3614, size: 64, offset: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3611, file: !80, line: 208, baseType: !3614, size: 64, offset: 128)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3611, file: !80, line: 209, baseType: !3614, size: 64, offset: 192)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3611, file: !80, line: 210, baseType: !3614, size: 64, offset: 256)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3611, file: !80, line: 211, baseType: !3614, size: 64, offset: 320)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3611, file: !80, line: 212, baseType: !3614, size: 64, offset: 384)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3611, file: !80, line: 213, baseType: !591, size: 64, offset: 448)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3611, file: !80, line: 214, baseType: !591, size: 64, offset: 512)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3575, file: !80, line: 324, baseType: !3624, size: 64, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!3581, !651, !215}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3575, file: !80, line: 325, baseType: !3628, size: 64, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{null, !3581}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3575, file: !80, line: 326, baseType: !3578, size: 64, offset: 192)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3575, file: !80, line: 327, baseType: !3578, size: 64, offset: 256)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3575, file: !80, line: 328, baseType: !3578, size: 64, offset: 320)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3575, file: !80, line: 329, baseType: !751, size: 64, offset: 384)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3575, file: !80, line: 332, baseType: !3636, size: 64, offset: 448)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!3639, !483}
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3575, file: !80, line: 333, baseType: !3641, size: 64, offset: 512)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!215, !483, !3644}
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3575, file: !80, line: 335, baseType: !3646, size: 64, offset: 576)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!215, !483, !3639}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3575, file: !80, line: 337, baseType: !3650, size: 64, offset: 640)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!215, !651, !3653}
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !652, file: !86, line: 1425, baseType: !3655, size: 64, offset: 512)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3657)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !80, line: 428, size: 704, elements: !3658)
!3658 = !{!3659, !3663, !3664, !3668, !3669, !3670, !3685, !3708, !3712, !3713, !3736}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3657, file: !80, line: 429, baseType: !3660, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!215, !651, !215, !215, !601}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3657, file: !80, line: 430, baseType: !751, size: 64, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3657, file: !80, line: 431, baseType: !3665, size: 64, offset: 128)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!215, !651, !7}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3657, file: !80, line: 432, baseType: !3665, size: 64, offset: 192)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3657, file: !80, line: 433, baseType: !751, size: 64, offset: 256)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3657, file: !80, line: 434, baseType: !3671, size: 64, offset: 320)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!215, !651, !215, !3674}
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !80, line: 415, size: 256, elements: !3676)
!3676 = !{!3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3675, file: !80, line: 416, baseType: !215, size: 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3675, file: !80, line: 417, baseType: !7, size: 32, offset: 32)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3675, file: !80, line: 418, baseType: !7, size: 32, offset: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3675, file: !80, line: 420, baseType: !7, size: 32, offset: 96)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3675, file: !80, line: 421, baseType: !7, size: 32, offset: 128)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3675, file: !80, line: 422, baseType: !7, size: 32, offset: 160)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3675, file: !80, line: 423, baseType: !7, size: 32, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3675, file: !80, line: 424, baseType: !7, size: 32, offset: 224)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3657, file: !80, line: 435, baseType: !3686, size: 64, offset: 384)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!215, !651, !3593, !3689}
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !80, line: 343, size: 960, elements: !3691)
!3691 = !{!3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3690, file: !80, line: 344, baseType: !215, size: 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3690, file: !80, line: 345, baseType: !207, size: 64, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3690, file: !80, line: 346, baseType: !207, size: 64, offset: 128)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3690, file: !80, line: 347, baseType: !207, size: 64, offset: 192)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3690, file: !80, line: 348, baseType: !207, size: 64, offset: 256)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3690, file: !80, line: 349, baseType: !207, size: 64, offset: 320)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3690, file: !80, line: 350, baseType: !207, size: 64, offset: 384)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3690, file: !80, line: 351, baseType: !798, size: 64, offset: 448)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3690, file: !80, line: 353, baseType: !798, size: 64, offset: 512)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3690, file: !80, line: 354, baseType: !215, size: 32, offset: 576)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3690, file: !80, line: 355, baseType: !215, size: 32, offset: 608)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3690, file: !80, line: 356, baseType: !207, size: 64, offset: 640)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3690, file: !80, line: 357, baseType: !207, size: 64, offset: 704)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3690, file: !80, line: 358, baseType: !207, size: 64, offset: 768)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3690, file: !80, line: 359, baseType: !798, size: 64, offset: 832)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3690, file: !80, line: 360, baseType: !215, size: 32, offset: 896)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3657, file: !80, line: 436, baseType: !3709, size: 64, offset: 448)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!215, !651, !3653, !3689}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3657, file: !80, line: 438, baseType: !3686, size: 64, offset: 512)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3657, file: !80, line: 439, baseType: !3714, size: 64, offset: 576)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!215, !651, !3717}
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !80, line: 409, size: 1408, elements: !3719)
!3719 = !{!3720, !3721}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3718, file: !80, line: 410, baseType: !7, size: 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3718, file: !80, line: 411, baseType: !3722, size: 1344, offset: 64)
!3722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3723, size: 1344, elements: !338)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !80, line: 395, size: 448, elements: !3724)
!3724 = !{!3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3735}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3723, file: !80, line: 396, baseType: !7, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3723, file: !80, line: 397, baseType: !7, size: 32, offset: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3723, file: !80, line: 399, baseType: !7, size: 32, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3723, file: !80, line: 400, baseType: !7, size: 32, offset: 96)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3723, file: !80, line: 401, baseType: !7, size: 32, offset: 128)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3723, file: !80, line: 402, baseType: !7, size: 32, offset: 160)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3723, file: !80, line: 403, baseType: !7, size: 32, offset: 192)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3723, file: !80, line: 404, baseType: !211, size: 64, offset: 256)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3723, file: !80, line: 405, baseType: !3734, size: 64, offset: 320)
!3734 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !201, line: 126, baseType: !207)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3723, file: !80, line: 406, baseType: !3734, size: 64, offset: 384)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3657, file: !80, line: 440, baseType: !3665, size: 64, offset: 640)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !652, file: !86, line: 1426, baseType: !3738, size: 64, offset: 576)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3740)
!3740 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !86, line: 49, flags: DIFlagFwdDecl)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !652, file: !86, line: 1427, baseType: !202, size: 64, offset: 640)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !652, file: !86, line: 1428, baseType: !202, size: 64, offset: 704)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !652, file: !86, line: 1429, baseType: !202, size: 64, offset: 768)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !652, file: !86, line: 1430, baseType: !443, size: 64, offset: 832)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !652, file: !86, line: 1431, baseType: !881, size: 256, offset: 896)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !652, file: !86, line: 1432, baseType: !215, size: 32, offset: 1152)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !652, file: !86, line: 1433, baseType: !861, size: 32, offset: 1184)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !652, file: !86, line: 1437, baseType: !3749, size: 64, offset: 1216)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3752)
!3752 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !86, line: 1437, flags: DIFlagFwdDecl)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !652, file: !86, line: 1449, baseType: !3754, size: 64, offset: 1280)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !459, line: 34, size: 64, elements: !3755)
!3755 = !{!3756}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3754, file: !459, line: 35, baseType: !462, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !652, file: !86, line: 1450, baseType: !283, size: 128, offset: 1344)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !652, file: !86, line: 1451, baseType: !1078, size: 64, offset: 1472)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !652, file: !86, line: 1452, baseType: !1657, size: 64, offset: 1536)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !652, file: !86, line: 1453, baseType: !3761, size: 64, offset: 1600)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !86, line: 1453, flags: DIFlagFwdDecl)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !652, file: !86, line: 1454, baseType: !691, size: 128, offset: 1664)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !652, file: !86, line: 1455, baseType: !7, size: 32, offset: 1792)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !652, file: !86, line: 1456, baseType: !3766, size: 2432, offset: 1856)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !80, line: 518, size: 2432, elements: !3767)
!3767 = !{!3768, !3769, !3770, !3772, !3804}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3766, file: !80, line: 519, baseType: !7, size: 32)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3766, file: !80, line: 520, baseType: !881, size: 256, offset: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3766, file: !80, line: 521, baseType: !3771, size: 192, offset: 320)
!3771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 192, elements: !338)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3766, file: !80, line: 522, baseType: !3773, size: 1728, offset: 512)
!3773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3774, size: 1728, elements: !338)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !80, line: 222, size: 576, elements: !3775)
!3775 = !{!3776, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3774, file: !80, line: 223, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !80, line: 443, size: 256, elements: !3779)
!3779 = !{!3780, !3781, !3794, !3795}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3778, file: !80, line: 444, baseType: !215, size: 32)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3778, file: !80, line: 445, baseType: !3782, size: 64, offset: 64)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3784)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !80, line: 310, size: 512, elements: !3785)
!3785 = !{!3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3784, file: !80, line: 311, baseType: !751, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3784, file: !80, line: 312, baseType: !751, size: 64, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3784, file: !80, line: 313, baseType: !751, size: 64, offset: 128)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3784, file: !80, line: 314, baseType: !751, size: 64, offset: 192)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3784, file: !80, line: 315, baseType: !3578, size: 64, offset: 256)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3784, file: !80, line: 316, baseType: !3578, size: 64, offset: 320)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3784, file: !80, line: 317, baseType: !3578, size: 64, offset: 384)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3784, file: !80, line: 318, baseType: !3650, size: 64, offset: 448)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3778, file: !80, line: 446, baseType: !197, size: 64, offset: 128)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3778, file: !80, line: 447, baseType: !3777, size: 64, offset: 192)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3774, file: !80, line: 224, baseType: !215, size: 32, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3774, file: !80, line: 226, baseType: !283, size: 128, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3774, file: !80, line: 227, baseType: !202, size: 64, offset: 256)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3774, file: !80, line: 228, baseType: !7, size: 32, offset: 320)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3774, file: !80, line: 229, baseType: !7, size: 32, offset: 352)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3774, file: !80, line: 230, baseType: !3614, size: 64, offset: 384)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3774, file: !80, line: 231, baseType: !3614, size: 64, offset: 448)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3774, file: !80, line: 232, baseType: !203, size: 64, offset: 512)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3766, file: !80, line: 523, baseType: !3805, size: 192, offset: 2240)
!3805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3782, size: 192, elements: !338)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !652, file: !86, line: 1458, baseType: !3807, size: 2112, offset: 4288)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !86, line: 1410, size: 2112, elements: !3808)
!3808 = !{!3809, !3810, !3811}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3807, file: !86, line: 1411, baseType: !215, size: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !3807, file: !86, line: 1412, baseType: !1283, size: 128, offset: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3807, file: !86, line: 1413, baseType: !3812, size: 1920, offset: 192)
!3812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3813, size: 1920, elements: !338)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3814, line: 12, size: 640, elements: !3815)
!3814 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!3815 = !{!3816, !3824, !3825, !3830, !3831}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3813, file: !3814, line: 13, baseType: !3817, size: 320)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3818, line: 17, size: 320, elements: !3819)
!3818 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!3819 = !{!3820, !3821, !3822, !3823}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3817, file: !3818, line: 18, baseType: !215, size: 32)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3817, file: !3818, line: 19, baseType: !215, size: 32, offset: 32)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3817, file: !3818, line: 20, baseType: !1283, size: 128, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3817, file: !3818, line: 22, baseType: !426, size: 128, align: 64, offset: 192)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3813, file: !3814, line: 14, baseType: !1069, size: 64, offset: 320)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3813, file: !3814, line: 15, baseType: !3826, size: 64, offset: 384)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3827, line: 16, size: 64, elements: !3828)
!3827 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3828 = !{!3829}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3826, file: !3827, line: 17, baseType: !2267, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3813, file: !3814, line: 16, baseType: !1283, size: 128, offset: 448)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3813, file: !3814, line: 17, baseType: !861, size: 32, offset: 576)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !652, file: !86, line: 1465, baseType: !203, size: 64, offset: 6400)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !652, file: !86, line: 1468, baseType: !219, size: 32, offset: 6464)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !652, file: !86, line: 1470, baseType: !591, size: 64, offset: 6528)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !652, file: !86, line: 1471, baseType: !591, size: 64, offset: 6592)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !652, file: !86, line: 1473, baseType: !220, size: 32, offset: 6656)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !652, file: !86, line: 1474, baseType: !3838, size: 64, offset: 6720)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !86, line: 603, flags: DIFlagFwdDecl)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !652, file: !86, line: 1477, baseType: !1171, size: 256, offset: 6784)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !652, file: !86, line: 1478, baseType: !3842, size: 128, offset: 7040)
!3842 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3843, line: 18, baseType: !3844)
!3843 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3843, line: 16, size: 128, elements: !3845)
!3845 = !{!3846}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3844, file: !3843, line: 17, baseType: !3847, size: 128)
!3847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1095, size: 128, elements: !1803)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !652, file: !86, line: 1480, baseType: !7, size: 32, offset: 7168)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !652, file: !86, line: 1481, baseType: !1304, size: 32, offset: 7200)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !652, file: !86, line: 1487, baseType: !788, size: 192, offset: 7232)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !652, file: !86, line: 1493, baseType: !269, size: 64, offset: 7424)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !652, file: !86, line: 1495, baseType: !3853, size: 64, offset: 7488)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3855)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !441, line: 135, size: 1024, align: 512, elements: !3856)
!3856 = !{!3857, !3861, !3862, !3869, !3875, !3879, !3883, !3887, !3888, !3892, !3896, !3901, !3905}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3855, file: !441, line: 136, baseType: !3858, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!215, !443, !7}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3855, file: !441, line: 137, baseType: !3858, size: 64, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3855, file: !441, line: 138, baseType: !3863, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!215, !3866, !3868}
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3855, file: !441, line: 139, baseType: !3870, size: 64, offset: 192)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!215, !3866, !7, !269, !3873}
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3855, file: !441, line: 141, baseType: !3876, size: 64, offset: 256)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!215, !3866}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3855, file: !441, line: 142, baseType: !3880, size: 64, offset: 320)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!215, !443}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3855, file: !441, line: 143, baseType: !3884, size: 64, offset: 384)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{null, !443}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3855, file: !441, line: 144, baseType: !3884, size: 64, offset: 448)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3855, file: !441, line: 145, baseType: !3889, size: 64, offset: 512)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{null, !443, !483}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3855, file: !441, line: 146, baseType: !3893, size: 64, offset: 576)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!337, !443, !337, !215}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3855, file: !441, line: 147, baseType: !3897, size: 64, offset: 640)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!439, !3900}
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3855, file: !441, line: 148, baseType: !3902, size: 64, offset: 704)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!215, !601, !272}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3855, file: !441, line: 149, baseType: !3906, size: 64, offset: 768)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!443, !443, !3909}
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !652, file: !86, line: 1500, baseType: !215, size: 32, offset: 7552)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !652, file: !86, line: 1502, baseType: !3913, size: 448, offset: 7616)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3562, line: 60, size: 448, elements: !3914)
!3914 = !{!3915, !3920, !3921, !3922, !3923, !3924, !3925}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3913, file: !3562, line: 61, baseType: !3916, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!202, !3919, !3560}
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3913, file: !3562, line: 63, baseType: !3916, size: 64, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3913, file: !3562, line: 66, baseType: !204, size: 64, offset: 128)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3913, file: !3562, line: 67, baseType: !215, size: 32, offset: 192)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3913, file: !3562, line: 68, baseType: !7, size: 32, offset: 224)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3913, file: !3562, line: 71, baseType: !283, size: 128, offset: 256)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3913, file: !3562, line: 77, baseType: !3926, size: 64, offset: 384)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !652, file: !86, line: 1505, baseType: !792, size: 64, offset: 8064)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !652, file: !86, line: 1508, baseType: !792, size: 64, offset: 8128)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !652, file: !86, line: 1511, baseType: !215, size: 32, offset: 8192)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !652, file: !86, line: 1514, baseType: !1970, size: 32, offset: 8224)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !652, file: !86, line: 1517, baseType: !1159, size: 64, offset: 8256)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !652, file: !86, line: 1518, baseType: !687, size: 64, offset: 8320)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !652, file: !86, line: 1525, baseType: !2748, size: 64, offset: 8384)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !652, file: !86, line: 1532, baseType: !3935, size: 64, offset: 8448)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3936, line: 52, size: 64, elements: !3937)
!3936 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3937 = !{!3938}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3935, file: !3936, line: 53, baseType: !3939, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3936, line: 40, size: 256, elements: !3941)
!3941 = !{!3942, !3943, !3948}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3940, file: !3936, line: 42, baseType: !296)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3940, file: !3936, line: 44, baseType: !3944, size: 192)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3936, line: 28, size: 192, elements: !3945)
!3945 = !{!3946, !3947}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3944, file: !3936, line: 29, baseType: !283, size: 128)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3944, file: !3936, line: 31, baseType: !204, size: 64, offset: 128)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3940, file: !3936, line: 49, baseType: !204, size: 64, offset: 192)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !652, file: !86, line: 1533, baseType: !3935, size: 64, offset: 8512)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !652, file: !86, line: 1534, baseType: !426, size: 128, align: 64, offset: 8576)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !652, file: !86, line: 1535, baseType: !1147, size: 256, offset: 8704)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !652, file: !86, line: 1537, baseType: !788, size: 192, offset: 8960)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !652, file: !86, line: 1542, baseType: !215, size: 32, offset: 9152)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !652, file: !86, line: 1545, baseType: !296, offset: 9184)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !652, file: !86, line: 1546, baseType: !283, size: 128, offset: 9216)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !652, file: !86, line: 1548, baseType: !296, offset: 9344)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !652, file: !86, line: 1549, baseType: !283, size: 128, offset: 9344)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !484, file: !86, line: 624, baseType: !848, size: 64, offset: 256)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !484, file: !86, line: 631, baseType: !202, size: 64, offset: 320)
!3960 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !86, line: 639, baseType: !3961, size: 32, offset: 384)
!3961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !86, line: 639, size: 32, elements: !3962)
!3962 = !{!3963, !3964}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3961, file: !86, line: 640, baseType: !1627, size: 32)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3961, file: !86, line: 641, baseType: !7, size: 32)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !484, file: !86, line: 643, baseType: !565, size: 32, offset: 416)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !484, file: !86, line: 644, baseType: !583, size: 64, offset: 448)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !484, file: !86, line: 645, baseType: !587, size: 128, offset: 512)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !484, file: !86, line: 646, baseType: !587, size: 128, offset: 640)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !484, file: !86, line: 647, baseType: !587, size: 128, offset: 768)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !484, file: !86, line: 648, baseType: !296, offset: 896)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !484, file: !86, line: 649, baseType: !378, size: 16, offset: 896)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !484, file: !86, line: 650, baseType: !1094, size: 8, offset: 912)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !484, file: !86, line: 651, baseType: !1094, size: 8, offset: 920)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !484, file: !86, line: 652, baseType: !3734, size: 64, offset: 960)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !484, file: !86, line: 659, baseType: !202, size: 64, offset: 1024)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !484, file: !86, line: 660, baseType: !881, size: 256, offset: 1088)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !484, file: !86, line: 662, baseType: !202, size: 64, offset: 1344)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !484, file: !86, line: 663, baseType: !202, size: 64, offset: 1408)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !484, file: !86, line: 665, baseType: !691, size: 128, offset: 1472)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !484, file: !86, line: 666, baseType: !283, size: 128, offset: 1600)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !484, file: !86, line: 675, baseType: !283, size: 128, offset: 1728)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !484, file: !86, line: 676, baseType: !283, size: 128, offset: 1856)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !484, file: !86, line: 677, baseType: !283, size: 128, offset: 1984)
!3984 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !86, line: 678, baseType: !3985, size: 128, offset: 2112)
!3985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !86, line: 678, size: 128, elements: !3986)
!3986 = !{!3987, !3988}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3985, file: !86, line: 679, baseType: !687, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3985, file: !86, line: 680, baseType: !426, size: 128, align: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !484, file: !86, line: 682, baseType: !794, size: 64, offset: 2240)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !484, file: !86, line: 683, baseType: !794, size: 64, offset: 2304)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !484, file: !86, line: 684, baseType: !861, size: 32, offset: 2368)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !484, file: !86, line: 685, baseType: !861, size: 32, offset: 2400)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !484, file: !86, line: 686, baseType: !861, size: 32, offset: 2432)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !484, file: !86, line: 688, baseType: !861, size: 32, offset: 2464)
!3995 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !86, line: 690, baseType: !3996, size: 64, offset: 2496)
!3996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !86, line: 690, size: 64, elements: !3997)
!3997 = !{!3998, !4220}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3996, file: !86, line: 691, baseType: !3999, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4001)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !86, line: 1822, size: 2048, elements: !4002)
!4002 = !{!4003, !4004, !4008, !4012, !4016, !4017, !4018, !4022, !4035, !4036, !4044, !4048, !4049, !4053, !4054, !4058, !4063, !4064, !4068, !4072, !4180, !4184, !4185, !4189, !4190, !4194, !4198, !4203, !4207, !4211, !4215, !4219}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4001, file: !86, line: 1823, baseType: !197, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4001, file: !86, line: 1824, baseType: !4005, size: 64, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!583, !413, !583, !215}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4001, file: !86, line: 1825, baseType: !4009, size: 64, offset: 128)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!368, !413, !337, !383, !810}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4001, file: !86, line: 1826, baseType: !4013, size: 64, offset: 192)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!368, !413, !269, !383, !810}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4001, file: !86, line: 1827, baseType: !958, size: 64, offset: 256)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4001, file: !86, line: 1828, baseType: !958, size: 64, offset: 320)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4001, file: !86, line: 1829, baseType: !4019, size: 64, offset: 384)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!215, !961, !272}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !4001, file: !86, line: 1830, baseType: !4023, size: 64, offset: 448)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!215, !413, !4026}
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !86, line: 1776, size: 128, elements: !4028)
!4028 = !{!4029, !4034}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4027, file: !86, line: 1777, baseType: !4030, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !86, line: 1773, baseType: !4031)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!215, !4026, !269, !215, !583, !207, !7}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4027, file: !86, line: 1778, baseType: !583, size: 64, offset: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4001, file: !86, line: 1831, baseType: !4023, size: 64, offset: 512)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4001, file: !86, line: 1832, baseType: !4037, size: 64, offset: 576)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!4040, !413, !4042}
!4040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !4041, line: 52, baseType: !7)
!4041 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !671, line: 27, flags: DIFlagFwdDecl)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4001, file: !86, line: 1833, baseType: !4045, size: 64, offset: 640)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!204, !413, !7, !202}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4001, file: !86, line: 1834, baseType: !4045, size: 64, offset: 704)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4001, file: !86, line: 1835, baseType: !4050, size: 64, offset: 768)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!215, !413, !2041}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4001, file: !86, line: 1836, baseType: !202, size: 64, offset: 832)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4001, file: !86, line: 1837, baseType: !4055, size: 64, offset: 896)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!215, !483, !413}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4001, file: !86, line: 1838, baseType: !4059, size: 64, offset: 960)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!215, !413, !4062}
!4062 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !86, line: 1007, baseType: !203)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4001, file: !86, line: 1839, baseType: !4055, size: 64, offset: 1024)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4001, file: !86, line: 1840, baseType: !4065, size: 64, offset: 1088)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!215, !413, !583, !583, !215}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4001, file: !86, line: 1841, baseType: !4069, size: 64, offset: 1152)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!215, !215, !413, !215}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4001, file: !86, line: 1842, baseType: !4073, size: 64, offset: 1216)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!215, !413, !215, !4076}
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !86, line: 1062, size: 1664, elements: !4078)
!4078 = !{!4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4110, !4111, !4112, !4125, !4156}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !4077, file: !86, line: 1063, baseType: !4076, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !4077, file: !86, line: 1064, baseType: !283, size: 128, offset: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !4077, file: !86, line: 1065, baseType: !691, size: 128, offset: 192)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !4077, file: !86, line: 1066, baseType: !283, size: 128, offset: 320)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !4077, file: !86, line: 1069, baseType: !283, size: 128, offset: 448)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !4077, file: !86, line: 1072, baseType: !4062, size: 64, offset: 576)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !4077, file: !86, line: 1073, baseType: !7, size: 32, offset: 640)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !4077, file: !86, line: 1074, baseType: !481, size: 8, offset: 672)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !4077, file: !86, line: 1075, baseType: !7, size: 32, offset: 704)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !4077, file: !86, line: 1076, baseType: !215, size: 32, offset: 736)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !4077, file: !86, line: 1077, baseType: !1283, size: 128, offset: 768)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !4077, file: !86, line: 1078, baseType: !413, size: 64, offset: 896)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !4077, file: !86, line: 1079, baseType: !583, size: 64, offset: 960)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !4077, file: !86, line: 1080, baseType: !583, size: 64, offset: 1024)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !4077, file: !86, line: 1082, baseType: !4094, size: 64, offset: 1088)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !86, line: 1314, size: 320, elements: !4096)
!4096 = !{!4097, !4105, !4106, !4107, !4108, !4109}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4095, file: !86, line: 1315, baseType: !4098)
!4098 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !4099, line: 20, baseType: !4100)
!4099 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4099, line: 11, elements: !4101)
!4101 = !{!4102}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !4100, file: !4099, line: 12, baseType: !4103)
!4103 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !308, line: 33, baseType: !4104)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !308, line: 31, elements: !310)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4095, file: !86, line: 1316, baseType: !215, size: 32)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4095, file: !86, line: 1317, baseType: !215, size: 32, offset: 32)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4095, file: !86, line: 1318, baseType: !4094, size: 64, offset: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4095, file: !86, line: 1319, baseType: !413, size: 64, offset: 128)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4095, file: !86, line: 1320, baseType: !426, size: 128, align: 64, offset: 192)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !4077, file: !86, line: 1084, baseType: !202, size: 64, offset: 1152)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !4077, file: !86, line: 1085, baseType: !202, size: 64, offset: 1216)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !4077, file: !86, line: 1087, baseType: !4113, size: 64, offset: 1280)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4115)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !86, line: 1011, size: 128, elements: !4116)
!4116 = !{!4117, !4121}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !4115, file: !86, line: 1012, baseType: !4118, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{null, !4076, !4076}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !4115, file: !86, line: 1013, baseType: !4122, size: 64, offset: 64)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{null, !4076}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !4077, file: !86, line: 1088, baseType: !4126, size: 64, offset: 1344)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4128)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !86, line: 1016, size: 512, elements: !4129)
!4129 = !{!4130, !4134, !4138, !4139, !4143, !4147, !4151, !4155}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !4128, file: !86, line: 1017, baseType: !4131, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!4062, !4062}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !4128, file: !86, line: 1018, baseType: !4135, size: 64, offset: 64)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{null, !4062}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !4128, file: !86, line: 1019, baseType: !4122, size: 64, offset: 128)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !4128, file: !86, line: 1020, baseType: !4140, size: 64, offset: 192)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!215, !4076, !215}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !4128, file: !86, line: 1021, baseType: !4144, size: 64, offset: 256)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!272, !4076}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !4128, file: !86, line: 1022, baseType: !4148, size: 64, offset: 320)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!215, !4076, !215, !286}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !4128, file: !86, line: 1023, baseType: !4152, size: 64, offset: 384)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{null, !4076, !935}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !4128, file: !86, line: 1024, baseType: !4144, size: 64, offset: 448)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !4077, file: !86, line: 1097, baseType: !4157, size: 256, offset: 1408)
!4157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4077, file: !86, line: 1089, size: 256, elements: !4158)
!4158 = !{!4159, !4168, !4174}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !4157, file: !86, line: 1090, baseType: !4160, size: 256)
!4160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !4161, line: 10, size: 256, elements: !4162)
!4161 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!4162 = !{!4163, !4164, !4167}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4160, file: !4161, line: 11, baseType: !219, size: 32)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4160, file: !4161, line: 12, baseType: !4165, size: 64, offset: 64)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !4161, line: 5, flags: DIFlagFwdDecl)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4160, file: !4161, line: 13, baseType: !283, size: 128, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !4157, file: !86, line: 1091, baseType: !4169, size: 64)
!4169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !4161, line: 17, size: 64, elements: !4170)
!4170 = !{!4171}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4169, file: !4161, line: 18, baseType: !4172, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !4161, line: 16, flags: DIFlagFwdDecl)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !4157, file: !86, line: 1096, baseType: !4175, size: 192)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4157, file: !86, line: 1092, size: 192, elements: !4176)
!4176 = !{!4177, !4178, !4179}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4175, file: !86, line: 1093, baseType: !283, size: 128)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4175, file: !86, line: 1094, baseType: !215, size: 32, offset: 128)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !4175, file: !86, line: 1095, baseType: !7, size: 32, offset: 160)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !4001, file: !86, line: 1843, baseType: !4181, size: 64, offset: 1280)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!368, !413, !835, !215, !383, !810, !215}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4001, file: !86, line: 1844, baseType: !2161, size: 64, offset: 1344)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4001, file: !86, line: 1845, baseType: !4186, size: 64, offset: 1408)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!215, !215}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4001, file: !86, line: 1846, baseType: !4073, size: 64, offset: 1472)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4001, file: !86, line: 1847, baseType: !4191, size: 64, offset: 1536)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!368, !3266, !413, !810, !383, !7}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4001, file: !86, line: 1848, baseType: !4195, size: 64, offset: 1600)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!368, !413, !810, !3266, !383, !7}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4001, file: !86, line: 1849, baseType: !4199, size: 64, offset: 1664)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!215, !413, !204, !4202, !935}
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4001, file: !86, line: 1850, baseType: !4204, size: 64, offset: 1728)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!204, !413, !215, !583, !583}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4001, file: !86, line: 1852, baseType: !4208, size: 64, offset: 1792)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{null, !776, !413}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4001, file: !86, line: 1856, baseType: !4212, size: 64, offset: 1856)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!368, !413, !583, !413, !583, !383, !7}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4001, file: !86, line: 1858, baseType: !4216, size: 64, offset: 1920)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!583, !413, !583, !413, !583, !583, !7}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4001, file: !86, line: 1861, baseType: !4065, size: 64, offset: 1984)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3996, file: !86, line: 692, baseType: !716, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !484, file: !86, line: 694, baseType: !4222, size: 64, offset: 2560)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !86, line: 1100, size: 384, elements: !4224)
!4224 = !{!4225, !4226, !4227, !4228}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !4223, file: !86, line: 1101, baseType: !296)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !4223, file: !86, line: 1102, baseType: !283, size: 128)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !4223, file: !86, line: 1103, baseType: !283, size: 128, offset: 128)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !4223, file: !86, line: 1104, baseType: !283, size: 128, offset: 256)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !484, file: !86, line: 695, baseType: !849, size: 1216, align: 64, offset: 2624)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !484, file: !86, line: 696, baseType: !283, size: 128, offset: 3840)
!4231 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !86, line: 697, baseType: !4232, size: 64, offset: 3968)
!4232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !86, line: 697, size: 64, elements: !4233)
!4233 = !{!4234, !4235, !4236, !4239, !4240}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4232, file: !86, line: 698, baseType: !3266, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !4232, file: !86, line: 699, baseType: !1078, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4232, file: !86, line: 700, baseType: !4237, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !86, line: 700, flags: DIFlagFwdDecl)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4232, file: !86, line: 701, baseType: !337, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4232, file: !86, line: 702, baseType: !7, size: 32)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !484, file: !86, line: 705, baseType: !220, size: 32, offset: 4032)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !484, file: !86, line: 708, baseType: !220, size: 32, offset: 4064)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !484, file: !86, line: 709, baseType: !3838, size: 64, offset: 4096)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !484, file: !86, line: 720, baseType: !203, size: 64, offset: 4160)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !444, file: !441, line: 98, baseType: !4246, size: 256, offset: 448)
!4246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !481, size: 256, elements: !1172)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !444, file: !441, line: 101, baseType: !4248, size: 32, offset: 704)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4249, line: 25, size: 32, elements: !4250)
!4249 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!4250 = !{!4251}
!4251 = !DIDerivedType(tag: DW_TAG_member, scope: !4248, file: !4249, line: 26, baseType: !4252, size: 32)
!4252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4248, file: !4249, line: 26, size: 32, elements: !4253)
!4253 = !{!4254}
!4254 = !DIDerivedType(tag: DW_TAG_member, scope: !4252, file: !4249, line: 30, baseType: !4255, size: 32)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4252, file: !4249, line: 30, size: 32, elements: !4256)
!4256 = !{!4257, !4258}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4255, file: !4249, line: 31, baseType: !296)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4255, file: !4249, line: 32, baseType: !215, size: 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !444, file: !441, line: 102, baseType: !3853, size: 64, offset: 768)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !444, file: !441, line: 103, baseType: !651, size: 64, offset: 832)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !444, file: !441, line: 104, baseType: !202, size: 64, offset: 896)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !444, file: !441, line: 105, baseType: !203, size: 64, offset: 960)
!4263 = !DIDerivedType(tag: DW_TAG_member, scope: !444, file: !441, line: 107, baseType: !4264, size: 128, offset: 1024)
!4264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !444, file: !441, line: 107, size: 128, elements: !4265)
!4265 = !{!4266, !4267}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4264, file: !441, line: 108, baseType: !283, size: 128)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4264, file: !441, line: 109, baseType: !4268, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !444, file: !441, line: 111, baseType: !283, size: 128, offset: 1152)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !444, file: !441, line: 112, baseType: !283, size: 128, offset: 1280)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !444, file: !441, line: 120, baseType: !4272, size: 128, offset: 1408)
!4272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !444, file: !441, line: 116, size: 128, elements: !4273)
!4273 = !{!4274, !4275, !4276}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4272, file: !441, line: 117, baseType: !691, size: 128)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4272, file: !441, line: 118, baseType: !458, size: 128)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4272, file: !441, line: 119, baseType: !426, size: 128, align: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !414, file: !86, line: 922, baseType: !483, size: 64, offset: 256)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !414, file: !86, line: 923, baseType: !3999, size: 64, offset: 320)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !414, file: !86, line: 929, baseType: !296, offset: 384)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !414, file: !86, line: 930, baseType: !85, size: 32, offset: 384)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !414, file: !86, line: 931, baseType: !792, size: 64, offset: 448)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !414, file: !86, line: 932, baseType: !7, size: 32, offset: 512)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !414, file: !86, line: 933, baseType: !1304, size: 32, offset: 544)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !414, file: !86, line: 934, baseType: !788, size: 192, offset: 576)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !414, file: !86, line: 935, baseType: !583, size: 64, offset: 768)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !414, file: !86, line: 936, baseType: !4287, size: 192, offset: 832)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !86, line: 885, size: 192, elements: !4288)
!4288 = !{!4289, !4290, !4291, !4292, !4293, !4294}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4287, file: !86, line: 886, baseType: !4098)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4287, file: !86, line: 887, baseType: !2514, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !4287, file: !86, line: 888, baseType: !94, size: 32, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4287, file: !86, line: 889, baseType: !489, size: 32, offset: 96)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !4287, file: !86, line: 889, baseType: !489, size: 32, offset: 128)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !4287, file: !86, line: 890, baseType: !215, size: 32, offset: 160)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !414, file: !86, line: 937, baseType: !2584, size: 64, offset: 1024)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !414, file: !86, line: 938, baseType: !4297, size: 256, offset: 1088)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !86, line: 896, size: 256, elements: !4298)
!4298 = !{!4299, !4300, !4301, !4302, !4303, !4304}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4297, file: !86, line: 897, baseType: !202, size: 64)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4297, file: !86, line: 898, baseType: !7, size: 32, offset: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4297, file: !86, line: 899, baseType: !7, size: 32, offset: 96)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4297, file: !86, line: 902, baseType: !7, size: 32, offset: 128)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4297, file: !86, line: 903, baseType: !7, size: 32, offset: 160)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4297, file: !86, line: 904, baseType: !583, size: 64, offset: 192)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !414, file: !86, line: 940, baseType: !207, size: 64, offset: 1344)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !414, file: !86, line: 945, baseType: !203, size: 64, offset: 1408)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !414, file: !86, line: 949, baseType: !283, size: 128, offset: 1472)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !414, file: !86, line: 950, baseType: !283, size: 128, offset: 1600)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !414, file: !86, line: 952, baseType: !848, size: 64, offset: 1728)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !414, file: !86, line: 953, baseType: !1970, size: 32, offset: 1792)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !414, file: !86, line: 954, baseType: !1970, size: 32, offset: 1824)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !404, file: !362, line: 174, baseType: !410, size: 64, offset: 320)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !404, file: !362, line: 176, baseType: !4314, size: 64, offset: 384)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!215, !413, !289, !403, !2041}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !392, file: !362, line: 90, baseType: !387, size: 64, offset: 192)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !392, file: !362, line: 91, baseType: !4319, size: 64, offset: 256)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !352, file: !279, line: 143, baseType: !4321, size: 64, offset: 256)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!4324, !289}
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4326)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !103, line: 39, size: 384, elements: !4327)
!4327 = !{!4328, !4329, !4333, !4337, !4343, !4347}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4326, file: !103, line: 40, baseType: !102, size: 32)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4326, file: !103, line: 41, baseType: !4330, size: 64, offset: 64)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!272}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4326, file: !103, line: 42, baseType: !4334, size: 64, offset: 128)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!203}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4326, file: !103, line: 43, baseType: !4338, size: 64, offset: 192)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!3295, !4341}
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !103, line: 19, flags: DIFlagFwdDecl)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4326, file: !103, line: 44, baseType: !4344, size: 64, offset: 256)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!3295}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4326, file: !103, line: 45, baseType: !522, size: 64, offset: 320)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !352, file: !279, line: 144, baseType: !4349, size: 64, offset: 320)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!3295, !289}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !352, file: !279, line: 145, baseType: !4353, size: 64, offset: 384)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{null, !289, !2858, !2859}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !278, file: !279, line: 70, baseType: !4357, size: 64, offset: 384)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !671, line: 123, size: 1024, elements: !4359)
!4359 = !{!4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4476, !4477, !4478, !4479, !4480}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4358, file: !671, line: 124, baseType: !861, size: 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4358, file: !671, line: 125, baseType: !861, size: 32, offset: 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4358, file: !671, line: 135, baseType: !4357, size: 64, offset: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4358, file: !671, line: 136, baseType: !269, size: 64, offset: 128)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4358, file: !671, line: 138, baseType: !874, size: 192, align: 64, offset: 192)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4358, file: !671, line: 140, baseType: !3295, size: 64, offset: 384)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4358, file: !671, line: 141, baseType: !7, size: 32, offset: 448)
!4367 = !DIDerivedType(tag: DW_TAG_member, scope: !4358, file: !671, line: 142, baseType: !4368, size: 256, offset: 512)
!4368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4358, file: !671, line: 142, size: 256, elements: !4369)
!4369 = !{!4370, !4416, !4420}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4368, file: !671, line: 143, baseType: !4371, size: 192)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !671, line: 91, size: 192, elements: !4372)
!4372 = !{!4373, !4374, !4375}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4371, file: !671, line: 92, baseType: !202, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4371, file: !671, line: 94, baseType: !870, size: 64, offset: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4371, file: !671, line: 100, baseType: !4376, size: 64, offset: 128)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !671, line: 180, size: 704, elements: !4378)
!4378 = !{!4379, !4380, !4381, !4388, !4389, !4390, !4414, !4415}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4377, file: !671, line: 182, baseType: !4357, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4377, file: !671, line: 183, baseType: !7, size: 32, offset: 64)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !4377, file: !671, line: 186, baseType: !4382, size: 192, offset: 128)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4383, line: 19, size: 192, elements: !4384)
!4383 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!4384 = !{!4385, !4386, !4387}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4382, file: !4383, line: 20, baseType: !853, size: 128)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4382, file: !4383, line: 21, baseType: !7, size: 32, offset: 128)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4382, file: !4383, line: 22, baseType: !7, size: 32, offset: 160)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !4377, file: !671, line: 187, baseType: !219, size: 32, offset: 320)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !4377, file: !671, line: 188, baseType: !219, size: 32, offset: 352)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !4377, file: !671, line: 189, baseType: !4391, size: 64, offset: 384)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !671, line: 168, size: 320, elements: !4393)
!4393 = !{!4394, !4398, !4402, !4406, !4410}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4392, file: !671, line: 169, baseType: !4395, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!215, !776, !4376}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !4392, file: !671, line: 171, baseType: !4399, size: 64, offset: 64)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{!215, !4357, !269, !377}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !4392, file: !671, line: 173, baseType: !4403, size: 64, offset: 128)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!215, !4357}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !4392, file: !671, line: 174, baseType: !4407, size: 64, offset: 192)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!215, !4357, !4357, !269}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4392, file: !671, line: 176, baseType: !4411, size: 64, offset: 256)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!215, !776, !4357, !4376}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !4377, file: !671, line: 192, baseType: !283, size: 128, offset: 448)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !4377, file: !671, line: 194, baseType: !1283, size: 128, offset: 576)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4368, file: !671, line: 144, baseType: !4417, size: 64)
!4417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !671, line: 103, size: 64, elements: !4418)
!4418 = !{!4419}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4417, file: !671, line: 104, baseType: !4357, size: 64)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4368, file: !671, line: 145, baseType: !4421, size: 256)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !671, line: 107, size: 256, elements: !4422)
!4422 = !{!4423, !4471, !4474, !4475}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4421, file: !671, line: 108, baseType: !4424, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4426)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !671, line: 217, size: 768, elements: !4427)
!4427 = !{!4428, !4448, !4452, !4453, !4454, !4455, !4456, !4460, !4461, !4462, !4463, !4467}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4426, file: !671, line: 222, baseType: !4429, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!215, !4432}
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !671, line: 197, size: 1088, elements: !4434)
!4434 = !{!4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4433, file: !671, line: 199, baseType: !4357, size: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4433, file: !671, line: 200, baseType: !413, size: 64, offset: 64)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4433, file: !671, line: 201, baseType: !776, size: 64, offset: 128)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4433, file: !671, line: 202, baseType: !203, size: 64, offset: 192)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4433, file: !671, line: 205, baseType: !788, size: 192, offset: 256)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4433, file: !671, line: 206, baseType: !788, size: 192, offset: 448)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4433, file: !671, line: 207, baseType: !215, size: 32, offset: 640)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4433, file: !671, line: 208, baseType: !283, size: 128, offset: 704)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4433, file: !671, line: 209, baseType: !337, size: 64, offset: 832)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4433, file: !671, line: 211, baseType: !383, size: 64, offset: 896)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4433, file: !671, line: 212, baseType: !272, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4433, file: !671, line: 213, baseType: !272, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4433, file: !671, line: 214, baseType: !2069, size: 64, offset: 1024)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4426, file: !671, line: 223, baseType: !4449, size: 64, offset: 64)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{null, !4432}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4426, file: !671, line: 236, baseType: !820, size: 64, offset: 128)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4426, file: !671, line: 238, baseType: !807, size: 64, offset: 192)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4426, file: !671, line: 239, baseType: !816, size: 64, offset: 256)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4426, file: !671, line: 240, baseType: !812, size: 64, offset: 320)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4426, file: !671, line: 242, baseType: !4457, size: 64, offset: 384)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!368, !4432, !337, !383, !583}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4426, file: !671, line: 252, baseType: !383, size: 64, offset: 448)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4426, file: !671, line: 259, baseType: !272, size: 8, offset: 512)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4426, file: !671, line: 260, baseType: !4457, size: 64, offset: 576)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4426, file: !671, line: 263, baseType: !4464, size: 64, offset: 640)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!4040, !4432, !4042}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4426, file: !671, line: 266, baseType: !4468, size: 64, offset: 704)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!215, !4432, !2041}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4421, file: !671, line: 109, baseType: !4472, size: 64, offset: 64)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !671, line: 31, flags: DIFlagFwdDecl)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4421, file: !671, line: 110, baseType: !583, size: 64, offset: 128)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4421, file: !671, line: 111, baseType: !4357, size: 64, offset: 192)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4358, file: !671, line: 148, baseType: !203, size: 64, offset: 768)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4358, file: !671, line: 154, baseType: !207, size: 64, offset: 832)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4358, file: !671, line: 156, baseType: !378, size: 16, offset: 896)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4358, file: !671, line: 157, baseType: !377, size: 16, offset: 912)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4358, file: !671, line: 158, baseType: !4481, size: 64, offset: 960)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !671, line: 32, flags: DIFlagFwdDecl)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !278, file: !279, line: 71, baseType: !1666, size: 32, offset: 448)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !278, file: !279, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !278, file: !279, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !278, file: !279, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !278, file: !279, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !278, file: !279, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !275, file: !115, line: 463, baseType: !1734, size: 64, offset: 512)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !275, file: !115, line: 465, baseType: !4491, size: 64, offset: 576)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !115, line: 36, flags: DIFlagFwdDecl)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !275, file: !115, line: 467, baseType: !269, size: 64, offset: 640)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !275, file: !115, line: 468, baseType: !4495, size: 64, offset: 704)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4497)
!4497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !115, line: 87, size: 384, elements: !4498)
!4498 = !{!4499, !4500, !4501, !4505, !4509, !4513}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4497, file: !115, line: 88, baseType: !269, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4497, file: !115, line: 89, baseType: !389, size: 64, offset: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4497, file: !115, line: 90, baseType: !4502, size: 64, offset: 128)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!215, !1734, !332}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4497, file: !115, line: 91, baseType: !4506, size: 64, offset: 192)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!337, !1734, !1372, !2858, !2859}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4497, file: !115, line: 93, baseType: !4510, size: 64, offset: 256)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{null, !1734}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4497, file: !115, line: 95, baseType: !4514, size: 64, offset: 320)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4516)
!4516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !44, line: 278, size: 1472, elements: !4517)
!4517 = !{!4518, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4516, file: !44, line: 279, baseType: !4519, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!215, !1734}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4516, file: !44, line: 280, baseType: !4510, size: 64, offset: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4516, file: !44, line: 281, baseType: !4519, size: 64, offset: 128)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4516, file: !44, line: 282, baseType: !4519, size: 64, offset: 192)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4516, file: !44, line: 283, baseType: !4519, size: 64, offset: 256)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4516, file: !44, line: 284, baseType: !4519, size: 64, offset: 320)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4516, file: !44, line: 285, baseType: !4519, size: 64, offset: 384)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4516, file: !44, line: 286, baseType: !4519, size: 64, offset: 448)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4516, file: !44, line: 287, baseType: !4519, size: 64, offset: 512)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4516, file: !44, line: 288, baseType: !4519, size: 64, offset: 576)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4516, file: !44, line: 289, baseType: !4519, size: 64, offset: 640)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4516, file: !44, line: 290, baseType: !4519, size: 64, offset: 704)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4516, file: !44, line: 291, baseType: !4519, size: 64, offset: 768)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4516, file: !44, line: 292, baseType: !4519, size: 64, offset: 832)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4516, file: !44, line: 293, baseType: !4519, size: 64, offset: 896)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4516, file: !44, line: 294, baseType: !4519, size: 64, offset: 960)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4516, file: !44, line: 295, baseType: !4519, size: 64, offset: 1024)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4516, file: !44, line: 296, baseType: !4519, size: 64, offset: 1088)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4516, file: !44, line: 297, baseType: !4519, size: 64, offset: 1152)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4516, file: !44, line: 298, baseType: !4519, size: 64, offset: 1216)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4516, file: !44, line: 299, baseType: !4519, size: 64, offset: 1280)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4516, file: !44, line: 300, baseType: !4519, size: 64, offset: 1344)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4516, file: !44, line: 301, baseType: !4519, size: 64, offset: 1408)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !275, file: !115, line: 470, baseType: !4545, size: 64, offset: 768)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4547, line: 82, size: 1408, elements: !4548)
!4547 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!4548 = !{!4549, !4550, !4551, !4552, !4553, !4554, !4555, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4630, !4633, !4634}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4546, file: !4547, line: 83, baseType: !269, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4546, file: !4547, line: 84, baseType: !269, size: 64, offset: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !4546, file: !4547, line: 85, baseType: !1734, size: 64, offset: 128)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4546, file: !4547, line: 86, baseType: !389, size: 64, offset: 192)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4546, file: !4547, line: 87, baseType: !389, size: 64, offset: 256)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4546, file: !4547, line: 88, baseType: !389, size: 64, offset: 320)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4546, file: !4547, line: 90, baseType: !4556, size: 64, offset: 384)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{!215, !1734, !4559}
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !109, line: 95, size: 1152, elements: !4561)
!4561 = !{!4562, !4563, !4564, !4565, !4566, !4567, !4568, !4581, !4594, !4595, !4596, !4597, !4598, !4606, !4607, !4608, !4609, !4610, !4611}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4560, file: !109, line: 96, baseType: !269, size: 64)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4560, file: !109, line: 97, baseType: !4545, size: 64, offset: 64)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4560, file: !109, line: 99, baseType: !197, size: 64, offset: 128)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4560, file: !109, line: 100, baseType: !269, size: 64, offset: 192)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4560, file: !109, line: 102, baseType: !272, size: 8, offset: 256)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4560, file: !109, line: 103, baseType: !108, size: 32, offset: 288)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4560, file: !109, line: 105, baseType: !4569, size: 64, offset: 320)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4571)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4572, line: 262, size: 1600, elements: !4573)
!4572 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!4573 = !{!4574, !4575, !4576, !4580}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4571, file: !4572, line: 263, baseType: !1171, size: 256)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4571, file: !4572, line: 264, baseType: !1171, size: 256, offset: 256)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4571, file: !4572, line: 265, baseType: !4577, size: 1024, offset: 512)
!4577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 1024, elements: !4578)
!4578 = !{!4579}
!4579 = !DISubrange(count: 128)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4571, file: !4572, line: 266, baseType: !3295, size: 64, offset: 1536)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4560, file: !109, line: 106, baseType: !4582, size: 64, offset: 384)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4584)
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4572, line: 210, size: 256, elements: !4585)
!4585 = !{!4586, !4590, !4592, !4593}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4584, file: !4572, line: 211, baseType: !4587, size: 72)
!4587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1095, size: 72, elements: !4588)
!4588 = !{!4589}
!4589 = !DISubrange(count: 9)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4584, file: !4572, line: 212, baseType: !4591, size: 64, offset: 128)
!4591 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4572, line: 14, baseType: !202)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4584, file: !4572, line: 213, baseType: !220, size: 32, offset: 192)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4584, file: !4572, line: 214, baseType: !220, size: 32, offset: 224)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4560, file: !109, line: 108, baseType: !4519, size: 64, offset: 448)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4560, file: !109, line: 109, baseType: !4510, size: 64, offset: 512)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4560, file: !109, line: 110, baseType: !4519, size: 64, offset: 576)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4560, file: !109, line: 111, baseType: !4510, size: 64, offset: 640)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4560, file: !109, line: 112, baseType: !4599, size: 64, offset: 704)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!215, !1734, !4602}
!4602 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !44, line: 52, baseType: !4603)
!4603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !44, line: 50, size: 32, elements: !4604)
!4604 = !{!4605}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4603, file: !44, line: 51, baseType: !215, size: 32)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4560, file: !109, line: 113, baseType: !4519, size: 64, offset: 768)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4560, file: !109, line: 114, baseType: !389, size: 64, offset: 832)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4560, file: !109, line: 115, baseType: !389, size: 64, offset: 896)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4560, file: !109, line: 117, baseType: !4514, size: 64, offset: 960)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4560, file: !109, line: 118, baseType: !4510, size: 64, offset: 1024)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4560, file: !109, line: 120, baseType: !4612, size: 64, offset: 1088)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !109, line: 120, flags: DIFlagFwdDecl)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4546, file: !4547, line: 91, baseType: !4502, size: 64, offset: 448)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4546, file: !4547, line: 92, baseType: !4519, size: 64, offset: 512)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4546, file: !4547, line: 93, baseType: !4510, size: 64, offset: 576)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4546, file: !4547, line: 94, baseType: !4519, size: 64, offset: 640)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4546, file: !4547, line: 95, baseType: !4510, size: 64, offset: 704)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4546, file: !4547, line: 97, baseType: !4519, size: 64, offset: 768)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4546, file: !4547, line: 98, baseType: !4519, size: 64, offset: 832)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4546, file: !4547, line: 100, baseType: !4599, size: 64, offset: 896)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4546, file: !4547, line: 101, baseType: !4519, size: 64, offset: 960)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4546, file: !4547, line: 103, baseType: !4519, size: 64, offset: 1024)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4546, file: !4547, line: 105, baseType: !4519, size: 64, offset: 1088)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4546, file: !4547, line: 107, baseType: !4514, size: 64, offset: 1152)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4546, file: !4547, line: 109, baseType: !4627, size: 64, offset: 1216)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4629)
!4629 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4547, line: 109, flags: DIFlagFwdDecl)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4546, file: !4547, line: 111, baseType: !4631, size: 64, offset: 1280)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !4547, line: 111, flags: DIFlagFwdDecl)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !4546, file: !4547, line: 112, baseType: !697, offset: 1344)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4546, file: !4547, line: 114, baseType: !272, size: 8, offset: 1344)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !275, file: !115, line: 471, baseType: !4559, size: 64, offset: 832)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !275, file: !115, line: 473, baseType: !203, size: 64, offset: 896)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !275, file: !115, line: 475, baseType: !203, size: 64, offset: 960)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !275, file: !115, line: 480, baseType: !788, size: 192, offset: 1024)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !275, file: !115, line: 484, baseType: !4640, size: 576, offset: 1216)
!4640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !115, line: 361, size: 576, elements: !4641)
!4641 = !{!4642, !4643, !4644, !4645, !4646, !4647}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4640, file: !115, line: 362, baseType: !283, size: 128)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4640, file: !115, line: 363, baseType: !283, size: 128, offset: 128)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !4640, file: !115, line: 364, baseType: !283, size: 128, offset: 256)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !4640, file: !115, line: 365, baseType: !283, size: 128, offset: 384)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !4640, file: !115, line: 366, baseType: !272, size: 8, offset: 512)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4640, file: !115, line: 367, baseType: !114, size: 32, offset: 544)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !275, file: !115, line: 485, baseType: !4649, size: 2304, offset: 1792)
!4649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !44, line: 565, size: 2304, elements: !4650)
!4650 = !{!4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4735, !4739}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4649, file: !44, line: 566, baseType: !4602, size: 32)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4649, file: !44, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4649, file: !44, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4649, file: !44, line: 569, baseType: !272, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4649, file: !44, line: 570, baseType: !272, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4649, file: !44, line: 571, baseType: !272, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4649, file: !44, line: 572, baseType: !272, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4649, file: !44, line: 573, baseType: !272, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4649, file: !44, line: 574, baseType: !272, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4649, file: !44, line: 575, baseType: !272, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4649, file: !44, line: 576, baseType: !272, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4649, file: !44, line: 577, baseType: !219, size: 32, offset: 64)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4649, file: !44, line: 578, baseType: !296, offset: 96)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4649, file: !44, line: 580, baseType: !283, size: 128, offset: 128)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4649, file: !44, line: 581, baseType: !2539, size: 192, offset: 256)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4649, file: !44, line: 582, baseType: !4667, size: 64, offset: 448)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4669, line: 43, size: 1472, elements: !4670)
!4669 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!4670 = !{!4671, !4672, !4673, !4674, !4675, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4668, file: !4669, line: 44, baseType: !269, size: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4668, file: !4669, line: 45, baseType: !215, size: 32, offset: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4668, file: !4669, line: 46, baseType: !283, size: 128, offset: 128)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4668, file: !4669, line: 47, baseType: !296, offset: 256)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4668, file: !4669, line: 48, baseType: !4676, size: 64, offset: 256)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !44, line: 533, flags: DIFlagFwdDecl)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4668, file: !4669, line: 49, baseType: !1716, size: 320, offset: 320)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4668, file: !4669, line: 50, baseType: !202, size: 64, offset: 640)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4668, file: !4669, line: 51, baseType: !2346, size: 64, offset: 704)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4668, file: !4669, line: 52, baseType: !2346, size: 64, offset: 768)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4668, file: !4669, line: 53, baseType: !2346, size: 64, offset: 832)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4668, file: !4669, line: 54, baseType: !2346, size: 64, offset: 896)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4668, file: !4669, line: 55, baseType: !2346, size: 64, offset: 960)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4668, file: !4669, line: 56, baseType: !202, size: 64, offset: 1024)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4668, file: !4669, line: 57, baseType: !202, size: 64, offset: 1088)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4668, file: !4669, line: 58, baseType: !202, size: 64, offset: 1152)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4668, file: !4669, line: 59, baseType: !202, size: 64, offset: 1216)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4668, file: !4669, line: 60, baseType: !202, size: 64, offset: 1280)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4668, file: !4669, line: 61, baseType: !1734, size: 64, offset: 1344)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4668, file: !4669, line: 62, baseType: !272, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4668, file: !4669, line: 63, baseType: !272, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4649, file: !44, line: 583, baseType: !272, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4649, file: !44, line: 584, baseType: !272, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4649, file: !44, line: 585, baseType: !272, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4649, file: !44, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4649, file: !44, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4649, file: !44, line: 592, baseType: !2338, size: 512, offset: 576)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4649, file: !44, line: 593, baseType: !207, size: 64, offset: 1088)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4649, file: !44, line: 594, baseType: !1147, size: 256, offset: 1152)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4649, file: !44, line: 595, baseType: !1283, size: 128, offset: 1408)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4649, file: !44, line: 596, baseType: !4676, size: 64, offset: 1536)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4649, file: !44, line: 597, baseType: !861, size: 32, offset: 1600)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4649, file: !44, line: 598, baseType: !861, size: 32, offset: 1632)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4649, file: !44, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4649, file: !44, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4649, file: !44, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4649, file: !44, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4649, file: !44, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4649, file: !44, line: 604, baseType: !272, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4649, file: !44, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4649, file: !44, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4649, file: !44, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4649, file: !44, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4649, file: !44, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4649, file: !44, line: 610, baseType: !7, size: 32, offset: 1696)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4649, file: !44, line: 611, baseType: !121, size: 32, offset: 1728)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4649, file: !44, line: 612, baseType: !43, size: 32, offset: 1760)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4649, file: !44, line: 613, baseType: !215, size: 32, offset: 1792)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4649, file: !44, line: 614, baseType: !215, size: 32, offset: 1824)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4649, file: !44, line: 615, baseType: !207, size: 64, offset: 1856)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4649, file: !44, line: 616, baseType: !207, size: 64, offset: 1920)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4649, file: !44, line: 617, baseType: !207, size: 64, offset: 1984)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4649, file: !44, line: 618, baseType: !207, size: 64, offset: 2048)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4649, file: !44, line: 620, baseType: !4726, size: 64, offset: 2112)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !44, line: 536, size: 256, elements: !4728)
!4728 = !{!4729, !4730, !4731, !4732}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4727, file: !44, line: 537, baseType: !296)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4727, file: !44, line: 538, baseType: !7, size: 32)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !4727, file: !44, line: 540, baseType: !283, size: 128, offset: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !4727, file: !44, line: 543, baseType: !4733, size: 64, offset: 192)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !44, line: 534, flags: DIFlagFwdDecl)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4649, file: !44, line: 621, baseType: !4736, size: 64, offset: 2176)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{null, !1734, !2488}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4649, file: !44, line: 622, baseType: !4740, size: 64, offset: 2240)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !44, line: 622, flags: DIFlagFwdDecl)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !275, file: !115, line: 486, baseType: !4743, size: 64, offset: 4096)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !44, line: 642, size: 1792, elements: !4745)
!4745 = !{!4746, !4747, !4748, !4752, !4753, !4754}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4744, file: !44, line: 643, baseType: !4516, size: 1472)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4744, file: !44, line: 644, baseType: !4519, size: 64, offset: 1472)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4744, file: !44, line: 645, baseType: !4749, size: 64, offset: 1536)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{null, !1734, !272}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4744, file: !44, line: 646, baseType: !4519, size: 64, offset: 1600)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4744, file: !44, line: 647, baseType: !4510, size: 64, offset: 1664)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4744, file: !44, line: 648, baseType: !4510, size: 64, offset: 1728)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !275, file: !115, line: 493, baseType: !4756, size: 64, offset: 4160)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !115, line: 493, flags: DIFlagFwdDecl)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !275, file: !115, line: 499, baseType: !283, size: 128, offset: 4224)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !275, file: !115, line: 502, baseType: !4760, size: 64, offset: 4352)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4762)
!4762 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !115, line: 502, flags: DIFlagFwdDecl)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !275, file: !115, line: 504, baseType: !4764, size: 64, offset: 4416)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !275, file: !115, line: 505, baseType: !207, size: 64, offset: 4480)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !275, file: !115, line: 510, baseType: !207, size: 64, offset: 4544)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !275, file: !115, line: 511, baseType: !4768, size: 64, offset: 4608)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4770)
!4770 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !115, line: 511, flags: DIFlagFwdDecl)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !275, file: !115, line: 513, baseType: !4772, size: 64, offset: 4672)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !115, line: 288, size: 128, elements: !4774)
!4774 = !{!4775, !4776}
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4773, file: !115, line: 293, baseType: !7, size: 32)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4773, file: !115, line: 294, baseType: !202, size: 64, offset: 64)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !275, file: !115, line: 515, baseType: !283, size: 128, offset: 4736)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !275, file: !115, line: 526, baseType: !4779, offset: 4864)
!4779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4780, line: 5, elements: !310)
!4780 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !275, file: !115, line: 528, baseType: !4782, size: 64, offset: 4864)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4784, line: 51, size: 1344, elements: !4785)
!4784 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!4785 = !{!4786, !4787, !4789, !4790, !4880, !4889, !4890, !4891, !4892, !4893, !4894, !4895}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4783, file: !4784, line: 52, baseType: !269, size: 64)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4783, file: !4784, line: 53, baseType: !4788, size: 32, offset: 64)
!4788 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4784, line: 28, baseType: !219)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4783, file: !4784, line: 54, baseType: !269, size: 64, offset: 128)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4783, file: !4784, line: 55, baseType: !4791, size: 192, offset: 192)
!4791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4792, line: 17, size: 192, elements: !4793)
!4792 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!4793 = !{!4794, !4796, !4879}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4791, file: !4792, line: 18, baseType: !4795, size: 64)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4791, file: !4792, line: 19, baseType: !4797, size: 64, offset: 64)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4799)
!4799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4792, line: 110, size: 1152, elements: !4800)
!4800 = !{!4801, !4805, !4809, !4815, !4821, !4825, !4829, !4834, !4838, !4839, !4843, !4847, !4851, !4862, !4863, !4864, !4865, !4875}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4799, file: !4792, line: 111, baseType: !4802, size: 64)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!4795, !4795}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4799, file: !4792, line: 112, baseType: !4806, size: 64, offset: 64)
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4807, size: 64)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{null, !4795}
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4799, file: !4792, line: 113, baseType: !4810, size: 64, offset: 128)
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{!272, !4813}
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4791)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4799, file: !4792, line: 114, baseType: !4816, size: 64, offset: 192)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = !DISubroutineType(types: !4818)
!4818 = !{!3295, !4813, !4819}
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4799, file: !4792, line: 116, baseType: !4822, size: 64, offset: 256)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!272, !4813, !269}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4799, file: !4792, line: 118, baseType: !4826, size: 64, offset: 320)
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!215, !4813, !269, !7, !203, !383}
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4799, file: !4792, line: 123, baseType: !4830, size: 64, offset: 384)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{!215, !4813, !269, !4833, !383}
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4799, file: !4792, line: 126, baseType: !4835, size: 64, offset: 448)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!269, !4813}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4799, file: !4792, line: 127, baseType: !4835, size: 64, offset: 512)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4799, file: !4792, line: 128, baseType: !4840, size: 64, offset: 576)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!4795, !4813}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4799, file: !4792, line: 130, baseType: !4844, size: 64, offset: 640)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{!4795, !4813, !4795}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4799, file: !4792, line: 133, baseType: !4848, size: 64, offset: 704)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!4795, !4813, !269}
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4799, file: !4792, line: 135, baseType: !4852, size: 64, offset: 768)
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = !DISubroutineType(types: !4854)
!4854 = !{!215, !4813, !269, !269, !7, !7, !4855}
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4792, line: 43, size: 640, elements: !4857)
!4857 = !{!4858, !4859, !4860}
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4856, file: !4792, line: 44, baseType: !4795, size: 64)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4856, file: !4792, line: 45, baseType: !7, size: 32, offset: 64)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4856, file: !4792, line: 46, baseType: !4861, size: 512, offset: 128)
!4861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 512, elements: !2376)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4799, file: !4792, line: 140, baseType: !4844, size: 64, offset: 832)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4799, file: !4792, line: 143, baseType: !4840, size: 64, offset: 896)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4799, file: !4792, line: 145, baseType: !4802, size: 64, offset: 960)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4799, file: !4792, line: 146, baseType: !4866, size: 64, offset: 1024)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!215, !4813, !4869}
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4792, line: 29, size: 128, elements: !4871)
!4871 = !{!4872, !4873, !4874}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4870, file: !4792, line: 30, baseType: !7, size: 32)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4870, file: !4792, line: 31, baseType: !7, size: 32, offset: 32)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4870, file: !4792, line: 32, baseType: !4813, size: 64, offset: 64)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4799, file: !4792, line: 148, baseType: !4876, size: 64, offset: 1088)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!215, !4813, !1734}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4791, file: !4792, line: 20, baseType: !1734, size: 64, offset: 128)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4783, file: !4784, line: 57, baseType: !4881, size: 64, offset: 384)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4784, line: 31, size: 704, elements: !4883)
!4883 = !{!4884, !4885, !4886, !4887, !4888}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4882, file: !4784, line: 32, baseType: !337, size: 64)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4882, file: !4784, line: 33, baseType: !215, size: 32, offset: 64)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4882, file: !4784, line: 34, baseType: !203, size: 64, offset: 128)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4882, file: !4784, line: 35, baseType: !4881, size: 64, offset: 192)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4882, file: !4784, line: 43, baseType: !404, size: 448, offset: 256)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4783, file: !4784, line: 58, baseType: !4881, size: 64, offset: 448)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4783, file: !4784, line: 59, baseType: !4782, size: 64, offset: 512)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4783, file: !4784, line: 60, baseType: !4782, size: 64, offset: 576)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4783, file: !4784, line: 61, baseType: !4782, size: 64, offset: 640)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4783, file: !4784, line: 63, baseType: !278, size: 512, offset: 704)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4783, file: !4784, line: 65, baseType: !202, size: 64, offset: 1216)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4783, file: !4784, line: 66, baseType: !203, size: 64, offset: 1280)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !275, file: !115, line: 529, baseType: !4795, size: 64, offset: 4928)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !275, file: !115, line: 534, baseType: !565, size: 32, offset: 4992)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !275, file: !115, line: 535, baseType: !219, size: 32, offset: 5024)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !275, file: !115, line: 537, baseType: !296, offset: 5056)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !275, file: !115, line: 538, baseType: !283, size: 128, offset: 5056)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !275, file: !115, line: 540, baseType: !4902, size: 64, offset: 5184)
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4904, line: 54, size: 960, elements: !4905)
!4904 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4905 = !{!4906, !4907, !4908, !4909, !4910, !4911, !4912, !4916, !4920, !4921, !4922, !4923, !4927, !4931, !4932}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4903, file: !4904, line: 55, baseType: !269, size: 64)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4903, file: !4904, line: 56, baseType: !197, size: 64, offset: 64)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4903, file: !4904, line: 58, baseType: !389, size: 64, offset: 128)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4903, file: !4904, line: 59, baseType: !389, size: 64, offset: 192)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4903, file: !4904, line: 60, baseType: !289, size: 64, offset: 256)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4903, file: !4904, line: 62, baseType: !4502, size: 64, offset: 320)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4903, file: !4904, line: 63, baseType: !4913, size: 64, offset: 384)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!337, !1734, !1372}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4903, file: !4904, line: 65, baseType: !4917, size: 64, offset: 448)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = !DISubroutineType(types: !4919)
!4919 = !{null, !4902}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4903, file: !4904, line: 66, baseType: !4510, size: 64, offset: 512)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4903, file: !4904, line: 68, baseType: !4519, size: 64, offset: 576)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4903, file: !4904, line: 70, baseType: !4324, size: 64, offset: 640)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4903, file: !4904, line: 71, baseType: !4924, size: 64, offset: 704)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DISubroutineType(types: !4926)
!4926 = !{!3295, !1734}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4903, file: !4904, line: 73, baseType: !4928, size: 64, offset: 768)
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{null, !1734, !2858, !2859}
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4903, file: !4904, line: 75, baseType: !4514, size: 64, offset: 832)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4903, file: !4904, line: 77, baseType: !4631, size: 64, offset: 896)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !275, file: !115, line: 541, baseType: !389, size: 64, offset: 5248)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !275, file: !115, line: 543, baseType: !4510, size: 64, offset: 5312)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !275, file: !115, line: 544, baseType: !4936, size: 64, offset: 5376)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !115, line: 45, flags: DIFlagFwdDecl)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !275, file: !115, line: 545, baseType: !4939, size: 64, offset: 5440)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !115, line: 47, flags: DIFlagFwdDecl)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !275, file: !115, line: 547, baseType: !272, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !275, file: !115, line: 548, baseType: !272, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !275, file: !115, line: 549, baseType: !272, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !275, file: !115, line: 550, baseType: !272, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !266, file: !259, line: 27, baseType: !207, size: 64, offset: 5696)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !266, file: !259, line: 28, baseType: !4773, size: 128, offset: 5760)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !266, file: !259, line: 29, baseType: !219, size: 32, offset: 5888)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !266, file: !259, line: 30, baseType: !4949, size: 64, offset: 5952)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4951, line: 20, size: 512, elements: !4952)
!4951 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4952 = !{!4953, !4955, !4956, !4957, !4958, !4959, !4960, !4961}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4950, file: !4951, line: 21, baseType: !4954, size: 64)
!4954 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !201, line: 158, baseType: !3293)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4950, file: !4951, line: 22, baseType: !4954, size: 64, offset: 64)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4950, file: !4951, line: 23, baseType: !269, size: 64, offset: 128)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4950, file: !4951, line: 24, baseType: !202, size: 64, offset: 192)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4950, file: !4951, line: 25, baseType: !202, size: 64, offset: 256)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4950, file: !4951, line: 26, baseType: !4949, size: 64, offset: 320)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4950, file: !4951, line: 26, baseType: !4949, size: 64, offset: 384)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4950, file: !4951, line: 26, baseType: !4949, size: 64, offset: 448)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !266, file: !259, line: 32, baseType: !4963, size: 64, offset: 6016)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4965)
!4965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !4572, line: 586, size: 256, elements: !4966)
!4966 = !{!4967, !4969}
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4965, file: !4572, line: 587, baseType: !4968, size: 160)
!4968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 160, elements: !3369)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4965, file: !4572, line: 588, baseType: !4591, size: 64, offset: 192)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !266, file: !259, line: 33, baseType: !337, size: 64, offset: 6080)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !266, file: !259, line: 36, baseType: !4972, size: 64, offset: 6144)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !259, line: 18, flags: DIFlagFwdDecl)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !266, file: !259, line: 39, baseType: !4975, offset: 6208)
!4975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !4780, line: 8, elements: !310)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !258, file: !259, line: 202, baseType: !262, size: 64, offset: 64)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !258, file: !259, line: 203, baseType: !4978, size: 64, offset: 128)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{null, !265}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !258, file: !259, line: 204, baseType: !4982, size: 64, offset: 192)
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{!215, !265, !4602}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !258, file: !259, line: 205, baseType: !262, size: 64, offset: 256)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !258, file: !259, line: 206, baseType: !4560, size: 1152, offset: 320)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !258, file: !259, line: 207, baseType: !4963, size: 64, offset: 1472)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !258, file: !259, line: 208, baseType: !272, size: 8, offset: 1536)
!4989 = !DIGlobalVariableExpression(var: !4990, expr: !DIExpression())
!4990 = distinct !DIGlobalVariable(name: "__key", scope: !4991, file: !3, line: 509, type: !697, isLocal: true, isDefinition: true)
!4991 = distinct !DISubprogram(name: "cdns3_probe", scope: !3, file: !3, line: 428, type: !263, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!4992 = !DIGlobalVariableExpression(var: !4993, expr: !DIExpression())
!4993 = distinct !DIGlobalVariable(name: "of_cdns3_match", scope: !2, file: !3, line: 739, type: !4994, isLocal: true, isDefinition: true)
!4994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4570, size: 3200, elements: !1453)
!4995 = !DIGlobalVariableExpression(var: !4996, expr: !DIExpression())
!4996 = distinct !DIGlobalVariable(name: "cdns3_pm_ops", scope: !2, file: !3, line: 733, type: !4515, isLocal: true, isDefinition: true)
!4997 = !{!"rsp"}
!4998 = !{i32 7, !"Dwarf Version", i32 4}
!4999 = !{i32 2, !"Debug Info Version", i32 3}
!5000 = !{i32 1, !"wchar_size", i32 2}
!5001 = !{i32 1, !"Code Model", i32 2}
!5002 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!5003 = distinct !DISubprogram(name: "cdns3_hw_role_switch", scope: !3, file: !3, line: 278, type: !5004, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!215, !5006}
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdns3", file: !5008, line: 77, size: 3072, elements: !5009)
!5008 = !DIFile(filename: "drivers/usb/cdns3/core.h", directory: "/home/lizy2001/genbc/linux")
!5009 = !{!5010, !5011, !5012, !5014, !5078, !5079, !5102, !5128, !5138, !5139, !5140, !5141, !5142, !5143, !5161, !5162, !5163, !5506, !5601, !5602, !5603, !5604, !5607, !5608, !5609, !5617}
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5007, file: !5008, line: 78, baseType: !1734, size: 64)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "xhci_regs", scope: !5007, file: !5008, line: 79, baseType: !203, size: 64, offset: 64)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "xhci_res", scope: !5007, file: !5008, line: 80, baseType: !5013, size: 1024, offset: 128)
!5013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4950, size: 1024, elements: !1453)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "dev_regs", scope: !5007, file: !5008, line: 81, baseType: !5015, size: 64, offset: 1152)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdns3_usb_regs", file: !5017, line: 70, size: 6304, elements: !5018)
!5017 = !DIFile(filename: "drivers/usb/cdns3/gadget.h", directory: "/home/lizy2001/genbc/linux")
!5018 = !{!5019, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5062, !5063, !5064, !5065, !5069, !5073, !5074, !5075, !5076, !5077}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "usb_conf", scope: !5016, file: !5017, line: 71, baseType: !5020, size: 32)
!5020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !4041, line: 31, baseType: !220)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "usb_sts", scope: !5016, file: !5017, line: 72, baseType: !5020, size: 32, offset: 32)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "usb_cmd", scope: !5016, file: !5017, line: 73, baseType: !5020, size: 32, offset: 64)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "usb_itpn", scope: !5016, file: !5017, line: 74, baseType: !5020, size: 32, offset: 96)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "usb_lpm", scope: !5016, file: !5017, line: 75, baseType: !5020, size: 32, offset: 128)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "usb_ien", scope: !5016, file: !5017, line: 76, baseType: !5020, size: 32, offset: 160)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "usb_ists", scope: !5016, file: !5017, line: 77, baseType: !5020, size: 32, offset: 192)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "ep_sel", scope: !5016, file: !5017, line: 78, baseType: !5020, size: 32, offset: 224)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "ep_traddr", scope: !5016, file: !5017, line: 79, baseType: !5020, size: 32, offset: 256)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "ep_cfg", scope: !5016, file: !5017, line: 80, baseType: !5020, size: 32, offset: 288)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "ep_cmd", scope: !5016, file: !5017, line: 81, baseType: !5020, size: 32, offset: 320)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "ep_sts", scope: !5016, file: !5017, line: 82, baseType: !5020, size: 32, offset: 352)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "ep_sts_sid", scope: !5016, file: !5017, line: 83, baseType: !5020, size: 32, offset: 384)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "ep_sts_en", scope: !5016, file: !5017, line: 84, baseType: !5020, size: 32, offset: 416)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "drbl", scope: !5016, file: !5017, line: 85, baseType: !5020, size: 32, offset: 448)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "ep_ien", scope: !5016, file: !5017, line: 86, baseType: !5020, size: 32, offset: 480)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "ep_ists", scope: !5016, file: !5017, line: 87, baseType: !5020, size: 32, offset: 512)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "usb_pwr", scope: !5016, file: !5017, line: 88, baseType: !5020, size: 32, offset: 544)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "usb_conf2", scope: !5016, file: !5017, line: 89, baseType: !5020, size: 32, offset: 576)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "usb_cap1", scope: !5016, file: !5017, line: 90, baseType: !5020, size: 32, offset: 608)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "usb_cap2", scope: !5016, file: !5017, line: 91, baseType: !5020, size: 32, offset: 640)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "usb_cap3", scope: !5016, file: !5017, line: 92, baseType: !5020, size: 32, offset: 672)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "usb_cap4", scope: !5016, file: !5017, line: 93, baseType: !5020, size: 32, offset: 704)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "usb_cap5", scope: !5016, file: !5017, line: 94, baseType: !5020, size: 32, offset: 736)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "usb_cap6", scope: !5016, file: !5017, line: 95, baseType: !5020, size: 32, offset: 768)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "usb_cpkt1", scope: !5016, file: !5017, line: 96, baseType: !5020, size: 32, offset: 800)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "usb_cpkt2", scope: !5016, file: !5017, line: 97, baseType: !5020, size: 32, offset: 832)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "usb_cpkt3", scope: !5016, file: !5017, line: 98, baseType: !5020, size: 32, offset: 864)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dma_ext_addr", scope: !5016, file: !5017, line: 99, baseType: !5020, size: 32, offset: 896)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "buf_addr", scope: !5016, file: !5017, line: 100, baseType: !5020, size: 32, offset: 928)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "buf_data", scope: !5016, file: !5017, line: 101, baseType: !5020, size: 32, offset: 960)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "buf_ctrl", scope: !5016, file: !5017, line: 102, baseType: !5020, size: 32, offset: 992)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "dtrans", scope: !5016, file: !5017, line: 103, baseType: !5020, size: 32, offset: 1024)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "tdl_from_trb", scope: !5016, file: !5017, line: 104, baseType: !5020, size: 32, offset: 1056)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "tdl_beh", scope: !5016, file: !5017, line: 105, baseType: !5020, size: 32, offset: 1088)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "ep_tdl", scope: !5016, file: !5017, line: 106, baseType: !5020, size: 32, offset: 1120)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "tdl_beh2", scope: !5016, file: !5017, line: 107, baseType: !5020, size: 32, offset: 1152)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "dma_adv_td", scope: !5016, file: !5017, line: 108, baseType: !5020, size: 32, offset: 1184)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !5016, file: !5017, line: 109, baseType: !5059, size: 832, offset: 1216)
!5059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5020, size: 832, elements: !5060)
!5060 = !{!5061}
!5061 = !DISubrange(count: 26)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_reg1", scope: !5016, file: !5017, line: 110, baseType: !5020, size: 32, offset: 2048)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "dbg_link1", scope: !5016, file: !5017, line: 111, baseType: !5020, size: 32, offset: 2080)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "dbg_link2", scope: !5016, file: !5017, line: 112, baseType: !5020, size: 32, offset: 2112)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_regs", scope: !5016, file: !5017, line: 113, baseType: !5066, size: 2368, offset: 2144)
!5066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5020, size: 2368, elements: !5067)
!5067 = !{!5068}
!5068 = !DISubrange(count: 74)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !5016, file: !5017, line: 114, baseType: !5070, size: 1632, offset: 4512)
!5070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5020, size: 1632, elements: !5071)
!5071 = !{!5072}
!5072 = !DISubrange(count: 51)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "dma_axi_ctrl", scope: !5016, file: !5017, line: 115, baseType: !5020, size: 32, offset: 6144)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "dma_axi_id", scope: !5016, file: !5017, line: 116, baseType: !5020, size: 32, offset: 6176)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "dma_axi_cap", scope: !5016, file: !5017, line: 117, baseType: !5020, size: 32, offset: 6208)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "dma_axi_ctrl0", scope: !5016, file: !5017, line: 118, baseType: !5020, size: 32, offset: 6240)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "dma_axi_ctrl1", scope: !5016, file: !5017, line: 119, baseType: !5020, size: 32, offset: 6272)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "otg_res", scope: !5007, file: !5008, line: 83, baseType: !4950, size: 512, offset: 1216)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "otg_v0_regs", scope: !5007, file: !5008, line: 84, baseType: !5080, size: 64, offset: 1728)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdns3_otg_legacy_regs", file: !5082, line: 42, size: 736, elements: !5083)
!5082 = !DIFile(filename: "drivers/usb/cdns3/drd.h", directory: "/home/lizy2001/genbc/linux")
!5083 = !{!5084, !5085, !5086, !5087, !5088, !5089, !5090, !5092, !5093, !5095, !5096, !5097, !5098, !5099, !5101}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !5081, file: !5082, line: 43, baseType: !5020, size: 32)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "sts", scope: !5081, file: !5082, line: 44, baseType: !5020, size: 32, offset: 32)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5081, file: !5082, line: 45, baseType: !5020, size: 32, offset: 64)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "refclk", scope: !5081, file: !5082, line: 46, baseType: !5020, size: 32, offset: 96)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "ien", scope: !5081, file: !5082, line: 47, baseType: !5020, size: 32, offset: 128)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "ivect", scope: !5081, file: !5082, line: 48, baseType: !5020, size: 32, offset: 160)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !5081, file: !5082, line: 49, baseType: !5091, size: 96, offset: 192)
!5091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5020, size: 96, elements: !338)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "tmr", scope: !5081, file: !5082, line: 50, baseType: !5020, size: 32, offset: 288)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !5081, file: !5082, line: 51, baseType: !5094, size: 64, offset: 320)
!5094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5020, size: 64, elements: !1453)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5081, file: !5082, line: 52, baseType: !5020, size: 32, offset: 384)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !5081, file: !5082, line: 53, baseType: !5020, size: 32, offset: 416)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !5081, file: !5082, line: 54, baseType: !5094, size: 64, offset: 448)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "simulate", scope: !5081, file: !5082, line: 55, baseType: !5020, size: 32, offset: 512)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !5081, file: !5082, line: 56, baseType: !5100, size: 160, offset: 544)
!5100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5020, size: 160, elements: !1931)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl1", scope: !5081, file: !5082, line: 57, baseType: !5020, size: 32, offset: 704)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "otg_v1_regs", scope: !5007, file: !5008, line: 85, baseType: !5103, size: 64, offset: 1792)
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdns3_otg_regs", file: !5082, line: 17, size: 768, elements: !5105)
!5105 = !{!5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127}
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "did", scope: !5104, file: !5082, line: 18, baseType: !5020, size: 32)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "rid", scope: !5104, file: !5082, line: 19, baseType: !5020, size: 32, offset: 32)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !5104, file: !5082, line: 20, baseType: !5020, size: 32, offset: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !5104, file: !5082, line: 21, baseType: !5020, size: 32, offset: 96)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !5104, file: !5082, line: 22, baseType: !5020, size: 32, offset: 128)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "sts", scope: !5104, file: !5082, line: 23, baseType: !5020, size: 32, offset: 160)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5104, file: !5082, line: 24, baseType: !5020, size: 32, offset: 192)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !5104, file: !5082, line: 25, baseType: !5020, size: 32, offset: 224)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "ien", scope: !5104, file: !5082, line: 26, baseType: !5020, size: 32, offset: 256)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "ivect", scope: !5104, file: !5082, line: 27, baseType: !5020, size: 32, offset: 288)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "refclk", scope: !5104, file: !5082, line: 28, baseType: !5020, size: 32, offset: 320)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "tmr", scope: !5104, file: !5082, line: 29, baseType: !5020, size: 32, offset: 352)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !5104, file: !5082, line: 30, baseType: !5119, size: 128, offset: 384)
!5119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5020, size: 128, elements: !1361)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "simulate", scope: !5104, file: !5082, line: 31, baseType: !5020, size: 32, offset: 512)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "override", scope: !5104, file: !5082, line: 32, baseType: !5020, size: 32, offset: 544)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "susp_ctrl", scope: !5104, file: !5082, line: 33, baseType: !5020, size: 32, offset: 576)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "phyrst_cfg", scope: !5104, file: !5082, line: 34, baseType: !5020, size: 32, offset: 608)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "anasts", scope: !5104, file: !5082, line: 35, baseType: !5020, size: 32, offset: 640)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "adp_ramp_time", scope: !5104, file: !5082, line: 36, baseType: !5020, size: 32, offset: 672)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl1", scope: !5104, file: !5082, line: 37, baseType: !5020, size: 32, offset: 704)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl2", scope: !5104, file: !5082, line: 38, baseType: !5020, size: 32, offset: 736)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "otg_regs", scope: !5007, file: !5008, line: 86, baseType: !5129, size: 64, offset: 1856)
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5130, size: 64)
!5130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdns3_otg_common_regs", file: !5082, line: 63, size: 192, elements: !5131)
!5131 = !{!5132, !5133, !5134, !5135, !5136, !5137}
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !5130, file: !5082, line: 64, baseType: !5020, size: 32)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "sts", scope: !5130, file: !5082, line: 65, baseType: !5020, size: 32, offset: 32)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5130, file: !5082, line: 66, baseType: !5020, size: 32, offset: 64)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "different1", scope: !5130, file: !5082, line: 67, baseType: !5020, size: 32, offset: 96)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "ien", scope: !5130, file: !5082, line: 68, baseType: !5020, size: 32, offset: 128)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "ivect", scope: !5130, file: !5082, line: 69, baseType: !5020, size: 32, offset: 160)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5007, file: !5008, line: 89, baseType: !219, size: 32, offset: 1920)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "phyrst_a_enable", scope: !5007, file: !5008, line: 90, baseType: !272, size: 8, offset: 1952)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "otg_irq", scope: !5007, file: !5008, line: 92, baseType: !215, size: 32, offset: 1984)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "dev_irq", scope: !5007, file: !5008, line: 93, baseType: !215, size: 32, offset: 2016)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_irq", scope: !5007, file: !5008, line: 94, baseType: !215, size: 32, offset: 2048)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "roles", scope: !5007, file: !5008, line: 95, baseType: !5144, size: 192, offset: 2112)
!5144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5145, size: 192, elements: !338)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdns3_role_driver", file: !5008, line: 29, size: 384, elements: !5147)
!5147 = !{!5148, !5150, !5154, !5158, !5159, !5160}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5146, file: !5008, line: 30, baseType: !5149, size: 64)
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !5146, file: !5008, line: 31, baseType: !5151, size: 64, offset: 64)
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5152, size: 64)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{null, !5006}
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5146, file: !5008, line: 32, baseType: !5155, size: 64, offset: 128)
!5155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!5156 = !DISubroutineType(types: !5157)
!5157 = !{!215, !5006, !272}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5146, file: !5008, line: 33, baseType: !5155, size: 64, offset: 192)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5146, file: !5008, line: 34, baseType: !269, size: 64, offset: 256)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5146, file: !5008, line: 37, baseType: !215, size: 32, offset: 320)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !5007, file: !5008, line: 96, baseType: !128, size: 32, offset: 2304)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "host_dev", scope: !5007, file: !5008, line: 97, baseType: !265, size: 64, offset: 2368)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "gadget_dev", scope: !5007, file: !5008, line: 98, baseType: !5164, size: 64, offset: 2432)
!5164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5165, size: 64)
!5165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdns3_device", file: !5017, line: 1285, size: 10112, elements: !5166)
!5166 = !{!5167, !5168, !5169, !5413, !5414, !5415, !5416, !5417, !5419, !5420, !5421, !5422, !5423, !5488, !5489, !5490, !5491, !5492, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5505}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5165, file: !5017, line: 1286, baseType: !1734, size: 64)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !5165, file: !5017, line: 1287, baseType: !1734, size: 64, offset: 64)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "gadget", scope: !5165, file: !5017, line: 1289, baseType: !5170, size: 6592, offset: 128)
!5170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_gadget", file: !5171, line: 400, size: 6592, elements: !5172)
!5171 = !DIFile(filename: "./include/linux/usb/gadget.h", directory: "/home/lizy2001/genbc/linux")
!5172 = !{!5173, !5174, !5177, !5376, !5377, !5378, !5379, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5387, !5395, !5396, !5397, !5398, !5399, !5400, !5401, !5402, !5403, !5404, !5405, !5406, !5407, !5408, !5409, !5410, !5411, !5412}
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5170, file: !5171, line: 401, baseType: !1147, size: 256)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "udc", scope: !5170, file: !5171, line: 402, baseType: !5175, size: 64, offset: 256)
!5175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5176, size: 64)
!5176 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_udc", file: !5171, line: 306, flags: DIFlagFwdDecl)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5170, file: !5171, line: 404, baseType: !5178, size: 64, offset: 320)
!5178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5179, size: 64)
!5179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5180)
!5180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_gadget_ops", file: !5171, line: 311, size: 768, elements: !5181)
!5181 = !{!5182, !5187, !5188, !5192, !5193, !5197, !5198, !5202, !5214, !5249, !5250, !5254}
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame", scope: !5180, file: !5171, line: 312, baseType: !5183, size: 64)
!5183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5184, size: 64)
!5184 = !DISubroutineType(types: !5185)
!5185 = !{!215, !5186}
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5180, file: !5171, line: 313, baseType: !5183, size: 64, offset: 64)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "set_selfpowered", scope: !5180, file: !5171, line: 314, baseType: !5189, size: 64, offset: 128)
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5190, size: 64)
!5190 = !DISubroutineType(types: !5191)
!5191 = !{!215, !5186, !215}
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "vbus_session", scope: !5180, file: !5171, line: 315, baseType: !5189, size: 64, offset: 192)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "vbus_draw", scope: !5180, file: !5171, line: 316, baseType: !5194, size: 64, offset: 256)
!5194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5195, size: 64)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{!215, !5186, !7}
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "pullup", scope: !5180, file: !5171, line: 317, baseType: !5189, size: 64, offset: 320)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !5180, file: !5171, line: 318, baseType: !5199, size: 64, offset: 384)
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{!215, !5186, !7, !202}
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "get_config_params", scope: !5180, file: !5171, line: 320, baseType: !5203, size: 64, offset: 448)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5204, size: 64)
!5204 = !DISubroutineType(types: !5205)
!5205 = !{null, !5186, !5206}
!5206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5207, size: 64)
!5207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dcd_config_params", file: !5171, line: 293, size: 48, elements: !5208)
!5208 = !{!5209, !5210, !5212, !5213}
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !5207, file: !5171, line: 294, baseType: !1095, size: 8)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !5207, file: !5171, line: 296, baseType: !5211, size: 16, offset: 16)
!5211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !4041, line: 29, baseType: !974)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "besl_baseline", scope: !5207, file: !5171, line: 298, baseType: !1095, size: 8, offset: 32)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "besl_deep", scope: !5207, file: !5171, line: 299, baseType: !1095, size: 8, offset: 40)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "udc_start", scope: !5180, file: !5171, line: 322, baseType: !5215, size: 64, offset: 512)
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5216, size: 64)
!5216 = !DISubroutineType(types: !5217)
!5217 = !{!215, !5186, !5218}
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_gadget_driver", file: !5171, line: 699, size: 1984, elements: !5220)
!5220 = !{!5221, !5222, !5223, !5224, !5228, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !5219, file: !5171, line: 700, baseType: !337, size: 64)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "max_speed", scope: !5219, file: !5171, line: 701, baseType: !134, size: 32, offset: 64)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !5219, file: !5171, line: 702, baseType: !5215, size: 64, offset: 128)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !5219, file: !5171, line: 704, baseType: !5225, size: 64, offset: 192)
!5225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5226, size: 64)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{null, !5186}
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !5219, file: !5171, line: 705, baseType: !5229, size: 64, offset: 256)
!5229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5230, size: 64)
!5230 = !DISubroutineType(types: !5231)
!5231 = !{!215, !5186, !5232}
!5232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5233, size: 64)
!5233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5234)
!5234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ctrlrequest", file: !135, line: 213, size: 64, elements: !5235)
!5235 = !{!5236, !5237, !5238, !5239, !5240}
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "bRequestType", scope: !5234, file: !135, line: 214, baseType: !1095, size: 8)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "bRequest", scope: !5234, file: !135, line: 215, baseType: !1095, size: 8, offset: 8)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "wValue", scope: !5234, file: !135, line: 216, baseType: !5211, size: 16, offset: 16)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "wIndex", scope: !5234, file: !135, line: 217, baseType: !5211, size: 16, offset: 32)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "wLength", scope: !5234, file: !135, line: 218, baseType: !5211, size: 16, offset: 48)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !5219, file: !5171, line: 707, baseType: !5225, size: 64, offset: 320)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5219, file: !5171, line: 708, baseType: !5225, size: 64, offset: 384)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5219, file: !5171, line: 709, baseType: !5225, size: 64, offset: 448)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5219, file: !5171, line: 710, baseType: !5225, size: 64, offset: 512)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5219, file: !5171, line: 713, baseType: !4560, size: 1152, offset: 576)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "udc_name", scope: !5219, file: !5171, line: 715, baseType: !337, size: 64, offset: 1728)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !5219, file: !5171, line: 716, baseType: !283, size: 128, offset: 1792)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "match_existing_only", scope: !5219, file: !5171, line: 717, baseType: !7, size: 1, offset: 1920, flags: DIFlagBitField, extraData: i64 1920)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "udc_stop", scope: !5180, file: !5171, line: 324, baseType: !5183, size: 64, offset: 576)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "udc_set_speed", scope: !5180, file: !5171, line: 325, baseType: !5251, size: 64, offset: 640)
!5251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5252, size: 64)
!5252 = !DISubroutineType(types: !5253)
!5253 = !{null, !5186, !134}
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "match_ep", scope: !5180, file: !5171, line: 326, baseType: !5255, size: 64, offset: 704)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{!5258, !5186, !5374, !5375}
!5258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5259, size: 64)
!5259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ep", file: !5171, line: 226, size: 576, elements: !5260)
!5260 = !{!5261, !5262, !5263, !5345, !5346, !5355, !5356, !5357, !5358, !5359, !5360, !5361, !5362, !5363, !5364}
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5259, file: !5171, line: 227, baseType: !203, size: 64)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5259, file: !5171, line: 229, baseType: !269, size: 64, offset: 64)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5259, file: !5171, line: 230, baseType: !5264, size: 64, offset: 128)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5266)
!5266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ep_ops", file: !5171, line: 136, size: 704, elements: !5267)
!5267 = !{!5268, !5284, !5288, !5292, !5329, !5330, !5334, !5338, !5342, !5343, !5344}
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5266, file: !5171, line: 137, baseType: !5269, size: 64)
!5269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5270, size: 64)
!5270 = !DISubroutineType(types: !5271)
!5271 = !{!215, !5258, !5272}
!5272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5273, size: 64)
!5273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5274)
!5274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !135, line: 407, size: 72, elements: !5275)
!5275 = !{!5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283}
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5274, file: !135, line: 408, baseType: !1095, size: 8)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5274, file: !135, line: 409, baseType: !1095, size: 8, offset: 8)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !5274, file: !135, line: 411, baseType: !1095, size: 8, offset: 16)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5274, file: !135, line: 412, baseType: !1095, size: 8, offset: 24)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !5274, file: !135, line: 413, baseType: !5211, size: 16, offset: 32)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !5274, file: !135, line: 414, baseType: !1095, size: 8, offset: 48)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !5274, file: !135, line: 418, baseType: !1095, size: 8, offset: 56)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !5274, file: !135, line: 419, baseType: !1095, size: 8, offset: 64)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !5266, file: !5171, line: 139, baseType: !5285, size: 64, offset: 64)
!5285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5286, size: 64)
!5286 = !DISubroutineType(types: !5287)
!5287 = !{!215, !5258}
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !5266, file: !5171, line: 140, baseType: !5289, size: 64, offset: 128)
!5289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5290, size: 64)
!5290 = !DISubroutineType(types: !5291)
!5291 = !{null, !5258}
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_request", scope: !5266, file: !5171, line: 142, baseType: !5293, size: 64, offset: 192)
!5293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5294, size: 64)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{!5296, !5258, !200}
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5297, size: 64)
!5297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_request", file: !5171, line: 100, size: 768, elements: !5298)
!5298 = !{!5299, !5300, !5301, !5302, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5324, !5325, !5326, !5327, !5328}
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5297, file: !5171, line: 101, baseType: !203, size: 64)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5297, file: !5171, line: 102, baseType: !7, size: 32, offset: 64)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5297, file: !5171, line: 103, baseType: !1981, size: 64, offset: 128)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !5297, file: !5171, line: 105, baseType: !5303, size: 64, offset: 192)
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5304, size: 64)
!5304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !5305, line: 11, size: 256, elements: !5306)
!5305 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!5306 = !{!5307, !5308, !5309, !5310, !5311}
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !5304, file: !5305, line: 12, baseType: !202, size: 64)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5304, file: !5305, line: 13, baseType: !7, size: 32, offset: 64)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5304, file: !5305, line: 14, baseType: !7, size: 32, offset: 96)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !5304, file: !5305, line: 15, baseType: !1981, size: 64, offset: 128)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !5304, file: !5305, line: 17, baseType: !7, size: 32, offset: 192)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !5297, file: !5171, line: 106, baseType: !7, size: 32, offset: 256)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !5297, file: !5171, line: 107, baseType: !7, size: 32, offset: 288)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !5297, file: !5171, line: 109, baseType: !7, size: 16, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "is_last", scope: !5297, file: !5171, line: 110, baseType: !7, size: 1, offset: 336, flags: DIFlagBitField, extraData: i64 320)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "no_interrupt", scope: !5297, file: !5171, line: 111, baseType: !7, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !5297, file: !5171, line: 112, baseType: !7, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "short_not_ok", scope: !5297, file: !5171, line: 113, baseType: !7, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mapped", scope: !5297, file: !5171, line: 114, baseType: !7, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5297, file: !5171, line: 116, baseType: !5321, size: 64, offset: 384)
!5321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5322, size: 64)
!5322 = !DISubroutineType(types: !5323)
!5323 = !{null, !5258, !5296}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5297, file: !5171, line: 118, baseType: !203, size: 64, offset: 448)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5297, file: !5171, line: 119, baseType: !283, size: 128, offset: 512)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "frame_number", scope: !5297, file: !5171, line: 121, baseType: !7, size: 32, offset: 640)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5297, file: !5171, line: 123, baseType: !215, size: 32, offset: 672)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "actual", scope: !5297, file: !5171, line: 124, baseType: !7, size: 32, offset: 704)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "free_request", scope: !5266, file: !5171, line: 144, baseType: !5321, size: 64, offset: 256)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !5266, file: !5171, line: 146, baseType: !5331, size: 64, offset: 320)
!5331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5332, size: 64)
!5332 = !DISubroutineType(types: !5333)
!5333 = !{!215, !5258, !5296, !200}
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "dequeue", scope: !5266, file: !5171, line: 148, baseType: !5335, size: 64, offset: 384)
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5336, size: 64)
!5336 = !DISubroutineType(types: !5337)
!5337 = !{!215, !5258, !5296}
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "set_halt", scope: !5266, file: !5171, line: 150, baseType: !5339, size: 64, offset: 448)
!5339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5340, size: 64)
!5340 = !DISubroutineType(types: !5341)
!5341 = !{!215, !5258, !215}
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "set_wedge", scope: !5266, file: !5171, line: 151, baseType: !5285, size: 64, offset: 512)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_status", scope: !5266, file: !5171, line: 153, baseType: !5285, size: 64, offset: 576)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_flush", scope: !5266, file: !5171, line: 154, baseType: !5289, size: 64, offset: 640)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "ep_list", scope: !5259, file: !5171, line: 231, baseType: !283, size: 128, offset: 192)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !5259, file: !5171, line: 232, baseType: !5347, size: 32, offset: 320)
!5347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ep_caps", file: !5171, line: 166, size: 32, elements: !5348)
!5348 = !{!5349, !5350, !5351, !5352, !5353, !5354}
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "type_control", scope: !5347, file: !5171, line: 167, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "type_iso", scope: !5347, file: !5171, line: 168, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "type_bulk", scope: !5347, file: !5171, line: 169, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "type_int", scope: !5347, file: !5171, line: 170, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "dir_in", scope: !5347, file: !5171, line: 171, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "dir_out", scope: !5347, file: !5171, line: 172, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "claimed", scope: !5259, file: !5171, line: 233, baseType: !272, size: 8, offset: 352)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5259, file: !5171, line: 234, baseType: !272, size: 8, offset: 360)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "maxpacket", scope: !5259, file: !5171, line: 235, baseType: !7, size: 16, offset: 368, flags: DIFlagBitField, extraData: i64 368)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "maxpacket_limit", scope: !5259, file: !5171, line: 236, baseType: !7, size: 16, offset: 384, flags: DIFlagBitField, extraData: i64 368)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "max_streams", scope: !5259, file: !5171, line: 237, baseType: !7, size: 16, offset: 400, flags: DIFlagBitField, extraData: i64 368)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !5259, file: !5171, line: 238, baseType: !7, size: 2, offset: 416, flags: DIFlagBitField, extraData: i64 368)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "maxburst", scope: !5259, file: !5171, line: 239, baseType: !7, size: 5, offset: 418, flags: DIFlagBitField, extraData: i64 368)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5259, file: !5171, line: 240, baseType: !1094, size: 8, offset: 424)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5259, file: !5171, line: 241, baseType: !5272, size: 64, offset: 448)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "comp_desc", scope: !5259, file: !5171, line: 242, baseType: !5365, size: 64, offset: 512)
!5365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5366, size: 64)
!5366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5367)
!5367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !135, line: 689, size: 48, elements: !5368)
!5368 = !{!5369, !5370, !5371, !5372, !5373}
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5367, file: !135, line: 690, baseType: !1095, size: 8)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5367, file: !135, line: 691, baseType: !1095, size: 8, offset: 8)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !5367, file: !135, line: 693, baseType: !1095, size: 8, offset: 16)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5367, file: !135, line: 694, baseType: !1095, size: 8, offset: 24)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !5367, file: !135, line: 695, baseType: !5211, size: 16, offset: 32)
!5374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5274, size: 64)
!5375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5367, size: 64)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !5170, file: !5171, line: 405, baseType: !5258, size: 64, offset: 384)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "ep_list", scope: !5170, file: !5171, line: 406, baseType: !283, size: 128, offset: 448)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !5170, file: !5171, line: 407, baseType: !134, size: 32, offset: 576)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "max_speed", scope: !5170, file: !5171, line: 408, baseType: !134, size: 32, offset: 608)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5170, file: !5171, line: 409, baseType: !144, size: 32, offset: 640)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5170, file: !5171, line: 410, baseType: !269, size: 64, offset: 704)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5170, file: !5171, line: 411, baseType: !275, size: 5568, offset: 768)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "isoch_delay", scope: !5170, file: !5171, line: 412, baseType: !7, size: 32, offset: 6336)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "out_epnum", scope: !5170, file: !5171, line: 413, baseType: !7, size: 32, offset: 6368)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "in_epnum", scope: !5170, file: !5171, line: 414, baseType: !7, size: 32, offset: 6400)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "mA", scope: !5170, file: !5171, line: 415, baseType: !7, size: 32, offset: 6432)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "otg_caps", scope: !5170, file: !5171, line: 416, baseType: !5388, size: 64, offset: 6464)
!5388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5389, size: 64)
!5389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_otg_caps", file: !179, line: 53, size: 48, elements: !5390)
!5390 = !{!5391, !5392, !5393, !5394}
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "otg_rev", scope: !5389, file: !179, line: 54, baseType: !973, size: 16)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "hnp_support", scope: !5389, file: !179, line: 55, baseType: !272, size: 8, offset: 16)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "srp_support", scope: !5389, file: !179, line: 56, baseType: !272, size: 8, offset: 24)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "adp_support", scope: !5389, file: !179, line: 57, baseType: !272, size: 8, offset: 32)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "sg_supported", scope: !5170, file: !5171, line: 418, baseType: !7, size: 1, offset: 6528, flags: DIFlagBitField, extraData: i64 6528)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "is_otg", scope: !5170, file: !5171, line: 419, baseType: !7, size: 1, offset: 6529, flags: DIFlagBitField, extraData: i64 6528)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "is_a_peripheral", scope: !5170, file: !5171, line: 420, baseType: !7, size: 1, offset: 6530, flags: DIFlagBitField, extraData: i64 6528)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !5170, file: !5171, line: 421, baseType: !7, size: 1, offset: 6531, flags: DIFlagBitField, extraData: i64 6528)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "a_hnp_support", scope: !5170, file: !5171, line: 422, baseType: !7, size: 1, offset: 6532, flags: DIFlagBitField, extraData: i64 6528)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "a_alt_hnp_support", scope: !5170, file: !5171, line: 423, baseType: !7, size: 1, offset: 6533, flags: DIFlagBitField, extraData: i64 6528)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "hnp_polling_support", scope: !5170, file: !5171, line: 424, baseType: !7, size: 1, offset: 6534, flags: DIFlagBitField, extraData: i64 6528)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "host_request_flag", scope: !5170, file: !5171, line: 425, baseType: !7, size: 1, offset: 6535, flags: DIFlagBitField, extraData: i64 6528)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_ep_out_aligned_size", scope: !5170, file: !5171, line: 426, baseType: !7, size: 1, offset: 6536, flags: DIFlagBitField, extraData: i64 6528)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_altset_not_supp", scope: !5170, file: !5171, line: 427, baseType: !7, size: 1, offset: 6537, flags: DIFlagBitField, extraData: i64 6528)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_stall_not_supp", scope: !5170, file: !5171, line: 428, baseType: !7, size: 1, offset: 6538, flags: DIFlagBitField, extraData: i64 6528)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_zlp_not_supp", scope: !5170, file: !5171, line: 429, baseType: !7, size: 1, offset: 6539, flags: DIFlagBitField, extraData: i64 6528)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_avoids_skb_reserve", scope: !5170, file: !5171, line: 430, baseType: !7, size: 1, offset: 6540, flags: DIFlagBitField, extraData: i64 6528)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "is_selfpowered", scope: !5170, file: !5171, line: 431, baseType: !7, size: 1, offset: 6541, flags: DIFlagBitField, extraData: i64 6528)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "deactivated", scope: !5170, file: !5171, line: 432, baseType: !7, size: 1, offset: 6542, flags: DIFlagBitField, extraData: i64 6528)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !5170, file: !5171, line: 433, baseType: !7, size: 1, offset: 6543, flags: DIFlagBitField, extraData: i64 6528)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !5170, file: !5171, line: 434, baseType: !7, size: 1, offset: 6544, flags: DIFlagBitField, extraData: i64 6528)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5170, file: !5171, line: 435, baseType: !215, size: 32, offset: 6560)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "gadget_driver", scope: !5165, file: !5017, line: 1290, baseType: !5218, size: 64, offset: 6720)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "dev_ver", scope: !5165, file: !5017, line: 1294, baseType: !219, size: 32, offset: 6784)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5165, file: !5017, line: 1297, baseType: !296, offset: 6816)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5165, file: !5017, line: 1299, baseType: !5015, size: 64, offset: 6848)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "setup_buf", scope: !5165, file: !5017, line: 1301, baseType: !5418, size: 64, offset: 6912)
!5418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5234, size: 64)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !5165, file: !5017, line: 1302, baseType: !1981, size: 64, offset: 6976)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "zlp_buf", scope: !5165, file: !5017, line: 1303, baseType: !203, size: 64, offset: 7040)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "ep0_stage", scope: !5165, file: !5017, line: 1305, baseType: !1094, size: 8, offset: 7104)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "ep0_data_dir", scope: !5165, file: !5017, line: 1306, baseType: !215, size: 32, offset: 7136)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !5165, file: !5017, line: 1308, baseType: !5424, size: 2048, offset: 7168)
!5424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5425, size: 2048, elements: !1172)
!5425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5426, size: 64)
!5426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdns3_endpoint", file: !5017, line: 1134, size: 2048, elements: !5427)
!5427 = !{!5428, !5429, !5430, !5431, !5432, !5433, !5440, !5441, !5442, !5443, !5444, !5466, !5467, !5468, !5469, !5470, !5471, !5472, !5473, !5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5487}
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !5426, file: !5017, line: 1135, baseType: !5259, size: 576)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "pending_req_list", scope: !5426, file: !5017, line: 1136, baseType: !283, size: 128, offset: 576)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_req_list", scope: !5426, file: !5017, line: 1137, baseType: !283, size: 128, offset: 704)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "wa2_descmiss_req_list", scope: !5426, file: !5017, line: 1138, baseType: !283, size: 128, offset: 832)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "wa2_counter", scope: !5426, file: !5017, line: 1139, baseType: !215, size: 32, offset: 960)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "trb_pool", scope: !5426, file: !5017, line: 1141, baseType: !5434, size: 64, offset: 1024)
!5434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5435, size: 64)
!5435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdns3_trb", file: !5017, line: 1004, size: 96, elements: !5436)
!5436 = !{!5437, !5438, !5439}
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5435, file: !5017, line: 1005, baseType: !5020, size: 32)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5435, file: !5017, line: 1006, baseType: !5020, size: 32, offset: 32)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !5435, file: !5017, line: 1007, baseType: !5020, size: 32, offset: 64)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "trb_pool_dma", scope: !5426, file: !5017, line: 1142, baseType: !1981, size: 64, offset: 1088)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "cdns3_dev", scope: !5426, file: !5017, line: 1144, baseType: !5164, size: 64, offset: 1152)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5426, file: !5017, line: 1145, baseType: !4968, size: 160, offset: 1216)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5426, file: !5017, line: 1163, baseType: !219, size: 32, offset: 1376)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "descmis_req", scope: !5426, file: !5017, line: 1165, baseType: !5445, size: 64, offset: 1408)
!5445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5446, size: 64)
!5446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdns3_request", file: !5017, line: 1227, size: 1280, elements: !5447)
!5447 = !{!5448, !5449, !5450, !5451, !5452, !5453, !5462, !5463, !5464, !5465}
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !5446, file: !5017, line: 1228, baseType: !5297, size: 768)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "priv_ep", scope: !5446, file: !5017, line: 1229, baseType: !5425, size: 64, offset: 768)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "trb", scope: !5446, file: !5017, line: 1230, baseType: !5434, size: 64, offset: 832)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "start_trb", scope: !5446, file: !5017, line: 1231, baseType: !215, size: 32, offset: 896)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "end_trb", scope: !5446, file: !5017, line: 1232, baseType: !215, size: 32, offset: 928)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "aligned_buf", scope: !5446, file: !5017, line: 1233, baseType: !5454, size: 64, offset: 960)
!5454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5455, size: 64)
!5455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdns3_aligned_buf", file: !5017, line: 1204, size: 320, elements: !5456)
!5456 = !{!5457, !5458, !5459, !5460, !5461}
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5455, file: !5017, line: 1205, baseType: !203, size: 64)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5455, file: !5017, line: 1206, baseType: !1981, size: 64, offset: 64)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5455, file: !5017, line: 1207, baseType: !219, size: 32, offset: 128)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5455, file: !5017, line: 1208, baseType: !7, size: 1, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5455, file: !5017, line: 1209, baseType: !283, size: 128, offset: 192)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5446, file: !5017, line: 1239, baseType: !219, size: 32, offset: 1024)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5446, file: !5017, line: 1240, baseType: !283, size: 128, offset: 1088)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "finished_trb", scope: !5446, file: !5017, line: 1241, baseType: !215, size: 32, offset: 1216)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "num_of_trb", scope: !5446, file: !5017, line: 1242, baseType: !215, size: 32, offset: 1248)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5426, file: !5017, line: 1167, baseType: !1094, size: 8, offset: 1472)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5426, file: !5017, line: 1168, baseType: !1094, size: 8, offset: 1480)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5426, file: !5017, line: 1169, baseType: !1094, size: 8, offset: 1488)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !5426, file: !5017, line: 1170, baseType: !215, size: 32, offset: 1504)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "free_trbs", scope: !5426, file: !5017, line: 1172, baseType: !215, size: 32, offset: 1536)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "num_trbs", scope: !5426, file: !5017, line: 1173, baseType: !215, size: 32, offset: 1568)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_ring_size", scope: !5426, file: !5017, line: 1174, baseType: !215, size: 32, offset: 1600)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "pcs", scope: !5426, file: !5017, line: 1175, baseType: !1094, size: 8, offset: 1632)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "ccs", scope: !5426, file: !5017, line: 1176, baseType: !1094, size: 8, offset: 1640)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "enqueue", scope: !5426, file: !5017, line: 1177, baseType: !215, size: 32, offset: 1664)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "dequeue", scope: !5426, file: !5017, line: 1178, baseType: !215, size: 32, offset: 1696)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "trb_burst_size", scope: !5426, file: !5017, line: 1179, baseType: !1094, size: 8, offset: 1728)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "wa1_set", scope: !5426, file: !5017, line: 1181, baseType: !7, size: 1, offset: 1736, flags: DIFlagBitField, extraData: i64 1736)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "wa1_trb", scope: !5426, file: !5017, line: 1182, baseType: !5434, size: 64, offset: 1792)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "wa1_trb_index", scope: !5426, file: !5017, line: 1183, baseType: !7, size: 32, offset: 1856)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "wa1_cycle_bit", scope: !5426, file: !5017, line: 1184, baseType: !7, size: 1, offset: 1888, flags: DIFlagBitField, extraData: i64 1888)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "use_streams", scope: !5426, file: !5017, line: 1187, baseType: !7, size: 1, offset: 1889, flags: DIFlagBitField, extraData: i64 1888)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "prime_flag", scope: !5426, file: !5017, line: 1188, baseType: !7, size: 1, offset: 1890, flags: DIFlagBitField, extraData: i64 1888)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "ep_sts_pending", scope: !5426, file: !5017, line: 1189, baseType: !219, size: 32, offset: 1920)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "last_stream_id", scope: !5426, file: !5017, line: 1190, baseType: !973, size: 16, offset: 1952)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "pending_tdl", scope: !5426, file: !5017, line: 1191, baseType: !973, size: 16, offset: 1968)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "stream_sg_idx", scope: !5426, file: !5017, line: 1192, baseType: !7, size: 32, offset: 1984)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "aligned_buf_list", scope: !5165, file: !5017, line: 1310, baseType: !283, size: 128, offset: 9216)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "aligned_buf_wq", scope: !5165, file: !5017, line: 1311, baseType: !1147, size: 256, offset: 9344)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "selected_ep", scope: !5165, file: !5017, line: 1313, baseType: !219, size: 32, offset: 9600)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "isoch_delay", scope: !5165, file: !5017, line: 1314, baseType: !973, size: 16, offset: 9632)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_setup", scope: !5165, file: !5017, line: 1316, baseType: !7, size: 1, offset: 9648, flags: DIFlagBitField, extraData: i64 9648)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "u1_allowed", scope: !5165, file: !5017, line: 1317, baseType: !7, size: 1, offset: 9649, flags: DIFlagBitField, extraData: i64 9648)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "u2_allowed", scope: !5165, file: !5017, line: 1318, baseType: !7, size: 1, offset: 9650, flags: DIFlagBitField, extraData: i64 9648)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "is_selfpowered", scope: !5165, file: !5017, line: 1319, baseType: !7, size: 1, offset: 9651, flags: DIFlagBitField, extraData: i64 9648)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "setup_pending", scope: !5165, file: !5017, line: 1320, baseType: !7, size: 1, offset: 9652, flags: DIFlagBitField, extraData: i64 9648)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "hw_configured_flag", scope: !5165, file: !5017, line: 1321, baseType: !7, size: 1, offset: 9653, flags: DIFlagBitField, extraData: i64 9648)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "wake_up_flag", scope: !5165, file: !5017, line: 1322, baseType: !7, size: 1, offset: 9654, flags: DIFlagBitField, extraData: i64 9648)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "status_completion_no_call", scope: !5165, file: !5017, line: 1323, baseType: !7, size: 1, offset: 9655, flags: DIFlagBitField, extraData: i64 9648)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "using_streams", scope: !5165, file: !5017, line: 1324, baseType: !7, size: 1, offset: 9656, flags: DIFlagBitField, extraData: i64 9648)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "out_mem_is_allocated", scope: !5165, file: !5017, line: 1325, baseType: !215, size: 32, offset: 9664)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "pending_status_wq", scope: !5165, file: !5017, line: 1327, baseType: !1147, size: 256, offset: 9728)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "pending_status_request", scope: !5165, file: !5017, line: 1328, baseType: !5296, size: 64, offset: 9984)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "onchip_buffers", scope: !5165, file: !5017, line: 1331, baseType: !973, size: 16, offset: 10048)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "onchip_used_size", scope: !5165, file: !5017, line: 1332, baseType: !973, size: 16, offset: 10064)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_phy", scope: !5007, file: !5008, line: 99, baseType: !5507, size: 64, offset: 2496)
!5507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5508, size: 64)
!5508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy", file: !156, line: 138, size: 6144, elements: !5509)
!5509 = !{!5510, !5511, !5512, !5588, !5589, !5590, !5591, !5597}
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5508, file: !156, line: 139, baseType: !275, size: 5568)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5508, file: !156, line: 140, baseType: !215, size: 32, offset: 5568)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5508, file: !156, line: 141, baseType: !5513, size: 64, offset: 5632)
!5513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5514, size: 64)
!5514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5515)
!5515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_ops", file: !156, line: 72, size: 704, elements: !5516)
!5516 = !{!5517, !5521, !5522, !5523, !5524, !5528, !5577, !5581, !5582, !5583, !5587}
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5515, file: !156, line: 73, baseType: !5518, size: 64)
!5518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5519, size: 64)
!5519 = !DISubroutineType(types: !5520)
!5520 = !{!215, !5507}
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !5515, file: !156, line: 74, baseType: !5518, size: 64, offset: 64)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "power_on", scope: !5515, file: !156, line: 75, baseType: !5518, size: 64, offset: 128)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "power_off", scope: !5515, file: !156, line: 76, baseType: !5518, size: 64, offset: 192)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "set_mode", scope: !5515, file: !156, line: 77, baseType: !5525, size: 64, offset: 256)
!5525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5526, size: 64)
!5526 = !DISubroutineType(types: !5527)
!5527 = !{!215, !5507, !155, !215}
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !5515, file: !156, line: 89, baseType: !5529, size: 64, offset: 320)
!5529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5530, size: 64)
!5530 = !DISubroutineType(types: !5531)
!5531 = !{!215, !5507, !5532}
!5532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5533, size: 64)
!5533 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "phy_configure_opts", file: !156, line: 55, size: 896, elements: !5534)
!5534 = !{!5535, !5564}
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "mipi_dphy", scope: !5533, file: !156, line: 56, baseType: !5536, size: 896)
!5536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_configure_opts_mipi_dphy", file: !5537, line: 15, size: 896, elements: !5538)
!5537 = !DIFile(filename: "./include/linux/phy/phy-mipi-dphy.h", directory: "/home/lizy2001/genbc/linux")
!5538 = !{!5539, !5540, !5541, !5542, !5543, !5544, !5545, !5546, !5547, !5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5556, !5557, !5558, !5559, !5560, !5561, !5562, !5563}
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "clk_miss", scope: !5536, file: !5537, line: 24, baseType: !7, size: 32)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "clk_post", scope: !5536, file: !5537, line: 36, baseType: !7, size: 32, offset: 32)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "clk_pre", scope: !5536, file: !5537, line: 47, baseType: !7, size: 32, offset: 64)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "clk_prepare", scope: !5536, file: !5537, line: 59, baseType: !7, size: 32, offset: 96)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "clk_settle", scope: !5536, file: !5537, line: 71, baseType: !7, size: 32, offset: 128)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "clk_term_en", scope: !5536, file: !5537, line: 81, baseType: !7, size: 32, offset: 160)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "clk_trail", scope: !5536, file: !5537, line: 92, baseType: !7, size: 32, offset: 192)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "clk_zero", scope: !5536, file: !5537, line: 100, baseType: !7, size: 32, offset: 224)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "d_term_en", scope: !5536, file: !5537, line: 110, baseType: !7, size: 32, offset: 256)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "eot", scope: !5536, file: !5537, line: 121, baseType: !7, size: 32, offset: 288)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "hs_exit", scope: !5536, file: !5537, line: 131, baseType: !7, size: 32, offset: 320)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "hs_prepare", scope: !5536, file: !5537, line: 143, baseType: !7, size: 32, offset: 352)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "hs_settle", scope: !5536, file: !5537, line: 155, baseType: !7, size: 32, offset: 384)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "hs_skip", scope: !5536, file: !5537, line: 168, baseType: !7, size: 32, offset: 416)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "hs_trail", scope: !5536, file: !5537, line: 180, baseType: !7, size: 32, offset: 448)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "hs_zero", scope: !5536, file: !5537, line: 188, baseType: !7, size: 32, offset: 480)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5536, file: !5537, line: 198, baseType: !7, size: 32, offset: 512)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "lpx", scope: !5536, file: !5537, line: 208, baseType: !7, size: 32, offset: 544)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "ta_get", scope: !5536, file: !5537, line: 219, baseType: !7, size: 32, offset: 576)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "ta_go", scope: !5536, file: !5537, line: 230, baseType: !7, size: 32, offset: 608)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "ta_sure", scope: !5536, file: !5537, line: 242, baseType: !7, size: 32, offset: 640)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5536, file: !5537, line: 253, baseType: !7, size: 32, offset: 672)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "hs_clk_rate", scope: !5536, file: !5537, line: 260, baseType: !202, size: 64, offset: 704)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "lp_clk_rate", scope: !5536, file: !5537, line: 267, baseType: !202, size: 64, offset: 768)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !5536, file: !5537, line: 275, baseType: !481, size: 8, offset: 832)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !5533, file: !156, line: 57, baseType: !5565, size: 352)
!5565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_configure_opts_dp", file: !5566, line: 17, size: 352, elements: !5567)
!5566 = !DIFile(filename: "./include/linux/phy/phy-dp.h", directory: "/home/lizy2001/genbc/linux")
!5567 = !{!5568, !5569, !5570, !5572, !5573, !5574, !5575, !5576}
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "link_rate", scope: !5565, file: !5566, line: 25, baseType: !7, size: 32)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !5565, file: !5566, line: 35, baseType: !7, size: 32, offset: 32)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !5565, file: !5566, line: 46, baseType: !5571, size: 128, offset: 64)
!5571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !1361)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "pre", scope: !5565, file: !5566, line: 56, baseType: !5571, size: 128, offset: 192)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "ssc", scope: !5565, file: !5566, line: 64, baseType: !1094, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !5565, file: !5566, line: 73, baseType: !1094, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "set_lanes", scope: !5565, file: !5566, line: 82, baseType: !1094, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltages", scope: !5565, file: !5566, line: 92, baseType: !1094, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !5515, file: !156, line: 107, baseType: !5578, size: 64, offset: 384)
!5578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5579, size: 64)
!5579 = !DISubroutineType(types: !5580)
!5580 = !{!215, !5507, !155, !215, !5532}
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5515, file: !156, line: 109, baseType: !5518, size: 64, offset: 448)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "calibrate", scope: !5515, file: !156, line: 110, baseType: !5518, size: 64, offset: 512)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5515, file: !156, line: 111, baseType: !5584, size: 64, offset: 576)
!5584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5585, size: 64)
!5585 = !DISubroutineType(types: !5586)
!5586 = !{null, !5507}
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5515, file: !156, line: 112, baseType: !197, size: 64, offset: 640)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5508, file: !156, line: 142, baseType: !788, size: 192, offset: 5696)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "init_count", scope: !5508, file: !156, line: 143, baseType: !215, size: 32, offset: 5888)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "power_count", scope: !5508, file: !156, line: 144, baseType: !215, size: 32, offset: 5920)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !5508, file: !156, line: 145, baseType: !5592, size: 96, offset: 5952)
!5592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_attrs", file: !156, line: 121, size: 96, elements: !5593)
!5593 = !{!5594, !5595, !5596}
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "bus_width", scope: !5592, file: !156, line: 122, baseType: !219, size: 32)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "max_link_rate", scope: !5592, file: !156, line: 123, baseType: !219, size: 32, offset: 32)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5592, file: !156, line: 124, baseType: !155, size: 32, offset: 64)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "pwr", scope: !5508, file: !156, line: 146, baseType: !5598, size: 64, offset: 6080)
!5598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5599, size: 64)
!5599 = !DICompositeType(tag: DW_TAG_structure_type, name: "regulator", file: !5600, line: 155, flags: DIFlagFwdDecl)
!5600 = !DIFile(filename: "./include/linux/regulator/consumer.h", directory: "/home/lizy2001/genbc/linux")
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_phy", scope: !5007, file: !5008, line: 100, baseType: !5507, size: 64, offset: 2560)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5007, file: !5008, line: 102, baseType: !788, size: 192, offset: 2624)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "dr_mode", scope: !5007, file: !5008, line: 103, baseType: !178, size: 32, offset: 2816)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "role_sw", scope: !5007, file: !5008, line: 104, baseType: !5605, size: 64, offset: 2880)
!5605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5606, size: 64)
!5606 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_role_switch", file: !129, line: 8, flags: DIFlagFwdDecl)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "in_lpm", scope: !5007, file: !5008, line: 105, baseType: !272, size: 8, offset: 2944)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_pending", scope: !5007, file: !5008, line: 106, baseType: !272, size: 8, offset: 2952)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "pdata", scope: !5007, file: !5008, line: 107, baseType: !5610, size: 64, offset: 3008)
!5610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5611, size: 64)
!5611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdns3_platform_data", file: !5008, line: 42, size: 64, elements: !5612)
!5612 = !{!5613}
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "platform_suspend", scope: !5611, file: !5008, line: 43, baseType: !5614, size: 64)
!5614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5615, size: 64)
!5615 = !DISubroutineType(types: !5616)
!5616 = !{!215, !1734, !272, !272}
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5007, file: !5008, line: 108, baseType: !296, offset: 3072)
!5618 = !DILocalVariable(name: "cdns", arg: 1, scope: !5003, file: !3, line: 278, type: !5006)
!5619 = !DILocation(line: 278, column: 40, scope: !5003)
!5620 = !DILocalVariable(name: "real_role", scope: !5003, file: !3, line: 280, type: !128)
!5621 = !DILocation(line: 280, column: 16, scope: !5003)
!5622 = !DILocalVariable(name: "current_role", scope: !5003, file: !3, line: 280, type: !128)
!5623 = !DILocation(line: 280, column: 27, scope: !5003)
!5624 = !DILocalVariable(name: "ret", scope: !5003, file: !3, line: 281, type: !215)
!5625 = !DILocation(line: 281, column: 6, scope: !5003)
!5626 = !DILocation(line: 284, column: 6, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5003, file: !3, line: 284, column: 6)
!5628 = !DILocation(line: 284, column: 12, scope: !5627)
!5629 = !DILocation(line: 284, column: 6, scope: !5003)
!5630 = !DILocation(line: 285, column: 3, scope: !5627)
!5631 = !DILocation(line: 287, column: 22, scope: !5003)
!5632 = !DILocation(line: 287, column: 28, scope: !5003)
!5633 = !DILocation(line: 287, column: 2, scope: !5003)
!5634 = !DILocation(line: 289, column: 17, scope: !5003)
!5635 = !DILocation(line: 289, column: 23, scope: !5003)
!5636 = !DILocation(line: 289, column: 15, scope: !5003)
!5637 = !DILocation(line: 290, column: 42, scope: !5003)
!5638 = !DILocation(line: 290, column: 14, scope: !5003)
!5639 = !DILocation(line: 290, column: 12, scope: !5003)
!5640 = !DILocation(line: 293, column: 6, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5003, file: !3, line: 293, column: 6)
!5642 = !DILocation(line: 293, column: 22, scope: !5641)
!5643 = !DILocation(line: 293, column: 19, scope: !5641)
!5644 = !DILocation(line: 293, column: 6, scope: !5003)
!5645 = !DILocation(line: 294, column: 3, scope: !5641)
!5646 = !DILocation(line: 296, column: 18, scope: !5003)
!5647 = !DILocation(line: 296, column: 2, scope: !5003)
!5648 = !DILocation(line: 300, column: 25, scope: !5003)
!5649 = !DILocation(line: 300, column: 31, scope: !5003)
!5650 = !DILocation(line: 300, column: 8, scope: !5003)
!5651 = !DILocation(line: 300, column: 6, scope: !5003)
!5652 = !DILocation(line: 301, column: 6, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5003, file: !3, line: 301, column: 6)
!5654 = !DILocation(line: 301, column: 6, scope: !5003)
!5655 = !DILocation(line: 303, column: 3, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 301, column: 11)
!5657 = !DILocation(line: 305, column: 26, scope: !5656)
!5658 = !DILocation(line: 305, column: 32, scope: !5656)
!5659 = !DILocation(line: 305, column: 9, scope: !5656)
!5660 = !DILocation(line: 305, column: 7, scope: !5656)
!5661 = !DILocation(line: 306, column: 7, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5656, file: !3, line: 306, column: 7)
!5663 = !DILocation(line: 306, column: 7, scope: !5656)
!5664 = !DILocation(line: 307, column: 4, scope: !5662)
!5665 = !DILocation(line: 309, column: 2, scope: !5656)
!5666 = !DILabel(scope: !5003, name: "exit", file: !3, line: 310)
!5667 = !DILocation(line: 310, column: 1, scope: !5003)
!5668 = !DILocation(line: 311, column: 22, scope: !5003)
!5669 = !DILocation(line: 311, column: 28, scope: !5003)
!5670 = !DILocation(line: 311, column: 2, scope: !5003)
!5671 = !DILocation(line: 312, column: 9, scope: !5003)
!5672 = !DILocation(line: 312, column: 2, scope: !5003)
!5673 = !DILocation(line: 313, column: 1, scope: !5003)
!5674 = distinct !DISubprogram(name: "pm_runtime_get_sync", scope: !5675, file: !5675, line: 384, type: !4520, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5675 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!5676 = !DILocalVariable(name: "dev", arg: 1, scope: !5674, file: !5675, line: 384, type: !1734)
!5677 = !DILocation(line: 384, column: 54, scope: !5674)
!5678 = !DILocation(line: 386, column: 29, scope: !5674)
!5679 = !DILocation(line: 386, column: 9, scope: !5674)
!5680 = !DILocation(line: 386, column: 2, scope: !5674)
!5681 = distinct !DISubprogram(name: "cdns3_hw_role_state_machine", scope: !3, file: !3, line: 192, type: !5682, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5682 = !DISubroutineType(types: !5683)
!5683 = !{!128, !5006}
!5684 = !DILocalVariable(name: "cdns", arg: 1, scope: !5681, file: !3, line: 192, type: !5006)
!5685 = !DILocation(line: 192, column: 64, scope: !5681)
!5686 = !DILocalVariable(name: "role", scope: !5681, file: !3, line: 194, type: !128)
!5687 = !DILocation(line: 194, column: 16, scope: !5681)
!5688 = !DILocalVariable(name: "id", scope: !5681, file: !3, line: 195, type: !215)
!5689 = !DILocation(line: 195, column: 6, scope: !5681)
!5690 = !DILocalVariable(name: "vbus", scope: !5681, file: !3, line: 195, type: !215)
!5691 = !DILocation(line: 195, column: 10, scope: !5681)
!5692 = !DILocation(line: 197, column: 6, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 197, column: 6)
!5694 = !DILocation(line: 197, column: 12, scope: !5693)
!5695 = !DILocation(line: 197, column: 20, scope: !5693)
!5696 = !DILocation(line: 197, column: 6, scope: !5681)
!5697 = !DILocation(line: 198, column: 21, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5699, file: !3, line: 198, column: 7)
!5699 = distinct !DILexicalBlock(scope: !5693, file: !3, line: 197, column: 40)
!5700 = !DILocation(line: 198, column: 7, scope: !5698)
!5701 = !DILocation(line: 198, column: 7, scope: !5699)
!5702 = !DILocation(line: 199, column: 9, scope: !5698)
!5703 = !DILocation(line: 199, column: 4, scope: !5698)
!5704 = !DILocation(line: 200, column: 23, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5699, file: !3, line: 200, column: 7)
!5706 = !DILocation(line: 200, column: 7, scope: !5705)
!5707 = !DILocation(line: 200, column: 7, scope: !5699)
!5708 = !DILocation(line: 201, column: 9, scope: !5705)
!5709 = !DILocation(line: 201, column: 4, scope: !5705)
!5710 = !DILocation(line: 203, column: 10, scope: !5699)
!5711 = !DILocation(line: 203, column: 3, scope: !5699)
!5712 = !DILocation(line: 206, column: 20, scope: !5681)
!5713 = !DILocation(line: 206, column: 7, scope: !5681)
!5714 = !DILocation(line: 206, column: 5, scope: !5681)
!5715 = !DILocation(line: 207, column: 24, scope: !5681)
!5716 = !DILocation(line: 207, column: 9, scope: !5681)
!5717 = !DILocation(line: 207, column: 7, scope: !5681)
!5718 = !DILocation(line: 215, column: 9, scope: !5681)
!5719 = !DILocation(line: 215, column: 15, scope: !5681)
!5720 = !DILocation(line: 215, column: 7, scope: !5681)
!5721 = !DILocation(line: 217, column: 10, scope: !5681)
!5722 = !DILocation(line: 217, column: 2, scope: !5681)
!5723 = !DILocation(line: 223, column: 8, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5725, file: !3, line: 223, column: 7)
!5725 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 217, column: 16)
!5726 = !DILocation(line: 223, column: 7, scope: !5725)
!5727 = !DILocation(line: 224, column: 9, scope: !5724)
!5728 = !DILocation(line: 224, column: 4, scope: !5724)
!5729 = !DILocation(line: 225, column: 12, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 225, column: 12)
!5731 = !DILocation(line: 225, column: 12, scope: !5724)
!5732 = !DILocation(line: 226, column: 9, scope: !5730)
!5733 = !DILocation(line: 226, column: 4, scope: !5730)
!5734 = !DILocation(line: 227, column: 3, scope: !5725)
!5735 = !DILocation(line: 229, column: 7, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5725, file: !3, line: 229, column: 7)
!5737 = !DILocation(line: 229, column: 7, scope: !5725)
!5738 = !DILocation(line: 230, column: 9, scope: !5736)
!5739 = !DILocation(line: 230, column: 4, scope: !5736)
!5740 = !DILocation(line: 231, column: 3, scope: !5725)
!5741 = !DILocation(line: 233, column: 8, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5725, file: !3, line: 233, column: 7)
!5743 = !DILocation(line: 233, column: 7, scope: !5725)
!5744 = !DILocation(line: 234, column: 9, scope: !5742)
!5745 = !DILocation(line: 234, column: 4, scope: !5742)
!5746 = !DILocation(line: 235, column: 3, scope: !5725)
!5747 = !DILocation(line: 240, column: 9, scope: !5681)
!5748 = !DILocation(line: 240, column: 2, scope: !5681)
!5749 = !DILocation(line: 241, column: 1, scope: !5681)
!5750 = distinct !DISubprogram(name: "cdns3_role_stop", scope: !3, file: !3, line: 56, type: !5152, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5751 = !DILocalVariable(name: "cdns", arg: 1, scope: !5750, file: !3, line: 56, type: !5006)
!5752 = !DILocation(line: 56, column: 43, scope: !5750)
!5753 = !DILocalVariable(name: "role", scope: !5750, file: !3, line: 58, type: !128)
!5754 = !DILocation(line: 58, column: 16, scope: !5750)
!5755 = !DILocation(line: 58, column: 23, scope: !5750)
!5756 = !DILocation(line: 58, column: 29, scope: !5750)
!5757 = !DILocalVariable(name: "__ret_warn_on", scope: !5758, file: !3, line: 60, type: !215)
!5758 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 60, column: 6)
!5759 = distinct !DILexicalBlock(scope: !5750, file: !3, line: 60, column: 6)
!5760 = !DILocation(line: 60, column: 6, scope: !5758)
!5761 = !DILocation(line: 60, column: 6, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5758, file: !3, line: 60, column: 6)
!5763 = !DILocation(line: 60, column: 6, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5762, file: !3, line: 60, column: 6)
!5765 = !DILocation(line: 60, column: 6, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5764, file: !3, line: 60, column: 6)
!5767 = !DILocation(line: 60, column: 6, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5764, file: !3, line: 60, column: 6)
!5769 = !{i32 -2140474452, i32 -2140474423, i32 -2140474377, i32 -2140474319, i32 -2140474265, i32 -2140474211, i32 -2140474156, i32 -2140474125}
!5770 = !DILocation(line: 60, column: 6, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5764, file: !3, line: 60, column: 6)
!5772 = !{i32 -2140473720, i32 -2140473713, i32 -2140473661, i32 -2140473630, i32 -2140473600}
!5773 = !DILocation(line: 60, column: 6, scope: !5774)
!5774 = distinct !DILexicalBlock(scope: !5764, file: !3, line: 60, column: 6)
!5775 = !DILocation(line: 60, column: 6, scope: !5759)
!5776 = !DILocation(line: 60, column: 6, scope: !5750)
!5777 = !DILocation(line: 61, column: 3, scope: !5759)
!5778 = !DILocation(line: 63, column: 6, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5750, file: !3, line: 63, column: 6)
!5780 = !DILocation(line: 63, column: 12, scope: !5779)
!5781 = !DILocation(line: 63, column: 18, scope: !5779)
!5782 = !DILocation(line: 63, column: 25, scope: !5779)
!5783 = !DILocation(line: 63, column: 31, scope: !5779)
!5784 = !DILocation(line: 63, column: 6, scope: !5750)
!5785 = !DILocation(line: 64, column: 3, scope: !5779)
!5786 = !DILocation(line: 66, column: 14, scope: !5750)
!5787 = !DILocation(line: 66, column: 20, scope: !5750)
!5788 = !DILocation(line: 66, column: 2, scope: !5750)
!5789 = !DILocation(line: 67, column: 2, scope: !5750)
!5790 = !DILocation(line: 67, column: 8, scope: !5750)
!5791 = !DILocation(line: 67, column: 14, scope: !5750)
!5792 = !DILocation(line: 67, column: 21, scope: !5750)
!5793 = !DILocation(line: 67, column: 26, scope: !5750)
!5794 = !DILocation(line: 68, column: 2, scope: !5750)
!5795 = !DILocation(line: 68, column: 8, scope: !5750)
!5796 = !DILocation(line: 68, column: 14, scope: !5750)
!5797 = !DILocation(line: 68, column: 21, scope: !5750)
!5798 = !DILocation(line: 68, column: 27, scope: !5750)
!5799 = !DILocation(line: 69, column: 16, scope: !5750)
!5800 = !DILocation(line: 69, column: 22, scope: !5750)
!5801 = !DILocation(line: 69, column: 2, scope: !5750)
!5802 = !DILocation(line: 70, column: 1, scope: !5750)
!5803 = distinct !DISubprogram(name: "cdns3_role_start", scope: !3, file: !3, line: 30, type: !5804, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5804 = !DISubroutineType(types: !5805)
!5805 = !{!215, !5006, !128}
!5806 = !DILocalVariable(name: "cdns", arg: 1, scope: !5803, file: !3, line: 30, type: !5006)
!5807 = !DILocation(line: 30, column: 43, scope: !5803)
!5808 = !DILocalVariable(name: "role", arg: 2, scope: !5803, file: !3, line: 30, type: !128)
!5809 = !DILocation(line: 30, column: 63, scope: !5803)
!5810 = !DILocalVariable(name: "ret", scope: !5803, file: !3, line: 32, type: !215)
!5811 = !DILocation(line: 32, column: 6, scope: !5803)
!5812 = !DILocalVariable(name: "__ret_warn_on", scope: !5813, file: !3, line: 34, type: !215)
!5813 = distinct !DILexicalBlock(scope: !5814, file: !3, line: 34, column: 6)
!5814 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 34, column: 6)
!5815 = !DILocation(line: 34, column: 6, scope: !5813)
!5816 = !DILocation(line: 34, column: 6, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 34, column: 6)
!5818 = !DILocation(line: 34, column: 6, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5817, file: !3, line: 34, column: 6)
!5820 = !DILocation(line: 34, column: 6, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 34, column: 6)
!5822 = !DILocation(line: 34, column: 6, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 34, column: 6)
!5824 = !{i32 -2140475904, i32 -2140475875, i32 -2140475829, i32 -2140475771, i32 -2140475717, i32 -2140475663, i32 -2140475608, i32 -2140475577}
!5825 = !DILocation(line: 34, column: 6, scope: !5826)
!5826 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 34, column: 6)
!5827 = !{i32 -2140475172, i32 -2140475165, i32 -2140475113, i32 -2140475082, i32 -2140475052}
!5828 = !DILocation(line: 34, column: 6, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 34, column: 6)
!5830 = !DILocation(line: 34, column: 6, scope: !5814)
!5831 = !DILocation(line: 34, column: 6, scope: !5803)
!5832 = !DILocation(line: 35, column: 3, scope: !5814)
!5833 = !DILocation(line: 37, column: 14, scope: !5803)
!5834 = !DILocation(line: 37, column: 20, scope: !5803)
!5835 = !DILocation(line: 37, column: 2, scope: !5803)
!5836 = !DILocation(line: 38, column: 15, scope: !5803)
!5837 = !DILocation(line: 38, column: 2, scope: !5803)
!5838 = !DILocation(line: 38, column: 8, scope: !5803)
!5839 = !DILocation(line: 38, column: 13, scope: !5803)
!5840 = !DILocation(line: 39, column: 16, scope: !5803)
!5841 = !DILocation(line: 39, column: 22, scope: !5803)
!5842 = !DILocation(line: 39, column: 2, scope: !5803)
!5843 = !DILocation(line: 41, column: 7, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 41, column: 6)
!5845 = !DILocation(line: 41, column: 13, scope: !5844)
!5846 = !DILocation(line: 41, column: 19, scope: !5844)
!5847 = !DILocation(line: 41, column: 6, scope: !5803)
!5848 = !DILocation(line: 42, column: 3, scope: !5844)
!5849 = !DILocation(line: 44, column: 6, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 44, column: 6)
!5851 = !DILocation(line: 44, column: 12, scope: !5850)
!5852 = !DILocation(line: 44, column: 18, scope: !5850)
!5853 = !DILocation(line: 44, column: 25, scope: !5850)
!5854 = !DILocation(line: 44, column: 31, scope: !5850)
!5855 = !DILocation(line: 44, column: 6, scope: !5803)
!5856 = !DILocation(line: 45, column: 3, scope: !5850)
!5857 = !DILocation(line: 47, column: 14, scope: !5803)
!5858 = !DILocation(line: 47, column: 20, scope: !5803)
!5859 = !DILocation(line: 47, column: 2, scope: !5803)
!5860 = !DILocation(line: 48, column: 8, scope: !5803)
!5861 = !DILocation(line: 48, column: 14, scope: !5803)
!5862 = !DILocation(line: 48, column: 20, scope: !5803)
!5863 = !DILocation(line: 48, column: 27, scope: !5803)
!5864 = !DILocation(line: 48, column: 33, scope: !5803)
!5865 = !DILocation(line: 48, column: 6, scope: !5803)
!5866 = !DILocation(line: 49, column: 7, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 49, column: 6)
!5868 = !DILocation(line: 49, column: 6, scope: !5803)
!5869 = !DILocation(line: 50, column: 3, scope: !5867)
!5870 = !DILocation(line: 50, column: 9, scope: !5867)
!5871 = !DILocation(line: 50, column: 15, scope: !5867)
!5872 = !DILocation(line: 50, column: 22, scope: !5867)
!5873 = !DILocation(line: 50, column: 28, scope: !5867)
!5874 = !DILocation(line: 51, column: 16, scope: !5803)
!5875 = !DILocation(line: 51, column: 22, scope: !5803)
!5876 = !DILocation(line: 51, column: 2, scope: !5803)
!5877 = !DILocation(line: 53, column: 9, scope: !5803)
!5878 = !DILocation(line: 53, column: 2, scope: !5803)
!5879 = !DILocation(line: 54, column: 1, scope: !5803)
!5880 = distinct !DISubprogram(name: "pm_runtime_put_sync", scope: !5675, file: !5675, line: 448, type: !4520, scopeLine: 449, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5881 = !DILocalVariable(name: "dev", arg: 1, scope: !5880, file: !5675, line: 448, type: !1734)
!5882 = !DILocation(line: 448, column: 54, scope: !5880)
!5883 = !DILocation(line: 450, column: 27, scope: !5880)
!5884 = !DILocation(line: 450, column: 9, scope: !5880)
!5885 = !DILocation(line: 450, column: 2, scope: !5880)
!5886 = distinct !DISubprogram(name: "cdns3_driver_init", scope: !3, file: !3, line: 756, type: !5887, scopeLine: 756, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5887 = !DISubroutineType(types: !5888)
!5888 = !{!215}
!5889 = !DILocation(line: 756, column: 1, scope: !5886)
!5890 = distinct !DISubprogram(name: "cdns3_driver_exit", scope: !3, file: !3, line: 756, type: !227, scopeLine: 756, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5891 = !DILocation(line: 756, column: 1, scope: !5890)
!5892 = !DILocalVariable(name: "lock", arg: 1, scope: !5893, file: !5894, line: 327, type: !2124)
!5893 = distinct !DISubprogram(name: "spinlock_check", scope: !5894, file: !5894, line: 327, type: !5895, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5894 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!5895 = !DISubroutineType(types: !5896)
!5896 = !{!5897, !2124}
!5897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!5898 = !DILocation(line: 327, column: 67, scope: !5893, inlinedAt: !5899)
!5899 = distinct !DILocation(line: 568, column: 2, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 568, column: 2)
!5901 = !DILocalVariable(name: "pdev", arg: 1, scope: !4991, file: !3, line: 428, type: !265)
!5902 = !DILocation(line: 428, column: 48, scope: !4991)
!5903 = !DILocalVariable(name: "dev", scope: !4991, file: !3, line: 430, type: !1734)
!5904 = !DILocation(line: 430, column: 17, scope: !4991)
!5905 = !DILocation(line: 430, column: 24, scope: !4991)
!5906 = !DILocation(line: 430, column: 30, scope: !4991)
!5907 = !DILocalVariable(name: "res", scope: !4991, file: !3, line: 431, type: !4949)
!5908 = !DILocation(line: 431, column: 19, scope: !4991)
!5909 = !DILocalVariable(name: "cdns", scope: !4991, file: !3, line: 432, type: !5006)
!5910 = !DILocation(line: 432, column: 16, scope: !4991)
!5911 = !DILocalVariable(name: "regs", scope: !4991, file: !3, line: 433, type: !203)
!5912 = !DILocation(line: 433, column: 16, scope: !4991)
!5913 = !DILocalVariable(name: "ret", scope: !4991, file: !3, line: 434, type: !215)
!5914 = !DILocation(line: 434, column: 6, scope: !4991)
!5915 = !DILocation(line: 436, column: 34, scope: !4991)
!5916 = !DILocation(line: 436, column: 8, scope: !4991)
!5917 = !DILocation(line: 436, column: 6, scope: !4991)
!5918 = !DILocation(line: 437, column: 6, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 437, column: 6)
!5920 = !DILocation(line: 437, column: 6, scope: !4991)
!5921 = !DILocation(line: 438, column: 3, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5919, file: !3, line: 437, column: 11)
!5923 = !DILocation(line: 439, column: 10, scope: !5922)
!5924 = !DILocation(line: 439, column: 3, scope: !5922)
!5925 = !DILocation(line: 442, column: 22, scope: !4991)
!5926 = !DILocation(line: 442, column: 9, scope: !4991)
!5927 = !DILocation(line: 442, column: 7, scope: !4991)
!5928 = !DILocation(line: 443, column: 7, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 443, column: 6)
!5930 = !DILocation(line: 443, column: 6, scope: !4991)
!5931 = !DILocation(line: 444, column: 3, scope: !5929)
!5932 = !DILocation(line: 446, column: 14, scope: !4991)
!5933 = !DILocation(line: 446, column: 2, scope: !4991)
!5934 = !DILocation(line: 446, column: 8, scope: !4991)
!5935 = !DILocation(line: 446, column: 12, scope: !4991)
!5936 = !DILocation(line: 447, column: 33, scope: !4991)
!5937 = !DILocation(line: 447, column: 16, scope: !4991)
!5938 = !DILocation(line: 447, column: 2, scope: !4991)
!5939 = !DILocation(line: 447, column: 8, scope: !4991)
!5940 = !DILocation(line: 447, column: 14, scope: !4991)
!5941 = !DILocation(line: 449, column: 23, scope: !4991)
!5942 = !DILocation(line: 449, column: 29, scope: !4991)
!5943 = !DILocation(line: 449, column: 2, scope: !4991)
!5944 = !DILocation(line: 451, column: 37, scope: !4991)
!5945 = !DILocation(line: 451, column: 8, scope: !4991)
!5946 = !DILocation(line: 451, column: 6, scope: !4991)
!5947 = !DILocation(line: 452, column: 7, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 452, column: 6)
!5949 = !DILocation(line: 452, column: 6, scope: !4991)
!5950 = !DILocation(line: 453, column: 3, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5948, file: !3, line: 452, column: 12)
!5952 = !DILocation(line: 454, column: 3, scope: !5951)
!5953 = !DILocation(line: 457, column: 2, scope: !4991)
!5954 = !DILocation(line: 457, column: 8, scope: !4991)
!5955 = !DILocation(line: 457, column: 23, scope: !4991)
!5956 = !DILocation(line: 457, column: 22, scope: !4991)
!5957 = !DILocation(line: 459, column: 37, scope: !4991)
!5958 = !DILocation(line: 459, column: 8, scope: !4991)
!5959 = !DILocation(line: 459, column: 6, scope: !4991)
!5960 = !DILocation(line: 460, column: 7, scope: !5961)
!5961 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 460, column: 6)
!5962 = !DILocation(line: 460, column: 6, scope: !4991)
!5963 = !DILocation(line: 461, column: 3, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5961, file: !3, line: 460, column: 12)
!5965 = !DILocation(line: 462, column: 3, scope: !5964)
!5966 = !DILocation(line: 465, column: 2, scope: !4991)
!5967 = !DILocation(line: 465, column: 8, scope: !4991)
!5968 = !DILocation(line: 465, column: 23, scope: !4991)
!5969 = !DILocation(line: 465, column: 22, scope: !4991)
!5970 = !DILocation(line: 467, column: 42, scope: !4991)
!5971 = !DILocation(line: 467, column: 18, scope: !4991)
!5972 = !DILocation(line: 467, column: 2, scope: !4991)
!5973 = !DILocation(line: 467, column: 8, scope: !4991)
!5974 = !DILocation(line: 467, column: 16, scope: !4991)
!5975 = !DILocation(line: 468, column: 6, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 468, column: 6)
!5977 = !DILocation(line: 468, column: 12, scope: !5976)
!5978 = !DILocation(line: 468, column: 20, scope: !5976)
!5979 = !DILocation(line: 468, column: 6, scope: !4991)
!5980 = !DILocation(line: 469, column: 10, scope: !5976)
!5981 = !DILocation(line: 469, column: 16, scope: !5976)
!5982 = !DILocation(line: 469, column: 3, scope: !5976)
!5983 = !DILocation(line: 471, column: 6, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 471, column: 6)
!5985 = !DILocation(line: 471, column: 12, scope: !5984)
!5986 = !DILocation(line: 471, column: 20, scope: !5984)
!5987 = !DILocation(line: 471, column: 6, scope: !4991)
!5988 = !DILocation(line: 472, column: 3, scope: !5984)
!5989 = !DILocation(line: 474, column: 47, scope: !4991)
!5990 = !DILocation(line: 474, column: 9, scope: !4991)
!5991 = !DILocation(line: 474, column: 7, scope: !4991)
!5992 = !DILocation(line: 475, column: 13, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 475, column: 6)
!5994 = !DILocation(line: 475, column: 6, scope: !5993)
!5995 = !DILocation(line: 475, column: 6, scope: !4991)
!5996 = !DILocation(line: 476, column: 18, scope: !5993)
!5997 = !DILocation(line: 476, column: 10, scope: !5993)
!5998 = !DILocation(line: 476, column: 3, scope: !5993)
!5999 = !DILocation(line: 477, column: 19, scope: !4991)
!6000 = !DILocation(line: 477, column: 2, scope: !4991)
!6001 = !DILocation(line: 477, column: 8, scope: !4991)
!6002 = !DILocation(line: 477, column: 17, scope: !4991)
!6003 = !DILocation(line: 479, column: 42, scope: !4991)
!6004 = !DILocation(line: 479, column: 18, scope: !4991)
!6005 = !DILocation(line: 479, column: 2, scope: !4991)
!6006 = !DILocation(line: 479, column: 8, scope: !4991)
!6007 = !DILocation(line: 479, column: 16, scope: !4991)
!6008 = !DILocation(line: 480, column: 6, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 480, column: 6)
!6010 = !DILocation(line: 480, column: 12, scope: !6009)
!6011 = !DILocation(line: 480, column: 20, scope: !6009)
!6012 = !DILocation(line: 480, column: 6, scope: !4991)
!6013 = !DILocation(line: 481, column: 10, scope: !6009)
!6014 = !DILocation(line: 481, column: 16, scope: !6009)
!6015 = !DILocation(line: 481, column: 3, scope: !6009)
!6016 = !DILocation(line: 483, column: 6, scope: !6017)
!6017 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 483, column: 6)
!6018 = !DILocation(line: 483, column: 12, scope: !6017)
!6019 = !DILocation(line: 483, column: 20, scope: !6017)
!6020 = !DILocation(line: 483, column: 6, scope: !4991)
!6021 = !DILocation(line: 484, column: 3, scope: !6022)
!6022 = distinct !DILexicalBlock(scope: !6017, file: !3, line: 483, column: 25)
!6023 = !DILocation(line: 485, column: 10, scope: !6022)
!6024 = !DILocation(line: 485, column: 16, scope: !6022)
!6025 = !DILocation(line: 485, column: 3, scope: !6022)
!6026 = !DILocation(line: 488, column: 37, scope: !4991)
!6027 = !DILocation(line: 488, column: 8, scope: !4991)
!6028 = !DILocation(line: 488, column: 6, scope: !4991)
!6029 = !DILocation(line: 489, column: 7, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 489, column: 6)
!6031 = !DILocation(line: 489, column: 6, scope: !4991)
!6032 = !DILocation(line: 490, column: 3, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6030, file: !3, line: 489, column: 12)
!6034 = !DILocation(line: 491, column: 3, scope: !6033)
!6035 = !DILocation(line: 494, column: 52, scope: !4991)
!6036 = !DILocation(line: 494, column: 26, scope: !4991)
!6037 = !DILocation(line: 494, column: 2, scope: !4991)
!6038 = !DILocation(line: 494, column: 8, scope: !4991)
!6039 = !DILocation(line: 494, column: 24, scope: !4991)
!6040 = !DILocation(line: 496, column: 2, scope: !4991)
!6041 = !DILocation(line: 496, column: 8, scope: !4991)
!6042 = !DILocation(line: 496, column: 19, scope: !4991)
!6043 = !DILocation(line: 496, column: 18, scope: !4991)
!6044 = !DILocation(line: 498, column: 54, scope: !4991)
!6045 = !DILocation(line: 498, column: 21, scope: !4991)
!6046 = !DILocation(line: 498, column: 2, scope: !4991)
!6047 = !DILocation(line: 498, column: 8, scope: !4991)
!6048 = !DILocation(line: 498, column: 19, scope: !4991)
!6049 = !DILocation(line: 499, column: 6, scope: !6050)
!6050 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 499, column: 6)
!6051 = !DILocation(line: 499, column: 12, scope: !6050)
!6052 = !DILocation(line: 499, column: 23, scope: !6050)
!6053 = !DILocation(line: 499, column: 6, scope: !4991)
!6054 = !DILocation(line: 500, column: 10, scope: !6050)
!6055 = !DILocation(line: 500, column: 16, scope: !6050)
!6056 = !DILocation(line: 500, column: 3, scope: !6050)
!6057 = !DILocation(line: 501, column: 11, scope: !6058)
!6058 = distinct !DILexicalBlock(scope: !6050, file: !3, line: 501, column: 11)
!6059 = !DILocation(line: 501, column: 17, scope: !6058)
!6060 = !DILocation(line: 501, column: 28, scope: !6058)
!6061 = !DILocation(line: 501, column: 11, scope: !6050)
!6062 = !DILocation(line: 502, column: 3, scope: !6058)
!6063 = !DILocation(line: 504, column: 6, scope: !6064)
!6064 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 504, column: 6)
!6065 = !DILocation(line: 504, column: 12, scope: !6064)
!6066 = !DILocation(line: 504, column: 23, scope: !6064)
!6067 = !DILocation(line: 504, column: 6, scope: !4991)
!6068 = !DILocation(line: 506, column: 3, scope: !6069)
!6069 = distinct !DILexicalBlock(scope: !6064, file: !3, line: 504, column: 28)
!6070 = !DILocation(line: 506, column: 9, scope: !6069)
!6071 = !DILocation(line: 506, column: 20, scope: !6069)
!6072 = !DILocation(line: 507, column: 2, scope: !6069)
!6073 = !DILocation(line: 509, column: 2, scope: !4991)
!6074 = !DILocation(line: 509, column: 2, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 509, column: 2)
!6076 = !DILocation(line: 511, column: 41, scope: !4991)
!6077 = !DILocation(line: 511, column: 19, scope: !4991)
!6078 = !DILocation(line: 511, column: 2, scope: !4991)
!6079 = !DILocation(line: 511, column: 8, scope: !4991)
!6080 = !DILocation(line: 511, column: 17, scope: !4991)
!6081 = !DILocation(line: 512, column: 13, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 512, column: 6)
!6083 = !DILocation(line: 512, column: 19, scope: !6082)
!6084 = !DILocation(line: 512, column: 6, scope: !6082)
!6085 = !DILocation(line: 512, column: 6, scope: !4991)
!6086 = !DILocation(line: 513, column: 18, scope: !6082)
!6087 = !DILocation(line: 513, column: 24, scope: !6082)
!6088 = !DILocation(line: 513, column: 10, scope: !6082)
!6089 = !DILocation(line: 513, column: 3, scope: !6082)
!6090 = !DILocation(line: 515, column: 17, scope: !4991)
!6091 = !DILocation(line: 515, column: 23, scope: !4991)
!6092 = !DILocation(line: 515, column: 8, scope: !4991)
!6093 = !DILocation(line: 515, column: 6, scope: !4991)
!6094 = !DILocation(line: 516, column: 6, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 516, column: 6)
!6096 = !DILocation(line: 516, column: 6, scope: !4991)
!6097 = !DILocation(line: 517, column: 10, scope: !6095)
!6098 = !DILocation(line: 517, column: 3, scope: !6095)
!6099 = !DILocation(line: 519, column: 41, scope: !4991)
!6100 = !DILocation(line: 519, column: 19, scope: !4991)
!6101 = !DILocation(line: 519, column: 2, scope: !4991)
!6102 = !DILocation(line: 519, column: 8, scope: !4991)
!6103 = !DILocation(line: 519, column: 17, scope: !4991)
!6104 = !DILocation(line: 520, column: 13, scope: !6105)
!6105 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 520, column: 6)
!6106 = !DILocation(line: 520, column: 19, scope: !6105)
!6107 = !DILocation(line: 520, column: 6, scope: !6105)
!6108 = !DILocation(line: 520, column: 6, scope: !4991)
!6109 = !DILocation(line: 521, column: 18, scope: !6105)
!6110 = !DILocation(line: 521, column: 24, scope: !6105)
!6111 = !DILocation(line: 521, column: 10, scope: !6105)
!6112 = !DILocation(line: 521, column: 3, scope: !6105)
!6113 = !DILocation(line: 523, column: 17, scope: !4991)
!6114 = !DILocation(line: 523, column: 23, scope: !4991)
!6115 = !DILocation(line: 523, column: 8, scope: !4991)
!6116 = !DILocation(line: 523, column: 6, scope: !4991)
!6117 = !DILocation(line: 524, column: 6, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 524, column: 6)
!6119 = !DILocation(line: 524, column: 6, scope: !4991)
!6120 = !DILocation(line: 525, column: 3, scope: !6118)
!6121 = !DILocation(line: 527, column: 25, scope: !4991)
!6122 = !DILocation(line: 527, column: 8, scope: !4991)
!6123 = !DILocation(line: 527, column: 6, scope: !4991)
!6124 = !DILocation(line: 528, column: 6, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 528, column: 6)
!6126 = !DILocation(line: 528, column: 6, scope: !4991)
!6127 = !DILocation(line: 529, column: 3, scope: !6125)
!6128 = !DILocation(line: 531, column: 32, scope: !6129)
!6129 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 531, column: 6)
!6130 = !DILocation(line: 531, column: 6, scope: !6129)
!6131 = !DILocation(line: 531, column: 6, scope: !4991)
!6132 = !DILocalVariable(name: "sw_desc", scope: !6133, file: !3, line: 532, type: !6134)
!6133 = distinct !DILexicalBlock(scope: !6129, file: !3, line: 531, column: 57)
!6134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_role_switch_desc", file: !129, line: 38, size: 576, elements: !6135)
!6135 = !{!6136, !6137, !6138, !6139, !6140, !6145, !6150, !6151, !6152}
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !6134, file: !129, line: 39, baseType: !4795, size: 64)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_port", scope: !6134, file: !129, line: 40, baseType: !1734, size: 64, offset: 64)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_port", scope: !6134, file: !129, line: 41, baseType: !1734, size: 64, offset: 128)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "udc", scope: !6134, file: !129, line: 42, baseType: !1734, size: 64, offset: 192)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !6134, file: !129, line: 43, baseType: !6141, size: 64, offset: 256)
!6141 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_role_switch_set_t", file: !129, line: 16, baseType: !6142)
!6142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6143, size: 64)
!6143 = !DISubroutineType(types: !6144)
!6144 = !{!215, !5605, !128}
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !6134, file: !129, line: 44, baseType: !6146, size: 64, offset: 320)
!6146 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_role_switch_get_t", file: !129, line: 18, baseType: !6147)
!6147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6148, size: 64)
!6148 = !DISubroutineType(types: !6149)
!6149 = !{!128, !5605}
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "allow_userspace_control", scope: !6134, file: !129, line: 45, baseType: !272, size: 8, offset: 384)
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !6134, file: !129, line: 46, baseType: !203, size: 64, offset: 448)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6134, file: !129, line: 47, baseType: !269, size: 64, offset: 512)
!6153 = !DILocation(line: 532, column: 31, scope: !6133)
!6154 = !DILocation(line: 534, column: 11, scope: !6133)
!6155 = !DILocation(line: 534, column: 15, scope: !6133)
!6156 = !DILocation(line: 535, column: 11, scope: !6133)
!6157 = !DILocation(line: 535, column: 15, scope: !6133)
!6158 = !DILocation(line: 536, column: 11, scope: !6133)
!6159 = !DILocation(line: 536, column: 35, scope: !6133)
!6160 = !DILocation(line: 537, column: 25, scope: !6133)
!6161 = !DILocation(line: 537, column: 11, scope: !6133)
!6162 = !DILocation(line: 537, column: 23, scope: !6133)
!6163 = !DILocation(line: 538, column: 20, scope: !6133)
!6164 = !DILocation(line: 538, column: 25, scope: !6133)
!6165 = !DILocation(line: 538, column: 11, scope: !6133)
!6166 = !DILocation(line: 538, column: 18, scope: !6133)
!6167 = !DILocation(line: 540, column: 44, scope: !6133)
!6168 = !DILocation(line: 540, column: 19, scope: !6133)
!6169 = !DILocation(line: 540, column: 3, scope: !6133)
!6170 = !DILocation(line: 540, column: 9, scope: !6133)
!6171 = !DILocation(line: 540, column: 17, scope: !6133)
!6172 = !DILocation(line: 541, column: 14, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6133, file: !3, line: 541, column: 7)
!6174 = !DILocation(line: 541, column: 20, scope: !6173)
!6175 = !DILocation(line: 541, column: 7, scope: !6173)
!6176 = !DILocation(line: 541, column: 7, scope: !6133)
!6177 = !DILocation(line: 542, column: 18, scope: !6178)
!6178 = distinct !DILexicalBlock(scope: !6173, file: !3, line: 541, column: 30)
!6179 = !DILocation(line: 542, column: 24, scope: !6178)
!6180 = !DILocation(line: 542, column: 10, scope: !6178)
!6181 = !DILocation(line: 542, column: 8, scope: !6178)
!6182 = !DILocation(line: 543, column: 4, scope: !6178)
!6183 = !DILocation(line: 544, column: 4, scope: !6178)
!6184 = !DILocation(line: 546, column: 2, scope: !6133)
!6185 = !DILocation(line: 548, column: 6, scope: !6186)
!6186 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 548, column: 6)
!6187 = !DILocation(line: 548, column: 12, scope: !6186)
!6188 = !DILocation(line: 548, column: 6, scope: !4991)
!6189 = !DILocation(line: 549, column: 26, scope: !6190)
!6190 = distinct !DILexicalBlock(scope: !6186, file: !3, line: 548, column: 24)
!6191 = !DILocation(line: 549, column: 32, scope: !6190)
!6192 = !DILocation(line: 549, column: 37, scope: !6190)
!6193 = !DILocation(line: 549, column: 43, scope: !6190)
!6194 = !DILocation(line: 552, column: 16, scope: !6190)
!6195 = !DILocation(line: 552, column: 22, scope: !6190)
!6196 = !DILocation(line: 552, column: 7, scope: !6190)
!6197 = !DILocation(line: 552, column: 28, scope: !6190)
!6198 = !DILocation(line: 549, column: 9, scope: !6190)
!6199 = !DILocation(line: 549, column: 7, scope: !6190)
!6200 = !DILocation(line: 554, column: 7, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6190, file: !3, line: 554, column: 7)
!6202 = !DILocation(line: 554, column: 7, scope: !6190)
!6203 = !DILocation(line: 555, column: 4, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6201, file: !3, line: 554, column: 12)
!6205 = !DILocation(line: 556, column: 4, scope: !6204)
!6206 = !DILocation(line: 558, column: 2, scope: !6190)
!6207 = !DILocation(line: 560, column: 23, scope: !4991)
!6208 = !DILocation(line: 560, column: 8, scope: !4991)
!6209 = !DILocation(line: 560, column: 6, scope: !4991)
!6210 = !DILocation(line: 561, column: 6, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 561, column: 6)
!6212 = !DILocation(line: 561, column: 6, scope: !4991)
!6213 = !DILocation(line: 562, column: 3, scope: !6211)
!6214 = !DILocation(line: 564, column: 29, scope: !4991)
!6215 = !DILocation(line: 564, column: 8, scope: !4991)
!6216 = !DILocation(line: 564, column: 6, scope: !4991)
!6217 = !DILocation(line: 565, column: 6, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 565, column: 6)
!6219 = !DILocation(line: 565, column: 6, scope: !4991)
!6220 = !DILocation(line: 566, column: 3, scope: !6218)
!6221 = !DILocation(line: 568, column: 2, scope: !4991)
!6222 = !DILocation(line: 568, column: 2, scope: !5900)
!6223 = !DILocation(line: 329, column: 10, scope: !5893, inlinedAt: !5899)
!6224 = !DILocation(line: 329, column: 16, scope: !5893, inlinedAt: !5899)
!6225 = !DILocation(line: 569, column: 28, scope: !4991)
!6226 = !DILocation(line: 569, column: 2, scope: !4991)
!6227 = !DILocation(line: 570, column: 24, scope: !4991)
!6228 = !DILocation(line: 570, column: 2, scope: !4991)
!6229 = !DILocation(line: 571, column: 20, scope: !4991)
!6230 = !DILocation(line: 571, column: 2, scope: !4991)
!6231 = !DILocation(line: 572, column: 20, scope: !4991)
!6232 = !DILocation(line: 572, column: 2, scope: !4991)
!6233 = !DILocation(line: 579, column: 35, scope: !4991)
!6234 = !DILocation(line: 579, column: 2, scope: !4991)
!6235 = !DILocation(line: 580, column: 28, scope: !4991)
!6236 = !DILocation(line: 580, column: 2, scope: !4991)
!6237 = !DILocation(line: 581, column: 29, scope: !4991)
!6238 = !DILocation(line: 581, column: 2, scope: !4991)
!6239 = !DILocation(line: 584, column: 2, scope: !4991)
!6240 = !DILabel(scope: !4991, name: "err4", file: !3, line: 585)
!6241 = !DILocation(line: 585, column: 1, scope: !4991)
!6242 = !DILocation(line: 586, column: 17, scope: !4991)
!6243 = !DILocation(line: 586, column: 2, scope: !4991)
!6244 = !DILocation(line: 587, column: 6, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 587, column: 6)
!6246 = !DILocation(line: 587, column: 12, scope: !6245)
!6247 = !DILocation(line: 587, column: 6, scope: !4991)
!6248 = !DILocation(line: 588, column: 30, scope: !6245)
!6249 = !DILocation(line: 588, column: 36, scope: !6245)
!6250 = !DILocation(line: 588, column: 3, scope: !6245)
!6251 = !DILabel(scope: !4991, name: "err3", file: !3, line: 589)
!6252 = !DILocation(line: 589, column: 1, scope: !4991)
!6253 = !DILocation(line: 590, column: 20, scope: !4991)
!6254 = !DILocation(line: 590, column: 2, scope: !4991)
!6255 = !DILabel(scope: !4991, name: "err2", file: !3, line: 591)
!6256 = !DILocation(line: 591, column: 1, scope: !4991)
!6257 = !DILocation(line: 592, column: 11, scope: !4991)
!6258 = !DILocation(line: 592, column: 17, scope: !4991)
!6259 = !DILocation(line: 592, column: 2, scope: !4991)
!6260 = !DILabel(scope: !4991, name: "err1", file: !3, line: 593)
!6261 = !DILocation(line: 593, column: 1, scope: !4991)
!6262 = !DILocation(line: 594, column: 11, scope: !4991)
!6263 = !DILocation(line: 594, column: 17, scope: !4991)
!6264 = !DILocation(line: 594, column: 2, scope: !4991)
!6265 = !DILocation(line: 596, column: 9, scope: !4991)
!6266 = !DILocation(line: 596, column: 2, scope: !4991)
!6267 = !DILocation(line: 597, column: 1, scope: !4991)
!6268 = distinct !DISubprogram(name: "cdns3_remove", scope: !3, file: !3, line: 605, type: !263, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6269 = !DILocalVariable(name: "pdev", arg: 1, scope: !6268, file: !3, line: 605, type: !265)
!6270 = !DILocation(line: 605, column: 49, scope: !6268)
!6271 = !DILocalVariable(name: "cdns", scope: !6268, file: !3, line: 607, type: !5006)
!6272 = !DILocation(line: 607, column: 16, scope: !6268)
!6273 = !DILocation(line: 607, column: 44, scope: !6268)
!6274 = !DILocation(line: 607, column: 23, scope: !6268)
!6275 = !DILocation(line: 609, column: 23, scope: !6268)
!6276 = !DILocation(line: 609, column: 29, scope: !6268)
!6277 = !DILocation(line: 609, column: 2, scope: !6268)
!6278 = !DILocation(line: 610, column: 22, scope: !6268)
!6279 = !DILocation(line: 610, column: 28, scope: !6268)
!6280 = !DILocation(line: 610, column: 2, scope: !6268)
!6281 = !DILocation(line: 611, column: 25, scope: !6268)
!6282 = !DILocation(line: 611, column: 31, scope: !6268)
!6283 = !DILocation(line: 611, column: 2, scope: !6268)
!6284 = !DILocation(line: 612, column: 19, scope: !6268)
!6285 = !DILocation(line: 612, column: 2, scope: !6268)
!6286 = !DILocation(line: 613, column: 29, scope: !6268)
!6287 = !DILocation(line: 613, column: 35, scope: !6268)
!6288 = !DILocation(line: 613, column: 2, scope: !6268)
!6289 = !DILocation(line: 614, column: 20, scope: !6268)
!6290 = !DILocation(line: 614, column: 2, scope: !6268)
!6291 = !DILocation(line: 615, column: 11, scope: !6268)
!6292 = !DILocation(line: 615, column: 17, scope: !6268)
!6293 = !DILocation(line: 615, column: 2, scope: !6268)
!6294 = !DILocation(line: 616, column: 11, scope: !6268)
!6295 = !DILocation(line: 616, column: 17, scope: !6268)
!6296 = !DILocation(line: 616, column: 2, scope: !6268)
!6297 = !DILocation(line: 617, column: 2, scope: !6268)
!6298 = distinct !DISubprogram(name: "dma_set_mask_and_coherent", scope: !6299, file: !6299, line: 420, type: !6300, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6299 = !DIFile(filename: "./include/linux/dma-mapping.h", directory: "/home/lizy2001/genbc/linux")
!6300 = !DISubroutineType(types: !6301)
!6301 = !{!215, !1734, !207}
!6302 = !DILocalVariable(name: "dev", arg: 1, scope: !6298, file: !6299, line: 420, type: !1734)
!6303 = !DILocation(line: 420, column: 60, scope: !6298)
!6304 = !DILocalVariable(name: "mask", arg: 2, scope: !6298, file: !6299, line: 420, type: !207)
!6305 = !DILocation(line: 420, column: 69, scope: !6298)
!6306 = !DILocalVariable(name: "rc", scope: !6298, file: !6299, line: 422, type: !215)
!6307 = !DILocation(line: 422, column: 6, scope: !6298)
!6308 = !DILocation(line: 422, column: 24, scope: !6298)
!6309 = !DILocation(line: 422, column: 29, scope: !6298)
!6310 = !DILocation(line: 422, column: 11, scope: !6298)
!6311 = !DILocation(line: 423, column: 6, scope: !6312)
!6312 = distinct !DILexicalBlock(scope: !6298, file: !6299, line: 423, column: 6)
!6313 = !DILocation(line: 423, column: 9, scope: !6312)
!6314 = !DILocation(line: 423, column: 6, scope: !6298)
!6315 = !DILocation(line: 424, column: 25, scope: !6312)
!6316 = !DILocation(line: 424, column: 30, scope: !6312)
!6317 = !DILocation(line: 424, column: 3, scope: !6312)
!6318 = !DILocation(line: 425, column: 9, scope: !6298)
!6319 = !DILocation(line: 425, column: 2, scope: !6298)
!6320 = distinct !DISubprogram(name: "devm_kzalloc", scope: !115, file: !115, line: 215, type: !6321, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6321 = !DISubroutineType(types: !6322)
!6322 = !{!203, !1734, !383, !200}
!6323 = !DILocalVariable(name: "dev", arg: 1, scope: !6320, file: !115, line: 215, type: !1734)
!6324 = !DILocation(line: 215, column: 49, scope: !6320)
!6325 = !DILocalVariable(name: "size", arg: 2, scope: !6320, file: !115, line: 215, type: !383)
!6326 = !DILocation(line: 215, column: 61, scope: !6320)
!6327 = !DILocalVariable(name: "gfp", arg: 3, scope: !6320, file: !115, line: 215, type: !200)
!6328 = !DILocation(line: 215, column: 73, scope: !6320)
!6329 = !DILocation(line: 217, column: 22, scope: !6320)
!6330 = !DILocation(line: 217, column: 27, scope: !6320)
!6331 = !DILocation(line: 217, column: 33, scope: !6320)
!6332 = !DILocation(line: 217, column: 37, scope: !6320)
!6333 = !DILocation(line: 217, column: 9, scope: !6320)
!6334 = !DILocation(line: 217, column: 2, scope: !6320)
!6335 = distinct !DISubprogram(name: "dev_get_platdata", scope: !115, file: !115, line: 828, type: !6336, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6336 = !DISubroutineType(types: !6337)
!6337 = !{!203, !4819}
!6338 = !DILocalVariable(name: "dev", arg: 1, scope: !6335, file: !115, line: 828, type: !4819)
!6339 = !DILocation(line: 828, column: 59, scope: !6335)
!6340 = !DILocation(line: 830, column: 9, scope: !6335)
!6341 = !DILocation(line: 830, column: 14, scope: !6335)
!6342 = !DILocation(line: 830, column: 2, scope: !6335)
!6343 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !259, file: !259, line: 236, type: !6344, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6344 = !DISubroutineType(types: !6345)
!6345 = !{null, !265, !203}
!6346 = !DILocalVariable(name: "pdev", arg: 1, scope: !6343, file: !259, line: 236, type: !265)
!6347 = !DILocation(line: 236, column: 65, scope: !6343)
!6348 = !DILocalVariable(name: "data", arg: 2, scope: !6343, file: !259, line: 237, type: !203)
!6349 = !DILocation(line: 237, column: 12, scope: !6343)
!6350 = !DILocation(line: 239, column: 19, scope: !6343)
!6351 = !DILocation(line: 239, column: 25, scope: !6343)
!6352 = !DILocation(line: 239, column: 30, scope: !6343)
!6353 = !DILocation(line: 239, column: 2, scope: !6343)
!6354 = !DILocation(line: 240, column: 1, scope: !6343)
!6355 = distinct !DISubprogram(name: "IS_ERR", scope: !6356, file: !6356, line: 34, type: !6357, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6356 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!6357 = !DISubroutineType(types: !6358)
!6358 = !{!272, !3295}
!6359 = !DILocalVariable(name: "ptr", arg: 1, scope: !6355, file: !6356, line: 34, type: !3295)
!6360 = !DILocation(line: 34, column: 60, scope: !6355)
!6361 = !DILocation(line: 36, column: 9, scope: !6355)
!6362 = !DILocation(line: 36, column: 2, scope: !6355)
!6363 = distinct !DISubprogram(name: "PTR_ERR", scope: !6356, file: !6356, line: 29, type: !6364, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6364 = !DISubroutineType(types: !6365)
!6365 = !{!204, !3295}
!6366 = !DILocalVariable(name: "ptr", arg: 1, scope: !6363, file: !6356, line: 29, type: !3295)
!6367 = !DILocation(line: 29, column: 61, scope: !6363)
!6368 = !DILocation(line: 31, column: 16, scope: !6363)
!6369 = !DILocation(line: 31, column: 9, scope: !6363)
!6370 = !DILocation(line: 31, column: 2, scope: !6363)
!6371 = distinct !DISubprogram(name: "device_property_read_bool", scope: !6372, file: !6372, line: 123, type: !6373, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6372 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!6373 = !DISubroutineType(types: !6374)
!6374 = !{!272, !1734, !269}
!6375 = !DILocalVariable(name: "dev", arg: 1, scope: !6371, file: !6372, line: 123, type: !1734)
!6376 = !DILocation(line: 123, column: 61, scope: !6371)
!6377 = !DILocalVariable(name: "propname", arg: 2, scope: !6371, file: !6372, line: 124, type: !269)
!6378 = !DILocation(line: 124, column: 23, scope: !6371)
!6379 = !DILocation(line: 126, column: 33, scope: !6371)
!6380 = !DILocation(line: 126, column: 38, scope: !6371)
!6381 = !DILocation(line: 126, column: 9, scope: !6371)
!6382 = !DILocation(line: 126, column: 2, scope: !6371)
!6383 = distinct !DISubprogram(name: "set_phy_power_on", scope: !3, file: !3, line: 378, type: !5004, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6384 = !DILocalVariable(name: "cdns", arg: 1, scope: !6383, file: !3, line: 378, type: !5006)
!6385 = !DILocation(line: 378, column: 43, scope: !6383)
!6386 = !DILocalVariable(name: "ret", scope: !6383, file: !3, line: 380, type: !215)
!6387 = !DILocation(line: 380, column: 6, scope: !6383)
!6388 = !DILocation(line: 382, column: 21, scope: !6383)
!6389 = !DILocation(line: 382, column: 27, scope: !6383)
!6390 = !DILocation(line: 382, column: 8, scope: !6383)
!6391 = !DILocation(line: 382, column: 6, scope: !6383)
!6392 = !DILocation(line: 383, column: 6, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6383, file: !3, line: 383, column: 6)
!6394 = !DILocation(line: 383, column: 6, scope: !6383)
!6395 = !DILocation(line: 384, column: 10, scope: !6393)
!6396 = !DILocation(line: 384, column: 3, scope: !6393)
!6397 = !DILocation(line: 386, column: 21, scope: !6383)
!6398 = !DILocation(line: 386, column: 27, scope: !6383)
!6399 = !DILocation(line: 386, column: 8, scope: !6383)
!6400 = !DILocation(line: 386, column: 6, scope: !6383)
!6401 = !DILocation(line: 387, column: 6, scope: !6402)
!6402 = distinct !DILexicalBlock(scope: !6383, file: !3, line: 387, column: 6)
!6403 = !DILocation(line: 387, column: 6, scope: !6383)
!6404 = !DILocation(line: 388, column: 17, scope: !6402)
!6405 = !DILocation(line: 388, column: 23, scope: !6402)
!6406 = !DILocation(line: 388, column: 3, scope: !6402)
!6407 = !DILocation(line: 390, column: 9, scope: !6383)
!6408 = !DILocation(line: 390, column: 2, scope: !6383)
!6409 = !DILocation(line: 391, column: 1, scope: !6383)
!6410 = distinct !DISubprogram(name: "cdns3_role_set", scope: !3, file: !3, line: 338, type: !6143, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6411 = !DILocalVariable(name: "sw", arg: 1, scope: !6410, file: !3, line: 338, type: !5605)
!6412 = !DILocation(line: 338, column: 51, scope: !6410)
!6413 = !DILocalVariable(name: "role", arg: 2, scope: !6410, file: !3, line: 338, type: !128)
!6414 = !DILocation(line: 338, column: 69, scope: !6410)
!6415 = !DILocalVariable(name: "cdns", scope: !6410, file: !3, line: 340, type: !5006)
!6416 = !DILocation(line: 340, column: 16, scope: !6410)
!6417 = !DILocation(line: 340, column: 51, scope: !6410)
!6418 = !DILocation(line: 340, column: 23, scope: !6410)
!6419 = !DILocalVariable(name: "ret", scope: !6410, file: !3, line: 341, type: !215)
!6420 = !DILocation(line: 341, column: 6, scope: !6410)
!6421 = !DILocation(line: 343, column: 22, scope: !6410)
!6422 = !DILocation(line: 343, column: 28, scope: !6410)
!6423 = !DILocation(line: 343, column: 2, scope: !6410)
!6424 = !DILocation(line: 345, column: 6, scope: !6425)
!6425 = distinct !DILexicalBlock(scope: !6410, file: !3, line: 345, column: 6)
!6426 = !DILocation(line: 345, column: 12, scope: !6425)
!6427 = !DILocation(line: 345, column: 20, scope: !6425)
!6428 = !DILocation(line: 345, column: 17, scope: !6425)
!6429 = !DILocation(line: 345, column: 6, scope: !6410)
!6430 = !DILocation(line: 346, column: 3, scope: !6425)
!6431 = !DILocation(line: 348, column: 6, scope: !6432)
!6432 = distinct !DILexicalBlock(scope: !6410, file: !3, line: 348, column: 6)
!6433 = !DILocation(line: 348, column: 12, scope: !6432)
!6434 = !DILocation(line: 348, column: 20, scope: !6432)
!6435 = !DILocation(line: 348, column: 6, scope: !6410)
!6436 = !DILocation(line: 349, column: 11, scope: !6437)
!6437 = distinct !DILexicalBlock(scope: !6432, file: !3, line: 348, column: 41)
!6438 = !DILocation(line: 349, column: 3, scope: !6437)
!6439 = !DILocation(line: 352, column: 4, scope: !6440)
!6440 = distinct !DILexicalBlock(scope: !6437, file: !3, line: 349, column: 17)
!6441 = !DILocation(line: 354, column: 4, scope: !6440)
!6442 = !DILocation(line: 356, column: 2, scope: !6437)
!6443 = !DILocation(line: 358, column: 6, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6410, file: !3, line: 358, column: 6)
!6445 = !DILocation(line: 358, column: 12, scope: !6444)
!6446 = !DILocation(line: 358, column: 20, scope: !6444)
!6447 = !DILocation(line: 358, column: 6, scope: !6410)
!6448 = !DILocation(line: 359, column: 11, scope: !6449)
!6449 = distinct !DILexicalBlock(scope: !6444, file: !3, line: 358, column: 47)
!6450 = !DILocation(line: 359, column: 3, scope: !6449)
!6451 = !DILocation(line: 362, column: 4, scope: !6452)
!6452 = distinct !DILexicalBlock(scope: !6449, file: !3, line: 359, column: 17)
!6453 = !DILocation(line: 364, column: 4, scope: !6452)
!6454 = !DILocation(line: 366, column: 2, scope: !6449)
!6455 = !DILocation(line: 368, column: 18, scope: !6410)
!6456 = !DILocation(line: 368, column: 2, scope: !6410)
!6457 = !DILocation(line: 369, column: 25, scope: !6410)
!6458 = !DILocation(line: 369, column: 31, scope: !6410)
!6459 = !DILocation(line: 369, column: 8, scope: !6410)
!6460 = !DILocation(line: 369, column: 6, scope: !6410)
!6461 = !DILocation(line: 370, column: 6, scope: !6462)
!6462 = distinct !DILexicalBlock(scope: !6410, file: !3, line: 370, column: 6)
!6463 = !DILocation(line: 370, column: 6, scope: !6410)
!6464 = !DILocation(line: 371, column: 3, scope: !6462)
!6465 = !DILabel(scope: !6410, name: "pm_put", file: !3, line: 373)
!6466 = !DILocation(line: 373, column: 1, scope: !6410)
!6467 = !DILocation(line: 374, column: 22, scope: !6410)
!6468 = !DILocation(line: 374, column: 28, scope: !6410)
!6469 = !DILocation(line: 374, column: 2, scope: !6410)
!6470 = !DILocation(line: 375, column: 9, scope: !6410)
!6471 = !DILocation(line: 375, column: 2, scope: !6410)
!6472 = distinct !DISubprogram(name: "cdns3_role_get", scope: !3, file: !3, line: 322, type: !6148, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6473 = !DILocalVariable(name: "sw", arg: 1, scope: !6472, file: !3, line: 322, type: !5605)
!6474 = !DILocation(line: 322, column: 61, scope: !6472)
!6475 = !DILocalVariable(name: "cdns", scope: !6472, file: !3, line: 324, type: !5006)
!6476 = !DILocation(line: 324, column: 16, scope: !6472)
!6477 = !DILocation(line: 324, column: 51, scope: !6472)
!6478 = !DILocation(line: 324, column: 23, scope: !6472)
!6479 = !DILocation(line: 326, column: 9, scope: !6472)
!6480 = !DILocation(line: 326, column: 15, scope: !6472)
!6481 = !DILocation(line: 326, column: 2, scope: !6472)
!6482 = distinct !DISubprogram(name: "devm_request_irq", scope: !6483, file: !6483, line: 203, type: !6484, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6483 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!6484 = !DISubroutineType(types: !6485)
!6485 = !{!215, !1734, !7, !6486, !202, !269, !203}
!6486 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !6483, line: 92, baseType: !6487)
!6487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6488, size: 64)
!6488 = !DISubroutineType(types: !6489)
!6489 = !{!6490, !215, !203}
!6490 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !191, line: 17, baseType: !190)
!6491 = !DILocalVariable(name: "dev", arg: 1, scope: !6482, file: !6483, line: 203, type: !1734)
!6492 = !DILocation(line: 203, column: 33, scope: !6482)
!6493 = !DILocalVariable(name: "irq", arg: 2, scope: !6482, file: !6483, line: 203, type: !7)
!6494 = !DILocation(line: 203, column: 51, scope: !6482)
!6495 = !DILocalVariable(name: "handler", arg: 3, scope: !6482, file: !6483, line: 203, type: !6486)
!6496 = !DILocation(line: 203, column: 70, scope: !6482)
!6497 = !DILocalVariable(name: "irqflags", arg: 4, scope: !6482, file: !6483, line: 204, type: !202)
!6498 = !DILocation(line: 204, column: 18, scope: !6482)
!6499 = !DILocalVariable(name: "devname", arg: 5, scope: !6482, file: !6483, line: 204, type: !269)
!6500 = !DILocation(line: 204, column: 40, scope: !6482)
!6501 = !DILocalVariable(name: "dev_id", arg: 6, scope: !6482, file: !6483, line: 204, type: !203)
!6502 = !DILocation(line: 204, column: 55, scope: !6482)
!6503 = !DILocation(line: 206, column: 35, scope: !6482)
!6504 = !DILocation(line: 206, column: 40, scope: !6482)
!6505 = !DILocation(line: 206, column: 45, scope: !6482)
!6506 = !DILocation(line: 206, column: 60, scope: !6482)
!6507 = !DILocation(line: 207, column: 7, scope: !6482)
!6508 = !DILocation(line: 207, column: 16, scope: !6482)
!6509 = !DILocation(line: 206, column: 9, scope: !6482)
!6510 = !DILocation(line: 206, column: 2, scope: !6482)
!6511 = distinct !DISubprogram(name: "cdns3_wakeup_irq", scope: !3, file: !3, line: 406, type: !6488, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6512 = !DILocalVariable(name: "irq", arg: 1, scope: !6511, file: !3, line: 406, type: !215)
!6513 = !DILocation(line: 406, column: 41, scope: !6511)
!6514 = !DILocalVariable(name: "data", arg: 2, scope: !6511, file: !3, line: 406, type: !203)
!6515 = !DILocation(line: 406, column: 52, scope: !6511)
!6516 = !DILocalVariable(name: "cdns", scope: !6511, file: !3, line: 408, type: !5006)
!6517 = !DILocation(line: 408, column: 16, scope: !6511)
!6518 = !DILocation(line: 408, column: 23, scope: !6511)
!6519 = !DILocation(line: 410, column: 6, scope: !6520)
!6520 = distinct !DILexicalBlock(scope: !6511, file: !3, line: 410, column: 6)
!6521 = !DILocation(line: 410, column: 12, scope: !6520)
!6522 = !DILocation(line: 410, column: 6, scope: !6511)
!6523 = !DILocation(line: 411, column: 22, scope: !6524)
!6524 = distinct !DILexicalBlock(scope: !6520, file: !3, line: 410, column: 20)
!6525 = !DILocation(line: 411, column: 3, scope: !6524)
!6526 = !DILocation(line: 412, column: 3, scope: !6524)
!6527 = !DILocation(line: 412, column: 9, scope: !6524)
!6528 = !DILocation(line: 412, column: 24, scope: !6524)
!6529 = !DILocation(line: 413, column: 8, scope: !6530)
!6530 = distinct !DILexicalBlock(scope: !6524, file: !3, line: 413, column: 7)
!6531 = !DILocation(line: 413, column: 14, scope: !6530)
!6532 = !DILocation(line: 413, column: 19, scope: !6530)
!6533 = !DILocation(line: 413, column: 37, scope: !6530)
!6534 = !DILocation(line: 413, column: 40, scope: !6530)
!6535 = !DILocation(line: 413, column: 46, scope: !6530)
!6536 = !DILocation(line: 413, column: 7, scope: !6524)
!6537 = !DILocation(line: 414, column: 23, scope: !6530)
!6538 = !DILocation(line: 414, column: 29, scope: !6530)
!6539 = !DILocation(line: 414, column: 39, scope: !6530)
!6540 = !DILocation(line: 414, column: 4, scope: !6530)
!6541 = !DILocation(line: 416, column: 3, scope: !6524)
!6542 = !DILocation(line: 419, column: 2, scope: !6511)
!6543 = !DILocation(line: 420, column: 1, scope: !6511)
!6544 = distinct !DISubprogram(name: "dev_name", scope: !115, file: !115, line: 609, type: !6545, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6545 = !DISubroutineType(types: !6546)
!6546 = !{!269, !4819}
!6547 = !DILocalVariable(name: "dev", arg: 1, scope: !6544, file: !115, line: 609, type: !4819)
!6548 = !DILocation(line: 609, column: 57, scope: !6544)
!6549 = !DILocation(line: 612, column: 6, scope: !6550)
!6550 = distinct !DILexicalBlock(scope: !6544, file: !115, line: 612, column: 6)
!6551 = !DILocation(line: 612, column: 11, scope: !6550)
!6552 = !DILocation(line: 612, column: 6, scope: !6544)
!6553 = !DILocation(line: 613, column: 10, scope: !6550)
!6554 = !DILocation(line: 613, column: 15, scope: !6550)
!6555 = !DILocation(line: 613, column: 3, scope: !6550)
!6556 = !DILocation(line: 615, column: 23, scope: !6544)
!6557 = !DILocation(line: 615, column: 28, scope: !6544)
!6558 = !DILocation(line: 615, column: 9, scope: !6544)
!6559 = !DILocation(line: 615, column: 2, scope: !6544)
!6560 = !DILocation(line: 616, column: 1, scope: !6544)
!6561 = distinct !DISubprogram(name: "cdns3_core_init_role", scope: !3, file: !3, line: 84, type: !5004, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6562 = !DILocalVariable(name: "cdns", arg: 1, scope: !6561, file: !3, line: 84, type: !5006)
!6563 = !DILocation(line: 84, column: 47, scope: !6561)
!6564 = !DILocalVariable(name: "dev", scope: !6561, file: !3, line: 86, type: !1734)
!6565 = !DILocation(line: 86, column: 17, scope: !6561)
!6566 = !DILocation(line: 86, column: 23, scope: !6561)
!6567 = !DILocation(line: 86, column: 29, scope: !6561)
!6568 = !DILocalVariable(name: "best_dr_mode", scope: !6561, file: !3, line: 87, type: !178)
!6569 = !DILocation(line: 87, column: 19, scope: !6561)
!6570 = !DILocalVariable(name: "dr_mode", scope: !6561, file: !3, line: 88, type: !178)
!6571 = !DILocation(line: 88, column: 19, scope: !6561)
!6572 = !DILocalVariable(name: "ret", scope: !6561, file: !3, line: 89, type: !215)
!6573 = !DILocation(line: 89, column: 6, scope: !6561)
!6574 = !DILocation(line: 91, column: 28, scope: !6561)
!6575 = !DILocation(line: 91, column: 12, scope: !6561)
!6576 = !DILocation(line: 91, column: 10, scope: !6561)
!6577 = !DILocation(line: 92, column: 2, scope: !6561)
!6578 = !DILocation(line: 92, column: 8, scope: !6561)
!6579 = !DILocation(line: 92, column: 13, scope: !6561)
!6580 = !DILocation(line: 99, column: 6, scope: !6581)
!6581 = distinct !DILexicalBlock(scope: !6561, file: !3, line: 99, column: 6)
!6582 = !DILocation(line: 99, column: 14, scope: !6581)
!6583 = !DILocation(line: 99, column: 6, scope: !6561)
!6584 = !DILocation(line: 107, column: 2, scope: !6585)
!6585 = distinct !DILexicalBlock(scope: !6581, file: !3, line: 99, column: 38)
!6586 = !DILocation(line: 113, column: 17, scope: !6561)
!6587 = !DILocation(line: 113, column: 23, scope: !6561)
!6588 = !DILocation(line: 113, column: 15, scope: !6561)
!6589 = !DILocation(line: 115, column: 24, scope: !6561)
!6590 = !DILocation(line: 115, column: 8, scope: !6561)
!6591 = !DILocation(line: 115, column: 6, scope: !6561)
!6592 = !DILocation(line: 116, column: 6, scope: !6593)
!6593 = distinct !DILexicalBlock(scope: !6561, file: !3, line: 116, column: 6)
!6594 = !DILocation(line: 116, column: 6, scope: !6561)
!6595 = !DILocation(line: 117, column: 10, scope: !6593)
!6596 = !DILocation(line: 117, column: 3, scope: !6593)
!6597 = !DILocation(line: 119, column: 6, scope: !6598)
!6598 = distinct !DILexicalBlock(scope: !6561, file: !3, line: 119, column: 6)
!6599 = !DILocation(line: 119, column: 14, scope: !6598)
!6600 = !DILocation(line: 119, column: 6, scope: !6561)
!6601 = !DILocation(line: 120, column: 18, scope: !6602)
!6602 = distinct !DILexicalBlock(scope: !6598, file: !3, line: 119, column: 34)
!6603 = !DILocation(line: 120, column: 24, scope: !6602)
!6604 = !DILocation(line: 120, column: 16, scope: !6602)
!6605 = !DILocation(line: 121, column: 2, scope: !6602)
!6606 = !DILocation(line: 121, column: 13, scope: !6607)
!6607 = distinct !DILexicalBlock(scope: !6598, file: !3, line: 121, column: 13)
!6608 = !DILocation(line: 121, column: 19, scope: !6607)
!6609 = !DILocation(line: 121, column: 27, scope: !6607)
!6610 = !DILocation(line: 121, column: 13, scope: !6598)
!6611 = !DILocation(line: 122, column: 18, scope: !6612)
!6612 = distinct !DILexicalBlock(scope: !6607, file: !3, line: 121, column: 47)
!6613 = !DILocation(line: 122, column: 16, scope: !6612)
!6614 = !DILocation(line: 123, column: 2, scope: !6612)
!6615 = !DILocation(line: 123, column: 13, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6607, file: !3, line: 123, column: 13)
!6617 = !DILocation(line: 123, column: 19, scope: !6616)
!6618 = !DILocation(line: 123, column: 30, scope: !6616)
!6619 = !DILocation(line: 123, column: 27, scope: !6616)
!6620 = !DILocation(line: 123, column: 13, scope: !6607)
!6621 = !DILocation(line: 124, column: 3, scope: !6622)
!6622 = distinct !DILexicalBlock(scope: !6616, file: !3, line: 123, column: 39)
!6623 = !DILocation(line: 125, column: 3, scope: !6622)
!6624 = !DILocation(line: 128, column: 12, scope: !6561)
!6625 = !DILocation(line: 128, column: 10, scope: !6561)
!6626 = !DILocation(line: 130, column: 6, scope: !6627)
!6627 = distinct !DILexicalBlock(scope: !6561, file: !3, line: 130, column: 6)
!6628 = !DILocation(line: 130, column: 14, scope: !6627)
!6629 = !DILocation(line: 130, column: 33, scope: !6627)
!6630 = !DILocation(line: 130, column: 36, scope: !6627)
!6631 = !DILocation(line: 130, column: 44, scope: !6627)
!6632 = !DILocation(line: 130, column: 6, scope: !6561)
!6633 = !DILocation(line: 131, column: 25, scope: !6634)
!6634 = distinct !DILexicalBlock(scope: !6627, file: !3, line: 130, column: 65)
!6635 = !DILocation(line: 131, column: 9, scope: !6634)
!6636 = !DILocation(line: 131, column: 7, scope: !6634)
!6637 = !DILocation(line: 132, column: 7, scope: !6638)
!6638 = distinct !DILexicalBlock(scope: !6634, file: !3, line: 132, column: 7)
!6639 = !DILocation(line: 132, column: 7, scope: !6634)
!6640 = !DILocation(line: 133, column: 4, scope: !6641)
!6641 = distinct !DILexicalBlock(scope: !6638, file: !3, line: 132, column: 12)
!6642 = !DILocation(line: 135, column: 4, scope: !6641)
!6643 = !DILocation(line: 137, column: 2, scope: !6634)
!6644 = !DILocation(line: 139, column: 6, scope: !6645)
!6645 = distinct !DILexicalBlock(scope: !6561, file: !3, line: 139, column: 6)
!6646 = !DILocation(line: 139, column: 14, scope: !6645)
!6647 = !DILocation(line: 139, column: 33, scope: !6645)
!6648 = !DILocation(line: 139, column: 36, scope: !6645)
!6649 = !DILocation(line: 139, column: 44, scope: !6645)
!6650 = !DILocation(line: 139, column: 6, scope: !6561)
!6651 = !DILocation(line: 140, column: 27, scope: !6652)
!6652 = distinct !DILexicalBlock(scope: !6645, file: !3, line: 139, column: 71)
!6653 = !DILocation(line: 140, column: 9, scope: !6652)
!6654 = !DILocation(line: 140, column: 7, scope: !6652)
!6655 = !DILocation(line: 141, column: 7, scope: !6656)
!6656 = distinct !DILexicalBlock(scope: !6652, file: !3, line: 141, column: 7)
!6657 = !DILocation(line: 141, column: 7, scope: !6652)
!6658 = !DILocation(line: 142, column: 4, scope: !6659)
!6659 = distinct !DILexicalBlock(scope: !6656, file: !3, line: 141, column: 12)
!6660 = !DILocation(line: 144, column: 4, scope: !6659)
!6661 = !DILocation(line: 146, column: 2, scope: !6652)
!6662 = !DILocation(line: 148, column: 18, scope: !6561)
!6663 = !DILocation(line: 148, column: 2, scope: !6561)
!6664 = !DILocation(line: 148, column: 8, scope: !6561)
!6665 = !DILocation(line: 148, column: 16, scope: !6561)
!6666 = !DILocation(line: 150, column: 30, scope: !6561)
!6667 = !DILocation(line: 150, column: 8, scope: !6561)
!6668 = !DILocation(line: 150, column: 6, scope: !6561)
!6669 = !DILocation(line: 151, column: 6, scope: !6670)
!6670 = distinct !DILexicalBlock(scope: !6561, file: !3, line: 151, column: 6)
!6671 = !DILocation(line: 151, column: 6, scope: !6561)
!6672 = !DILocation(line: 152, column: 3, scope: !6670)
!6673 = !DILocation(line: 155, column: 25, scope: !6561)
!6674 = !DILocation(line: 155, column: 8, scope: !6561)
!6675 = !DILocation(line: 155, column: 6, scope: !6561)
!6676 = !DILocation(line: 156, column: 6, scope: !6677)
!6677 = distinct !DILexicalBlock(scope: !6561, file: !3, line: 156, column: 6)
!6678 = !DILocation(line: 156, column: 6, scope: !6561)
!6679 = !DILocation(line: 157, column: 3, scope: !6677)
!6680 = !DILocation(line: 159, column: 10, scope: !6561)
!6681 = !DILocation(line: 159, column: 16, scope: !6561)
!6682 = !DILocation(line: 159, column: 2, scope: !6561)
!6683 = !DILocation(line: 161, column: 30, scope: !6684)
!6684 = distinct !DILexicalBlock(scope: !6561, file: !3, line: 159, column: 25)
!6685 = !DILocation(line: 161, column: 9, scope: !6684)
!6686 = !DILocation(line: 161, column: 7, scope: !6684)
!6687 = !DILocation(line: 162, column: 7, scope: !6688)
!6688 = distinct !DILexicalBlock(scope: !6684, file: !3, line: 162, column: 7)
!6689 = !DILocation(line: 162, column: 7, scope: !6684)
!6690 = !DILocation(line: 163, column: 4, scope: !6688)
!6691 = !DILocation(line: 164, column: 3, scope: !6684)
!6692 = !DILocation(line: 166, column: 26, scope: !6684)
!6693 = !DILocation(line: 166, column: 9, scope: !6684)
!6694 = !DILocation(line: 166, column: 7, scope: !6684)
!6695 = !DILocation(line: 167, column: 7, scope: !6696)
!6696 = distinct !DILexicalBlock(scope: !6684, file: !3, line: 167, column: 7)
!6697 = !DILocation(line: 167, column: 7, scope: !6684)
!6698 = !DILocation(line: 168, column: 4, scope: !6696)
!6699 = !DILocation(line: 169, column: 3, scope: !6684)
!6700 = !DILocation(line: 171, column: 26, scope: !6684)
!6701 = !DILocation(line: 171, column: 9, scope: !6684)
!6702 = !DILocation(line: 171, column: 7, scope: !6684)
!6703 = !DILocation(line: 172, column: 7, scope: !6704)
!6704 = distinct !DILexicalBlock(scope: !6684, file: !3, line: 172, column: 7)
!6705 = !DILocation(line: 172, column: 7, scope: !6684)
!6706 = !DILocation(line: 173, column: 4, scope: !6704)
!6707 = !DILocation(line: 174, column: 3, scope: !6684)
!6708 = !DILocation(line: 176, column: 7, scope: !6684)
!6709 = !DILocation(line: 177, column: 3, scope: !6684)
!6710 = !DILocation(line: 180, column: 2, scope: !6561)
!6711 = !DILabel(scope: !6561, name: "err", file: !3, line: 181)
!6712 = !DILocation(line: 181, column: 1, scope: !6561)
!6713 = !DILocation(line: 182, column: 19, scope: !6561)
!6714 = !DILocation(line: 182, column: 2, scope: !6561)
!6715 = !DILocation(line: 183, column: 9, scope: !6561)
!6716 = !DILocation(line: 183, column: 2, scope: !6561)
!6717 = !DILocation(line: 184, column: 1, scope: !6561)
!6718 = distinct !DISubprogram(name: "pm_runtime_set_active", scope: !5675, file: !5675, line: 495, type: !4520, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6719 = !DILocalVariable(name: "dev", arg: 1, scope: !6718, file: !5675, line: 495, type: !1734)
!6720 = !DILocation(line: 495, column: 56, scope: !6718)
!6721 = !DILocation(line: 497, column: 33, scope: !6718)
!6722 = !DILocation(line: 497, column: 9, scope: !6718)
!6723 = !DILocation(line: 497, column: 2, scope: !6718)
!6724 = distinct !DISubprogram(name: "pm_runtime_mark_last_busy", scope: !5675, file: !5675, line: 194, type: !4511, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6725 = !DILocalVariable(name: "dev", arg: 1, scope: !6724, file: !5675, line: 194, type: !1734)
!6726 = !DILocation(line: 194, column: 61, scope: !6724)
!6727 = !DILocation(line: 196, column: 2, scope: !6724)
!6728 = !DILocation(line: 196, column: 2, scope: !6729)
!6729 = distinct !DILexicalBlock(scope: !6724, file: !5675, line: 196, column: 2)
!6730 = !DILocation(line: 196, column: 2, scope: !6731)
!6731 = distinct !DILexicalBlock(scope: !6729, file: !5675, line: 196, column: 2)
!6732 = !DILocation(line: 196, column: 2, scope: !6733)
!6733 = distinct !DILexicalBlock(scope: !6729, file: !5675, line: 196, column: 2)
!6734 = !DILocation(line: 197, column: 1, scope: !6724)
!6735 = distinct !DISubprogram(name: "pm_runtime_use_autosuspend", scope: !5675, file: !5675, line: 537, type: !4511, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6736 = !DILocalVariable(name: "dev", arg: 1, scope: !6735, file: !5675, line: 537, type: !1734)
!6737 = !DILocation(line: 537, column: 62, scope: !6735)
!6738 = !DILocation(line: 539, column: 31, scope: !6735)
!6739 = !DILocation(line: 539, column: 2, scope: !6735)
!6740 = !DILocation(line: 540, column: 1, scope: !6735)
!6741 = distinct !DISubprogram(name: "set_phy_power_off", scope: !3, file: !3, line: 393, type: !5152, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6742 = !DILocalVariable(name: "cdns", arg: 1, scope: !6741, file: !3, line: 393, type: !5006)
!6743 = !DILocation(line: 393, column: 45, scope: !6741)
!6744 = !DILocation(line: 395, column: 16, scope: !6741)
!6745 = !DILocation(line: 395, column: 22, scope: !6741)
!6746 = !DILocation(line: 395, column: 2, scope: !6741)
!6747 = !DILocation(line: 396, column: 16, scope: !6741)
!6748 = !DILocation(line: 396, column: 22, scope: !6741)
!6749 = !DILocation(line: 396, column: 2, scope: !6741)
!6750 = !DILocation(line: 397, column: 1, scope: !6741)
!6751 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !115, file: !115, line: 660, type: !6752, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6752 = !DISubroutineType(types: !6753)
!6753 = !{null, !1734, !203}
!6754 = !DILocalVariable(name: "dev", arg: 1, scope: !6751, file: !115, line: 660, type: !1734)
!6755 = !DILocation(line: 660, column: 51, scope: !6751)
!6756 = !DILocalVariable(name: "data", arg: 2, scope: !6751, file: !115, line: 660, type: !203)
!6757 = !DILocation(line: 660, column: 62, scope: !6751)
!6758 = !DILocation(line: 662, column: 21, scope: !6751)
!6759 = !DILocation(line: 662, column: 2, scope: !6751)
!6760 = !DILocation(line: 662, column: 7, scope: !6751)
!6761 = !DILocation(line: 662, column: 19, scope: !6751)
!6762 = !DILocation(line: 663, column: 1, scope: !6751)
!6763 = distinct !DISubprogram(name: "pm_request_resume", scope: !5675, file: !5675, line: 344, type: !4520, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6764 = !DILocalVariable(name: "dev", arg: 1, scope: !6763, file: !5675, line: 344, type: !1734)
!6765 = !DILocation(line: 344, column: 52, scope: !6763)
!6766 = !DILocation(line: 346, column: 29, scope: !6763)
!6767 = !DILocation(line: 346, column: 9, scope: !6763)
!6768 = !DILocation(line: 346, column: 2, scope: !6763)
!6769 = distinct !DISubprogram(name: "kobject_name", scope: !279, file: !279, line: 88, type: !6770, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6770 = !DISubroutineType(types: !6771)
!6771 = !{!269, !6772}
!6772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6773, size: 64)
!6773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!6774 = !DILocalVariable(name: "kobj", arg: 1, scope: !6769, file: !279, line: 88, type: !6772)
!6775 = !DILocation(line: 88, column: 62, scope: !6769)
!6776 = !DILocation(line: 90, column: 9, scope: !6769)
!6777 = !DILocation(line: 90, column: 15, scope: !6769)
!6778 = !DILocation(line: 90, column: 2, scope: !6769)
!6779 = distinct !DISubprogram(name: "cdns3_idle_init", scope: !3, file: !3, line: 254, type: !5004, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6780 = !DILocalVariable(name: "cdns", arg: 1, scope: !6779, file: !3, line: 254, type: !5006)
!6781 = !DILocation(line: 254, column: 42, scope: !6779)
!6782 = !DILocalVariable(name: "rdrv", scope: !6779, file: !3, line: 256, type: !5145)
!6783 = !DILocation(line: 256, column: 28, scope: !6779)
!6784 = !DILocation(line: 258, column: 22, scope: !6779)
!6785 = !DILocation(line: 258, column: 28, scope: !6779)
!6786 = !DILocation(line: 258, column: 9, scope: !6779)
!6787 = !DILocation(line: 258, column: 7, scope: !6779)
!6788 = !DILocation(line: 259, column: 7, scope: !6789)
!6789 = distinct !DILexicalBlock(scope: !6779, file: !3, line: 259, column: 6)
!6790 = !DILocation(line: 259, column: 6, scope: !6779)
!6791 = !DILocation(line: 260, column: 3, scope: !6789)
!6792 = !DILocation(line: 262, column: 2, scope: !6779)
!6793 = !DILocation(line: 262, column: 8, scope: !6779)
!6794 = !DILocation(line: 262, column: 14, scope: !6779)
!6795 = !DILocation(line: 263, column: 2, scope: !6779)
!6796 = !DILocation(line: 263, column: 8, scope: !6779)
!6797 = !DILocation(line: 263, column: 13, scope: !6779)
!6798 = !DILocation(line: 264, column: 2, scope: !6779)
!6799 = !DILocation(line: 264, column: 8, scope: !6779)
!6800 = !DILocation(line: 264, column: 14, scope: !6779)
!6801 = !DILocation(line: 265, column: 2, scope: !6779)
!6802 = !DILocation(line: 265, column: 8, scope: !6779)
!6803 = !DILocation(line: 265, column: 16, scope: !6779)
!6804 = !DILocation(line: 266, column: 2, scope: !6779)
!6805 = !DILocation(line: 266, column: 8, scope: !6779)
!6806 = !DILocation(line: 266, column: 15, scope: !6779)
!6807 = !DILocation(line: 267, column: 2, scope: !6779)
!6808 = !DILocation(line: 267, column: 8, scope: !6779)
!6809 = !DILocation(line: 267, column: 13, scope: !6779)
!6810 = !DILocation(line: 269, column: 31, scope: !6779)
!6811 = !DILocation(line: 269, column: 2, scope: !6779)
!6812 = !DILocation(line: 269, column: 8, scope: !6779)
!6813 = !DILocation(line: 269, column: 29, scope: !6779)
!6814 = !DILocation(line: 271, column: 2, scope: !6779)
!6815 = !DILocation(line: 272, column: 1, scope: !6779)
!6816 = distinct !DISubprogram(name: "cdns3_host_init", scope: !6817, file: !6817, line: 18, type: !5004, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6817 = !DIFile(filename: "drivers/usb/cdns3/host-export.h", directory: "/home/lizy2001/genbc/linux")
!6818 = !DILocalVariable(name: "cdns", arg: 1, scope: !6816, file: !6817, line: 18, type: !5006)
!6819 = !DILocation(line: 18, column: 49, scope: !6816)
!6820 = !DILocation(line: 20, column: 2, scope: !6816)
!6821 = distinct !DISubprogram(name: "cdns3_gadget_init", scope: !6822, file: !6822, line: 19, type: !5004, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6822 = !DIFile(filename: "drivers/usb/cdns3/gadget-export.h", directory: "/home/lizy2001/genbc/linux")
!6823 = !DILocalVariable(name: "cdns", arg: 1, scope: !6821, file: !6822, line: 19, type: !5006)
!6824 = !DILocation(line: 19, column: 51, scope: !6821)
!6825 = !DILocation(line: 21, column: 2, scope: !6821)
!6826 = distinct !DISubprogram(name: "cdns3_exit_roles", scope: !3, file: !3, line: 72, type: !5152, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6827 = !DILocalVariable(name: "cdns", arg: 1, scope: !6826, file: !3, line: 72, type: !5006)
!6828 = !DILocation(line: 72, column: 44, scope: !6826)
!6829 = !DILocation(line: 74, column: 18, scope: !6826)
!6830 = !DILocation(line: 74, column: 2, scope: !6826)
!6831 = !DILocation(line: 75, column: 17, scope: !6826)
!6832 = !DILocation(line: 75, column: 2, scope: !6826)
!6833 = !DILocation(line: 76, column: 1, scope: !6826)
!6834 = distinct !DISubprogram(name: "cdns3_idle_role_start", scope: !3, file: !3, line: 243, type: !5004, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6835 = !DILocalVariable(name: "cdns", arg: 1, scope: !6834, file: !3, line: 243, type: !5006)
!6836 = !DILocation(line: 243, column: 48, scope: !6834)
!6837 = !DILocation(line: 245, column: 2, scope: !6834)
!6838 = distinct !DISubprogram(name: "cdns3_idle_role_stop", scope: !3, file: !3, line: 248, type: !5152, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6839 = !DILocalVariable(name: "cdns", arg: 1, scope: !6838, file: !3, line: 248, type: !5006)
!6840 = !DILocation(line: 248, column: 48, scope: !6838)
!6841 = !DILocation(line: 251, column: 12, scope: !6838)
!6842 = !DILocation(line: 251, column: 18, scope: !6838)
!6843 = !DILocation(line: 251, column: 2, scope: !6838)
!6844 = !DILocation(line: 252, column: 1, scope: !6838)
!6845 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !259, file: !259, line: 231, type: !6846, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6846 = !DISubroutineType(types: !6847)
!6847 = !{!203, !6848}
!6848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6849, size: 64)
!6849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!6850 = !DILocalVariable(name: "pdev", arg: 1, scope: !6845, file: !259, line: 231, type: !6848)
!6851 = !DILocation(line: 231, column: 72, scope: !6845)
!6852 = !DILocation(line: 233, column: 26, scope: !6845)
!6853 = !DILocation(line: 233, column: 32, scope: !6845)
!6854 = !DILocation(line: 233, column: 9, scope: !6845)
!6855 = !DILocation(line: 233, column: 2, scope: !6845)
!6856 = distinct !DISubprogram(name: "pm_runtime_disable", scope: !5675, file: !5675, line: 524, type: !4511, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6857 = !DILocalVariable(name: "dev", arg: 1, scope: !6856, file: !5675, line: 524, type: !1734)
!6858 = !DILocation(line: 524, column: 54, scope: !6856)
!6859 = !DILocation(line: 526, column: 23, scope: !6856)
!6860 = !DILocation(line: 526, column: 2, scope: !6856)
!6861 = !DILocation(line: 527, column: 1, scope: !6856)
!6862 = distinct !DISubprogram(name: "pm_runtime_put_noidle", scope: !5675, file: !5675, line: 103, type: !4511, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6863 = !DILocalVariable(name: "v", arg: 1, scope: !6864, file: !6865, line: 200, type: !6868)
!6864 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !6865, file: !6865, line: 200, type: !6866, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6865 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!6866 = !DISubroutineType(types: !6867)
!6867 = !{!272, !6868, !216, !215}
!6868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!6869 = !DILocation(line: 200, column: 63, scope: !6864, inlinedAt: !6870)
!6870 = distinct !DILocation(line: 1093, column: 12, scope: !6871, inlinedAt: !6875)
!6871 = distinct !DISubprogram(name: "arch_atomic_fetch_add_unless", scope: !6872, file: !6872, line: 1086, type: !6873, scopeLine: 1087, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6872 = !DIFile(filename: "./include/linux/atomic-arch-fallback.h", directory: "/home/lizy2001/genbc/linux")
!6873 = !DISubroutineType(types: !6874)
!6874 = !{!215, !6868, !215, !215}
!6875 = distinct !DILocation(line: 1113, column: 9, scope: !6876, inlinedAt: !6879)
!6876 = distinct !DISubprogram(name: "arch_atomic_add_unless", scope: !6872, file: !6872, line: 1111, type: !6877, scopeLine: 1112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6877 = !DISubroutineType(types: !6878)
!6878 = !{!272, !6868, !215, !215}
!6879 = distinct !DILocation(line: 789, column: 9, scope: !6880, inlinedAt: !6882)
!6880 = distinct !DISubprogram(name: "atomic_add_unless", scope: !6881, file: !6881, line: 786, type: !6877, scopeLine: 787, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6881 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!6882 = distinct !DILocation(line: 105, column: 2, scope: !6862)
!6883 = !DILocalVariable(name: "old", arg: 2, scope: !6864, file: !6865, line: 200, type: !216)
!6884 = !DILocation(line: 200, column: 71, scope: !6864, inlinedAt: !6870)
!6885 = !DILocalVariable(name: "new", arg: 3, scope: !6864, file: !6865, line: 200, type: !215)
!6886 = !DILocation(line: 200, column: 80, scope: !6864, inlinedAt: !6870)
!6887 = !DILocalVariable(name: "success", scope: !6888, file: !6865, line: 202, type: !272)
!6888 = distinct !DILexicalBlock(scope: !6864, file: !6865, line: 202, column: 9)
!6889 = !DILocation(line: 202, column: 9, scope: !6888, inlinedAt: !6870)
!6890 = !DILocalVariable(name: "_old", scope: !6888, file: !6865, line: 202, type: !216)
!6891 = !DILocalVariable(name: "__old", scope: !6888, file: !6865, line: 202, type: !215)
!6892 = !DILocalVariable(name: "__new", scope: !6888, file: !6865, line: 202, type: !215)
!6893 = !DILocalVariable(name: "__ptr", scope: !6888, file: !6865, line: 202, type: !217)
!6894 = !DILocalVariable(name: "v", arg: 1, scope: !6895, file: !6865, line: 23, type: !6898)
!6895 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6865, file: !6865, line: 23, type: !6896, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6896 = !DISubroutineType(types: !6897)
!6897 = !{!215, !6898}
!6898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6899, size: 64)
!6899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !861)
!6900 = !DILocation(line: 23, column: 61, scope: !6895, inlinedAt: !6901)
!6901 = distinct !DILocation(line: 1088, column: 10, scope: !6871, inlinedAt: !6875)
!6902 = !DILocalVariable(name: "v", arg: 1, scope: !6871, file: !6872, line: 1086, type: !6868)
!6903 = !DILocation(line: 1086, column: 40, scope: !6871, inlinedAt: !6875)
!6904 = !DILocalVariable(name: "a", arg: 2, scope: !6871, file: !6872, line: 1086, type: !215)
!6905 = !DILocation(line: 1086, column: 47, scope: !6871, inlinedAt: !6875)
!6906 = !DILocalVariable(name: "u", arg: 3, scope: !6871, file: !6872, line: 1086, type: !215)
!6907 = !DILocation(line: 1086, column: 54, scope: !6871, inlinedAt: !6875)
!6908 = !DILocalVariable(name: "c", scope: !6871, file: !6872, line: 1088, type: !215)
!6909 = !DILocation(line: 1088, column: 6, scope: !6871, inlinedAt: !6875)
!6910 = !DILocalVariable(name: "v", arg: 1, scope: !6876, file: !6872, line: 1111, type: !6868)
!6911 = !DILocation(line: 1111, column: 34, scope: !6876, inlinedAt: !6879)
!6912 = !DILocalVariable(name: "a", arg: 2, scope: !6876, file: !6872, line: 1111, type: !215)
!6913 = !DILocation(line: 1111, column: 41, scope: !6876, inlinedAt: !6879)
!6914 = !DILocalVariable(name: "u", arg: 3, scope: !6876, file: !6872, line: 1111, type: !215)
!6915 = !DILocation(line: 1111, column: 48, scope: !6876, inlinedAt: !6879)
!6916 = !DILocalVariable(name: "v", arg: 1, scope: !6917, file: !6918, line: 99, type: !6921)
!6917 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6918, file: !6918, line: 99, type: !6919, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6918 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!6919 = !DISubroutineType(types: !6920)
!6920 = !{null, !6921, !383}
!6921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6922, size: 64)
!6922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6923)
!6923 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6924 = !DILocation(line: 99, column: 79, scope: !6917, inlinedAt: !6925)
!6925 = distinct !DILocation(line: 788, column: 2, scope: !6880, inlinedAt: !6882)
!6926 = !DILocalVariable(name: "size", arg: 2, scope: !6917, file: !6918, line: 99, type: !383)
!6927 = !DILocation(line: 99, column: 89, scope: !6917, inlinedAt: !6925)
!6928 = !DILocalVariable(name: "v", arg: 1, scope: !6880, file: !6881, line: 786, type: !6868)
!6929 = !DILocation(line: 786, column: 29, scope: !6880, inlinedAt: !6882)
!6930 = !DILocalVariable(name: "a", arg: 2, scope: !6880, file: !6881, line: 786, type: !215)
!6931 = !DILocation(line: 786, column: 36, scope: !6880, inlinedAt: !6882)
!6932 = !DILocalVariable(name: "u", arg: 3, scope: !6880, file: !6881, line: 786, type: !215)
!6933 = !DILocation(line: 786, column: 43, scope: !6880, inlinedAt: !6882)
!6934 = !DILocalVariable(name: "dev", arg: 1, scope: !6862, file: !5675, line: 103, type: !1734)
!6935 = !DILocation(line: 103, column: 57, scope: !6862)
!6936 = !DILocation(line: 105, column: 21, scope: !6862)
!6937 = !DILocation(line: 105, column: 26, scope: !6862)
!6938 = !DILocation(line: 105, column: 32, scope: !6862)
!6939 = !DILocation(line: 788, column: 31, scope: !6880, inlinedAt: !6882)
!6940 = !DILocation(line: 101, column: 20, scope: !6917, inlinedAt: !6925)
!6941 = !DILocation(line: 101, column: 23, scope: !6917, inlinedAt: !6925)
!6942 = !DILocation(line: 101, column: 2, scope: !6917, inlinedAt: !6925)
!6943 = !DILocation(line: 102, column: 2, scope: !6917, inlinedAt: !6925)
!6944 = !DILocation(line: 789, column: 32, scope: !6880, inlinedAt: !6882)
!6945 = !DILocation(line: 789, column: 35, scope: !6880, inlinedAt: !6882)
!6946 = !DILocation(line: 789, column: 38, scope: !6880, inlinedAt: !6882)
!6947 = !DILocation(line: 1113, column: 38, scope: !6876, inlinedAt: !6879)
!6948 = !DILocation(line: 1113, column: 41, scope: !6876, inlinedAt: !6879)
!6949 = !DILocation(line: 1113, column: 44, scope: !6876, inlinedAt: !6879)
!6950 = !DILocation(line: 1088, column: 27, scope: !6871, inlinedAt: !6875)
!6951 = !DILocation(line: 29, column: 9, scope: !6895, inlinedAt: !6901)
!6952 = !DILocation(line: 1090, column: 2, scope: !6871, inlinedAt: !6875)
!6953 = !DILocation(line: 1091, column: 7, scope: !6954, inlinedAt: !6875)
!6954 = distinct !DILexicalBlock(scope: !6955, file: !6872, line: 1091, column: 7)
!6955 = distinct !DILexicalBlock(scope: !6871, file: !6872, line: 1090, column: 5)
!6956 = !DILocation(line: 1091, column: 7, scope: !6955, inlinedAt: !6875)
!6957 = !DILocation(line: 1092, column: 4, scope: !6954, inlinedAt: !6875)
!6958 = !DILocation(line: 1093, column: 36, scope: !6871, inlinedAt: !6875)
!6959 = !DILocation(line: 1093, column: 43, scope: !6871, inlinedAt: !6875)
!6960 = !DILocation(line: 1093, column: 47, scope: !6871, inlinedAt: !6875)
!6961 = !DILocation(line: 1093, column: 45, scope: !6871, inlinedAt: !6875)
!6962 = !{i32 -2147146926, i32 -2147146771}
!6963 = !DILocation(line: 202, column: 9, scope: !6964, inlinedAt: !6870)
!6964 = distinct !DILexicalBlock(scope: !6888, file: !6865, line: 202, column: 9)
!6965 = !DILocation(line: 202, column: 9, scope: !6864, inlinedAt: !6870)
!6966 = !DILocation(line: 1093, column: 11, scope: !6871, inlinedAt: !6875)
!6967 = !DILocation(line: 1093, column: 2, scope: !6955, inlinedAt: !6875)
!6968 = distinct !{!6968, !6952, !6969}
!6969 = !DILocation(line: 1093, column: 49, scope: !6871, inlinedAt: !6875)
!6970 = !DILocation(line: 1095, column: 9, scope: !6871, inlinedAt: !6875)
!6971 = !DILocation(line: 1113, column: 50, scope: !6876, inlinedAt: !6879)
!6972 = !DILocation(line: 1113, column: 47, scope: !6876, inlinedAt: !6879)
!6973 = !DILocation(line: 106, column: 1, scope: !6862)
!6974 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !115, file: !115, line: 655, type: !6336, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6975 = !DILocalVariable(name: "dev", arg: 1, scope: !6974, file: !115, line: 655, type: !4819)
!6976 = !DILocation(line: 655, column: 58, scope: !6974)
!6977 = !DILocation(line: 657, column: 9, scope: !6974)
!6978 = !DILocation(line: 657, column: 14, scope: !6974)
!6979 = !DILocation(line: 657, column: 2, scope: !6974)
!6980 = distinct !DISubprogram(name: "kasan_check_write", scope: !6981, file: !6981, line: 38, type: !6982, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6981 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6982 = !DISubroutineType(types: !6983)
!6983 = !{!272, !6921, !7}
!6984 = !DILocalVariable(name: "p", arg: 1, scope: !6980, file: !6981, line: 38, type: !6921)
!6985 = !DILocation(line: 38, column: 59, scope: !6980)
!6986 = !DILocalVariable(name: "size", arg: 2, scope: !6980, file: !6981, line: 38, type: !7)
!6987 = !DILocation(line: 38, column: 75, scope: !6980)
!6988 = !DILocation(line: 40, column: 2, scope: !6980)
!6989 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6990, file: !6990, line: 178, type: !6991, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!6990 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6991 = !DISubroutineType(types: !6992)
!6992 = !{null, !6921, !383, !215}
!6993 = !DILocalVariable(name: "ptr", arg: 1, scope: !6989, file: !6990, line: 178, type: !6921)
!6994 = !DILocation(line: 178, column: 60, scope: !6989)
!6995 = !DILocalVariable(name: "size", arg: 2, scope: !6989, file: !6990, line: 178, type: !383)
!6996 = !DILocation(line: 178, column: 72, scope: !6989)
!6997 = !DILocalVariable(name: "type", arg: 3, scope: !6989, file: !6990, line: 179, type: !215)
!6998 = !DILocation(line: 179, column: 15, scope: !6989)
!6999 = !DILocation(line: 179, column: 23, scope: !6989)
!7000 = distinct !DISubprogram(name: "cdns3_suspend", scope: !3, file: !3, line: 699, type: !4520, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!7001 = !DILocalVariable(name: "lock", arg: 1, scope: !7002, file: !5894, line: 407, type: !2124)
!7002 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5894, file: !5894, line: 407, type: !7003, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!7003 = !DISubroutineType(types: !7004)
!7004 = !{null, !2124, !202}
!7005 = !DILocation(line: 407, column: 64, scope: !7002, inlinedAt: !7006)
!7006 = distinct !DILocation(line: 710, column: 3, scope: !7007)
!7007 = distinct !DILexicalBlock(scope: !7008, file: !3, line: 707, column: 40)
!7008 = distinct !DILexicalBlock(scope: !7000, file: !3, line: 707, column: 6)
!7009 = !DILocalVariable(name: "flags", arg: 2, scope: !7002, file: !5894, line: 407, type: !202)
!7010 = !DILocation(line: 407, column: 84, scope: !7002, inlinedAt: !7006)
!7011 = !DILocation(line: 327, column: 67, scope: !5893, inlinedAt: !7012)
!7012 = distinct !DILocation(line: 708, column: 3, scope: !7013)
!7013 = distinct !DILexicalBlock(scope: !7014, file: !3, line: 708, column: 3)
!7014 = distinct !DILexicalBlock(scope: !7015, file: !3, line: 708, column: 3)
!7015 = distinct !DILexicalBlock(scope: !7016, file: !3, line: 708, column: 3)
!7016 = distinct !DILexicalBlock(scope: !7017, file: !3, line: 708, column: 3)
!7017 = distinct !DILexicalBlock(scope: !7007, file: !3, line: 708, column: 3)
!7018 = !DILocalVariable(name: "dev", arg: 1, scope: !7000, file: !3, line: 699, type: !1734)
!7019 = !DILocation(line: 699, column: 41, scope: !7000)
!7020 = !DILocalVariable(name: "cdns", scope: !7000, file: !3, line: 701, type: !5006)
!7021 = !DILocation(line: 701, column: 16, scope: !7000)
!7022 = !DILocation(line: 701, column: 39, scope: !7000)
!7023 = !DILocation(line: 701, column: 23, scope: !7000)
!7024 = !DILocalVariable(name: "flags", scope: !7000, file: !3, line: 702, type: !202)
!7025 = !DILocation(line: 702, column: 16, scope: !7000)
!7026 = !DILocation(line: 704, column: 34, scope: !7027)
!7027 = distinct !DILexicalBlock(scope: !7000, file: !3, line: 704, column: 6)
!7028 = !DILocation(line: 704, column: 6, scope: !7027)
!7029 = !DILocation(line: 704, column: 6, scope: !7000)
!7030 = !DILocation(line: 705, column: 21, scope: !7027)
!7031 = !DILocation(line: 705, column: 3, scope: !7027)
!7032 = !DILocation(line: 707, column: 6, scope: !7008)
!7033 = !DILocation(line: 707, column: 12, scope: !7008)
!7034 = !DILocation(line: 707, column: 18, scope: !7008)
!7035 = !DILocation(line: 707, column: 24, scope: !7008)
!7036 = !DILocation(line: 707, column: 31, scope: !7008)
!7037 = !DILocation(line: 707, column: 6, scope: !7000)
!7038 = !DILocation(line: 708, column: 3, scope: !7007)
!7039 = !DILocation(line: 708, column: 3, scope: !7017)
!7040 = !DILocalVariable(name: "__dummy", scope: !7041, file: !3, line: 708, type: !202)
!7041 = distinct !DILexicalBlock(scope: !7016, file: !3, line: 708, column: 3)
!7042 = !DILocation(line: 708, column: 3, scope: !7041)
!7043 = !DILocalVariable(name: "__dummy2", scope: !7041, file: !3, line: 708, type: !202)
!7044 = !DILocation(line: 708, column: 3, scope: !7016)
!7045 = !DILocation(line: 708, column: 3, scope: !7015)
!7046 = !DILocation(line: 708, column: 3, scope: !7047)
!7047 = distinct !DILexicalBlock(scope: !7015, file: !3, line: 708, column: 3)
!7048 = !DILocalVariable(name: "__dummy", scope: !7049, file: !3, line: 708, type: !202)
!7049 = distinct !DILexicalBlock(scope: !7050, file: !3, line: 708, column: 3)
!7050 = distinct !DILexicalBlock(scope: !7047, file: !3, line: 708, column: 3)
!7051 = !DILocation(line: 708, column: 3, scope: !7049)
!7052 = !DILocalVariable(name: "__dummy2", scope: !7049, file: !3, line: 708, type: !202)
!7053 = !DILocation(line: 708, column: 3, scope: !7050)
!7054 = !DILocation(line: 708, column: 3, scope: !7014)
!7055 = !{i32 -2140463055}
!7056 = !DILocation(line: 708, column: 3, scope: !7013)
!7057 = !DILocation(line: 329, column: 10, scope: !5893, inlinedAt: !7012)
!7058 = !DILocation(line: 329, column: 16, scope: !5893, inlinedAt: !7012)
!7059 = !DILocation(line: 709, column: 3, scope: !7007)
!7060 = !DILocation(line: 709, column: 9, scope: !7007)
!7061 = !DILocation(line: 709, column: 15, scope: !7007)
!7062 = !DILocation(line: 709, column: 21, scope: !7007)
!7063 = !DILocation(line: 709, column: 28, scope: !7007)
!7064 = !DILocation(line: 709, column: 36, scope: !7007)
!7065 = !DILocation(line: 710, column: 27, scope: !7007)
!7066 = !DILocation(line: 710, column: 33, scope: !7007)
!7067 = !DILocation(line: 710, column: 39, scope: !7007)
!7068 = !DILocalVariable(name: "__dummy", scope: !7069, file: !5894, line: 409, type: !202)
!7069 = distinct !DILexicalBlock(scope: !7070, file: !5894, line: 409, column: 2)
!7070 = distinct !DILexicalBlock(scope: !7002, file: !5894, line: 409, column: 2)
!7071 = !DILocation(line: 409, column: 2, scope: !7069, inlinedAt: !7006)
!7072 = !DILocalVariable(name: "__dummy2", scope: !7069, file: !5894, line: 409, type: !202)
!7073 = !DILocalVariable(name: "__dummy", scope: !7074, file: !5894, line: 409, type: !202)
!7074 = distinct !DILexicalBlock(scope: !7075, file: !5894, line: 409, column: 2)
!7075 = distinct !DILexicalBlock(scope: !7076, file: !5894, line: 409, column: 2)
!7076 = distinct !DILexicalBlock(scope: !7077, file: !5894, line: 409, column: 2)
!7077 = distinct !DILexicalBlock(scope: !7070, file: !5894, line: 409, column: 2)
!7078 = !DILocation(line: 409, column: 2, scope: !7074, inlinedAt: !7006)
!7079 = !DILocalVariable(name: "__dummy2", scope: !7074, file: !5894, line: 409, type: !202)
!7080 = !DILocation(line: 409, column: 2, scope: !7075, inlinedAt: !7006)
!7081 = !DILocation(line: 409, column: 2, scope: !7082, inlinedAt: !7006)
!7082 = distinct !DILexicalBlock(scope: !7077, file: !5894, line: 409, column: 2)
!7083 = !{i32 -2145259626}
!7084 = !DILocation(line: 409, column: 2, scope: !7085, inlinedAt: !7006)
!7085 = distinct !DILexicalBlock(scope: !7082, file: !5894, line: 409, column: 2)
!7086 = !DILocation(line: 711, column: 2, scope: !7007)
!7087 = !DILocation(line: 713, column: 34, scope: !7000)
!7088 = !DILocation(line: 713, column: 39, scope: !7000)
!7089 = !DILocation(line: 713, column: 9, scope: !7000)
!7090 = !DILocation(line: 713, column: 2, scope: !7000)
!7091 = distinct !DISubprogram(name: "cdns3_resume", scope: !3, file: !3, line: 716, type: !4520, scopeLine: 717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!7092 = !DILocalVariable(name: "dev", arg: 1, scope: !7091, file: !3, line: 716, type: !1734)
!7093 = !DILocation(line: 716, column: 40, scope: !7091)
!7094 = !DILocalVariable(name: "ret", scope: !7091, file: !3, line: 718, type: !215)
!7095 = !DILocation(line: 718, column: 6, scope: !7091)
!7096 = !DILocation(line: 720, column: 32, scope: !7091)
!7097 = !DILocation(line: 720, column: 37, scope: !7091)
!7098 = !DILocation(line: 720, column: 8, scope: !7091)
!7099 = !DILocation(line: 720, column: 6, scope: !7091)
!7100 = !DILocation(line: 721, column: 6, scope: !7101)
!7101 = distinct !DILexicalBlock(scope: !7091, file: !3, line: 721, column: 6)
!7102 = !DILocation(line: 721, column: 6, scope: !7091)
!7103 = !DILocation(line: 722, column: 10, scope: !7101)
!7104 = !DILocation(line: 722, column: 3, scope: !7101)
!7105 = !DILocation(line: 724, column: 21, scope: !7091)
!7106 = !DILocation(line: 724, column: 2, scope: !7091)
!7107 = !DILocation(line: 725, column: 24, scope: !7091)
!7108 = !DILocation(line: 725, column: 2, scope: !7091)
!7109 = !DILocation(line: 726, column: 20, scope: !7091)
!7110 = !DILocation(line: 726, column: 2, scope: !7091)
!7111 = !DILocation(line: 728, column: 9, scope: !7091)
!7112 = !DILocation(line: 728, column: 2, scope: !7091)
!7113 = !DILocation(line: 729, column: 1, scope: !7091)
!7114 = distinct !DISubprogram(name: "cdns3_runtime_suspend", scope: !3, file: !3, line: 688, type: !4520, scopeLine: 689, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!7115 = !DILocalVariable(name: "dev", arg: 1, scope: !7114, file: !3, line: 688, type: !1734)
!7116 = !DILocation(line: 688, column: 49, scope: !7114)
!7117 = !DILocation(line: 690, column: 34, scope: !7114)
!7118 = !DILocation(line: 690, column: 39, scope: !7114)
!7119 = !DILocation(line: 690, column: 9, scope: !7114)
!7120 = !DILocation(line: 690, column: 2, scope: !7114)
!7121 = distinct !DISubprogram(name: "cdns3_runtime_resume", scope: !3, file: !3, line: 693, type: !4520, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!7122 = !DILocalVariable(name: "dev", arg: 1, scope: !7121, file: !3, line: 693, type: !1734)
!7123 = !DILocation(line: 693, column: 48, scope: !7121)
!7124 = !DILocation(line: 695, column: 33, scope: !7121)
!7125 = !DILocation(line: 695, column: 38, scope: !7121)
!7126 = !DILocation(line: 695, column: 9, scope: !7121)
!7127 = !DILocation(line: 695, column: 2, scope: !7121)
!7128 = distinct !DISubprogram(name: "pm_runtime_status_suspended", scope: !5675, file: !5675, line: 155, type: !7129, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!7129 = !DISubroutineType(types: !7130)
!7130 = !{!272, !1734}
!7131 = !DILocalVariable(name: "dev", arg: 1, scope: !7128, file: !5675, line: 155, type: !1734)
!7132 = !DILocation(line: 155, column: 63, scope: !7128)
!7133 = !DILocation(line: 157, column: 9, scope: !7128)
!7134 = !DILocation(line: 157, column: 14, scope: !7128)
!7135 = !DILocation(line: 157, column: 20, scope: !7128)
!7136 = !DILocation(line: 157, column: 35, scope: !7128)
!7137 = !DILocation(line: 157, column: 2, scope: !7128)
!7138 = distinct !DISubprogram(name: "pm_runtime_resume", scope: !5675, file: !5675, line: 323, type: !4520, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!7139 = !DILocalVariable(name: "dev", arg: 1, scope: !7138, file: !5675, line: 323, type: !1734)
!7140 = !DILocation(line: 323, column: 52, scope: !7138)
!7141 = !DILocation(line: 325, column: 29, scope: !7138)
!7142 = !DILocation(line: 325, column: 9, scope: !7138)
!7143 = !DILocation(line: 325, column: 2, scope: !7138)
!7144 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !7145, file: !7145, line: 666, type: !7146, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!7145 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!7146 = !DISubroutineType(types: !7147)
!7147 = !{!202}
!7148 = !DILocalVariable(name: "f", scope: !7144, file: !7145, line: 668, type: !202)
!7149 = !DILocation(line: 668, column: 16, scope: !7144)
!7150 = !DILocation(line: 670, column: 6, scope: !7144)
!7151 = !DILocation(line: 670, column: 4, scope: !7144)
!7152 = !DILocation(line: 671, column: 2, scope: !7144)
!7153 = !DILocation(line: 672, column: 9, scope: !7144)
!7154 = !DILocation(line: 672, column: 2, scope: !7144)
!7155 = distinct !DISubprogram(name: "cdns3_controller_suspend", scope: !3, file: !3, line: 634, type: !4600, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!7156 = !DILocation(line: 407, column: 64, scope: !7002, inlinedAt: !7157)
!7157 = distinct !DILocation(line: 652, column: 2, scope: !7155)
!7158 = !DILocation(line: 407, column: 84, scope: !7002, inlinedAt: !7157)
!7159 = !DILocation(line: 327, column: 67, scope: !5893, inlinedAt: !7160)
!7160 = distinct !DILocation(line: 650, column: 2, scope: !7161)
!7161 = distinct !DILexicalBlock(scope: !7162, file: !3, line: 650, column: 2)
!7162 = distinct !DILexicalBlock(scope: !7163, file: !3, line: 650, column: 2)
!7163 = distinct !DILexicalBlock(scope: !7164, file: !3, line: 650, column: 2)
!7164 = distinct !DILexicalBlock(scope: !7165, file: !3, line: 650, column: 2)
!7165 = distinct !DILexicalBlock(scope: !7155, file: !3, line: 650, column: 2)
!7166 = !DILocalVariable(name: "dev", arg: 1, scope: !7155, file: !3, line: 634, type: !1734)
!7167 = !DILocation(line: 634, column: 52, scope: !7155)
!7168 = !DILocalVariable(name: "msg", arg: 2, scope: !7155, file: !3, line: 634, type: !4602)
!7169 = !DILocation(line: 634, column: 70, scope: !7155)
!7170 = !DILocalVariable(name: "cdns", scope: !7155, file: !3, line: 636, type: !5006)
!7171 = !DILocation(line: 636, column: 16, scope: !7155)
!7172 = !DILocation(line: 636, column: 39, scope: !7155)
!7173 = !DILocation(line: 636, column: 23, scope: !7155)
!7174 = !DILocalVariable(name: "wakeup", scope: !7155, file: !3, line: 637, type: !272)
!7175 = !DILocation(line: 637, column: 7, scope: !7155)
!7176 = !DILocalVariable(name: "flags", scope: !7155, file: !3, line: 638, type: !202)
!7177 = !DILocation(line: 638, column: 16, scope: !7155)
!7178 = !DILocation(line: 640, column: 6, scope: !7179)
!7179 = distinct !DILexicalBlock(scope: !7155, file: !3, line: 640, column: 6)
!7180 = !DILocation(line: 640, column: 12, scope: !7179)
!7181 = !DILocation(line: 640, column: 6, scope: !7155)
!7182 = !DILocation(line: 641, column: 3, scope: !7179)
!7183 = !DILocation(line: 643, column: 6, scope: !7184)
!7184 = distinct !DILexicalBlock(scope: !7155, file: !3, line: 643, column: 6)
!7185 = !DILocation(line: 643, column: 6, scope: !7155)
!7186 = !DILocation(line: 644, column: 10, scope: !7184)
!7187 = !DILocation(line: 644, column: 3, scope: !7184)
!7188 = !DILocation(line: 646, column: 30, scope: !7184)
!7189 = !DILocation(line: 646, column: 12, scope: !7184)
!7190 = !DILocation(line: 646, column: 10, scope: !7184)
!7191 = !DILocation(line: 648, column: 29, scope: !7155)
!7192 = !DILocation(line: 648, column: 35, scope: !7155)
!7193 = !DILocation(line: 648, column: 46, scope: !7155)
!7194 = !DILocation(line: 648, column: 2, scope: !7155)
!7195 = !DILocation(line: 649, column: 20, scope: !7155)
!7196 = !DILocation(line: 649, column: 2, scope: !7155)
!7197 = !DILocation(line: 650, column: 2, scope: !7155)
!7198 = !DILocation(line: 650, column: 2, scope: !7165)
!7199 = !DILocalVariable(name: "__dummy", scope: !7200, file: !3, line: 650, type: !202)
!7200 = distinct !DILexicalBlock(scope: !7164, file: !3, line: 650, column: 2)
!7201 = !DILocation(line: 650, column: 2, scope: !7200)
!7202 = !DILocalVariable(name: "__dummy2", scope: !7200, file: !3, line: 650, type: !202)
!7203 = !DILocation(line: 650, column: 2, scope: !7164)
!7204 = !DILocation(line: 650, column: 2, scope: !7163)
!7205 = !DILocation(line: 650, column: 2, scope: !7206)
!7206 = distinct !DILexicalBlock(scope: !7163, file: !3, line: 650, column: 2)
!7207 = !DILocalVariable(name: "__dummy", scope: !7208, file: !3, line: 650, type: !202)
!7208 = distinct !DILexicalBlock(scope: !7209, file: !3, line: 650, column: 2)
!7209 = distinct !DILexicalBlock(scope: !7206, file: !3, line: 650, column: 2)
!7210 = !DILocation(line: 650, column: 2, scope: !7208)
!7211 = !DILocalVariable(name: "__dummy2", scope: !7208, file: !3, line: 650, type: !202)
!7212 = !DILocation(line: 650, column: 2, scope: !7209)
!7213 = !DILocation(line: 650, column: 2, scope: !7162)
!7214 = !{i32 -2140465695}
!7215 = !DILocation(line: 650, column: 2, scope: !7161)
!7216 = !DILocation(line: 329, column: 10, scope: !5893, inlinedAt: !7160)
!7217 = !DILocation(line: 329, column: 16, scope: !5893, inlinedAt: !7160)
!7218 = !DILocation(line: 651, column: 2, scope: !7155)
!7219 = !DILocation(line: 651, column: 8, scope: !7155)
!7220 = !DILocation(line: 651, column: 15, scope: !7155)
!7221 = !DILocation(line: 652, column: 26, scope: !7155)
!7222 = !DILocation(line: 652, column: 32, scope: !7155)
!7223 = !DILocation(line: 652, column: 38, scope: !7155)
!7224 = !DILocation(line: 409, column: 2, scope: !7069, inlinedAt: !7157)
!7225 = !DILocation(line: 409, column: 2, scope: !7074, inlinedAt: !7157)
!7226 = !DILocation(line: 409, column: 2, scope: !7075, inlinedAt: !7157)
!7227 = !DILocation(line: 409, column: 2, scope: !7082, inlinedAt: !7157)
!7228 = !DILocation(line: 409, column: 2, scope: !7085, inlinedAt: !7157)
!7229 = !DILocation(line: 655, column: 2, scope: !7155)
!7230 = !DILocation(line: 656, column: 1, scope: !7155)
!7231 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !7145, file: !7145, line: 646, type: !7146, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!7232 = !DILocalVariable(name: "__ret", scope: !7233, file: !7145, line: 648, type: !202)
!7233 = distinct !DILexicalBlock(scope: !7231, file: !7145, line: 648, column: 9)
!7234 = !DILocation(line: 648, column: 9, scope: !7233)
!7235 = !DILocalVariable(name: "__edi", scope: !7233, file: !7145, line: 648, type: !202)
!7236 = !DILocalVariable(name: "__esi", scope: !7233, file: !7145, line: 648, type: !202)
!7237 = !DILocalVariable(name: "__edx", scope: !7233, file: !7145, line: 648, type: !202)
!7238 = !DILocalVariable(name: "__ecx", scope: !7233, file: !7145, line: 648, type: !202)
!7239 = !DILocalVariable(name: "__eax", scope: !7233, file: !7145, line: 648, type: !202)
!7240 = !DILocation(line: 648, column: 9, scope: !7241)
!7241 = distinct !DILexicalBlock(scope: !7242, file: !7145, line: 648, column: 9)
!7242 = distinct !DILexicalBlock(scope: !7233, file: !7145, line: 648, column: 9)
!7243 = !{i32 -2145736469, i32 -2145734154, i32 -2145733920, i32 -2145733869, i32 -2145733841, i32 -2145733816, i32 -2145734132, i32 -2145734119, i32 -2145733681, i32 -2145733562, i32 -2145734027, i32 -2145734000, i32 -2145733972, i32 -2145733942}
!7244 = !DILocalVariable(name: "__mask", scope: !7245, file: !7145, line: 648, type: !202)
!7245 = distinct !DILexicalBlock(scope: !7241, file: !7145, line: 648, column: 9)
!7246 = !DILocation(line: 648, column: 9, scope: !7245)
!7247 = !DILocation(line: 648, column: 9, scope: !7242)
!7248 = !DILocation(line: 648, column: 2, scope: !7231)
!7249 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !7145, file: !7145, line: 656, type: !227, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!7250 = !DILocalVariable(name: "__edi", scope: !7251, file: !7145, line: 658, type: !202)
!7251 = distinct !DILexicalBlock(scope: !7249, file: !7145, line: 658, column: 2)
!7252 = !DILocation(line: 658, column: 2, scope: !7251)
!7253 = !DILocalVariable(name: "__esi", scope: !7251, file: !7145, line: 658, type: !202)
!7254 = !DILocalVariable(name: "__edx", scope: !7251, file: !7145, line: 658, type: !202)
!7255 = !DILocalVariable(name: "__ecx", scope: !7251, file: !7145, line: 658, type: !202)
!7256 = !DILocalVariable(name: "__eax", scope: !7251, file: !7145, line: 658, type: !202)
!7257 = !{i32 -2145729375, i32 -2145728643, i32 -2145728409, i32 -2145728358, i32 -2145728330, i32 -2145728305, i32 -2145728621, i32 -2145728608, i32 -2145728170, i32 -2145728051, i32 -2145728516, i32 -2145728489, i32 -2145728461, i32 -2145728431}
!7258 = !DILocation(line: 659, column: 1, scope: !7249)
!7259 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !7145, file: !7145, line: 651, type: !7260, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!7260 = !DISubroutineType(types: !7261)
!7261 = !{null, !202}
!7262 = !DILocalVariable(name: "f", arg: 1, scope: !7259, file: !7145, line: 651, type: !202)
!7263 = !DILocation(line: 651, column: 65, scope: !7259)
!7264 = !DILocalVariable(name: "__edi", scope: !7265, file: !7145, line: 653, type: !202)
!7265 = distinct !DILexicalBlock(scope: !7259, file: !7145, line: 653, column: 2)
!7266 = !DILocation(line: 653, column: 2, scope: !7265)
!7267 = !DILocalVariable(name: "__esi", scope: !7265, file: !7145, line: 653, type: !202)
!7268 = !DILocalVariable(name: "__edx", scope: !7265, file: !7145, line: 653, type: !202)
!7269 = !DILocalVariable(name: "__ecx", scope: !7265, file: !7145, line: 653, type: !202)
!7270 = !DILocalVariable(name: "__eax", scope: !7265, file: !7145, line: 653, type: !202)
!7271 = !{i32 -2145732002, i32 -2145731252, i32 -2145731018, i32 -2145730967, i32 -2145730939, i32 -2145730914, i32 -2145731230, i32 -2145731217, i32 -2145730779, i32 -2145730660, i32 -2145731125, i32 -2145731098, i32 -2145731070, i32 -2145731040}
!7272 = !DILocation(line: 654, column: 1, scope: !7259)
!7273 = distinct !DISubprogram(name: "device_may_wakeup", scope: !4669, file: !4669, line: 82, type: !7129, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!7274 = !DILocalVariable(name: "dev", arg: 1, scope: !7273, file: !4669, line: 82, type: !1734)
!7275 = !DILocation(line: 82, column: 53, scope: !7273)
!7276 = !DILocation(line: 84, column: 9, scope: !7273)
!7277 = !DILocation(line: 84, column: 14, scope: !7273)
!7278 = !DILocation(line: 84, column: 20, scope: !7273)
!7279 = !DILocation(line: 84, column: 31, scope: !7273)
!7280 = !DILocation(line: 84, column: 36, scope: !7273)
!7281 = !DILocation(line: 84, column: 41, scope: !7273)
!7282 = !DILocation(line: 84, column: 47, scope: !7273)
!7283 = !DILocation(line: 84, column: 35, scope: !7273)
!7284 = !DILocation(line: 84, column: 34, scope: !7273)
!7285 = !DILocation(line: 0, scope: !7273)
!7286 = !DILocation(line: 84, column: 2, scope: !7273)
!7287 = distinct !DISubprogram(name: "cdns3_set_platform_suspend", scope: !3, file: !3, line: 622, type: !5615, scopeLine: 624, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!7288 = !DILocalVariable(name: "dev", arg: 1, scope: !7287, file: !3, line: 622, type: !1734)
!7289 = !DILocation(line: 622, column: 54, scope: !7287)
!7290 = !DILocalVariable(name: "suspend", arg: 2, scope: !7287, file: !3, line: 623, type: !272)
!7291 = !DILocation(line: 623, column: 8, scope: !7287)
!7292 = !DILocalVariable(name: "wakeup", arg: 3, scope: !7287, file: !3, line: 623, type: !272)
!7293 = !DILocation(line: 623, column: 22, scope: !7287)
!7294 = !DILocalVariable(name: "cdns", scope: !7287, file: !3, line: 625, type: !5006)
!7295 = !DILocation(line: 625, column: 16, scope: !7287)
!7296 = !DILocation(line: 625, column: 39, scope: !7287)
!7297 = !DILocation(line: 625, column: 23, scope: !7287)
!7298 = !DILocalVariable(name: "ret", scope: !7287, file: !3, line: 626, type: !215)
!7299 = !DILocation(line: 626, column: 6, scope: !7287)
!7300 = !DILocation(line: 628, column: 6, scope: !7301)
!7301 = distinct !DILexicalBlock(scope: !7287, file: !3, line: 628, column: 6)
!7302 = !DILocation(line: 628, column: 12, scope: !7301)
!7303 = !DILocation(line: 628, column: 18, scope: !7301)
!7304 = !DILocation(line: 628, column: 21, scope: !7301)
!7305 = !DILocation(line: 628, column: 27, scope: !7301)
!7306 = !DILocation(line: 628, column: 34, scope: !7301)
!7307 = !DILocation(line: 628, column: 6, scope: !7287)
!7308 = !DILocation(line: 629, column: 9, scope: !7301)
!7309 = !DILocation(line: 629, column: 15, scope: !7301)
!7310 = !DILocation(line: 629, column: 22, scope: !7301)
!7311 = !DILocation(line: 629, column: 39, scope: !7301)
!7312 = !DILocation(line: 629, column: 44, scope: !7301)
!7313 = !DILocation(line: 629, column: 53, scope: !7301)
!7314 = !DILocation(line: 629, column: 7, scope: !7301)
!7315 = !DILocation(line: 629, column: 3, scope: !7301)
!7316 = !DILocation(line: 631, column: 9, scope: !7287)
!7317 = !DILocation(line: 631, column: 2, scope: !7287)
!7318 = distinct !DISubprogram(name: "cdns3_controller_resume", scope: !3, file: !3, line: 658, type: !4600, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!7319 = !DILocation(line: 407, column: 64, scope: !7002, inlinedAt: !7320)
!7320 = distinct !DILocation(line: 678, column: 2, scope: !7318)
!7321 = !DILocation(line: 407, column: 84, scope: !7002, inlinedAt: !7320)
!7322 = !DILocation(line: 327, column: 67, scope: !5893, inlinedAt: !7323)
!7323 = distinct !DILocation(line: 673, column: 2, scope: !7324)
!7324 = distinct !DILexicalBlock(scope: !7325, file: !3, line: 673, column: 2)
!7325 = distinct !DILexicalBlock(scope: !7326, file: !3, line: 673, column: 2)
!7326 = distinct !DILexicalBlock(scope: !7327, file: !3, line: 673, column: 2)
!7327 = distinct !DILexicalBlock(scope: !7328, file: !3, line: 673, column: 2)
!7328 = distinct !DILexicalBlock(scope: !7318, file: !3, line: 673, column: 2)
!7329 = !DILocalVariable(name: "dev", arg: 1, scope: !7318, file: !3, line: 658, type: !1734)
!7330 = !DILocation(line: 658, column: 51, scope: !7318)
!7331 = !DILocalVariable(name: "msg", arg: 2, scope: !7318, file: !3, line: 658, type: !4602)
!7332 = !DILocation(line: 658, column: 69, scope: !7318)
!7333 = !DILocalVariable(name: "cdns", scope: !7318, file: !3, line: 660, type: !5006)
!7334 = !DILocation(line: 660, column: 16, scope: !7318)
!7335 = !DILocation(line: 660, column: 39, scope: !7318)
!7336 = !DILocation(line: 660, column: 23, scope: !7318)
!7337 = !DILocalVariable(name: "ret", scope: !7318, file: !3, line: 661, type: !215)
!7338 = !DILocation(line: 661, column: 6, scope: !7318)
!7339 = !DILocalVariable(name: "flags", scope: !7318, file: !3, line: 662, type: !202)
!7340 = !DILocation(line: 662, column: 16, scope: !7318)
!7341 = !DILocation(line: 664, column: 7, scope: !7342)
!7342 = distinct !DILexicalBlock(scope: !7318, file: !3, line: 664, column: 6)
!7343 = !DILocation(line: 664, column: 13, scope: !7342)
!7344 = !DILocation(line: 664, column: 6, scope: !7318)
!7345 = !DILocation(line: 665, column: 3, scope: !7342)
!7346 = !DILocation(line: 667, column: 25, scope: !7318)
!7347 = !DILocation(line: 667, column: 8, scope: !7318)
!7348 = !DILocation(line: 667, column: 6, scope: !7318)
!7349 = !DILocation(line: 668, column: 6, scope: !7350)
!7350 = distinct !DILexicalBlock(scope: !7318, file: !3, line: 668, column: 6)
!7351 = !DILocation(line: 668, column: 6, scope: !7318)
!7352 = !DILocation(line: 669, column: 10, scope: !7350)
!7353 = !DILocation(line: 669, column: 3, scope: !7350)
!7354 = !DILocation(line: 671, column: 29, scope: !7318)
!7355 = !DILocation(line: 671, column: 35, scope: !7318)
!7356 = !DILocation(line: 671, column: 2, scope: !7318)
!7357 = !DILocation(line: 673, column: 2, scope: !7318)
!7358 = !DILocation(line: 673, column: 2, scope: !7328)
!7359 = !DILocalVariable(name: "__dummy", scope: !7360, file: !3, line: 673, type: !202)
!7360 = distinct !DILexicalBlock(scope: !7327, file: !3, line: 673, column: 2)
!7361 = !DILocation(line: 673, column: 2, scope: !7360)
!7362 = !DILocalVariable(name: "__dummy2", scope: !7360, file: !3, line: 673, type: !202)
!7363 = !DILocation(line: 673, column: 2, scope: !7327)
!7364 = !DILocation(line: 673, column: 2, scope: !7326)
!7365 = !DILocation(line: 673, column: 2, scope: !7366)
!7366 = distinct !DILexicalBlock(scope: !7326, file: !3, line: 673, column: 2)
!7367 = !DILocalVariable(name: "__dummy", scope: !7368, file: !3, line: 673, type: !202)
!7368 = distinct !DILexicalBlock(scope: !7369, file: !3, line: 673, column: 2)
!7369 = distinct !DILexicalBlock(scope: !7366, file: !3, line: 673, column: 2)
!7370 = !DILocation(line: 673, column: 2, scope: !7368)
!7371 = !DILocalVariable(name: "__dummy2", scope: !7368, file: !3, line: 673, type: !202)
!7372 = !DILocation(line: 673, column: 2, scope: !7369)
!7373 = !DILocation(line: 673, column: 2, scope: !7325)
!7374 = !{i32 -2140464512}
!7375 = !DILocation(line: 673, column: 2, scope: !7324)
!7376 = !DILocation(line: 329, column: 10, scope: !5893, inlinedAt: !7323)
!7377 = !DILocation(line: 329, column: 16, scope: !5893, inlinedAt: !7323)
!7378 = !DILocation(line: 674, column: 6, scope: !7379)
!7379 = distinct !DILexicalBlock(scope: !7318, file: !3, line: 674, column: 6)
!7380 = !DILocation(line: 674, column: 12, scope: !7379)
!7381 = !DILocation(line: 674, column: 18, scope: !7379)
!7382 = !DILocation(line: 674, column: 24, scope: !7379)
!7383 = !DILocation(line: 674, column: 31, scope: !7379)
!7384 = !DILocation(line: 674, column: 38, scope: !7379)
!7385 = !DILocation(line: 674, column: 42, scope: !7379)
!7386 = !DILocation(line: 674, column: 6, scope: !7318)
!7387 = !DILocation(line: 675, column: 3, scope: !7379)
!7388 = !DILocation(line: 675, column: 9, scope: !7379)
!7389 = !DILocation(line: 675, column: 15, scope: !7379)
!7390 = !DILocation(line: 675, column: 21, scope: !7379)
!7391 = !DILocation(line: 675, column: 28, scope: !7379)
!7392 = !DILocation(line: 675, column: 35, scope: !7379)
!7393 = !DILocation(line: 677, column: 2, scope: !7318)
!7394 = !DILocation(line: 677, column: 8, scope: !7318)
!7395 = !DILocation(line: 677, column: 15, scope: !7318)
!7396 = !DILocation(line: 678, column: 26, scope: !7318)
!7397 = !DILocation(line: 678, column: 32, scope: !7318)
!7398 = !DILocation(line: 678, column: 38, scope: !7318)
!7399 = !DILocation(line: 409, column: 2, scope: !7069, inlinedAt: !7320)
!7400 = !DILocation(line: 409, column: 2, scope: !7074, inlinedAt: !7320)
!7401 = !DILocation(line: 409, column: 2, scope: !7075, inlinedAt: !7320)
!7402 = !DILocation(line: 409, column: 2, scope: !7082, inlinedAt: !7320)
!7403 = !DILocation(line: 409, column: 2, scope: !7085, inlinedAt: !7320)
!7404 = !DILocation(line: 679, column: 6, scope: !7405)
!7405 = distinct !DILexicalBlock(scope: !7318, file: !3, line: 679, column: 6)
!7406 = !DILocation(line: 679, column: 12, scope: !7405)
!7407 = !DILocation(line: 679, column: 6, scope: !7318)
!7408 = !DILocation(line: 680, column: 3, scope: !7409)
!7409 = distinct !DILexicalBlock(scope: !7405, file: !3, line: 679, column: 28)
!7410 = !DILocation(line: 680, column: 9, scope: !7409)
!7411 = !DILocation(line: 680, column: 24, scope: !7409)
!7412 = !DILocation(line: 681, column: 14, scope: !7409)
!7413 = !DILocation(line: 681, column: 20, scope: !7409)
!7414 = !DILocation(line: 681, column: 3, scope: !7409)
!7415 = !DILocation(line: 682, column: 2, scope: !7409)
!7416 = !DILocation(line: 685, column: 9, scope: !7318)
!7417 = !DILocation(line: 685, column: 2, scope: !7318)
!7418 = !DILocation(line: 686, column: 1, scope: !7318)